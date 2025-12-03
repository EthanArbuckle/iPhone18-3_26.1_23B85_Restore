@interface SSBiometrics
- (SSBiometrics)init;
- (void)_sendMessage:(id)message withCompletionBlock:(id)block;
- (void)getAllCachedBiometricHTTPHeadersWithToken:(id)token accountID:(id)d evict:(BOOL)evict completionBlock:(id)block;
- (void)getCachedBiometricAuthenticationContextWithToken:(id)token evict:(BOOL)evict completionBlock:(id)block;
- (void)getCachedBiometricHTTPHeadersWithToken:(id)token accountID:(id)d evict:(BOOL)evict completionBlock:(id)block;
- (void)getConstraintsDictionaryForPurpose:(int64_t)purpose completion:(id)completion;
- (void)getCurrentACLVersionWithCompletion:(id)completion;
- (void)getIdentityMapCountWithCompletionBlock:(id)block;
- (void)getStateWithCompletionBlock:(id)block;
- (void)isIdentityMapValidForAccountIdentifier:(id)identifier completionBlock:(id)block;
- (void)resetAccount:(id)account withCompletionBlock:(id)block;
- (void)resetWithCompletionBlock:(id)block;
- (void)saveIdentityMapForAccountIdentifier:(id)identifier completionBlock:(id)block;
- (void)setAllowed:(BOOL)allowed completionBlock:(id)block;
- (void)setEnabled:(BOOL)enabled withAuthToken:(id)token completionBlock:(id)block;
- (void)setEnabled:(BOOL)enabled withCompletionBlock:(id)block;
- (void)tokenUpdateDidFinishWithLogKey:(id)key completion:(id)completion;
- (void)tokenUpdateShouldStartWithLogKey:(id)key completion:(id)completion;
- (void)tokenUpdateStateWithCompletionBlock:(id)block;
@end

@implementation SSBiometrics

- (SSBiometrics)init
{
  v11.receiver = self;
  v11.super_class = SSBiometrics;
  v2 = [(SSBiometrics *)&v11 init];
  if (v2)
  {
    v3 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.StoreServices.SSBiometrics.%p", v2];
    v6 = dispatch_queue_create([v5 UTF8String], 0);
    clientQueue = v2->_clientQueue;
    v2->_clientQueue = v6;

    v8 = v2->_clientQueue;
    v9 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v8, v9);
  }

  return v2;
}

- (void)getAllCachedBiometricHTTPHeadersWithToken:(id)token accountID:(id)d evict:(BOOL)evict completionBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  dCopy = d;
  tokenCopy = token;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v13 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 & 2;
    }

    if (v17)
    {
      v31 = 136446210;
      v32 = "[SSBiometrics getAllCachedBiometricHTTPHeadersWithToken:accountID:evict:completionBlock:]";
      LODWORD(v28) = 12;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v31, v28}];
      free(v18);
      SSFileLog(v13, @"%@", v19, v20, v21, v22, v23, v24, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v25 = SSXPCCreateMessageDictionary(203);
  SSXPCDictionarySetObject(v25, "1", tokenCopy);

  SSXPCDictionarySetObject(v25, "2", dCopy);
  xpc_dictionary_set_BOOL(v25, "3", evict);
  connection = self->_connection;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __90__SSBiometrics_getAllCachedBiometricHTTPHeadersWithToken_accountID_evict_completionBlock___block_invoke;
  v29[3] = &unk_1E84ABEF0;
  v29[4] = self;
  v30 = blockCopy;
  v27 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v25 withReply:v29];
}

void __90__SSBiometrics_getAllCachedBiometricHTTPHeadersWithToken_accountID_evict_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_7;
  }

  v10 = objc_opt_class();
  v7 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v10);
  v11 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = xpc_dictionary_get_value(v4, "2");
  v6 = [v11 initWithXPCEncoding:v12];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__SSBiometrics_getAllCachedBiometricHTTPHeadersWithToken_accountID_evict_completionBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v16 = v8;
    v14 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

