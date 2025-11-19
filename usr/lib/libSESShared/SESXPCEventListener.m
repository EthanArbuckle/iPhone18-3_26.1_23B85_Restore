@interface SESXPCEventListener
+ (id)registerOnStream:(id)a3 forEvent:(id)a4 handler:(id)a5;
+ (id)sharedObject;
- (SESXPCEventListener)init;
- (os_state_data_s)_dumpState;
- (void)_handleEvent:(id)a3 payload:(id)a4;
@end

@implementation SESXPCEventListener

+ (id)sharedObject
{
  if (sharedObject_onceToken_0 != -1)
  {
    +[SESXPCEventListener sharedObject];
  }

  v3 = sharedObject_sharedObject_0;

  return v3;
}

uint64_t __35__SESXPCEventListener_sharedObject__block_invoke()
{
  sharedObject_sharedObject_0 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SESXPCEventListener)init
{
  v14.receiver = self;
  v14.super_class = SESXPCEventListener;
  v2 = [(SESXPCEventListener *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

    v5 = dispatch_queue_create("com.apple.seserviced.sesxpclistener", v4);
    queue = v2->queue;
    v2->queue = v5;

    v7 = objc_opt_new();
    registeredDelegates = v2->registeredDelegates;
    v2->registeredDelegates = v7;

    v9 = objc_opt_new();
    pendingEvents = v2->pendingEvents;
    v2->pendingEvents = v9;

    v11 = v2->queue;
    v13 = v2;
    os_state_add_handler();
  }

  return v2;
}

+ (id)registerOnStream:(id)a3 forEvent:(id)a4 handler:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[SESXPCEventListener sharedObject];
  dispatch_assert_queue_not_V2(v10[1]);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v11 = v10[1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SESXPCEventListener_registerOnStream_forEvent_handler___block_invoke;
  block[3] = &unk_1E86FFC50;
  v12 = v10;
  v22 = v12;
  v13 = v7;
  v23 = v13;
  v14 = v9;
  v24 = v14;
  v15 = v8;
  v25 = v15;
  v26 = &v27;
  dispatch_sync(v11, block);
  v16 = SESDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v28[5] count];
    *buf = 138412546;
    v34 = v13;
    v35 = 1024;
    v36 = v17;
    _os_log_impl(&dword_1E0FCB000, v16, OS_LOG_TYPE_INFO, "Registered client for stream %@ and returning %u pending events", buf, 0x12u);
  }

  v18 = v28[5];
  _Block_object_dispose(&v27, 8);

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

void __57__SESXPCEventListener_registerOnStream_forEvent_handler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    [v2 addPointer:*(a1 + 48)];
    [*(a1 + 40) UTF8String];
    [*(a1 + 56) UTF8String];
    empty = xpc_dictionary_create_empty();
    xpc_set_event();
  }

  else
  {
    v3 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    [v3 addPointer:*(a1 + 48)];
    [*(*(a1 + 32) + 16) setObject:v3 forKeyedSubscript:*(a1 + 40)];
    v5 = [*(a1 + 40) UTF8String];
    v6 = *(a1 + 32);
    v7 = v6[1];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __57__SESXPCEventListener_registerOnStream_forEvent_handler___block_invoke_2;
    v16 = &unk_1E86FFC28;
    v17 = v6;
    v18 = *(a1 + 40);
    xpc_set_event_stream_handler(v5, v7, &v13);
    v8 = *(a1 + 40);
    [v8 UTF8String];
    [*(a1 + 56) UTF8String];
    v9 = xpc_dictionary_create_empty();
    xpc_set_event();

    v10 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
    }
  }
}

- (void)_handleEvent:(id)a3 payload:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->queue);
  v8 = [(NSMutableDictionary *)self->registeredDelegates objectForKey:v6];
  v9 = SESDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v24 = v6;
    v25 = 2048;
    v26 = [v8 count];
    _os_log_impl(&dword_1E0FCB000, v9, OS_LOG_TYPE_INFO, "Received event on stream %@ have %lu delegates", buf, 0x16u);
  }

  if (v8)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if (v15)
          {
            [v15 onEvent:v6 eventPayload:{v7, v18}];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v10 = [(NSMutableDictionary *)self->pendingEvents objectForKeyedSubscript:v6];
    if (!self->pendingEvents)
    {
      v16 = objc_opt_new();

      [(NSMutableDictionary *)self->pendingEvents setObject:v16 forKeyedSubscript:v6];
      v10 = v16;
    }

    [v10 addObject:v7];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (os_state_data_s)_dumpState
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"registeredStreams";
  v3 = [(NSMutableDictionary *)self->registeredDelegates keyEnumerator];
  v4 = [v3 allObjects];
  v11[1] = @"pendingEvents";
  v12[0] = v4;
  v5 = [(NSMutableDictionary *)self->pendingEvents allKeys];
  v12[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:v6 format:200 options:0 error:0];
  v8 = malloc_type_calloc(1uLL, [v7 length] + 200, 0x1000040BEF03554uLL);
  v8->var0 = 1;
  v8->var1.var1 = [v7 length];
  __strlcpy_chk();
  memcpy(v8->var4, [v7 bytes], objc_msgSend(v7, "length"));

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

@end