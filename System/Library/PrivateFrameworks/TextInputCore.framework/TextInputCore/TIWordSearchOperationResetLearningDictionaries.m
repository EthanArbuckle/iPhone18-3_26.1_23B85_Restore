@interface TIWordSearchOperationResetLearningDictionaries
- (TIWordSearchOperationResetLearningDictionaries)initWithMecabraWrapper:(id)a3;
- (void)perform;
@end

@implementation TIWordSearchOperationResetLearningDictionaries

- (void)perform
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(TIWordSearchOperationResetLearningDictionaries *)self mecabraWrapper];

  if (v3)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel)
    {
      v4 = TIOSLogFacility();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = MEMORY[0x277CCABB0];
        v11 = [(TIWordSearchOperationResetLearningDictionaries *)self mecabraWrapper];
        v12 = [v10 numberWithUnsignedInt:{objc_msgSend(v11, "inputMethodType")}];
        v13 = [v9 stringWithFormat:@"%s Reset learning dictionaries for input method type %@", "-[TIWordSearchOperationResetLearningDictionaries perform]", v12];
        *buf = 138412290;
        v15 = v13;
        _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v5 = [(TIWordSearchOperationResetLearningDictionaries *)self mecabraWrapper];
    [v5 inputMethodType];
    v6 = MEMORY[0x277CBEBC0];
    v7 = UIKeyboardUserDirectory();
    [v6 fileURLWithPath:v7];
    MecabraResetLearningDictionaries();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (TIWordSearchOperationResetLearningDictionaries)initWithMecabraWrapper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TIWordSearchOperationResetLearningDictionaries;
  v6 = [(TIWordSearchOperationResetLearningDictionaries *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mecabraWrapper, a3);
  }

  return v7;
}

@end