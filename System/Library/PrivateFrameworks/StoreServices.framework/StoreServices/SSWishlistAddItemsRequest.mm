@interface SSWishlistAddItemsRequest
- (SSWishlistAddItemsRequest)initWithItems:(id)items caller:(id)caller version:(id)version;
- (SSWishlistAddItemsRequest)initWithXPCEncoding:(id)encoding;
- (id)_convertedValueForValue:(id)value;
- (id)copyQueryStringParameters;
- (id)copyXPCEncoding;
- (void)startWithAddItemsResponseBlock:(id)block;
@end

@implementation SSWishlistAddItemsRequest

- (SSWishlistAddItemsRequest)initWithItems:(id)items caller:(id)caller version:(id)version
{
  itemsCopy = items;
  callerCopy = caller;
  versionCopy = version;
  v19.receiver = self;
  v19.super_class = SSWishlistAddItemsRequest;
  v11 = [(SSRequest *)&v19 init];
  if (v11)
  {
    v12 = [itemsCopy copy];
    items = v11->_items;
    v11->_items = v12;

    v14 = [callerCopy copy];
    caller = v11->_caller;
    v11->_caller = v14;

    v16 = [versionCopy copy];
    version = v11->_version;
    v11->_version = v16;
  }

  return v11;
}

- (void)startWithAddItemsResponseBlock:(id)block
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
      v21 = 136446210;
      v22 = "[SSWishlistAddItemsRequest startWithAddItemsResponseBlock:]";
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
  v19[2] = __60__SSWishlistAddItemsRequest_startWithAddItemsResponseBlock___block_invoke;
  v19[3] = &unk_1E84ABEF0;
  v19[4] = self;
  v20 = blockCopy;
  v17 = blockCopy;
  [(SSRequest *)self _startWithMessageID:166 messageBlock:v19];
}

void __60__SSWishlistAddItemsRequest_startWithAddItemsResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = v3;
  if (*(a1 + 40))
  {
    if (v3 == MEMORY[0x1E69E9E18])
    {
      v7 = SSError(@"SSErrorDomain", 121, 0, 0);
      v4 = 0;
    }

    else
    {
      objc_opt_class();
      v4 = SSXPCDictionaryCopyCFObjectWithClass(xdict, "1");
      v5 = objc_alloc(MEMORY[0x1E696ABC0]);
      v6 = xpc_dictionary_get_value(xdict, "2");
      v7 = [v5 initWithXPCEncoding:v6];

      if (!v7)
      {
        v8 = [(__CFArray *)v4 objectForKey:@"status"];
        if ([v8 intValue])
        {
          v9 = [(__CFArray *)v4 objectForKey:@"msg"];
          v7 = SSError(@"SSErrorDomain", 137, 0, v9);
        }

        else
        {
          v7 = 0;
        }
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  [*(a1 + 32) _shutdownRequest];
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  dispatchQueue = self->super._dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SSWishlistAddItemsRequest_copyXPCEncoding__block_invoke;
  v8[3] = &unk_1E84AC028;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_sync(dispatchQueue, v8);
  v6 = v5;

  return v6;
}

void __44__SSWishlistAddItemsRequest_copyXPCEncoding__block_invoke(uint64_t a1)
{
  SSXPCDictionarySetCFObject(*(a1 + 32), "0", *(*(a1 + 40) + 96));
  SSXPCDictionarySetCFObject(*(a1 + 32), "1", *(*(a1 + 40) + 104));
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 112);

  SSXPCDictionarySetCFObject(v2, "2", v3);
}

- (SSWishlistAddItemsRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v5 = encodingCopy;
  if (encodingCopy && MEMORY[0x1DA6E0380](encodingCopy) == MEMORY[0x1E69E9E80])
  {
    v6 = [(SSWishlistAddItemsRequest *)self init];
    if (!v6)
    {
      goto LABEL_5;
    }

    objc_opt_class();
    v8 = SSXPCDictionaryCopyCFObjectWithClass(v5, "0");
    items = v6->_items;
    v6->_items = v8;

    objc_opt_class();
    v10 = SSXPCDictionaryCopyCFObjectWithClass(v5, "1");
    caller = v6->_caller;
    v6->_caller = v10;

    objc_opt_class();
    v12 = SSXPCDictionaryCopyCFObjectWithClass(v5, "2");
    self = v6->_version;
    v6->_version = v12;
  }

  else
  {
    v6 = 0;
  }

LABEL_5:
  return v6;
}

- (id)copyQueryStringParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_items)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__77;
    v16 = __Block_byref_object_dispose__77;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    items = self->_items;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__SSWishlistAddItemsRequest_copyQueryStringParameters__block_invoke;
    v11[3] = &unk_1E84B35D8;
    v11[4] = self;
    v11[5] = &v12;
    [(NSArray *)items enumerateObjectsUsingBlock:v11];
    v5 = [v13[5] componentsJoinedByString:{@", "}];
    [v3 setObject:v5 forKey:@"ids"];

    _Block_object_dispose(&v12, 8);
  }

  version = self->_version;
  if (version)
  {
    v7 = [(NSString *)version copy];
    [v3 setObject:v7 forKey:@"version"];
  }

  caller = self->_caller;
  if (caller)
  {
    v9 = [(NSString *)caller copy];
    [v3 setObject:v9 forKey:@"caller"];
  }

  return v3;
}

void __54__SSWishlistAddItemsRequest_copyQueryStringParameters__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _convertedValueForValue:a2];
  if (v3)
  {
    v4 = v3;
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
    v3 = v4;
  }
}

- (id)_convertedValueForValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = valueCopy;
LABEL_7:
    v8 = v4;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = _convertedValueForValue__formatter;
    if (!_convertedValueForValue__formatter)
    {
      v6 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      v7 = _convertedValueForValue__formatter;
      _convertedValueForValue__formatter = v6;

      [_convertedValueForValue__formatter setNumberStyle:1];
      [_convertedValueForValue__formatter setUsesGroupingSeparator:0];
      v5 = _convertedValueForValue__formatter;
    }

    v4 = [v5 stringFromNumber:valueCopy];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

@end