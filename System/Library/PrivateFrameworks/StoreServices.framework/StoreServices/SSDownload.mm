@interface SSDownload
- (BOOL)addAsset:(id)asset forType:(id)type;
- (BOOL)isCancelable;
- (BOOL)isEligibleForRestore:(id *)restore;
- (BOOL)removeAsset:(id)asset;
- (NSDictionary)_localAssets;
- (SSDownload)initWithDownloadMetadata:(id)metadata;
- (SSDownload)initWithPersistentIdentifier:(int64_t)identifier;
- (SSDownloadMetadata)metadata;
- (SSDownloadPolicy)downloadPolicy;
- (SSDownloadStatus)status;
- (double)estimatedSecondsRemaining;
- (double)percentComplete;
- (id)_errorWithData:(id)data;
- (id)_errorWithXPCReply:(id)reply;
- (id)_initWithLocalPropertyValues:(id)values;
- (id)_newAssetWithURL:(id)l assetType:(id)type;
- (id)assetsForType:(id)type;
- (id)copyXPCEncoding;
- (id)failureError;
- (id)networkConstraints;
- (int64_t)bytesDownloaded;
- (int64_t)bytesTotal;
- (int64_t)downloadSizeLimit;
- (void)_addCachedExternalValues:(id)values;
- (void)_addCachedPropertyValues:(id)values;
- (void)_applyPhase:(id)phase toStatus:(id)status;
- (void)_resetLocalIVars;
- (void)_resetStatus;
- (void)dealloc;
- (void)pause;
- (void)prioritizeAboveDownload:(id)download completionBlock:(id)block;
- (void)restart;
- (void)resume;
- (void)setBackgroundNetworkingJobGroupName:(id)name;
- (void)setBackgroundNetworkingUserInitiated:(BOOL)initiated;
- (void)setDownloadHandler:(id)handler completionBlock:(id)block;
- (void)setDownloadPolicy:(id)policy;
- (void)setMetadata:(id)metadata;
- (void)setNetworkConstraints:(id)constraints;
- (void)setValuesWithStoreDownloadMetadata:(id)metadata;
@end

@implementation SSDownload

- (SSDownload)initWithPersistentIdentifier:(int64_t)identifier
{
  v3 = [(SSEntity *)self _initWithPersistentIdentifier:identifier];
  v4 = v3;
  if (v3 && !v3->super._connection)
  {
    if (initWithPersistentIdentifier__sOnce != -1)
    {
      [SSDownload initWithPersistentIdentifier:];
    }

    v4->super._connection = initWithPersistentIdentifier__sConnection;
  }

  return v4;
}

SSXPCConnection *__43__SSDownload_initWithPersistentIdentifier___block_invoke()
{
  result = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  initWithPersistentIdentifier__sConnection = result;
  return result;
}

- (id)_initWithLocalPropertyValues:(id)values
{
  v4 = SSXPCCreateCFObjectFromXPCObject(values);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(__CFArray *)v4 objectForKey:@"0"]) != 0)
  {
    v6 = -[SSEntity _initWithPersistentIdentifier:](self, "_initWithPersistentIdentifier:", [v5 longLongValue]);
    if (v6)
    {
      v7 = [(__CFArray *)v4 objectForKey:@"1"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v6[4];
        if (!v8)
        {
          v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v6[4] = v8;
        }

        [v8 addEntriesFromDictionary:v7];
      }

      v9 = [(__CFArray *)v4 objectForKey:@"2"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v6[3];
        if (!v10)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v6[3] = v10;
        }

        [v10 addEntriesFromDictionary:v9];
      }
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownload;
  [(SSEntity *)&v3 dealloc];
}

- (BOOL)addAsset:(id)asset forType:(id)type
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __31__SSDownload_addAsset_forType___block_invoke;
  v14[3] = &unk_1E84AC588;
  v14[4] = self;
  v14[5] = type;
  v14[6] = asset;
  v14[7] = &v15;
  dispatch_sync(dispatchQueue, v14);
  if (*(v16 + 24) == 1)
  {
    _legacyAssetType = [asset _legacyAssetType];
    if (_legacyAssetType)
    {
      if ([type isEqualToString:@"media"] && !-[SSEntity valueForProperty:](self, "valueForProperty:", @"1"))
      {
        v9 = &off_1E84AC830;
        v10 = 14;
        v11 = @"other";
        while (*(v9 - 1) != _legacyAssetType)
        {
          v9 += 2;
          if (!--v10)
          {
            goto LABEL_10;
          }
        }

        v11 = *v9;
LABEL_10:
        [(SSEntity *)self setValue:v11 forProperty:@"1"];
      }
    }
  }

  v12 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v12;
}

