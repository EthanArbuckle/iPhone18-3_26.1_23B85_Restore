@interface TIWordSearchOperationSetLanguageModelAdaptationContext
- (TIWordSearchOperationSetLanguageModelAdaptationContext)initWithWordSearch:(id)a3 adaptationContext:(id)a4;
- (void)perform;
@end

@implementation TIWordSearchOperationSetLanguageModelAdaptationContext

- (void)perform
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(TIWordSearchOperationSetLanguageModelAdaptationContext *)self mecabraWrapper];
  v4 = [v3 mecabraRef];

  if (v4)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel >= 2)
    {
      v5 = TIOSLogFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v9 = MEMORY[0x277CCACA8];
        v10 = [(TIWordSearchOperationSetLanguageModelAdaptationContext *)self adaptationContext];
        v11 = [v9 stringWithFormat:@"%s Set dynamic language model with context %@", "-[TIWordSearchOperationSetLanguageModelAdaptationContext perform]", v10];
        *buf = 138412290;
        v13 = v11;
        _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v6 = [(TIWordSearchOperationSetLanguageModelAdaptationContext *)self adaptationContext];
    v7 = [v6 identifier];
    MecabraSetDynamicLanguageModelAppContext();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (TIWordSearchOperationSetLanguageModelAdaptationContext)initWithWordSearch:(id)a3 adaptationContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TIWordSearchOperationSetLanguageModelAdaptationContext;
  v8 = [(TIWordSearchOperationSetLanguageModelAdaptationContext *)&v14 init];
  if (v8)
  {
    v9 = [v6 mecabraWrapper];
    mecabraWrapper = v8->_mecabraWrapper;
    v8->_mecabraWrapper = v9;

    v11 = [v7 copy];
    adaptationContext = v8->_adaptationContext;
    v8->_adaptationContext = v11;
  }

  return v8;
}

@end