@interface VKSharedResources
- (CMPhotoDecompressionSession)defaultDecompressionSession;
- (id).cxx_construct;
- (id)_initWithDevice:(void *)a3 standardLibrary:(const void *)a4;
- (shared_ptr<md::MaterialTextureManager>)materialTextureManager;
- (shared_ptr<md::StandardCommandBufferSelector>)standardCommandBufferSelector;
- (shared_ptr<md::StylesheetVendor>)stylesheetVendor;
- (shared_ptr<md::TextureManager>)textureManager;
- (uint64_t)_initWithDevice:standardLibrary:;
- (void)_initWithDevice:standardLibrary:;
- (void)_removeResourceUser;
- (void)dealloc;
- (void)frameDidComplete:(unint64_t)a3;
- (void)prune:(unsigned __int8)a3;
- (void)purgeDecompressSessionCachedBuffers;
- (void)startDecompressionSession;
- (void)undulationModel;
@end

@implementation VKSharedResources

- (shared_ptr<md::StandardCommandBufferSelector>)standardCommandBufferSelector
{
  cntrl = self->_standardCommandBufferSelector.__cntrl_;
  *v2 = self->_standardCommandBufferSelector.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  self->_iconManager._vptr$_retain_ptr = &unk_1F29E2CF0;
  self->_iconManager._obj = 0;
  self->_textureManager = 0u;
  self->_materialTextureManager = 0u;
  self->_sharedResourceManager.__ptr_ = 0;
  self->_resourceManager._vptr$_retain_ptr = &unk_1F2A2FC10;
  self->_resourceManager._obj = 0;
  self->_stylesheetVendor = 0u;
  self->_dataOverrideManager = 0u;
  self->_standardCommandBufferSelector = 0u;
  *&self->_device.__ptr_ = 0u;
  *&self->_alphaAtlas.__ptr_ = 0u;
  *&self->_isoAlphaAtlas.__ptr_ = 0u;
  self->_shaderLibrary = 0u;
  geo::read_write_lock::read_write_lock(&self->_figCreationLock._lock);
  self->_grlFontManager = 0u;
  self->_tileGroupNotificationManager = 0u;
  self->_resourceProvider = 0u;
  self->_grlIconManager = 0u;
  self->_globalFrameStamp.__a_.__a_value = 0;
  self->_undulationModelCreationFlag.__state_ = 0;
  return self;
}

- (shared_ptr<md::MaterialTextureManager>)materialTextureManager
{
  cntrl = self->_materialTextureManager.__cntrl_;
  *v2 = self->_materialTextureManager.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (shared_ptr<md::TextureManager>)textureManager
{
  cntrl = self->_textureManager.__cntrl_;
  *v2 = self->_textureManager.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (shared_ptr<md::StylesheetVendor>)stylesheetVendor
{
  cntrl = self->_stylesheetVendor.__cntrl_;
  *v2 = self->_stylesheetVendor.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)purgeDecompressSessionCachedBuffers
{
  MEMORY[0x1B8C60E30](self, a2);

  CMPhotoDecompressionSessionFlushCachedBuffers();
}

- (void)_removeResourceUser
{
  referenceCount = self->_referenceCount;
  if (referenceCount)
  {
    self->_referenceCount = referenceCount - 1;
  }
}

- (void)startDecompressionSession
{
  p_figCreationLock = &self->_figCreationLock;
  v3 = pthread_rwlock_wrlock(&self->_figCreationLock._lock);
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "write lock", v4);
  }

  if (!self->_defaultDecompressionSession)
  {
    CMPhotoDecompressionSessionCreate();
  }

  geo::write_lock_guard::~write_lock_guard(&p_figCreationLock);
}

- (void)frameDidComplete:(unint64_t)a3
{
  ptr = self->_sharedResourceManager.__ptr_;
  std::__shared_mutex_base::lock_shared(ptr);
  v5 = 176;
  while (*(ptr + v5) != a3)
  {
    v5 += 8;
    if (v5 == 304)
    {
      goto LABEL_11;
    }
  }

  v6 = ptr + 208 * ((v5 - 176) >> 3) + 304;
  std::__shared_mutex_base::lock(v6);
  for (i = *(v6 + 184); i; i = *i)
  {
    v9 = i[2];
    v8 = i[3];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add((v9 + 24), 0xFFFFFFFF);
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    else
    {
      atomic_fetch_add((v9 + 24), 0xFFFFFFFF);
    }
  }

  std::__hash_table<std::shared_ptr<md::SharedResource>,std::hash<std::shared_ptr<md::SharedResource>>,std::equal_to<std::shared_ptr<md::SharedResource>>,std::allocator<std::shared_ptr<md::SharedResource>>>::clear(v6 + 168);
  std::__shared_mutex_base::unlock(v6);
LABEL_11:

  std::__shared_mutex_base::unlock_shared(ptr);
}

- (void)prune:(unsigned __int8)a3
{
  v3 = a3;
  md::TextureManager::purge(self->_textureManager.__ptr_);
  md::MaterialTextureManager::purge(self->_materialTextureManager.__ptr_);
  if ((v3 - 1) <= 1)
  {
    [(VKInternalIconManager *)self->_iconManager._obj purge];

    [(VKSharedResources *)self purgeDecompressSessionCachedBuffers];
  }
}

