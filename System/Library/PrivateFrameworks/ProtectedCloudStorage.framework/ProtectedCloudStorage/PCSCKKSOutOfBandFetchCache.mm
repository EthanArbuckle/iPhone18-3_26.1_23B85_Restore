@interface PCSCKKSOutOfBandFetchCache
+ (id)cache;
- (PCSCKKSOutOfBandFetchCache)init;
- (_PCSIdentityData)copyIdentity:(id)identity;
- (void)cacheCurrentIdentityFetchResult:(_PCSIdentitySetData *)result notFound:(id)found;
- (void)cachePCSIdentityFetchResult:(_PCSIdentitySetData *)result notFound:(id)found serviceID:(unsigned int)d;
- (void)dealloc;
- (void)getCurrentIdentities:(id)identities result:(id)result;
- (void)getPCSIdentities:(id)identities forServiceID:(unsigned int)d result:(id)result;
@end

@implementation PCSCKKSOutOfBandFetchCache

+ (id)cache
{
  if (cache_once != -1)
  {
    +[PCSCKKSOutOfBandFetchCache cache];
  }

  v3 = cache_cache;

  return v3;
}

uint64_t __35__PCSCKKSOutOfBandFetchCache_cache__block_invoke()
{
  cache_cache = objc_alloc_init(PCSCKKSOutOfBandFetchCache);

  return MEMORY[0x1EEE66BB8]();
}

- (PCSCKKSOutOfBandFetchCache)init
{
  v6.receiver = self;
  v6.super_class = PCSCKKSOutOfBandFetchCache;
  v2 = [(PCSCKKSOutOfBandFetchCache *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ProtectedCloudStorage.CKKSOutOfBandFetchCache", v3);
    [(PCSCKKSOutOfBandFetchCache *)v2 setQueue:v4];
  }

  return v2;
}

- (void)dealloc
{
  identities = self->_identities;
  if (identities)
  {
    self->_identities = 0;
    CFRelease(identities);
  }

  v4.receiver = self;
  v4.super_class = PCSCKKSOutOfBandFetchCache;
  [(PCSCKKSOutOfBandFetchCache *)&v4 dealloc];
}

- (void)getCurrentIdentities:(id)identities result:(id)result
{
  identitiesCopy = identities;
  resultCopy = result;
  queue = [(PCSCKKSOutOfBandFetchCache *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PCSCKKSOutOfBandFetchCache_getCurrentIdentities_result___block_invoke;
  block[3] = &unk_1E7B196B8;
  v12 = identitiesCopy;
  selfCopy = self;
  v14 = resultCopy;
  v9 = resultCopy;
  v10 = identitiesCopy;
  dispatch_sync(queue, block);
}

void __58__PCSCKKSOutOfBandFetchCache_getCurrentIdentities_result___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:*(a1 + 32)];
  if ([*(a1 + 40) identities])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      Mutable = 0;
      v7 = *v16;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = PCSIdentitySetCopyCurrentIdentityWithError([*(a1 + 40) identities], v9, 0);
          if (v10)
          {
            v11 = v10;
            [v2 removeObject:v9];
            if (!Mutable)
            {
              Mutable = PCSIdentitySetCreateMutable(0);
            }

            PCSIdentitySetAddIdentity(Mutable, v11);
            PCSIdentitySetSetCurrentIdentity(Mutable, v11);
            CFRelease(v11);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v5);
    }

    else
    {
      Mutable = 0;
    }
  }

  else
  {
    Mutable = 0;
  }

  v12 = [*(a1 + 40) currentItemNegativeCache];

  if (v12)
  {
    v13 = [*(a1 + 40) currentItemNegativeCache];
    [v2 minusSet:v13];
  }

  (*(*(a1 + 48) + 16))();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)cacheCurrentIdentityFetchResult:(_PCSIdentitySetData *)result notFound:(id)found
{
  foundCopy = found;
  queue = [(PCSCKKSOutOfBandFetchCache *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PCSCKKSOutOfBandFetchCache_cacheCurrentIdentityFetchResult_notFound___block_invoke;
  block[3] = &unk_1E7B19708;
  v10 = foundCopy;
  selfCopy = self;
  resultCopy = result;
  v8 = foundCopy;
  dispatch_barrier_async(queue, block);
}

uint64_t __71__PCSCKKSOutOfBandFetchCache_cacheCurrentIdentityFetchResult_notFound___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 40) currentItemNegativeCache];

    if (!v2)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [*(a1 + 40) setCurrentItemNegativeCache:v3];
    }

    v4 = [*(a1 + 40) currentItemNegativeCache];
    [v4 unionSet:*(a1 + 32)];
  }

  result = *(a1 + 48);
  if (result)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__PCSCKKSOutOfBandFetchCache_cacheCurrentIdentityFetchResult_notFound___block_invoke_2;
    v6[3] = &unk_1E7B196E0;
    v6[4] = *(a1 + 40);
    return PCSIdentitySetEnumerateIdentities(result, 0, v6);
  }

  return result;
}

