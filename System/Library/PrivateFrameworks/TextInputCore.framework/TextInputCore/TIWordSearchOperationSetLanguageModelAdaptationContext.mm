@interface TIWordSearchOperationSetLanguageModelAdaptationContext
- (TIWordSearchOperationSetLanguageModelAdaptationContext)initWithWordSearch:(id)search adaptationContext:(id)context;
- (void)perform;
@end

@implementation TIWordSearchOperationSetLanguageModelAdaptationContext

- (void)perform
{
  v14 = *MEMORY[0x277D85DE8];
  mecabraWrapper = [(TIWordSearchOperationSetLanguageModelAdaptationContext *)self mecabraWrapper];
  mecabraRef = [mecabraWrapper mecabraRef];

  if (mecabraRef)
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
        adaptationContext = [(TIWordSearchOperationSetLanguageModelAdaptationContext *)self adaptationContext];
        v11 = [v9 stringWithFormat:@"%s Set dynamic language model with context %@", "-[TIWordSearchOperationSetLanguageModelAdaptationContext perform]", adaptationContext];
        *buf = 138412290;
        v13 = v11;
        _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    adaptationContext2 = [(TIWordSearchOperationSetLanguageModelAdaptationContext *)self adaptationContext];
    identifier = [adaptationContext2 identifier];
    MecabraSetDynamicLanguageModelAppContext();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (TIWordSearchOperationSetLanguageModelAdaptationContext)initWithWordSearch:(id)search adaptationContext:(id)context
{
  searchCopy = search;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = TIWordSearchOperationSetLanguageModelAdaptationContext;
  v8 = [(TIWordSearchOperationSetLanguageModelAdaptationContext *)&v14 init];
  if (v8)
  {
    mecabraWrapper = [searchCopy mecabraWrapper];
    mecabraWrapper = v8->_mecabraWrapper;
    v8->_mecabraWrapper = mecabraWrapper;

    v11 = [contextCopy copy];
    adaptationContext = v8->_adaptationContext;
    v8->_adaptationContext = v11;
  }

  return v8;
}

@end