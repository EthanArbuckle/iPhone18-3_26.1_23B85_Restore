@interface SSEntity
- (BOOL)_isManaged;
- (BOOL)exists;
- (BOOL)isEqual:(id)a3;
- (BOOL)setExternalValuesWithDictionary:(id)a3;
- (BOOL)setValue:(id)a3 forProperty:(id)a4;
- (BOOL)setValuesWithDictionary:(id)a3;
- (NSDictionary)_localExternalValues;
- (NSDictionary)_localValues;
- (NSString)description;
- (SSEntity)init;
- (id)_initWithPersistentIdentifier:(int64_t)a3;
- (id)copyXPCEncoding;
- (id)valueForExternalProperty:(id)a3;
- (id)valueForProperty:(id)a3;
- (void)__addCachedExternalValues:(id)a3;
- (void)__addCachedPropertyValues:(id)a3;
- (void)_addCachedExternalValues:(id)a3;
- (void)_addCachedPropertyValues:(id)a3;
- (void)_becomeManagedOnConnection:(id)a3;
- (void)_getValues:(id *)a3 forProperties:(const void *)a4 count:(unint64_t)a5 message:(int64_t)a6;
- (void)_setDirtyCachedExternalProperties:(id)a3;
- (void)_setDirtyCachedProperties:(id)a3;
- (void)_setLocalExternalValues:(id)a3;
- (void)_setLocalValues:(id)a3;
- (void)dealloc;
- (void)getValues:(id *)a3 forExternalProperties:(const void *)a4 count:(unint64_t)a5;
- (void)getValues:(id *)a3 forProperties:(const void *)a4 count:(unint64_t)a5;
- (void)resetCachedExternalProperties:(const void *)a3 count:(unint64_t)a4;
- (void)resetCachedProperties:(const void *)a3 count:(unint64_t)a4;
@end

@implementation SSEntity

- (SSEntity)init
{
  v3 = CFUUIDCreate(0);
  v4 = *&CFUUIDGetUUIDBytes(v3);
  CFRelease(v3);

  return [(SSEntity *)self _initWithPersistentIdentifier:v4];
}

- (id)_initWithPersistentIdentifier:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = SSEntity;
  v4 = [(SSEntity *)&v6 init];
  if (v4)
  {
    v4->_dispatchQueue = dispatch_queue_create("com.apple.storeservices.SSEntity", 0);
    v4->_pid = a3;
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
  v4.super_class = SSEntity;
  [(SSEntity *)&v4 dealloc];
}

- (BOOL)exists
{
  v35 = *MEMORY[0x1E69E9840];
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

    if (os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_FAULT))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 2;
    }

    if (v6)
    {
      LODWORD(v30) = 136446210;
      *(&v30 + 4) = "[SSEntity exists]";
      LODWORD(v23) = 12;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v30, v23}];
        free(v8);
        SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
      }
    }
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  *&v30 = 0;
  *(&v30 + 1) = &v30;
  v31 = 0x3052000000;
  v32 = __Block_byref_object_copy__32;
  v33 = __Block_byref_object_dispose__32;
  v34 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__SSEntity_exists__block_invoke;
  block[3] = &unk_1E84AC698;
  block[4] = self;
  block[5] = &v30;
  dispatch_sync(dispatchQueue, block);
  if (*(*(&v30 + 1) + 40))
  {
    v17 = [objc_opt_class() _existsMessage];
    if (v17)
    {
      v18 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v18, "0", v17);
      xpc_dictionary_set_int64(v18, "1", self->_pid);
      v19 = dispatch_semaphore_create(0);
      v20 = *(*(&v30 + 1) + 40);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __18__SSEntity_exists__block_invoke_2;
      v24[3] = &unk_1E84B0740;
      v24[4] = v19;
      v24[5] = &v26;
      [v20 sendMessage:v18 withReply:v24];
      dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v19);
      xpc_release(v18);
    }
  }

  v21 = *(v27 + 24);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v26, 8);
  return v21;
}

id __18__SSEntity_exists__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

