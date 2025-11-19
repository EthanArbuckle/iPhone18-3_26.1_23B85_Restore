@interface _SBUIAnimationControllerCoordinatingChildRelationship
- (_SBUIAnimationControllerCoordinatingChildRelationship)initWithCoordinatingChildTransaction:(id)a3 schedulingPolicy:(unint64_t)a4;
@end

@implementation _SBUIAnimationControllerCoordinatingChildRelationship

- (_SBUIAnimationControllerCoordinatingChildRelationship)initWithCoordinatingChildTransaction:(id)a3 schedulingPolicy:(unint64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    [_SBUIAnimationControllerCoordinatingChildRelationship initWithCoordinatingChildTransaction:schedulingPolicy:];
  }

  v11.receiver = self;
  v11.super_class = _SBUIAnimationControllerCoordinatingChildRelationship;
  v8 = [(_SBUIAnimationControllerCoordinatingChildRelationship *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_coordinatingChildTransaction, a3);
    v9->_schedulingPolicy = a4;
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