@interface SKUIRedeemConfiguration
- (SKUIRedeemConfiguration)initWithOperationQueue:(id)a3 category:(int64_t)a4 clientContext:(id)a5;
- (id)_redeemPreflightRequestBodyData;
- (void)_didLoadWithResponseDictionary:(id)a3;
- (void)_loadConfigurationWithURLBagDictionary:(id)a3 completionBlock:(id)a4;
- (void)_loadDefaultImages;
- (void)_setInputImage:(id)a3;
- (void)_setLandingImage:(id)a3;
- (void)_setSuccessImage:(id)a3;
- (void)loadConfigurationWithCompletionBlock:(id)a3;
@end

@implementation SKUIRedeemConfiguration

- (SKUIRedeemConfiguration)initWithOperationQueue:(id)a3 category:(int64_t)a4 clientContext:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIRedeemConfiguration initWithOperationQueue:category:clientContext:];
  }

  v14.receiver = self;
  v14.super_class = SKUIRedeemConfiguration;
  v11 = [(SKUIRedeemConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_category = a4;
    objc_storeStrong(&v11->_clientContext, a5);
    objc_storeStrong(&v12->_operationQueue, a3);
  }

  return v12;
}

- (void)loadConfigurationWithCompletionBlock:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SKUIClientContext *)self->_clientContext URLBag];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SKUIRedeemConfiguration_loadConfigurationWithCompletionBlock___block_invoke;
  v7[3] = &unk_2781FFF10;
  v6 = v4;
  v8 = v6;
  objc_copyWeak(&v9, &location);
  [v5 loadWithCompletionBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __64__SKUIRedeemConfiguration_loadConfigurationWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__SKUIRedeemConfiguration_loadConfigurationWithCompletionBlock___block_invoke_2;
    block[3] = &unk_2781F9810;
    objc_copyWeak(&v7, (a1 + 40));
    v5 = v3;
    v6 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v7);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __64__SKUIRedeemConfiguration_loadConfigurationWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _loadConfigurationWithURLBagDictionary:*(a1 + 32) completionBlock:*(a1 + 40)];
}

- (void)_didLoadWithResponseDictionary:(id)a3
{
  v4 = a3;
  category = self->_category;
  v6 = @"inputAppStore;";
  if (category == 2)
  {
    v6 = @"inputIBooks";
  }

  if (category == 1)
  {
    v7 = @"inputITunes";
  }

  else
  {
    v7 = v6;
  }

  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  v9 = @"RetinaImageUrl";
  if (v10 == 1.0)
  {
    v9 = @"ImageUrl";
  }

  v11 = v9;

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v7, v11];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"landing", v11];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"success", v11];
  v15 = [v4 objectForKey:v13];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = objc_alloc(MEMORY[0x277D69CD8]);
    v17 = [MEMORY[0x277CBEBC0] URLWithString:v15];
    v18 = [v16 initWithURL:v17];

    v19 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
    [v18 setDataConsumer:v19];

    [v18 setITunesStoreRequest:0];
    objc_initWeak(&location, self);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __58__SKUIRedeemConfiguration__didLoadWithResponseDictionary___block_invoke;
    v37[3] = &unk_2781FA1F8;
    objc_copyWeak(&v38, &location);
    [v18 setOutputBlock:v37];
    [(NSOperationQueue *)self->_operationQueue addOperation:v18];
    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  v20 = [v4 objectForKey:v14];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_alloc(MEMORY[0x277D69CD8]);
    v22 = [MEMORY[0x277CBEBC0] URLWithString:v20];
    v23 = [v21 initWithURL:v22];

    v24 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
    [v23 setDataConsumer:v24];

    [v23 setITunesStoreRequest:0];
    objc_initWeak(&location, self);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __58__SKUIRedeemConfiguration__didLoadWithResponseDictionary___block_invoke_3;
    v35[3] = &unk_2781FA1F8;
    objc_copyWeak(&v36, &location);
    [v23 setOutputBlock:v35];
    [(NSOperationQueue *)self->_operationQueue addOperation:v23];
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  v25 = [v4 objectForKey:v12];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = objc_alloc(MEMORY[0x277D69CD8]);
    v27 = [MEMORY[0x277CBEBC0] URLWithString:v25];
    v28 = [v26 initWithURL:v27];

    v29 = +[(SSVURLDataConsumer *)SKUIImageDataConsumer];
    [v28 setDataConsumer:v29];

    [v28 setITunesStoreRequest:0];
    objc_initWeak(&location, self);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __58__SKUIRedeemConfiguration__didLoadWithResponseDictionary___block_invoke_5;
    v33[3] = &unk_2781FA1F8;
    objc_copyWeak(&v34, &location);
    [v28 setOutputBlock:v33];
    [(NSOperationQueue *)self->_operationQueue addOperation:v28];
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  v30 = [v4 objectForKey:@"itunesPass"];
  if (self->_itunesPassConfiguration)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[SKUIITunesPassConfiguration alloc] initWithITunesPassDictionary:v30 clientContext:self->_clientContext];
      itunesPassConfiguration = self->_itunesPassConfiguration;
      self->_itunesPassConfiguration = v31;
    }
  }
}

void __58__SKUIRedeemConfiguration__didLoadWithResponseDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SKUIRedeemConfiguration__didLoadWithResponseDictionary___block_invoke_2;
  v5[3] = &unk_2781FB310;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __58__SKUIRedeemConfiguration__didLoadWithResponseDictionary___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setLandingImage:*(a1 + 32)];
}

