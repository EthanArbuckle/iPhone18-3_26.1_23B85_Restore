@interface TSWPTwoPartAction
+ (id)actionWithStartAction:(id)a3 cancelAction:(id)a4 finishAction:(id)a5;
- (TSWPTwoPartAction)initWithStartAction:(id)a3 cancelAction:(id)a4 finishAction:(id)a5;
- (void)dealloc;
@end

@implementation TSWPTwoPartAction

- (TSWPTwoPartAction)initWithStartAction:(id)a3 cancelAction:(id)a4 finishAction:(id)a5
{
  v10.receiver = self;
  v10.super_class = TSWPTwoPartAction;
  v8 = [(TSWPTwoPartAction *)&v10 init];
  if (v8)
  {
    v8->_startAction = [a3 copy];
    v8->_cancelAction = [a4 copy];
    v8->_finishAction = [a5 copy];
  }

  return v8;
}

+ (id)actionWithStartAction:(id)a3 cancelAction:(id)a4 finishAction:(id)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithStartAction:a3 cancelAction:a4 finishAction:a5];

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPTwoPartAction;
  [(TSWPTwoPartAction *)&v3 dealloc];
}

@end