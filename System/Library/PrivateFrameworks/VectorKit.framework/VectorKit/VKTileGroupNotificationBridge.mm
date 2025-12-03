@interface VKTileGroupNotificationBridge
- (VKTileGroupNotificationBridge)initWithManager:(weak_ptr<md::TileGroupNotificationManager>)manager;
- (id).cxx_construct;
- (void)initWithManager:;
@end

@implementation VKTileGroupNotificationBridge

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (VKTileGroupNotificationBridge)initWithManager:(weak_ptr<md::TileGroupNotificationManager>)manager
{
  ptr = manager.__ptr_;
  v32 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = VKTileGroupNotificationBridge;
  v4 = [(VKTileGroupNotificationBridge *)&v22 init:manager.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_manager.__cntrl_;
    v5->_manager.__ptr_ = v7;
    v5->_manager.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_weak(cntrl);
    }

    v9 = [VKManifestTileGroupObserverProxy alloc];
    v10 = MEMORY[0x1E69E96A0];
    v11 = MEMORY[0x1E69E96A0];
    v12 = [(VKManifestTileGroupObserverProxy *)v9 initWithQueue:v10];
    proxy = v5->_proxy;
    v5->_proxy = v12;

    objc_initWeak(&location, v5);
    v14 = v5->_proxy;
    objc_copyWeak(&to, &location);
    v31 = 0;
    v29 = &unk_1F2A3EA90;
    objc_moveWeak(&v30, &to);
    v31 = &v29;
    objc_destroyWeak(&to);
    [(VKManifestTileGroupObserverProxy *)v14 setWillChangeActiveTileGroup:&v29];
    std::__function::__value_func<void ()(GEOResourceManifestManager *)>::~__value_func[abi:nn200100](&v29);
    v15 = v5->_proxy;
    objc_copyWeak(&from, &location);
    v28 = 0;
    v26 = &unk_1F2A3EAD8;
    objc_moveWeak(&v27, &from);
    v28 = &v26;
    objc_destroyWeak(&from);
    [(VKManifestTileGroupObserverProxy *)v15 setDidChangeActiveTileGroup:&v26];
    std::__function::__value_func<void ()(GEOResourceManifestManager *,GEOActiveTileGroup *,GEOActiveTileGroup *)>::~__value_func[abi:nn200100](&v26);
    v16 = v5->_proxy;
    objc_copyWeak(&v18, &location);
    v25 = 0;
    v23 = &unk_1F2A3EB20;
    objc_moveWeak(&v24, &v18);
    v25 = &v23;
    objc_destroyWeak(&v18);
    [(VKManifestTileGroupObserverProxy *)v16 setExperimentConfigurationDidChange:&v23];
    std::__function::__value_func<void ()(GEOExperimentConfiguration *)>::~__value_func[abi:nn200100](&v23);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)initWithManager:
{
  objc_destroyWeak((self + 8));

  JUMPOUT(0x1B8C62190);
}

@end