- (void)getCachedBiometricAuthenticationContextWithToken:(id)token evict:(BOOL)evict completionBlock:(id)block
{
  v30 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  tokenCopy = token;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v10 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = shouldLog | 2;
    }

    else
    {
      v12 = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 2;
    }

    if (v14)
    {
      v28 = 136446210;
      v29 = "[SSBiometrics getCachedBiometricAuthenticationContextWithToken:evict:completionBlock:]";
      LODWORD(v25) = 12;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v28, v25}];
      free(v15);
      SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v22 = SSXPCCreateMessageDictionary(195);
  SSXPCDictionarySetObject(v22, "1", tokenCopy);

  xpc_dictionary_set_BOOL(v22, "2", evict);
  connection = self->_connection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __87__SSBiometrics_getCachedBiometricAuthenticationContextWithToken_evict_completionBlock___block_invoke;
  v26[3] = &unk_1E84ABEF0;
  v26[4] = self;
  v27 = blockCopy;
  v24 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v22 withReply:v26];
}

void __87__SSBiometrics_getCachedBiometricAuthenticationContextWithToken_evict_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_7;
  }

  v10 = [SSBiometricAuthenticationContext alloc];
  v11 = xpc_dictionary_get_value(v4, "0");
  v7 = [(SSBiometricAuthenticationContext *)v10 initWithXPCEncoding:v11];

  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v13 = xpc_dictionary_get_value(v4, "1");
  v6 = [v12 initWithXPCEncoding:v13];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__SSBiometrics_getCachedBiometricAuthenticationContextWithToken_evict_completionBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v17 = v8;
    v15 = v7;
    v16 = v6;
    dispatch_async(v9, block);
  }
}

- (void)getCachedBiometricHTTPHeadersWithToken:(id)token accountID:(id)d evict:(BOOL)evict completionBlock:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  dCopy = d;
  tokenCopy = token;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v13 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v13)
    {
      v13 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = shouldLog | 2;
    }

    else
    {
      v15 = shouldLog;
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 & 2;
    }

    if (v17)
    {
      v31 = 136446210;
      v32 = "[SSBiometrics getCachedBiometricHTTPHeadersWithToken:accountID:evict:completionBlock:]";
      LODWORD(v28) = 12;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v31, v28}];
      free(v18);
      SSFileLog(v13, @"%@", v19, v20, v21, v22, v23, v24, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v25 = SSXPCCreateMessageDictionary(196);
  SSXPCDictionarySetObject(v25, "1", tokenCopy);

  SSXPCDictionarySetObject(v25, "2", dCopy);
  xpc_dictionary_set_BOOL(v25, "3", evict);
  connection = self->_connection;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __87__SSBiometrics_getCachedBiometricHTTPHeadersWithToken_accountID_evict_completionBlock___block_invoke;
  v29[3] = &unk_1E84ABEF0;
  v29[4] = self;
  v30 = blockCopy;
  v27 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v25 withReply:v29];
}

void __87__SSBiometrics_getCachedBiometricHTTPHeadersWithToken_accountID_evict_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  v13 = objc_opt_class();
  v7 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v13);
  v14 = objc_opt_class();
  v8 = SSXPCDictionaryCopyObjectWithClass(v4, "1", v14);
  v15 = objc_opt_class();
  v9 = SSXPCDictionaryCopyObjectWithClass(v4, "2", v15);
  v16 = objc_opt_class();
  v10 = SSXPCDictionaryCopyObjectWithClass(v4, "3", v16);
  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = xpc_dictionary_get_value(v4, "4");
  v6 = [v17 initWithXPCEncoding:v18];

LABEL_7:
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(*(a1 + 32) + 8);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __87__SSBiometrics_getCachedBiometricHTTPHeadersWithToken_accountID_evict_completionBlock___block_invoke_2;
    v19[3] = &unk_1E84B3360;
    v25 = v11;
    v20 = v7;
    v21 = v8;
    v22 = v9;
    v23 = v10;
    v24 = v6;
    dispatch_async(v12, v19);
  }
}

