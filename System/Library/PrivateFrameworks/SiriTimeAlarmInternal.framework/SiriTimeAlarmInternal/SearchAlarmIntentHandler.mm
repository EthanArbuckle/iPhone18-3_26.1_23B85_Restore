@interface SearchAlarmIntentHandler
- (void)confirmSearchAlarm:(id)a3 completion:(id)a4;
- (void)handleSearchAlarm:(id)a3 completion:(id)a4;
- (void)resolveAlarmsForSearchAlarm:(id)a3 withCompletion:(id)a4;
@end

@implementation SearchAlarmIntentHandler

- (void)resolveAlarmsForSearchAlarm:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_2692748B4(v8, sub_269275D74, v7);
}

- (void)confirmSearchAlarm:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = [objc_allocWithZone(type metadata accessor for SearchAlarmIntentResponse()) init];
  v6 = OBJC_IVAR___SearchAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = 1;
  [v5 setUserActivity_];
  v4[2](v4, v5);
  _Block_release(v4);
}

- (void)handleSearchAlarm:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_269275C20(v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end