void __31__SSDownload_addAsset_forType___block_invoke(void *a1)
{
  v1 = a1[4];
  if (!*(v1 + 8))
  {
    v3 = *(v1 + 64);
    if (!v3)
    {
      *(a1[4] + 64) = objc_alloc_init(MEMORY[0x1E695DF90]);
      v3 = *(a1[4] + 64);
    }

    v4 = [v3 objectForKey:a1[5]];
    if (v4)
    {
      [v4 addObject:a1[6]];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a1[6], 0}];
      [*(a1[4] + 64) setObject:v5 forKey:a1[5]];
    }

    *(*(a1[7] + 8) + 24) = 1;
  }
}

- (id)assetsForType:(id)type
{
  v40 = *MEMORY[0x1E69E9840];
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

    if (os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 2;
    }

    if (v8)
    {
      LODWORD(v35) = 136446210;
      *(&v35 + 4) = "[SSDownload assetsForType:]";
      LODWORD(v26) = 12;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v35, v26}];
        free(v10);
        SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }
  }

  *&v35 = 0;
  *(&v35 + 1) = &v35;
  v36 = 0x3052000000;
  v37 = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  v39 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3052000000;
  v32 = __Block_byref_object_copy__0;
  v33 = __Block_byref_object_dispose__0;
  v34 = 0;
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SSDownload_assetsForType___block_invoke;
  block[3] = &unk_1E84AC5B8;
  block[6] = &v29;
  block[7] = &v35;
  block[4] = self;
  block[5] = type;
  dispatch_sync(dispatchQueue, block);
  if (v30[5])
  {
    v19 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v19, "0", 11);
    xpc_dictionary_set_int64(v19, "1", self->super._pid);
    SSXPCDictionarySetCFObject(v19, "2", type);
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = dispatch_semaphore_create(0);
    v22 = v30[5];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __28__SSDownload_assetsForType___block_invoke_2;
    v27[3] = &unk_1E84AC5E0;
    v27[5] = v21;
    v27[6] = &v29;
    v27[4] = v20;
    [v22 sendMessage:v19 withReply:v27];
    dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v21);
    v23 = v20;
    *(*(&v35 + 1) + 40) = v23;

    xpc_release(v19);
  }

  v24 = *(*(&v35 + 1) + 40);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);
  return v24;
}

id __28__SSDownload_assetsForType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3)
  {
    result = v3;
    v5 = 48;
  }

  else
  {
    result = [objc_msgSend(*(v2 + 64) objectForKey:{*(a1 + 40)), "copy"}];
    v5 = 56;
  }

  *(*(*(a1 + v5) + 8) + 40) = result;
  return result;
}

