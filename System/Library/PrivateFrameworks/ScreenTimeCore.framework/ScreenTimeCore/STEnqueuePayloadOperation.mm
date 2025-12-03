@interface STEnqueuePayloadOperation
- (STEnqueuePayloadOperation)initWithPayload:(id)payload persistenceController:(id)controller;
- (void)_endWithoutSaving;
- (void)main;
@end

@implementation STEnqueuePayloadOperation

- (STEnqueuePayloadOperation)initWithPayload:(id)payload persistenceController:(id)controller
{
  payloadCopy = payload;
  v11.receiver = self;
  v11.super_class = STEnqueuePayloadOperation;
  v8 = [(STPersistenceOperation *)&v11 initWithPersistenceController:controller];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_payload, payload);
  }

  return v9;
}

- (void)main
{
  v3 = _os_activity_create(&_mh_execute_header, "STEnqueuePayloadOperation start", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  [(STOperation *)self setActivity:v3];

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  activity = [(STOperation *)self activity];
  os_activity_scope_enter(activity, &state);

  v5 = +[STLog payloadManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v10 = "[STEnqueuePayloadOperation main]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[v1] %{public}s: \nStarted", buf, 0xCu);
  }

  persistenceController = [(STPersistenceOperation *)self persistenceController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002D54C;
  v7[3] = &unk_1001A3BF0;
  v7[4] = self;
  [persistenceController performBackgroundTask:v7];

  os_activity_scope_leave(&state);
}

- (void)_endWithoutSaving
{
  v3 = +[STLog payloadManager];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136446210;
    v5 = "[STEnqueuePayloadOperation _endWithoutSaving]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[v1] %{public}s: \nNo enqueuing to be done", &v4, 0xCu);
  }

  [(STEnqueuePayloadOperation *)self endOperationWithResultObject:0];
}

@end