@interface TIWordSearchOperationResetLearningDictionaries
- (TIWordSearchOperationResetLearningDictionaries)initWithMecabraWrapper:(id)wrapper;
- (void)perform;
@end

@implementation TIWordSearchOperationResetLearningDictionaries

- (void)perform
{
  v16 = *MEMORY[0x277D85DE8];
  mecabraWrapper = [(TIWordSearchOperationResetLearningDictionaries *)self mecabraWrapper];

  if (mecabraWrapper)
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
        mecabraWrapper2 = [(TIWordSearchOperationResetLearningDictionaries *)self mecabraWrapper];
        v12 = [v10 numberWithUnsignedInt:{objc_msgSend(mecabraWrapper2, "inputMethodType")}];
        v13 = [v9 stringWithFormat:@"%s Reset learning dictionaries for input method type %@", "-[TIWordSearchOperationResetLearningDictionaries perform]", v12];
        *buf = 138412290;
        v15 = v13;
        _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    mecabraWrapper3 = [(TIWordSearchOperationResetLearningDictionaries *)self mecabraWrapper];
    [mecabraWrapper3 inputMethodType];
    v6 = MEMORY[0x277CBEBC0];
    v7 = UIKeyboardUserDirectory();
    [v6 fileURLWithPath:v7];
    MecabraResetLearningDictionaries();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (TIWordSearchOperationResetLearningDictionaries)initWithMecabraWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v9.receiver = self;
  v9.super_class = TIWordSearchOperationResetLearningDictionaries;
  v6 = [(TIWordSearchOperationResetLearningDictionaries *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mecabraWrapper, wrapper);
  }

  return v7;
}

@end