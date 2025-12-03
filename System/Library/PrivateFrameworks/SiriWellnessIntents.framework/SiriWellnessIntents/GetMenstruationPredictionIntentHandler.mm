@interface GetMenstruationPredictionIntentHandler
- (void)handleGetMenstruationPrediction:(GetMenstruationPredictionIntent *)prediction completion:(id)completion;
@end

@implementation GetMenstruationPredictionIntentHandler

- (void)handleGetMenstruationPrediction:(GetMenstruationPredictionIntent *)prediction completion:(id)completion
{
  MEMORY[0x277D82BE0](prediction);
  v7 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = prediction;
  v4[3] = v7;
  v4[4] = self;
  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in GetMenstruationPredictionIntentHandler.handle(intent:), v4);
}

@end