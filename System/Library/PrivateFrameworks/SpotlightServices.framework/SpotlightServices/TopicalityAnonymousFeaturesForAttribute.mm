@interface TopicalityAnonymousFeaturesForAttribute
- (TopicalityAnonymousFeaturesForAttribute)init;
@end

@implementation TopicalityAnonymousFeaturesForAttribute

- (TopicalityAnonymousFeaturesForAttribute)init
{
  v3.receiver = self;
  v3.super_class = TopicalityAnonymousFeaturesForAttribute;
  result = [(TopicalityAnonymousFeaturesForAttribute *)&v3 init];
  if (result)
  {
    *&result->_countAttributeBigramPrefixMatch = 0u;
    *&result->_countAttributeQUPrefixMatch = 0u;
    *&result->_countAttributeBigramMatch = 0u;
    *&result->_countAttributeQUTokenMatch = 0u;
  }

  return result;
}

@end