intptr_t __18__SSEntity_exists__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2 && MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
  {
    *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(a2, "0");
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (void)getValues:(id *)a3 forProperties:(const void *)a4 count:(unint64_t)a5
{
  v9 = [objc_opt_class() _getValueMessage];

  [(SSEntity *)self _getValues:a3 forProperties:a4 count:a5 message:v9];
}

- (BOOL)setValue:(id)a3 forProperty:(id)a4
{
  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  if (!a3)
  {
    a3 = [MEMORY[0x1E695DFB0] null];
  }

  v8 = [v7 initWithObjectsAndKeys:{a3, a4, 0}];
  v9 = [(SSEntity *)self setValuesWithDictionary:v8];

  return v9;
}

- (BOOL)setValuesWithDictionary:(id)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__32;
  v18 = __Block_byref_object_dispose__32;
  v19 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SSEntity_setValuesWithDictionary___block_invoke;
  block[3] = &unk_1E84B0768;
  block[4] = self;
  block[5] = a3;
  block[6] = &v14;
  block[7] = &v20;
  dispatch_sync(dispatchQueue, block);
  if (v15[5])
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = [objc_opt_class() _setValuesMessage];
    xpc_dictionary_set_int64(v6, "0", v7);
    xpc_dictionary_set_int64(v6, "1", self->_pid);
    SSXPCDictionarySetCFObject(v6, "2", a3);
    v8 = dispatch_semaphore_create(0);
    v9 = v15[5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __36__SSEntity_setValuesWithDictionary___block_invoke_2;
    v12[3] = &unk_1E84B0740;
    v12[4] = v8;
    v12[5] = &v20;
    [v9 sendMessage:v6 withReply:v12];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v8);
    xpc_release(v6);
  }

  v10 = *(v21 + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v10;
}

id __36__SSEntity_setValuesWithDictionary___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 8);
  if (v3)
  {
    result = v3;
    *(*(a1[6] + 8) + 40) = result;
  }

  else
  {
    v5 = *(v2 + 32);
    if (!v5)
    {
      *(a1[4] + 32) = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5 = *(a1[4] + 32);
    }

    result = [v5 addEntriesFromDictionary:a1[5]];
    *(*(a1[7] + 8) + 24) = 1;
  }

  return result;
}

intptr_t __36__SSEntity_setValuesWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
  {
    *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(a2, "0");
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (id)valueForProperty:(id)a3
{
  v4 = 0;
  v5 = a3;
  [(SSEntity *)self getValues:&v4 forProperties:&v5 count:1];
  return v4;
}

- (void)getValues:(id *)a3 forExternalProperties:(const void *)a4 count:(unint64_t)a5
{
  v9 = [objc_opt_class() _getExternalValuesMessage];

  [(SSEntity *)self _getValues:a3 forProperties:a4 count:a5 message:v9];
}

- (void)resetCachedExternalProperties:(const void *)a3 count:(unint64_t)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SSEntity_resetCachedExternalProperties_count___block_invoke;
  block[3] = &unk_1E84AF108;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  dispatch_sync(dispatchQueue, block);
}

uint64_t __48__SSEntity_resetCachedExternalProperties_count___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8))
  {
    v1 = result;
    if (*(result + 40))
    {
      v2 = 0;
      do
      {
        result = [*(v1[4] + 24) removeObjectForKey:*(v1[6] + 8 * v2++)];
      }

      while (v2 < v1[5]);
    }
  }

  return result;
}

- (void)resetCachedProperties:(const void *)a3 count:(unint64_t)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SSEntity_resetCachedProperties_count___block_invoke;
  block[3] = &unk_1E84AF108;
  block[4] = self;
  block[5] = a4;
  block[6] = a3;
  dispatch_sync(dispatchQueue, block);
}

uint64_t __40__SSEntity_resetCachedProperties_count___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8))
  {
    v1 = result;
    if (*(result + 40))
    {
      v2 = 0;
      do
      {
        result = [*(v1[4] + 32) removeObjectForKey:*(v1[6] + 8 * v2++)];
      }

      while (v2 < v1[5]);
    }
  }

  return result;
}

