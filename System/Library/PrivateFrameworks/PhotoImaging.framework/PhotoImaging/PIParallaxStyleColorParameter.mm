@interface PIParallaxStyleColorParameter
- (BOOL)isEqualToParallaxStyleParameter:(id)a3;
- (PIParallaxStyleColorParameter)initWithRed:(id)a3 green:(id)a4 blue:(id)a5 alpha:(id)a6;
- (id)description;
- (id)evaluateWithContext:(id)a3 error:(id *)a4;
@end

@implementation PIParallaxStyleColorParameter

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PIParallaxStyleColorParameter *)self redValue];
  v5 = [(PIParallaxStyleColorParameter *)self greenValue];
  v6 = [(PIParallaxStyleColorParameter *)self blueValue];
  v7 = [(PIParallaxStyleColorParameter *)self alphaValue];
  v8 = [v3 stringWithFormat:@"(R:%@, G:%@, B:%@, A:%@)", v4, v5, v6, v7];

  return v8;
}

- (id)evaluateWithContext:(id)a3 error:(id *)a4
{
  v5 = [(PIParallaxStyleColorParameter *)self redValue:a3];
  [v5 doubleValue];
  v7 = v6;

  v8 = [(PIParallaxStyleColorParameter *)self greenValue];
  [v8 doubleValue];
  v10 = v9;

  v11 = [(PIParallaxStyleColorParameter *)self blueValue];
  [v11 doubleValue];
  v13 = v12;

  v14 = [(PIParallaxStyleColorParameter *)self alphaValue];
  [v14 doubleValue];
  v16 = v15;

  v17 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  v18 = [objc_alloc(MEMORY[0x1E695F610]) initWithRed:v17 green:v7 blue:v10 alpha:v13 colorSpace:v16];
  CGColorSpaceRelease(v17);

  return v18;
}

- (BOOL)isEqualToParallaxStyleParameter:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v5 isEqualToString:@"color"];

  if (v6)
  {
    v7 = v4;
    v8 = [(PIParallaxStyleColorParameter *)self redValue];
    v9 = [v7 redValue];
    v10 = [v8 isEqualToNumber:v9];

    if (v10 && (-[PIParallaxStyleColorParameter greenValue](self, "greenValue"), v11 = objc_claimAutoreleasedReturnValue(), [v7 greenValue], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToNumber:", v12), v12, v11, v13) && (-[PIParallaxStyleColorParameter blueValue](self, "blueValue"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "blueValue"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToNumber:", v15), v15, v14, v16))
    {
      v17 = [(PIParallaxStyleColorParameter *)self alphaValue];
      v18 = [v7 alphaValue];
      v19 = [v17 isEqualToNumber:v18];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (PIParallaxStyleColorParameter)initWithRed:(id)a3 green:(id)a4 blue:(id)a5 alpha:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = PIParallaxStyleColorParameter;
  v14 = [(PIParallaxStyleColorParameter *)&v23 init];
  redValue = v14->_redValue;
  v14->_redValue = v10;
  v16 = v10;

  greenValue = v14->_greenValue;
  v14->_greenValue = v11;
  v18 = v11;

  blueValue = v14->_blueValue;
  v14->_blueValue = v12;
  v20 = v12;

  alphaValue = v14->_alphaValue;
  v14->_alphaValue = v13;

  return v14;
}

@end