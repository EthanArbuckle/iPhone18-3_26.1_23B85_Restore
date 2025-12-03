@interface SMSessionStateTransitionDecision
- (SMSessionStateTransitionDecision)initWithIsAllowed:(BOOL)allowed actionBlock:(id)block;
@end

@implementation SMSessionStateTransitionDecision

- (SMSessionStateTransitionDecision)initWithIsAllowed:(BOOL)allowed actionBlock:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = SMSessionStateTransitionDecision;
  v7 = [(SMSessionStateTransitionDecision *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_isAllowed = allowed;
    v9 = _Block_copy(blockCopy);
    actionBlock = v8->_actionBlock;
    v8->_actionBlock = v9;
  }

  return v8;
}

@end