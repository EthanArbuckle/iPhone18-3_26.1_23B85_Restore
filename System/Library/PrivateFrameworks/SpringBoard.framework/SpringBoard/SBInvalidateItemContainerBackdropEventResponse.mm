@interface SBInvalidateItemContainerBackdropEventResponse
- (SBInvalidateItemContainerBackdropEventResponse)initWithUpdateMode:(int64_t)a3;
@end

@implementation SBInvalidateItemContainerBackdropEventResponse

- (SBInvalidateItemContainerBackdropEventResponse)initWithUpdateMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBInvalidateItemContainerBackdropEventResponse;
  result = [(SBChainableModifierEventResponse *)&v5 init];
  if (result)
  {
    result->_updateMode = a3;
  }

  return result;
}

@end