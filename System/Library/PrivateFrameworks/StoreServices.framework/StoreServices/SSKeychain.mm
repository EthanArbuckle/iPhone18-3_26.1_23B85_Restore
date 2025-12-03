@interface SSKeychain
- (SSKeychain)init;
- (void)_sendMessage:(id)message completionBlock:(id)block;
- (void)createAttestationDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose completionBlock:(id)block;
- (void)createX509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose completionBlock:(id)block;
- (void)deleteKeychainTokensForAccountIdentifier:(id)identifier completionBlock:(id)block;
- (void)getPublicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose completionBlock:(id)block;
- (void)keyCountForAccountIdentifier:(id)identifier completionBlock:(id)block;
- (void)signData:(id)data context:(id)context completionBlock:(id)block;
- (void)signData:(id)data reason:(id)reason fallback:(id)fallback cancel:(id)cancel forAccountIdentifier:(id)identifier completionBlock:(id)block;
- (void)x509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose regenerateCerts:(BOOL)certs completionBlock:(id)block;
@end

@implementation SSKeychain

- (SSKeychain)init
{
  v11.receiver = self;
  v11.super_class = SSKeychain;
  v2 = [(SSKeychain *)&v11 init];
  if (v2)
  {
    v3 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.StoreServices.SSKeychain.%p", v2];
    v6 = dispatch_queue_create([v5 UTF8String], 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v6;

    v8 = v2->_dispatchQueue;
    v9 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v8, v9);
  }

  return v2;
}

- (void)createAttestationDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose completionBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifierCopy = identifier;
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
      v25 = 136446210;
      v26 = "[SSKeychain createAttestationDataForAccountIdentifier:purpose:completionBlock:]";
      LODWORD(v24) = 12;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v25, v24}];
      free(v15);
      SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v22 = SSXPCCreateMessageDictionary(179);
  SSXPCDictionarySetObject(v22, "1", identifierCopy);

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:purpose];
  SSXPCDictionarySetObject(v22, "2", v23);

  [(SSKeychain *)self _sendMessage:v22 completionBlock:blockCopy];
}

- (void)createX509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose completionBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifierCopy = identifier;
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
      v29 = 136446210;
      v30 = "[SSKeychain createX509CertChainDataForAccountIdentifier:purpose:completionBlock:]";
      LODWORD(v26) = 12;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v29, v26}];
      free(v15);
      SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v22 = SSXPCCreateMessageDictionary(204);
  SSXPCDictionarySetObject(v22, "1", identifierCopy);

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:purpose];
  SSXPCDictionarySetObject(v22, "2", v23);

  connection = self->_connection;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __82__SSKeychain_createX509CertChainDataForAccountIdentifier_purpose_completionBlock___block_invoke;
  v27[3] = &unk_1E84ABEF0;
  v27[4] = self;
  v28 = blockCopy;
  v25 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v22 withReply:v27];
}

void __82__SSKeychain_createX509CertChainDataForAccountIdentifier_purpose_completionBlock___block_invoke(uint64_t a1, void *a2)
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
    v9 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__SSKeychain_createX509CertChainDataForAccountIdentifier_purpose_completionBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v16 = v8;
    v14 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

- (void)deleteKeychainTokensForAccountIdentifier:(id)identifier completionBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
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
      v26 = 136446210;
      v27 = "[SSKeychain deleteKeychainTokensForAccountIdentifier:completionBlock:]";
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
  v20 = SSXPCCreateMessageDictionary(185);
  SSXPCDictionarySetObject(v20, "1", identifierCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __71__SSKeychain_deleteKeychainTokensForAccountIdentifier_completionBlock___block_invoke;
  v24[3] = &unk_1E84ABEF0;
  v24[4] = self;
  v25 = blockCopy;
  v22 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v20 withReply:v24];
}

void __71__SSKeychain_deleteKeychainTokensForAccountIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2)
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
    v9 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__SSKeychain_deleteKeychainTokensForAccountIdentifier_completionBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v16 = v8;
    v14 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

uint64_t __71__SSKeychain_deleteKeychainTokensForAccountIdentifier_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) isEqualToNumber:&unk_1F507A0A8];
  v4 = *(a1 + 40);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

- (void)getPublicKeyDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose completionBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifierCopy = identifier;
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
      v25 = 136446210;
      v26 = "[SSKeychain getPublicKeyDataForAccountIdentifier:purpose:completionBlock:]";
      LODWORD(v24) = 12;
      v15 = _os_log_send_and_compose_impl();

      if (!v15)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v25, v24}];
      free(v15);
      SSFileLog(v10, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v22 = SSXPCCreateMessageDictionary(180);
  SSXPCDictionarySetObject(v22, "1", identifierCopy);

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:purpose];
  SSXPCDictionarySetObject(v22, "2", v23);

  [(SSKeychain *)self _sendMessage:v22 completionBlock:blockCopy];
}

- (void)keyCountForAccountIdentifier:(id)identifier completionBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
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
      v26 = 136446210;
      v27 = "[SSKeychain keyCountForAccountIdentifier:completionBlock:]";
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
  v20 = SSXPCCreateMessageDictionary(202);
  SSXPCDictionarySetObject(v20, "1", identifierCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__SSKeychain_keyCountForAccountIdentifier_completionBlock___block_invoke;
  v24[3] = &unk_1E84ABEF0;
  v24[4] = self;
  v25 = blockCopy;
  v22 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v20 withReply:v24];
}

