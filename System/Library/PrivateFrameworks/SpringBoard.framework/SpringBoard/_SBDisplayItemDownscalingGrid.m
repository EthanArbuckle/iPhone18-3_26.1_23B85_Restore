@interface _SBDisplayItemDownscalingGrid
- (CGSize)nearestGridSizeForSize:(CGSize)a3 countOnStage:(unint64_t)a4;
@end

@implementation _SBDisplayItemDownscalingGrid

- (CGSize)nearestGridSizeForSize:(CGSize)a3 countOnStage:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = _SBDisplayItemDownscalingGrid;
  [(_SBDisplayItemSingleSizeGrid *)&v10 nearestGridSizeForSize:a4 countOnStage:?];
  if (v7 > height || v6 > width)
  {
    v9 = height / v7;
    if (height / v7 > width / v6)
    {
      v9 = width / v6;
    }

    if (v9 < 0.7)
    {
      v9 = 0.7;
    }

    v6 = v6 * v9;
    v7 = v7 * v9;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

@end