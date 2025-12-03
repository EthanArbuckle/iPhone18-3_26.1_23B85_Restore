@interface VGExpressionIsEyesCenteredFilter
- (float)filter:(id)filter;
@end

@implementation VGExpressionIsEyesCenteredFilter

- (float)filter:(id)filter
{
  v3 = [VGExpressionFilterLegacy getBlendshapes:filter];
  v4 = v3;
  if (v3)
  {
    bytes = [v3 bytes];
    v9 = 0;
    v10 = 3.4028e38;
    do
    {
      LODWORD(v6) = *(bytes + v9);
      LODWORD(v7) = 0.5;
      LODWORD(v8) = 1058642330;
      [VGExpressionFilterLegacy clip_to_01:v6 min_val:v7 max_val:v8];
      *&v6 = 1.0 - *&v6;
      if (v10 >= *&v6)
      {
        v10 = *&v6;
      }

      v9 += 4;
    }

    while (v9 != 56);
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

@end