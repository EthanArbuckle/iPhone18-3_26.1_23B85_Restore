@interface TIGaussianErrorGenerator
- (CGPoint)globalBias;
- (CGPoint)randomErrorForKeyString:(id)a3 rect:(CGRect)a4;
- (CGPoint)randomPointInDistribution;
- (CGPoint)randomPointWithStandardDeviationX:(float)a3 Y:(float)a4;
- (CGPoint)randomTargetForSpaceBarRect:(CGRect)a3;
- (TIGaussianErrorGenerator)initWithAttributes:(id)a3;
- (void)reset;
- (void)updateGlobalBias;
@end

@implementation TIGaussianErrorGenerator

- (void)reset
{
  v7.receiver = self;
  v7.super_class = TIGaussianErrorGenerator;
  [(TIErrorGenerator *)&v7 reset];
  *&v3 = self->_globalStdevX;
  *&v4 = self->_globalStdevY;
  [(TIGaussianErrorGenerator *)self randomPointWithStandardDeviationX:v3 Y:v4];
  self->_globalBias.x = v5;
  self->_globalBias.y = v6;
}

- (CGPoint)randomErrorForKeyString:(id)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  *&v10 = self->_perTouchStdevX;
  *&v11 = self->_perTouchStdevY;
  [(TIGaussianErrorGenerator *)self randomPointWithStandardDeviationX:v10 Y:v11];
  v13 = v12;
  v15 = v14;
  if ([v9 isEqualToString:@" "] && -[TIErrorGenerator spaceHorizontalErrorMode](self, "spaceHorizontalErrorMode") == 1)
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v16 = CGRectGetHeight(v22);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v17 = CGRectGetWidth(v23);
    [(TIErrorGenerator *)self uniformRandomNumber];
    v13 = v13 + (v17 - v16) * -0.5 + v18 * (v17 - v16);
  }

  v19 = v13;
  v20 = v15;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)globalBias
{
  x = self->_globalBias.x;
  y = self->_globalBias.y;
  [(TIGaussianErrorGenerator *)self updateGlobalBias];
  v4 = x;
  v5 = y;
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)randomTargetForSpaceBarRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17.receiver = self;
  v17.super_class = TIGaussianErrorGenerator;
  [(TIErrorGenerator *)&v17 persistentBiasForSpaceBarRect:?];
  v9 = v8;
  v11 = v10;
  if ([(TIErrorGenerator *)self spaceHorizontalErrorMode]== 1)
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v12 = CGRectGetHeight(v19);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v13 = CGRectGetWidth(v20) - v12;
    [(TIErrorGenerator *)self uniformRandomNumber];
    v9 = v9 + v13 * -0.5 + v14 * v13;
  }

  v15 = v9;
  v16 = v11;
  result.y = v16;
  result.x = v15;
  return result;
}

- (void)updateGlobalBias
{
  *&v2 = self->_globalStdevX;
  *&v3 = self->_globalStdevY;
  if (*&v2 != 0.0 || *&v3 != 0.0)
  {
    *&v2 = *&v2 * 0.2;
    *&v3 = *&v3 * 0.2;
    [(TIGaussianErrorGenerator *)self randomPointWithStandardDeviationX:v2 Y:v3];
    v6 = v5;
    x = self->_globalBias.x;
    y = self->_globalBias.y;
    v10 = v9 + x;
    globalStdevX = self->_globalStdevX;
    v12 = 1.0;
    if (globalStdevX > 0.0)
    {
      v13 = (x * x - v10 * v10) / (globalStdevX * (globalStdevX + globalStdevX));
      v12 = expf(v13);
    }

    v14 = v6 + y;
    globalStdevY = self->_globalStdevY;
    if (globalStdevY > 0.0)
    {
      v16 = (y * y - v14 * v14) / (globalStdevY * (globalStdevY + globalStdevY));
      v12 = v12 * expf(v16);
    }

    if (v12 > 1.0)
    {
      v12 = 1.0;
    }

    [(TIErrorGenerator *)self uniformRandomNumber];
    *&v17 = v17;
    if (v12 > *&v17)
    {
      self->_globalBias.x = v10;
      self->_globalBias.y = v14;
    }
  }
}

- (CGPoint)randomPointInDistribution
{
  *&v2 = self->_perTouchStdevX;
  *&v3 = self->_perTouchStdevY;
  [(TIGaussianErrorGenerator *)self randomPointWithStandardDeviationX:v2 Y:v3];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)randomPointWithStandardDeviationX:(float)a3 Y:(float)a4
{
  do
  {
    [(TIErrorGenerator *)self uniformRandomNumber];
    v8 = v7 * 2.0 + -1.0;
    [(TIErrorGenerator *)self uniformRandomNumber];
    v10 = v9 * 2.0 + -1.0;
    v11 = (v10 * v10) + (v8 * v8);
  }

  while (v11 > 1.0);
  v12 = sqrtf((logf((v10 * v10) + (v8 * v8)) * -2.0) / v11);
  v13 = ((v12 * v8) * a3);
  v14 = ((v12 * v10) * a4);
  result.y = v14;
  result.x = v13;
  return result;
}

- (TIGaussianErrorGenerator)initWithAttributes:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = TIGaussianErrorGenerator;
  v5 = [(TIErrorGenerator *)&v24 initWithAttributes:v4];
  v6 = v5;
  if (v5)
  {
    v5->_perTouchStdevX = 0.0;
    v5->_perTouchStdevY = 0.0;
    v5->_globalStdevX = 0.0;
    v5->_globalStdevY = 0.0;
    v7 = [v4 valueForKey:@"GAUSSIAN_ERROR_STDDEV_X"];

    if (v7)
    {
      v8 = [v4 objectForKey:@"GAUSSIAN_ERROR_STDDEV_X"];
      [v8 floatValue];
      v6->_perTouchStdevX = v9;
    }

    v10 = [v4 valueForKey:@"GAUSSIAN_ERROR_STDDEV_Y"];

    if (v10)
    {
      v11 = [v4 objectForKey:@"GAUSSIAN_ERROR_STDDEV_Y"];
      [v11 floatValue];
      v6->_perTouchStdevY = v12;
    }

    v13 = [v4 valueForKey:@"SKEW_STDDEV_X"];

    if (v13)
    {
      v14 = [v4 valueForKey:@"SKEW_STDDEV_X"];
      [v14 floatValue];
      v6->_globalStdevX = v15;
    }

    v16 = [v4 valueForKey:@"SKEW_STDDEV_Y"];

    if (v16)
    {
      v17 = [v4 valueForKey:@"SKEW_STDDEV_Y"];
      [v17 floatValue];
      v6->_globalStdevY = v18;
    }

    v19 = [v4 valueForKey:@"SCALE_ERROR_UNITS_TO_POINTS"];

    if (v19)
    {
      v20 = [v4 valueForKey:@"SCALE_ERROR_UNITS_TO_POINTS"];
      [v20 floatValue];
      v22 = v21;
    }

    else
    {
      v22 = 6.4173;
    }

    v6->_perTouchStdevX = v22 * v6->_perTouchStdevX;
    v6->_perTouchStdevY = v22 * v6->_perTouchStdevY;
    v6->_globalStdevX = v22 * v6->_globalStdevX;
    v6->_globalStdevY = v22 * v6->_globalStdevY;
  }

  [(TIGaussianErrorGenerator *)v6 reset];

  return v6;
}

@end