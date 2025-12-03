@interface ChangeAlarmStatusIntentHandler
- (void)confirmChangeAlarmStatus:(id)status completion:(id)completion;
- (void)resolveHandleSilentlyForChangeAlarmStatus:(id)status withCompletion:(id)completion;
@end

@implementation ChangeAlarmStatusIntentHandler

- (void)resolveHandleSilentlyForChangeAlarmStatus:(id)status withCompletion:(id)completion
{
  v5 = _Block_copy(completion);
  statusCopy = status;
  handleSilently = [statusCopy handleSilently];
  if (handleSilently)
  {
    v8 = handleSilently;
    bOOLValue = [handleSilently BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  successWithResolvedValue_ = [objc_opt_self() successWithResolvedValue_];
  v5[2](v5, successWithResolvedValue_);

  _Block_release(v5);
}

- (void)confirmChangeAlarmStatus:(id)status completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = [objc_allocWithZone(type metadata accessor for ChangeAlarmStatusIntentResponse()) init];
  v6 = OBJC_IVAR___ChangeAlarmStatusIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = 4;
  [v5 setUserActivity_];
  v4[2](v4, v5);
  _Block_release(v4);
}

@end