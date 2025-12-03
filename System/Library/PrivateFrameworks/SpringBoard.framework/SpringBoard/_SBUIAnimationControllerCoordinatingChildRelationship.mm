@interface _SBUIAnimationControllerCoordinatingChildRelationship
- (_SBUIAnimationControllerCoordinatingChildRelationship)initWithCoordinatingChildTransaction:(id)transaction schedulingPolicy:(unint64_t)policy;
@end

@implementation _SBUIAnimationControllerCoordinatingChildRelationship

- (_SBUIAnimationControllerCoordinatingChildRelationship)initWithCoordinatingChildTransaction:(id)transaction schedulingPolicy:(unint64_t)policy
{
  transactionCopy = transaction;
  if (!transactionCopy)
  {
    [_SBUIAnimationControllerCoordinatingChildRelationship initWithCoordinatingChildTransaction:schedulingPolicy:];
  }

  v11.receiver = self;
  v11.super_class = _SBUIAnimationControllerCoordinatingChildRelationship;
  v8 = [(_SBUIAnimationControllerCoordinatingChildRelationship *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_coordinatingChildTransaction, transaction);
    v9->_schedulingPolicy = policy;
  }

  return v9;
}

- (void)initWithCoordinatingChildTransaction:schedulingPolicy:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"coordinatingChildTransaction" object:? file:? lineNumber:? description:?];
}

@end