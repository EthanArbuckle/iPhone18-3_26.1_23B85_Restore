@interface VGExpressionIsOtherFilter
- (float)filter:(id)a3;
@end

@implementation VGExpressionIsOtherFilter

- (float)filter:(id)a3
{
  v3 = [VGExpressionFilterLegacy getBlendshapes:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 bytes];
    v6 = [v4 length];
    if (v6 >= 4)
    {
      v11 = v6 >> 2;
      v10 = 1.1755e-38;
      do
      {
        LODWORD(v7) = *v5;
        LODWORD(v8) = 0.5;
        LODWORD(v9) = 1058642330;
        [VGExpressionFilterLegacy clip_to_01:v7 min_val:v8 max_val:v9];
        if (v10 <= *&v7)
        {
          v10 = *&v7;
        }

        ++v5;
        --v11;
      }

      while (v11);
    }

    else
    {
      v10 = 1.1755e-38;
    }
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

@end