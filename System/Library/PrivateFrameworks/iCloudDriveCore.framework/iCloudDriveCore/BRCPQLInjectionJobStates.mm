@interface BRCPQLInjectionJobStates
+ (id)_getPQLInjectionFromJobStates:(id)states;
- (BRCPQLInjectionJobStates)initWithJobStates:(id)states;
@end

@implementation BRCPQLInjectionJobStates

- (BRCPQLInjectionJobStates)initWithJobStates:(id)states
{
  statesCopy = states;
  v5 = [objc_opt_class() _getPQLInjectionFromJobStates:statesCopy];

  v8.receiver = self;
  v8.super_class = BRCPQLInjectionJobStates;
  v6 = [(BRCPQLInjectionBase *)&v8 initWithActualInjection:v5];

  return v6;
}

+ (id)_getPQLInjectionFromJobStates:(id)states
{
  statesCopy = states;
  if ([statesCopy count])
  {
    if ([statesCopy count] == 1)
    {
      v4 = MEMORY[0x277D82C08];
      v5 = [statesCopy objectAtIndexedSubscript:0];
      v6 = [v4 formatInjection:{@"AND throttle_state = %@", v5}];
    }

    else
    {
      v10 = MEMORY[0x277CCAB68];
      v11 = [statesCopy objectAtIndexedSubscript:0];
      v5 = objc_msgSend(v10, "stringWithFormat:", @"AND throttle_state IN (%@"), v11;

      if ([statesCopy count] >= 2)
      {
        v12 = 1;
        do
        {
          v13 = [statesCopy objectAtIndexedSubscript:v12];
          [v5 appendFormat:@", %@", v13];

          ++v12;
        }

        while (v12 < [statesCopy count]);
      }

      [v5 appendString:@""]);
      v6 = [MEMORY[0x277D82C18] rawInjection:objc_msgSend(v5 length:{"UTF8String"), objc_msgSend(v5, "length")}];
    }

    v9 = v6;
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(BRCPQLInjectionJobStates *)v7 _getPQLInjectionFromJobStates:v8];
    }

    v9 = 0;
  }

  return v9;
}

+ (void)_getPQLInjectionFromJobStates:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: jobStates is not expected to be empty%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end