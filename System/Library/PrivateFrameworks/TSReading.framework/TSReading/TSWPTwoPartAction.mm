@interface TSWPTwoPartAction
+ (id)actionWithStartAction:(id)action cancelAction:(id)cancelAction finishAction:(id)finishAction;
- (TSWPTwoPartAction)initWithStartAction:(id)action cancelAction:(id)cancelAction finishAction:(id)finishAction;
- (void)dealloc;
@end

@implementation TSWPTwoPartAction

- (TSWPTwoPartAction)initWithStartAction:(id)action cancelAction:(id)cancelAction finishAction:(id)finishAction
{
  v10.receiver = self;
  v10.super_class = TSWPTwoPartAction;
  v8 = [(TSWPTwoPartAction *)&v10 init];
  if (v8)
  {
    v8->_startAction = [action copy];
    v8->_cancelAction = [cancelAction copy];
    v8->_finishAction = [finishAction copy];
  }

  return v8;
}

+ (id)actionWithStartAction:(id)action cancelAction:(id)cancelAction finishAction:(id)finishAction
{
  v5 = [objc_alloc(objc_opt_class()) initWithStartAction:action cancelAction:cancelAction finishAction:finishAction];

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPTwoPartAction;
  [(TSWPTwoPartAction *)&v3 dealloc];
}

@end