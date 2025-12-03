@interface VGExpressionIsLipClosedFilter
- (float)filter:(id)filter;
@end

@implementation VGExpressionIsLipClosedFilter

- (float)filter:(id)filter
{
  v3 = [VGExpressionFilterLegacy getBlendshapes:filter];
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = [v3 bytes] + 96;
    v10 = 1.1755e-38;
    do
    {
      LODWORD(v7) = *(v6 + v5);
      LODWORD(v8) = 1057803469;
      LODWORD(v9) = 1058642330;
      [VGExpressionFilterLegacy clip_to_01:v7 min_val:v8 max_val:v9];
      *&v7 = 1.0 - *&v7;
      if (v10 <= *&v7)
      {
        v10 = *&v7;
      }

      v5 += 4;
    }

    while (v5 != 32);
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

@end