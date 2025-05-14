# Reduce screen brightness slightly if applicable
if command -v brightnessctl &> /dev/null; then
  current=$(brightnessctl g)
  max=$(brightnessctl m)
  # Set to 80% of max if over that
  target=$(( max * 50 / 100 ))
  if [ $current -gt $target ]; then
    brightnessctl s $target
  fi
fi
