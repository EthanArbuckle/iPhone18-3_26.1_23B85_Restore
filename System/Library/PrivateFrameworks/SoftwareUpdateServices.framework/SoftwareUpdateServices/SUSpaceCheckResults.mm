@interface SUSpaceCheckResults
- (SUSpaceCheckResults)init;
@end

@implementation SUSpaceCheckResults

- (SUSpaceCheckResults)init
{
  v3.receiver = self;
  v3.super_class = SUSpaceCheckResults;
  result = [(SUSpaceCheckResults *)&v3 init];
  if (result)
  {
    result->_additionalBytesRequired = 0;
    *&result->_hasSufficientFreeSpace = 0;
  }

  return result;
}

@end