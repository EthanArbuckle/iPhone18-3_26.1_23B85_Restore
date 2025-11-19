@interface UICubicTimingParameters
- (BOOL)isEqual:(id)a3;
- (CGPoint)controlPoint1;
- (CGPoint)controlPoint2;
- (UICubicTimingParameters)init;
- (UICubicTimingParameters)initWithAnimationCurve:(UIViewAnimationCurve)curve;
- (UICubicTimingParameters)initWithCoder:(NSCoder *)coder;
- (UICubicTimingParameters)initWithControlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2;
- (UICubicTimingParameters)initWithCustomCurve:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)effectiveTimingFunction;
- (int64_t)timingCurveType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UICubicTimingParameters

- (int64_t)timingCurveType
{
  if (self->_animationCurve == 6)
  {
    return 1;
  }

  if (self->_springTimingParameters)
  {
    return 3;
  }

  return 0;
}

- (CGPoint)controlPoint1
{
  [(_UIViewCubicTimingFunction *)self->_timingFunction controlPoint1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)controlPoint2
{
  [(_UIViewCubicTimingFunction *)self->_timingFunction controlPoint2];
  result.y = v3;
  result.x = v2;
  return result;
}

- (UICubicTimingParameters)init
{
  v6.receiver = self;
  v6.super_class = UICubicTimingParameters;
  v2 = [(UICubicTimingParameters *)&v6 init];
  v2->_animationCurve = 5;
  v3 = [(UICubicTimingParameters *)v2 effectiveTimingFunction];
  timingFunction = v2->_timingFunction;
  v2->_timingFunction = v3;

  return v2;
}

- (id)effectiveTimingFunction
{
  v16 = *MEMORY[0x1E69E9840];
  timingFunction = self->_timingFunction;
  if (timingFunction)
  {
    v6 = timingFunction;
    goto LABEL_20;
  }

  animationCurve = self->_animationCurve;
  if (animationCurve <= 2)
  {
    switch(animationCurve)
    {
      case 0:
        v9 = MEMORY[0x1E6979EB8];
        goto LABEL_18;
      case 1:
        v9 = MEMORY[0x1E6979EB0];
        goto LABEL_18;
      case 2:
        v9 = MEMORY[0x1E6979ED0];
LABEL_18:
        v10 = *v9;
        v8 = [MEMORY[0x1E69793D0] functionWithName:v10];

        goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (animationCurve > 4)
  {
    if (animationCurve == 5)
    {
      v9 = MEMORY[0x1E6979EA0];
      goto LABEL_18;
    }

    if (animationCurve == 7)
    {
      goto LABEL_13;
    }

LABEL_15:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unknown/Unsupported UIViewAnimationCurve type %ld", animationCurve}];
    v8 = 0;
    goto LABEL_19;
  }

  if (animationCurve == 3)
  {
LABEL_13:
    v9 = MEMORY[0x1E6979ED8];
    goto LABEL_18;
  }

  LODWORD(v2) = 1059648963;
  LODWORD(v3) = 1051260355;
  LODWORD(v4) = 1.0;
  v8 = [MEMORY[0x1E69793D0] functionWithControlPoints:v2 :0.0 :v3 :v4];
LABEL_19:
  [v8 getControlPointAtIndex:1 values:&v14];
  v11 = v14;
  v12 = v15;
  [v8 getControlPointAtIndex:2 values:&v14];
  v6 = [[_UIViewCubicTimingFunction alloc] initWithControlPoint1:v11 controlPoint2:v12, v14, v15];

LABEL_20:

  return v6;
}

- (UICubicTimingParameters)initWithAnimationCurve:(UIViewAnimationCurve)curve
{
  v10.receiver = self;
  v10.super_class = UICubicTimingParameters;
  v4 = [(UICubicTimingParameters *)&v10 init];
  if (curve == (UIViewAnimationCurveLinear|0x4))
  {
    v5 = objc_alloc_init(UISpringTimingParameters);
    springTimingParameters = v4->_springTimingParameters;
    v4->_springTimingParameters = v5;

    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      [(UISpringTimingParameters *)v4->_springTimingParameters setImplicitDuration:0];
    }
  }

  v4->_animationCurve = curve;
  v7 = [(UICubicTimingParameters *)v4 effectiveTimingFunction];
  timingFunction = v4->_timingFunction;
  v4->_timingFunction = v7;

  return v4;
}

- (UICubicTimingParameters)initWithControlPoint1:(CGPoint)point1 controlPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  v6 = point1.y;
  v7 = point1.x;
  v12.receiver = self;
  v12.super_class = UICubicTimingParameters;
  v8 = [(UICubicTimingParameters *)&v12 init];
  v8->_animationCurve = 6;
  v9 = [[_UIViewCubicTimingFunction alloc] initWithControlPoint1:v7 controlPoint2:v6, x, y];
  timingFunction = v8->_timingFunction;
  v8->_timingFunction = v9;

  return v8;
}

- (UICubicTimingParameters)initWithCustomCurve:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 getControlPointAtIndex:1 values:&v8];
  v5 = v8;
  v6 = v9;
  [v4 getControlPointAtIndex:2 values:&v8];

  return [(UICubicTimingParameters *)self initWithControlPoint1:v5 controlPoint2:v6, v8, v9];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = self;
  v5 = v4;
  if (!v4)
  {
LABEL_4:
    v7 = [objc_opt_class() allocWithZone:a3];
    [(UICubicTimingParameters *)v5 controlPoint1];
    v9 = v8;
    v11 = v10;
    [(UICubicTimingParameters *)v5 controlPoint2];

    return [v7 initWithControlPoint1:v9 controlPoint2:{v11, v12, v13}];
  }

  if ([(UICubicTimingParameters *)v4 timingCurveType])
  {
    v6 = [(UICubicTimingParameters *)v5 timingCurveType];

    if (v6 != 3)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v15 = [objc_opt_class() allocWithZone:a3];
  v16 = [(UICubicTimingParameters *)v5 animationCurve];

  return [v15 initWithAnimationCurve:v16];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if ([(UICubicTimingParameters *)self timingCurveType]== 1)
    {
      v6 = [(UICubicTimingParameters *)self timingFunction];
      v7 = [v5 timingFunction];
      v8 = [v6 isEqual:v7];
    }

    else
    {
      v9 = [(UICubicTimingParameters *)self animationCurve];
      v8 = v9 == [v5 animationCurve];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[UICubicTimingParameters timingCurveType](self forKey:{"timingCurveType"), @"curveType"}];
  if ([(UICubicTimingParameters *)self timingCurveType]== 1)
  {
    v4 = [(UICubicTimingParameters *)self timingFunction];
    [v5 encodeObject:v4 forKey:@"timingFunction"];
  }

  else
  {
    [v5 encodeInteger:-[UICubicTimingParameters animationCurve](self forKey:{"animationCurve"), @"animationCurve"}];
  }
}

