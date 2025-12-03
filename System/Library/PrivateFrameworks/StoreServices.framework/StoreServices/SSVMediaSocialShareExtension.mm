@interface SSVMediaSocialShareExtension
- (SSVMediaSocialShareExtension)init;
- (void)getVisibilityWithCompletionBlock:(id)block;
@end

@implementation SSVMediaSocialShareExtension

- (SSVMediaSocialShareExtension)init
{
  v6.receiver = self;
  v6.super_class = SSVMediaSocialShareExtension;
  v2 = [(SSVMediaSocialShareExtension *)&v6 init];
  if (v2)
  {
    v3 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
    connection = v2->_connection;
    v2->_connection = v3;
  }

  return v2;
}

- (void)getVisibilityWithCompletionBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = blockCopy;
  if (!self->_connection)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D930];
    v22 = @"Send -init before checking visibility";
LABEL_21:
    [v20 raise:v21 format:v22];
    goto LABEL_22;
  }

  if (!blockCopy)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = @"No completion block";
    goto LABEL_21;
  }

  if (!SSIsInternalBuild() || !_os_feature_enabled_impl())
  {
    goto LABEL_18;
  }

  v6 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_FAULT))
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 2;
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  v26 = 136446210;
  v27 = "[SSVMediaSocialShareExtension getVisibilityWithCompletionBlock:]";
  LODWORD(v23) = 12;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v26, v23}];
    free(v11);
    SSFileLog(v6, @"%@", v12, v13, v14, v15, v16, v17, oSLogObject);
LABEL_16:
  }

LABEL_18:
  v18 = SSXPCCreateMessageDictionary(160);
  connection = self->_connection;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __65__SSVMediaSocialShareExtension_getVisibilityWithCompletionBlock___block_invoke;
  v24[3] = &unk_1E84AE2D8;
  v25 = v5;
  [(SSXPCConnection *)connection sendMessage:v18 withReply:v24];

LABEL_22:
}

void __65__SSVMediaSocialShareExtension_getVisibilityWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = v3;
  if (v3 == MEMORY[0x1E69E9E18])
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = 121;
    goto LABEL_6;
  }

  if (!v3 || MEMORY[0x1DA6E0380](v3) != MEMORY[0x1E69E9E80])
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = 111;
LABEL_6:
    v6 = [v4 errorWithDomain:@"SSErrorDomain" code:v5 userInfo:0];
    goto LABEL_7;
  }

  v7 = objc_alloc(MEMORY[0x1E696ABC0]);
  v8 = xpc_dictionary_get_value(xdict, "2");
  v6 = [v7 initWithXPCEncoding:v8];

  xpc_dictionary_get_BOOL(xdict, "1");
LABEL_7:
  (*(*(a1 + 32) + 16))();
}

@end