@interface SSVInstallManagedApplicationRequest
- (SSVInstallManagedApplicationRequest)initWithItemIdentifer:(id)identifer externalVersionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier bundleVersion:(id)version;
- (SSVInstallManagedApplicationRequest)initWithItemIdentifer:(id)identifer externalVersionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier bundleVersion:(id)version skipDownloads:(BOOL)downloads;
- (SSVInstallManagedApplicationRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithDetailedResponseBlock:(id)block;
- (void)startWithMetadataResponseBlock:(id)block;
- (void)startWithResponseBlock:(id)block;
@end

@implementation SSVInstallManagedApplicationRequest

- (SSVInstallManagedApplicationRequest)initWithItemIdentifer:(id)identifer externalVersionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier bundleVersion:(id)version
{
  identiferCopy = identifer;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  versionCopy = version;
  v24.receiver = self;
  v24.super_class = SSVInstallManagedApplicationRequest;
  v14 = [(SSRequest *)&v24 init];
  if (v14)
  {
    v15 = [bundleIdentifierCopy copy];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = v15;

    v17 = [versionCopy copy];
    bundleVersion = v14->_bundleVersion;
    v14->_bundleVersion = v17;

    v19 = [identifierCopy copy];
    externalVersionIdentifier = v14->_externalVersionIdentifier;
    v14->_externalVersionIdentifier = v19;

    v21 = [identiferCopy copy];
    itemIdentifier = v14->_itemIdentifier;
    v14->_itemIdentifier = v21;
  }

  return v14;
}

- (SSVInstallManagedApplicationRequest)initWithItemIdentifer:(id)identifer externalVersionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier bundleVersion:(id)version skipDownloads:(BOOL)downloads
{
  identiferCopy = identifer;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  versionCopy = version;
  v26.receiver = self;
  v26.super_class = SSVInstallManagedApplicationRequest;
  v16 = [(SSRequest *)&v26 init];
  if (v16)
  {
    v17 = [bundleIdentifierCopy copy];
    bundleIdentifier = v16->_bundleIdentifier;
    v16->_bundleIdentifier = v17;

    v19 = [versionCopy copy];
    bundleVersion = v16->_bundleVersion;
    v16->_bundleVersion = v19;

    v21 = [identifierCopy copy];
    externalVersionIdentifier = v16->_externalVersionIdentifier;
    v16->_externalVersionIdentifier = v21;

    v23 = [identiferCopy copy];
    itemIdentifier = v16->_itemIdentifier;
    v16->_itemIdentifier = v23;

    v16->_skipDownloads = downloads;
  }

  return v16;
}

- (void)startWithResponseBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v21 = 136446210;
      v22 = "[SSVInstallManagedApplicationRequest startWithResponseBlock:]";
      LODWORD(v18) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v21, v18}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __62__SSVInstallManagedApplicationRequest_startWithResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v17 = blockCopy;
  [(SSRequest *)self _startWithMessageID:112 messageBlock:v19];
}

void __62__SSVInstallManagedApplicationRequest_startWithResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        v11 = objc_alloc(MEMORY[0x1E696ABC0]);
        v12 = xpc_dictionary_get_value(v4, "2");
        v6 = [v11 initWithXPCEncoding:v12];

        v7 = xpc_dictionary_get_BOOL(v4, "1");
        if (v7)
        {
LABEL_10:
          v8 = dispatch_get_global_queue(0, 0);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __62__SSVInstallManagedApplicationRequest_startWithResponseBlock___block_invoke_2;
          block[3] = &unk_1E84B08A8;
          v9 = *(a1 + 40);
          v16 = v7;
          v14 = v6;
          v15 = v9;
          v10 = v6;
          dispatch_async(v8, block);

          goto LABEL_11;
        }

LABEL_8:
        if (!v6)
        {
          v6 = SSError(@"SSErrorDomain", 100, 0, 0);
        }

        goto LABEL_10;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_8;
  }

LABEL_11:
  [*(a1 + 32) _shutdownRequest];
}

- (void)startWithDetailedResponseBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v21 = 136446210;
      v22 = "[SSVInstallManagedApplicationRequest startWithDetailedResponseBlock:]";
      LODWORD(v18) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v21, v18}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__SSVInstallManagedApplicationRequest_startWithDetailedResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v17 = blockCopy;
  [(SSRequest *)self _startWithMessageID:113 messageBlock:v19];
}

