@interface TIWordSearchOperationAdaptOffline
- (TIWordSearchOperationAdaptOffline)initWithWordSearch:(id)search paragraph:(id)paragraph adaptationContext:(id)context timeStamp:(double)stamp;
- (void)perform;
@end

@implementation TIWordSearchOperationAdaptOffline

- (void)perform
{
  v13 = *MEMORY[0x277D85DE8];
  mecabraWrapper = [(TIWordSearchOperationAdaptOffline *)self mecabraWrapper];
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
        v8 = MEMORY[0x277CCACA8];
        paragraph = [(TIWordSearchOperationAdaptOffline *)self paragraph];
        v10 = [v8 stringWithFormat:@"%s [Offline adaptation] Adapting to paragraph: %@", "-[TIWordSearchOperationAdaptOffline perform]", paragraph];
        *buf = 138412290;
        v12 = v10;
        _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    paragraph2 = [(TIWordSearchOperationAdaptOffline *)self paragraph];
    [(TIWordSearchOperationAdaptOffline *)self timeStamp];
    MecabraAdaptToUntokenizedText();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (TIWordSearchOperationAdaptOffline)initWithWordSearch:(id)search paragraph:(id)paragraph adaptationContext:(id)context timeStamp:(double)stamp
{
  searchCopy = search;
  paragraphCopy = paragraph;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = TIWordSearchOperationAdaptOffline;
  v13 = [(TIWordSearchOperationAdaptOffline *)&v21 init];
  if (v13)
  {
    mecabraWrapper = [searchCopy mecabraWrapper];
    mecabraWrapper = v13->_mecabraWrapper;
    v13->_mecabraWrapper = mecabraWrapper;

    v16 = [paragraphCopy copy];
    paragraph = v13->_paragraph;
    v13->_paragraph = v16;

    v18 = [contextCopy copy];
    adaptationContext = v13->_adaptationContext;
    v13->_adaptationContext = v18;

    v13->_timeStamp = stamp;
  }

  return v13;
}

@end