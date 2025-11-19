@interface WBSKeyBagLockStatusChangedHandlerToken
- (WBSKeyBagLockStatusChangedHandlerToken)initWithHandler:(id)a3;
@end

@implementation WBSKeyBagLockStatusChangedHandlerToken

- (WBSKeyBagLockStatusChangedHandlerToken)initWithHandler:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSKeyBagLockStatusChangedHandlerToken;
  v5 = [(WBSKeyBagLockStatusChangedHandlerToken *)&v10 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    handler = v5->_handler;
    v5->_handler = v6;

    v8 = v5;
  }

  return v5;
}

@end