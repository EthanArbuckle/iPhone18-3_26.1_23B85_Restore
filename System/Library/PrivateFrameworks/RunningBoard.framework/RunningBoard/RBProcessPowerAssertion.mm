@interface RBProcessPowerAssertion
- (id)initWithProcess:(id *)a1;
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

- (id)initWithProcess:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = RBProcessPowerAssertion;
    v5 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 7, a2);
      v6 = [a1[7] identity];
      v7 = [v6 shortDescription];
      v8 = a1[4];
      a1[4] = v7;
    }
  }

  return a1;
}

@end