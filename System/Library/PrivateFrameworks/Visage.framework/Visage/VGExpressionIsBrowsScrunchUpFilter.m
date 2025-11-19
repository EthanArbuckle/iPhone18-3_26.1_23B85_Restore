@interface VGExpressionIsBrowsScrunchUpFilter
- (float)filter:(id)a3;
@end

@implementation VGExpressionIsBrowsScrunchUpFilter

- (float)filter:(id)a3
{
  v3 = [VGExpressionFilterLegacy getBlendshapes:a3];
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = [v3 bytes] + 64;
    v10 = 3.4028e38;
    do
    {
      LODWORD(v7) = *(v6 + v5);
      LODWORD(v8) = 0.5;
      LODWORD(v9) = 1058642330;
      [VGExpressionFilterLegacy clip_to_01:v7 min_val:v8 max_val:v9];
      if (v10 >= *&v7)
      {
        v10 = *&v7;
      }

      v5 += 4;
    }

    while (v5 != 12);
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

@end