@interface UIStatusBarStaticBatteryView
@end

@implementation UIStatusBarStaticBatteryView

void __101___UIStatusBarStaticBatteryView__imageWithRenderedBezierPath_size_scale_pathScaleFactor_stroke_fill___block_invoke(uint64_t a1, void *a2)
{
  CGContextScaleCTM([a2 CGContext], *(a1 + 40), *(a1 + 40));
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) stroke];
  }

  if (*(a1 + 49) == 1)
  {
    v3 = *(a1 + 32);

    [v3 fill];
  }
}

uint64_t __111___UIStatusBarStaticBatteryView__imageByPunchingImage_inRect_flippedHorizontally_outOfImage_inRect_size_scale___block_invoke(uint64_t a1)
{
  [*(a1 + 32) drawInRect:0 blendMode:*(a1 + 48) alpha:{*(a1 + 56), *(a1 + 64), *(a1 + 72), 1.0}];
  v2 = *(a1 + 40);
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);

  return [v2 drawInRect:23 blendMode:v3 alpha:{v4, v5, v6, 1.0}];
}

void __110___UIStatusBarStaticBatteryView__batteryBodyImageWithSize_forScale_batteryRect_cornerRadius_lineWidth_filled___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = _MergedGlobals_1109;
  _MergedGlobals_1109 = v0;
}

void __143___UIStatusBarStaticBatteryView__batteryBodyImageWithSize_forScale_batteryRect_cornerRadius_lineWidth_withBoltCutOutOfSize_inRect_boltFlipped___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1ED49E030;
  qword_1ED49E030 = v0;
}

void __103___UIStatusBarStaticBatteryView__percentFillImageWithSize_forScale_batteryRect_cornerRadius_lineWidth___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1ED49E040;
  qword_1ED49E040 = v0;
}

void __82___UIStatusBarStaticBatteryView__batteryPinImageWithSize_forScale_complexPinPath___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1ED49E050;
  qword_1ED49E050 = v0;
}

void __77___UIStatusBarStaticBatteryView__batteryBoltImageWithSize_boltSize_forScale___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1ED49E060;
  qword_1ED49E060 = v0;
}

void __81___UIStatusBarStaticBatteryView__batteryBoltMaskImageWithSize_boltSize_forScale___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1ED49E070;
  qword_1ED49E070 = v0;
}

void __81___UIStatusBarStaticBatteryView__batteryFillImageWithSize_forScale_cornerRadius___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1ED49E080;
  qword_1ED49E080 = v0;
}

void __121___UIStatusBarStaticBatteryView__batteryFillImageWithSize_forScale_cornerRadius_withBoltCutOutOfSize_inRect_boltFlipped___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1ED49E090;
  qword_1ED49E090 = v0;
}

@end