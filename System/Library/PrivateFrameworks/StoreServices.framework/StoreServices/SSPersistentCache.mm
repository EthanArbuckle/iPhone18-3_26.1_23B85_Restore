@interface SSPersistentCache
+ (id)safeKeyForKey:(id)a3;
- (BOOL)_isFileNotFound:(id)a3;
- (BOOL)clear;
- (BOOL)removeDataForKey:(id)a3;
- (BOOL)setData:(id)a3 forKey:(id)a4;
- (SSPersistentCache)initWithIdentifier:(id)a3 cacheName:(id)a4;
- (id)_pathForKey:(id)a3;
- (id)dataForKey:(id)a3;
- (void)dealloc;
@end

@implementation SSPersistentCache

- (SSPersistentCache)initWithIdentifier:(id)a3 cacheName:(id)a4
{
  v39[2] = *MEMORY[0x1E69E9840];
  v6 = [(SSPersistentCache *)self init];
  if (v6)
  {
    if (![a3 length] || !objc_msgSend(a4, "length"))
    {
LABEL_15:

      return 0;
    }

    v6->_identifier = [a3 copy];
    v6->_cacheName = [a4 copy];
    v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{CPSharedResourcesDirectory(), @"Library", @"Caches", a3, a4, 0}];
    v6->_path = [MEMORY[0x1E696AEC0] pathWithComponents:v7];

    v6->_fm = objc_alloc_init(MEMORY[0x1E696AC08]);
    v8 = objc_alloc(MEMORY[0x1E695DEC8]);
    v9 = objc_opt_class();
    v10 = [v8 initWithObjects:{NSStringFromClass(v9), a3, a4, 0}];
    v11 = [v10 componentsJoinedByString:@"."];

    v12 = dispatch_queue_create([v11 UTF8String], 0);
    v6->_serialQueue = v12;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v12, global_queue);
    v14 = *MEMORY[0x1E696A328];
    v38[0] = *MEMORY[0x1E696A360];
    v38[1] = v14;
    v39[0] = @"mobile";
    v39[1] = @"mobile";
    v31 = 0;
    if (!-[NSFileManager createDirectoryAtPath:withIntermediateDirectories:attributes:error:](v6->_fm, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v6->_path, 1, [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2], &v31))
    {
      v15 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v15)
      {
        v15 = +[SSLogConfig sharedConfig];
      }

      v16 = [v15 shouldLog];
      if ([v15 shouldLogToDisk])
      {
        v17 = v16 | 2;
      }

      else
      {
        v17 = v16;
      }

      if (!os_log_type_enabled([v15 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v17 &= 2u;
      }

      if (v17)
      {
        v18 = objc_opt_class();
        path = v6->_path;
        v32 = 138412802;
        v33 = v18;
        v34 = 2112;
        v35 = path;
        v36 = 2112;
        v37 = v31;
        LODWORD(v30) = 32;
        v20 = _os_log_send_and_compose_impl();
        if (v20)
        {
          v21 = v20;
          v22 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v32, v30}];
          free(v21);
          SSFileLog(v15, @"%@", v23, v24, v25, v26, v27, v28, v22);
        }
      }

      goto LABEL_15;
    }
  }

  return v6;
}

- (void)dealloc
{
  serialQueue = self->_serialQueue;
  if (serialQueue)
  {
    dispatch_release(serialQueue);
  }

  v4.receiver = self;
  v4.super_class = SSPersistentCache;
  [(SSPersistentCache *)&v4 dealloc];
}

- (id)_pathForKey:(id)a3
{
  path = self->_path;
  if (!self->_safeKeys)
  {
    a3 = [SSPersistentCache safeKeyForKey:a3];
  }

  return [(NSString *)path stringByAppendingPathComponent:a3];
}

- (BOOL)_isFileNotFound:(id)a3
{
  if ([a3 code] != 4)
  {
    return 0;
  }

  v4 = [a3 domain];
  v5 = *MEMORY[0x1E696A250];

  return [v4 isEqualToString:v5];
}

+ (id)safeKeyForKey:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (!CC_MD5([a3 UTF8String], objc_msgSend(a3, "length"), md))
  {
    return 0;
  }

  v3 = [MEMORY[0x1E696AD60] string];
  for (i = 0; i != 16; ++i)
  {
    [v3 appendFormat:@"%02x", md[i]];
  }

  return v3;
}

