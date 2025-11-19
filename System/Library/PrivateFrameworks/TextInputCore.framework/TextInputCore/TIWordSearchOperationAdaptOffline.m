@interface TIWordSearchOperationAdaptOffline
- (TIWordSearchOperationAdaptOffline)initWithWordSearch:(id)a3 paragraph:(id)a4 adaptationContext:(id)a5 timeStamp:(double)a6;
- (void)perform;
@end

@implementation TIWordSearchOperationAdaptOffline

- (void)perform
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(TIWordSearchOperationAdaptOffline *)self mecabraWrapper];
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
        v8 = MEMORY[0x277CCACA8];
        v9 = [(TIWordSearchOperationAdaptOffline *)self paragraph];
        v10 = [v8 stringWithFormat:@"%s [Offline adaptation] Adapting to paragraph: %@", "-[TIWordSearchOperationAdaptOffline perform]", v9];
        *buf = 138412290;
        v12 = v10;
        _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v6 = [(TIWordSearchOperationAdaptOffline *)self paragraph];
    [(TIWordSearchOperationAdaptOffline *)self timeStamp];
    MecabraAdaptToUntokenizedText();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (TIWordSearchOperationAdaptOffline)initWithWordSearch:(id)a3 paragraph:(id)a4 adaptationContext:(id)a5 timeStamp:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = TIWordSearchOperationAdaptOffline;
  v13 = [(TIWordSearchOperationAdaptOffline *)&v21 init];
  if (v13)
  {
    v14 = [v10 mecabraWrapper];
    mecabraWrapper = v13->_mecabraWrapper;
    v13->_mecabraWrapper = v14;

    v16 = [v11 copy];
    paragraph = v13->_paragraph;
    v13->_paragraph = v16;

    v18 = [v12 copy];
    adaptationContext = v13->_adaptationContext;
    v13->_adaptationContext = v18;

    v13->_timeStamp = a6;
  }

  return v13;
}

@end