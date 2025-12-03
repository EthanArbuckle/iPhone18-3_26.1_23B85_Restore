@interface SBKStoreURLBagContext
+ (void)_findFirstValueInBag:(id)bag keyEnumerator:(id)enumerator valueTransformer:(id)transformer defaultValue:(id)value completionBlock:(id)block;
+ (void)enumerateRequestURLBagKeysWithBlock:(id)block;
+ (void)loadBagContextFromURLBag:(id)bag domain:(id)domain completionBlock:(id)block;
- (SBKStoreURLBagContext)init;
- (SBKStoreURLBagContext)initWithBag:(id)bag domain:(id)domain;
- (double)pollingIntervalInSeconds;
- (id)_initWithDomain:(id)domain syncRequestURL:(id)l domainDisabled:(BOOL)disabled;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setPollingIntervalInSeconds:(double)seconds;
@end

@implementation SBKStoreURLBagContext

- (double)pollingIntervalInSeconds
{
  result = self->_pollingIntervalInSeconds;
  if (fabs(result) <= 0.00000011920929)
  {
    return 604800.0;
  }

  return result;
}

- (void)setPollingIntervalInSeconds:(double)seconds
{
  if (fabs(seconds) <= 0.00000011920929)
  {
    seconds = 604800.0;
  }

  self->_pollingIntervalInSeconds = seconds;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  domain = [(SBKStoreURLBagContext *)self domain];
  v6 = [v4 _initWithDomain:domain syncRequestURL:0 domainDisabled:{-[SBKStoreURLBagContext domainDisabled](self, "domainDisabled")}];

  v7 = objc_opt_class();
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __45__SBKStoreURLBagContext_mutableCopyWithZone___block_invoke;
  v15 = &unk_279D22F88;
  v8 = v6;
  v16 = v8;
  selfCopy = self;
  [v7 enumerateRequestURLBagKeysWithBlock:&v12];
  [(SBKStoreURLBagContext *)self pollingIntervalInSeconds:v12];
  v8[2] = v9;
  v10 = v8;

  return v10;
}

void __45__SBKStoreURLBagContext_mutableCopyWithZone___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a3;
  v6 = [v4 valueForKey:v5];
  [v3 setValue:v6 forKey:v5];
}

+ (void)loadBagContextFromURLBag:(id)bag domain:(id)domain completionBlock:(id)block
{
  bagCopy = bag;
  domainCopy = domain;
  blockCopy = block;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__1218;
  v47[4] = __Block_byref_object_dispose__1219;
  v48 = [[SBKStoreURLBagContext alloc] initWithBag:bagCopy domain:domainCopy];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__1218;
  v45[4] = __Block_byref_object_dispose__1219;
  v46 = 0;
  v11 = dispatch_group_create();
  v12 = dispatch_queue_create(0, 0);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __73__SBKStoreURLBagContext_loadBagContextFromURLBag_domain_completionBlock___block_invoke;
  v40[3] = &unk_279D22EA0;
  v13 = v12;
  v41 = v13;
  v43 = v47;
  v44 = v45;
  v14 = v11;
  v42 = v14;
  v15 = MEMORY[0x26D6917A0](v40);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __73__SBKStoreURLBagContext_loadBagContextFromURLBag_domain_completionBlock___block_invoke_3;
  v35[3] = &unk_279D22EF0;
  v16 = v14;
  v36 = v16;
  selfCopy = self;
  v17 = bagCopy;
  v37 = v17;
  v18 = v15;
  v38 = v18;
  v19 = MEMORY[0x26D6917A0](v35);
  v20 = objc_opt_class();
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __73__SBKStoreURLBagContext_loadBagContextFromURLBag_domain_completionBlock___block_invoke_8;
  v31[3] = &unk_279D22F38;
  v21 = v19;
  v33 = v21;
  v34 = &__block_literal_global_53_1221;
  v22 = domainCopy;
  v32 = v22;
  [v20 enumerateRequestURLBagKeysWithBlock:v31];
  (*(v21 + 2))(v21, @"domainDisabled", MEMORY[0x277CBEC28], &__block_literal_global_56, @"kvs-sync-disabled", v22, 0);
  (*(v21 + 2))(v21, @"pollingIntervalInSeconds", &unk_287CA28B0, &__block_literal_global_59, @"kvs-sync-polling-interval-secs", v22, 0);
  v23 = dispatch_queue_create(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SBKStoreURLBagContext_loadBagContextFromURLBag_domain_completionBlock___block_invoke_73;
  block[3] = &unk_279D22F60;
  v29 = v45;
  v30 = v47;
  v27 = v16;
  v28 = blockCopy;
  v24 = blockCopy;
  v25 = v16;
  dispatch_async(v23, block);

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v47, 8);
}

