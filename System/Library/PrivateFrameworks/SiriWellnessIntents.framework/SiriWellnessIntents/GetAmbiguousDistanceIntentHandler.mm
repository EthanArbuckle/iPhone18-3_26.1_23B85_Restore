@interface GetAmbiguousDistanceIntentHandler
- (void)handleGetAmbiguousDistance:(GetAmbiguousDistanceIntent *)distance completion:(id)completion;
@end

@implementation GetAmbiguousDistanceIntentHandler

- (void)handleGetAmbiguousDistance:(GetAmbiguousDistanceIntent *)distance completion:(id)completion
{
  MEMORY[0x277D82BE0](distance);
  v7 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = distance;
  v4[3] = v7;
  v4[4] = self;
  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in GetAmbiguousDistanceIntentHandler.handle(intent:), v4);
}

@end