- (BOOL)setExternalValuesWithDictionary:(id)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__32;
  v18 = __Block_byref_object_dispose__32;
  v19 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SSEntity_setExternalValuesWithDictionary___block_invoke;
  block[3] = &unk_1E84B0768;
  block[4] = self;
  block[5] = a3;
  block[6] = &v14;
  block[7] = &v20;
  dispatch_sync(dispatchQueue, block);
  if (v15[5])
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = [objc_opt_class() _setExternalValuesMessage];
    xpc_dictionary_set_int64(v6, "0", v7);
    xpc_dictionary_set_int64(v6, "1", self->_pid);
    SSXPCDictionarySetCFObject(v6, "2", a3);
    v8 = dispatch_semaphore_create(0);
    v9 = v15[5];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__SSEntity_setExternalValuesWithDictionary___block_invoke_2;
    v12[3] = &unk_1E84B0740;
    v12[4] = v8;
    v12[5] = &v20;
    [v9 sendMessage:v6 withReply:v12];
    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v8);
    xpc_release(v6);
  }

  v10 = *(v21 + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v10;
}

id __44__SSEntity_setExternalValuesWithDictionary___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 8);
  if (v3)
  {
    result = v3;
    *(*(a1[6] + 8) + 40) = result;
  }

  else
  {
    v5 = *(v2 + 24);
    if (!v5)
    {
      *(a1[4] + 24) = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5 = *(a1[4] + 24);
    }

    result = [v5 addEntriesFromDictionary:a1[5]];
    *(*(a1[7] + 8) + 24) = 1;
  }

  return result;
}

intptr_t __44__SSEntity_setExternalValuesWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
  {
    *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(a2, "0");
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (id)valueForExternalProperty:(id)a3
{
  v4 = 0;
  v5 = a3;
  [(SSEntity *)self getValues:&v4 forExternalProperties:&v5 count:1];
  return v4;
}

- (NSString)description
{
  v3.receiver = self;
  v3.super_class = SSEntity;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %lld", -[SSEntity description](&v3, sel_description), self->_pid];
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  v7 = [(SSEntity *)self _persistentIdentifier];
  return v7 == [a3 _persistentIdentifier];
}

- (void)_addCachedExternalValues:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__SSEntity__addCachedExternalValues___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)_addCachedPropertyValues:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__SSEntity__addCachedPropertyValues___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

uint64_t __37__SSEntity__addCachedPropertyValues___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    *(*(a1 + 32) + 32) = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2 = *(*(a1 + 32) + 32);
  }

  v3 = *(a1 + 40);

  return [v2 addEntriesFromDictionary:v3];
}

- (void)_becomeManagedOnConnection:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SSEntity__becomeManagedOnConnection___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

uint64_t __39__SSEntity__becomeManagedOnConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (v3 != *(a1 + 40))
  {

    *(*(a1 + 32) + 8) = *(a1 + 40);
    v2 = *(a1 + 32);
  }

  return [v2 _resetLocalIVars];
}

- (NSDictionary)_localExternalValues
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__32;
  v10 = __Block_byref_object_dispose__32;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__SSEntity__localExternalValues__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __32__SSEntity__localExternalValues__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSDictionary)_localValues
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__32;
  v10 = __Block_byref_object_dispose__32;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__SSEntity__localValues__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __24__SSEntity__localValues__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)_isManaged
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__SSEntity__isManaged__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setDirtyCachedExternalProperties:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SSEntity__setDirtyCachedExternalProperties___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

uint64_t __46__SSEntity__setDirtyCachedExternalProperties___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 48);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(v2 + 32) + 48) = result;
  }

  return result;
}

- (void)_setDirtyCachedProperties:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__SSEntity__setDirtyCachedProperties___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

uint64_t __38__SSEntity__setDirtyCachedProperties___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 56);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(v2 + 32) + 56) = result;
  }

  return result;
}

- (void)_setLocalExternalValues:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__SSEntity__setLocalExternalValues___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

uint64_t __36__SSEntity__setLocalExternalValues___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 24);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) mutableCopy];
    *(*(v2 + 32) + 24) = result;
  }

  return result;
}

- (void)_setLocalValues:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__SSEntity__setLocalValues___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

uint64_t __28__SSEntity__setLocalValues___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 32);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) mutableCopy];
    *(*(v2 + 32) + 32) = result;
  }

  return result;
}

- (void)__addCachedExternalValues:(id)a3
{
  localExternalValues = self->_localExternalValues;
  if (!localExternalValues)
  {
    localExternalValues = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_localExternalValues = localExternalValues;
  }

  [(NSMutableDictionary *)localExternalValues addEntriesFromDictionary:a3];
}

