@interface SSRentalSyncRequest
- (SSRentalSyncRequest)initWithAccountIdentifier:(id)identifier;
- (SSRentalSyncRequest)initWithSinfs:(id)sinfs;
- (SSRentalSyncRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithConnectionResponseBlock:(id)block;
@end

@implementation SSRentalSyncRequest

- (SSRentalSyncRequest)initWithSinfs:(id)sinfs
{
  sinfsCopy = sinfs;
  if ([sinfsCopy count])
  {
    v9.receiver = self;
    v9.super_class = SSRentalSyncRequest;
    v5 = [(SSRequest *)&v9 init];
    if (v5)
    {
      v6 = [sinfsCopy copy];
      sinfs = v5->_sinfs;
      v5->_sinfs = v6;
    }
  }

  else
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must have at least one sinf"];
    v5 = 0;
  }

  return v5;
}

- (SSRentalSyncRequest)initWithAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy unsignedLongLongValue])
  {
    v9.receiver = self;
    v9.super_class = SSRentalSyncRequest;
    v5 = [(SSRequest *)&v9 init];
    if (v5)
    {
      v6 = [identifierCopy copy];
      accountIdentifier = v5->_accountIdentifier;
      v5->_accountIdentifier = v6;
    }
  }

  else
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must have a valid account identifier"];
    v5 = 0;
  }

  return v5;
}

- (void)startWithConnectionResponseBlock:(id)block
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
      v21 = 136446210;
      v22 = "[SSRentalSyncRequest startWithConnectionResponseBlock:]";
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
  v19[2] = __56__SSRentalSyncRequest_startWithConnectionResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v17 = blockCopy;
  [(SSRequest *)self _startWithMessageID:1016 messageBlock:v19];
}

void __56__SSRentalSyncRequest_startWithConnectionResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v7 = SSError(@"SSErrorDomain", 121, 0, 0);
      v10 = 0;
    }

    else
    {
      v5 = objc_alloc(MEMORY[0x1E696ABC0]);
      v6 = xpc_dictionary_get_value(v4, "1");
      v7 = [v5 initWithXPCEncoding:v6];

      v8 = [SSURLConnectionResponse alloc];
      v9 = xpc_dictionary_get_value(v4, "2");
      v10 = [(SSURLConnectionResponse *)v8 initWithXPCEncoding:v9];
    }

    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__SSRentalSyncRequest_startWithConnectionResponseBlock___block_invoke_2;
    block[3] = &unk_1E84ABEC8;
    v12 = *(a1 + 40);
    v17 = v7;
    v18 = v12;
    v16 = v10;
    v13 = v7;
    v14 = v10;
    dispatch_async(v11, block);
  }

  [*(a1 + 32) _shutdownRequest];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "50", self->_accountIdentifier);
  SSXPCDictionarySetCFObject(v3, "51", self->_sinfs);
  return v3;
}

- (SSRentalSyncRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    objc_opt_class();
    v7 = SSXPCDictionaryCopyCFObjectWithClass(v5, "50");
    accountIdentifier = self->_accountIdentifier;
    self->_accountIdentifier = v7;

    objc_opt_class();
    v9 = SSXPCDictionaryCopyCFObjectWithClass(v5, "51");
    sinfs = self->_sinfs;
    self->_sinfs = v9;
  }

  else
  {
    sinfs = self;
    self = 0;
  }

  return self;
}

@end