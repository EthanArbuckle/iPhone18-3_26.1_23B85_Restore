@interface UIBatteryView
@end

@implementation UIBatteryView

void __35___UIBatteryView__batteryFillColor__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAccessibilityContrast:v3];
  [v4 setUserInterfaceStyle:*(a1 + 40)];
}

uint64_t __29___UIBatteryView__updateBolt__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 544);
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
  [*(*(a1 + 32) + 544) setOpacity:v7];
  v8 = *(*(a1 + 32) + 536);
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

  [*(v13 + 536) setOpacity:v14];
  return [*(a1 + 32) _unflipBoltIfNecessary];
}

void __34___UIBatteryView__updateFillColor__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateBatteryFillColor];
  v2 = [*(a1 + 32) _batteryTextColor];
  v3 = [*(a1 + 32) _batteryTextIsCutout];
  if (+[UIView _isInAnimationBlock])
  {
    v4 = *(*(a1 + 32) + 504);
    +[UIView _currentAnimationDuration];
    v6 = v5;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34___UIBatteryView__updateFillColor__block_invoke_2;
    v12[3] = &unk_1E70F5AF0;
    v12[4] = *(a1 + 32);
    v13 = v2;
    v14 = v3;
    [UIView transitionWithView:v4 duration:5242880 options:v12 animations:0 completion:v6];
  }

  else
  {
    v7 = *(a1 + 32);
    if (*(v7 + 411) == 1)
    {
      [*(v7 + 504) setTextColor:v2];
      v8 = MEMORY[0x1E69798E8];
      if (v3)
      {
        v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
      }

      else
      {
        v9 = 0;
      }

      v10 = [*(*(a1 + 32) + 504) layer];
      [v10 setCompositingFilter:v9];

      if (v3)
      {

        v11 = [MEMORY[0x1E6979378] filterWithType:*v8];
      }

      else
      {
        v11 = 0;
      }

      [*(*(a1 + 32) + 544) setCompositingFilter:v11];
      if (v3)
      {
      }
    }

    else
    {
      [*(v7 + 544) setCompositingFilter:0];
    }
  }
}

void __35___UIBatteryView__batteryFillColor__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAccessibilityContrast:v3];
  [v4 setUserInterfaceStyle:*(a1 + 40)];
}

void __34___UIBatteryView__updateFillColor__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 411) == 1)
  {
    [*(v1 + 504) setTextColor:*(a1 + 40)];
    v3 = *(a1 + 48);
    v4 = MEMORY[0x1E69798E8];
    if (v3 == 1)
    {
      v5 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
    }

    else
    {
      v5 = 0;
    }

    v7 = [*(*(a1 + 32) + 504) layer];
    [v7 setCompositingFilter:v5];

    if (v3)
    {
    }

    v8 = *(a1 + 48);
    if (v8 == 1)
    {
      v9 = [MEMORY[0x1E6979378] filterWithType:*v4];
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    [*(*(a1 + 32) + 544) setCompositingFilter:v9];
    if (v8)
    {
    }
  }

  else
  {
    v6 = *(v1 + 544);

    [v6 setCompositingFilter:0];
  }
}

void __35___UIBatteryView__updateBodyColors__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[411] == 1)
  {
    v32 = [v2 _batteryUnfilledColor];
    v3 = [v32 CGColor];
    v4 = [*(a1 + 32) bodyShapeLayer];
    [v4 setStrokeColor:0];

    v5 = [*(a1 + 32) bodyShapeLayer];
    [v5 setFillColor:v3];

    v6 = [*(a1 + 32) pinShapeLayer];
    [v6 setFillColor:v3];

    v7 = [*(a1 + 32) _boltIsInactive];
    v8 = *(a1 + 32);
    if (v7)
    {
      [v8 _textBoltInactiveColor];
    }

    else
    {
      [v8 _batteryTextColor];
    }
    v20 = ;
    v21 = [v20 CGColor];
    v22 = [*(a1 + 32) boltShapeLayer];
    [v22 setFillColor:v21];

    v23 = [*(a1 + 32) _batteryFillColor];
    v24 = [v23 CGColor];
    v25 = [*(a1 + 32) percentFillShapeLayer];
    [v25 setFillColor:v24];

    v26 = [*(a1 + 32) percentFillShapeLayer];
    LODWORD(v27) = 1.0;
    [v26 setOpacity:v27];
  }

  else
  {
    v9 = [v2 bodyColor];
    v10 = [v9 CGColor];
    v11 = [*(a1 + 32) bodyShapeLayer];
    [v11 setStrokeColor:v10];

    v12 = +[UIColor clearColor];
    v13 = [v12 CGColor];
    v14 = [*(a1 + 32) bodyShapeLayer];
    [v14 setFillColor:v13];

    v15 = [*(a1 + 32) pinColor];
    v16 = [v15 CGColor];
    v17 = [*(a1 + 32) pinShapeLayer];
    [v17 setFillColor:v16];

    v18 = [*(a1 + 32) _boltIsInactive];
    v19 = *(a1 + 32);
    if (v18)
    {
      [v19 boltInactiveColor];
    }

    else
    {
      [v19 boltColor];
    }
    v28 = ;
    v29 = [v28 CGColor];
    v30 = [*(a1 + 32) boltShapeLayer];
    [v30 setFillColor:v29];

    v31 = [*(a1 + 32) percentFillShapeLayer];
    [v31 setFillColor:0];

    v32 = [*(a1 + 32) percentFillShapeLayer];
    [v32 setOpacity:0.0];
  }
}

void __41___UIBatteryView__updateBatteryFillColor__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[411] == 1)
  {
    v3 = +[UIColor clearColor];
    [*(*(a1 + 32) + 552) setBackgroundColor:{objc_msgSend(v3, "CGColor")}];

    v6 = [*(a1 + 32) _batteryFillColor];
    v4 = [v6 CGColor];
    v5 = [*(a1 + 32) percentFillShapeLayer];
    [v5 setFillColor:v4];
  }

  else
  {
    v6 = [v2 _batteryFillColor];
    [*(*(a1 + 32) + 552) setBackgroundColor:{objc_msgSend(v6, "CGColor")}];
  }
}

uint64_t __29___UIBatteryView__updateBolt__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 544) opacity];
  if (v2 == 0.0)
  {
    [*(*(a1 + 32) + 544) removeFromSuperlayer];
    [*(*(a1 + 32) + 520) setMask:0];
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _notifyDidFinishAnimatingBoltToVisible:v4];
}

id __39___UIBatteryView__updatePercentageFont__block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v17 = *off_1E70ECCC0;
  v2 = *off_1E70ECD00;
  v16[0] = *off_1E70ECCF0;
  v3 = *off_1E70ECD38;
  v15[0] = v2;
  v15[1] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*off_1E70ECD08];
  v16[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v7 = [off_1E70ECC20 fontDescriptorWithFontAttributes:v6];

  v8 = *(a1 + 48);
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  if (*(a1 + 49) == 1 && *(v10 + 480) || *(v10 + 472) >= 0.995)
  {
    v11 = [v7 fontDescriptorWithSymbolicTraits:66];

    v7 = v11;
  }

  v12 = v9 + -3.0;
  if (!v8)
  {
    v12 = v9;
  }

  v13 = [off_1E70ECC18 fontWithDescriptor:v7 size:v12];

  return v13;
}

@end