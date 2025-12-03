@interface TSWPTwoPartAction
+ (id)actionWithStartAction:(id)action cancelAction:(id)cancelAction finishAction:(id)finishAction;
- (TSWPTwoPartAction)initWithStartAction:(id)action cancelAction:(id)cancelAction finishAction:(id)finishAction;
@end

@implementation TSWPTwoPartAction

- (TSWPTwoPartAction)initWithStartAction:(id)action cancelAction:(id)cancelAction finishAction:(id)finishAction
{
  actionCopy = action;
  cancelActionCopy = cancelAction;
  finishActionCopy = finishAction;
  v25.receiver = self;
  v25.super_class = TSWPTwoPartAction;
  v13 = [(TSWPTwoPartAction *)&v25 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(actionCopy, v11, v12);
    startAction = v13->_startAction;
    v13->_startAction = v14;

    v18 = objc_msgSend_copy(cancelActionCopy, v16, v17);
    cancelAction = v13->_cancelAction;
    v13->_cancelAction = v18;

    v22 = objc_msgSend_copy(finishActionCopy, v20, v21);
    finishAction = v13->_finishAction;
    v13->_finishAction = v22;
  }

  return v13;
}

+ (id)actionWithStartAction:(id)action cancelAction:(id)cancelAction finishAction:(id)finishAction
{
  finishActionCopy = finishAction;
  cancelActionCopy = cancelAction;
  actionCopy = action;
  v10 = objc_alloc(objc_opt_class());
  started = objc_msgSend_initWithStartAction_cancelAction_finishAction_(v10, v11, actionCopy, cancelActionCopy, finishActionCopy);

  return started;
}

@end