- (UICubicTimingParameters)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  if ([(NSCoder *)v4 allowsKeyedCoding])
  {
    v14.receiver = self;
    v14.super_class = UICubicTimingParameters;
    v5 = [(UICubicTimingParameters *)&v14 init];
    if (v5)
    {
      if ([(NSCoder *)v4 decodeIntegerForKey:@"curveType"]== 1)
      {
        v6 = [(NSCoder *)v4 decodeObjectForKey:@"timingFunction"];
        timingFunction = v5->_timingFunction;
        v5->_timingFunction = v6;

        v5->_animationCurve = 6;
      }

      else
      {
        v9 = [(NSCoder *)v4 decodeIntegerForKey:@"animationCurve"];
        v10 = v5->_timingFunction;
        v5->_timingFunction = 0;
        v5->_animationCurve = v9;

        v11 = [(UICubicTimingParameters *)v5 effectiveTimingFunction];
        v12 = v5->_timingFunction;
        v5->_timingFunction = v11;
      }
    }

    self = v5;
    v8 = self;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:{@"%@ only supports keyed coding.", objc_opt_class()}];
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  if ([(UICubicTimingParameters *)self timingCurveType])
  {
    v3 = [(UICubicTimingParameters *)self timingCurveType];
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = v6;
    if (v3 != 3)
    {
      v10 = [(UICubicTimingParameters *)self timingFunction];
      v11 = [v4 stringWithFormat:@"<%@ (%p) timing function = %@>", v7, self, v10];

      goto LABEL_10;
    }

    [v4 stringWithFormat:@"<%@ (%p) builtin type = smooth>", v6, self, v15];
  }

  else
  {
    v8 = [(UICubicTimingParameters *)self animationCurve];
    if (v8 > 5)
    {
      v9 = @"unknown";
    }

    else
    {
      v9 = off_1E70F6248[v8];
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v7 = NSStringFromClass(v13);
    [v12 stringWithFormat:@"<%@ (%p) builtin type = %@>", v7, self, v9];
  }
  v11 = ;
LABEL_10:

  return v11;
}

@end