intptr_t __28__SSDownload_assetsForType___block_invoke_2(uint64_t a1, void *a2)
{
  if (MEMORY[0x1DA6E0380](a2) == MEMORY[0x1E69E9E80])
  {
    value = xpc_dictionary_get_value(a2, "0");
    if (value)
    {
      v7 = value;
      count = xpc_array_get_count(value);
      if (count)
      {
        v9 = count;
        for (i = 0; i != v9; ++i)
        {
          v11 = [(SSEntity *)[SSDownloadAsset alloc] _initWithPersistentIdentifier:xpc_array_get_int64(v7, i)];
          [v11 _becomeManagedOnConnection:*(*(*(a1 + 48) + 8) + 40)];
          [*(a1 + 32) addObject:v11];
        }
      }
    }
  }

  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

- (int64_t)bytesDownloaded
{
  result = [(SSEntity *)self valueForExternalProperty:@"0"];
  if (result)
  {

    return [result longLongValue];
  }

  return result;
}

- (int64_t)bytesTotal
{
  result = [(SSEntity *)self valueForExternalProperty:@"1"];
  if (result)
  {

    return [result longLongValue];
  }

  return result;
}

- (SSDownloadPolicy)downloadPolicy
{
  v2 = [(SSEntity *)self valueForExternalProperty:@"7"];
  v3 = objc_opt_class();
  ObjectWithArchivedData = SSCodingCreateObjectWithArchivedData(v2, v3);

  return ObjectWithArchivedData;
}

- (int64_t)downloadSizeLimit
{
  v2 = [(SSEntity *)self valueForExternalProperty:@"8"];
  if (!v2)
  {
    return 0;
  }

  return [v2 longLongValue];
}

- (double)estimatedSecondsRemaining
{
  v2 = [(SSEntity *)self valueForExternalProperty:@"2"];
  if (!v2)
  {
    return -1.0;
  }

  [v2 doubleValue];
  return result;
}

- (id)failureError
{
  v3 = [(SSEntity *)self valueForProperty:@"J"];

  return [(SSDownload *)self _errorWithData:v3];
}

- (BOOL)isCancelable
{
  v9[5] = *MEMORY[0x1E69E9840];
  _isManaged = [(SSEntity *)self _isManaged];
  if (_isManaged)
  {
    v9[0] = @"AA";
    v9[1] = @"P";
    v9[2] = @"M";
    v9[3] = @"I";
    v9[4] = @"9";
    [(SSEntity *)self getValues:v5 forProperties:v9 count:5];
    if (!v5[0] || (_isManaged = [v5[0] BOOLValue]) != 0)
    {
      if (v8 && !v5[1] || v6 && ([v6 BOOLValue] & 1) != 0)
      {
        LOBYTE(_isManaged) = 0;
      }

      else if ([v7 isEqualToString:@"SSDownloadPhaseWaiting"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"SSDownloadPhaseDataRestore") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"SSDownloadPhaseDownloading") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"SSDownloadPhasePaused") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"SSDownloadPhasePreflight"))
      {
        LOBYTE(_isManaged) = 1;
      }

      else
      {
        LOBYTE(_isManaged) = [v7 isEqualToString:@"SSDownloadPhaseFailed"];
      }
    }
  }

  return _isManaged;
}

- (BOOL)isEligibleForRestore:(id *)restore
{
  v4 = [[SSRestoreContentItem alloc] initWithRestoreDownload:self];
  LOBYTE(restore) = [(SSRestoreContentItem *)v4 isEligibleForRestore:restore];

  return restore;
}

- (id)networkConstraints
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(SSNetworkConstraints);
  policyRules = [(SSDownloadPolicy *)[(SSDownload *)self downloadPolicy] policyRules];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(NSArray *)policyRules countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(policyRules);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        networkTypes = [v9 networkTypes];
        downloadSizeLimit = [v9 downloadSizeLimit];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v12 = [networkTypes countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v18;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v18 != v14)
              {
                objc_enumerationMutation(networkTypes);
              }

              -[SSNetworkConstraints setSizeLimit:forNetworkType:](v3, "setSizeLimit:forNetworkType:", downloadSizeLimit, [*(*(&v17 + 1) + 8 * j) integerValue]);
            }

            v13 = [networkTypes countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v13);
        }
      }

      v6 = [(NSArray *)policyRules countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)pause
{
  v26 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v3 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v3)
    {
      v3 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
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
      LODWORD(v21) = 136446210;
      *(&v21 + 4) = "[SSDownload pause]";
      LODWORD(v19) = 12;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v21, v19}];
        free(v8);
        SSFileLog(v3, @"%@", v10, v11, v12, v13, v14, v15, v9);
      }
    }
  }

  *&v21 = 0;
  *(&v21 + 1) = &v21;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__SSDownload_pause__block_invoke;
  block[3] = &unk_1E84AC698;
  block[4] = self;
  block[5] = &v21;
  dispatch_sync(dispatchQueue, block);
  if (*(*(&v21 + 1) + 40))
  {
    v17 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v17, "0", 17);
    v18 = xpc_array_create(0, 0);
    xpc_array_set_int64(v18, 0xFFFFFFFFFFFFFFFFLL, self->super._pid);
    xpc_dictionary_set_value(v17, "1", v18);
    xpc_release(v18);
    [*(*(&v21 + 1) + 40) sendMessage:v17 withReply:&__block_literal_global_117];
    xpc_release(v17);
  }

  else
  {
    [(SSEntity *)self setValue:@"SSDownloadPhasePaused" forProperty:@"I"];
  }

  _Block_object_dispose(&v21, 8);
}

