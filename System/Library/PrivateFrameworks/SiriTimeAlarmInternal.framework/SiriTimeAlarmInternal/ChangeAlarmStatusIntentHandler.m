@interface ChangeAlarmStatusIntentHandler
- (void)confirmChangeAlarmStatus:(id)a3 completion:(id)a4;
- (void)resolveHandleSilentlyForChangeAlarmStatus:(id)a3 withCompletion:(id)a4;
@end

@implementation ChangeAlarmStatusIntentHandler

- (void)resolveHandleSilentlyForChangeAlarmStatus:(id)a3 withCompletion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = a3;
  v7 = [v6 handleSilently];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() successWithResolvedValue_];
  v5[2](v5, v10);

  _Block_release(v5);
}

- (void)confirmChangeAlarmStatus:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
  v6 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = 4;
  [v5 setUserActivity_];
  v4[2](v4, v5);
  _Block_release(v4);
}

@end