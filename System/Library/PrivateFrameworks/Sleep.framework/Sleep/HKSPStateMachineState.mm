@interface HKSPStateMachineState
- (BOOL)isCurrentState;
- (BOOL)isEqual:(id)equal;
- (HKSPStateMachine)stateMachine;
- (HKSPStateMachineState)initWithStateMachine:(id)machine;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)equalsBuilderWithObject:(id)object;
- (id)stateIdentifier;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation HKSPStateMachineState

- (HKSPStateMachineState)initWithStateMachine:(id)machine
{
  machineCopy = machine;
  v9.receiver = self;
  v9.super_class = HKSPStateMachineState;
  v5 = [(HKSPStateMachineState *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_stateMachine, machineCopy);
    v7 = v6;
  }

  return v6;
}

- (BOOL)isCurrentState
{
  selfCopy = self;
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  currentState = [stateMachine currentState];
  LOBYTE(selfCopy) = currentState == selfCopy;

  return selfCopy;
}

- (HKSPStateMachine)stateMachine
{
  WeakRetained = objc_loadWeakRetained(&self->_stateMachine);

  return WeakRetained;
}

- (id)stateIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HKSPStateMachineState *)self equalsBuilderWithObject:equalCopy];
      v6 = [v5 isEqual];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  objc_storeWeak(v4 + 1, stateMachine);

  return v4;
}

- (id)equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:objectCopy ofExpectedClass:objc_opt_class()];
  stateName = [(HKSPStateMachineState *)self stateName];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HKSPStateMachineState_equalsBuilderWithObject___block_invoke;
  v10[3] = &unk_279C74680;
  v11 = objectCopy;
  v7 = objectCopy;
  v8 = [v5 appendObject:stateName counterpart:v10];

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HKSPStateMachineState *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  stateName = [(HKSPStateMachineState *)self stateName];
  [v3 appendString:stateName withName:@"stateName"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HKSPStateMachineState *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end