id __19__SSDownload_pause__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (double)percentComplete
{
  v2 = [(SSEntity *)self valueForExternalProperty:@"4"];

  [v2 doubleValue];
  return result;
}

- (void)prioritizeAboveDownload:(id)download completionBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
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
      LODWORD(v28) = 136446210;
      *(&v28 + 4) = "[SSDownload prioritizeAboveDownload:completionBlock:]";
      LODWORD(v24) = 12;
      v11 = _os_log_send_and_compose_impl();
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v28, v24}];
        free(v12);
        SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, v13);
      }
    }
  }

  *&v28 = 0;
  *(&v28 + 1) = &v28;
  v29 = 0x3052000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  if (download)
  {
    download = [download persistentIdentifier];
  }

  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SSDownload_prioritizeAboveDownload_completionBlock___block_invoke;
  block[3] = &unk_1E84AC6E8;
  block[4] = self;
  block[5] = &v28;
  block[6] = download;
  dispatch_sync(dispatchQueue, block);
  if (*(*(&v28 + 1) + 40))
  {
    v21 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v21, "0", 28);
    xpc_dictionary_set_int64(v21, "1", self->super._pid);
    xpc_dictionary_set_int64(v21, "2", download);
    v22 = *(*(&v28 + 1) + 40);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __54__SSDownload_prioritizeAboveDownload_completionBlock___block_invoke_3;
    v25[3] = &unk_1E84AC760;
    v25[4] = self;
    v25[5] = block;
    [v22 sendMessage:v21 withReply:v25];
    xpc_release(v21);
  }

  else if (block)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __54__SSDownload_prioritizeAboveDownload_completionBlock___block_invoke_2;
    v26[3] = &unk_1E84AC710;
    v26[4] = block;
    dispatch_async(global_queue, v26);
  }

  _Block_object_dispose(&v28, 8);
}

uint64_t __54__SSDownload_prioritizeAboveDownload_completionBlock___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 40) = *(a1[4] + 8);

  result = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:a1[6]];
  *(a1[4] + 80) = result;
  return result;
}

void __54__SSDownload_prioritizeAboveDownload_completionBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) _errorWithXPCReply:a2];
    global_queue = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __54__SSDownload_prioritizeAboveDownload_completionBlock___block_invoke_4;
    v6[3] = &unk_1E84AC738;
    v5 = *(a1 + 40);
    v6[4] = v3;
    v6[5] = v5;
    dispatch_async(global_queue, v6);
  }
}

- (BOOL)removeAsset:(id)asset
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  dispatchQueue = self->super._dispatchQueue;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SSDownload_removeAsset___block_invoke;
  block[3] = &unk_1E84AC7B0;
  block[4] = self;
  block[5] = asset;
  block[6] = &v7;
  dispatch_sync(dispatchQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __26__SSDownload_removeAsset___block_invoke(int8x16_t *a1)
{
  v3 = a1[2].i64[0];
  if (!*(v3 + 8))
  {
    v9 = v1;
    v10 = v2;
    v5 = [*(v3 + 64) copy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __26__SSDownload_removeAsset___block_invoke_2;
    v6[3] = &unk_1E84AC788;
    v7 = vextq_s8(a1[2], a1[2], 8uLL);
    v8 = a1[3].i64[0];
    [v5 enumerateKeysAndObjectsUsingBlock:v6];
  }
}

uint64_t __26__SSDownload_removeAsset___block_invoke_2(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 indexOfObjectIdenticalTo:a1[4]];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a3 removeObjectAtIndex:result];
    result = [a3 count];
    if (!result)
    {
      result = [*(a1[5] + 64) removeObjectForKey:a2];
    }

    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)resume
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __20__SSDownload_resume__block_invoke;
  v6[3] = &unk_1E84AC698;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dispatchQueue, v6);
  if (v8[5])
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v4, "0", 19);
    v5 = xpc_array_create(0, 0);
    xpc_array_set_int64(v5, 0xFFFFFFFFFFFFFFFFLL, self->super._pid);
    xpc_dictionary_set_value(v4, "1", v5);
    xpc_release(v5);
    [v8[5] sendMessage:v4 withReply:&__block_literal_global_121];
    xpc_release(v4);
  }

  else
  {
    [(SSEntity *)self setValue:0 forProperty:@"I"];
  }

  _Block_object_dispose(&v7, 8);
}

