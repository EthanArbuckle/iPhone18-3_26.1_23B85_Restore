@interface SSDownloadFileManifest
- (SSDownloadFileManifest)initWithManifestType:(int64_t)a3;
- (void)_removeItemsWithAssetPaths:(id)a3 completionBlock:(id)a4;
- (void)dealloc;
- (void)getPathsForFilesWithClass:(int64_t)a3 completionBlock:(id)a4;
- (void)rebuildManifestWithCompletionBlock:(id)a3;
- (void)removeItemWithAssetPath:(id)a3 completionBlock:(id)a4;
- (void)removeItemsWithAssetPaths:(id)a3 completionBlock:(id)a4;
@end

@implementation SSDownloadFileManifest

- (SSDownloadFileManifest)initWithManifestType:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = SSDownloadFileManifest;
  v4 = [(SSDownloadFileManifest *)&v6 init];
  if (v4)
  {
    v4->_connection = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    v4->_manifestType = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownloadFileManifest;
  [(SSDownloadFileManifest *)&v3 dealloc];
}

- (void)getPathsForFilesWithClass:(int64_t)a3 completionBlock:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
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

    if (os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 2;
    }

    if (v10)
    {
      v24 = 136446210;
      v25 = "[SSDownloadFileManifest getPathsForFilesWithClass:completionBlock:]";
      LODWORD(v22) = 12;
      v11 = _os_log_send_and_compose_impl();
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v24, v22}];
        free(v12);
        SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, v13);
      }
    }
  }

  v20 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v20, "0", 46);
  xpc_dictionary_set_int64(v20, "1", self->_manifestType);
  xpc_dictionary_set_int64(v20, "2", a3);
  connection = self->_connection;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __68__SSDownloadFileManifest_getPathsForFilesWithClass_completionBlock___block_invoke;
  v23[3] = &unk_1E84AC7E0;
  v23[4] = a4;
  [(SSXPCConnection *)connection sendMessage:v20 withReply:v23];
  xpc_release(v20);
}

void __68__SSDownloadFileManifest_getPathsForFilesWithClass_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a2 && MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
    {
      objc_opt_class();
      v5 = SSXPCDictionaryCopyCFObjectWithClass(a2, "0");
      objc_opt_class();
      v6 = SSXPCDictionaryCopyCFObjectWithClass(a2, "1");
      if ([(__CFArray *)v5 length])
      {
        if ([(__CFArray *)v6 count])
        {
          v13 = 0u;
          v14 = 0u;
          v11 = 0u;
          v12 = 0u;
          v7 = [(__CFArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v12;
            do
            {
              v10 = 0;
              do
              {
                if (*v12 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                [v4 addObject:{-[__CFArray stringByAppendingPathComponent:](v5, "stringByAppendingPathComponent:", *(*(&v11 + 1) + 8 * v10++))}];
              }

              while (v8 != v10);
              v8 = [(__CFArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
            }

            while (v8);
          }
        }
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)rebuildManifestWithCompletionBlock:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
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
      v22 = 136446210;
      v23 = "[SSDownloadFileManifest rebuildManifestWithCompletionBlock:]";
      LODWORD(v20) = 12;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v22, v20}];
        free(v10);
        SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }
  }

  v18 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v18, "0", 47);
  xpc_dictionary_set_int64(v18, "1", self->_manifestType);
  connection = self->_connection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__SSDownloadFileManifest_rebuildManifestWithCompletionBlock___block_invoke;
  v21[3] = &unk_1E84AC7E0;
  v21[4] = a3;
  [(SSXPCConnection *)connection sendMessage:v18 withReply:v21];
  xpc_release(v18);
}

uint64_t __61__SSDownloadFileManifest_rebuildManifestWithCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeItemWithAssetPath:(id)a3 completionBlock:(id)a4
{
  v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{a3, 0}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__SSDownloadFileManifest_removeItemWithAssetPath_completionBlock___block_invoke;
  v7[3] = &unk_1E84B0E38;
  v7[4] = a4;
  [(SSDownloadFileManifest *)self _removeItemsWithAssetPaths:v6 completionBlock:v7];
}

uint64_t __66__SSDownloadFileManifest_removeItemWithAssetPath_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)removeItemsWithAssetPaths:(id)a3 completionBlock:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__SSDownloadFileManifest_removeItemsWithAssetPaths_completionBlock___block_invoke;
  v4[3] = &unk_1E84B0E38;
  v4[4] = a4;
  [(SSDownloadFileManifest *)self _removeItemsWithAssetPaths:a3 completionBlock:v4];
}

uint64_t __68__SSDownloadFileManifest_removeItemsWithAssetPaths_completionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a4);
  }

  return result;
}

- (void)_removeItemsWithAssetPaths:(id)a3 completionBlock:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    if (SSIsInternalBuild() && _os_feature_enabled_impl())
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

      if (os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 2;
      }

      if (v10)
      {
        v26 = 136446210;
        v27 = "[SSDownloadFileManifest _removeItemsWithAssetPaths:completionBlock:]";
        LODWORD(v24) = 12;
        v11 = _os_log_send_and_compose_impl();
        if (v11)
        {
          v12 = v11;
          v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v26, v24}];
          free(v12);
          SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, v13);
        }
      }
    }

    v20 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v20, "0", 44);
    xpc_dictionary_set_int64(v20, "1", self->_manifestType);
    SSXPCDictionarySetCFObject(v20, "2", a3);
    connection = self->_connection;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __69__SSDownloadFileManifest__removeItemsWithAssetPaths_completionBlock___block_invoke;
    v25[3] = &unk_1E84AC7E0;
    v25[4] = a4;
    [(SSXPCConnection *)connection sendMessage:v20 withReply:v25];
    xpc_release(v20);
  }

  else
  {
    v22 = MEMORY[0x1E695DF30];
    v23 = *MEMORY[0x1E695D940];

    [v22 raise:v23 format:@"empty assetPaths"];
  }
}

void __69__SSDownloadFileManifest__removeItemsWithAssetPaths_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    if (a2 && (v4 = MEMORY[0x1DA6E0380](a2), v5 = MEMORY[0x1E69E9E80], v4 == MEMORY[0x1E69E9E80]))
    {
      if (xpc_dictionary_get_BOOL(a2, "0"))
      {
        v6 = 0;
        v7 = 0;
      }

      else
      {
        value = xpc_dictionary_get_value(a2, "1");
        if (value && (v9 = value, MEMORY[0x1DA6E0380]() == v5))
        {
          v10 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:v9];
        }

        else
        {
          v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSErrorDomain" code:100 userInfo:0];
        }

        v12 = v10;
        objc_opt_class();
        v7 = SSXPCDictionaryCopyCFObjectWithClass(a2, "2");
        v6 = v12;
      }
    }

    else
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SSErrorDomain" code:111 userInfo:0];
      v7 = 0;
    }

    v11 = v6;
    (*(*(a1 + 32) + 16))();
  }
}

@end