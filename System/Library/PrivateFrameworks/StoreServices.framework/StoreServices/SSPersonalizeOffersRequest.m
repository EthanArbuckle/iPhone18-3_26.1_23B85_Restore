@interface SSPersonalizeOffersRequest
- (BOOL)start;
- (NSArray)items;
- (SSPersonalizeOffersRequest)initWithItems:(id)a3;
- (SSPersonalizeOffersRequest)initWithXPCEncoding:(id)a3;
- (id)copyXPCEncoding;
- (void)dealloc;
- (void)startWithCompletionBlock:(id)a3;
- (void)startWithPersonalizedResponseBlock:(id)a3;
@end

@implementation SSPersonalizeOffersRequest

- (SSPersonalizeOffersRequest)initWithItems:(id)a3
{
  v6.receiver = self;
  v6.super_class = SSPersonalizeOffersRequest;
  v4 = [(SSRequest *)&v6 init];
  if (v4)
  {
    v4->_items = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSPersonalizeOffersRequest;
  [(SSRequest *)&v3 dealloc];
}

- (NSArray)items
{
  v2 = self->_items;

  return v2;
}

- (void)startWithPersonalizedResponseBlock:(id)a3
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

    if (os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_FAULT))
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
      v22 = "[SSPersonalizeOffersRequest startWithPersonalizedResponseBlock:]";
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
  v20[2] = __65__SSPersonalizeOffersRequest_startWithPersonalizedResponseBlock___block_invoke;
  v20[3] = &unk_1E84AC760;
  v20[4] = self;
  v20[5] = a3;
  [(SSRequest *)self _startWithMessageID:55 messageBlock:v20, v18];
}

uint64_t __65__SSPersonalizeOffersRequest_startWithPersonalizedResponseBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a1;
  v33 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    if (a2 == MEMORY[0x1E69E9E18])
    {
      v6 = 121;
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a2, "2")}];
      v5 = [[SSPersonalizeOffersResponse alloc] initWithXPCEncoding:xpc_dictionary_get_value(a2, "1")];
      if (v5 | v4)
      {
        v7 = v5;
        if (v5)
        {
          v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v26 = v2;
          v9 = *(*(v2 + 32) + 96);
          v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v29;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v29 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v28 + 1) + 8 * i);
                v15 = [objc_msgSend(v14 "ITunesStoreIdentifier")];
                if (v15 && (v16 = [v7 actionParametersForItemIdentifier:v15]) != 0)
                {
                  v17 = v16;
                  v18 = -[SSItem initWithItemDictionary:]([SSItem alloc], "initWithItemDictionary:", [v14 rawItemDictionary]);
                  v19 = [(SSItem *)v18 defaultItemOffer];
                  [(SSItemOffer *)v19 setBuyParameters:v17];
                  v20 = [(SSItem *)v18 itemKind];
                  v21 = [v7 priceDisplayForItemType:v20];
                  if (v21)
                  {
                    [(SSItemOffer *)v19 setPriceDisplay:v21];
                  }

                  v22 = [v7 actionDisplayNameForItemType:v20];
                  [(SSItemOffer *)v19 setActionDisplayName:v22];
                  [(SSItemOffer *)v19 setOneTapOffer:v22 == 0];
                  [v8 addObject:v18];
                }

                else
                {
                  [v8 addObject:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
            }

            while (v11);
          }

          [v7 _setPersonalizedItems:v8];

          v2 = v26;
        }

        goto LABEL_22;
      }

      v6 = 100;
    }

    v4 = SSError(@"SSErrorDomain", v6, 0, 0);
    v7 = 0;
LABEL_22:
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__SSPersonalizeOffersRequest_startWithPersonalizedResponseBlock___block_invoke_2;
    block[3] = &unk_1E84AD618;
    v24 = *(v2 + 40);
    block[5] = v4;
    block[6] = v24;
    block[4] = v7;
    dispatch_async(global_queue, block);
  }

  return [*(v2 + 32) _shutdownRequest];
}

- (BOOL)start
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__SSPersonalizeOffersRequest_start__block_invoke;
  v3[3] = &unk_1E84B0B98;
  v3[4] = self;
  [(SSPersonalizeOffersRequest *)self startWithPersonalizedResponseBlock:v3];
  return 1;
}

void __35__SSPersonalizeOffersRequest_start__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SSPersonalizeOffersRequest_start__block_invoke_2;
  block[3] = &unk_1E84AD640;
  block[4] = *(a1 + 32);
  block[5] = a2;
  block[6] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __35__SSPersonalizeOffersRequest_start__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (*(a1 + 40))
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 personalizeOffersRequest:*(a1 + 32) didReceiveResponse:*(a1 + 40)];
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

- (void)startWithCompletionBlock:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__SSPersonalizeOffersRequest_startWithCompletionBlock___block_invoke;
  v3[3] = &unk_1E84B0BC0;
  v3[4] = a3;
  [(SSPersonalizeOffersRequest *)self startWithPersonalizedResponseBlock:v3];
}

uint64_t __55__SSPersonalizeOffersRequest_startWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (SSPersonalizeOffersRequest)initWithXPCEncoding:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v5 = [(SSRequest *)self init];
    if (v5)
    {
      objc_opt_class();
      v7 = SSXPCDictionaryCopyCFObjectWithClass(a3, "50");
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = [(__CFArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          v12 = 0;
          do
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v16 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[SSItem alloc] initWithItemDictionary:v13];
              if (v14)
              {
                v15 = v14;
                [v8 addObject:v14];
              }
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [(__CFArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      v5->_items = [v8 copy];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  items = self->_items;
  v6 = [(NSArray *)items countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(items);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) rawItemDictionary];
        if (v10)
        {
          [(__CFString *)v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)items countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  SSXPCDictionarySetCFObject(v3, "50", v4);

  return v3;
}

@end