- (void)getConstraintsDictionaryForPurpose:(int64_t)purpose completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
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

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v25 = 136446210;
      v26 = "[SSBiometrics getConstraintsDictionaryForPurpose:completion:]";
      LODWORD(v22) = 12;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v25, v22}];
      free(v12);
      SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19 = SSXPCCreateMessageDictionary(214);
  xpc_dictionary_set_BOOL(v19, "1", purpose == 0);
  connection = self->_connection;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __62__SSBiometrics_getConstraintsDictionaryForPurpose_completion___block_invoke;
  v23[3] = &unk_1E84ABEF0;
  v23[4] = self;
  v24 = completionCopy;
  v21 = completionCopy;
  [(SSXPCConnection *)connection sendMessage:v19 withReply:v23];
}

void __62__SSBiometrics_getConstraintsDictionaryForPurpose_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_7;
  }

  v10 = objc_opt_class();
  v7 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v10);
  v11 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = xpc_dictionary_get_value(v4, "1");
  v6 = [v11 initWithXPCEncoding:v12];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SSBiometrics_getConstraintsDictionaryForPurpose_completion___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v16 = v8;
    v14 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

- (void)getCurrentACLVersionWithCompletion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v23 = 136446210;
      v24 = "[SSBiometrics getCurrentACLVersionWithCompletion:]";
      LODWORD(v20) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v23, v20}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v17 = SSXPCCreateMessageDictionary(213);
  connection = self->_connection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __51__SSBiometrics_getCurrentACLVersionWithCompletion___block_invoke;
  v21[3] = &unk_1E84ABEF0;
  v21[4] = self;
  v22 = completionCopy;
  v19 = completionCopy;
  [(SSXPCConnection *)connection sendMessage:v17 withReply:v21];
}

void __51__SSBiometrics_getCurrentACLVersionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_7;
  }

  v10 = objc_opt_class();
  v7 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v10);
  v11 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = xpc_dictionary_get_value(v4, "1");
  v6 = [v11 initWithXPCEncoding:v12];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SSBiometrics_getCurrentACLVersionWithCompletion___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v16 = v8;
    v14 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

- (void)getStateWithCompletionBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v23 = 136446210;
      v24 = "[SSBiometrics getStateWithCompletionBlock:]";
      LODWORD(v20) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v23, v20}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v17 = SSXPCCreateMessageDictionary(122);
  connection = self->_connection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __44__SSBiometrics_getStateWithCompletionBlock___block_invoke;
  v21[3] = &unk_1E84ABEF0;
  v21[4] = self;
  v22 = blockCopy;
  v19 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v17 withReply:v21];
}

void __44__SSBiometrics_getStateWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    int64 = 5;
    goto LABEL_7;
  }

  int64 = xpc_dictionary_get_int64(v4, "0");
  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = xpc_dictionary_get_value(v4, "1");
  v6 = [v10 initWithXPCEncoding:v11];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SSBiometrics_getStateWithCompletionBlock___block_invoke_2;
    block[3] = &unk_1E84ABF18;
    v14 = v8;
    v15 = int64;
    v13 = v6;
    dispatch_async(v9, block);
  }
}

- (void)resetAccount:(id)account withCompletionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  accountCopy = account;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v22 = 136446210;
      v23 = "[SSBiometrics resetAccount:withCompletionBlock:]";
      LODWORD(v21) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v22, v21}];
      free(v13);
      SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v20 = SSXPCCreateMessageDictionary(125);
  SSXPCDictionarySetObject(v20, "1", accountCopy);

  [(SSBiometrics *)self _sendMessage:v20 withCompletionBlock:blockCopy];
}

- (void)resetWithCompletionBlock:(id)block
{
  v21 = *MEMORY[0x1E69E9840];
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
      v19 = 136446210;
      v20 = "[SSBiometrics resetWithCompletionBlock:]";
      LODWORD(v18) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v19, v18}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v17 = SSXPCCreateMessageDictionary(124);
  [(SSBiometrics *)self _sendMessage:v17 withCompletionBlock:blockCopy];
}

- (void)setEnabled:(BOOL)enabled withCompletionBlock:(id)block
{
  enabledCopy = enabled;
  v6 = MEMORY[0x1E695DEF0];
  blockCopy = block;
  data = [v6 data];
  [(SSBiometrics *)self setEnabled:enabledCopy withAuthToken:data completionBlock:blockCopy];
}

