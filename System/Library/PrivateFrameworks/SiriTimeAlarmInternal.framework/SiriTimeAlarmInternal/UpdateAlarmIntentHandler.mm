@interface UpdateAlarmIntentHandler
- (void)confirmUpdateAlarm:(id)alarm completion:(id)completion;
@end

@implementation UpdateAlarmIntentHandler

- (void)confirmUpdateAlarm:(id)alarm completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = [objc_allocWithZone(type metadata accessor for UpdateAlarmIntentResponse()) init];
  v6 = OBJC_IVAR___UpdateAlarmIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = 1;
  [v5 setUserActivity_];
  v4[2](v4, v5);
  _Block_release(v4);
}

@end