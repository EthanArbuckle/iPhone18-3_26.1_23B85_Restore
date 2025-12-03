@interface GetSleepAnalysisIntentHandler
- (void)handleGetSleepAnalysis:(GetSleepAnalysisIntent *)analysis completion:(id)completion;
@end

@implementation GetSleepAnalysisIntentHandler

- (void)handleGetSleepAnalysis:(GetSleepAnalysisIntent *)analysis completion:(id)completion
{
  MEMORY[0x277D82BE0](analysis);
  v7 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = analysis;
  v4[3] = v7;
  v4[4] = self;
  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in GetSleepAnalysisIntentHandler.handle(intent:), v4);
}

@end