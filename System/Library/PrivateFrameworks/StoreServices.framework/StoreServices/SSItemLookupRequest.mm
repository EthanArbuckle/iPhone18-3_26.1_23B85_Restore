@interface SSItemLookupRequest
- (BOOL)start;
- (NSDictionary)parameters;
- (SSItemLookupRequest)init;
- (SSItemLookupRequest)initWithXPCEncoding:(id)encoding;
- (id)_convertedValueForValue:(id)value;
- (id)_copyItemsFromResponse:(id)response expirationDate:(id)date;
- (id)_errorForStatusCode:(int64_t)code;
- (id)copyQueryStringParameters;
- (id)copyXPCEncoding;
- (id)valueForParameter:(id)parameter;
- (void)dealloc;
- (void)setValue:(id)value forParameter:(id)parameter;
- (void)startWithCompletionBlock:(id)block;
- (void)startWithItemLookupBlock:(id)block;
@end

@implementation SSItemLookupRequest

- (SSItemLookupRequest)init
{
  v5.receiver = self;
  v5.super_class = SSItemLookupRequest;
  v2 = [(SSRequest *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSRequest *)v2 setShouldCancelAfterTaskExpiration:1];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSItemLookupRequest;
  [(SSRequest *)&v3 dealloc];
}

- (void)setValue:(id)value forParameter:(id)parameter
{
  if (value && ![(SSItemLookupRequest *)self _convertedValueForValue:value])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Value type not supported"];
  }

  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SSItemLookupRequest_setValue_forParameter___block_invoke;
  block[3] = &unk_1E84AD640;
  block[4] = self;
  block[5] = value;
  block[6] = parameter;
  dispatch_sync(dispatchQueue, block);
}

void __45__SSItemLookupRequest_setValue_forParameter___block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 96))
  {
    *(*(a1 + 32) + 96) = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    if ([v2 conformsToProtocol:&unk_1F507D4B0])
    {
      v8 = [*(a1 + 40) copy];
      [*(*(a1 + 32) + 96) setObject:v8 forKey:*(a1 + 48)];
    }

    else
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 96);
      v7 = *(a1 + 48);

      [v6 setObject:v5 forKey:v7];
    }
  }

  else
  {
    v3 = *(*(a1 + 32) + 96);
    v4 = *(a1 + 48);

    [v3 removeObjectForKey:v4];
  }
}

- (void)startWithItemLookupBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
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
      v22 = "[SSItemLookupRequest startWithItemLookupBlock:]";
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
  v20[2] = __48__SSItemLookupRequest_startWithItemLookupBlock___block_invoke;
  v20[3] = &unk_1E84AC760;
  v20[4] = self;
  v20[5] = block;
  [(SSRequest *)self _startWithMessageID:54 messageBlock:v20, v18];
}

uint64_t __48__SSItemLookupRequest_startWithItemLookupBlock___block_invoke(uint64_t a1, void *a2)
{
  if (!*(a1 + 40))
  {
    goto LABEL_16;
  }

  if (a2 == MEMORY[0x1E69E9E18])
  {
    v9 = SSError(@"SSErrorDomain", 121, 0, 0);
  }

  else
  {
    objc_opt_class();
    v4 = SSXPCDictionaryCopyCFObjectWithClass(a2, "1");
    if (v4)
    {
      v5 = v4;
      v6 = [(__CFArray *)v4 objectForKey:@"status-code"];
      if (v6)
      {
        v7 = [*(a1 + 32) _errorForStatusCode:{objc_msgSend(v6, "integerValue")}];
        v8 = 0;
      }

      else
      {
        objc_opt_class();
        v10 = SSXPCDictionaryCopyCFObjectWithClass(a2, "2");
        if (!v10)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DF00]);
        }

        v8 = [*(a1 + 32) _copyItemsFromResponse:v5 expirationDate:v10];

        v7 = 0;
      }

      goto LABEL_13;
    }

    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a2, "3")}];
  }

  v7 = v9;
  v8 = 0;
LABEL_13:
  if (!(v8 | v7))
  {
    v7 = SSError(@"SSErrorDomain", 100, 0, 0);
  }

  (*(*(a1 + 40) + 16))();

LABEL_16:
  v11 = *(a1 + 32);

  return [v11 _shutdownRequest];
}

- (id)valueForParameter:(id)parameter
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__13;
  dispatchQueue = self->super._dispatchQueue;
  v11 = __Block_byref_object_dispose__13;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SSItemLookupRequest_valueForParameter___block_invoke;
  block[3] = &unk_1E84ADF80;
  block[5] = parameter;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __41__SSItemLookupRequest_valueForParameter___block_invoke(void *a1)
{
  result = [*(a1[4] + 96) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (BOOL)start
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__SSItemLookupRequest_start__block_invoke;
  v3[3] = &unk_1E84ADFA8;
  v3[4] = self;
  [(SSItemLookupRequest *)self startWithItemLookupBlock:v3];
  return 1;
}

void __28__SSItemLookupRequest_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__SSItemLookupRequest_start__block_invoke_2;
  block[3] = &unk_1E84AD640;
  block[4] = *(a1 + 32);
  block[5] = a2;
  block[6] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __28__SSItemLookupRequest_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (*(a1 + 40))
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 itemLookupRequest:*(a1 + 32) didFindItems:*(a1 + 40)];
    }

    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = *(a1 + 32);

      return [v2 requestDidFinish:v4];
    }
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);

      return [v2 request:v5 didFailWithError:v6];
    }
  }

  return result;
}

