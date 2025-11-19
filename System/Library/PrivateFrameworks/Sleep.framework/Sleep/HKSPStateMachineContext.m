@interface HKSPStateMachineContext
- (BOOL)hasStateTransition;
- (HKSPStateMachineContext)initWithNextState:(id)a3 previousState:(id)a4 isInitializing:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation HKSPStateMachineContext

- (HKSPStateMachineContext)initWithNextState:(id)a3 previousState:(id)a4 isInitializing:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HKSPStateMachineContext;
  v11 = [(HKSPStateMachineContext *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_nextState, a3);
    objc_storeStrong(&v12->_previousState, a4);
    v12->_isInitializing = a5;
    v13 = v12;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setIsInitializing:{-[HKSPStateMachineContext isInitializing](self, "isInitializing")}];
  v5 = [(HKSPStateMachineContext *)self nextState];
  [v4 setNextState:v5];

  v6 = [(HKSPStateMachineContext *)self previousState];
  [v4 setPreviousState:v6];

  return v4;
}

- (BOOL)hasStateTransition
{
  nextState = self->_nextState;
  if (nextState && self->_previousState)
  {
    return [(HKSPStateMachineState *)nextState isMemberOfClass:objc_opt_class()]^ 1;
  }

  else
  {
    return 1;
  }
}

- (id)succinctDescription
{
  v2 = [(HKSPStateMachineContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[HKSPStateMachineContext isInitializing](self withName:"isInitializing") ifEqualTo:{@"isInitializing", 1}];
  v5 = [(HKSPStateMachineContext *)self nextState];
  v6 = [v3 appendObject:v5 withName:@"nextState"];

  v7 = [(HKSPStateMachineContext *)self previousState];
  v8 = [v3 appendObject:v7 withName:@"previousState"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPStateMachineContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end