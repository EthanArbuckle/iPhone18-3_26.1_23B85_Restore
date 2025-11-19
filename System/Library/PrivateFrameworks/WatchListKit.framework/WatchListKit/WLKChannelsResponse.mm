@interface WLKChannelsResponse
+ (id)parseChannelsFromPayload:(id)a3;
- (BOOL)isValidForFiltered:(BOOL)a3;
- (NSArray)orderedChannels;
- (NSDictionary)channels;
- (void)modifyConsentStatusForChannelEntry:(id)a3 consented:(BOOL)a4;
- (void)setChannels:(id)a3;
- (void)setOrderedChannels:(id)a3;
@end

@implementation WLKChannelsResponse

void __82__WLKChannelsResponse_initWithDictionary_expirationDate_environmentHash_filtered___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = [[WLKChannelDetails alloc] initWithDictionary:v4];

  v5 = [(WLKChannelDetails *)v8 channelID];

  if (v5)
  {
    [*(a1 + 32) addObject:v8];
    v6 = *(a1 + 40);
    v7 = [(WLKChannelDetails *)v8 channelID];
    [v6 setObject:v8 forKey:v7];
  }
}

- (void)setChannels:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  modificationQueue = self->_modificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__WLKChannelsResponse_setChannels___block_invoke;
  block[3] = &unk_279E60B28;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(modificationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __35__WLKChannelsResponse_setChannels___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 3, *(a1 + 32));
    WeakRetained = v3;
  }
}

- (NSDictionary)channels
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  objc_initWeak(&location, self);
  modificationQueue = self->_modificationQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__WLKChannelsResponse_channels__block_invoke;
  v6[3] = &unk_279E60B50;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v6[5] = &v9;
  dispatch_sync(modificationQueue, v6);
  v4 = v10[5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v9, 8);

  return v4;
}

void __31__WLKChannelsResponse_channels__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [*(*(a1 + 32) + 24) copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    WeakRetained = v6;
  }
}

- (void)setOrderedChannels:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  modificationQueue = self->_modificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__WLKChannelsResponse_setOrderedChannels___block_invoke;
  block[3] = &unk_279E60B28;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(modificationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __42__WLKChannelsResponse_setOrderedChannels___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_storeStrong(WeakRetained + 2, *(a1 + 32));
    WeakRetained = v3;
  }
}

- (NSArray)orderedChannels
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = objc_alloc_init(MEMORY[0x277CBEA60]);
  objc_initWeak(&location, self);
  modificationQueue = self->_modificationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__WLKChannelsResponse_orderedChannels__block_invoke;
  block[3] = &unk_279E60B78;
  objc_copyWeak(&v7, &location);
  block[4] = &v9;
  dispatch_sync(modificationQueue, block);
  v4 = v10[5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v9, 8);

  return v4;
}

void __38__WLKChannelsResponse_orderedChannels__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained[2] copy];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    WeakRetained = v6;
  }
}

- (void)modifyConsentStatusForChannelEntry:(id)a3 consented:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  modificationQueue = self->_modificationQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__WLKChannelsResponse_modifyConsentStatusForChannelEntry_consented___block_invoke;
  v9[3] = &unk_279E60BA0;
  objc_copyWeak(&v11, &location);
  v10 = v6;
  v12 = a4;
  v8 = v6;
  dispatch_async(modificationQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __68__WLKChannelsResponse_modifyConsentStatusForChannelEntry_consented___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained[3] objectForKey:*(a1 + 32)];
    v4 = v3;
    if (v3)
    {
      [v3 setConsented:*(a1 + 48)];
    }

    WeakRetained = v5;
  }
}

- (BOOL)isValidForFiltered:(BOOL)a3
{
  v3 = a3;
  filtered = self->_filtered;
  v6 = [(WLKChannelsResponse *)self channels];

  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    [(NSDate *)expirationDate timeIntervalSinceNow];
    v9 = v8 > -5.0;
  }

  else
  {
    v9 = 0;
  }

  environmentHash = self->_environmentHash;
  v11 = +[WLKUserEnvironment currentEnvironment];
  v12 = [v11 hash];

  result = 0;
  if (filtered == v3 && v6)
  {
    return environmentHash == v12 && v9;
  }

  return result;
}

+ (id)parseChannelsFromPayload:(id)a3
{
  v3 = [a3 wlk_arrayForKey:@"channels"];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__WLKChannelsResponse_parseChannelsFromPayload___block_invoke;
  v8[3] = &unk_279E5FB20;
  v5 = v4;
  v9 = v5;
  [v3 enumerateObjectsUsingBlock:v8];
  if ([v5 count])
  {
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __48__WLKChannelsResponse_parseChannelsFromPayload___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[WLKChannelDetails alloc] initWithDictionary:v3];

  v4 = [(WLKChannelDetails *)v5 channelID];

  if (v4)
  {
    [*(a1 + 32) addObject:v5];
  }
}

@end