void __59__SSKeychain_keyCountForAccountIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2)
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
    uint64 = 0;
    goto LABEL_7;
  }

  uint64 = xpc_dictionary_get_uint64(v4, "0");
  v10 = objc_alloc(MEMORY[0x1E696ABC0]);
  v11 = xpc_dictionary_get_value(v4, "1");
  v6 = [v10 initWithXPCEncoding:v11];

LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__SSKeychain_keyCountForAccountIdentifier_completionBlock___block_invoke_2;
    block[3] = &unk_1E84ABF18;
    v14 = v8;
    v15 = uint64;
    v13 = v6;
    dispatch_async(v9, block);
  }
}

- (void)signData:(id)data reason:(id)reason fallback:(id)fallback cancel:(id)cancel forAccountIdentifier:(id)identifier completionBlock:(id)block
{
  v36 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifierCopy = identifier;
  cancelCopy = cancel;
  fallbackCopy = fallback;
  reasonCopy = reason;
  dataCopy = data;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v20 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v22 = shouldLog | 2;
    }

    else
    {
      v22 = shouldLog;
    }

    oSLogObject = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v24 = v22;
    }

    else
    {
      v24 = v22 & 2;
    }

    if (v24)
    {
      v34 = 136446210;
      v35 = "[SSKeychain signData:reason:fallback:cancel:forAccountIdentifier:completionBlock:]";
      LODWORD(v33) = 12;
      v25 = _os_log_send_and_compose_impl();

      if (!v25)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v25 encoding:{4, &v34, v33}];
      free(v25);
      SSFileLog(v20, @"%@", v26, v27, v28, v29, v30, v31, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v32 = SSXPCCreateMessageDictionary(181);
  SSXPCDictionarySetObject(v32, "1", dataCopy);

  SSXPCDictionarySetObject(v32, "2", reasonCopy);
  SSXPCDictionarySetObject(v32, "3", fallbackCopy);

  SSXPCDictionarySetObject(v32, "4", cancelCopy);
  SSXPCDictionarySetObject(v32, "5", identifierCopy);

  [(SSKeychain *)self _sendMessage:v32 completionBlock:blockCopy];
}

- (void)signData:(id)data context:(id)context completionBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  contextCopy = context;
  dataCopy = data;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v11 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 2;
    }

    if (v15)
    {
      v25 = 136446210;
      v26 = "[SSKeychain signData:context:completionBlock:]";
      LODWORD(v24) = 12;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v25, v24}];
      free(v16);
      SSFileLog(v11, @"%@", v17, v18, v19, v20, v21, v22, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v23 = SSXPCCreateMessageDictionary(192);
  SSXPCDictionarySetObject(v23, "1", dataCopy);

  SSXPCDictionarySetObject(v23, "2", contextCopy);
  [(SSKeychain *)self _sendMessage:v23 completionBlock:blockCopy];
}

- (void)x509CertChainDataForAccountIdentifier:(id)identifier purpose:(int64_t)purpose regenerateCerts:(BOOL)certs completionBlock:(id)block
{
  certsCopy = certs;
  v34 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifierCopy = identifier;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v12 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = shouldLog | 2;
    }

    else
    {
      v14 = shouldLog;
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 & 2;
    }

    if (v16)
    {
      v32 = 136446210;
      v33 = "[SSKeychain x509CertChainDataForAccountIdentifier:purpose:regenerateCerts:completionBlock:]";
      LODWORD(v29) = 12;
      v17 = _os_log_send_and_compose_impl();

      if (!v17)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v32, v29}];
      free(v17);
      SSFileLog(v12, @"%@", v18, v19, v20, v21, v22, v23, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v24 = SSXPCCreateMessageDictionary(205);
  SSXPCDictionarySetObject(v24, "1", identifierCopy);

  v25 = [MEMORY[0x1E696AD98] numberWithInteger:purpose];
  SSXPCDictionarySetObject(v24, "2", v25);

  v26 = [MEMORY[0x1E696AD98] numberWithBool:certsCopy];
  SSXPCDictionarySetObject(v24, "3", v26);

  connection = self->_connection;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __92__SSKeychain_x509CertChainDataForAccountIdentifier_purpose_regenerateCerts_completionBlock___block_invoke;
  v30[3] = &unk_1E84ABEF0;
  v30[4] = self;
  v31 = blockCopy;
  v28 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v24 withReply:v30];
}

void __92__SSKeychain_x509CertChainDataForAccountIdentifier_purpose_regenerateCerts_completionBlock___block_invoke(uint64_t a1, void *a2)
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
    v9 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__SSKeychain_x509CertChainDataForAccountIdentifier_purpose_regenerateCerts_completionBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v16 = v8;
    v14 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

- (void)_sendMessage:(id)message completionBlock:(id)block
{
  blockCopy = block;
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__SSKeychain__sendMessage_completionBlock___block_invoke;
  v9[3] = &unk_1E84ABEF0;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:message withReply:v9];
}

void __43__SSKeychain__sendMessage_completionBlock___block_invoke(uint64_t a1, void *a2)
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
    v9 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__SSKeychain__sendMessage_completionBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v16 = v8;
    v14 = v7;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

@end