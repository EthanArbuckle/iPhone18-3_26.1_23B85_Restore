@interface SBInvalidateItemContainerBackdropEventResponse
- (SBInvalidateItemContainerBackdropEventResponse)initWithUpdateMode:(int64_t)mode;
@end

@implementation SBInvalidateItemContainerBackdropEventResponse

- (SBInvalidateItemContainerBackdropEventResponse)initWithUpdateMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = SBInvalidateItemContainerBackdropEventResponse;
  result = [(SBChainableModifierEventResponse *)&v5 init];
  if (result)
  {
    result->_updateMode = mode;
  }

  return result;
}

@end