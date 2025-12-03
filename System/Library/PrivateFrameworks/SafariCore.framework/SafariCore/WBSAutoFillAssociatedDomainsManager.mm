@interface WBSAutoFillAssociatedDomainsManager
- (WBSAutoFillAssociatedDomainsManager)initWithDomainsWithAssociatedCredentials:(id)credentials domainsToConsiderIdentical:(id)identical;
- (id)domainsToConsiderIdenticalToDomain:(id)domain;
- (id)domainsWithAssociatedCredentialsForDomain:(id)domain;
- (void)_updateDomainToDomainsToConsiderIdentical;
- (void)_updateDomainToDomainsWithAssociatedCredentials;
- (void)setDomainsToConsiderIdentical:(id)identical;
- (void)setDomainsWithAssociatedCredentials:(id)credentials;
@end

@implementation WBSAutoFillAssociatedDomainsManager

- (WBSAutoFillAssociatedDomainsManager)initWithDomainsWithAssociatedCredentials:(id)credentials domainsToConsiderIdentical:(id)identical
{
  credentialsCopy = credentials;
  identicalCopy = identical;
  v18.receiver = self;
  v18.super_class = WBSAutoFillAssociatedDomainsManager;
  v8 = [(WBSAutoFillAssociatedDomainsManager *)&v18 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"com.apple.SafariCore.%@.%p", v12, v8];
    v14 = dispatch_queue_create([v13 UTF8String], v9);
    queue = v8->_queue;
    v8->_queue = v14;

    [(WBSAutoFillAssociatedDomainsManager *)v8 setDomainsWithAssociatedCredentials:credentialsCopy];
    [(WBSAutoFillAssociatedDomainsManager *)v8 setDomainsToConsiderIdentical:identicalCopy];
    v16 = v8;
  }

  return v8;
}

- (void)setDomainsWithAssociatedCredentials:(id)credentials
{
  credentialsCopy = credentials;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__WBSAutoFillAssociatedDomainsManager_setDomainsWithAssociatedCredentials___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = credentialsCopy;
  v6 = credentialsCopy;
  dispatch_sync(queue, v7);
}

uint64_t __75__WBSAutoFillAssociatedDomainsManager_setDomainsWithAssociatedCredentials___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = *(a1 + 32);

  return [v5 _updateDomainToDomainsWithAssociatedCredentials];
}

- (void)setDomainsToConsiderIdentical:(id)identical
{
  identicalCopy = identical;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__WBSAutoFillAssociatedDomainsManager_setDomainsToConsiderIdentical___block_invoke;
  v7[3] = &unk_1E7CF1708;
  v7[4] = self;
  v8 = identicalCopy;
  v6 = identicalCopy;
  dispatch_sync(queue, v7);
}

uint64_t __69__WBSAutoFillAssociatedDomainsManager_setDomainsToConsiderIdentical___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 _updateDomainToDomainsToConsiderIdentical];
}

- (id)domainsWithAssociatedCredentialsForDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy length])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy_;
    v15 = __Block_byref_object_dispose_;
    v16 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__WBSAutoFillAssociatedDomainsManager_domainsWithAssociatedCredentialsForDomain___block_invoke;
    block[3] = &unk_1E7CF1730;
    v10 = &v11;
    block[4] = self;
    v9 = domainCopy;
    dispatch_sync(queue, block);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __81__WBSAutoFillAssociatedDomainsManager_domainsWithAssociatedCredentialsForDomain___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = [*(a1 + 40) safari_highLevelDomainFromHost];
    if ([v8 length])
    {
      v5 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v8];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;
    }
  }
}

- (id)domainsToConsiderIdenticalToDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy length])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy_;
    v15 = __Block_byref_object_dispose_;
    v16 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__WBSAutoFillAssociatedDomainsManager_domainsToConsiderIdenticalToDomain___block_invoke;
    block[3] = &unk_1E7CF1730;
    v10 = &v11;
    block[4] = self;
    v9 = domainCopy;
    dispatch_sync(queue, block);
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __74__WBSAutoFillAssociatedDomainsManager_domainsToConsiderIdenticalToDomain___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_updateDomainToDomainsWithAssociatedCredentials
{
  v29 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  domainToDomainsWithAssociatedCredentials = self->_domainToDomainsWithAssociatedCredentials;
  self->_domainToDomainsWithAssociatedCredentials = dictionary;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_domainsWithAssociatedCredentials;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v19 + 1) + 8 * j);
              if ([v16 length])
              {
                [(NSMutableDictionary *)self->_domainToDomainsWithAssociatedCredentials setObject:v10 forKeyedSubscript:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_updateDomainToDomainsToConsiderIdentical
{
  v29 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  domainsToDomainsToConsiderIdentical = self->_domainsToDomainsToConsiderIdentical;
  self->_domainsToDomainsToConsiderIdentical = dictionary;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_domainsToConsiderIdentical;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v19 + 1) + 8 * j);
              if ([v16 length])
              {
                [(NSMutableDictionary *)self->_domainsToDomainsToConsiderIdentical setObject:v10 forKeyedSubscript:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v6 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x1E69E9840];
}

@end