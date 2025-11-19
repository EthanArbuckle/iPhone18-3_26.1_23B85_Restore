@interface TSWPTwoPartAction
+ (id)actionWithStartAction:(id)a3 cancelAction:(id)a4 finishAction:(id)a5;
- (TSWPTwoPartAction)initWithStartAction:(id)a3 cancelAction:(id)a4 finishAction:(id)a5;
@end

@implementation TSWPTwoPartAction

- (TSWPTwoPartAction)initWithStartAction:(id)a3 cancelAction:(id)a4 finishAction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = TSWPTwoPartAction;
  v13 = [(TSWPTwoPartAction *)&v25 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(v8, v11, v12);
    startAction = v13->_startAction;
    v13->_startAction = v14;

    v18 = objc_msgSend_copy(v9, v16, v17);
    cancelAction = v13->_cancelAction;
    v13->_cancelAction = v18;

    v22 = objc_msgSend_copy(v10, v20, v21);
    finishAction = v13->_finishAction;
    v13->_finishAction = v22;
  }

  return v13;
}

+ (id)actionWithStartAction:(id)a3 cancelAction:(id)a4 finishAction:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc(objc_opt_class());
  started = objc_msgSend_initWithStartAction_cancelAction_finishAction_(v10, v11, v9, v8, v7);

  return started;
}

@end