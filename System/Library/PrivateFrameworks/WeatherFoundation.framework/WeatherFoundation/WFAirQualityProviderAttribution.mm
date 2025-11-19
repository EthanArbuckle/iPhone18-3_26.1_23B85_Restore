@interface WFAirQualityProviderAttribution
+ (WFAirQualityProviderAttribution)defaultProviderAttribution;
- (BOOL)p_checkRequestInFlight;
- (WFAirQualityProviderAttribution)initWithCoder:(id)a3;
- (WFAirQualityProviderAttribution)initWithName:(id)a3 logoImage:(id)a4 dataOrigination:(int64_t)a5 station:(id)a6;
- (WFAirQualityProviderAttribution)initWithName:(id)a3 logoURL:(id)a4 dataOrigination:(int64_t)a5 station:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)p_imageWithData:(id)a3;
- (void)_initInternal;
- (void)encodeWithCoder:(id)a3;
- (void)loadLogoImageWithCompletion:(id)a3;
- (void)p_clearRequestInFlight;
- (void)p_invokeAndClearCompletionBlocksWithImage:(id)a3 error:(id)a4;
- (void)p_loadRemoteLogoImageForProvider:(id)a3 completion:(id)a4;
- (void)p_queueCompletionBlock:(id)a3;
- (void)p_setRequestInFlight;
@end

@implementation WFAirQualityProviderAttribution

+ (WFAirQualityProviderAttribution)defaultProviderAttribution
{
  v2 = +[WFAttribution sharedAttribution];
  v3 = [v2 sourceAttributionImageForStyle:2];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__WFAirQualityProviderAttribution_defaultProviderAttribution__block_invoke;
  v9[3] = &unk_279E6EA40;
  v10 = @"The Weather Channel";
  v11 = v3;
  v4 = defaultProviderAttribution_onceToken;
  v5 = v3;
  if (v4 != -1)
  {
    dispatch_once(&defaultProviderAttribution_onceToken, v9);
  }

  v6 = defaultProviderAttribution_attribution;
  v7 = defaultProviderAttribution_attribution;

  return v6;
}

uint64_t __61__WFAirQualityProviderAttribution_defaultProviderAttribution__block_invoke(uint64_t a1)
{
  v1 = [[WFAirQualityProviderAttribution alloc] initWithName:*(a1 + 32) logoImage:*(a1 + 40) dataOrigination:0 station:0];
  v2 = defaultProviderAttribution_attribution;
  defaultProviderAttribution_attribution = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (WFAirQualityProviderAttribution)initWithName:(id)a3 logoImage:(id)a4 dataOrigination:(int64_t)a5 station:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = WFAirQualityProviderAttribution;
  v14 = [(WFAirQualityProviderAttribution *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, a3);
    objc_storeStrong(&v15->_cachedLogoImage, a4);
    v15->_dataOrigination = a5;
    objc_storeStrong(&v15->_station, a6);
    [(WFAirQualityProviderAttribution *)v15 _initInternal];
  }

  return v15;
}

- (WFAirQualityProviderAttribution)initWithName:(id)a3 logoURL:(id)a4 dataOrigination:(int64_t)a5 station:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = WFAirQualityProviderAttribution;
  v14 = [(WFAirQualityProviderAttribution *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, a3);
    objc_storeStrong(&v15->_logoURL, a4);
    v15->_dataOrigination = a5;
    objc_storeStrong(&v15->_station, a6);
    [(WFAirQualityProviderAttribution *)v15 _initInternal];
  }

  return v15;
}

- (void)_initInternal
{
  v3 = [MEMORY[0x277CBEB18] array];
  outstandingRequestsCompletionBlocks = self->_outstandingRequestsCompletionBlocks;
  self->_outstandingRequestsCompletionBlocks = v3;

  self->_logoRequestInFlight = 0;
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.weatherfoundation.airquality.attribution.logo.image.loading", v5);
  logoImageLoadingQueue = self->_logoImageLoadingQueue;
  self->_logoImageLoadingQueue = v6;

  self->_dataSynchronizationLock._os_unfair_lock_opaque = 0;
}

- (void)loadLogoImageWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(WFAirQualityProviderAttribution *)self logoImageLoadingQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__WFAirQualityProviderAttribution_loadLogoImageWithCompletion___block_invoke;
  v7[3] = &unk_279E6F6A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __63__WFAirQualityProviderAttribution_loadLogoImageWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedLogoImage];

  if (v2)
  {
    v3 = *(a1 + 40);
    v5 = [*(a1 + 32) cachedLogoImage];
    (*(v3 + 16))(v3);
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [v4 name];
    [v4 p_loadRemoteLogoImageForProvider:? completion:?];
  }
}

- (void)p_loadRemoteLogoImageForProvider:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFAirQualityProviderAttribution *)self logoImageLoadingQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(WFAirQualityProviderAttribution *)self logoURL];
  if (v9)
  {
    if ([(WFAirQualityProviderAttribution *)self p_checkRequestInFlight])
    {
      [(WFAirQualityProviderAttribution *)self p_queueCompletionBlock:v7];
    }

    else
    {
      [(WFAirQualityProviderAttribution *)self p_setRequestInFlight];
      [(WFAirQualityProviderAttribution *)self p_queueCompletionBlock:v7];
      objc_initWeak(&location, self);
      v11 = [MEMORY[0x277CCAD30] sharedSession];
      v12 = [(WFAirQualityProviderAttribution *)self logoURL];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __79__WFAirQualityProviderAttribution_p_loadRemoteLogoImageForProvider_completion___block_invoke;
      v14[3] = &unk_279E6F6D0;
      objc_copyWeak(&v15, &location);
      v14[4] = self;
      v13 = [v11 dataTaskWithURL:v12 completionHandler:v14];

      [v13 resume];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.foundation.airQuality.provider.attribution.errorDomain" code:7001 userInfo:0];
    [(WFAirQualityProviderAttribution *)self p_invokeAndClearCompletionBlocksWithImage:0 error:v10];
  }
}

