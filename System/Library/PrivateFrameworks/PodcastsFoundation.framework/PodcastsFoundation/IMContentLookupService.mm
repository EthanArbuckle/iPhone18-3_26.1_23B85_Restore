@interface IMContentLookupService
- (IMContentLookupService)initWithIds:(id)a3;
- (void)_configureRequest;
- (void)request:(id)a3;
@end

@implementation IMContentLookupService

- (IMContentLookupService)initWithIds:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IMContentLookupService;
  v5 = [(IMContentLookupService *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(IMContentLookupService *)v5 setIds:v4];
    v7 = objc_alloc(MEMORY[0x1E698C970]);
    v8 = +[IMURLBag sharedInstance];
    v9 = [MEMORY[0x1E698CAC8] currentProcess];
    v10 = [v9 bundleIdentifier];
    v11 = [v7 initWithBag:v8 caller:v10 keyProfile:v6->_profile];
    [(IMContentLookupService *)v6 setAmsLookup:v11];

    [(IMContentLookupService *)v6 setVersion:1];
  }

  return v6;
}

- (void)request:(id)a3
{
  v4 = a3;
  [(IMContentLookupService *)self _configureRequest];
  v5 = [(IMContentLookupService *)self ids];

  if (v5)
  {
    amsLookup = self->_amsLookup;
    v7 = [(IMContentLookupService *)self ids];
    v8 = [(AMSLookup *)amsLookup performLookupWithBundleIdentifiers:0 itemIdentifiers:v7];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __34__IMContentLookupService_request___block_invoke;
    v9[3] = &unk_1E856B038;
    v9[4] = self;
    v10 = v4;
    [v8 addFinishBlock:v9];
  }

  else
  {
    (*(v4 + 2))(v4, MEMORY[0x1E695E0F8]);
  }
}

void __34__IMContentLookupService_request___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v5 = [*(a1 + 32) ids];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v3 allItems];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 itemDictionary];
        if (v13)
        {
          v14 = [v12 iTunesStoreIdentifier];
          v15 = [v14 stringValue];

          [v6 setObject:v13 forKey:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  (*(*(a1 + 40) + 16))();
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_configureRequest
{
  [(AMSLookup *)self->_amsLookup setKeyProfile:self->_profile];
  [(AMSLookup *)self->_amsLookup setImageProfile:self->_artworkType];
  v3 = [(IMContentLookupService *)self version];
  amsLookup = self->_amsLookup;

  [(AMSLookup *)amsLookup setVersion:v3];
}

@end