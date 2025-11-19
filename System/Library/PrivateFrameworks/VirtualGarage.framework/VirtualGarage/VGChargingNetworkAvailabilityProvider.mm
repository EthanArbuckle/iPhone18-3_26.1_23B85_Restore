@interface VGChargingNetworkAvailabilityProvider
- (NSArray)otherNetworks;
- (NSArray)suggestedNetworks;
- (VGChargingNetworkAvailabilityProvider)initWithDelegate:(id)a3;
- (void)_reloadNetworks;
- (void)countryCodeDidChange:(id)a3;
- (void)dealloc;
- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)a3;
@end

@implementation VGChargingNetworkAvailabilityProvider

- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)a3
{
  v4 = VGGetChargingNetworksLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_INFO, "resourceManifestManagerDidChangeActiveTileGroup:, will reload networks", v5, 2u);
  }

  [(VGChargingNetworkAvailabilityProvider *)self _reloadNetworks];
}

- (void)countryCodeDidChange:(id)a3
{
  v4 = VGGetChargingNetworksLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_INFO, "countryCodeDidChange:, will reload networks ", buf, 2u);
  }

  objc_initWeak(buf, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__VGChargingNetworkAvailabilityProvider_countryCodeDidChange___block_invoke;
  block[3] = &unk_279E26E88;
  objc_copyWeak(&v7, buf);
  dispatch_async(workQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __62__VGChargingNetworkAvailabilityProvider_countryCodeDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadNetworks];
}

- (void)_reloadNetworks
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = VGGetChargingNetworksLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "Started reloading networks", buf, 2u);
  }

  suggestedNetworks = self->_suggestedNetworks;
  self->_suggestedNetworks = 0;

  otherNetworks = self->_otherNetworks;
  self->_otherNetworks = 0;

  v6 = GEOConfigGetString();
  v7 = [MEMORY[0x277D0ECC8] sharedManager];
  v8 = [v7 dataForResourceWithName:v6 fallbackBundle:0];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D0ECF8]) initWithData:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 chargingNetworkInfo];
      if (v11)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __56__VGChargingNetworkAvailabilityProvider__reloadNetworks__block_invoke;
        v38[3] = &unk_279E26950;
        v33 = v11;
        v39 = v33;
        v14 = v12;
        v40 = v14;
        v15 = v13;
        v41 = v15;
        v16 = MEMORY[0x2743B8310](v38);
        v17 = [MEMORY[0x277D0EB00] sharedConfiguration];
        v18 = [v17 countryCode];

        v34 = v18;
        v35 = v16;
        (*(v16 + 16))(v16, v18);
        if (!-[NSObject count](v14, "count") && ![v15 count])
        {
          v19 = VGGetChargingNetworksLog();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v43 = v18;
            _os_log_impl(&dword_270EC1000, v19, OS_LOG_TYPE_INFO, "Country code: %@ did not produce any networks, will fallback to using global list.", buf, 0xCu);
          }

          (v35)[2](v35, @"global");
        }

        v20 = VGGetChargingNetworksLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v32 = [v14 count];
          v21 = v11;
          v22 = v15;
          v23 = [v15 count];
          v24 = [v33 brandInfoMappings];
          v25 = [v24 count];
          *buf = 134218496;
          v43 = v32;
          v44 = 2048;
          v45 = v23;
          v15 = v22;
          v11 = v21;
          v46 = 2048;
          v47 = v25;
          _os_log_impl(&dword_270EC1000, v20, OS_LOG_TYPE_INFO, "Created %lu suggested and %lu other networks out of %lu mappings", buf, 0x20u);
        }

        v26 = [v14 sortedArrayUsingComparator:&__block_literal_global_827];
        v27 = self->_suggestedNetworks;
        self->_suggestedNetworks = v26;

        v28 = [v15 sortedArrayUsingComparator:&__block_literal_global_18];
        v29 = self->_otherNetworks;
        self->_otherNetworks = v28;

        objc_initWeak(buf, self);
        delegateQueue = self->_delegateQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __56__VGChargingNetworkAvailabilityProvider__reloadNetworks__block_invoke_3;
        block[3] = &unk_279E26E88;
        objc_copyWeak(&v37, buf);
        dispatch_async(delegateQueue, block);
        objc_destroyWeak(&v37);
        objc_destroyWeak(buf);
      }

      else
      {
        v14 = VGGetChargingNetworksLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v43 = v10;
          _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_FAULT, "There was no featuresInfo with charging networks info: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v11 = VGGetChargingNetworksLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_FAULT, "Failed to parse charging networks pb file", buf, 2u);
      }
    }
  }

  else
  {
    v10 = VGGetChargingNetworksLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v43 = v6;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_FAULT, "Failed to load charging networks data with filename: %@", buf, 0xCu);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __56__VGChargingNetworkAvailabilityProvider__reloadNetworks__block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = a1;
  v4 = [*(a1 + 32) brandInfoMappings];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v23;
    *&v6 = 138412290;
    v20 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 isoCountryCodes];
        v12 = [v3 lowercaseString];
        v13 = [v11 indexOfObject:v12];

        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = [[VGChargingNetwork alloc] initWithBrandInfoMapping:v10];
          if (v14)
          {
            v15 = [v10 isSuggestedsCount];
            if (v15 != [v10 isoCountryCodesCount])
            {
              v16 = VGGetChargingNetworksLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
              {
                *buf = v20;
                v27 = v10;
                _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_FAULT, "Malformed brandInfoMapping. notify the routing team: %@", buf, 0xCu);
              }
            }

            if (v13 < [v10 isSuggestedsCount] && *(objc_msgSend(v10, "isSuggesteds") + v13) == 1)
            {
              v17 = *(v21 + 40);
            }

            else
            {
              v17 = *(v21 + 48);
            }

            [v17 addObject:v14];
          }

          else
          {
            v18 = VGGetChargingNetworksLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v27 = v10;
              _os_log_impl(&dword_270EC1000, v18, OS_LOG_TYPE_ERROR, "Failed to create a network from brandInfoMapping: %{public}@", buf, 0xCu);
            }
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __56__VGChargingNetworkAvailabilityProvider__reloadNetworks__block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 3);
    [v3 availableNetworksDidChangeForProvider:v2];
  }

  else
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[VGChargingNetworkAvailabilityProvider _reloadNetworks]_block_invoke_3";
      v7 = 1024;
      v8 = 169;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v5, 0x12u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __56__VGChargingNetworkAvailabilityProvider__reloadNetworks__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

