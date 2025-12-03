@interface PIParallaxStylePointParameter
- (BOOL)isEqualToParallaxStyleParameter:(id)parameter;
- (PIParallaxStylePointParameter)initWithX:(id)x Y:(id)y unit:(id)unit;
- (id)description;
- (id)evaluateWithContext:(id)context error:(id *)error;
@end

@implementation PIParallaxStylePointParameter

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  xValue = [(PIParallaxStylePointParameter *)self xValue];
  yValue = [(PIParallaxStylePointParameter *)self yValue];
  unit = [(PIParallaxStylePointParameter *)self unit];
  v7 = [v3 stringWithFormat:@"(X:%@, Y:%@, unit: %@)", xValue, yValue, unit];

  return v7;
}

- (id)evaluateWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  xValue = [(PIParallaxStylePointParameter *)self xValue];
  [xValue doubleValue];
  v8 = v7;

  yValue = [(PIParallaxStylePointParameter *)self yValue];
  [yValue doubleValue];
  v11 = v10;

  unit = [(PIParallaxStylePointParameter *)self unit];
  LODWORD(yValue) = [unit isEqualToString:@"pixels"];

  if (yValue)
  {
    [contextCopy visibleRect];
    NUAbsolutePointInRect();
    v8 = v13;
    v11 = v14;
  }

  v15 = [MEMORY[0x1E695F688] vectorWithX:v8 Y:v11];

  return v15;
}

- (BOOL)isEqualToParallaxStyleParameter:(id)parameter
{
  parameterCopy = parameter;
  type = [parameterCopy type];
  v6 = [type isEqualToString:@"point"];

  if (v6)
  {
    v7 = parameterCopy;
    unit = [(PIParallaxStylePointParameter *)self unit];
    unit2 = [v7 unit];
    v10 = [unit isEqualToString:unit2];

    if (v10 && (-[PIParallaxStylePointParameter xValue](self, "xValue"), v11 = objc_claimAutoreleasedReturnValue(), [v7 xValue], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToNumber:", v12), v12, v11, v13))
    {
      yValue = [(PIParallaxStylePointParameter *)self yValue];
      yValue2 = [v7 yValue];
      v16 = [yValue isEqualToNumber:yValue2];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (PIParallaxStylePointParameter)initWithX:(id)x Y:(id)y unit:(id)unit
{
  xCopy = x;
  yCopy = y;
  unitCopy = unit;
  v18.receiver = self;
  v18.super_class = PIParallaxStylePointParameter;
  v11 = [(PIParallaxStylePointParameter *)&v18 init];
  xValue = v11->_xValue;
  v11->_xValue = xCopy;
  v13 = xCopy;

  yValue = v11->_yValue;
  v11->_yValue = yCopy;
  v15 = yCopy;

  unit = v11->_unit;
  v11->_unit = unitCopy;

  return v11;
}

@end