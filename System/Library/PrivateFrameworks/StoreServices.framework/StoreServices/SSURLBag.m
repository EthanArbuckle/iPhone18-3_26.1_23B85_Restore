@interface SSURLBag
+ (id)URLBagForContext:(id)a3;
+ (void)setURLBag:(id)a3 forContext:(id)a4;
- (NSDictionary)existingBagDictionary;
- (SSURLBag)init;
- (SSURLBag)initWithURLBagContext:(id)a3;
- (SSURLBagContext)URLBagContext;
- (id)_connection;
- (id)valueForKey:(id)a3 error:(id *)a4;
- (void)_drainPendingLookupsWithError:(id)a3;
- (void)_loadURLBag;
- (void)_loadWithCompletionBlock:(id)a3;
- (void)dealloc;
- (void)dispatchAsync:(id)a3;
- (void)dispatchSync:(id)a3;
- (void)getTrustForURL:(id)a3 completionBlock:(id)a4;
- (void)invalidate;
- (void)loadValueForKey:(id)a3 completionBlock:(id)a4;
@end

@implementation SSURLBag

- (SSURLBag)init
{
  v3 = objc_alloc_init(SSURLBagContext);
  v4 = [(SSURLBag *)self initWithURLBagContext:v3];

  return v4;
}

- (SSURLBag)initWithURLBagContext:(id)a3
{
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = SSURLBag;
    v4 = [(SSURLBag *)&v6 init];
    if (v4)
    {
      v4->_context = [a3 copy];
      v4->_dispatchQueue = dispatch_queue_create("com.apple.storeservices.SSURLBag", 0);
      v4->_expirationTime = -1.79769313e308;
    }
  }

  else
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil bagContext"];
    return 0;
  }

  return v4;
}

- (void)dealloc
{
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v4.receiver = self;
  v4.super_class = SSURLBag;
  [(SSURLBag *)&v4 dealloc];
}

+ (id)URLBagForContext:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  pthread_mutex_lock(&__URLBagsLock);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = __URLBags;
  v5 = [__URLBags countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      if ([objc_msgSend(v8 "URLBagContext")])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_4;
        }

        goto LABEL_12;
      }
    }

    v9 = v8;
    if (v9)
    {
      goto LABEL_15;
    }
  }

LABEL_12:
  if (!__URLBags)
  {
    __URLBags = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v9 = [[SSURLBag alloc] initWithURLBagContext:a3];
  [__URLBags addObject:v9];
LABEL_15:
  pthread_mutex_unlock(&__URLBagsLock);
  return v9;
}

- (void)getTrustForURL:(id)a3 completionBlock:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__SSURLBag_getTrustForURL_completionBlock___block_invoke;
  v4[3] = &unk_1E84B09C8;
  v4[4] = a3;
  v4[5] = a4;
  [(SSURLBag *)self loadValueForKey:@"trustedDomains" completionBlock:v4];
}

uint64_t __43__SSURLBag_getTrustForURL_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [*(a1 + 32) host];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(a2);
            }

            v12 = *(*(&v13 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 length])
            {
              if ([v12 hasPrefix:@"."])
              {
                if ([v7 hasSuffix:v12])
                {
                  return (*(*(a1 + 40) + 16))();
                }
              }

              else if (![v7 caseInsensitiveCompare:v12])
              {
                return (*(*(a1 + 40) + 16))();
              }
            }
          }

          v9 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }

    return (*(*(a1 + 40) + 16))();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__SSURLBag_invalidate__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

void __22__SSURLBag_invalidate__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;

  *(*(a1 + 32) + 64) = 0;
  *(*(a1 + 32) + 48) = 1;
}

- (void)loadValueForKey:(id)a3 completionBlock:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SSURLBag_loadValueForKey_completionBlock___block_invoke;
  v4[3] = &unk_1E84B09F0;
  v4[4] = a3;
  v4[5] = a4;
  [(SSURLBag *)self _loadWithCompletionBlock:v4];
}

