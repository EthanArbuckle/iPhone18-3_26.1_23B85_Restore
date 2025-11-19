@interface SSRentalCheckinRequest
- (NSArray)sinfs;
- (NSNumber)accountIdentifier;
- (NSNumber)rentalKeyIdentifier;
- (SSRentalCheckinRequest)initWithAccountIdentifier:(id)a3 rentalKeyIdentifier:(id)a4;
- (SSRentalCheckinRequest)initWithSinfs:(id)a3;
- (SSRentalCheckinRequest)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (void)dealloc;
- (void)startWithCompletionBlock:(id)a3;
- (void)startWithConnectionResponseBlock:(id)a3;
@end

@implementation SSRentalCheckinRequest

- (SSRentalCheckinRequest)initWithAccountIdentifier:(id)a3 rentalKeyIdentifier:(id)a4
{
  if (![a3 unsignedLongLongValue])
  {

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Must have a valid account identifier";
LABEL_7:
    [v8 raise:v9 format:v10];
    return 0;
  }

  if (![a4 unsignedLongLongValue])
  {

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Must have a valid rental key identifier";
    goto LABEL_7;
  }

  v12.receiver = self;
  v12.super_class = SSRentalCheckinRequest;
  v7 = [(SSRequest *)&v12 init];
  if (v7)
  {
    v7->_accountIdentifier = [a3 copy];
    v7->_rentalKeyIdentifier = [a4 copy];
  }

  return v7;
}

- (SSRentalCheckinRequest)initWithSinfs:(id)a3
{
  if ([a3 count])
  {
    v7.receiver = self;
    v7.super_class = SSRentalCheckinRequest;
    v5 = [(SSRequest *)&v7 init];
    if (v5)
    {
      v5->_sinfs = [a3 copy];
    }
  }

  else
  {

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must have at least one sinf"];
    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSRentalCheckinRequest;
  [(SSRequest *)&v3 dealloc];
}

- (NSNumber)accountIdentifier
{
  v2 = self->_accountIdentifier;

  return v2;
}

- (NSNumber)rentalKeyIdentifier
{
  v2 = self->_rentalKeyIdentifier;

  return v2;
}

- (NSArray)sinfs
{
  v2 = self->_sinfs;

  return v2;
}

- (void)startWithCompletionBlock:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__SSRentalCheckinRequest_startWithCompletionBlock___block_invoke;
  v3[3] = &unk_1E84ADF30;
  v3[4] = a3;
  [(SSRentalCheckinRequest *)self startWithConnectionResponseBlock:v3];
}

uint64_t __51__SSRentalCheckinRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (void)startWithConnectionResponseBlock:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
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

    if (os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 2;
    }

    if (v8)
    {
      v21 = 136446210;
      v22 = "[SSRentalCheckinRequest startWithConnectionResponseBlock:]";
      LODWORD(v19) = 12;
      v18 = &v21;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v21, v19}];
        free(v10);
        SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
      }
    }
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__SSRentalCheckinRequest_startWithConnectionResponseBlock___block_invoke;
  v20[3] = &unk_1E84AC760;
  v20[4] = self;
  v20[5] = a3;
  [(SSRequest *)self _startWithMessageID:59 messageBlock:v20, v18];
}

uint64_t __59__SSRentalCheckinRequest_startWithConnectionResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v4 = SSError(@"SSErrorDomain", 121, 0, 0);
      v5 = 0;
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a2, "1")}];
      v5 = [[SSURLConnectionResponse alloc] initWithXPCEncoding:xpc_dictionary_get_value(a2, "2")];
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__SSRentalCheckinRequest_startWithConnectionResponseBlock___block_invoke_2;
    block[3] = &unk_1E84AD618;
    v7 = *(a1 + 40);
    block[5] = v4;
    block[6] = v7;
    block[4] = v5;
    dispatch_async(global_queue, block);
  }

  return [*(a1 + 32) _shutdownRequest];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "50", self->_accountIdentifier);
  SSXPCDictionarySetCFObject(v3, "51", self->_rentalKeyIdentifier);
  SSXPCDictionarySetCFObject(v3, "52", self->_sinfs);
  return v3;
}

- (SSRentalCheckinRequest)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v7.receiver = self;
    v7.super_class = SSRentalCheckinRequest;
    v5 = [(SSRequest *)&v7 init];
    if (v5)
    {
      objc_opt_class();
      v5->_accountIdentifier = SSXPCDictionaryCopyCFObjectWithClass(a3, "50");
      objc_opt_class();
      v5->_rentalKeyIdentifier = SSXPCDictionaryCopyCFObjectWithClass(a3, "51");
      objc_opt_class();
      v5->_sinfs = SSXPCDictionaryCopyCFObjectWithClass(a3, "52");
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end