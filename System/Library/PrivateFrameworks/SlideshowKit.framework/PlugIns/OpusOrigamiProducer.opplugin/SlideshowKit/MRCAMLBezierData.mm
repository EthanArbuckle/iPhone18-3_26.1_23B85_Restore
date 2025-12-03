@interface MRCAMLBezierData
- (MRCAMLBezierData)initWithControlPoints:(const double *)points;
- (MRCAMLBezierData)initWithTimingFunction:(id)function;
- (double)evaluatAtTime:(double)time;
- (double)evaluate_inverseAtTime:(double)time;
- (double)solve_x:(double)solve_x epsilon:(double)epsilon;
- (double)solve_y:(double)solve_y epsilon:(double)epsilon;
@end

@implementation MRCAMLBezierData

- (MRCAMLBezierData)initWithControlPoints:(const double *)points
{
  v9.receiver = self;
  v9.super_class = MRCAMLBezierData;
  result = [(MRCAMLBezierData *)&v9 init];
  if (result)
  {
    v5 = *points * 3.0;
    result->cx = v5;
    v6 = -(v5 - (points[2] - *points) * 3.0);
    result->ax = 1.0 - v5 - v6;
    result->bx = v6;
    v7 = points[1] * 3.0;
    result->cy = v7;
    v8 = -(v7 - (points[3] - points[1]) * 3.0);
    result->ay = 1.0 - v7 - v8;
    result->by = v8;
  }

  return result;
}

- (MRCAMLBezierData)initWithTimingFunction:(id)function
{
  if ([function isEqualToString:@"easeInEaseOut"])
  {
    v10 = xmmword_163820;
LABEL_3:
    v5 = 0x3FE28F5C28F5C28FLL;
    goto LABEL_9;
  }

  if ([function isEqualToString:@"linear"])
  {
    v10 = 0uLL;
LABEL_8:
    v5 = 0x3FF0000000000000;
    goto LABEL_9;
  }

  if ([function isEqualToString:@"easeIn"])
  {
    v10 = xmmword_163820;
    goto LABEL_8;
  }

  if ([function isEqualToString:@"easeOut"])
  {
    v10 = 0uLL;
    goto LABEL_3;
  }

  if (![function isEqualToString:@"default"])
  {
    *&v10 = CGRectFromCAMLString(function);
    *(&v10 + 1) = v8;
    v11 = v9;
    goto LABEL_10;
  }

  v10 = xmmword_163810;
  v5 = 0x3FD0000000000000;
LABEL_9:
  v11 = v5;
  v6 = 1.0;
LABEL_10:
  v12 = v6;
  return [(MRCAMLBezierData *)self initWithControlPoints:&v10];
}

- (double)solve_x:(double)solve_x epsilon:(double)epsilon
{
  v7 = 8;
  solve_xCopy2 = solve_x;
  while (1)
  {
    [(MRCAMLBezierData *)self sample_x:solve_xCopy2];
    v10 = v9;
    if (vabdd_f64(v9, solve_x) < epsilon)
    {
      break;
    }

    [(MRCAMLBezierData *)self sample_x_derivative:solve_xCopy2];
    if (fabs(v11) >= 0.000001)
    {
      solve_xCopy2 = solve_xCopy2 - (v10 - solve_x) / v11;
      if (--v7)
      {
        continue;
      }
    }

    solve_xCopy2 = 0.0;
    if (solve_x >= 0.0)
    {
      solve_xCopy2 = 1.0;
      if (solve_x <= 1.0)
      {
        v12 = 0.0;
        v13 = 1.0;
        v14 = -1025;
        solve_xCopy2 = solve_x;
        do
        {
          if (__CFADD__(v14++, 1))
          {
            break;
          }

          [(MRCAMLBezierData *)self sample_x:solve_xCopy2];
          if (vabdd_f64(v16, solve_x) < epsilon)
          {
            break;
          }

          if (v16 >= solve_x)
          {
            v13 = solve_xCopy2;
          }

          else
          {
            v12 = solve_xCopy2;
          }

          solve_xCopy2 = v12 + (v13 - v12) * 0.5;
        }

        while (v12 < v13);
      }
    }

    return solve_xCopy2;
  }

  return solve_xCopy2;
}

- (double)solve_y:(double)solve_y epsilon:(double)epsilon
{
  v7 = 8;
  solve_yCopy2 = solve_y;
  while (1)
  {
    [(MRCAMLBezierData *)self sample_y:solve_yCopy2];
    v10 = v9;
    if (vabdd_f64(v9, solve_y) < epsilon)
    {
      break;
    }

    [(MRCAMLBezierData *)self sample_y_derivative:solve_yCopy2];
    if (fabs(v11) >= 0.000001)
    {
      solve_yCopy2 = solve_yCopy2 - (v10 - solve_y) / v11;
      if (--v7)
      {
        continue;
      }
    }

    solve_yCopy2 = 0.0;
    if (solve_y >= 0.0)
    {
      solve_yCopy2 = 1.0;
      if (solve_y <= 1.0)
      {
        v12 = 0.0;
        v13 = 1.0;
        v14 = -1025;
        solve_yCopy2 = solve_y;
        do
        {
          if (__CFADD__(v14++, 1))
          {
            break;
          }

          [(MRCAMLBezierData *)self sample_y:solve_yCopy2];
          if (vabdd_f64(v16, solve_y) < epsilon)
          {
            break;
          }

          if (v16 >= solve_y)
          {
            v13 = solve_yCopy2;
          }

          else
          {
            v12 = solve_yCopy2;
          }

          solve_yCopy2 = v12 + (v13 - v12) * 0.5;
        }

        while (v12 < v13);
      }
    }

    return solve_yCopy2;
  }

  return solve_yCopy2;
}

- (double)evaluatAtTime:(double)time
{
  [(MRCAMLBezierData *)self solve_x:time epsilon:0.00001];

  [(MRCAMLBezierData *)self sample_y:?];
  return result;
}

- (double)evaluate_inverseAtTime:(double)time
{
  [(MRCAMLBezierData *)self solve_y:time epsilon:0.00001];

  [(MRCAMLBezierData *)self sample_x:?];
  return result;
}

@end