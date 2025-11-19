@interface SMSessionStateTransitionDecision
- (SMSessionStateTransitionDecision)initWithIsAllowed:(BOOL)a3 actionBlock:(id)a4;
@end

@implementation SMSessionStateTransitionDecision

- (SMSessionStateTransitionDecision)initWithIsAllowed:(BOOL)a3 actionBlock:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SMSessionStateTransitionDecision;
  v7 = [(SMSessionStateTransitionDecision *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_isAllowed = a3;
    v9 = _Block_copy(v6);
    actionBlock = v8->_actionBlock;
    v8->_actionBlock = v9;
  }

  return v8;
}

@end