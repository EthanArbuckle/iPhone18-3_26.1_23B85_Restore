@interface GetHealthQuantityIntentHandler
- (void)handleGetHealthQuantity:(GetHealthQuantityIntent *)quantity completion:(id)completion;
@end

@implementation GetHealthQuantityIntentHandler

- (void)handleGetHealthQuantity:(GetHealthQuantityIntent *)quantity completion:(id)completion
{
  MEMORY[0x277D82BE0](quantity);
  v7 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = quantity;
  v4[3] = v7;
  v4[4] = self;
  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in GetHealthQuantityIntentHandler.handle(intent:), v4);
}

@end