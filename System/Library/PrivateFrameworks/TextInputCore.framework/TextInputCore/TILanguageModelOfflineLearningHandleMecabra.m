@interface TILanguageModelOfflineLearningHandleMecabra
- (void)adaptToParagraph:(id)a3 timeStamp:(double)a4 adaptationType:(int)a5;
- (void)didFinishLearning;
- (void)load;
- (void)updateAdaptationContext:(id)a3;
@end

@implementation TILanguageModelOfflineLearningHandleMecabra

- (void)didFinishLearning
{
  v2 = [(TILanguageModelOfflineLearningHandleMecabra *)self wordSearch];
  [v2 flushDynamicData];
}

- (void)adaptToParagraph:(id)a3 timeStamp:(double)a4 adaptationType:(int)a5
{
  v9 = a3;
  v7 = [(TILanguageModelOfflineLearningHandleMecabra *)self wordSearch];
  if (v7)
  {
    v8 = [(TILanguageModelOfflineLearningHandle *)self currentAdaptationContext];
    [v7 adaptOfflineToParagraph:v9 adaptationContext:v8 timeStamp:a4];
  }
}

- (void)load
{
  v5 = +[TIWordSearchController sharedWordSearchController];
  v3 = [(TILanguageModelOfflineLearningHandle *)self inputMode];
  v4 = [v5 wordSearchForInputMode:v3];
  [(TILanguageModelOfflineLearningHandleMecabra *)self setWordSearch:v4];
}

- (void)updateAdaptationContext:(id)a3
{
  v4 = a3;
  v5 = [(TILanguageModelOfflineLearningHandleMecabra *)self wordSearch];
  v6 = v5;
  if (v5)
  {
    [v5 setLanguageModelAdaptationContext:v4];
    [(TILanguageModelOfflineLearningHandle *)self setCurrentAdaptationContext:v4];
    v7 = [(TILanguageModelOfflineLearningHandle *)self lastAdaptationDate];

    if (!v7)
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