@interface SBConsumableTokenWrapper
+ (SBConsumableTokenWrapper)consumableTokenWrapperWithToken:(id)a3;
- (id)consumeToken;
@end

@implementation SBConsumableTokenWrapper

+ (SBConsumableTokenWrapper)consumableTokenWrapperWithToken:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SBConsumableTokenWrapper);
  token = v4->_token;
  v4->_token = v3;

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