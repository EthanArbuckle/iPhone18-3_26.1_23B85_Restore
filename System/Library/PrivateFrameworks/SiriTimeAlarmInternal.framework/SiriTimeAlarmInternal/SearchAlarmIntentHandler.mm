@interface SearchAlarmIntentHandler
- (void)confirmSearchAlarm:(id)alarm completion:(id)completion;
- (void)handleSearchAlarm:(id)alarm completion:(id)completion;
- (void)resolveAlarmsForSearchAlarm:(id)alarm withCompletion:(id)completion;
@end

@implementation SearchAlarmIntentHandler

- (void)resolveAlarmsForSearchAlarm:(id)alarm withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  alarmCopy = alarm;
  selfCopy = self;
  sub_2692748B4(alarmCopy, sub_269275D74, v7);
}

- (void)confirmSearchAlarm:(id)alarm completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = [objc_allocWithZone(type metadata accessor for SearchAlarmIntentResponse()) init];
  v6 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = 1;
  [v5 setUserActivity_];
  v4[2](v4, v5);
  _Block_release(v4);
}

- (void)handleSearchAlarm:(id)alarm completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  alarmCopy = alarm;
  selfCopy = self;
  sub_269275C20(v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end