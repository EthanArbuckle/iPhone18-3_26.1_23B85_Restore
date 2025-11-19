@interface SESAlarm
+ (BOOL)isAlarmSet:(id)a3;
+ (BOOL)registerAlarm:(id)a3 handler:(id)a4;
+ (id)sharedObject;
+ (void)clearAlarm:(id)a3;
+ (void)deregisterAlarm:(id)a3;
+ (void)setAlarm:(id)a3 secondsFromNow:(double)a4;
- (SESAlarm)init;
- (void)_handleAlarmFired:(id)a3;
@end

@implementation SESAlarm

+ (id)sharedObject
{
  if (sharedObject_onceToken != -1)
  {
    +[SESAlarm sharedObject];
  }

  v3 = sharedObject_sharedObject;

  return v3;
}

uint64_t __24__SESAlarm_sharedObject__block_invoke()
{
  sharedObject_sharedObject = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SESAlarm)init
{
  v15.receiver = self;
  v15.super_class = SESAlarm;
  v2 = [(SESAlarm *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

    v5 = dispatch_queue_create("com.apple.seserviced.alarm", v4);
    queue = v2->queue;
    v2->queue = v5;

    v7 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    registered = v2->registered;
    v2->registered = v7;

    v9 = objc_opt_new();
    pendingAlarms = v2->pendingAlarms;
    v2->pendingAlarms = v9;

    v11 = v2->queue;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __16__SESAlarm_init__block_invoke;
    handler[3] = &unk_1E86FFA88;
    v14 = v2;
    xpc_set_event_stream_handler("com.apple.alarm", v11, handler);
  }

  return v2;
}

- (void)_handleAlarmFired:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  queue = self->queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  string = xpc_dictionary_get_string(v5, *MEMORY[0x1E69E9E40]);

  if (string)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v8 = v7;
    if (v7)
    {
      [v7 UTF8String];
      xpc_set_event();
      v9 = [(NSMapTable *)self->registered objectForKey:v8];
      v10 = SESDefaultLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        v13 = v8;
        v14 = 1024;
        v15 = v9 == 0;
        _os_log_impl(&dword_1E0FCB000, v10, OS_LOG_TYPE_INFO, "Handling alarm %@ pended %d", &v12, 0x12u);
      }

      if (v9)
      {
        [v9 onAlarm:v8];
      }

      else
      {
        [(NSMutableSet *)self->pendingAlarms addObject:v8];
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (BOOL)registerAlarm:(id)a3 handler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v7 = +[SESAlarm sharedObject];
  dispatch_assert_queue_not_V2(v7[1]);
  v8 = v7[1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __34__SESAlarm_registerAlarm_handler___block_invoke;
  v17[3] = &unk_1E86FFAB0;
  v9 = v7;
  v18 = v9;
  v10 = v6;
  v19 = v10;
  v11 = v5;
  v20 = v11;
  v21 = &v22;
  dispatch_sync(v8, v17);
  v12 = SESDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(v23 + 24);
    *buf = 138412546;
    v27 = v11;
    v28 = 1024;
    v29 = v13;
    _os_log_impl(&dword_1E0FCB000, v12, OS_LOG_TYPE_INFO, "Registered alarm %@ wasPending %d", buf, 0x12u);
  }

  v14 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);

  v15 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

uint64_t __34__SESAlarm_registerAlarm_handler___block_invoke(void *a1)
{
  [*(a1[4] + 16) setObject:a1[5] forKey:a1[6]];
  result = [*(a1[4] + 24) containsObject:a1[6]];
  if (result)
  {
    result = [*(a1[4] + 24) removeObject:a1[6]];
    *(*(a1[7] + 8) + 24) = 1;
  }

  return result;
}

+ (void)deregisterAlarm:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[SESAlarm sharedObject];
  dispatch_assert_queue_not_V2(v4[1]);
  v5 = v4[1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __28__SESAlarm_deregisterAlarm___block_invoke;
  v10[3] = &unk_1E86FFAD8;
  v6 = v3;
  v11 = v6;
  v12 = v4;
  v7 = v4;
  dispatch_sync(v5, v10);
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_1E0FCB000, v8, OS_LOG_TYPE_INFO, "Deregistered alarm %@", buf, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __28__SESAlarm_deregisterAlarm___block_invoke(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  xpc_set_event();
  [*(*(a1 + 40) + 16) removeObjectForKey:*(a1 + 32)];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);

  return [v3 removeObject:v2];
}

+ (void)clearAlarm:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[SESAlarm sharedObject];
  dispatch_assert_queue_not_V2(v4[1]);
  v5 = v4[1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __23__SESAlarm_clearAlarm___block_invoke;
  v10[3] = &unk_1E86FFAD8;
  v6 = v3;
  v11 = v6;
  v12 = v4;
  v7 = v4;
  dispatch_sync(v5, v10);
  v8 = SESDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_1E0FCB000, v8, OS_LOG_TYPE_INFO, "Cleared alarm %@", buf, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __23__SESAlarm_clearAlarm___block_invoke(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  xpc_set_event();
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);

  return [v3 removeObject:v2];
}

+ (void)setAlarm:(id)a3 secondsFromNow:(double)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[SESAlarm sharedObject];
  dispatch_assert_queue_not_V2(v6[1]);
  v7 = v6[1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__SESAlarm_setAlarm_secondsFromNow___block_invoke;
  v11[3] = &unk_1E86FFB00;
  v13 = a4;
  v8 = v5;
  v12 = v8;
  dispatch_sync(v7, v11);
  v9 = SESDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v15 = v8;
    v16 = 2048;
    v17 = a4;
    _os_log_impl(&dword_1E0FCB000, v9, OS_LOG_TYPE_INFO, "Event %@ scheduled in %lld seconds", buf, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __36__SESAlarm_setAlarm_secondsFromNow___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  [v2 timeIntervalSince1970];
  v4 = (v3 + *(a1 + 40));

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_date(v5, "Date", 1000000000 * v4);
  [*(a1 + 32) UTF8String];
  xpc_set_event();
}

+ (BOOL)isAlarmSet:(id)a3
{
  v3 = a3;
  v4 = +[SESAlarm sharedObject];
  dispatch_assert_queue_not_V2(v4[1]);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = v4[1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __23__SESAlarm_isAlarmSet___block_invoke;
  v8[3] = &unk_1E86FFB28;
  v9 = v3;
  v10 = &v11;
  v6 = v3;
  dispatch_sync(v5, v8);
  LOBYTE(v5) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __23__SESAlarm_isAlarmSet___block_invoke(uint64_t a1)
{
  [*(a1 + 32) UTF8String];
  v2 = xpc_copy_event();
  if (v2)
  {
    v5 = v2;
    v3 = xpc_dictionary_get_count(v2) == 0;
    v2 = v5;
    v4 = !v3;
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

@end