- (void)__addCachedPropertyValues:(id)a3
{
  localValues = self->_localValues;
  if (!localValues)
  {
    localValues = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_localValues = localValues;
  }

  [(NSMutableDictionary *)localValues addEntriesFromDictionary:a3];
}

- (void)_getValues:(id *)a3 forProperties:(const void *)a4 count:(unint64_t)a5 message:(int64_t)a6
{
  v62 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v11 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    if (os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 2;
    }

    if (v14)
    {
      LODWORD(v57) = 136446210;
      *(&v57 + 4) = "[SSEntity _getValues:forProperties:count:message:]";
      LODWORD(v41) = 12;
      v40 = &v57;
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        v17 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v57, v41}];
        free(v16);
        SSFileLog(v11, @"%@", v18, v19, v20, v21, v22, v23, v17);
      }
    }
  }

  *&v57 = 0;
  *(&v57 + 1) = &v57;
  v58 = 0x3052000000;
  v59 = __Block_byref_object_copy__32;
  v60 = __Block_byref_object_dispose__32;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3052000000;
  v53 = __Block_byref_object_copy__32;
  v54 = __Block_byref_object_dispose__32;
  v55 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SSEntity__getValues_forProperties_count_message___block_invoke;
  block[3] = &unk_1E84B0790;
  block[8] = a5;
  block[9] = a4;
  block[10] = a3;
  block[4] = self;
  block[5] = &v57;
  block[6] = &v50;
  block[7] = a6;
  dispatch_sync(dispatchQueue, block);
  if (*(*(&v57 + 1) + 40))
  {
    v25 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v25, "0", a6);
    xpc_dictionary_set_int64(v25, "1", self->_pid);
    v26 = xpc_array_create(0, 0);
    if (a5)
    {
      v27 = a4;
      v28 = a5;
      do
      {
        SSXPCArraySetCFObject(v26, 0xFFFFFFFFFFFFFFFFLL, *v27++);
        --v28;
      }

      while (v28);
    }

    v42 = self;
    v29 = a6;
    v30 = a4;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v31 = v51[5];
    v32 = [v31 countByEnumeratingWithState:&v45 objects:v56 count:{16, v40}];
    if (v32)
    {
      v33 = *v46;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v46 != v33)
          {
            objc_enumerationMutation(v31);
          }

          SSXPCArraySetCFObject(v26, 0xFFFFFFFFFFFFFFFFLL, *(*(&v45 + 1) + 8 * i));
        }

        v32 = [v31 countByEnumeratingWithState:&v45 objects:v56 count:16];
      }

      while (v32);
    }

    xpc_dictionary_set_value(v25, "2", v26);
    xpc_release(v26);
    if (v51[5])
    {
      v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v35 = 0;
    }

    v36 = dispatch_semaphore_create(0);
    v37 = *(*(&v57 + 1) + 40);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __51__SSEntity__getValues_forProperties_count_message___block_invoke_2;
    v44[3] = &unk_1E84B07B8;
    v44[6] = &v50;
    v44[7] = a5;
    v44[8] = a3;
    v44[4] = v35;
    v44[5] = v36;
    [v37 sendMessage:v25 withReply:v44];
    dispatch_semaphore_wait(v36, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v36);
    if ([v35 count])
    {
      v38 = v42->_dispatchQueue;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __51__SSEntity__getValues_forProperties_count_message___block_invoke_3;
      v43[3] = &unk_1E84B0808;
      v43[8] = a5;
      v43[9] = v30;
      v43[4] = v42;
      v43[5] = v35;
      v43[6] = &v50;
      v43[7] = v29;
      dispatch_sync(v38, v43);
    }

    xpc_release(v25);
  }

  for (; a5; --a5)
  {
    v39 = *a3++;
  }

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v57, 8);
}