uint64_t __56__VGChargingNetworkAvailabilityProvider__reloadNetworks__block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

- (NSArray)otherNetworks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__837;
  v10 = __Block_byref_object_dispose__838;
  v11 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__VGChargingNetworkAvailabilityProvider_otherNetworks__block_invoke;
  v5[3] = &unk_279E26928;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __54__VGChargingNetworkAvailabilityProvider_otherNetworks__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSArray)suggestedNetworks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__837;
  v10 = __Block_byref_object_dispose__838;
  v11 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__VGChargingNetworkAvailabilityProvider_suggestedNetworks__block_invoke;
  v5[3] = &unk_279E26928;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __58__VGChargingNetworkAvailabilityProvider_suggestedNetworks__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D0ECD0] modernManager];
  [v3 removeTileGroupObserver:self];

  v4.receiver = self;
  v4.super_class = VGChargingNetworkAvailabilityProvider;
  [(VGChargingNetworkAvailabilityProvider *)&v4 dealloc];
}

- (VGChargingNetworkAvailabilityProvider)initWithDelegate:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = VGChargingNetworkAvailabilityProvider;
  v5 = [(VGChargingNetworkAvailabilityProvider *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("VGChargingNetworkAvailabilityProvider.WorkQueue", v7);
    workQueue = v6->_workQueue;
    v6->_workQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("VGChargingNetworkAvailabilityProvider.DelegateQueue", v10);
    delegateQueue = v6->_delegateQueue;
    v6->_delegateQueue = v11;

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v6 selector:sel_countryCodeDidChange_ name:*MEMORY[0x277D0E7C8] object:0];

    v14 = [MEMORY[0x277D0ECD0] modernManager];
    [v14 addTileGroupObserver:v6 queue:v6->_workQueue];

    objc_initWeak(&location, v6);
    v15 = v6->_workQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__VGChargingNetworkAvailabilityProvider_initWithDelegate___block_invoke;
    v17[3] = &unk_279E26E88;
    objc_copyWeak(&v18, &location);
    dispatch_async(v15, v17);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __58__VGChargingNetworkAvailabilityProvider_initWithDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadNetworks];
}

@end