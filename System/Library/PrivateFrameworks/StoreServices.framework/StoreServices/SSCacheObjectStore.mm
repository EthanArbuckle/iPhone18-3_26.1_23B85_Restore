@interface SSCacheObjectStore
- (BOOL)addObject:(id)a3 withItemIdentifier:(id)a4;
- (BOOL)removeObjectWithItemIdentifier:(id)a3;
- (SSCacheObjectStore)initWithSessionIdentifier:(id)a3;
- (id)_factoryForTypeIdentifier:(id)a3;
- (id)cacheObjectWithItemIdentifier:(id)a3;
- (id)description;
- (void)addCacheObjectFactory:(id)a3;
- (void)clearSession;
- (void)dealloc;
- (void)removeCacheObjectFactory:(id)a3;
@end

@implementation SSCacheObjectStore

- (SSCacheObjectStore)initWithSessionIdentifier:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if ([a3 length])
  {
    v5 = [(SSCacheObjectStore *)self init];
    if (v5)
    {
      v5->_sessionIdentifier = a3;
      v5->_factories = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:5];
      v6 = [SSDatabaseCache alloc];
      v7 = objc_opt_class();
      v8 = [(SSDatabaseCache *)v6 initWithIdentifier:NSStringFromClass(v7) cacheName:a3];
      v5->_databaseCache = v8;
      [(SSDatabaseCache *)v8 setMaximumInlineBlobSize:1024];
      v9 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", objc_opt_class(), a3), "UTF8String"];
      v5->_serialQueue = dispatch_queue_create(v9, 0);
    }
  }

  else
  {
    v10 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v24 = 138412290;
      v25 = objc_opt_class();
      LODWORD(v23) = 12;
      v13 = _os_log_send_and_compose_impl();
      if (v13)
      {
        v14 = v13;
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v24, v23}];
        free(v14);
        SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, v15);
      }
    }

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  dispatch_release(self->_serialQueue);
  v3.receiver = self;
  v3.super_class = SSCacheObjectStore;
  [(SSCacheObjectStore *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = SSCacheObjectStore;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: [Session Identifier: %@] [Factories: %d]", -[SSCacheObjectStore description](&v3, sel_description), self->_sessionIdentifier, -[NSMutableSet count](self->_factories, "count")];
}

- (id)_factoryForTypeIdentifier:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  if ([a3 length])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    factories = self->_factories;
    v6 = [(NSMutableSet *)factories countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(factories);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        if ([v10 supportsTypeIdentifier:a3])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSMutableSet *)factories countByEnumeratingWithState:&v26 objects:v32 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }

      v11 = v10;
      if (v11)
      {
        return v11;
      }
    }
  }

LABEL_12:
  v12 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  v13 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  if (os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 & 2;
  }

  if (!v15)
  {
    goto LABEL_23;
  }

  v30 = 138412290;
  v31 = a3;
  LODWORD(v25) = 12;
  v11 = _os_log_send_and_compose_impl();
  if (v11)
  {
    v16 = v11;
    v17 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v30, v25}];
    free(v16);
    SSFileLog(v12, @"%@", v18, v19, v20, v21, v22, v23, v17);
LABEL_23:
    v11 = 0;
  }

  return v11;
}

- (void)clearSession
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SSCacheObjectStore_clearSession__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

uint64_t __34__SSCacheObjectStore_clearSession__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
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

  if (os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 & 2;
  }

  if (v5)
  {
    v6 = *(*(a1 + 32) + 24);
    v19 = 138412290;
    v20 = v6;
    LODWORD(v18) = 12;
    v17 = &v19;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v19, v18}];
      free(v8);
      SSFileLog(v2, @"%@", v10, v11, v12, v13, v14, v15, v9);
    }
  }

  return [*(*(a1 + 32) + 8) clear];
}

- (BOOL)addObject:(id)a3 withItemIdentifier:(id)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__SSCacheObjectStore_addObject_withItemIdentifier___block_invoke;
  v7[3] = &unk_1E84B34C0;
  v7[4] = a3;
  v7[5] = self;
  v7[6] = a4;
  v7[7] = &v8;
  dispatch_sync(serialQueue, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __51__SSCacheObjectStore_addObject_withItemIdentifier___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cacheObjectDataRepresentation];
  if ([v2 length])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v3 = [*(a1 + 32) cacheObjectTypeIdentifier];
    [objc_msgSend(MEMORY[0x1E695DF00] "distantFuture")];
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 40) + 8);

    [v6 setData:v2 expiring:v5 retiring:v3 lookupKey:v4 userInfo:v4];
  }

  else
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

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 48);
      v22 = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      LODWORD(v21) = 22;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v22, v21}];
        free(v13);
        SSFileLog(v7, @"%@", v15, v16, v17, v18, v19, v20, v14);
      }
    }
  }
}

