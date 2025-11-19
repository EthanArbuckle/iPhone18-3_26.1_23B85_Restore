@interface CRFormDetectorModelInput
- (CRFormDetectorModelInput)initWithMLMultiArray:(id)a3;
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation CRFormDetectorModelInput

- (CRFormDetectorModelInput)initWithMLMultiArray:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRFormDetectorModelInput;
  v6 = [(CRFormDetectorModelInput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_array, a3);
  }

  return v7;
}

- (NSSet)featureNames
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"img_input";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"img_input"])
  {
    v4 = [MEMORY[0x1E695FE60] featureValueWithMultiArray:self->_array];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end