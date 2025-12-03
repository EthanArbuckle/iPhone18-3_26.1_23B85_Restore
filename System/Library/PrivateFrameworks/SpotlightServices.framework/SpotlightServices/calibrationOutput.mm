@interface calibrationOutput
- (calibrationOutput)initWithOutput:(id)output;
- (id)featureValueForName:(id)name;
@end

@implementation calibrationOutput

- (calibrationOutput)initWithOutput:(id)output
{
  outputCopy = output;
  v9.receiver = self;
  v9.super_class = calibrationOutput;
  v6 = [(calibrationOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_output, output);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"output"])
  {
    v4 = MEMORY[0x1E695FE60];
    output = [(calibrationOutput *)self output];
    v6 = [v4 featureValueWithMultiArray:output];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end