void __73__SBKStoreURLBagContext_loadBagContextFromURLBag_domain_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SBKStoreURLBagContext_loadBagContextFromURLBag_domain_completionBlock___block_invoke_2;
  block[3] = &unk_279D22E78;
  v15 = v8;
  v16 = v7;
  v17 = v9;
  v18 = *(a1 + 48);
  v11 = v9;
  v12 = v7;
  v13 = v8;
  dispatch_sync(v10, block);
  dispatch_group_leave(*(a1 + 40));
}

void __73__SBKStoreURLBagContext_loadBagContextFromURLBag_domain_completionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a5;
  v15 = *(a1 + 32);
  v16 = a7;
  v17 = a6;
  v18 = a4;
  v19 = a3;
  dispatch_group_enter(v15);
  v20 = [MEMORY[0x277CBEB18] array];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v14, v17];
  v22 = [v16 objectForKey:v17];

  [v20 addObject:v21];
  if (v22)
  {
    [v20 addObject:v22];
  }

  [v20 addObject:v14];
  v23 = *(a1 + 56);
  v28 = v14;
  v24 = *(a1 + 40);
  v25 = [v20 objectEnumerator];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __73__SBKStoreURLBagContext_loadBagContextFromURLBag_domain_completionBlock___block_invoke_4;
  v29[3] = &unk_279D22EC8;
  v26 = *(a1 + 48);
  v30 = v13;
  v31 = v26;
  v27 = v13;
  [v23 _findFirstValueInBag:v24 keyEnumerator:v25 valueTransformer:v18 defaultValue:v19 completionBlock:v29];
}

uint64_t __73__SBKStoreURLBagContext_loadBagContextFromURLBag_domain_completionBlock___block_invoke_73(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = *(*(a1 + 56) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;

    v4 = *(*(*(a1 + 48) + 8) + 40);
  }

  v5 = *(*(*(a1 + 56) + 8) + 40);
  v6 = *(*(a1 + 40) + 16);

  return v6();
}

id __73__SBKStoreURLBagContext_loadBagContextFromURLBag_domain_completionBlock___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = MEMORY[0x277CCABB0];
  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    v5 = 0;
  }

  else
  {
    [v2 doubleValue];
    v5 = [v4 numberWithDouble:?];
  }

  v2 = v5;
LABEL_6:

  return v2;
}

id __73__SBKStoreURLBagContext_loadBagContextFromURLBag_domain_completionBlock___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "BOOLValue")}];
  }

  v2 = v3;
LABEL_6:

  return v2;
}

id __73__SBKStoreURLBagContext_loadBagContextFromURLBag_domain_completionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_6;
    }

    v3 = 0;
  }

  v2 = v3;
LABEL_6:

  return v2;
}

void __73__SBKStoreURLBagContext_loadBagContextFromURLBag_domain_completionBlock___block_invoke_2(void *a1)
{
  [*(*(a1[7] + 8) + 40) setValue:a1[4] forKey:a1[5]];
  v2 = a1[6];
  if (v2)
  {
    v3 = *(a1[8] + 8);
    v5 = *(v3 + 40);
    v4 = (v3 + 40);
    if (!v5)
    {

      objc_storeStrong(v4, v2);
    }
  }
}