- (BOOL)setData:(id)a3 forKey:(id)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if ([a4 length] && objc_msgSend(a3, "length"))
  {
    v7 = [(SSPersistentCache *)self _pathForKey:a4];
    serialQueue = self->_serialQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__SSPersistentCache_setData_forKey___block_invoke;
    v11[3] = &unk_1E84AC588;
    v11[4] = self;
    v11[5] = a3;
    v11[6] = v7;
    v11[7] = &v12;
    dispatch_sync(serialQueue, v11);
  }

  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __36__SSPersistentCache_setData_forKey___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  if (!os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) length];
    v7 = *(a1 + 48);
    v20 = 138412802;
    v21 = v5;
    v22 = 1024;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    LODWORD(v19) = 28;
    v18 = &v20;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v20, v19}];
      free(v9);
      SSFileLog(v2, @"%@", v11, v12, v13, v14, v15, v16, v10);
    }
  }

  result = [*(a1 + 40) writeToFile:*(a1 + 48) atomically:{1, v18}];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)removeDataForKey:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([a3 length])
  {
    v5 = [(SSPersistentCache *)self _pathForKey:a3];
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__SSPersistentCache_removeDataForKey___block_invoke;
    block[3] = &unk_1E84ADF80;
    block[5] = v5;
    block[6] = &v10;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }

  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __38__SSPersistentCache_removeDataForKey___block_invoke(uint64_t a1)
{
  v3 = 0;
  result = [*(*(a1 + 32) + 40) removeItemAtPath:*(a1 + 40) error:&v3];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    result = [*(a1 + 32) _isFileNotFound:v3];
    if (result)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

- (BOOL)clear
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__SSPersistentCache_clear__block_invoke;
  v5[3] = &unk_1E84AF0E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __26__SSPersistentCache_clear__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 40) enumeratorAtPath:*(*(a1 + 32) + 32)];
  result = [v2 nextObject];
  if (result)
  {
    v4 = result;
    do
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [*(*(a1 + 32) + 32) stringByAppendingPathComponent:v4];
      v22 = 0;
      if (([*(*(a1 + 32) + 40) removeItemAtPath:v6 error:&v22] & 1) == 0)
      {
        v7 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v7)
        {
          v7 = +[SSLogConfig sharedConfig];
        }

        v8 = [v7 shouldLog];
        if ([v7 shouldLogToDisk])
        {
          v9 = v8 | 2;
        }

        else
        {
          v9 = v8;
        }

        if (os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
        }

        else
        {
          v10 = v9 & 2;
        }

        if (v10)
        {
          v23 = 138412290;
          v24 = v6;
          LODWORD(v21) = 12;
          v20 = &v23;
          v11 = _os_log_send_and_compose_impl();
          if (v11)
          {
            v12 = v11;
            v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v23, v21}];
            free(v12);
            SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, v13);
          }
        }

        *(*(*(a1 + 40) + 8) + 24) = 0;
      }

      [v2 skipDescendents];
      objc_autoreleasePoolPop(v5);
      result = [v2 nextObject];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (id)dataForKey:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__73;
  v14 = __Block_byref_object_dispose__73;
  v15 = 0;
  if ([a3 length])
  {
    v5 = [(SSPersistentCache *)self _pathForKey:a3];
    serialQueue = self->_serialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__SSPersistentCache_dataForKey___block_invoke;
    block[3] = &unk_1E84ADF80;
    block[5] = self;
    block[6] = &v10;
    block[4] = v5;
    dispatch_sync(serialQueue, block);
  }

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __32__SSPersistentCache_dataForKey___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v18 = 0;
  *(*(*(a1 + 48) + 8) + 40) = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:*(a1 + 32) options:1 error:&v18];
  if (v18 && ([*(a1 + 40) _isFileNotFound:?] & 1) == 0)
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

    if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 32);
      v19 = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      LODWORD(v17) = 22;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v19, v17}];
        free(v9);
        SSFileLog(v3, @"%@", v11, v12, v13, v14, v15, v16, v10);
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

@end