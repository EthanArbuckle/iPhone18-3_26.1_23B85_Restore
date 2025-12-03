@interface CRFormContentTypeModelOutput
- (CRFormContentTypeModelOutput)initWithScore:(id)score;
- (id)featureValueForName:(id)name;
@end

@implementation CRFormContentTypeModelOutput

- (CRFormContentTypeModelOutput)initWithScore:(id)score
{
  scoreCopy = score;
  v9.receiver = self;
  v9.super_class = CRFormContentTypeModelOutput;
  v6 = [(CRFormContentTypeModelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_score, score);
  }

  return v7;
}

- (id)featureValueForName:(id)name
{
  if ([name isEqualToString:@"score"])
  {
    v4 = MEMORY[0x1E695FE60];
    score = [(CRFormContentTypeModelOutput *)self score];
    v6 = [v4 featureValueWithMultiArray:score];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end