@interface CryptexEventSubscriber
+ (NSMutableDictionary)subscribers;
+ (OS_dispatch_queue)streamQueue;
+ (void)attachToStream:(id)a3 withRegistration:(id)a4;
+ (void)detachFromStream:(id)a3;
+ (void)initializeEventStream;
- (CryptexEventSubscriber)initWithFlags:(unint64_t)a3 name:(id)a4;
- (id)_handleXPCEvent:(id)a3;
- (id)registerForEvents:(unint64_t)a3 onQueue:(id)a4 withCompletion:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)handleXPCEvent:(id)a3;
@end

@implementation CryptexEventSubscriber

+ (OS_dispatch_queue)streamQueue
{
  if (streamQueue_onceToken != -1)
  {
    +[CryptexEventSubscriber streamQueue];
  }

  v3 = _streamQueue;

  return v3;
}

uint64_t __37__CryptexEventSubscriber_streamQueue__block_invoke()
{
  _streamQueue = dispatch_queue_create("com.apple.security.libcryptex.com.apple.security.cryptex.events", 0);

  return MEMORY[0x2A1C71028]();
}

+ (NSMutableDictionary)subscribers
{
  if (subscribers_onceToken != -1)
  {
    +[CryptexEventSubscriber subscribers];
  }

  v2 = +[CryptexEventSubscriber streamQueue];
  dispatch_assert_queue_V2(v2);

  v3 = _subscribers;

  return v3;
}

uint64_t __37__CryptexEventSubscriber_subscribers__block_invoke()
{
  _subscribers = objc_alloc_init(MEMORY[0x29EDB8E00]);

  return MEMORY[0x2A1C71028]();
}

+ (void)initializeEventStream
{
  if (initializeEventStream_onceToken != -1)
  {
    +[CryptexEventSubscriber initializeEventStream];
  }
}

void __47__CryptexEventSubscriber_initializeEventStream__block_invoke()
{
  v0 = +[CryptexEventSubscriber streamQueue];
  xpc_set_event_stream_handler("com.apple.security.cryptex.events", v0, &__block_literal_global_14);
}

void __47__CryptexEventSubscriber_initializeEventStream__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x29EDCA9D8];
  v3 = a2;
  string = xpc_dictionary_get_string(v3, v2);
  v5 = +[CryptexEventSubscriber subscribers];
  v6 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:string];
  v7 = [v5 objectForKeyedSubscript:v6];

  [v7 handleXPCEvent:v3];
}

+ (void)attachToStream:(id)a3 withRegistration:(id)a4
{
  v5 = a3;
  v6 = a4;
  +[CryptexEventSubscriber initializeEventStream];
  v7 = +[CryptexEventSubscriber streamQueue];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __58__CryptexEventSubscriber_attachToStream_withRegistration___block_invoke;
  v10[3] = &unk_29EEA7660;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __58__CryptexEventSubscriber_attachToStream_withRegistration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[CryptexEventSubscriber subscribers];
  v4 = [*(a1 + 32) xpcEventName];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v7 = [*(a1 + 32) xpcEventName];
  v5 = v7;
  [v7 UTF8String];
  v6 = *(a1 + 40);
  xpc_set_event();
}