id __20__SSDownload_resume__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)restart
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __21__SSDownload_restart__block_invoke;
  v6[3] = &unk_1E84AC698;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dispatchQueue, v6);
  if (v8[5])
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v4, "0", 20);
    v5 = xpc_array_create(0, 0);
    xpc_array_set_int64(v5, 0xFFFFFFFFFFFFFFFFLL, self->super._pid);
    xpc_dictionary_set_value(v4, "1", v5);
    xpc_release(v5);
    [v8[5] sendMessage:v4 withReply:&__block_literal_global_123];
    xpc_release(v4);
  }

  _Block_object_dispose(&v7, 8);
}

id __21__SSDownload_restart__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setBackgroundNetworkingJobGroupName:(id)name
{
  v4 = [name copy];
  [(SSEntity *)self setValue:v4 forProperty:@"s"];
}

- (void)setDownloadHandler:(id)handler completionBlock:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    if (os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_FAULT))
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 & 2;
    }

    if (v10)
    {
      LODWORD(v29) = 136446210;
      *(&v29 + 4) = "[SSDownload setDownloadHandler:completionBlock:]";
      LODWORD(v25) = 12;
      v24 = &v29;
      v11 = _os_log_send_and_compose_impl();
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v29, v25}];
        free(v12);
        SSFileLog(v7, @"%@", v14, v15, v16, v17, v18, v19, v13);
      }
    }
  }

  *&v29 = 0;
  *(&v29 + 1) = &v29;
  v30 = 0x3052000000;
  v31 = __Block_byref_object_copy__0;
  v32 = __Block_byref_object_dispose__0;
  v33 = 0;
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SSDownload_setDownloadHandler_completionBlock___block_invoke;
  block[3] = &unk_1E84AC698;
  block[4] = self;
  block[5] = &v29;
  dispatch_sync(dispatchQueue, block);
  if (*(*(&v29 + 1) + 40))
  {
    v21 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v21, "0", 23);
    xpc_dictionary_set_int64(v21, "1", self->super._pid);
    if (handler)
    {
      xpc_dictionary_set_int64(v21, "2", [handler handlerIdentifier]);
    }

    v22 = *(*(&v29 + 1) + 40);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __49__SSDownload_setDownloadHandler_completionBlock___block_invoke_3;
    v26[3] = &unk_1E84AC7E0;
    v26[4] = block;
    [v22 sendMessage:v21 withReply:{v26, v24}];
    xpc_release(v21);
  }

  else
  {
    -[SSEntity setValue:forProperty:](self, "setValue:forProperty:", [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(handler, "handlerIdentifier")}], @"O");
    if (block)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __49__SSDownload_setDownloadHandler_completionBlock___block_invoke_2;
      v27[3] = &unk_1E84AC710;
      v27[4] = block;
      dispatch_async(global_queue, v27);
    }
  }

  _Block_object_dispose(&v29, 8);
}

id __49__SSDownload_setDownloadHandler_completionBlock___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void __49__SSDownload_setDownloadHandler_completionBlock___block_invoke_3(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 32))
  {
    if (xpc_dictionary_get_BOOL(xdict, "0"))
    {
      v4 = 0;
    }

    else
    {
      v4 = SSXPCDictionaryCopyCFObject(xdict, "1");
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__SSDownload_setDownloadHandler_completionBlock___block_invoke_4;
    v7[3] = &unk_1E84AC738;
    v6 = *(a1 + 32);
    v7[4] = v4;
    v7[5] = v6;
    dispatch_async(global_queue, v7);
  }
}

