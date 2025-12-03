@interface PIParallaxStyleColorParameter
- (BOOL)isEqualToParallaxStyleParameter:(id)parameter;
- (PIParallaxStyleColorParameter)initWithRed:(id)red green:(id)green blue:(id)blue alpha:(id)alpha;
- (id)description;
- (id)evaluateWithContext:(id)context error:(id *)error;
@end

@implementation PIParallaxStyleColorParameter

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  redValue = [(PIParallaxStyleColorParameter *)self redValue];
  greenValue = [(PIParallaxStyleColorParameter *)self greenValue];
  blueValue = [(PIParallaxStyleColorParameter *)self blueValue];
  alphaValue = [(PIParallaxStyleColorParameter *)self alphaValue];
  v8 = [v3 stringWithFormat:@"(R:%@, G:%@, B:%@, A:%@)", redValue, greenValue, blueValue, alphaValue];

  return v8;
}

- (id)evaluateWithContext:(id)context error:(id *)error
{
  v5 = [(PIParallaxStyleColorParameter *)self redValue:context];
  [v5 doubleValue];
  v7 = v6;

  greenValue = [(PIParallaxStyleColorParameter *)self greenValue];
  [greenValue doubleValue];
  v10 = v9;

  blueValue = [(PIParallaxStyleColorParameter *)self blueValue];
  [blueValue doubleValue];
  v13 = v12;

  alphaValue = [(PIParallaxStyleColorParameter *)self alphaValue];
  [alphaValue doubleValue];
  v16 = v15;

  v17 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  v18 = [objc_alloc(MEMORY[0x1E695F610]) initWithRed:v17 green:v7 blue:v10 alpha:v13 colorSpace:v16];
  CGColorSpaceRelease(v17);

  return v18;
}

- (BOOL)isEqualToParallaxStyleParameter:(id)parameter
{
  parameterCopy = parameter;
  type = [parameterCopy type];
  v6 = [type isEqualToString:@"color"];

  if (v6)
  {
    v7 = parameterCopy;
    redValue = [(PIParallaxStyleColorParameter *)self redValue];
    redValue2 = [v7 redValue];
    v10 = [redValue isEqualToNumber:redValue2];

    if (v10 && (-[PIParallaxStyleColorParameter greenValue](self, "greenValue"), v11 = objc_claimAutoreleasedReturnValue(), [v7 greenValue], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToNumber:", v12), v12, v11, v13) && (-[PIParallaxStyleColorParameter blueValue](self, "blueValue"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "blueValue"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToNumber:", v15), v15, v14, v16))
    {
      alphaValue = [(PIParallaxStyleColorParameter *)self alphaValue];
      alphaValue2 = [v7 alphaValue];
      v19 = [alphaValue isEqualToNumber:alphaValue2];
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

- (PIParallaxStyleColorParameter)initWithRed:(id)red green:(id)green blue:(id)blue alpha:(id)alpha
{
  redCopy = red;
  greenCopy = green;
  blueCopy = blue;
  alphaCopy = alpha;
  v23.receiver = self;
  v23.super_class = PIParallaxStyleColorParameter;
  v14 = [(PIParallaxStyleColorParameter *)&v23 init];
  redValue = v14->_redValue;
  v14->_redValue = redCopy;
  v16 = redCopy;

  greenValue = v14->_greenValue;
  v14->_greenValue = greenCopy;
  v18 = greenCopy;

  blueValue = v14->_blueValue;
  v14->_blueValue = blueCopy;
  v20 = blueCopy;

  alphaValue = v14->_alphaValue;
  v14->_alphaValue = alphaCopy;

  return v14;
}

@end