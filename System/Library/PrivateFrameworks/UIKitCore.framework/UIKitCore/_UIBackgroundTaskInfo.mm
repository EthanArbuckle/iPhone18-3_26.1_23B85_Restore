@interface _UIBackgroundTaskInfo
+ (id)backgroundTaskAssertionQueue;
- (_UIBackgroundTaskInfo)initWithProcessAssertion:(id)assertion taskName:(id)name expirationHandler:(id)handler;
- (id)description;
- (void)dealloc;
- (void)fireExpirationHandler;
- (void)invalidate;
@end

@implementation _UIBackgroundTaskInfo

+ (id)backgroundTaskAssertionQueue
{
  if (qword_1ED49E230 != -1)
  {
    dispatch_once(&qword_1ED49E230, &__block_literal_global_274);
  }

  v3 = qword_1ED49E238;

  return v3;
}

- (id)description
{
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
  v3 = __tp.tv_sec - self->_creationTime;
  v4 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _UIBackgroundTaskInfo;
  v5 = [(_UIBackgroundTaskInfo *)&v8 description];
  v6 = [v4 stringWithFormat:@"%@: taskID = %lu, taskName = %@, creationTime = %lu (elapsed = %lu)", v5, self->_taskId, self->_taskName, self->_creationTime, v3];

  return v6;
}

- (void)invalidate
{
  processAssertion = self->_processAssertion;
  if (processAssertion)
  {
    self->_processAssertion = 0;
  }
}

- (void)dealloc
{
  [(_UIBackgroundTaskInfo *)self invalidate];
  v3.receiver = self;
  v3.super_class = _UIBackgroundTaskInfo;
  [(_UIBackgroundTaskInfo *)&v3 dealloc];
}

- (_UIBackgroundTaskInfo)initWithProcessAssertion:(id)assertion taskName:(id)name expirationHandler:(id)handler
{
  assertionCopy = assertion;
  nameCopy = name;
  handlerCopy = handler;
  v20.receiver = self;
  v20.super_class = _UIBackgroundTaskInfo;
  v12 = [(_UIBackgroundTaskInfo *)&v20 init];
  v13 = v12;
  if (v12)
  {
    v12->_taskId = 0;
    v14 = _Block_copy(handlerCopy);
    expireHandler = v13->_expireHandler;
    v13->_expireHandler = v14;

    objc_storeStrong(&v13->_processAssertion, assertion);
    v16 = [nameCopy copy];
    taskName = v13->_taskName;
    v13->_taskName = v16;

    v19.tv_sec = 0;
    v19.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v19);
    v13->_creationTime = v19.tv_sec;
  }

  return v13;
}

- (void)fireExpirationHandler
{
  v20 = *MEMORY[0x1E69E9840];
  expireHandler = self->_expireHandler;
  if (expireHandler && self->_processAssertion)
  {
    expireHandler[2](expireHandler, a2);
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E240);
    if (*CategoryCachedImpl)
    {
      v5 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = self->_expireHandler;
        v7 = v5;
        v8 = _Block_copy(v6);
        v9 = [(_UIBackgroundTaskInfo *)self description];
        v14 = 136315650;
        v15 = "[_UIBackgroundTaskInfo fireExpirationHandler]";
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v9;
        v10 = "%s: Called expiration handler: %@ for task: %@";
LABEL_10:
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, v10, &v14, 0x20u);
      }
    }
  }

  else
  {
    v11 = __UILogGetCategoryCachedImpl("BackgroundTask", &qword_1ED49E248);
    if (*v11)
    {
      v12 = *(v11 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = self->_expireHandler;
        v7 = v12;
        v8 = _Block_copy(v13);
        v9 = [(_UIBackgroundTaskInfo *)self description];
        v14 = 136315650;
        v15 = "[_UIBackgroundTaskInfo fireExpirationHandler]";
        v16 = 2112;
        v17 = v8;
        v18 = 2112;
        v19 = v9;
        v10 = "%s: Did not call expiration handler: %@ for task: %@. Handler was nil, or UIKIT_SUPPORTS_ASSERTIONSERVICES is false.";
        goto LABEL_10;
      }
    }
  }
}

@end