- (void)setDownloadPolicy:(id)policy
{
  ArchivableData = SSCodingCreateArchivableData(policy);
  v4 = objc_alloc(MEMORY[0x1E695DF20]);
  null = ArchivableData;
  if (!ArchivableData)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v6 = [v4 initWithObjectsAndKeys:{null, @"7", 0}];
  [(SSEntity *)self setExternalValuesWithDictionary:v6];
}

- (void)setNetworkConstraints:(id)constraints
{
  if (constraints)
  {
    v4 = [[SSDownloadPolicy alloc] initWithNetworkConstraints:constraints];
    [(SSDownload *)self setDownloadPolicy:v4];
  }

  else
  {

    [(SSDownload *)self setDownloadPolicy:?];
  }
}

- (void)setValuesWithStoreDownloadMetadata:(id)metadata
{
  newDownloadProperties = [metadata newDownloadProperties];
  [(SSEntity *)self setValuesWithDictionary:newDownloadProperties];
}

- (void)_addCachedExternalValues:(id)values
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SSDownload__addCachedExternalValues___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = values;
  dispatch_sync(dispatchQueue, v4);
}

void *__39__SSDownload__addCachedExternalValues___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    *(*(a1 + 32) + 24) = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2 = *(*(a1 + 32) + 24);
  }

  result = [v2 addEntriesFromDictionary:*(a1 + 40)];
  if (*(*(a1 + 32) + 88))
  {
    result = [*(a1 + 40) objectForKey:@"4"];
    if (result)
    {
      v4 = *(*(a1 + 32) + 88);
      [result floatValue];

      return [v4 setPercentComplete:?];
    }
  }

  return result;
}

- (void)_addCachedPropertyValues:(id)values
{
  dispatchQueue = self->super._dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SSDownload__addCachedPropertyValues___block_invoke;
  v4[3] = &unk_1E84AC458;
  v4[4] = self;
  v4[5] = values;
  dispatch_sync(dispatchQueue, v4);
}

uint64_t __39__SSDownload__addCachedPropertyValues___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    *(*(a1 + 32) + 32) = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2 = *(*(a1 + 32) + 32);
  }

  result = [v2 addEntriesFromDictionary:*(a1 + 40)];
  if (*(*(a1 + 32) + 88))
  {
    v4 = [*(a1 + 40) objectForKey:@"K"];
    v5 = [*(a1 + 40) objectForKey:@"I"];
    if (v5)
    {
      [*(a1 + 32) _applyPhase:v5 toStatus:*(*(a1 + 32) + 88)];
    }

    else if (!v4)
    {
      goto LABEL_13;
    }

    v6 = [*(*(a1 + 32) + 32) objectForKey:@"I"];
    v7 = [*(*(a1 + 32) + 32) objectForKey:@"K"];
    if (v7)
    {
      v8 = [v7 BOOLValue];
      v9 = *(*(a1 + 32) + 88);
      if (v8)
      {
LABEL_9:
        v10 = [v6 isEqualToString:@"SSDownloadPhaseDownloading"];
LABEL_12:
        [v9 setPausable:v10];
LABEL_13:
        result = [*(a1 + 40) objectForKey:@"J"];
        if (result)
        {
          v12 = result;
          v13 = *(a1 + 32);
          v14 = v13[11];
          v15 = [v13 _errorWithData:v12];

          return [v14 setError:v15];
        }

        return result;
      }
    }

    else
    {
      v11 = [*(*(a1 + 32) + 88) isPausable];
      v9 = *(*(a1 + 32) + 88);
      if (v11)
      {
        goto LABEL_9;
      }
    }

    v10 = 0;
    goto LABEL_12;
  }

  return result;
}

- (void)_resetLocalIVars
{
  self->_localAssets = 0;

  self->_prioritizeAboveDownload = 0;
  v3.receiver = self;
  v3.super_class = SSDownload;
  [(SSEntity *)&v3 _resetLocalIVars];
}

- (id)_newAssetWithURL:(id)l assetType:(id)type
{
  v5 = [(SSURLRequestProperties *)[SSMutableURLRequestProperties alloc] initWithURL:l];
  [(SSMutableURLRequestProperties *)v5 setITunesStoreRequest:1];
  v6 = [[SSDownloadAsset alloc] initWithURLRequestProperties:v5];
  [(SSEntity *)v6 setValue:type forProperty:@"e"];

  return v6;
}

