@interface SKUIDonationConfiguration
- (SKUIDonationConfiguration)initWithOperationQueue:(id)a3 clientContext:(id)a4;
- (id)charityForIdentifier:(id)a3;
- (id)logoImageForCharity:(id)a3;
- (void)_finishLoadWithResponse:(id)a3 error:(id)a4 block:(id)a5;
- (void)_setLogoImage:(id)a3 forCharity:(id)a4;
- (void)addObserver:(id)a3;
- (void)loadConfigurationWithCompletionBlock:(id)a3;
- (void)loadLogoForCharity:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation SKUIDonationConfiguration

- (SKUIDonationConfiguration)initWithOperationQueue:(id)a3 clientContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIDonationConfiguration initWithOperationQueue:clientContext:];
  }

  v12.receiver = self;
  v12.super_class = SKUIDonationConfiguration;
  v9 = [(SKUIDonationConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, a4);
    objc_storeStrong(&v10->_operationQueue, a3);
  }

  return v10;
}

- (void)addObserver:(id)a3
{
  objc_initWeak(&location, a3);
  observers = self->_observers;
  if (!observers)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:0];
    v6 = self->_observers;
    self->_observers = v5;

    observers = self->_observers;
  }

  v7 = objc_loadWeakRetained(&location);
  [(NSHashTable *)observers addObject:v7];

  objc_destroyWeak(&location);
}

- (id)charityForIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_charities;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)loadConfigurationWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = self->_operationQueue;
  objc_initWeak(&location, self);
  v6 = [(SKUIClientContext *)self->_clientContext URLBag];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SKUIDonationConfiguration_loadConfigurationWithCompletionBlock___block_invoke;
  v9[3] = &unk_2781FFDE0;
  v7 = v4;
  v11 = v7;
  v9[4] = self;
  objc_copyWeak(&v12, &location);
  v8 = v5;
  v10 = v8;
  [v6 loadValueForKey:@"charityGiftPageData" completionBlock:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __66__SKUIDonationConfiguration_loadConfigurationWithCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
    v8 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v7];
    v9 = +[(SSVURLDataConsumer *)SKUIJSONDataConsumer];
    [v8 setDataConsumer:v9];

    v10 = [*(*(a1 + 32) + 24) valueForConfigurationKey:@"sfsuffix"];
    [v8 setStoreFrontSuffix:v10];

    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __66__SKUIDonationConfiguration_loadConfigurationWithCompletionBlock___block_invoke_2;
    v14 = &unk_2781FFAE8;
    objc_copyWeak(&v16, (a1 + 56));
    v15 = *(a1 + 48);
    [v8 setOutputBlock:&v11];
    [*(a1 + 40) addOperation:{v8, v11, v12, v13, v14}];

    objc_destroyWeak(&v16);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __66__SKUIDonationConfiguration_loadConfigurationWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SKUIDonationConfiguration_loadConfigurationWithCompletionBlock___block_invoke_3;
  v9[3] = &unk_2781FB3D8;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __66__SKUIDonationConfiguration_loadConfigurationWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _finishLoadWithResponse:*(a1 + 32) error:*(a1 + 40) block:*(a1 + 48)];
}

- (void)loadLogoForCharity:(id)a3
{
  v4 = a3;
  charityImages = self->_charityImages;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)charityImages objectForKey:v6];

  if (!v7)
  {
    v8 = [v4 logoArtwork];
    v9 = [v8 URL];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:v9];
      v11 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
      [v10 setDataConsumer:v11];

      [v10 setITunesStoreRequest:0];
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __48__SKUIDonationConfiguration_loadLogoForCharity___block_invoke;
      v12[3] = &unk_2781FFE08;
      objc_copyWeak(&v14, &location);
      v13 = v4;
      [v10 setOutputBlock:v12];
      [(NSOperationQueue *)self->_operationQueue addOperation:v10];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

void __48__SKUIDonationConfiguration_loadLogoForCharity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__SKUIDonationConfiguration_loadLogoForCharity___block_invoke_2;
    block[3] = &unk_2781FA0C8;
    objc_copyWeak(&v7, (a1 + 40));
    v5 = v3;
    v6 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v7);
  }
}

void __48__SKUIDonationConfiguration_loadLogoForCharity___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setLogoImage:*(a1 + 32) forCharity:*(a1 + 40)];
}

- (id)logoImageForCharity:(id)a3
{
  charityImages = self->_charityImages;
  v4 = [a3 identifier];
  v5 = [(NSMutableDictionary *)charityImages objectForKey:v4];

  return v5;
}

- (void)removeObserver:(id)a3
{
  observers = self->_observers;
  v4 = a3;
  [(NSHashTable *)observers removeObject:v4];
}

- (void)_finishLoadWithResponse:(id)a3 error:(id)a4 block:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 objectForKey:@"charities"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = self;
      v30 = v9;
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v28 = v11;
      v13 = v11;
      v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v32;
        do
        {
          v17 = 0;
          do
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v31 + 1) + 8 * v17);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[SKUIGiftCharity alloc] initWithCharityDictionary:v18];
              [v12 addObject:v19];
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v15);
      }

      v20 = [v12 copy];
      self = v29;
      charities = v29->_charities;
      v29->_charities = v20;

      v9 = v30;
      v11 = v28;
    }

    v22 = [v8 objectForKey:@"donationBuyUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v22];
      donationPurchaseURL = self->_donationPurchaseURL;
      self->_donationPurchaseURL = v23;
    }

    v25 = [v8 objectForKey:@"donationValidateUrl"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v25];
      donationValidationURL = self->_donationValidationURL;
      self->_donationValidationURL = v26;
    }

    v10[2](v10, 1, 0);
  }

  else
  {
    (v10)[2](v10, 0, v9);
  }
}

- (void)_setLogoImage:(id)a3 forCharity:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(NSArray *)self->_charities indexOfObjectIdenticalTo:v7]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    charityImages = self->_charityImages;
    if (!charityImages)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = self->_charityImages;
      self->_charityImages = v9;

      charityImages = self->_charityImages;
    }

    v11 = [v7 identifier];
    [(NSMutableDictionary *)charityImages setObject:v6 forKey:v11];

    v12 = [(NSHashTable *)self->_observers allObjects];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v18 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v17 donationConfigurationController:self didLoadLogoForCharity:v7];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (void)initWithOperationQueue:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIDonationConfiguration initWithOperationQueue:clientContext:]";
}

@end