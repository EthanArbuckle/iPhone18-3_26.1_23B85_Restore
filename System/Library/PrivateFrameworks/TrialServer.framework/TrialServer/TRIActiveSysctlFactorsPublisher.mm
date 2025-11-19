@interface TRIActiveSysctlFactorsPublisher
- (BOOL)publishSysctlFactors;
- (TRIActiveSysctlFactorsPublisher)initWithServerContext:(id)a3;
- (TRIActiveSysctlFactorsPublisher)initWithSysctlFactorsProvider:(id)a3 sysctlWriter:(id)a4;
@end

@implementation TRIActiveSysctlFactorsPublisher

- (TRIActiveSysctlFactorsPublisher)initWithSysctlFactorsProvider:(id)a3 sysctlWriter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TRIActiveSysctlFactorsPublisher;
  v9 = [(TRIActiveSysctlFactorsPublisher *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_factorsProvider, a3);
    objc_storeStrong(&v10->_sysctlWriter, a4);
  }

  return v10;
}

- (BOOL)publishSysctlFactors
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(TRIActiveSysctlFactorsProviding *)self->_factorsProvider activeSysctlFactorLevels];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        sysctlWriter = self->_sysctlWriter;
        v11 = [v9 sysctlName];
        v7 &= -[TRISysctlWriting writeSysctlWithName:intValue:](sysctlWriter, "writeSysctlWithName:intValue:", v11, [v9 level]);
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (TRIActiveSysctlFactorsPublisher)initWithServerContext:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 experimentDatabase];

  v7 = [[TRIActiveSysctlFactorsProvider alloc] initWithActiveNamespacesProvider:v6 factorLevelsRetriever:v5];
  v8 = objc_opt_new();
  v9 = [(TRIActiveSysctlFactorsPublisher *)self initWithSysctlFactorsProvider:v7 sysctlWriter:v8];

  return v9;
}

@end