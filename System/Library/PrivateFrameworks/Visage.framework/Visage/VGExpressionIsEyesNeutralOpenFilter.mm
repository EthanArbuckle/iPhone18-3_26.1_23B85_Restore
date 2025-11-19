@interface VGExpressionIsEyesNeutralOpenFilter
- (VGExpressionIsEyesNeutralOpenFilter)initWithEyesOpenSensitivity:(float)a3;
- (float)filter:(id)a3;
@end

@implementation VGExpressionIsEyesNeutralOpenFilter

- (VGExpressionIsEyesNeutralOpenFilter)initWithEyesOpenSensitivity:(float)a3
{
  v8.receiver = self;
  v8.super_class = VGExpressionIsEyesNeutralOpenFilter;
  v4 = [(VGExpressionIsEyesNeutralOpenFilter *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_eyesOpenSensitivity = a3;
    v6 = v4;
  }

  return v5;
}

- (float)filter:(id)a3
{
  v4 = [VGExpressionFilterLegacy getBlendshapes:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 bytes];
    v9 = 0;
    v10 = 1.1755e-38;
    do
    {
      LODWORD(v7) = *(v6 + v9);
      *&v8 = self->_eyesOpenSensitivity;
      [VGExpressionFilterLegacy clip_to_01:v7 min_val:0.0 max_val:v8];
      if (v10 < *&v7)
      {
        v10 = *&v7;
      }

      v9 += 4;
    }

    while (v9 != 16);
    v11 = 1.0 - v10;
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

@end