+ (void)_findFirstValueInBag:(id)bag keyEnumerator:(id)enumerator valueTransformer:(id)transformer defaultValue:(id)value completionBlock:(id)block
{
  bagCopy = bag;
  enumeratorCopy = enumerator;
  transformerCopy = transformer;
  valueCopy = value;
  blockCopy = block;
  nextObject = [enumeratorCopy nextObject];
  if (nextObject)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __106__SBKStoreURLBagContext__findFirstValueInBag_keyEnumerator_valueTransformer_defaultValue_completionBlock___block_invoke;
    v18[3] = &unk_279D22E30;
    v22 = transformerCopy;
    v23 = blockCopy;
    selfCopy = self;
    v19 = bagCopy;
    v20 = enumeratorCopy;
    v21 = valueCopy;
    [v19 loadValueForKey:nextObject completionBlock:v18];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, valueCopy, 0);
  }
}

void __106__SBKStoreURLBagContext__findFirstValueInBag_keyEnumerator_valueTransformer_defaultValue_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v6;
  if (v5 && ((v7 = v6, (v8 = *(a1 + 56)) == 0) || ((*(v8 + 16))(v8, v5, v7), v9 = objc_claimAutoreleasedReturnValue(), v5, (v5 = v9) != 0)))
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    [*(a1 + 72) _findFirstValueInBag:*(a1 + 32) keyEnumerator:*(a1 + 40) valueTransformer:*(a1 + 56) defaultValue:*(a1 + 48) completionBlock:*(a1 + 64)];
  }
}

+ (void)enumerateRequestURLBagKeysWithBlock:(id)block
{
  blockCopy = block;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__SBKStoreURLBagContext_enumerateRequestURLBagKeysWithBlock___block_invoke;
  v5[3] = &unk_279D22E08;
  v6 = blockCopy;
  v4 = blockCopy;
  [&unk_287CA2888 enumerateKeysAndObjectsUsingBlock:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  domain = [(SBKStoreURLBagContext *)self domain];
  v6 = [v4 _initWithDomain:domain syncRequestURL:0 domainDisabled:{-[SBKStoreURLBagContext domainDisabled](self, "domainDisabled")}];

  v7 = objc_opt_class();
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __38__SBKStoreURLBagContext_copyWithZone___block_invoke;
  v15 = &unk_279D22F88;
  v8 = v6;
  v16 = v8;
  selfCopy = self;
  [v7 enumerateRequestURLBagKeysWithBlock:&v12];
  [(SBKStoreURLBagContext *)self pollingIntervalInSeconds:v12];
  v8[2] = v9;
  v10 = v8;

  return v10;
}

void __38__SBKStoreURLBagContext_copyWithZone___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a3;
  v6 = [v4 valueForKey:v5];
  [v3 setValue:v6 forKey:v5];
}

- (SBKStoreURLBagContext)initWithBag:(id)bag domain:(id)domain
{
  domainCopy = domain;
  v10.receiver = self;
  v10.super_class = SBKStoreURLBagContext;
  v7 = [(SBKStoreURLBagContext *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_domain, domain);
  }

  return v8;
}

- (id)description
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_opt_class();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__SBKStoreURLBagContext_description__block_invoke;
  v11[3] = &unk_279D22F88;
  v12 = array;
  selfCopy = self;
  v5 = array;
  [v4 enumerateRequestURLBagKeysWithBlock:v11];
  v6 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = SBKStoreURLBagContext;
  v7 = [(SBKStoreURLBagContext *)&v10 description];
  v8 = [v6 stringWithFormat:@"%@ domain=%@, enabled=%d, requestURLs = \n%@\n\n", v7, self->_domain, !self->_domainDisabled, v5];

  return v8;
}

void __36__SBKStoreURLBagContext_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v6 valueForKey:v7];
  v9 = [v4 stringWithFormat:@"%@(%@) = %@", v7, v8, v10];

  [v5 addObject:v9];
}

- (SBKStoreURLBagContext)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBKStoreURLBagContext.m" lineNumber:194 description:@"Use +loadBagContextFromURLBag:domain:completionBlock:"];

  return 0;
}

- (id)_initWithDomain:(id)domain syncRequestURL:(id)l domainDisabled:(BOOL)disabled
{
  domainCopy = domain;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = SBKStoreURLBagContext;
  v11 = [(SBKStoreURLBagContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_domain, domain);
    objc_storeStrong(&v12->_syncRequestURL, l);
    v12->_domainDisabled = disabled;
  }

  return v12;
}

@end