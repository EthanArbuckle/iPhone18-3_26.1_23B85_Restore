@interface UIStatusBarBatteryView
@end

@implementation UIStatusBarBatteryView

void __44___UIStatusBarBatteryView__batteryFillColor__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setUserInterfaceStyle:v3];
  [v4 setAccessibilityContrast:*(a1 + 40)];
}

void __44___UIStatusBarBatteryView__batteryFillColor__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setUserInterfaceStyle:v3];
  [v4 setAccessibilityContrast:*(a1 + 40)];
}

void __43___UIStatusBarBatteryView__updateFillColor__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateBatteryFillColor];
  v2 = *(a1 + 32);
  if (v2[411] == 1)
  {
    v3 = [v2 _batteryTextColor];
    v4 = [*(a1 + 32) _batteryTextIsCutout];
    if (+[UIView _isInAnimationBlock])
    {
      v5 = *(*(a1 + 32) + 496);
      +[UIView _currentAnimationDuration];
      v7 = v6;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __43___UIStatusBarBatteryView__updateFillColor__block_invoke_2;
      v10[3] = &unk_1E70F5AF0;
      v10[4] = *(a1 + 32);
      v11 = v3;
      v12 = v4;
      [UIView transitionWithView:v5 duration:5242880 options:v10 animations:0 completion:v7];
    }

    else
    {
      [*(*(a1 + 32) + 496) setTextColor:v3];
      if (v4)
      {
        v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
      }

      else
      {
        v8 = 0;
      }

      v9 = [*(*(a1 + 32) + 496) layer];
      [v9 setCompositingFilter:v8];

      if (v4)
      {
      }
    }
  }
}

void __43___UIStatusBarBatteryView__updateFillColor__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 496) setTextColor:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2 == 1)
  {
    v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  }

  else
  {
    v4 = 0;
  }

  v3 = [*(*(a1 + 32) + 496) layer];
  [v3 setCompositingFilter:v4];

  if (v2)
  {
  }
}

uint64_t __38___UIStatusBarBatteryView__updateBolt__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 536);
  v3 = *(a1 + 120);
  v20 = *(a1 + 104);
  v21 = v3;
  v4 = *(a1 + 152);
  v22 = *(a1 + 136);
  v23 = v4;
  v5 = *(a1 + 56);
  v16 = *(a1 + 40);
  v17 = v5;
  v6 = *(a1 + 88);
  v18 = *(a1 + 72);
  v19 = v6;
  [v2 setTransform:&v16];
  LODWORD(v7) = 1.0;
  [*(*(a1 + 32) + 536) setOpacity:v7];
  v8 = *(*(a1 + 32) + 528);
  v9 = *(a1 + 120);
  v20 = *(a1 + 104);
  v21 = v9;
  v10 = *(a1 + 152);
  v22 = *(a1 + 136);
  v23 = v10;
  v11 = *(a1 + 56);
  v16 = *(a1 + 40);
  v17 = v11;
  v12 = *(a1 + 88);
  v18 = *(a1 + 72);
  v19 = v12;
  [v8 setTransform:&v16];
  v13 = *(a1 + 32);
  v14 = 0.0;
  if (!*(v13 + 411))
  {
    *&v14 = 1.0;
  }

  [*(v13 + 528) setOpacity:v14];
  return [*(a1 + 32) _unflipBoltIfNecessary];
}

uint64_t __38___UIStatusBarBatteryView__updateBolt__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 536) opacity];
  if (v2 == 0.0)
  {
    [*(*(a1 + 32) + 536) removeFromSuperlayer];
    [*(*(a1 + 32) + 512) setMask:0];
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _notifyDidFinishAnimatingBoltToVisible:v4];
}

id __48___UIStatusBarBatteryView__updatePercentageFont__block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = *off_1E70ECCC0;
  v2 = *off_1E70ECD00;
  v13[0] = *off_1E70ECCF0;
  v3 = *off_1E70ECD38;
  v12[0] = v2;
  v12[1] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*off_1E70ECD08];
  v13[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = [off_1E70ECC20 fontDescriptorWithFontAttributes:v6];

  v8 = *(a1 + 32);
  if (*(a1 + 48) == 1 && *(v8 + 464) || *(v8 + 456) >= 0.995)
  {
    v9 = [v7 fontDescriptorWithSymbolicTraits:66];

    v7 = v9;
  }

  v10 = [off_1E70ECC18 fontWithDescriptor:v7 size:*(a1 + 40)];

  return v10;
}

@end