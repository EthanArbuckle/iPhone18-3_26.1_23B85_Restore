@interface SSSoftwareLibrary
- (SSSoftwareLibrary)init;
- (void)_getItemsWithMessage:(id)message completionBlock:(id)block;
- (void)_sendDemotionMessage:(id)message completionBlock:(id)block;
- (void)demoteApplicationWithBundleIdentifier:(id)identifier completionBlock:(id)block;
- (void)getLibraryItemForBundleIdentifiers:(id)identifiers completionBlock:(id)block;
- (void)getLibraryItemsForITunesStoreItemIdentifiers:(id)identifiers completionBlock:(id)block;
- (void)getRemovableSytemApplicationsWithCompletionBlock:(id)block;
- (void)hasDemotedApplicationsWithCompletionBlock:(id)block;
- (void)isInstalledApplicationWithBundleIdentifier:(id)identifier completionBlock:(id)block;
- (void)isRemovedSystemApplicationWithBundleIdentifier:(id)identifier completionBlock:(id)block;
- (void)playableApplicationsWithBundleIdentifiers:(id)identifiers completionBlock:(id)block;
- (void)refreshReceiptsWithCompletionBlock:(id)block;
- (void)restoreAllDemotedApplicationsWithOptions:(id)options completionBlock:(id)block;
- (void)restoreDemotedApplicationWithBundleIdentifier:(id)identifier options:(id)options completionBlock:(id)block;
@end

@implementation SSSoftwareLibrary

- (SSSoftwareLibrary)init
{
  v6.receiver = self;
  v6.super_class = SSSoftwareLibrary;
  v2 = [(SSSoftwareLibrary *)&v6 init];
  if (v2)
  {
    v3 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    connection = v2->_connection;
    v2->_connection = v3;
  }

  return v2;
}

- (void)demoteApplicationWithBundleIdentifier:(id)identifier completionBlock:(id)block
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
      v23 = "[SSSoftwareLibrary demoteApplicationWithBundleIdentifier:completionBlock:]";
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
  v20 = SSXPCCreateMessageDictionary(161);
  SSXPCDictionarySetObject(v20, "1", identifierCopy);

  [(SSSoftwareLibrary *)self _sendDemotionMessage:v20 completionBlock:blockCopy];
}

- (void)getLibraryItemForBundleIdentifiers:(id)identifiers completionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifiersCopy = identifiers;
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
      v23 = "[SSSoftwareLibrary getLibraryItemForBundleIdentifiers:completionBlock:]";
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
  v20 = SSXPCCreateMessageDictionary(89);
  SSXPCDictionarySetObject(v20, "1", identifiersCopy);

  [(SSSoftwareLibrary *)self _getItemsWithMessage:v20 completionBlock:blockCopy];
}

- (void)getLibraryItemsForITunesStoreItemIdentifiers:(id)identifiers completionBlock:(id)block
{
  blockCopy = block;
  identifiersCopy = identifiers;
  v8 = SSXPCCreateMessageDictionary(89);
  SSXPCDictionarySetObject(v8, "2", identifiersCopy);

  [(SSSoftwareLibrary *)self _getItemsWithMessage:v8 completionBlock:blockCopy];
}

- (void)getRemovableSytemApplicationsWithCompletionBlock:(id)block
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
      v19 = 136446210;
      v20 = "[SSSoftwareLibrary getRemovableSytemApplicationsWithCompletionBlock:]";
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
  v17 = SSXPCCreateMessageDictionary(172);
  [(SSSoftwareLibrary *)self _getItemsWithMessage:v17 completionBlock:blockCopy];
}

- (void)hasDemotedApplicationsWithCompletionBlock:(id)block
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
      v24 = "[SSSoftwareLibrary hasDemotedApplicationsWithCompletionBlock:]";
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
  v17 = SSXPCCreateMessageDictionary(169);
  connection = self->_connection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__SSSoftwareLibrary_hasDemotedApplicationsWithCompletionBlock___block_invoke;
  v21[3] = &unk_1E84AE2D8;
  v22 = blockCopy;
  v19 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v17 withReply:v21];
}