- (SSDownload)initWithDownloadMetadata:(id)metadata
{
  v16.receiver = self;
  v16.super_class = SSDownload;
  v4 = [(SSEntity *)&v16 init];
  v5 = v4;
  if (v4)
  {
    [(SSDownload *)v4 setValuesWithStoreDownloadMetadata:metadata];
    sinfs = [metadata sinfs];
    if (sinfs)
    {
      v7 = [MEMORY[0x1E696AE40] dataWithPropertyList:sinfs format:200 options:0 error:0];
    }

    else
    {
      v7 = 0;
    }

    primaryAssetURL = [metadata primaryAssetURL];
    if ([objc_msgSend(primaryAssetURL "host")])
    {
      v9 = [(SSDownload *)v5 _newAssetWithURL:primaryAssetURL assetType:@"media"];
      v10 = v9;
      if (v7)
      {
        [v9 setValue:v7 forProperty:@"B"];
      }

      [(SSDownload *)v5 addAsset:v10 forType:@"media"];
    }

    fullSizeImageURL = [metadata fullSizeImageURL];
    if ([objc_msgSend(fullSizeImageURL "host")])
    {
      v12 = [(SSDownload *)v5 _newAssetWithURL:fullSizeImageURL assetType:@"artwork"];
      [(SSDownload *)v5 addAsset:v12 forType:@"artwork"];
    }

    podcastFeedURL = [metadata podcastFeedURL];
    if ([objc_msgSend(podcastFeedURL "host")])
    {
      v14 = [(SSDownload *)v5 _newAssetWithURL:podcastFeedURL assetType:@"xmlfeed"];
      [(SSDownload *)v5 addAsset:v14 forType:@"xmlfeed"];
    }
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "0", self->super._pid);
  dispatchQueue = self->super._dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__SSDownload_copyXPCEncoding__block_invoke;
  v6[3] = &unk_1E84AC458;
  v6[4] = v3;
  v6[5] = self;
  dispatch_sync(dispatchQueue, v6);
  return v3;
}

void __29__SSDownload_copyXPCEncoding__block_invoke(uint64_t a1)
{
  SSXPCDictionarySetCFObject(*(a1 + 32), "1", *(*(a1 + 40) + 32));
  SSXPCDictionarySetCFObject(*(a1 + 32), "2", *(*(a1 + 40) + 64));
  SSXPCDictionarySetCFObject(*(a1 + 32), "3", *(*(a1 + 40) + 80));
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 24);

  SSXPCDictionarySetCFObject(v2, "4", v3);
}

- (SSDownloadMetadata)metadata
{
  result = self->_metadata;
  if (!result)
  {
    v4 = objc_alloc_init(SSDownloadMetadata);
    self->_metadata = v4;
    [(SSDownloadMetadata *)v4 setValuesFromDownload:self];
    return self->_metadata;
  }

  return result;
}

- (void)setBackgroundNetworkingUserInitiated:(BOOL)initiated
{
  v4 = [MEMORY[0x1E696AD98] numberWithInt:(initiated - 1)];

  [(SSDownload *)self setValue:v4 forKey:@"W"];
}

