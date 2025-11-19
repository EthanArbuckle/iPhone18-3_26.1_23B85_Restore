@interface CRFormContentTypeModelOutput
- (CRFormContentTypeModelOutput)initWithScore:(id)a3;
- (id)featureValueForName:(id)a3;
@end

@implementation CRFormContentTypeModelOutput

- (CRFormContentTypeModelOutput)initWithScore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRFormContentTypeModelOutput;
  v6 = [(CRFormContentTypeModelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_score, a3);
  }

  return v7;
}

- (id)featureValueForName:(id)a3
{
  if ([a3 isEqualToString:@"score"])
  {
    v4 = MEMORY[0x1E695FE60];
    v5 = [(CRFormContentTypeModelOutput *)self score];
    v6 = [v4 featureValueWithMultiArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end