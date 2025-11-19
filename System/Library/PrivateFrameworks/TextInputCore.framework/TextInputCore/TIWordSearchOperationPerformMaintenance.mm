@interface TIWordSearchOperationPerformMaintenance
- (TIWordSearchOperationPerformMaintenance)initWithMecabraWrapper:(id)a3;
- (void)perform;
@end

@implementation TIWordSearchOperationPerformMaintenance

- (void)perform
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(TIWordSearchOperationPerformMaintenance *)self mecabraWrapper];

  if (v3)
  {
    v4 = os_transaction_create();
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v5 = TIOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Starting MecabraPerformMaintenance", "-[TIWordSearchOperationPerformMaintenance perform]"];
      *buf = 138412290;
      v12 = v9;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v6 = [(TIWordSearchOperationPerformMaintenance *)self mecabraWrapper];
    [v6 mecabraRef];
    MecabraPerformMaintenance();

    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v7 = TIOSLogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Finished MecabraPerformMaintenance", "-[TIWordSearchOperationPerformMaintenance perform]"];
      *buf = 138412290;
      v12 = v10;
      _os_log_debug_impl(&dword_22CA55000, v7, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (TIWordSearchOperationPerformMaintenance)initWithMecabraWrapper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TIWordSearchOperationPerformMaintenance;
  v6 = [(TIWordSearchOperationPerformMaintenance *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mecabraWrapper, a3);
  }

  return v7;
}

@end