+ (void)detachFromStream:(id)a3
{
  v3 = a3;
  +[CryptexEventSubscriber initializeEventStream];
  v4 = +[CryptexEventSubscriber streamQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __43__CryptexEventSubscriber_detachFromStream___block_invoke;
  block[3] = &unk_29EEA7688;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __43__CryptexEventSubscriber_detachFromStream___block_invoke(uint64_t a1)
{
  v2 = +[CryptexEventSubscriber subscribers];
  v3 = [*(a1 + 32) xpcEventName];
  [v2 removeObjectForKey:v3];

  v5 = [*(a1 + 32) xpcEventName];
  v4 = v5;
  [v5 UTF8String];
  xpc_set_event();
}

- (CryptexEventSubscriber)initWithFlags:(unint64_t)a3 name:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v14.receiver = self;
    v14.super_class = CryptexEventSubscriber;
    v8 = [(CryptexEventSubscriber *)&v14 init];
    if (v8)
    {
      v9 = os_log_create("com.apple.libcryptex", "event_subscriber");
      log = v8->_log;
      v8->_log = v9;

      v8->_flags = a3;
      v8->_active = 0;
      queue = v8->_queue;
      v8->_queue = 0;

      objc_storeStrong(&v8->_xpcEventName, a4);
    }

    self = v8;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)registerForEvents:(unint64_t)a3 onQueue:(id)a4 withCompletion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = xpc_dictionary_create(0, 0, 0);
  if (v8)
  {
    if (v9)
    {
      [(CryptexEventSubscriber *)self setCallback:v9];
      v11 = dispatch_queue_attr_make_initially_inactive(0);
      v12 = dispatch_queue_create("com.apple.security.libcryptex.event_subscriber", v11);

      [(CryptexEventSubscriber *)self setQueue:v12];
      v13 = [(CryptexEventSubscriber *)self queue];
      dispatch_set_target_queue(v13, v8);

      v14 = [(CryptexEventSubscriber *)self queue];
      dispatch_activate(v14);

      [(CryptexEventSubscriber *)self setActive:1];
      v15 = cryptex_event_mask_ext_to_int(a3);
      xpc_dictionary_set_uint64(v10, "CryptexEventMask", v15);
      v16 = getprogname();
      xpc_dictionary_set_string(v10, "CryptexEventClientName", v16);
      [CryptexEventSubscriber attachToStream:self withRegistration:v10];
      v17 = 0;
      goto LABEL_13;
    }

    v21 = [(CryptexEventSubscriber *)self log];

    if (v21)
    {
      v22 = [(CryptexEventSubscriber *)self log];
      os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      v20 = _os_log_send_and_compose_impl();
    }

    else
    {
      v20 = _os_log_send_and_compose_impl();
    }

    Error = createError("[CryptexEventSubscriber registerForEvents:onQueue:withCompletion:]", "event.m", 125, "com.apple.security.cryptex", 3, 0, v20);
  }

  else
  {
    v18 = [(CryptexEventSubscriber *)self log];

    if (v18)
    {
      v19 = [(CryptexEventSubscriber *)self log];
      os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
      v20 = _os_log_send_and_compose_impl();
    }

    else
    {
      v20 = _os_log_send_and_compose_impl();
    }

    Error = createError("[CryptexEventSubscriber registerForEvents:onQueue:withCompletion:]", "event.m", 118, "com.apple.security.cryptex", 3, 0, v20);
  }

  v17 = Error;
  free(v20);
LABEL_13:

  return v17;
}

- (void)cancel
{
  v3 = [(CryptexEventSubscriber *)self queue];
  v4 = v3;
  if (v3)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __32__CryptexEventSubscriber_cancel__block_invoke;
    block[3] = &unk_29EEA7688;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

void __32__CryptexEventSubscriber_cancel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callback];
  if ([*(a1 + 32) active])
  {
    [*(a1 + 32) setActive:0];
    [*(a1 + 32) setCallback:0];
    [*(a1 + 32) setQueue:0];
    [CryptexEventSubscriber detachFromStream:*(a1 + 32)];
    if (v2)
    {
      (*(v2 + 2))(v2, 0, 0, 0);
    }
  }
}

- (void)dealloc
{
  [(CryptexEventSubscriber *)self cancel];
  v3.receiver = self;
  v3.super_class = CryptexEventSubscriber;
  [(CryptexEventSubscriber *)&v3 dealloc];
}

