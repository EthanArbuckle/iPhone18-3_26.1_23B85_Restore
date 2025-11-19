@interface SSVMediaSocialPostRequest
- (SSVMediaSocialPostRequest)initWithPostDescription:(id)a3;
- (SSVMediaSocialPostRequest)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (void)startWithCompletionBlock:(id)a3;
@end

@implementation SSVMediaSocialPostRequest

- (SSVMediaSocialPostRequest)initWithPostDescription:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SSVMediaSocialPostRequest;
  v5 = [(SSRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    postDescription = v5->_postDescription;
    v5->_postDescription = v6;
  }

  return v5;
}

- (void)startWithCompletionBlock:(id)a3
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
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
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
      v22 = "[SSVMediaSocialPostRequest startWithCompletionBlock:]";
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
  v19[2] = __54__SSVMediaSocialPostRequest_startWithCompletionBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = v4;
  v17 = v4;
  [(SSRequest *)self _startWithMessageID:159 messageBlock:v19];
}

void __54__SSVMediaSocialPostRequest_startWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v4 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        v6 = objc_alloc(MEMORY[0x1E696ABC0]);
        v7 = xpc_dictionary_get_value(xdict, "2");
        v5 = [v6 initWithXPCEncoding:v7];

        goto LABEL_8;
      }

      v4 = 111;
    }

    v5 = SSError(@"SSErrorDomain", v4, 0, 0);
LABEL_8:
    (*(*(a1 + 40) + 16))();
  }

  [*(a1 + 32) _shutdownRequest];
}

- (SSVMediaSocialPostRequest)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v12.receiver = self;
    v12.super_class = SSVMediaSocialPostRequest;
    v6 = [(SSRequest *)&v12 init];
    if (v6)
    {
      v8 = [SSVMediaSocialPostDescription alloc];
      v9 = xpc_dictionary_get_value(v5, "0");
      v10 = [(SSVMediaSocialPostDescription *)v8 initWithXPCEncoding:v9];
      postDescription = v6->_postDescription;
      v6->_postDescription = v10;
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
  SSXPCDictionarySetObject(v3, "0", self->_postDescription);
  return v3;
}

@end