id __51__SSEntity__getValues_forProperties_count_message___block_invoke(void *a1)
{
  v2 = a1[7];
  result = [objc_opt_class() _getValueMessage];
  if (v2 == result)
  {
    v4 = a1[4];
    v5 = *(v4 + 32);
    if (*(v4 + 56))
    {
LABEL_3:
      result = [MEMORY[0x1E695DFA8] setWithArray:?];
      v6 = result;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v7 = a1[7];
  result = [objc_opt_class() _getExternalValuesMessage];
  if (v7 == result)
  {
    v8 = a1[4];
    v5 = *(v8 + 24);
    if (*(v8 + 48))
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = 0;
  v5 = 0;
LABEL_8:
  if (a1[8])
  {
    v9 = 0;
    v10 = 0;
    v11 = *MEMORY[0x1E695E738];
    do
    {
      v12 = [v6 containsObject:*(a1[9] + 8 * v9)];
      v13 = *(a1[9] + 8 * v9);
      if (v12)
      {
        [v6 removeObject:v13];
        v14 = 0;
      }

      else
      {
        v15 = [v5 objectForKey:v13];
        if (v15)
        {
          ++v10;
        }

        if (v15 == v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = v15;
        }
      }

      result = v14;
      *(a1[10] + 8 * v9++) = result;
      v16 = a1[8];
    }

    while (v9 < v16);
    if (v10 < v16)
    {
      *(*(a1[5] + 8) + 40) = *(a1[4] + 8);
      result = [v6 allObjects];
      *(*(a1[6] + 8) + 40) = result;
    }
  }

  return result;
}

intptr_t __51__SSEntity__getValues_forProperties_count_message___block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
  {
    value = xpc_dictionary_get_value(a2, "0");
    v7 = *(a1 + 56);
    v8 = [*(*(*(a1 + 48) + 8) + 40) count];
    if (value)
    {
      v9 = v8;
      if (MEMORY[0x1DA6E0380](value) == MEMORY[0x1E69E9E50])
      {
        v10 = v9 + v7;
        if (xpc_array_get_count(value) == v9 + v7 && v10 != 0)
        {
          v12 = 0;
          v13 = *MEMORY[0x1E695E738];
          do
          {
            v14 = xpc_array_get_value(value, v12);
            v15 = SSXPCCreateCFObjectFromXPCObject(v14);
            v16 = v15;
            if (v12 < *(a1 + 56) && v15 != v13)
            {

              *(*(a1 + 64) + 8 * v12) = v16;
            }

            [*(a1 + 32) addObject:v16];

            ++v12;
          }

          while (v10 != v12);
        }
      }
    }
  }

  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

void __51__SSEntity__getValues_forProperties_count_message___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = *(a1 + 56);
  if (v3 == [objc_opt_class() _getValueMessage])
  {
    v4 = 56;
LABEL_5:
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:*(*(a1 + 32) + v4)];

    *(*(a1 + 32) + v4) = 0;
    goto LABEL_7;
  }

  v5 = *(a1 + 56);
  if (v5 == [objc_opt_class() _getExternalValuesMessage])
  {
    v4 = 48;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:
  v7 = *(a1 + 64);
  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      if ([v6 containsObject:*(*(a1 + 72) + 8 * i)])
      {
        [v2 setObject:objc_msgSend(*(a1 + 40) forKey:{"objectAtIndex:", i), *(*(a1 + 72) + 8 * i)}];
      }

      v7 = *(a1 + 64);
    }
  }

  v9 = *(*(*(a1 + 48) + 8) + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__SSEntity__getValues_forProperties_count_message___block_invoke_4;
  v13[3] = &unk_1E84B07E0;
  v10 = *(a1 + 40);
  v13[4] = v2;
  v13[5] = v10;
  v13[6] = v7;
  [v9 enumerateObjectsUsingBlock:v13];
  if ([v2 count])
  {
    v11 = *(a1 + 56);
    if (v11 == [objc_opt_class() _getValueMessage])
    {
      [*(a1 + 32) __addCachedPropertyValues:v2];
    }

    else
    {
      v12 = *(a1 + 56);
      if (v12 == [objc_opt_class() _getExternalValuesMessage])
      {
        [*(a1 + 32) __addCachedExternalValues:v2];
      }
    }
  }
}

uint64_t __51__SSEntity__getValues_forProperties_count_message___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) objectAtIndex:*(a1 + 48) + a3];

  return [v4 setObject:v5 forKey:a2];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "0", self->_pid);
  dispatchQueue = self->_dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__SSEntity_copyXPCEncoding__block_invoke;
  v6[3] = &unk_1E84AC458;
  v6[4] = v3;
  v6[5] = self;
  dispatch_sync(dispatchQueue, v6);
  return v3;
}

@end