void __79__WFAirQualityProviderAttribution_p_loadRemoteLogoImageForProvider_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__WFAirQualityProviderAttribution_p_loadRemoteLogoImageForProvider_completion___block_invoke_2;
  v11[3] = &unk_279E6F4C8;
  v12 = v6;
  v13 = v7;
  v14 = *(a1 + 32);
  v15 = WeakRetained;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

uint64_t __79__WFAirQualityProviderAttribution_p_loadRemoteLogoImageForProvider_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v2 = [*(a1 + 48) p_imageWithData:?];
    [*(a1 + 56) setCachedLogoImage:v2];
    v3 = *(a1 + 56);
    v4 = v2;
    v5 = 0;
  }

  else
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.weather.foundation.airQuality.provider.attribution.errorDomain" code:7000 userInfo:0];
    v3 = *(a1 + 56);
    v4 = 0;
    v5 = v2;
  }

  [v3 p_invokeAndClearCompletionBlocksWithImage:v4 error:v5];

  v6 = *(a1 + 56);

  return [v6 p_clearRequestInFlight];
}

- (id)p_imageWithData:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getUIImageClass_softClass;
  v12 = getUIImageClass_softClass;
  if (!getUIImageClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getUIImageClass_block_invoke;
    v8[3] = &unk_279E6EA68;
    v8[4] = &v9;
    __getUIImageClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [v4 imageWithData:v3];

  return v6;
}

- (BOOL)p_checkRequestInFlight
{
  os_unfair_lock_lock_with_options();
  v3 = [(WFAirQualityProviderAttribution *)self logoRequestInFlight];
  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  return v3;
}

- (void)p_setRequestInFlight
{
  os_unfair_lock_lock_with_options();
  [(WFAirQualityProviderAttribution *)self setLogoRequestInFlight:1];

  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
}

- (void)p_clearRequestInFlight
{
  os_unfair_lock_lock_with_options();
  [(WFAirQualityProviderAttribution *)self setLogoRequestInFlight:0];

  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
}

- (void)p_queueCompletionBlock:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(WFAirQualityProviderCompletionWrapper);
  [(WFAirQualityProviderCompletionWrapper *)v6 setCompletion:v4];

  os_unfair_lock_lock_with_options();
  v5 = [(WFAirQualityProviderAttribution *)self outstandingRequestsCompletionBlocks];
  [v5 addObject:v6];

  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
}

- (void)p_invokeAndClearCompletionBlocksWithImage:(id)a3 error:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [(WFAirQualityProviderAttribution *)self outstandingRequestsCompletionBlocks];
  v9 = [v8 copy];

  v10 = [(WFAirQualityProviderAttribution *)self outstandingRequestsCompletionBlocks];
  [v10 removeAllObjects];

  os_unfair_lock_unlock(&self->_dataSynchronizationLock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v17 + 1) + 8 * v15) completion];
        (v16)[2](v16, v6, v7);

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(WFAirQualityProviderAttribution);
  v5 = [(WFAirQualityProviderAttribution *)self name];
  [(WFAirQualityProviderAttribution *)v4 setName:v5];

  v6 = [(WFAirQualityProviderAttribution *)self logoURL];
  [(WFAirQualityProviderAttribution *)v4 setLogoURL:v6];

  [(WFAirQualityProviderAttribution *)v4 setDataOrigination:[(WFAirQualityProviderAttribution *)self dataOrigination]];
  v7 = [(WFAirQualityProviderAttribution *)self cachedLogoImage];
  [(WFAirQualityProviderAttribution *)v4 setCachedLogoImage:v7];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(WFAirQualityProviderAttribution *)self name];
  [v6 encodeObject:v4 forKey:@"WFAirQualityProviderNameKey"];

  v5 = [(WFAirQualityProviderAttribution *)self logoURL];
  [v6 encodeObject:v5 forKey:@"WFAirQualityProviderLogoURLKey"];

  [v6 encodeInteger:-[WFAirQualityProviderAttribution dataOrigination](self forKey:{"dataOrigination"), @"WFAirQualityProviderDataOriginationKey"}];
}

- (WFAirQualityProviderAttribution)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WFAirQualityProviderAttribution;
  v5 = [(WFAirQualityProviderAttribution *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityProviderNameKey"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WFAirQualityProviderLogoURLKey"];
    logoURL = v5->_logoURL;
    v5->_logoURL = v8;

    v5->_dataOrigination = [v4 decodeIntegerForKey:@"WFAirQualityProviderDataOriginationKey"];
    [(WFAirQualityProviderAttribution *)v5 _initInternal];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WFAirQualityProviderAttribution *)self name];
  v5 = [(WFAirQualityProviderAttribution *)self dataOrigination];
  v6 = [(WFAirQualityProviderAttribution *)self station];
  v7 = [v3 stringWithFormat:@"<WFAirQualityProviderAttribution name: %@, dataOrigination: %ld, station: %@>", v4, v5, v6];

  return v7;
}

@end