void __63__SSSoftwareLibrary_hasDemotedApplicationsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = v3 == MEMORY[0x1E69E9E20] || v3 == MEMORY[0x1E69E9E18];
    xdict = v3;
    if (v4)
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        xpc_dictionary_get_BOOL(xdict, "1");
        v6 = 0;
        goto LABEL_12;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
LABEL_12:
    (*(*(a1 + 32) + 16))();

    v3 = xdict;
  }
}

- (void)isInstalledApplicationWithBundleIdentifier:(id)identifier completionBlock:(id)block
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
      v26 = 136446210;
      v27 = "[SSSoftwareLibrary isInstalledApplicationWithBundleIdentifier:completionBlock:]";
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
  v20 = SSXPCCreateMessageDictionary(167);
  SSXPCDictionarySetObject(v20, "1", identifierCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __80__SSSoftwareLibrary_isInstalledApplicationWithBundleIdentifier_completionBlock___block_invoke;
  v24[3] = &unk_1E84AE2D8;
  v25 = blockCopy;
  v22 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v20 withReply:v24];
}

void __80__SSSoftwareLibrary_isInstalledApplicationWithBundleIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = v3 == MEMORY[0x1E69E9E20] || v3 == MEMORY[0x1E69E9E18];
    xdict = v3;
    if (v4)
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        xpc_dictionary_get_BOOL(xdict, "0");
        v6 = 0;
        goto LABEL_12;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
LABEL_12:
    (*(*(a1 + 32) + 16))();

    v3 = xdict;
  }
}

- (void)isRemovedSystemApplicationWithBundleIdentifier:(id)identifier completionBlock:(id)block
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
      v27 = "[SSSoftwareLibrary isRemovedSystemApplicationWithBundleIdentifier:completionBlock:]";
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
  v20 = SSXPCCreateMessageDictionary(168);
  SSXPCDictionarySetObject(v20, "1", identifierCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __84__SSSoftwareLibrary_isRemovedSystemApplicationWithBundleIdentifier_completionBlock___block_invoke;
  v24[3] = &unk_1E84AE2D8;
  v25 = blockCopy;
  v22 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v20 withReply:v24];
}

void __84__SSSoftwareLibrary_isRemovedSystemApplicationWithBundleIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = v3 == MEMORY[0x1E69E9E20] || v3 == MEMORY[0x1E69E9E18];
    xdict = v3;
    if (v4)
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        xpc_dictionary_get_BOOL(xdict, "0");
        v6 = 0;
        goto LABEL_12;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
LABEL_12:
    (*(*(a1 + 32) + 16))();

    v3 = xdict;
  }
}

- (void)playableApplicationsWithBundleIdentifiers:(id)identifiers completionBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  identifiersCopy = identifiers;
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
      v27 = "[SSSoftwareLibrary playableApplicationsWithBundleIdentifiers:completionBlock:]";
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
  v20 = SSXPCCreateMessageDictionary(186);
  SSXPCDictionarySetObject(v20, "1", identifiersCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __79__SSSoftwareLibrary_playableApplicationsWithBundleIdentifiers_completionBlock___block_invoke;
  v24[3] = &unk_1E84AE2D8;
  v25 = blockCopy;
  v22 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v20 withReply:v24];
}

void __79__SSSoftwareLibrary_playableApplicationsWithBundleIdentifiers_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3 == MEMORY[0x1E69E9E20] || v3 == MEMORY[0x1E69E9E18];
  xdict = v3;
  if (v4)
  {
    v5 = 121;
LABEL_10:
    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    goto LABEL_11;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v5 = 111;
    goto LABEL_10;
  }

  objc_opt_class();
  v7 = SSXPCDictionaryCopyCFObjectWithClass(xdict, "1");
  v8 = objc_alloc(MEMORY[0x1E696ABC0]);
  v9 = xpc_dictionary_get_value(xdict, "2");
  v6 = [v8 initWithXPCEncoding:v9];

LABEL_11:
  (*(*(a1 + 32) + 16))();
}

- (void)refreshReceiptsWithCompletionBlock:(id)block
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
      v24 = "[SSSoftwareLibrary refreshReceiptsWithCompletionBlock:]";
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
  v17 = SSXPCCreateMessageDictionary(117);
  connection = self->_connection;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __56__SSSoftwareLibrary_refreshReceiptsWithCompletionBlock___block_invoke;
  v21[3] = &unk_1E84AE2D8;
  v22 = blockCopy;
  v19 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v17 withReply:v21];
}

