@interface VGExpressionIsAlmostNeutralFilter
- (VGExpressionIsAlmostNeutralFilter)initWithLowerBound:(float)a3 withUpperBound:(float)a4;
- (float)filter:(id)a3;
@end

@implementation VGExpressionIsAlmostNeutralFilter

- (VGExpressionIsAlmostNeutralFilter)initWithLowerBound:(float)a3 withUpperBound:(float)a4
{
  v10.receiver = self;
  v10.super_class = VGExpressionIsAlmostNeutralFilter;
  v6 = [(VGExpressionIsAlmostNeutralFilter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_lowerBound = a3;
    v6->_upperBound = a4;
    v8 = v6;
  }

  return v7;
}

- (float)filter:(id)a3
{
  v4 = [VGExpressionFilterLegacy getBlendshapes:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 bytes];
    v7 = [v5 length];
    if (v7 < 0x3C)
    {
      v13 = 1.1755e-38;
    }

    else
    {
      v11 = (v7 >> 2) - 14;
      v12 = (v6 + 56);
      v13 = 1.1755e-38;
      do
      {
        LODWORD(v8) = *v12;
        *&v9 = self->_lowerBound;
        *&v10 = self->_upperBound;
        [VGExpressionFilterLegacy clip_to_01:v8 min_val:v9 max_val:v10];
        if (v13 <= *&v8)
        {
          v13 = *&v8;
        }

        ++v12;
        --v11;
      }

      while (v11);
    }

    v14 = 1.0 - v13;
  }

  else
  {
    v14 = 0.0;
  }

  return v14;
}

@end