void __58__SKUIRedeemConfiguration__didLoadWithResponseDictionary___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SKUIRedeemConfiguration__didLoadWithResponseDictionary___block_invoke_4;
  v5[3] = &unk_2781FB310;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __58__SKUIRedeemConfiguration__didLoadWithResponseDictionary___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setSuccessImage:*(a1 + 32)];
}

void __58__SKUIRedeemConfiguration__didLoadWithResponseDictionary___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SKUIRedeemConfiguration__didLoadWithResponseDictionary___block_invoke_6;
  v5[3] = &unk_2781FB310;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __58__SKUIRedeemConfiguration__didLoadWithResponseDictionary___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setInputImage:*(a1 + 32)];
}

- (void)_loadConfigurationWithURLBagDictionary:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"getAddCreditPassUrl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [[SKUIITunesPassConfiguration alloc] initWithITunesPassDictionary:0 clientContext:self->_clientContext];
    itunesPassConfiguration = self->_itunesPassConfiguration;
    self->_itunesPassConfiguration = v9;
  }

  [(SKUIRedeemConfiguration *)self _loadDefaultImages];
  v11 = [v6 objectForKey:@"redeemPreflightIosSrv"];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CBAB50]);
    v13 = [MEMORY[0x277CBEBC0] URLWithString:v11];
    v14 = [v12 initWithURL:v13];

    v15 = [(SKUIRedeemConfiguration *)self _redeemPreflightRequestBodyData];
    [v14 setHTTPBody:v15];

    [v14 setHTTPMethod:@"POST"];
    [v14 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v16 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURLRequest:v14];
    v17 = +[(SSVURLDataConsumer *)SKUIJSONDataConsumer];
    [v16 setDataConsumer:v17];

    [v16 setITunesStoreRequest:1];
    v18 = [(SKUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
    [v16 setStoreFrontSuffix:v18];

    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __82__SKUIRedeemConfiguration__loadConfigurationWithURLBagDictionary_completionBlock___block_invoke;
    v19[3] = &unk_2781FFAE8;
    objc_copyWeak(&v21, &location);
    v20 = v7;
    [v16 setOutputBlock:v19];
    [(NSOperationQueue *)self->_operationQueue addOperation:v16];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v7 + 2))(v7, 1, 0);
  }
}

void __82__SKUIRedeemConfiguration__loadConfigurationWithURLBagDictionary_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__SKUIRedeemConfiguration__loadConfigurationWithURLBagDictionary_completionBlock___block_invoke_2;
  block[3] = &unk_2781F9810;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v8);
}

uint64_t __82__SKUIRedeemConfiguration__loadConfigurationWithURLBagDictionary_completionBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _didLoadWithResponseDictionary:*(a1 + 32)];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)_loadDefaultImages
{
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D755B8] imageNamed:@"RedemptionCardArtwork" inBundle:v9];
  inputImage = self->_inputImage;
  self->_inputImage = v3;

  v5 = [MEMORY[0x277D755B8] imageNamed:@"RedemptionCardArtworkCobra" inBundle:v9];
  landingImage = self->_landingImage;
  self->_landingImage = v5;

  v7 = [MEMORY[0x277D755B8] imageNamed:@"RedemptionCardStack" inBundle:v9];
  successImage = self->_successImage;
  self->_successImage = v7;
}

- (id)_redeemPreflightRequestBodyData
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:@"iosRedeemPreflightInfo" forKey:@"preflightKey"];
  [v2 setObject:@"application/json" forKey:@"response-content-type"];
  v3 = [MEMORY[0x277D7FCE0] sharedInstance];
  v4 = [v3 guid];

  if (v4)
  {
    [v2 setObject:v4 forKey:@"guid"];
  }

  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"{"];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__SKUIRedeemConfiguration__redeemPreflightRequestBodyData__block_invoke;
  v9[3] = &unk_2781FFF38;
  v10 = v5;
  v6 = v5;
  [v2 enumerateKeysAndObjectsUsingBlock:v9];
  [v6 replaceCharactersInRange:objc_msgSend(v6 withString:{"length") - 1, 1, @"}"}];
  v7 = [v6 dataUsingEncoding:4];

  return v7;
}

- (void)_setInputImage:(id)a3
{
  v5 = a3;
  p_inputImage = &self->_inputImage;
  if (self->_inputImage != v5)
  {
    v8 = v5;
    objc_storeStrong(p_inputImage, a3);
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"SKUIRedeemConfigurationImagesDidLoadNotification" object:self];

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_inputImage, v5);
}

- (void)_setLandingImage:(id)a3
{
  v5 = a3;
  p_landingImage = &self->_landingImage;
  if (self->_landingImage != v5)
  {
    v8 = v5;
    objc_storeStrong(p_landingImage, a3);
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"SKUIRedeemConfigurationImagesDidLoadNotification" object:self];

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_landingImage, v5);
}

- (void)_setSuccessImage:(id)a3
{
  v5 = a3;
  p_successImage = &self->_successImage;
  if (self->_successImage != v5)
  {
    v8 = v5;
    objc_storeStrong(p_successImage, a3);
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"SKUIRedeemConfigurationImagesDidLoadNotification" object:self];

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_successImage, v5);
}

- (void)initWithOperationQueue:category:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemConfiguration initWithOperationQueue:category:clientContext:]";
}

@end