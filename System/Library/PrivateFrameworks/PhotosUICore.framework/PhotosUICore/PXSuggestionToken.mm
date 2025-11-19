@interface PXSuggestionToken
- (PXSuggestionToken)init;
@end

@implementation PXSuggestionToken

- (PXSuggestionToken)init
{
  v3.receiver = self;
  v3.super_class = PXSuggestionToken;
  result = [(PXSuggestionToken *)&v3 init];
  if (result)
  {
    result->_token = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

@end