- (void)startWithCompletionBlock:(id)block
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__SSItemLookupRequest_startWithCompletionBlock___block_invoke;
  v3[3] = &unk_1E84ADFF8;
  v3[4] = block;
  [(SSItemLookupRequest *)self startWithItemLookupBlock:v3];
}

void __48__SSItemLookupRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__SSItemLookupRequest_startWithCompletionBlock___block_invoke_2;
    block[3] = &unk_1E84ADFD0;
    block[4] = a3;
    block[5] = a2;
    block[6] = v3;
    dispatch_async(global_queue, block);
  }
}

uint64_t __48__SSItemLookupRequest_startWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32) == 0)
  {
    SSError(@"SSErrorDomain", 100, 0, 0);
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  dispatchQueue = self->super._dispatchQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__SSItemLookupRequest_copyXPCEncoding__block_invoke;
  v6[3] = &unk_1E84AC458;
  v6[4] = v3;
  v6[5] = self;
  dispatch_sync(dispatchQueue, v6);
  return v3;
}

- (SSItemLookupRequest)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v5 = [(SSItemLookupRequest *)self init];
    if (v5)
    {
      objc_opt_class();
      v7 = SSXPCDictionaryCopyCFObjectWithClass(encoding, "0");
      if (v7)
      {
        v8 = v7;

        v5->_parameters = [(__CFArray *)v8 mutableCopy];
      }
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (id)copyQueryStringParameters
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  parameters = self->_parameters;
  v5 = [(NSMutableDictionary *)parameters countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(parameters);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_parameters objectForKey:v9];
        v11 = [(SSItemLookupRequest *)self _convertedValueForValue:v10];
        if (v11)
        {
          v12 = v11;
          if ([(__CFString *)v9 isEqualToString:@"id"])
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 count] > 1)
            {
              v9 = @"ids";
            }
          }

          [v3 setObject:v12 forKey:v9];
        }
      }

      v6 = [(NSMutableDictionary *)parameters countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSDictionary)parameters
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  dispatchQueue = self->super._dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__SSItemLookupRequest_parameters__block_invoke;
  v5[3] = &unk_1E84AC698;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __33__SSItemLookupRequest_parameters__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 96) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_copyItemsFromResponse:(id)response expirationDate:(id)date
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [response objectForKey:@"item-metadata"];
  if (v7 || (v7 = [response objectForKey:@"album-metadata"]) != 0)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, 0}];
LABEL_4:
    v9 = v8;
    goto LABEL_5;
  }

  v16 = [response objectForKey:@"items"];
  if (v16)
  {
    v8 = v16;
    goto LABEL_4;
  }

  v9 = 0;
LABEL_5:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [[SSItem alloc] initWithItemDictionary:*(*(&v17 + 1) + 8 * v13)];
        if ([(SSItem *)v14 ITunesStoreIdentifier])
        {
          [(SSItem *)v14 _setExpirationDate:date];
          [v6 addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v6;
}

- (id)_convertedValueForValue:(id)value
{
  v18 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (*MEMORY[0x1E695E4D0] == value)
    {
      return @"yes";
    }

    else if (*MEMORY[0x1E695E4C0] == value)
    {
      return @"no";
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = objc_alloc_init(MEMORY[0x1E696ADA0]);
        [v5 setNumberStyle:1];
        [v5 setUsesGroupingSeparator:0];
        value = [v5 stringFromNumber:value];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v13 = 0u;
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v7 = [value countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v14;
            do
            {
              v10 = 0;
              do
              {
                if (*v14 != v9)
                {
                  objc_enumerationMutation(value);
                }

                v11 = [(SSItemLookupRequest *)self _convertedValueForValue:*(*(&v13 + 1) + 8 * v10)];
                if (v11)
                {
                  [v6 addObject:v11];
                }

                ++v10;
              }

              while (v8 != v10);
              v8 = [value countByEnumeratingWithState:&v13 objects:v17 count:16];
            }

            while (v8);
          }

          value = [v6 componentsJoinedByString:{@", "}];
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return value;
}

- (id)_errorForStatusCode:(int64_t)code
{
  if (code == 2000)
  {
    v3 = 301;
  }

  else
  {
    v3 = 100;
  }

  return SSError(@"SSErrorDomain", v3, 0, 0);
}

@end