- (BOOL)removeObjectWithItemIdentifier:(id)a3
{
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__SSCacheObjectStore_removeObjectWithItemIdentifier___block_invoke;
  v5[3] = &unk_1E84AC458;
  v5[4] = a3;
  v5[5] = self;
  dispatch_sync(serialQueue, v5);
  return 0;
}

void __53__SSCacheObjectStore_removeObjectWithItemIdentifier___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) length])
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 40) + 8);

    [v3 clearCacheForLookupKey:v2];
  }

  else
  {
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v17 = 138412290;
      v18 = objc_opt_class();
      LODWORD(v16) = 12;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v17, v16}];
        free(v8);
        SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, v9);
      }
    }
  }
}

- (id)cacheObjectWithItemIdentifier:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__75;
  v11 = __Block_byref_object_dispose__75;
  v12 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__SSCacheObjectStore_cacheObjectWithItemIdentifier___block_invoke;
  block[3] = &unk_1E84AC7B0;
  block[4] = a3;
  block[5] = self;
  block[6] = &v7;
  dispatch_sync(serialQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __52__SSCacheObjectStore_cacheObjectWithItemIdentifier___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) length])
  {
    v2 = [*(*(a1 + 40) + 8) cacheEntryForLookupKey:*(a1 + 32)];
    v3 = [v2 dataBlob:0];
    if ([v3 length])
    {
      v27[0] = 0;
      v26 = SSDatabaseCacheEntryUserInfo;
      [v2 getValues:v27 forProperties:&v26 count:1];
      if (v27[0])
      {
        *(*(*(a1 + 48) + 8) + 40) = [objc_msgSend(*(a1 + 40) _factoryForTypeIdentifier:{v27[0]), "cachedObjectWithDataRepresentation:typeIdentifier:", v3, v27[0]}];
        return;
      }

      v4 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v4)
      {
        v4 = +[SSLogConfig sharedConfig];
      }

      v11 = [v4 shouldLog];
      if ([v4 shouldLogToDisk])
      {
        v12 = v11 | 2;
      }

      else
      {
        v12 = v11;
      }

      if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v12 &= 2u;
      }

      if (v12)
      {
        v13 = objc_opt_class();
        v14 = *(a1 + 32);
        *v25 = 138412546;
        *&v25[4] = v13;
        *&v25[12] = 2112;
        *&v25[14] = v14;
        LODWORD(v24) = 22;
LABEL_32:
        v15 = _os_log_send_and_compose_impl();
        if (v15)
        {
          v16 = v15;
          v17 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, v25, v24, *v25}];
          free(v16);
          SSFileLog(v4, @"%@", v18, v19, v20, v21, v22, v23, v17);
        }
      }
    }

    else
    {
      v4 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v4)
      {
        v4 = +[SSLogConfig sharedConfig];
      }

      v7 = [v4 shouldLog];
      if ([v4 shouldLogToDisk])
      {
        v8 = v7 | 2;
      }

      else
      {
        v8 = v7;
      }

      if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v9 = objc_opt_class();
        v10 = *(a1 + 32);
        *v25 = 138412546;
        *&v25[4] = v9;
        *&v25[12] = 2112;
        *&v25[14] = v10;
        LODWORD(v24) = 22;
        goto LABEL_32;
      }
    }
  }

  else
  {
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      *v25 = 138412290;
      *&v25[4] = objc_opt_class();
      LODWORD(v24) = 12;
      goto LABEL_32;
    }
  }
}

- (void)addCacheObjectFactory:(id)a3
{
  if (a3)
  {
    serialQueue = self->_serialQueue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __44__SSCacheObjectStore_addCacheObjectFactory___block_invoke;
    v4[3] = &unk_1E84AC458;
    v4[4] = self;
    v4[5] = a3;
    dispatch_sync(serialQueue, v4);
  }
}

- (void)removeCacheObjectFactory:(id)a3
{
  if (a3)
  {
    serialQueue = self->_serialQueue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __47__SSCacheObjectStore_removeCacheObjectFactory___block_invoke;
    v4[3] = &unk_1E84AC458;
    v4[4] = self;
    v4[5] = a3;
    dispatch_sync(serialQueue, v4);
  }
}

@end