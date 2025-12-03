@interface RBSBaseMemoryGrant(RBProcessState)
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSBaseMemoryGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  memoryLimit = [v7 memoryLimit];
  target = [v8 target];
  process = [target process];
  if (process)
  {
    lock_targetProcessForAbstract = process;

LABEL_4:
    memoryLimits = [lock_targetProcessForAbstract memoryLimits];
    strength = [self strength];
    category = [self category];
    v16 = [memoryLimits memoryLimitForCategory:category strength:&strength];

    if (memoryLimit == v16)
    {
      v17 = strength;
      memoryLimitStrength = [v7 memoryLimitStrength];
      if (v17 <= memoryLimitStrength)
      {
        v19 = memoryLimitStrength;
      }

      else
      {
        v19 = v17;
      }

      [v7 setMemoryLimitStrength:v19];
    }

    else if (memoryLimit < v16)
    {
      category2 = [self category];
      [v7 setMemoryLimitCategory:category2];

      [v7 setMemoryLimitStrength:strength];
      [v7 setMemoryLimit:v16];
    }

    v21 = rbs_assertion_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      category3 = [self category];
      memoryLimit2 = [v7 memoryLimit];
      assertion = [v8 assertion];
      identifier = [assertion identifier];
      *buf = 138413570;
      v30 = lock_targetProcessForAbstract;
      v31 = 1024;
      v32 = memoryLimit;
      v33 = 1024;
      v34 = v16;
      v35 = 2112;
      v36 = category3;
      v37 = 1024;
      v38 = memoryLimit2;
      v39 = 2112;
      v40 = identifier;
      _os_log_debug_impl(&dword_262485000, v21, OS_LOG_TYPE_DEBUG, "%@: StateLimit %d, attributeLimit %d(%@) -> %d (%@)", buf, 0x32u);
    }

    goto LABEL_14;
  }

  assertion2 = [v8 assertion];
  lock_targetProcessForAbstract = [assertion2 lock_targetProcessForAbstract];

  if (lock_targetProcessForAbstract)
  {
    goto LABEL_4;
  }

  lock_targetProcessForAbstract = rbs_assertion_log();
  if (!os_log_type_enabled(lock_targetProcessForAbstract, OS_LOG_TYPE_INFO))
  {
    goto LABEL_15;
  }

  assertion3 = [v8 assertion];
  memoryLimits = [assertion3 identifier];
  *buf = 138412290;
  v30 = memoryLimits;
  _os_log_impl(&dword_262485000, lock_targetProcessForAbstract, OS_LOG_TYPE_INFO, "applying Base Memory Grant to process state without concrete target (%@)", buf, 0xCu);

LABEL_14:
LABEL_15:

  v22 = *MEMORY[0x277D85DE8];
}

@end