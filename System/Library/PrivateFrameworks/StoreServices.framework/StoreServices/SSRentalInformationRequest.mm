@interface SSRentalInformationRequest
- (SSRentalInformationRequest)initWithAccountIdentifier:(id)identifier rentalKeyIdentifier:(id)keyIdentifier;
- (SSRentalInformationRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)startWithResponseBlock:(id)block;
@end

@implementation SSRentalInformationRequest

- (SSRentalInformationRequest)initWithAccountIdentifier:(id)identifier rentalKeyIdentifier:(id)keyIdentifier
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  v14.receiver = self;
  v14.super_class = SSRentalInformationRequest;
  v8 = [(SSRequest *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    accountIdentifier = v8->_accountIdentifier;
    v8->_accountIdentifier = v9;

    v11 = [keyIdentifierCopy copy];
    rentalKeyIdentifier = v8->_rentalKeyIdentifier;
    v8->_rentalKeyIdentifier = v11;
  }

  return v8;
}

- (void)startWithResponseBlock:(id)block
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
      v22 = "[SSRentalInformationRequest startWithResponseBlock:]";
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
  v19[2] = __53__SSRentalInformationRequest_startWithResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v17 = blockCopy;
  [(SSRequest *)self _startWithMessageID:170 messageBlock:v19];
}

void __53__SSRentalInformationRequest_startWithResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v5 = 121;
    }

    else
    {
      if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
      {
        v13 = objc_alloc(MEMORY[0x1E696ABC0]);
        v14 = xpc_dictionary_get_value(v4, "2");
        v6 = [v13 initWithXPCEncoding:v14];

        v7 = xpc_dictionary_get_BOOL(v4, "1");
        v15 = objc_opt_class();
        v8 = SSXPCDictionaryCopyObjectWithClass(v4, "5", v15);
        if (v7)
        {
LABEL_10:
          v9 = dispatch_get_global_queue(0, 0);
          v16 = MEMORY[0x1E69E9820];
          v17 = 3221225472;
          v18 = __53__SSRentalInformationRequest_startWithResponseBlock___block_invoke_2;
          v19 = &unk_1E84AD020;
          v10 = *(a1 + 40);
          v21 = v6;
          v22 = v10;
          v23 = v7;
          v20 = v8;
          v11 = v6;
          v12 = v8;
          dispatch_async(v9, &v16);

          goto LABEL_11;
        }

LABEL_8:
        if (!v6)
        {
          v6 = SSError(@"SSErrorDomain", 100, 0, 0);
        }

        goto LABEL_10;
      }

      v5 = 111;
    }

    v6 = SSError(@"SSErrorDomain", v5, 0, 0);
    v7 = 0;
    v8 = 0;
    goto LABEL_8;
  }

LABEL_11:
  [*(a1 + 32) _shutdownRequest];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "50", self->_accountIdentifier);
  SSXPCDictionarySetCFObject(v3, "51", self->_rentalKeyIdentifier);
  return v3;
}

- (SSRentalInformationRequest)initWithXPCEncoding:(id)encoding
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
    rentalKeyIdentifier = self->_rentalKeyIdentifier;
    self->_rentalKeyIdentifier = v9;
  }

  else
  {
    rentalKeyIdentifier = self;
    self = 0;
  }

  return self;
}

@end