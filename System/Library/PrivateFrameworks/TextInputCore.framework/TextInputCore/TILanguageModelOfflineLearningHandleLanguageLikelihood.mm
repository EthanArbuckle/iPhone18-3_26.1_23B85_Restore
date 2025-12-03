@interface TILanguageModelOfflineLearningHandleLanguageLikelihood
- (void)adaptToParagraph:(id)paragraph timeStamp:(double)stamp adaptationType:(int)type;
- (void)updateAdaptationContext:(id)context;
@end

@implementation TILanguageModelOfflineLearningHandleLanguageLikelihood

- (void)adaptToParagraph:(id)paragraph timeStamp:(double)stamp adaptationType:(int)type
{
  paragraphCopy = paragraph;
  v5 = paragraphCopy;
  TIDispatchSync();
}

void __100__TILanguageModelOfflineLearningHandleLanguageLikelihood_adaptToParagraph_timeStamp_adaptationType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentAdaptationContext];
  v6 = [v2 recipientNameDigest];

  v3 = [*(a1 + 32) currentAdaptationContext];
  v4 = [v3 appContext];

  v5 = +[_TILanguageLikelihoodModel sharedLanguageLikelihoodModel];
  [v5 addEvidence:*(a1 + 40) timestamp:*(a1 + 56) adaptationType:v6 forRecipient:v4 app:0 language:*(a1 + 48)];
}

- (void)updateAdaptationContext:(id)context
{
  contextCopy = context;
  [(TILanguageModelOfflineLearningHandle *)self setCurrentAdaptationContext:contextCopy];
  lastAdaptationDate = [(TILanguageModelOfflineLearningHandle *)self lastAdaptationDate];

  if (!lastAdaptationDate)
  {
    v6 = contextCopy;
    TIDispatchSync();
  }
}

void __82__TILanguageModelOfflineLearningHandleLanguageLikelihood_updateAdaptationContext___block_invoke(uint64_t a1)
{
  v2 = +[_TILanguageLikelihoodModel sharedLanguageLikelihoodModel];
  v3 = [*(a1 + 32) appContext];
  [v2 lastOfflineAdaptationTimeForApp:v3];
  v5 = v4;

  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v5];
  [*(a1 + 40) setLastAdaptationDate:v6];
}

@end