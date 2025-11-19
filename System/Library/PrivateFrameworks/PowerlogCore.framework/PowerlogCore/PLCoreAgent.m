@interface PLCoreAgent
- (PLCoreAgent)init;
- (void)startAgents;
@end

@implementation PLCoreAgent

- (PLCoreAgent)init
{
  v3.receiver = self;
  v3.super_class = PLCoreAgent;
  return [(PLCoreOperator *)&v3 init];
}

- (void)startAgents
{
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Start Powerlog Agents", buf, 2u);
  }

  v4 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = PLCoreAgent;
  [(PLCoreOperator *)&v5 startOperatorsOfSuperClassType:v4];
}

@end