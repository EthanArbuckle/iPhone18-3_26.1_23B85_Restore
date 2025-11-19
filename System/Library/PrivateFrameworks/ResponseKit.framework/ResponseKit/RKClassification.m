@interface RKClassification
- (RKClassification)init;
@end

@implementation RKClassification

- (RKClassification)init
{
  v3.receiver = self;
  v3.super_class = RKClassification;
  result = [(RKClassification *)&v3 init];
  if (result)
  {
    result->_sentenceType = 0;
  }

  return result;
}

@end