uint64_t __44__SSURLBag_loadValueForKey_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    a2 = [a2 objectForKey:*(a1 + 32)];
    v4 = *(v3 + 16);
    v5 = v3;
    a3 = 0;
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 40);
  }

  return v4(v5, a2, a3);
}

- (SSURLBagContext)URLBagContext
{
  v2 = [(SSURLBagContext *)self->_context copy];

  return v2;
}

- (id)valueForKey:(id)a3 error:(id *)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__34;
  v22 = __Block_byref_object_dispose__34;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = __Block_byref_object_copy__34;
  v16 = __Block_byref_object_dispose__34;
  v17 = 0;
  v7 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __30__SSURLBag_valueForKey_error___block_invoke;
  v11[3] = &unk_1E84B0A18;
  v11[5] = &v18;
  v11[6] = &v12;
  v11[4] = v7;
  [(SSURLBag *)self loadValueForKey:a3 completionBlock:v11];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v7);
  v8 = v13[5];
  if (a4)
  {
    *a4 = v13[5];
  }

  v9 = v19[5];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v9;
}

intptr_t __30__SSURLBag_valueForKey_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (NSDictionary)existingBagDictionary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__34;
  v10 = __Block_byref_object_dispose__34;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__SSURLBag_existingBagDictionary__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __33__SSURLBag_existingBagDictionary__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

+ (void)setURLBag:(id)a3 forContext:(id)a4
{
  pthread_mutex_lock(&__URLBagsLock);
  v6 = __URLBags;
  if (!__URLBags)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    __URLBags = v6;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__SSURLBag_setURLBag_forContext___block_invoke;
  v8[3] = &unk_1E84B0A40;
  v8[4] = a4;
  v7 = [v6 indexOfObjectPassingTest:v8];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [__URLBags removeObjectAtIndex:v7];
  }

  if (a3)
  {
    [__URLBags addObject:a3];
  }

  pthread_mutex_unlock(&__URLBagsLock);
}

uint64_t __33__SSURLBag_setURLBag_forContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 URLBagContext];
  v4 = *(a1 + 32);

  return [v3 isEqual:v4];
}

- (void)dispatchAsync:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __26__SSURLBag_dispatchAsync___block_invoke;
  v4[3] = &unk_1E84AC738;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)dispatchSync:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __25__SSURLBag_dispatchSync___block_invoke;
  v4[3] = &unk_1E84AC738;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (id)_connection
{
  result = self->_connection;
  if (!result)
  {
    result = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    self->_connection = result;
  }

  return result;
}

- (void)_drainPendingLookupsWithError:(id)a3
{
  v5 = [(NSMutableArray *)self->_pendingLookups copy];
  [(NSMutableArray *)self->_pendingLookups removeAllObjects];
  v6 = [(NSDictionary *)self->_dictionary copy];
  global_queue = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__SSURLBag__drainPendingLookupsWithError___block_invoke;
  v8[3] = &unk_1E84B0A68;
  v8[4] = self;
  v8[5] = v5;
  v8[6] = v6;
  v8[7] = a3;
  dispatch_async(global_queue, v8);
}

uint64_t __42__SSURLBag__drainPendingLookupsWithError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 40);
  result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7++) + 16))();
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

- (void)_loadURLBag
{
  v24 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    if (os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 2;
    }

    if (v6)
    {
      v22 = 136446210;
      v23 = "[SSURLBag _loadURLBag]";
      LODWORD(v20) = 12;
      v19 = &v22;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v22, v20}];
        free(v8);
        SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
      }
    }
  }

  v16 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v16, "0", 25);
  if (self->_ignoreCacheForNextLookup)
  {
    v17 = [(SSURLBagContext *)self->_context copy];
    [(__CFString *)v17 setIgnoresCaches:1];
    SSXPCDictionarySetCFObject(v16, "1", v17);
    self->_ignoreCacheForNextLookup = 0;
  }

  else
  {
    SSXPCDictionarySetCFObject(v16, "1", self->_context);
  }

  v18 = [(SSURLBag *)self _connection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __23__SSURLBag__loadURLBag__block_invoke;
  v21[3] = &unk_1E84AF2C8;
  v21[4] = self;
  [v18 sendMessage:v16 withReply:v21];
  xpc_release(v16);
}

