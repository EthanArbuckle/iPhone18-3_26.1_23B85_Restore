@interface RBSBaseMemoryGrant(RBProcessState)
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSBaseMemoryGrant(RBProcessState)

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [v7 memoryLimit];
  v10 = [v8 target];
  v11 = [v10 process];
  if (v11)
  {
    v12 = v11;

LABEL_4:
    v14 = [v12 memoryLimits];
    v28 = [a1 strength];
    v15 = [a1 category];
    v16 = [v14 memoryLimitForCategory:v15 strength:&v28];

    if (v9 == v16)
    {
      v17 = v28;
      v18 = [v7 memoryLimitStrength];
      if (v17 <= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      [v7 setMemoryLimitStrength:v19];
    }

    else if (v9 < v16)
    {
      v20 = [a1 category];
      [v7 setMemoryLimitCategory:v20];

      [v7 setMemoryLimitStrength:v28];
      [v7 setMemoryLimit:v16];
    }

    v21 = rbs_assertion_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v27 = [a1 category];
      v24 = [v7 memoryLimit];
      v25 = [v8 assertion];
      v26 = [v25 identifier];
      *buf = 138413570;
      v30 = v12;
      v31 = 1024;
      v32 = v9;
      v33 = 1024;
      v34 = v16;
      v35 = 2112;
      v36 = v27;
      v37 = 1024;
      v38 = v24;
      v39 = 2112;
      v40 = v26;
      _os_log_debug_impl(&dword_262485000, v21, OS_LOG_TYPE_DEBUG, "%@: StateLimit %d, attributeLimit %d(%@) -> %d (%@)", buf, 0x32u);
    }

    goto LABEL_14;
  }

  v13 = [v8 assertion];
  v12 = [v13 lock_targetProcessForAbstract];

  if (v12)
  {
    goto LABEL_4;
  }

  v12 = rbs_assertion_log();
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    goto LABEL_15;
  }

  v23 = [v8 assertion];
  v14 = [v23 identifier];
  *buf = 138412290;
  v30 = v14;
  _os_log_impl(&dword_262485000, v12, OS_LOG_TYPE_INFO, "applying Base Memory Grant to process state without concrete target (%@)", buf, 0xCu);

LABEL_14:
LABEL_15:

  v22 = *MEMORY[0x277D85DE8];
}

@end