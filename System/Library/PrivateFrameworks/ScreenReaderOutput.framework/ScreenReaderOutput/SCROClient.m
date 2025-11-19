@interface SCROClient
+ (BOOL)isClientTrustedWithPortToken:(id *)a3;
+ (id)addClientGetIdentifier:(unsigned int *)a3 token:(id *)a4 getPort:(unsigned int *)a5;
+ (void)initialize;
+ (void)sendCallback:(id)a3;
- (BOOL)_wantsCallback:(id)a3;
- (SCROClient)init;
- (id)_dequeueCallbacks;
- (void)_invalidate;
- (void)_registerCallbackWithKey:(int)a3;
- (void)_sendCallback:(id)a3;
- (void)dealloc;
@end

@implementation SCROClient

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _LastIdentifier = 0;
    v2 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    v3 = _Lock;
    _Lock = v2;

    v4 = objc_opt_new();
    v5 = _ClientPortDictionary;
    _ClientPortDictionary = v4;

    v6 = objc_opt_new();
    v7 = _ClientIdentifierDictionary;
    _ClientIdentifierDictionary = v6;

    v8 = objc_opt_new();
    _ClientTrustDictionary = v8;

    MEMORY[0x2821F96F8](v8);
  }
}

+ (id)addClientGetIdentifier:(unsigned int *)a3 token:(id *)a4 getPort:(unsigned int *)a5
{
  v8 = objc_alloc_init(a1);
  v9 = *&a4->var0[4];
  *atoken.val = *a4->var0;
  *&atoken.val[4] = v9;
  pidp = 0;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  v8[6] = pidp;
  [_Lock lock];
  v8[4] = ++_LastIdentifier;
  *a5 = v8[5];
  *a3 = v8[4];
  v10 = _ClientPortDictionary;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8[5]];
  [v10 setObject:v8 forKey:v11];

  v12 = _ClientIdentifierDictionary;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8[4]];
  [v12 setObject:v8 forKey:v13];

  [_Lock unlock];

  return v8;
}

+ (BOOL)isClientTrustedWithPortToken:(id *)a3
{
  MEMORY[0x28223BE20](a1, a2, a3);
  v4 = v3;
  v22 = *MEMORY[0x277D85DE8];
  v5 = v3[1];
  *atoken.val = *v3;
  *&atoken.val[4] = v5;
  pidp = 0;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  v6 = pidp;
  [_Lock lock];
  v7 = _ClientTrustDictionary;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    LOBYTE(v10) = [v9 BOOLValue];
  }

  else
  {
    v11 = v4[1];
    *atoken.val = *v4;
    *&atoken.val[4] = v11;
    pidp = 0;
    audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
    v12 = pidp;
    bzero(&atoken, 0x1000uLL);
    if (proc_pidpath(v12, &atoken, 0x1000u) <= 0)
    {
      v10 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:&atoken];
      v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13];

      v10 = v14 != 0;
    }

    v15 = _ClientTrustDictionary;
    v16 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    [v15 setObject:v16 forKey:v17];
  }

  [_Lock unlock];

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (void)sendCallback:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [_Lock lock];
  if ([_ClientIdentifierDictionary count] <= 0)
  {
    [_Lock unlock];
    goto LABEL_23;
  }

  v4 = [_ClientIdentifierDictionary copy];
  [_Lock unlock];
  if (v4)
  {
    Mutable = CFSetCreateMutable(0, 0, 0);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v7)
    {
      goto LABEL_21;
    }

    v8 = *v17;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [v6 objectForKey:*(*(&v16 + 1) + 8 * i)];
        [v10 _lock];
        if ([v10 _wantsCallback:v3])
        {
          if ([v3 isAtomic])
          {
            v11 = [v3 key];
            if (CFSetContainsValue(Mutable, v11))
            {
              v12 = 0;
              goto LABEL_18;
            }

            CFSetSetValue(Mutable, v11);
          }

          [v10 _sendCallback:v3];
        }

        else
        {
          v13 = _SCROD_LOG();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *v15 = 0;
            _os_log_impl(&dword_26490B000, v13, OS_LOG_TYPE_DEFAULT, "+[SCROClient sendCallback:]: client doesn't want callback.", v15, 2u);
          }
        }

        v12 = 1;
LABEL_18:
        [v10 _unlock];

        if (!v12)
        {
          goto LABEL_21;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v7)
      {
LABEL_21:

        CFRelease(Mutable);
        break;
      }
    }
  }

LABEL_23:

  v14 = *MEMORY[0x277D85DE8];
}

- (SCROClient)init
{
  v12.receiver = self;
  v12.super_class = SCROClient;
  v2 = [(SCROClient *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = *MEMORY[0x277D85F48];
    v11 = 1;
    mach_port_allocate(v5, 1u, &v2->_port);
    mach_port_insert_right(v5, v2->_port, v2->_port, 0x14u);
    MEMORY[0x266746020](v5, v2->_port, 1, &v11, 4);
    v6 = os_transaction_create();
    scrodTransaction = v2->_scrodTransaction;
    v2->_scrodTransaction = v6;

    v8 = _SCROD_LOG();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_DEFAULT, "Storing a transaction com.apple.ScreenReaderOutput", v10, 2u);
    }
  }

  return v2;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    CFRelease(queue);
  }

  callbackSet = self->_callbackSet;
  if (callbackSet)
  {
    CFRelease(callbackSet);
  }

  scrodTransaction = self->_scrodTransaction;
  self->_scrodTransaction = 0;

  v6 = _SCROD_LOG();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26490B000, v6, OS_LOG_TYPE_DEFAULT, "Releasing a transaction com.apple.ScreenReaderOutput", buf, 2u);
  }

  [(SCROClient *)self _invalidate];
  v7.receiver = self;
  v7.super_class = SCROClient;
  [(SCROClient *)&v7 dealloc];
}

- (void)_invalidate
{
  port = self->_port;
  if (port)
  {
    mach_port_mod_refs(*MEMORY[0x277D85F48], port, 4u, -1);
    self->_port = 0;
  }
}

- (void)_registerCallbackWithKey:(int)a3
{
  callbackSet = self->_callbackSet;
  if (!callbackSet)
  {
    callbackSet = CFSetCreateMutable(0, 0, 0);
    self->_callbackSet = callbackSet;
  }

  CFSetSetValue(callbackSet, a3);
}

- (id)_dequeueCallbacks
{
  queue = self->_queue;
  if (queue)
  {
    CFAutorelease(queue);
    queue = self->_queue;
  }

  result = queue;
  self->_queue = 0;
  return result;
}

- (BOOL)_wantsCallback:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  callbackSet = self->_callbackSet;
  if (callbackSet && CFSetContainsValue(callbackSet, [v4 key]))
  {
    queue = self->_queue;
    if (!queue || CFArrayGetCount(queue) < 51)
    {
      v10 = 1;
      goto LABEL_10;
    }

    v8 = _SCROD_LOG();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      Count = CFArrayGetCount(self->_queue);
      v13 = 134218240;
      v14 = Count;
      v15 = 1024;
      v16 = 50;
      _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_DEFAULT, "SCRO Queue is flooded: queue size (%ld) > max size (%d)", &v13, 0x12u);
    }
  }

  v10 = 0;
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_sendCallback:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  value = v4;
  if (!queue)
  {
    queue = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v4 = value;
    self->_queue = queue;
  }

  CFArrayAppendValue(queue, v4);
  _SCROPing(self->_port, 0);
}

@end