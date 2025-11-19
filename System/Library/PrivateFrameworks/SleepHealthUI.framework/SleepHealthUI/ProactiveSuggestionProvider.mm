@interface ProactiveSuggestionProvider
- (_TtC13SleepHealthUI27ProactiveSuggestionProvider)init;
- (void)hksp_suggestedSleepScheduleWithCompletion:(id)a3;
@end

@implementation ProactiveSuggestionProvider

- (void)hksp_suggestedSleepScheduleWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = [objc_allocWithZone(MEMORY[0x277CEB830]) init];
  v6 = swift_allocObject();
  *(v6 + 16) = sub_269C4D910;
  *(v6 + 24) = v4;
  v8[4] = sub_269C4E49C;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_269C4D5F0;
  v8[3] = &block_descriptor_12;
  v7 = _Block_copy(v8);

  [v5 predictedSleepSuggestionWithCompletionHandler_];

  _Block_release(v7);
}

- (_TtC13SleepHealthUI27ProactiveSuggestionProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ProactiveSuggestionProvider *)&v3 init];
}

@end