@interface SSFamilyCircleRequest
- (SSFamilyCircleRequest)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (void)startWithCompletionBlock:(id)a3;
- (void)startWithResponseBlock:(id)a3;
@end

@implementation SSFamilyCircleRequest

- (void)startWithResponseBlock:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      v22 = "[SSFamilyCircleRequest startWithResponseBlock:]";
      LODWORD(v18) = 12;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_15:

        goto LABEL_16;
      }

      v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v21, v18}];
      free(v10);
      SSFileLog(v5, @"%@", v11, v12, v13, v14, v15, v16, v8);
    }

    goto LABEL_15;
  }

LABEL_16:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __48__SSFamilyCircleRequest_startWithResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = v4;
  v17 = v4;
  [(SSRequest *)self _startWithMessageID:141 messageBlock:v19];
}

void __48__SSFamilyCircleRequest_startWithResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  if (*(a1 + 40))
  {
    if (xdict == MEMORY[0x1E69E9E18])
    {
      v5 = SSError(@"SSErrorDomain", 121, 0, 0);
      v6 = 0;
    }

    else
    {
      v3 = objc_alloc(MEMORY[0x1E696ABC0]);
      v4 = xpc_dictionary_get_value(xdict, "2");
      v5 = [v3 initWithXPCEncoding:v4];

      v6 = objc_alloc_init(SSFamilyCircleResponse);
      v7 = [SSFamilyCircle alloc];
      v8 = xpc_dictionary_get_value(xdict, "1");
      v9 = [(SSFamilyCircle *)v7 initWithXPCEncoding:v8];

      [(SSFamilyCircleResponse *)v6 setFamilyCircle:v9];
    }

    (*(*(a1 + 40) + 16))();
  }

  [*(a1 + 32) _shutdownRequest];
}

- (void)startWithCompletionBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__SSFamilyCircleRequest_startWithCompletionBlock___block_invoke;
  v6[3] = &unk_1E84B2CE0;
  v7 = v4;
  v5 = v4;
  [(SSFamilyCircleRequest *)self startWithResponseBlock:v6];
}

uint64_t __50__SSFamilyCircleRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (SSFamilyCircleRequest)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v10.receiver = self;
    v10.super_class = SSFamilyCircleRequest;
    v6 = [(SSRequest *)&v10 init];
    if (v6)
    {
      v6->_authenticationPromptStyle = xpc_dictionary_get_int64(v5, "1");
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v8);
      v6->_fetchITunesAccountNames = [v9 BOOLValue];
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_fetchITunesAccountNames];
  SSXPCDictionarySetObject(v3, "0", v4);

  xpc_dictionary_set_int64(v3, "1", self->_authenticationPromptStyle);
  return v3;
}

@end