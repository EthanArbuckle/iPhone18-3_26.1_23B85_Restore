@interface TILanguageModelOfflineLearningHandleMecabra
- (void)adaptToParagraph:(id)paragraph timeStamp:(double)stamp adaptationType:(int)type;
- (void)didFinishLearning;
- (void)load;
- (void)updateAdaptationContext:(id)context;
@end

@implementation TILanguageModelOfflineLearningHandleMecabra

- (void)didFinishLearning
{
  wordSearch = [(TILanguageModelOfflineLearningHandleMecabra *)self wordSearch];
  [wordSearch flushDynamicData];
}

- (void)adaptToParagraph:(id)paragraph timeStamp:(double)stamp adaptationType:(int)type
{
  paragraphCopy = paragraph;
  wordSearch = [(TILanguageModelOfflineLearningHandleMecabra *)self wordSearch];
  if (wordSearch)
  {
    currentAdaptationContext = [(TILanguageModelOfflineLearningHandle *)self currentAdaptationContext];
    [wordSearch adaptOfflineToParagraph:paragraphCopy adaptationContext:currentAdaptationContext timeStamp:stamp];
  }
}

- (void)load
{
  v5 = +[TIWordSearchController sharedWordSearchController];
  inputMode = [(TILanguageModelOfflineLearningHandle *)self inputMode];
  v4 = [v5 wordSearchForInputMode:inputMode];
  [(TILanguageModelOfflineLearningHandleMecabra *)self setWordSearch:v4];
}

- (void)updateAdaptationContext:(id)context
{
  contextCopy = context;
  wordSearch = [(TILanguageModelOfflineLearningHandleMecabra *)self wordSearch];
  v6 = wordSearch;
  if (wordSearch)
  {
    [wordSearch setLanguageModelAdaptationContext:contextCopy];
    [(TILanguageModelOfflineLearningHandle *)self setCurrentAdaptationContext:contextCopy];
    lastAdaptationDate = [(TILanguageModelOfflineLearningHandle *)self lastAdaptationDate];

    if (!lastAdaptationDate)
    {
      v8 = v6;
      TIDispatchSync();
    }
  }
}

void __71__TILanguageModelOfflineLearningHandleMecabra_updateAdaptationContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) mecabra];
  MecabraGetLastOfflineAdaptationTime();
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
  [*(a1 + 40) setLastAdaptationDate:v2];
}

@end