@interface UIStatusBarWifiSignalView
@end

@implementation UIStatusBarWifiSignalView

void __115___UIStatusBarWifiSignalView__barImageWithSize_forScale_distance_angle_centerPoint_cornerRadius_thickness_rounded___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = _MergedGlobals_7_4;
  _MergedGlobals_7_4 = v0;
}

void __115___UIStatusBarWifiSignalView__barImageWithSize_forScale_distance_angle_centerPoint_cornerRadius_thickness_rounded___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(a1 + 48);
  if (*(a1 + 96) == 1 && v3 == 0.0)
  {
    v4 = [UIBezierPath bezierPathWithArcCenter:1 radius:*(a1 + 56) startAngle:*(a1 + 64) - *(a1 + 72) * 0.5 endAngle:*(a1 + 72) * 0.5 clockwise:0.0, 6.28318531];
  }

  else
  {
    v5 = (*(*(a1 + 32) + 16))(*(a1 + 48));
    v7 = v6;
    v4 = +[UIBezierPath bezierPath];
    [v4 moveToPoint:{v5, v7}];
    [v4 addArcWithCenter:1 radius:*(a1 + 56) startAngle:*(a1 + 64) endAngle:v3 clockwise:{*(a1 + 80) + 3.14159265, 6.28318531 - *(a1 + 80)}];
    v8 = *(a1 + 72);
    if (*(a1 + 96))
    {
      v8 = v8 * 0.5;
    }

    v9 = v3 + v8;
    (*(*(a1 + 32) + 16))(v9);
    (*(*(a1 + 40) + 16))();
    if (*(a1 + 96) == 1)
    {
      [v4 addArcWithCenter:0 radius:? startAngle:? endAngle:? clockwise:?];
      v9 = v9 + *(a1 + 72) * 0.5;
    }

    else
    {
      [v4 addLineToPoint:?];
    }

    [v4 addArcWithCenter:0 radius:*(a1 + 56) startAngle:*(a1 + 64) endAngle:v9 clockwise:{6.28318531 - *(a1 + 80), *(a1 + 80) + 3.14159265}];
    if (*(a1 + 96) == 1)
    {
      (*(*(a1 + 32) + 16))(v9 - *(a1 + 72) * 0.5);
      [v4 addArcWithCenter:0 radius:? startAngle:? endAngle:? clockwise:?];
    }

    else
    {
      [v4 setLineJoinStyle:1];
    }
  }

  [v4 setLineWidth:*(a1 + 88)];
  [v4 closePath];
  [v4 fill];
  [v4 stroke];
}

uint64_t __46___UIStatusBarWifiSignalView__updateFromMode___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) _updateActiveBars];
  }

  return result;
}

@end