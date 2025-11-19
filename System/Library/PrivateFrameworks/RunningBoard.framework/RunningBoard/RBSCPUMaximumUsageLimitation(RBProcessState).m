@interface RBSCPUMaximumUsageLimitation(RBProcessState)
- (uint64_t)allowedWithAttribute:()RBProcessState error:;
- (void)applyToAssertionTransientState:()RBProcessState attributePath:context:;
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSCPUMaximumUsageLimitation(RBProcessState)

- (void)applyToAssertionTransientState:()RBProcessState attributePath:context:
{
  v5 = a3;
  v4 = [v5 maxCPUUsageViolationPolicyForRole:{objc_msgSend(a1, "role")}];
  if (v4 < [a1 violationPolicy])
  {
    [v5 setMaxCPUUsageViolationPolicy:objc_msgSend(a1 forRole:{"violationPolicy"), objc_msgSend(a1, "role")}];
  }
}

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v14 = a3;
  v7 = [a5 targetProcess];
  v8 = [v7 isPlatformBinary];

  if ((v8 & 1) == 0)
  {
    v9 = [a1 role];
    v10 = [RBProcessCPUMaximumLimits alloc];
    v11 = [a1 percentage];
    [a1 duration];
    v13 = -[RBProcessCPUMaximumLimits initWithPercentage:duration:violationPolicy:](v10, "initWithPercentage:duration:violationPolicy:", v11, vcvtpd_u64_f64(v12), [a1 violationPolicy]);
    [v14 setMaxCPUUsageLimits:v13 forRole:v9];
  }
}

- (uint64_t)allowedWithAttribute:()RBProcessState error:
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (a4)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attribute conflict: attribute %@ conflicts with attribute %@", a1, v6];
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277D47050];
      v13 = *MEMORY[0x277CCA470];
      v14[0] = v7;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *a4 = [v8 errorWithDomain:v9 code:2 userInfo:v10];

      a4 = 0;
    }
  }

  else
  {
    a4 = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return a4;
}

@end