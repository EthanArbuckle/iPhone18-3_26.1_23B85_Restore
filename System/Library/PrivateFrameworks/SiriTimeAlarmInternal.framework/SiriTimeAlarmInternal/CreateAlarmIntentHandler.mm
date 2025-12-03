@interface CreateAlarmIntentHandler
- (void)handleCreateAlarm:(id)alarm completion:(id)completion;
@end

@implementation CreateAlarmIntentHandler

- (void)handleCreateAlarm:(id)alarm completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  alarmCopy = alarm;
  selfCopy = self;
  sub_2692A80AC(alarmCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end