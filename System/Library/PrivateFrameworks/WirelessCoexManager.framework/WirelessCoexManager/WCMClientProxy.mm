@interface WCMClientProxy
- (BOOL)connectToServer;
- (WCMClientProxy)initWithClientProcessId:(int)a3 delegate:(id)a4 dispatch:(id)a5;
- (void)dealloc;
- (void)registerToServer;
- (void)sendMessage:(int)a3 argument:(id)a4;
@end

@implementation WCMClientProxy

- (void)dealloc
{
  xpc_release(self->mConnection);
  v3.receiver = self;
  v3.super_class = WCMClientProxy;
  [(WCMClientProxy *)&v3 dealloc];
}

- (WCMClientProxy)initWithClientProcessId:(int)a3 delegate:(id)a4 dispatch:(id)a5
{
  v13.receiver = self;
  v13.super_class = WCMClientProxy;
  v8 = [(WCMClientProxy *)&v13 init];
  v9 = v8;
  if (v8)
  {
    if (a3 && a4)
    {
      v8->mProcessId = a3;
      v10 = a4;
      v11 = MEMORY[0x277D85CD0];
      if (a5)
      {
        v11 = a5;
      }

      v9->mDelegate = v10;
      v9->mQueue = v11;
      v9->mIsRegistered = 0;
      if ([(WCMClientProxy *)v9 connectToServer])
      {
        [(WCMClientProxy *)v9 registerToServer];
        return v9;
      }

      NSLog(&cfstr_FailedToConnec.isa);
    }

    return 0;
  }

  return v9;
}

- (BOOL)connectToServer
{
  self->mIsRegistered = 0;
  mConnection = self->mConnection;
  if (mConnection)
  {
    xpc_release(mConnection);
  }

  mach_service = xpc_connection_create_mach_service("com.apple.WirelessCoexManager", self->mQueue, 0);
  v5 = mach_service;
  self->mConnection = mach_service;
  if (mach_service)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __33__WCMClientProxy_connectToServer__block_invoke;
    handler[3] = &unk_279ED63A8;
    handler[4] = self;
    xpc_connection_set_event_handler(mach_service, handler);
    xpc_connection_activate(self->mConnection);
  }

  return v5 != 0;
}

void __33__WCMClientProxy_connectToServer__block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2743E9320](a2);
  if (v4 == MEMORY[0x277D86480])
  {
    if (a2 == MEMORY[0x277D863F0])
    {
      v10 = *(a1 + 32);

      [v10 registerToServer];
    }

    else if (a2 == MEMORY[0x277D863F8])
    {
      v11 = *(a1 + 32);

      [v11 connectToServer];
    }

    else
    {
      string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
      NSLog(&cfstr_XpcErrorS.isa, string);
    }
  }

  else if (v4 == MEMORY[0x277D86468])
  {
    uint64 = xpc_dictionary_get_uint64(a2, "kMessageId");
    value = xpc_dictionary_get_value(a2, "kMessageArgs");
    v9 = *(*(a1 + 32) + 16);

    [v9 receiveMessage:uint64 argument:value];
  }

  else
  {
    v5 = MEMORY[0x2743E9250](a2);
    NSLog(&cfstr_UnexpectedXpcM.isa, v5);

    free(v5);
  }
}

- (void)registerToServer
{
  keys[1] = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_TryToReRegiste.isa, a2);
  keys[0] = "kWCMRegisterProcess_ProcessId";
  v3 = xpc_uint64_create(self->mProcessId);
  values = v3;
  v4 = xpc_dictionary_create(keys, &values, 1uLL);
  *v9 = xmmword_279ED63C8;
  v5 = xpc_uint64_create(1uLL);
  v8[0] = v5;
  v8[1] = v4;
  v6 = xpc_dictionary_create(v9, v8, 2uLL);
  xpc_connection_send_message(self->mConnection, v6);
  xpc_release(v3);
  xpc_release(v4);
  xpc_release(v5);
  xpc_release(v6);
  self->mIsRegistered = 1;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(int)a3 argument:(id)a4
{
  if (a4)
  {
    xpc_retain(a4);
  }

  mQueue = self->mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__WCMClientProxy_sendMessage_argument___block_invoke;
  block[3] = &unk_279ED63E0;
  v9 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(mQueue, block);
}

void __39__WCMClientProxy_sendMessage_argument___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ((v2[32] & 1) == 0)
  {
    [v2 registerToServer];
  }

  *keys = xmmword_279ED63C8;
  v3 = xpc_uint64_create(*(a1 + 48));
  v4 = *(a1 + 40);
  object[0] = v3;
  object[1] = v4;
  v5 = xpc_dictionary_create(keys, object, 2uLL);
  xpc_connection_send_message(*(*(a1 + 32) + 40), v5);
  xpc_release(*(a1 + 40));
  xpc_release(object[0]);
  xpc_release(v5);
  v6 = *MEMORY[0x277D85DE8];
}

@end