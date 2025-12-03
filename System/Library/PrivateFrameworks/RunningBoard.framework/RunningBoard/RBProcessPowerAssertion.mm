@interface RBProcessPowerAssertion
- (id)initWithProcess:(id *)process;
- (int)_targetPid;
@end

@implementation RBProcessPowerAssertion

- (int)_targetPid
{
  if (!self->_process || ![(RBProcessState *)self->_state preventIdleSleep])
  {
    return 0;
  }

  process = self->_process;

  return [(RBProcess *)process rbs_pid];
}

- (id)initWithProcess:(id *)process
{
  v4 = a2;
  if (process)
  {
    v10.receiver = process;
    v10.super_class = RBProcessPowerAssertion;
    v5 = objc_msgSendSuper2(&v10, sel_init);
    process = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 7, a2);
      identity = [process[7] identity];
      shortDescription = [identity shortDescription];
      v8 = process[4];
      process[4] = shortDescription;
    }
  }

  return process;
}

@end