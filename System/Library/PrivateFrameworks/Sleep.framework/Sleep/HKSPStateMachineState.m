@interface HKSPStateMachineState
- (BOOL)isCurrentState;
- (BOOL)isEqual:(id)a3;
- (HKSPStateMachine)stateMachine;
- (HKSPStateMachineState)initWithStateMachine:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)equalsBuilderWithObject:(id)a3;
- (id)stateIdentifier;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation HKSPStateMachineState

- (HKSPStateMachineState)initWithStateMachine:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKSPStateMachineState;
  v5 = [(HKSPStateMachineState *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_stateMachine, v4);
    v7 = v6;
  }

  return v6;
}

- (BOOL)isCurrentState
{
  v2 = self;
  v3 = [(HKSPStateMachineState *)self stateMachine];
  v4 = [v3 currentState];
  LOBYTE(v2) = v4 == v2;

  return v2;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HKSPStateMachineState *)self equalsBuilderWithObject:v4];
      v6 = [v5 isEqual];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(HKSPStateMachineState *)self stateMachine];
  objc_storeWeak(v4 + 1, v5);

  return v4;
}

- (id)equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(HKSPStateMachineState *)self stateName];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HKSPStateMachineState_equalsBuilderWithObject___block_invoke;
  v10[3] = &unk_279C74680;
  v11 = v4;
  v7 = v4;
  v8 = [v5 appendObject:v6 counterpart:v10];

  return v5;
}

- (id)succinctDescription
{
  v2 = [(HKSPStateMachineState *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(HKSPStateMachineState *)self stateName];
  [v3 appendString:v4 withName:@"stateName"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPStateMachineState *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end