void __56__SSSoftwareLibrary_refreshReceiptsWithCompletionBlock___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  if (*(a1 + 32))
  {
    v3 = xpc_dictionary_get_value(xdict, "1");
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:v3];
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    (*(*(a1 + 32) + 16))();
  }
}

- (void)restoreAllDemotedApplicationsWithOptions:(id)options completionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  optionsCopy = options;
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
      v23 = "[SSSoftwareLibrary restoreAllDemotedApplicationsWithOptions:completionBlock:]";
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
  v20 = SSXPCCreateMessageDictionary(162);
  SSXPCDictionarySetObject(v20, "2", optionsCopy);

  [(SSSoftwareLibrary *)self _sendDemotionMessage:v20 completionBlock:blockCopy];
}

- (void)restoreDemotedApplicationWithBundleIdentifier:(id)identifier options:(id)options completionBlock:(id)block
{
  v27 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  optionsCopy = options;
  identifierCopy = identifier;
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
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
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
      v26 = "[SSSoftwareLibrary restoreDemotedApplicationWithBundleIdentifier:options:completionBlock:]";
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
  v23 = SSXPCCreateMessageDictionary(162);
  SSXPCDictionarySetObject(v23, "1", identifierCopy);

  SSXPCDictionarySetObject(v23, "2", optionsCopy);
  [(SSSoftwareLibrary *)self _sendDemotionMessage:v23 completionBlock:blockCopy];
}

- (void)_getItemsWithMessage:(id)message completionBlock:(id)block
{
  blockCopy = block;
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SSSoftwareLibrary__getItemsWithMessage_completionBlock___block_invoke;
  v9[3] = &unk_1E84AE2D8;
  v10 = blockCopy;
  v8 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:message withReply:v9];
}

void __58__SSSoftwareLibrary__getItemsWithMessage_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 == MEMORY[0x1E69E9E20] || v3 == MEMORY[0x1E69E9E18])
  {
    v6 = 121;
LABEL_10:
    v7 = SSError(@"SSErrorDomain", v6, 0, 0);
    v8 = 0;
    goto LABEL_11;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v6 = 111;
    goto LABEL_10;
  }

  v9 = xpc_dictionary_get_value(v4, "1");
  v10 = v9;
  if (v9 && MEMORY[0x1DA6E0380](v9) == MEMORY[0x1E69E9E50])
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __58__SSSoftwareLibrary__getItemsWithMessage_completionBlock___block_invoke_2;
    applier[3] = &unk_1E84AC3D8;
    v8 = v11;
    v15 = v8;
    xpc_array_apply(v10, applier);
  }

  else
  {
    v8 = 0;
  }

  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v13 = xpc_dictionary_get_value(v4, "2");
  v7 = [v12 initWithXPCEncoding:v13];

LABEL_11:
  (*(*(a1 + 32) + 16))();
}

uint64_t __58__SSSoftwareLibrary__getItemsWithMessage_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[SSSoftwareLibraryItem alloc] initWithXPCEncoding:v4];

  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

- (void)_sendDemotionMessage:(id)message completionBlock:(id)block
{
  blockCopy = block;
  connection = self->_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SSSoftwareLibrary__sendDemotionMessage_completionBlock___block_invoke;
  v9[3] = &unk_1E84AE2D8;
  v10 = blockCopy;
  v8 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:message withReply:v9];
}

void __58__SSSoftwareLibrary__sendDemotionMessage_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = v3 == MEMORY[0x1E69E9E20] || v3 == MEMORY[0x1E69E9E18];
    xdict = v3;
    if (v4)
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        v7 = objc_alloc(MEMORY[0x1E696ABC0]);
        v8 = xpc_dictionary_get_value(xdict, "2");
        v6 = [v7 initWithXPCEncoding:v8];

        xpc_dictionary_get_BOOL(xdict, "1");
        goto LABEL_12;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
LABEL_12:
    (*(*(a1 + 32) + 16))();

    v3 = xdict;
  }
}

@end