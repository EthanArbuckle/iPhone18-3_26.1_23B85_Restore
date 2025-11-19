@interface PIParallaxStylePointParameter
- (BOOL)isEqualToParallaxStyleParameter:(id)a3;
- (PIParallaxStylePointParameter)initWithX:(id)a3 Y:(id)a4 unit:(id)a5;
- (id)description;
- (id)evaluateWithContext:(id)a3 error:(id *)a4;
@end

@implementation PIParallaxStylePointParameter

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PIParallaxStylePointParameter *)self xValue];
  v5 = [(PIParallaxStylePointParameter *)self yValue];
  v6 = [(PIParallaxStylePointParameter *)self unit];
  v7 = [v3 stringWithFormat:@"(X:%@, Y:%@, unit: %@)", v4, v5, v6];

  return v7;
}

- (id)evaluateWithContext:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(PIParallaxStylePointParameter *)self xValue];
  [v6 doubleValue];
  v8 = v7;

  v9 = [(PIParallaxStylePointParameter *)self yValue];
  [v9 doubleValue];
  v11 = v10;

  v12 = [(PIParallaxStylePointParameter *)self unit];
  LODWORD(v9) = [v12 isEqualToString:@"pixels"];

  if (v9)
  {
    [v5 visibleRect];
    NUAbsolutePointInRect();
    v8 = v13;
    v11 = v14;
  }

  v15 = [MEMORY[0x1E695F688] vectorWithX:v8 Y:v11];

  return v15;
}

- (BOOL)isEqualToParallaxStyleParameter:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v5 isEqualToString:@"point"];

  if (v6)
  {
    v7 = v4;
    v8 = [(PIParallaxStylePointParameter *)self unit];
    v9 = [v7 unit];
    v10 = [v8 isEqualToString:v9];

    if (v10 && (-[PIParallaxStylePointParameter xValue](self, "xValue"), v11 = objc_claimAutoreleasedReturnValue(), [v7 xValue], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToNumber:", v12), v12, v11, v13))
    {
      v14 = [(PIParallaxStylePointParameter *)self yValue];
      v15 = [v7 yValue];
      v16 = [v14 isEqualToNumber:v15];
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

- (PIParallaxStylePointParameter)initWithX:(id)a3 Y:(id)a4 unit:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = PIParallaxStylePointParameter;
  v11 = [(PIParallaxStylePointParameter *)&v18 init];
  xValue = v11->_xValue;
  v11->_xValue = v8;
  v13 = v8;

  yValue = v11->_yValue;
  v11->_yValue = v9;
  v15 = v9;

  unit = v11->_unit;
  v11->_unit = v10;

  return v11;
}

@end