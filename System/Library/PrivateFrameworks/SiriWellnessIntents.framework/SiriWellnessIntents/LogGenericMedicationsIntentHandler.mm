@interface LogGenericMedicationsIntentHandler
- (void)handleLogGenericMedications:(LogGenericMedicationsIntent *)medications completion:(id)completion;
@end

@implementation LogGenericMedicationsIntentHandler

- (void)handleLogGenericMedications:(LogGenericMedicationsIntent *)medications completion:(id)completion
{
  MEMORY[0x277D82BE0](medications);
  v7 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = medications;
  v4[3] = v7;
  v4[4] = self;
  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in LogGenericMedicationsIntentHandler.handle(intent:), v4);
}

@end