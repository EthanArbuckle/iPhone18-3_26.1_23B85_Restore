@interface VGExpressionIsMouthLipPressFilter
- (float)filter:(id)filter;
@end

@implementation VGExpressionIsMouthLipPressFilter

- (float)filter:(id)filter
{
  v3 = [VGExpressionFilterLegacy getBlendshapes:filter];
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = [v3 bytes] + 112;
    v10 = 3.4028e38;
    do
    {
      LODWORD(v7) = *(v6 + v5);
      LODWORD(v8) = 1045220557;
      LODWORD(v9) = 1058642330;
      [VGExpressionFilterLegacy clip_to_01:v7 min_val:v8 max_val:v9];
      if (v10 >= *&v7)
      {
        v10 = *&v7;
      }

      v5 += 4;
    }

    while (v5 != 8);
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

@end