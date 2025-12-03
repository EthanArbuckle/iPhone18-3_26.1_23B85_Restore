@interface SBConsumableTokenWrapper
+ (SBConsumableTokenWrapper)consumableTokenWrapperWithToken:(id)token;
- (id)consumeToken;
@end

@implementation SBConsumableTokenWrapper

+ (SBConsumableTokenWrapper)consumableTokenWrapperWithToken:(id)token
{
  tokenCopy = token;
  v4 = objc_alloc_init(SBConsumableTokenWrapper);
  token = v4->_token;
  v4->_token = tokenCopy;

  return v4;
}

- (id)consumeToken
{
  token = self->_token;
  v4 = token;
  v5 = self->_token;
  self->_token = 0;

  return token;
}

@end