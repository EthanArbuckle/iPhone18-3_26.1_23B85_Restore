@interface RBSystemPowerAssertion
- (RBSystemPowerAssertion)init;
- (int)_targetPid;
@end

@implementation RBSystemPowerAssertion

- (RBSystemPowerAssertion)init
{
  v6.receiver = self;
  v6.super_class = RBSystemPowerAssertion;
  v2 = [(RBPowerAssertion *)&v6 init];
  v3 = v2;
  if (v2)
  {
    baseName = v2->super._baseName;
    v2->super._baseName = @"runningboardd.system";
  }

  return v3;
}

- (int)_targetPid
{
  result = [(RBSystemState *)self->_state preventIdleSleep];
  if (result)
  {

    return getpid();
  }

  return result;
}

@end