- (void)setEnabled:(BOOL)enabled withAuthToken:(id)token completionBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  tokenCopy = token;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v10 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = shouldLog | 2;
    }

    else
    {
      v12 = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 2;
    }

    if (v14)
    {
      v24 = 136446210;
      v25 = "[SSBiometrics setEnabled:withAuthToken:completionBlock:]";
      LODWORD(v23) = 12;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v24, v23}];
      free(v15);
      SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v22 = SSXPCCreateMessageDictionary(123);
  xpc_dictionary_set_BOOL(v22, "1", enabled);
  SSXPCDictionarySetCFObject(v22, "2", tokenCopy);

  [(SSBiometrics *)self _sendMessage:v22 withCompletionBlock:blockCopy];
}

- (void)setAllowed:(BOOL)allowed completionBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
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

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v21 = 136446210;
      v22 = "[SSBiometrics setAllowed:completionBlock:]";
      LODWORD(v20) = 12;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v21, v20}];
      free(v12);
      SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19 = SSXPCCreateMessageDictionary(126);
  xpc_dictionary_set_BOOL(v19, "1", allowed);
  [(SSBiometrics *)self _sendMessage:v19 withCompletionBlock:blockCopy];
}

- (void)tokenUpdateDidFinishWithLogKey:(id)key completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  keyCopy = key;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v26 = 136446210;
      v27 = "[SSBiometrics tokenUpdateDidFinishWithLogKey:completion:]";
      LODWORD(v23) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v26, v23}];
      free(v13);
      SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v20 = SSXPCCreateMessageDictionary(206);
  SSXPCDictionarySetObject(v20, "1", keyCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __58__SSBiometrics_tokenUpdateDidFinishWithLogKey_completion___block_invoke;
  v24[3] = &unk_1E84ABEF0;
  v24[4] = self;
  v25 = completionCopy;
  v22 = completionCopy;
  [(SSXPCConnection *)connection sendMessage:v20 withReply:v24];
}

void __58__SSBiometrics_tokenUpdateDidFinishWithLogKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    goto LABEL_7;
  }

  v9 = objc_alloc(MEMORY[0x1E696ABC0]);
  v10 = xpc_dictionary_get_value(v4, "0");
  v6 = [v9 initWithXPCEncoding:v10];

LABEL_7:
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 8);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__SSBiometrics_tokenUpdateDidFinishWithLogKey_completion___block_invoke_2;
    v11[3] = &unk_1E84AC338;
    v13 = v7;
    v12 = v6;
    dispatch_async(v8, v11);
  }
}

- (void)tokenUpdateShouldStartWithLogKey:(id)key completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  keyCopy = key;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v26 = 136446210;
      v27 = "[SSBiometrics tokenUpdateShouldStartWithLogKey:completion:]";
      LODWORD(v23) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v26, v23}];
      free(v13);
      SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v20 = SSXPCCreateMessageDictionary(207);
  SSXPCDictionarySetObject(v20, "1", keyCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __60__SSBiometrics_tokenUpdateShouldStartWithLogKey_completion___block_invoke;
  v24[3] = &unk_1E84ABEF0;
  v24[4] = self;
  v25 = completionCopy;
  v22 = completionCopy;
  [(SSXPCConnection *)connection sendMessage:v20 withReply:v24];
}

void __60__SSBiometrics_tokenUpdateShouldStartWithLogKey_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 1;
    goto LABEL_7;
  }

  v7 = xpc_dictionary_get_BOOL(v4, "0");
  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = xpc_dictionary_get_value(v4, "1");
  v6 = [v10 initWithXPCEncoding:v11];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__SSBiometrics_tokenUpdateShouldStartWithLogKey_completion___block_invoke_2;
    block[3] = &unk_1E84B08A8;
    v14 = v8;
    v15 = v7;
    v13 = v6;
    dispatch_async(v9, block);
  }
}

- (void)tokenUpdateStateWithCompletionBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
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
      v23 = 136446210;
      v24 = "[SSBiometrics tokenUpdateStateWithCompletionBlock:]";
      LODWORD(v20) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v23, v20}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v17 = SSXPCCreateMessageDictionary(208);
  connection = self->_connection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __52__SSBiometrics_tokenUpdateStateWithCompletionBlock___block_invoke;
  v21[3] = &unk_1E84ABEF0;
  v21[4] = self;
  v22 = blockCopy;
  v19 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v17 withReply:v21];
}

