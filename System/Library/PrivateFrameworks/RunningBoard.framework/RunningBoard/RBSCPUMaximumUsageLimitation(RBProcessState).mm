@interface RBSCPUMaximumUsageLimitation(RBProcessState)
- (uint64_t)allowedWithAttribute:()RBProcessState error:;
- (void)applyToAssertionTransientState:()RBProcessState attributePath:context:;
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSCPUMaximumUsageLimitation(RBProcessState)

- (void)applyToAssertionTransientState:()RBProcessState attributePath:context:
{
  v5 = a3;
  v4 = [v5 maxCPUUsageViolationPolicyForRole:{objc_msgSend(self, "role")}];
  if (v4 < [self violationPolicy])
  {
    [v5 setMaxCPUUsageViolationPolicy:objc_msgSend(self forRole:{"violationPolicy"), objc_msgSend(self, "role")}];
  }
}

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v14 = a3;
  targetProcess = [a5 targetProcess];
  isPlatformBinary = [targetProcess isPlatformBinary];

  if ((isPlatformBinary & 1) == 0)
  {
    role = [self role];
    v10 = [RBProcessCPUMaximumLimits alloc];
    percentage = [self percentage];
    [self duration];
    v13 = -[RBProcessCPUMaximumLimits initWithPercentage:duration:violationPolicy:](v10, "initWithPercentage:duration:violationPolicy:", percentage, vcvtpd_u64_f64(v12), [self violationPolicy]);
    [v14 setMaxCPUUsageLimits:v13 forRole:role];
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
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attribute conflict: attribute %@ conflicts with attribute %@", self, v6];
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