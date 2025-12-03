@interface SSDistributedNotificationCenter
- (NSString)namedPort;
- (SSDistributedNotificationCenter)initWithNamedPort:(id)port;
- (id)addObserverForName:(id)name queue:(id)queue usingBlock:(id)block;
- (void)_distributedNotificationMessage:(id)message connection:(id)connection;
- (void)_sendRegistrationMessage:(int64_t)message name:(id)name;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation SSDistributedNotificationCenter

- (SSDistributedNotificationCenter)initWithNamedPort:(id)port
{
  v25 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_FAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 2;
    }

    if (v8)
    {
      v23 = 136446210;
      v24 = "[SSDistributedNotificationCenter initWithNamedPort:]";
      LODWORD(v21) = 12;
      v20 = &v23;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v23, v21}];
        free(v10);
        SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }
  }

  if ([port length])
  {
    v22.receiver = self;
    v22.super_class = SSDistributedNotificationCenter;
    v18 = [(SSDistributedNotificationCenter *)&v22 init];
    if (v18)
    {
      v18->_dispatchQueue = dispatch_queue_create("com.apple.StoreServices.SSDistributedNotificationCenter", 0);
      v18->_observers = objc_alloc_init(MEMORY[0x1E695DF70]);
      v18->_portName = [port copy];
    }
  }

  else
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid port name"];
    return 0;
  }

  return v18;
}

- (void)dealloc
{
  [(SSXPCServer *)self->_server removeObserver:self selector:sel__distributedNotificationMessage_connection_ forMessage:1009];

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = SSDistributedNotificationCenter;
  [(SSDistributedNotificationCenter *)&v4 dealloc];
}

- (id)addObserverForName:(id)name queue:(id)queue usingBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    if (os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_FAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 2;
    }

    if (v12)
    {
      LODWORD(v28) = 136446210;
      *(&v28 + 4) = "[SSDistributedNotificationCenter addObserverForName:queue:usingBlock:]";
      LODWORD(v26) = 12;
      v25 = &v28;
      v13 = _os_log_send_and_compose_impl();
      if (v13)
      {
        v14 = v13;
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v28, v26}];
        free(v14);
        SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, v15);
      }
    }
  }

  if (![name length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid name"];
LABEL_21:
    v22 = 0;
    return v22;
  }

  if (!block)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid block"];
    goto LABEL_21;
  }

  *&v28 = 0;
  *(&v28 + 1) = &v28;
  v29 = 0x2020000000;
  v30 = 1;
  v22 = [[SSDistributedNotificationCenterObserver alloc] initWithName:name queue:queue block:block];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__SSDistributedNotificationCenter_addObserverForName_queue_usingBlock___block_invoke;
  block[3] = &unk_1E84B0DA0;
  block[4] = self;
  block[5] = name;
  block[6] = v22;
  block[7] = &v28;
  dispatch_sync(dispatchQueue, block);
  if (*(*(&v28 + 1) + 24) == 1)
  {
    [(SSDistributedNotificationCenter *)self _sendRegistrationMessage:42 name:name];
  }

  _Block_object_dispose(&v28, 8);
  return v22;
}

uint64_t __71__SSDistributedNotificationCenter_addObserverForName_queue_usingBlock___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (!*(v2 + 32))
  {
    *(a1[4] + 32) = [[SSXPCServer alloc] initWithServiceName:*(a1[4] + 24) entitlement:0 queue:*(a1[4] + 8)];
    [*(a1[4] + 32) addObserver:a1[4] selector:sel__distributedNotificationMessage_connection_ forMessage:1009];
    v2 = a1[4];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(v2 + 16);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([objc_msgSend(*(*(&v9 + 1) + 8 * i) "name")])
        {
          *(*(a1[7] + 8) + 24) = 0;
          return [*(a1[4] + 16) addObject:a1[6]];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return [*(a1[4] + 16) addObject:a1[6]];
}

- (NSString)namedPort
{
  v2 = self->_portName;

  return v2;
}

- (void)removeObserver:(id)observer
{
  v30 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_FAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 2;
    }

    if (v8)
    {
      LODWORD(v25) = 136446210;
      *(&v25 + 4) = "[SSDistributedNotificationCenter removeObserver:]";
      LODWORD(v19) = 12;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v25, v19}];
        free(v10);
        SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }
  }

  *&v25 = 0;
  *(&v25 + 1) = &v25;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy__38;
  v28 = __Block_byref_object_dispose__38;
  v29 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SSDistributedNotificationCenter_removeObserver___block_invoke;
  block[3] = &unk_1E84B0DC8;
  block[4] = self;
  block[5] = observer;
  block[6] = &v25;
  block[7] = &v21;
  dispatch_sync(dispatchQueue, block);
  if (*(v22 + 24) == 1)
  {
    [(SSDistributedNotificationCenter *)self _sendRegistrationMessage:43 name:*(*(&v25 + 1) + 40)];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

uint64_t __50__SSDistributedNotificationCenter_removeObserver___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  result = [*(*(a1 + 32) + 16) indexOfObjectIdenticalTo:*(a1 + 40)];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = result;
    *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 40) name];
    [*(*(a1 + 32) + 16) removeObjectAtIndex:v3];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = *(*(a1 + 32) + 16);
    result = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v9;
      while (2)
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          result = [objc_msgSend(*(*(&v8 + 1) + 8 * v7) "name")];
          if (result)
          {
            *(*(*(a1 + 56) + 8) + 24) = 0;
            return result;
          }

          ++v7;
        }

        while (v5 != v7);
        result = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
        v5 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (void)_distributedNotificationMessage:(id)message connection:(id)connection
{
  v20 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v6 = SSXPCDictionaryCopyCFObjectWithClass(message, "1");
  if ([(__CFArray *)v6 length])
  {
    selfCopy = self;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    observers = self->_observers;
    v9 = [(NSMutableArray *)observers countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(observers);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([objc_msgSend(v13 "name")])
          {
            global_queue = [v13 dispatchQueue];
            if (global_queue || (global_queue = dispatch_get_global_queue(0, 0)) != 0)
            {
              dispatch_async(global_queue, [v13 block]);
            }
          }
        }

        v10 = [(NSMutableArray *)observers countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (void)_sendRegistrationMessage:(int64_t)message name:(id)name
{
  v7 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v8, "0", message);
  SSXPCDictionarySetCFObject(v8, "1", self->_portName);
  SSXPCDictionarySetCFObject(v8, "2", name);
  v9 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__SSDistributedNotificationCenter__sendRegistrationMessage_name___block_invoke;
  v10[3] = &unk_1E84AF2C8;
  v10[4] = v9;
  [(SSXPCConnection *)v7 sendMessage:v8 withReply:v10];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
  xpc_release(v8);
}

@end