void __70__SSVInstallManagedApplicationRequest_startWithDetailedResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        v12 = objc_alloc(MEMORY[0x1E696ABC0]);
        v13 = xpc_dictionary_get_value(v4, "2");
        v6 = [v12 initWithXPCEncoding:v13];

        v7 = xpc_dictionary_get_BOOL(v4, "1");
        v14 = objc_opt_class();
        v15 = SSXPCDictionaryCopyObjectWithClass(v4, "3", v14);
        v16 = v15;
        if (v15)
        {
          v8 = [v15 integerValue];
        }

        else
        {
          v8 = 0;
        }

        if (v7)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    v8 = 0;
LABEL_8:
    if (!v6)
    {
      v6 = SSError(@"SSErrorDomain", 100, 0, 0);
    }

LABEL_10:
    v9 = dispatch_get_global_queue(0, 0);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __70__SSVInstallManagedApplicationRequest_startWithDetailedResponseBlock___block_invoke_2;
    v20 = &unk_1E84B08D0;
    v10 = *(a1 + 40);
    v24 = v7;
    v22 = v10;
    v23 = v8;
    v21 = v6;
    v11 = v6;
    dispatch_async(v9, &v17);
  }

  [*(a1 + 32) _shutdownRequest];
}

- (void)startWithMetadataResponseBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v21 = 136446210;
      v22 = "[SSVInstallManagedApplicationRequest startWithMetadataResponseBlock:]";
      LODWORD(v18) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v21, v18}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __70__SSVInstallManagedApplicationRequest_startWithMetadataResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v17 = blockCopy;
  [(SSRequest *)self _startWithMessageID:113 messageBlock:v19];
}

void __70__SSVInstallManagedApplicationRequest_startWithMetadataResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        v14 = objc_alloc(MEMORY[0x1E696ABC0]);
        v15 = xpc_dictionary_get_value(v4, "2");
        v6 = [v14 initWithXPCEncoding:v15];

        v7 = xpc_dictionary_get_BOOL(v4, "1");
        v16 = objc_opt_class();
        v17 = SSXPCDictionaryCopyObjectWithClass(v4, "3", v16);
        v18 = v17;
        if (v17)
        {
          v8 = [v17 integerValue];
        }

        else
        {
          v8 = 0;
        }

        v19 = objc_opt_class();
        v9 = SSXPCDictionaryCopyObjectWithClass(v4, "5", v19);

        if (v7)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    v8 = 0;
    v9 = 0;
LABEL_8:
    if (!v6)
    {
      v6 = SSError(@"SSErrorDomain", 100, 0, 0);
    }

LABEL_10:
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__SSVInstallManagedApplicationRequest_startWithMetadataResponseBlock___block_invoke_2;
    block[3] = &unk_1E84B08F8;
    v11 = *(a1 + 40);
    v25 = v7;
    v23 = v11;
    v24 = v8;
    v21 = v9;
    v22 = v6;
    v12 = v6;
    v13 = v9;
    dispatch_async(v10, block);
  }

  [*(a1 + 32) _shutdownRequest];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_itemIdentifier);
  SSXPCDictionarySetObject(v3, "1", self->_externalVersionIdentifier);
  SSXPCDictionarySetObject(v3, "2", self->_bundleIdentifier);
  SSXPCDictionarySetObject(v3, "3", self->_bundleVersion);
  xpc_dictionary_set_BOOL(v3, "4", self->_skipDownloads);
  return v3;
}

- (SSVInstallManagedApplicationRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v20.receiver = self;
    v20.super_class = SSVInstallManagedApplicationRequest;
    v6 = [(SSRequest *)&v20 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v8);
      itemIdentifier = v6->_itemIdentifier;
      v6->_itemIdentifier = v9;

      v11 = objc_opt_class();
      v12 = SSXPCDictionaryCopyObjectWithClass(v5, "1", v11);
      externalVersionIdentifier = v6->_externalVersionIdentifier;
      v6->_externalVersionIdentifier = v12;

      v14 = objc_opt_class();
      v15 = SSXPCDictionaryCopyObjectWithClass(v5, "2", v14);
      bundleIdentifier = v6->_bundleIdentifier;
      v6->_bundleIdentifier = v15;

      v17 = objc_opt_class();
      v18 = SSXPCDictionaryCopyObjectWithClass(v5, "2", v17);
      bundleVersion = v6->_bundleVersion;
      v6->_bundleVersion = v18;

      v6->_skipDownloads = xpc_dictionary_get_BOOL(v5, "4");
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end