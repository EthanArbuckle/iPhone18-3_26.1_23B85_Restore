@interface GetMenstruationPredictionIntentHandler
- (void)handleGetMenstruationPrediction:(GetMenstruationPredictionIntent *)a3 completion:(id)a4;
@end

@implementation GetMenstruationPredictionIntentHandler

- (void)handleGetMenstruationPrediction:(GetMenstruationPredictionIntent *)a3 completion:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  v7 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = a3;
  v4[3] = v7;
  v4[4] = self;
  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in GetMenstruationPredictionIntentHandler.handle(intent:), v4);
}

@end