- (void)dealloc
{
  cntrl = self->_grlIconManager.__cntrl_;
  self->_grlIconManager.__ptr_ = 0;
  self->_grlIconManager.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }

  v4 = self->_grlFontManager.__cntrl_;
  self->_grlFontManager.__ptr_ = 0;
  self->_grlFontManager.__cntrl_ = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = self->_resourceProvider.__cntrl_;
  self->_resourceProvider.__ptr_ = 0;
  self->_resourceProvider.__cntrl_ = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::TileGroupNotificationManager::removeObserver(self->_tileGroupNotificationManager.__ptr_, self->_stylesheetVendor.__ptr_);
  v6 = self->_stylesheetVendor.__cntrl_;
  self->_stylesheetVendor.__ptr_ = 0;
  self->_stylesheetVendor.__cntrl_ = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  obj = self->_iconManager._obj;
  if (obj)
  {
    self->_iconManager._obj = 0;
  }

  v8 = self->_textureManager.__cntrl_;
  self->_textureManager.__ptr_ = 0;
  self->_textureManager.__cntrl_ = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = self->_materialTextureManager.__cntrl_;
  self->_materialTextureManager.__ptr_ = 0;
  self->_materialTextureManager.__cntrl_ = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = self->_resourceManager._obj;
  if (v10)
  {
    self->_resourceManager._obj = 0;
  }

  ptr = self->_alphaAtlas.__ptr_;
  self->_alphaAtlas.__ptr_ = 0;
  if (ptr)
  {
    std::default_delete<ggl::AlphaAtlas>::operator()[abi:nn200100](ptr);
  }

  std::unique_ptr<ggl::IsoAlphaAtlas>::reset[abi:nn200100](&self->_highInflationAlphaAtlas, 0);
  std::unique_ptr<ggl::IsoAlphaAtlas>::reset[abi:nn200100](&self->_isoAlphaAtlas, 0);
  v12 = self->_distanceAtlas.__ptr_;
  self->_distanceAtlas.__ptr_ = 0;
  if (v12)
  {
    std::default_delete<ggl::DistanceAtlas>::operator()[abi:nn200100](v12);
  }

  v13 = self->_shaderLibrary.__cntrl_;
  self->_shaderLibrary.__ptr_ = 0;
  self->_shaderLibrary.__cntrl_ = 0;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  std::unique_ptr<md::Device>::reset[abi:nn200100](&self->_device, 0);
  if (self->_snapshotterIsInService)
  {
    CTFontRemoveFromCaches();
    CGFontDBGetLocal();
    CGFontDBPurgeAllFonts();
    CGFontCacheGetLocalCache();
    CGFontCacheReset();
  }

  if (self->_defaultDecompressionSession)
  {
    CMPhotoDecompressionSessionReleaseHardwareResources();
    CMPhotoDecompressionSessionFlushCachedBuffers();
    CFRelease(self->_defaultDecompressionSession);
    self->_defaultDecompressionSession = 0;
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v14 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B2754000, v14, OS_LOG_TYPE_INFO, "Resetting memory allocators", buf, 2u);
  }

  v16 = gss::zone_mallocator::instance(v15);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::reset(v16);
  ggl::resetAllocator(v17);
  v19 = mdm::zone_mallocator::instance(v18);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::reset(v19);
  v21 = grl::zone_mallocator::instance(v20);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::reset(v21);
  geo::codec::resetAllocator(v22);
  MEMORY[0x1B8C61440]();
  v23.receiver = self;
  v23.super_class = VKSharedResources;
  [(VKSharedResources *)&v23 dealloc];
}

- (id)_initWithDevice:(void *)a3 standardLibrary:(const void *)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VKSharedResources;
  v5 = [(VKSharedResources *)&v10 init];
  v6 = v5;
  if (a3 && v5)
  {
    std::unique_ptr<md::Device>::reset[abi:nn200100](v5 + 18, a3);
    v7 = objc_alloc_init(VKResourceManager);
    v11.__r_.__value_.__r.__words[0] = &unk_1F2A2FC10;
    v11.__r_.__value_.__l.__size_ = v7;
    v8 = v7;
    geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v6 + 72, &v11);
    v11.__r_.__value_.__r.__words[0] = &unk_1F2A2FC10;

    operator new();
  }

  return 0;
}

- (void)_initWithDevice:standardLibrary:
{
  *a1 = &unk_1F29E2C70;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

- (uint64_t)_initWithDevice:standardLibrary:
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F29E2C70;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

- (CMPhotoDecompressionSession)defaultDecompressionSession
{
  geo::read_write_lock::read_lock(&self->_figCreationLock._lock);
  defaultDecompressionSession = self->_defaultDecompressionSession;
  geo::read_write_lock::unlock(&self->_figCreationLock._lock);
  if (!defaultDecompressionSession)
  {
    [(VKSharedResources *)self startDecompressionSession];
  }

  return self->_defaultDecompressionSession;
}

- (void)undulationModel
{
  v5 = self;
  p_undulationModelCreationFlag = &self->_undulationModelCreationFlag;
  v4 = &v5;
  if (atomic_load_explicit(p_undulationModelCreationFlag, memory_order_acquire) != -1)
  {
    v7 = &v4;
    v6 = &v7;
    std::__call_once(&p_undulationModelCreationFlag->__state_, &v6, std::__call_once_proxy[abi:nn200100]<std::tuple<-[VKSharedResources undulationModel]::$_1 &&>>);
  }

  return v5->_undulationModel.__ptr_;
}

@end