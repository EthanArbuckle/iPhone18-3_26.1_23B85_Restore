@interface RegionalResourceObserver
- (RegionalResourceObserver)initWithResourceProvider:(void *)a3;
- (id).cxx_construct;
- (void)clearProvider;
@end

@implementation RegionalResourceObserver

- (id).cxx_construct
{
  *(self + 2) = 850045863;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 9) = 0;
  return self;
}

- (void)clearProvider
{
  std::mutex::lock((self + 16));
  *(self + 1) = 0;
  std::mutex::unlock((self + 16));
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:*(self + 10)];
}

- (RegionalResourceObserver)initWithResourceProvider:(void *)a3
{
  v13.receiver = self;
  v13.super_class = RegionalResourceObserver;
  v4 = [(RegionalResourceObserver *)&v13 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 1) = a3;
    objc_initWeak(&location, v4);
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__RegionalResourceObserver_initWithResourceProvider___block_invoke;
    v10[3] = &unk_1E7B39898;
    objc_copyWeak(&v11, &location);
    v7 = [v6 addObserverForName:@"GEOTileLoaderDidUpdateRegionalResourcesNotification" object:0 queue:0 usingBlock:v10];
    v8 = *(v5 + 10);
    *(v5 + 10) = v7;

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __53__RegionalResourceObserver_initWithResourceProvider___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    std::mutex::lock((WeakRetained + 16));
    v2 = *(v5 + 1);
    if (v2)
    {
      std::mutex::lock((v2 + 112));
      v3 = GEOGetVectorKitVKGeoResourceProviderLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 328) - *(v2 + 320)) >> 3);
        *buf = 134217984;
        v7 = v4;
        _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "Received onRegionalResourceUpdate - clearing cached resource names (count:%lu)", buf, 0xCu);
      }

      std::vector<std::pair<std::bitset<2ul>,std::shared_ptr<std::vector<std::string,geo::allocator_adapter<std::string,grl::zone_mallocator>>>>>::clear[abi:nn200100]((v2 + 320));
      grl::ResourceProvider::clearResourceNamesCache(v2);
      std::mutex::unlock((v2 + 112));
    }

    std::mutex::unlock((v5 + 16));
    WeakRetained = v5;
  }
}

@end