- (void)setMetadata:(id)metadata
{
  [(SSDownload *)self setValuesWithStoreDownloadMetadata:?];
  metadata = self->_metadata;
  if (metadata)
  {
    v6 = metadata == metadata;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {

    self->_metadata = metadata;
  }
}

- (SSDownloadStatus)status
{
  v23[4] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __20__SSDownload_status__block_invoke;
  block[3] = &unk_1E84AC698;
  block[4] = self;
  block[5] = &v16;
  dispatch_sync(dispatchQueue, block);
  v4 = v17[5];
  if (!v4)
  {
    v5 = objc_alloc_init(SSDownloadStatus);
    v17[5] = v5;
    v23[0] = @"I";
    v23[1] = @"J";
    v23[2] = @"a";
    v23[3] = @"K";
    [(SSEntity *)self getValues:v22 forProperties:v23 count:4];
    [v17[5] setContentRestricted:{objc_msgSend(v22[2], "BOOLValue")}];
    [v17[5] setError:{-[SSDownload _errorWithData:](self, "_errorWithData:", v22[1])}];
    v6 = objc_alloc_init(SSOperationProgress);
    if ([v22[0] isEqualToString:@"SSDownloadPhaseDownloading"])
    {
      -[SSOperationProgress setCanPause:](v6, "setCanPause:", [v22[3] BOOLValue]);
    }

    [(SSDownload *)self percentComplete];
    [(SSOperationProgress *)v6 setNormalizedCurrentValue:(v7 * 100.0)];
    [(SSOperationProgress *)v6 setNormalizedMaxValue:100];
    [v17[5] setOperationProgress:v6];

    [(SSDownload *)self _applyPhase:v22[0] toStatus:v17[5]];
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    for (i = 0; i != 4; ++i)
    {
      v10 = v22[i];
      if (v10)
      {
        [v8 setObject:v10 forKey:v23[i]];
      }
    }

    v11 = self->super._dispatchQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __20__SSDownload_status__block_invoke_2;
    v14[3] = &unk_1E84AC7B0;
    v14[4] = self;
    v14[5] = v8;
    v14[6] = &v16;
    dispatch_sync(v11, v14);

    v4 = v17[5];
  }

  v12 = v4;
  _Block_object_dispose(&v16, 8);
  return v12;
}

id __20__SSDownload_status__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 88);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

id __20__SSDownload_status__block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 32);
  if (v3)
  {
    [v3 addEntriesFromDictionary:a1[5]];
    v2 = a1[4];
  }

  result = *(*(a1[6] + 8) + 40);
  *(a1[4] + 88) = result;
  return result;
}

- (NSDictionary)_localAssets
{
  v2 = [(NSMutableDictionary *)self->_localAssets copy];

  return v2;
}

- (void)_resetStatus
{
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__SSDownload__resetStatus__block_invoke;
  block[3] = &unk_1E84AC408;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

void __26__SSDownload__resetStatus__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 88))
  {
    [*(v1 + 24) removeObjectForKey:@"4"];
    [*(*(a1 + 32) + 32) removeObjectForKey:@"K"];
    [*(*(a1 + 32) + 32) removeObjectForKey:@"I"];
    [*(*(a1 + 32) + 32) removeObjectForKey:@"J"];
    [*(*(a1 + 32) + 32) removeObjectForKey:@"a"];

    *(*(a1 + 32) + 88) = 0;
  }
}

- (void)_applyPhase:(id)phase toStatus:(id)status
{
  [status setFailed:{objc_msgSend(phase, "isEqualToString:", @"SSDownloadPhaseFailed"}];
  [status setPaused:{objc_msgSend(phase, "isEqualToString:", @"SSDownloadPhasePaused"}];
  if ([phase isEqualToString:@"SSDownloadPhaseInstalling"])
  {
    v6 = 1;
  }

  else if ([phase isEqualToString:@"SSDownloadPhaseDownloading"])
  {
    v6 = 2;
  }

  else
  {
    if (![phase isEqualToString:@"SSDownloadPhaseUploading"])
    {
      return;
    }

    v6 = 3;
  }

  [status setOperationType:v6];
}

- (id)_errorWithData:(id)data
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    ObjectWithArchivedData = SSCodingCreateObjectWithArchivedData(data, v4);
  }

  else
  {
    ObjectWithArchivedData = 0;
  }

  return ObjectWithArchivedData;
}

- (id)_errorWithXPCReply:(id)reply
{
  if (!reply)
  {
    goto LABEL_3;
  }

  v4 = MEMORY[0x1DA6E0380](reply, a2);
  v5 = MEMORY[0x1E69E9E80];
  if (v4 != MEMORY[0x1E69E9E80])
  {
    goto LABEL_3;
  }

  if (xpc_dictionary_get_BOOL(reply, "0"))
  {
    return 0;
  }

  value = xpc_dictionary_get_value(reply, "1");
  if (!value || (v8 = value, MEMORY[0x1DA6E0380]() != v5) || (result = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:v8]) == 0)
  {
LABEL_3:

    return SSError(@"SSErrorDomain", 100, 0, 0);
  }

  return result;
}

@end