- (id)_handleXPCEvent:(id)a3
{
  v34 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v30 = 0;
  v31 = 0;
  length = 0;
  v5 = [(CryptexEventSubscriber *)self queue];
  dispatch_assert_queue_V2(v5);

  if (![(CryptexEventSubscriber *)self active])
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_23;
  }

  v6 = [(CryptexEventSubscriber *)self callback];

  if (!v6)
  {
    v12 = [(CryptexEventSubscriber *)self log];

    if (v12)
    {
      v13 = [(CryptexEventSubscriber *)self log];
      os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      LOWORD(v32) = 0;
      v9 = _os_log_send_and_compose_impl();
    }

    else
    {
      LOWORD(v32) = 0;
      v9 = _os_log_send_and_compose_impl();
    }

    Error = createError("[CryptexEventSubscriber _handleXPCEvent:]", "event.m", 201, "com.apple.security.cryptex", 3, 0, v9);
    goto LABEL_22;
  }

  if (_xpc_dictionary_try_get_uint64(v4, "CRYPTEX_EVENT_TYPE", &v31))
  {
    v7 = [(CryptexEventSubscriber *)self log];

    if (v7)
    {
      v8 = [(CryptexEventSubscriber *)self log];
      os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      v32 = 136315138;
      v33 = "CRYPTEX_EVENT_TYPE";
      v9 = _os_log_send_and_compose_impl();
    }

    else
    {
      v32 = 136315138;
      v33 = "CRYPTEX_EVENT_TYPE";
      v9 = _os_log_send_and_compose_impl();
    }

    Error = createError("[CryptexEventSubscriber _handleXPCEvent:]", "event.m", 210, "com.apple.security.cryptex", 3, 0, v9);
LABEL_22:
    v11 = Error;
    free(v9);
    v10 = 0;
    goto LABEL_23;
  }

  if (_xpc_dictionary_try_get_string(v4, "CRYPTEX_EVENT_CRYPTEX_NAME", &v30))
  {
    v14 = [(CryptexEventSubscriber *)self log];

    if (v14)
    {
      v15 = [(CryptexEventSubscriber *)self log];
      os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      v32 = 136315138;
      v33 = "CRYPTEX_EVENT_CRYPTEX_NAME";
      v9 = _os_log_send_and_compose_impl();
    }

    else
    {
      v32 = 136315138;
      v33 = "CRYPTEX_EVENT_CRYPTEX_NAME";
      v9 = _os_log_send_and_compose_impl();
    }

    Error = createError("[CryptexEventSubscriber _handleXPCEvent:]", "event.m", 219, "com.apple.security.cryptex", 3, 0, v9);
    goto LABEL_22;
  }

  data = xpc_dictionary_get_data(v4, "CRYPTEX_EVENT_INFO", &length);
  if (data)
  {
    v18 = MEMORY[0x29EDBA0C0];
    v19 = [MEMORY[0x29EDB8DA0] dataWithBytes:data length:length];
    v28 = 0;
    v10 = [v18 propertyListWithData:v19 options:0 format:0 error:&v28];
    v11 = v28;

    if (!v10)
    {
      v20 = [(CryptexEventSubscriber *)self log];

      if (v20)
      {
        v21 = [(CryptexEventSubscriber *)self log];
        os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
        LOWORD(v32) = 0;
        v22 = _os_log_send_and_compose_impl();
      }

      else
      {
        LOWORD(v32) = 0;
        v22 = _os_log_send_and_compose_impl();
      }

      v27 = createError("[CryptexEventSubscriber _handleXPCEvent:]", "event.m", 232, "com.apple.security.cryptex", 3, v11, v22);
      free(v22);

      v10 = 0;
      v11 = v27;
      goto LABEL_23;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v25 = cryptex_event_type_int_to_ext(v31);
  v26 = [(CryptexEventSubscriber *)self callback];
  (v26)[2](v26, v25, v30, v10);

LABEL_23:
  v23 = *MEMORY[0x29EDCA608];

  return v11;
}

- (void)handleXPCEvent:(id)a3
{
  v4 = a3;
  v5 = [(CryptexEventSubscriber *)self queue];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __41__CryptexEventSubscriber_handleXPCEvent___block_invoke;
  v7[3] = &unk_29EEA7660;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __41__CryptexEventSubscriber_handleXPCEvent___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = [*(a1 + 32) _handleXPCEvent:*(a1 + 40)];
  if (v2)
  {
    v3 = *__error();
    v4 = [*(a1 + 32) log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v6 = 138543618;
      v7 = v2;
      v8 = 1024;
      v9 = 72;
      _os_log_impl(&dword_2986C0000, v4, OS_LOG_TYPE_FAULT, "Failed to handle XPC event: %{public}@: %{darwin.errno}d", &v6, 0x12u);
    }

    *__error() = v3;
  }

  v5 = *MEMORY[0x29EDCA608];
}

@end