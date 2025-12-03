@interface SSURLDataCollection
+ (void)collectURLSessionDataWithBlock:(id)block;
@end

@implementation SSURLDataCollection

+ (void)collectURLSessionDataWithBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v4 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = shouldLog | 2;
    }

    else
    {
      v6 = shouldLog;
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
    {
      v8 = v6;
    }

    else
    {
      v8 = v6 & 2;
    }

    if (v8)
    {
      v21 = 136446210;
      v22 = "+[SSURLDataCollection collectURLSessionDataWithBlock:]";
      LODWORD(v18) = 12;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
LABEL_15:

        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v21, v18}];
      free(v9);
      SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
    }

    goto LABEL_15;
  }

LABEL_16:
  if (blockCopy)
  {
    v16 = SSXPCCreateMessageDictionary(199);
    v17 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    if (v17)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __54__SSURLDataCollection_collectURLSessionDataWithBlock___block_invoke;
      v19[3] = &unk_1E84AE2D8;
      v20 = blockCopy;
      [(SSXPCConnection *)v17 sendMessage:v16 withReply:v19];
    }

    else
    {
      (*(blockCopy + 2))(blockCopy, 0);
    }
  }
}

void __54__SSURLDataCollection_collectURLSessionDataWithBlock___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = objc_opt_class();
    v5 = SSXPCDictionaryCopyObjectWithClass(v3, "0", v4);
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

@end