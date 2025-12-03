@interface WBSKeyBagLockStatusChangedHandlerToken
- (WBSKeyBagLockStatusChangedHandlerToken)initWithHandler:(id)handler;
@end

@implementation WBSKeyBagLockStatusChangedHandlerToken

- (WBSKeyBagLockStatusChangedHandlerToken)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v10.receiver = self;
  v10.super_class = WBSKeyBagLockStatusChangedHandlerToken;
  v5 = [(WBSKeyBagLockStatusChangedHandlerToken *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(handlerCopy);
    handler = v5->_handler;
    v5->_handler = v6;

    v8 = v5;
  }

  return v5;
}

@end