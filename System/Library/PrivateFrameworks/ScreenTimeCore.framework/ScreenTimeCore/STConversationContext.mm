@interface STConversationContext
- (STConversationContext)init;
- (void)updateForThirdPartyApplicationState:(int64_t)state;
@end

@implementation STConversationContext

- (STConversationContext)init
{
  v3.receiver = self;
  v3.super_class = STConversationContext;
  result = [(STConversationContext *)&v3 init];
  if (result)
  {
    result->_allowedByScreenTime = 1;
    *&result->_shouldBeAllowedByScreenTimeWhenLimited = 257;
  }

  return result;
}

- (void)updateForThirdPartyApplicationState:(int64_t)state
{
  if ((state == 0) != [(STConversationContext *)self allowedByScreenTime])
  {

    [(STConversationContext *)self setAllowedByScreenTime:state == 0];
  }
}

@end