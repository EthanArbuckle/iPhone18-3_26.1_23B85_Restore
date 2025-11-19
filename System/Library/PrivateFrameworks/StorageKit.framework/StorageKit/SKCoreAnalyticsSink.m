@interface SKCoreAnalyticsSink
- (void)sendEventWithName:(id)a3 eventPayloadBuilder:(id)a4;
@end

@implementation SKCoreAnalyticsSink

- (void)sendEventWithName:(id)a3 eventPayloadBuilder:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v9[4] = sub_26BBE4F94;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26BBE46B4;
  v9[3] = &block_descriptor_14;
  v7 = _Block_copy(v9);
  v8 = a3;

  AnalyticsSendEventLazy();

  _Block_release(v7);
}

@end