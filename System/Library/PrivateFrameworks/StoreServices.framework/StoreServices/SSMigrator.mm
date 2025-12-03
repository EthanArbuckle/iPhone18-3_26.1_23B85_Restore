@interface SSMigrator
- (SSMigrator)init;
- (void)performMigration:(unint64_t)migration completionBlock:(id)block;
@end

@implementation SSMigrator

- (SSMigrator)init
{
  v6.receiver = self;
  v6.super_class = SSMigrator;
  v2 = [(SSMigrator *)&v6 init];
  if (v2)
  {
    v3 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    connection = v2->_connection;
    v2->_connection = v3;
  }

  return v2;
}

- (void)performMigration:(unint64_t)migration completionBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
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
      v26 = 136446210;
      v27 = "[SSMigrator performMigration:completionBlock:]";
      LODWORD(v23) = 12;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v26, v23}];
      free(v12);
      SSFileLog(v7, @"%@", v13, v14, v15, v16, v17, v18, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19 = SSXPCCreateMessageDictionary(116);
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:migration];
  SSXPCDictionarySetObject(v19, "1", v20);

  NSLog(&cfstr_PerformingMigr.isa, migration);
  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __47__SSMigrator_performMigration_completionBlock___block_invoke;
  v24[3] = &unk_1E84AE2D8;
  v25 = blockCopy;
  v22 = blockCopy;
  [(SSXPCConnection *)connection sendMessage:v19 withReply:v24];
}

void __47__SSMigrator_performMigration_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  NSLog(&cfstr_WeAreBackWitHa.isa, xdict);
  v3 = xdict;
  if (*(a1 + 32))
  {
    if (xdict == MEMORY[0x1E69E9E20] || xdict == MEMORY[0x1E69E9E18])
    {
      v5 = 121;
    }

    else
    {
      if (xdict && MEMORY[0x1DA6E0380](xdict) == MEMORY[0x1E69E9E80])
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