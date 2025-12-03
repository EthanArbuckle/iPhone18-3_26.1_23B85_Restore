@interface HKSPStateMachineContext
- (BOOL)hasStateTransition;
- (HKSPStateMachineContext)initWithNextState:(id)state previousState:(id)previousState isInitializing:(BOOL)initializing;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation HKSPStateMachineContext

- (HKSPStateMachineContext)initWithNextState:(id)state previousState:(id)previousState isInitializing:(BOOL)initializing
{
  stateCopy = state;
  previousStateCopy = previousState;
  v15.receiver = self;
  v15.super_class = HKSPStateMachineContext;
  v11 = [(HKSPStateMachineContext *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_nextState, state);
    objc_storeStrong(&v12->_previousState, previousState);
    v12->_isInitializing = initializing;
    v13 = v12;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setIsInitializing:{-[HKSPStateMachineContext isInitializing](self, "isInitializing")}];
  nextState = [(HKSPStateMachineContext *)self nextState];
  [v4 setNextState:nextState];

  previousState = [(HKSPStateMachineContext *)self previousState];
  [v4 setPreviousState:previousState];

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
  succinctDescriptionBuilder = [(HKSPStateMachineContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[HKSPStateMachineContext isInitializing](self withName:"isInitializing") ifEqualTo:{@"isInitializing", 1}];
  nextState = [(HKSPStateMachineContext *)self nextState];
  v6 = [v3 appendObject:nextState withName:@"nextState"];

  previousState = [(HKSPStateMachineContext *)self previousState];
  v8 = [v3 appendObject:previousState withName:@"previousState"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HKSPStateMachineContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end