void __52__SSBiometrics_tokenUpdateStateWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    int64 = 0;
    goto LABEL_7;
  }

  int64 = xpc_dictionary_get_int64(v4, "0");
  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = xpc_dictionary_get_value(v4, "1");
  v6 = [v10 initWithXPCEncoding:v11];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__SSBiometrics_tokenUpdateStateWithCompletionBlock___block_invoke_2;
    block[3] = &unk_1E84ABF18;
    v14 = v8;
    v15 = int64;
    v13 = v6;
    dispatch_async(v9, block);
  }
}

- (void)getIdentityMapCountWithCompletionBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v9 = v7;
    }

    else
    {
      v9 = v7 & 2;
    }

    if (v9)
    {
      v23 = 136446210;
      v24 = "[SSBiometrics getIdentityMapCountWithCompletionBlock:]";
      LODWORD(v20) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v23, v20}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v17 = SSXPCCreateMessageDictionary(182);
  connection = self->_connection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __55__SSBiometrics_getIdentityMapCountWithCompletionBlock___block_invoke;
  v21[3] = &unk_1E84ABEF0;
  v21[4] = self;
  v22 = blockCopy;
  v19 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v17 withReply:v21];
}

void __55__SSBiometrics_getIdentityMapCountWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_7;
  }

  v10 = objc_opt_class();
  v11 = SSXPCDictionaryCopyObjectWithClass(v4, "0", v10);
  v7 = [v11 unsignedIntegerValue];

  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v13 = xpc_dictionary_get_value(v4, "1");
  v6 = [v12 initWithXPCEncoding:v13];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__SSBiometrics_getIdentityMapCountWithCompletionBlock___block_invoke_2;
    block[3] = &unk_1E84ABF18;
    v16 = v8;
    v17 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

- (void)isIdentityMapValidForAccountIdentifier:(id)identifier completionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifierCopy = identifier;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v22 = 136446210;
      v23 = "[SSBiometrics isIdentityMapValidForAccountIdentifier:completionBlock:]";
      LODWORD(v21) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v22, v21}];
      free(v13);
      SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v20 = SSXPCCreateMessageDictionary(183);
  SSXPCDictionarySetObject(v20, "1", identifierCopy);

  [(SSBiometrics *)self _sendMessage:v20 withCompletionBlock:blockCopy];
}

- (void)saveIdentityMapForAccountIdentifier:(id)identifier completionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifierCopy = identifier;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v8 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v8 shouldLog];
    if ([v8 shouldLogToDisk])
    {
      v10 = shouldLog | 2;
    }

    else
    {
      v10 = shouldLog;
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 2;
    }

    if (v12)
    {
      v22 = 136446210;
      v23 = "[SSBiometrics saveIdentityMapForAccountIdentifier:completionBlock:]";
      LODWORD(v21) = 12;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v22, v21}];
      free(v13);
      SSFileLog(v8, @"%@", v14, v15, v16, v17, v18, v19, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v20 = SSXPCCreateMessageDictionary(184);
  SSXPCDictionarySetObject(v20, "1", identifierCopy);

  [(SSBiometrics *)self _sendMessage:v20 withCompletionBlock:blockCopy];
}

- (void)_sendMessage:(id)message withCompletionBlock:(id)block
{
  blockCopy = block;
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__SSBiometrics__sendMessage_withCompletionBlock___block_invoke;
  v9[3] = &unk_1E84ABEF0;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:message withReply:v9];
}

void __49__SSBiometrics__sendMessage_withCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
LABEL_6:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_7;
  }

  v7 = xpc_dictionary_get_BOOL(v4, "0");
  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = xpc_dictionary_get_value(v4, "1");
  v6 = [v10 initWithXPCEncoding:v11];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__SSBiometrics__sendMessage_withCompletionBlock___block_invoke_2;
    block[3] = &unk_1E84B08A8;
    v14 = v8;
    v15 = v7;
    v13 = v6;
    dispatch_async(v9, block);
  }
}

@end