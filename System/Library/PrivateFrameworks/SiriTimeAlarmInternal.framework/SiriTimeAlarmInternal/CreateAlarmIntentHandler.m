@interface CreateAlarmIntentHandler
- (void)handleCreateAlarm:(id)a3 completion:(id)a4;
@end

@implementation CreateAlarmIntentHandler

- (void)handleCreateAlarm:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_2692A80AC(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end