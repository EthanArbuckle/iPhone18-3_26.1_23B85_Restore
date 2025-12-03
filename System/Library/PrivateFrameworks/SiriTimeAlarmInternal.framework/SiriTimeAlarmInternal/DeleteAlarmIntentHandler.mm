@interface DeleteAlarmIntentHandler
- (void)confirmDeleteAlarm:(id)alarm completion:(id)completion;
@end

@implementation DeleteAlarmIntentHandler

- (void)confirmDeleteAlarm:(id)alarm completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  alarmCopy = alarm;
  selfCopy = self;
  sub_2692B9220(alarmCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end