void __23__SSURLBag__loadURLBag__block_invoke(uint64_t a1, void *a2)
{
  if (a2 && MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
  {
    v4 = SSXPCDictionaryCopyCFObject(a2, "0");
    v5 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a2, "2")}];
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpc_retain(a2);
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __23__SSURLBag__loadURLBag__block_invoke_3;
    v10[3] = &unk_1E84AD640;
    v10[4] = a2;
    v10[5] = v6;
    v10[6] = v4;
    v8 = v10;
  }

  else
  {
    v9 = *(a1 + 32);
    v7 = *(v9 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __23__SSURLBag__loadURLBag__block_invoke_2;
    block[3] = &unk_1E84AC458;
    block[4] = v9;
    block[5] = v5;
    v8 = block;
  }

  dispatch_async(v7, v8);
}

uint64_t __23__SSURLBag__loadURLBag__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (!v1)
  {
    v1 = SSError(@"SSErrorDomain", 100, 0, 0);
  }

  return [v2 _drainPendingLookupsWithError:v1];
}

void __23__SSURLBag__loadURLBag__block_invoke_3(xpc_object_t *a1)
{
  value = xpc_dictionary_get_value(a1[4], "1");
  if (!value || (v3 = value, MEMORY[0x1DA6E0380]() != MEMORY[0x1E69E9E88]))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = 86400.0;
LABEL_4:
    v6 = Current + v5;
    v7 = a1[5];
    goto LABEL_5;
  }

  *(a1[5] + 5) = xpc_double_get_value(v3);
  v10 = *(a1[5] + 5);
  if (v10 <= CFAbsoluteTimeGetCurrent() + 60.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = 60.0;
    goto LABEL_4;
  }

  v7 = a1[5];
  v6 = v7[5];
LABEL_5:
  v7[5] = v6;

  *(a1[5] + 3) = [a1[6] copy];
  v8 = a1[4];
  objc_opt_class();
  *(a1[5] + 8) = SSXPCDictionaryCopyCFObjectWithClass(v8, "3");
  [a1[5] _drainPendingLookupsWithError:0];
  v9 = a1[4];

  xpc_release(v9);
}

- (void)_loadWithCompletionBlock:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__34;
  v14 = __Block_byref_object_dispose__34;
  v15 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SSURLBag__loadWithCompletionBlock___block_invoke;
  block[3] = &unk_1E84AF0E0;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(dispatchQueue, block);
  v6 = v11[5];
  if (v6)
  {
    (*(a3 + 2))(a3, v6, 0);
  }

  else
  {
    v7 = self->_dispatchQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__SSURLBag__loadWithCompletionBlock___block_invoke_2;
    v8[3] = &unk_1E84AF318;
    v8[4] = self;
    v8[5] = a3;
    dispatch_sync(v7, v8);
  }

  _Block_object_dispose(&v10, 8);
}

id __37__SSURLBag__loadWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 40);
  Current = CFAbsoluteTimeGetCurrent();
  v5 = *(*v2 + 24);
  if (v3 <= Current)
  {

    result = 0;
    v7 = 24;
  }

  else
  {
    result = v5;
    v2 = *(a1 + 40) + 8;
    v7 = 40;
  }

  *(*v2 + v7) = result;
  return result;
}

uint64_t __37__SSURLBag__loadWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  if (!*(*(a1 + 32) + 56))
  {
    *(*(a1 + 32) + 56) = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v2 = [*(a1 + 40) copy];
  [*(*(a1 + 32) + 56) addObject:v2];

  result = [*(*(a1 + 32) + 56) count];
  if (result == 1)
  {
    v4 = *(a1 + 32);

    return [v4 _loadURLBag];
  }

  return result;
}

@end