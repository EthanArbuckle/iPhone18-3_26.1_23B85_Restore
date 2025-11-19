@interface STConversationContext
- (STConversationContext)init;
- (void)updateForThirdPartyApplicationState:(int64_t)a3;
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

- (void)updateForThirdPartyApplicationState:(int64_t)a3
{
  if ((a3 == 0) != [(STConversationContext *)self allowedByScreenTime])
  {

    [(STConversationContext *)self setAllowedByScreenTime:a3 == 0];
  }
}

@end