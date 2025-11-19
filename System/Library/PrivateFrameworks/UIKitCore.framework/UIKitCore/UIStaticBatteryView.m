@interface UIStaticBatteryView
@end

@implementation UIStaticBatteryView

void __92___UIStaticBatteryView__imageWithRenderedBezierPath_size_scale_pathScaleFactor_stroke_fill___block_invoke(uint64_t a1, void *a2)
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

uint64_t __102___UIStaticBatteryView__imageByPunchingImage_inRect_flippedHorizontally_outOfImage_inRect_size_scale___block_invoke(uint64_t a1)
{
  [*(a1 + 32) drawInRect:0 blendMode:*(a1 + 48) alpha:{*(a1 + 56), *(a1 + 64), *(a1 + 72), 1.0}];
  v2 = *(a1 + 40);
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);

  return [v2 drawInRect:23 blendMode:v3 alpha:{v4, v5, v6, 1.0}];
}

void __101___UIStaticBatteryView__batteryBodyImageWithSize_forScale_batteryRect_cornerRadius_lineWidth_filled___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = _MergedGlobals_1395;
  _MergedGlobals_1395 = v0;
}

void __134___UIStaticBatteryView__batteryBodyImageWithSize_forScale_batteryRect_cornerRadius_lineWidth_withBoltCutOutOfSize_inRect_boltFlipped___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1ED4A2CF0;
  qword_1ED4A2CF0 = v0;
}

void __94___UIStaticBatteryView__percentFillImageWithSize_forScale_batteryRect_cornerRadius_lineWidth___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1ED4A2D00;
  qword_1ED4A2D00 = v0;
}

void __73___UIStaticBatteryView__batteryPinImageWithSize_forScale_complexPinPath___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1ED4A2D10;
  qword_1ED4A2D10 = v0;
}

void __68___UIStaticBatteryView__batteryBoltImageWithSize_boltSize_forScale___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1ED4A2D20;
  qword_1ED4A2D20 = v0;
}

void __72___UIStaticBatteryView__batteryBoltMaskImageWithSize_boltSize_forScale___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1ED4A2D30;
  qword_1ED4A2D30 = v0;
}

void __72___UIStaticBatteryView__batteryFillImageWithSize_forScale_cornerRadius___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1ED4A2D40;
  qword_1ED4A2D40 = v0;
}

void __112___UIStaticBatteryView__batteryFillImageWithSize_forScale_cornerRadius_withBoltCutOutOfSize_inRect_boltFlipped___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = qword_1ED4A2D50;
  qword_1ED4A2D50 = v0;
}

@end