uint64_t __71__PCSCKKSOutOfBandFetchCache_cacheCurrentIdentityFetchResult_notFound___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) currentItemNegativeCache];

  if (v4)
  {
    v5 = PCSIdentityGetServiceName(a2);
    v6 = [*(a1 + 32) currentItemNegativeCache];
    [v6 removeObject:v5];
  }

  if (![*(a1 + 32) identities])
  {
    *(*(a1 + 32) + 16) = PCSIdentitySetCreateMutable(0);
  }

  PCSIdentitySetAddIdentity([*(a1 + 32) identities], a2);
  v7 = [*(a1 + 32) identities];

  return PCSIdentitySetSetCurrentIdentity(v7, a2);
}

- (void)getPCSIdentities:(id)identities forServiceID:(unsigned int)d result:(id)result
{
  identitiesCopy = identities;
  resultCopy = result;
  queue = [(PCSCKKSOutOfBandFetchCache *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PCSCKKSOutOfBandFetchCache_getPCSIdentities_forServiceID_result___block_invoke;
  v13[3] = &unk_1E7B19730;
  v14 = identitiesCopy;
  selfCopy = self;
  dCopy = d;
  v16 = resultCopy;
  v11 = resultCopy;
  v12 = identitiesCopy;
  dispatch_sync(queue, v13);
}

void __67__PCSCKKSOutOfBandFetchCache_getPCSIdentities_forServiceID_result___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:*(a1 + 32)];
  if ([*(a1 + 40) identities])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      Mutable = 0;
      v7 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          v10 = PCSIdentitySetCopyIdentity([*(a1 + 40) identities], v9);
          if (v10)
          {
            v11 = v10;
            if (PCSIdentityGetServiceID(v10) == *(a1 + 56))
            {
              [v2 removeObject:v9];
              if (!Mutable)
              {
                Mutable = PCSIdentitySetCreateMutable(0);
              }

              PCSIdentitySetAddIdentity(Mutable, v11);
            }

            CFRelease(v11);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    else
    {
      Mutable = 0;
    }
  }

  else
  {
    Mutable = 0;
  }

  v12 = [*(a1 + 40) identityNegativeCache];

  if (v12)
  {
    v13 = [*(a1 + 40) identityNegativeCache];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 56)];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (v15)
    {
      [v2 minusSet:v15];
    }
  }

  (*(*(a1 + 48) + 16))();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)cachePCSIdentityFetchResult:(_PCSIdentitySetData *)result notFound:(id)found serviceID:(unsigned int)d
{
  foundCopy = found;
  queue = [(PCSCKKSOutOfBandFetchCache *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__PCSCKKSOutOfBandFetchCache_cachePCSIdentityFetchResult_notFound_serviceID___block_invoke;
  v11[3] = &unk_1E7B19780;
  v12 = foundCopy;
  selfCopy = self;
  dCopy = d;
  resultCopy = result;
  v10 = foundCopy;
  dispatch_barrier_async(queue, v11);
}

uint64_t __77__PCSCKKSOutOfBandFetchCache_cachePCSIdentityFetchResult_notFound_serviceID___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 40) identityNegativeCache];

    if (!v2)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [*(a1 + 40) setIdentityNegativeCache:v3];
    }

    v4 = [*(a1 + 40) identityNegativeCache];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 56)];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v7 = [*(a1 + 40) identityNegativeCache];
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 56)];
      [v7 setObject:v6 forKeyedSubscript:v8];
    }

    [v6 unionSet:*(a1 + 32)];
  }

  result = *(a1 + 48);
  if (result)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__PCSCKKSOutOfBandFetchCache_cachePCSIdentityFetchResult_notFound_serviceID___block_invoke_2;
    v10[3] = &unk_1E7B19758;
    v10[4] = *(a1 + 40);
    v11 = *(a1 + 56);
    return PCSIdentitySetEnumerateIdentities(result, 0, v10);
  }

  return result;
}

uint64_t __77__PCSCKKSOutOfBandFetchCache_cachePCSIdentityFetchResult_notFound_serviceID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) identityNegativeCache];

  if (v4)
  {
    v5 = [*(a1 + 32) identityNegativeCache];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 40)];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = PCSIdentityGetPublicKey(a2);
      [v7 removeObject:v8];
    }
  }

  if (![*(a1 + 32) identities])
  {
    *(*(a1 + 32) + 16) = PCSIdentitySetCreateMutable(0);
  }

  v9 = [*(a1 + 32) identities];

  return PCSIdentitySetAddIdentity(v9, a2);
}

- (_PCSIdentityData)copyIdentity:(id)identity
{
  identityCopy = identity;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = [(PCSCKKSOutOfBandFetchCache *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PCSCKKSOutOfBandFetchCache_copyIdentity___block_invoke;
  block[3] = &unk_1E7B197A8;
  v10 = identityCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identityCopy;
  dispatch_sync(queue, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __43__PCSCKKSOutOfBandFetchCache_copyIdentity___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) identities];
  if (result)
  {
    result = PCSIdentitySetCopyIdentity([*(a1 + 32) identities], *(a1 + 40));
    *(*(*(a1 + 48) + 8) + 24) = result;
  }

  return result;
}

@end