__n128 std::__function::__func<std::__bind<void (md::MapEngine::*)(double),md::MapEngine*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (md::MapEngine::*)(double),md::MapEngine*,std::placeholders::__ph<1> const&>>,void ()(double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A21E60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::MapEngine::_renderSceneAsync(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (md::MapEngine::canRender(a1))
  {
    md::MapEngine::runUpdatePhase(a1, a4, 0);
    v8 = *(a1 + 47360);
    __lk.__m_ = (v8 + 176);
    __lk.__owns_ = 1;
    std::mutex::lock((v8 + 176));
    if (*(v8 + 292) == 1)
    {
      do
      {
        std::condition_variable::wait((v8 + 240), &__lk);
      }

      while ((*(v8 + 292) & 1) != 0);
    }

    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v9 = GEOGetVectorKitPerformanceLog_log;
    v10 = v9;
    v11 = *(v8 + 296);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *v17 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "HomeQueueReservation", &unk_1B3514CAA, v17, 2u);
    }

    v12 = (md::HomeQueueScheduler::waitForReservation(void)::reservationKey + 1);
    md::HomeQueueScheduler::waitForReservation(void)::reservationKey = v12;
    *(v8 + 288) = v12;
    *(v8 + 292) = 1;
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v24, a2);
    md::MapEngine::buildFrameRequest(a1, v12 | 0x100000000, v24);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v24);
    gdc::ServiceLocator::resolve<md::FrameService>(**(a1 + 47336), *(*(a1 + 47336) + 8));
    v19 = a1;
    v20 = v12;
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](&v21, a3);
    v23 = 0;
    operator new();
  }

  v13 = *(a3 + 24);
  if (!v13)
  {
    v16 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v22);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a1);
    _Unwind_Resume(v16);
  }

  v14 = *(*v13 + 48);

  return v14();
}

uint64_t std::__function::__func<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0,std::allocator<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 47360);
  v3 = *(a1 + 16);
  std::mutex::lock((v2 + 176));
  if (*(v2 + 292) == 1 && *(v2 + 288) == v3)
  {
    geo::concurrent_queue_base<std::function<void ()(void)>,geo::BasicStoragePolicy<std::function<void ()(void)>>>::close(v2);
    if (*(v2 + 292) == 1)
    {
      *(v2 + 292) = 0;
    }

    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v4 = GEOGetVectorKitPerformanceLog_log;
    v5 = v4;
    v6 = *(v2 + 296);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v5, OS_SIGNPOST_INTERVAL_END, v6, "HomeQueueReservation", &unk_1B3514CAA, v11, 2u);
    }

    std::mutex::unlock((v2 + 176));
    std::condition_variable::notify_one((v2 + 240));
  }

  else
  {
    std::mutex::unlock((v2 + 176));
  }

  v7 = *(a1 + 48);
  if (!v7)
  {
    v10 = std::__throw_bad_function_call[abi:nn200100]();
    std::mutex::unlock((v2 + 176));
    _Unwind_Resume(v10);
  }

  v8 = *(*v7 + 48);

  return v8();
}

void std::__function::__func<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0,std::allocator<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a1 + 24);

  operator delete(a1);
}

uint64_t std::__function::__func<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0,std::allocator<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A26820;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](a2 + 24, a1 + 24);
}

void std::__function::__func<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0,std::allocator<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A26820;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 3));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0,std::allocator<md::MapEngine::_renderSceneAsync(double,std::function<void ()(void)>,std::function<void ()(void)>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A26820;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 3));
  return a1;
}

uint64_t std::__function::__func<md::MapEngine::onRenderTimerFired(double,std::function<void ()(void)>)::$_0,std::allocator<md::MapEngine::onRenderTimerFired(double,std::function<void ()(void)>)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  *a2 = &unk_1F2A26940;
  a2[1] = v2;
  a2[2] = v3;
  return result;
}

void std::__shared_ptr_emplace<ggl::DisplayLink>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A21DE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::MapEngineLogger *,std::shared_ptr<md::MapEngineLogger>::__shared_ptr_default_delete<md::MapEngineLogger,md::MapEngineLogger>,std::allocator<md::MapEngineLogger>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::MapEngineLogger *,std::shared_ptr<md::MapEngineLogger>::__shared_ptr_default_delete<md::MapEngineLogger,md::MapEngineLogger>,std::allocator<md::MapEngineLogger>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MapEngineLogger::~MapEngineLogger(void **this)
{
  *this = &unk_1F2A21D80;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A21D80;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void md::MapEngineSignals::ThreadSafeSignal<unsigned long,BOOL>::~ThreadSafeSignal(uint64_t a1)
{
  std::mutex::lock(a1);
  if (*(a1 + 96))
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>>>::__deallocate_node(*(a1 + 88));
    *(a1 + 88) = 0;
    v2 = *(a1 + 80);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(a1 + 72) + 8 * i) = 0;
      }
    }

    *(a1 + 96) = 0;
  }

  std::mutex::unlock(a1);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>>>::~__hash_table(a1 + 72);

  std::mutex::~mutex(a1);
}

void sub_1B3023B70(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>>>::~__hash_table(v1[1].__m_.__opaque);
  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(unsigned long,BOOL)>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__function::__value_func<void ()(unsigned long,BOOL)>::~__value_func[abi:nn200100]((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__shared_ptr_pointer<md::MapEngineSignals *,std::shared_ptr<md::MapEngineSignals>::__shared_ptr_default_delete<md::MapEngineSignals,md::MapEngineSignals>,std::allocator<md::MapEngineSignals>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::MapEngineSignals::ThreadSafeSignal<unsigned long,BOOL>::~ThreadSafeSignal(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::MapEngineSignals *,std::shared_ptr<md::MapEngineSignals>::__shared_ptr_default_delete<md::MapEngineSignals,md::MapEngineSignals>,std::allocator<md::MapEngineSignals>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::NullFaultNotificationService *,std::shared_ptr<md::NullFaultNotificationService>::__shared_ptr_default_delete<md::NullFaultNotificationService,md::NullFaultNotificationService>,std::allocator<md::NullFaultNotificationService>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::NullFaultNotificationService *,std::shared_ptr<md::NullFaultNotificationService>::__shared_ptr_default_delete<md::NullFaultNotificationService,md::NullFaultNotificationService>,std::allocator<md::NullFaultNotificationService>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::DefaultFaultNotificationService *,std::shared_ptr<md::DefaultFaultNotificationService>::__shared_ptr_default_delete<md::DefaultFaultNotificationService,md::DefaultFaultNotificationService>,std::allocator<md::DefaultFaultNotificationService>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::DefaultFaultNotificationService *,std::shared_ptr<md::DefaultFaultNotificationService>::__shared_ptr_default_delete<md::DefaultFaultNotificationService,md::DefaultFaultNotificationService>,std::allocator<md::DefaultFaultNotificationService>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::StandardRouteElevationSource *,std::shared_ptr<md::StandardRouteElevationSource>::__shared_ptr_default_delete<md::StandardRouteElevationSource,md::StandardRouteElevationSource>,std::allocator<md::StandardRouteElevationSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::StandardRouteElevationSource *,std::shared_ptr<md::StandardRouteElevationSource>::__shared_ptr_default_delete<md::StandardRouteElevationSource,md::StandardRouteElevationSource>,std::allocator<md::StandardRouteElevationSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::FlyoverRouteElevationSource *,std::shared_ptr<md::FlyoverRouteElevationSource>::__shared_ptr_default_delete<md::FlyoverRouteElevationSource,md::FlyoverRouteElevationSource>,std::allocator<md::FlyoverRouteElevationSource>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::FlyoverRouteElevationSource *,std::shared_ptr<md::FlyoverRouteElevationSource>::__shared_ptr_default_delete<md::FlyoverRouteElevationSource,md::FlyoverRouteElevationSource>,std::allocator<md::FlyoverRouteElevationSource>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::MapEngineInteractivePowerLogger *,std::shared_ptr<md::MapEngineInteractivePowerLogger>::__shared_ptr_default_delete<md::MapEngineInteractivePowerLogger,md::MapEngineInteractivePowerLogger>,std::allocator<md::MapEngineInteractivePowerLogger>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::MapEngineInteractivePowerLogger *,std::shared_ptr<md::MapEngineInteractivePowerLogger>::__shared_ptr_default_delete<md::MapEngineInteractivePowerLogger,md::MapEngineInteractivePowerLogger>,std::allocator<md::MapEngineInteractivePowerLogger>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::AccessibilityHelper *,std::shared_ptr<md::AccessibilityHelper>::__shared_ptr_default_delete<md::AccessibilityHelper,md::AccessibilityHelper>,std::allocator<md::AccessibilityHelper>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::AccessibilityHelper *,std::shared_ptr<md::AccessibilityHelper>::__shared_ptr_default_delete<md::AccessibilityHelper,md::AccessibilityHelper>,std::allocator<md::AccessibilityHelper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

md::FeatureFlagProvider *std::__shared_ptr_pointer<md::FeatureFlagProvider *,std::shared_ptr<md::FeatureFlagProvider>::__shared_ptr_default_delete<md::FeatureFlagProvider,md::FeatureFlagProvider>,std::allocator<md::FeatureFlagProvider>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    md::FeatureFlagProvider::~FeatureFlagProvider(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::FeatureFlagProvider *,std::shared_ptr<md::FeatureFlagProvider>::__shared_ptr_default_delete<md::FeatureFlagProvider,md::FeatureFlagProvider>,std::allocator<md::FeatureFlagProvider>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_pointer<gdc::ResourceRequestRouter *,std::shared_ptr<gdc::ResourceRequestRouter>::__shared_ptr_default_delete<gdc::ResourceRequestRouter,gdc::ResourceRequestRouter>,std::allocator<gdc::ResourceRequestRouter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<mre::GGLResourceStore *,std::shared_ptr<mre::GGLResourceStore>::__shared_ptr_default_delete<mre::GGLResourceStore,mre::GGLResourceStore>,std::allocator<mre::GGLResourceStore>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

void std::__shared_ptr_pointer<mre::GGLResourceStore *,std::shared_ptr<mre::GGLResourceStore>::__shared_ptr_default_delete<mre::GGLResourceStore,mre::GGLResourceStore>,std::allocator<mre::GGLResourceStore>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::MapEngineCompatabilityServiceImpl *,std::shared_ptr<md::MapEngineCompatabilityServiceImpl>::__shared_ptr_default_delete<md::MapEngineCompatabilityServiceImpl,md::MapEngineCompatabilityServiceImpl>,std::allocator<md::MapEngineCompatabilityServiceImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::MapEngineCompatabilityServiceImpl *,std::shared_ptr<md::MapEngineCompatabilityServiceImpl>::__shared_ptr_default_delete<md::MapEngineCompatabilityServiceImpl,md::MapEngineCompatabilityServiceImpl>,std::allocator<md::MapEngineCompatabilityServiceImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<RendererPassListProviderWrapper *,std::shared_ptr<RendererPassListProviderWrapper>::__shared_ptr_default_delete<RendererPassListProviderWrapper,RendererPassListProviderWrapper>,std::allocator<RendererPassListProviderWrapper>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__shared_ptr_pointer<RendererPassListProviderWrapper *,std::shared_ptr<RendererPassListProviderWrapper>::__shared_ptr_default_delete<RendererPassListProviderWrapper,RendererPassListProviderWrapper>,std::allocator<RendererPassListProviderWrapper>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::MapEngineCallbackGraphService *,std::shared_ptr<md::MapEngineCallbackGraphService>::__shared_ptr_default_delete<md::MapEngineCallbackGraphService,md::MapEngineCallbackGraphService>,std::allocator<md::MapEngineCallbackGraphService>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::MapEngineCallbackGraphService *,std::shared_ptr<md::MapEngineCallbackGraphService>::__shared_ptr_default_delete<md::MapEngineCallbackGraphService,md::MapEngineCallbackGraphService>,std::allocator<md::MapEngineCallbackGraphService>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::MapEngineFrameService *,std::shared_ptr<md::MapEngineFrameService>::__shared_ptr_default_delete<md::MapEngineFrameService,md::MapEngineFrameService>,std::allocator<md::MapEngineFrameService>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::MapEngineFrameService *,std::shared_ptr<md::MapEngineFrameService>::__shared_ptr_default_delete<md::MapEngineFrameService,md::MapEngineFrameService>,std::allocator<md::MapEngineFrameService>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<std::atomic<unsigned long> *,std::shared_ptr<std::atomic<unsigned long>>::__shared_ptr_default_delete<std::atomic<unsigned long>,std::atomic<unsigned long>>,std::allocator<std::atomic<unsigned long>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<std::atomic<unsigned long> *,std::shared_ptr<std::atomic<unsigned long>>::__shared_ptr_default_delete<std::atomic<unsigned long>,std::atomic<unsigned long>>,std::allocator<std::atomic<unsigned long>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gdc::ServiceLocator>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        v3 -= 40;
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<gdc::ServiceLocator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A21938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::MapEngine::AnalyticsInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A218C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gdc::Statistics>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A21888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::_retain_ptr<VKCameraDelegateMediator * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A21918;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKCameraDelegateMediator * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A21918;

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::unordered_set<gdc::tf::Task>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unordered_set<gdc::tf::Task>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unordered_set<gdc::tf::Task>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::unordered_set<gdc::tf::Task>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[7];
      if (v4)
      {
        do
        {
          v5 = *v4;
          operator delete(v4);
          v4 = v5;
        }

        while (v5);
      }

      v6 = v2[5];
      v2[5] = 0;
      if (v6)
      {
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN3gdc2tf8TaskData6StaticENSB_17StaticWithContextENSB_12StaticModuleENSB_13DynamicModuleENSB_13ModuleFactoryEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJS8_SC_SD_SE_SF_SG_EEEEEEDcSK_DpT0_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  if (result == a2)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN3gdc2tf8TaskData6StaticENSB_17StaticWithContextENSB_12StaticModuleENSB_13DynamicModuleENSB_13ModuleFactoryEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJS8_SC_SD_SE_SF_SG_EEEEEEDcSK_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[7];
  a2[7] = 0;
  if (v3)
  {
    v4 = geo::Pool<geo::IntrusiveNode<gdc::tf::TaskData>>::~Pool(v3);
    MEMORY[0x1B8C62190](v4, 0x1020C407A7143E5);
  }

  v5 = a2[4];
  if (v5)
  {
    a2[5] = v5;
    operator delete(v5);
  }

  result = a2[3];
  if (result == a2)
  {
    v7 = *(*result + 32);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v7 = *(*result + 40);
  }

  return v7();
}

void geo::_retain_ptr<_MapEngineRenderQueueSource * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A218F8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<_MapEngineRenderQueueSource * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A218F8;

  return a1;
}

void std::__function::__func<md::MapEngine::~MapEngine()::$_0,std::allocator<md::MapEngine::~MapEngine()::$_0>,void ()(geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&,VKOverlayLevel)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = [*(a2 + 8) customTileProvider];

  if (v4)
  {
    [*(a2 + 8) setRunLoopController:0];
  }

  v5 = *(a2 + 8);
  v6 = [v5 runLoopController];
  v7 = *(a1 + 8);

  if (v6 == v7)
  {
    v8 = *(a2 + 8);

    [v8 setRunLoopController:0];
  }
}

uint64_t std::__function::__func<md::MapEngine::~MapEngine()::$_0,std::allocator<md::MapEngine::~MapEngine()::$_0>,void ()(geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc> const&,VKOverlayLevel)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A265F8;
  a2[1] = v2;
  return result;
}

void md::MapEngine::cancelDisplayLink(md::MapEngine *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    (*(*v2 + 32))(v2);
    if (*(this + 20) == *(this + 17))
    {
      v4 = *(this + 18);
      *(this + 17) = 0;
      *(this + 18) = 0;
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }
    }

    else
    {
      v3 = *(this + 19);
      *(this + 19) = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }
    }

    *(this + 20) = 0;
  }
}

void md::MapEngine::toggleVLR(md::MapEngine *this, int a2)
{
  v2 = a2;
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(this + 5241);
  if (!a2 || (*(v4 + 147) & 1) != 0)
  {
    if (*(v4 + 146) != a2)
    {
      *(v4 + 146) = a2;
    }
  }

  else
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v5 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "false";
      v8 = 2080;
      v9 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/MDLogicManager.mm";
      v10 = 1024;
      v11 = 161;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "[VLR] Trying enable VLR when it is not allowed: Assertion with expression - %s : Failed in file - %s line - %i", &v6, 0x1Cu);
    }
  }

  if ((v2 & 1) == 0)
  {

    md::MapEngine::setNeedsLayoutContinuously(this, 0, 0);
  }
}

id ___ZZN2md9MapEngine19_produceRenderQueueEvENK3__0clEmdN3ggl28RenderTransactionErrorStatusE_block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E695E118];
  v6[0] = @"AccessRevoked";
  v6[1] = @"MapPurpose";
  v1 = a1 + 32;
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1 + 32) + 8)];
  v7[1] = v2;
  v6[2] = @"MapMode";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*v1 + 4)];
  v7[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

id ___ZZN2md9MapEngine19_produceRenderQueueEvENK3__0clEmdN3ggl28RenderTransactionErrorStatusE_block_invoke_891(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E695E110];
  v6[0] = @"AccessRevoked";
  v6[1] = @"MapPurpose";
  v1 = a1 + 32;
  v2 = [MEMORY[0x1E696AD98] numberWithInt:*(*(a1 + 32) + 8)];
  v7[1] = v2;
  v6[2] = @"MapMode";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(*v1 + 4)];
  v7[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

void __destroy_helper_block_ea8_32c56_ZTSNSt3__110shared_ptrIN2md9MapEngine13AnalyticsInfoEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_32c56_ZTSNSt3__110shared_ptrIN2md9MapEngine13AnalyticsInfoEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::MapEngine::_produceRenderQueue(void)::$_0,std::allocator<md::MapEngine::_produceRenderQueue(void)::$_0>,void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::destroy(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void *std::__function::__func<md::MapEngine::_produceRenderQueue(void)::$_0,std::allocator<md::MapEngine::_produceRenderQueue(void)::$_0>,void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F2A266D0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = result[6];
  a2[5] = result[5];
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = result[8];
  a2[7] = result[7];
  a2[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  a2[9] = result[9];
  return result;
}

void std::__function::__func<md::MapEngine::_produceRenderQueue(void)::$_0,std::allocator<md::MapEngine::_produceRenderQueue(void)::$_0>,void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::~__func(void *a1)
{
  *a1 = &unk_1F2A266D0;
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::MapEngine::_produceRenderQueue(void)::$_0,std::allocator<md::MapEngine::_produceRenderQueue(void)::$_0>,void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::~__func(void *a1)
{
  *a1 = &unk_1F2A266D0;
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

uint64_t md::MapEngine::renderSceneInContextSync(md::MapEngine *this, CGContext *a2, double a3)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12 = a2;
  canRender = md::MapEngine::canRender(this);
  if (canRender)
  {
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v6 = GEOGetVectorKitPerformanceLog_log;
    if (os_signpost_enabled(v6))
    {
      canRenderAsync = md::MapEngine::canRenderAsync(this);

      if (canRenderAsync)
      {
        if (GEOGetVectorKitPerformanceLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
        }

        v8 = GEOGetVectorKitPerformanceLog_log;
        if (os_signpost_enabled(v8))
        {
          *v11 = 0;
          _os_signpost_emit_with_name_impl(&dword_1B2754000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ForceSyncRender", &unk_1B3514CAA, v11, 2u);
        }
      }
    }

    else
    {
    }

    md::HomeQueueScheduler::waitForSynchronization(*(this + 5920), "BOOL md::MapEngine::renderSceneInContextSync(CGContext *, double)");
    atomic_store(1u, this + 42005);
    md::MapEngine::runUpdatePhase(this, a3, 0);
    v9 = *(*(this + 11) + 16);
    v13[0] = &unk_1F2A26868;
    v13[1] = this;
    v13[2] = &v12;
    v13[3] = v13;
    geo::TaskQueue::barrierSync(v9, v13);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v13);
    atomic_store(0, this + 42005);
  }

  return canRender;
}

__n128 std::__function::__func<md::MapEngine::renderSceneInContextSync(CGContext *,double)::$_0,std::allocator<md::MapEngine::renderSceneInContextSync(CGContext *,double)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A26868;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::MapEngine::createDebugNode(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v164 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__p, "Map Engine");
  gdc::DebugTreeNode::DebugTreeNode(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Is Hidden");
  v85 = (a2 + 41544);
  gdc::DebugTreeValue::DebugTreeValue(v133, *(a2 + 42000));
  gdc::DebugTreeNode::addProperty(a1, &__p, v133);
  if (v135 < 0)
  {
    operator delete(v134);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Is In Background");
  gdc::DebugTreeValue::DebugTreeValue(v130, *(a2 + 42001));
  gdc::DebugTreeNode::addProperty(a1, &__p, v130);
  if (v132 < 0)
  {
    operator delete(v131);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Renders in Background");
  gdc::DebugTreeValue::DebugTreeValue(v127, *(a2 + 42002));
  gdc::DebugTreeNode::addProperty(a1, &__p, v127);
  if (v129 < 0)
  {
    operator delete(v128);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Needs Layout");
  v5 = atomic_load((a2 + 42003));
  gdc::DebugTreeValue::DebugTreeValue(v124, v5 & 1);
  gdc::DebugTreeNode::addProperty(a1, &__p, v124);
  if (v126 < 0)
  {
    operator delete(v125);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Needs Run Loop Update");
  v6 = atomic_load((a2 + 42004));
  gdc::DebugTreeValue::DebugTreeValue(v121, v6 & 1);
  gdc::DebugTreeNode::addProperty(a1, &__p, v121);
  if (v123 < 0)
  {
    operator delete(v122);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Render Target");
  ChildNode = gdc::DebugTreeNode::createChildNode(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 41656))
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "Has Render Target");
    gdc::DebugTreeValue::DebugTreeValue(v118, [*(a2 + 41656) hasRenderTarget]);
    gdc::DebugTreeNode::addProperty(a1, &__p, v118);
    if (v120 < 0)
    {
      operator delete(v119);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Content Scale");
    [*(a2 + 41656) contentScale];
    gdc::DebugTreeValue::DebugTreeValue(v115, v8);
    gdc::DebugTreeNode::addProperty(a1, &__p, v115);
    if (v117 < 0)
    {
      operator delete(v116);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Multi Sample");
    gdc::DebugTreeValue::DebugTreeValue(v112, [*(a2 + 41656) multiSample]);
    gdc::DebugTreeNode::addProperty(a1, &__p, v112);
    if (v114 < 0)
    {
      operator delete(v113);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Should Rasterize");
    gdc::DebugTreeValue::DebugTreeValue(v109, [*(a2 + 41656) shouldRasterize]);
    gdc::DebugTreeNode::addProperty(a1, &__p, v109);
    if (v111 < 0)
    {
      operator delete(v110);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Size Points");
    v9 = gdc::DebugTreeNode::createChildNode(ChildNode, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Width");
    [*(a2 + 41656) size];
    gdc::DebugTreeValue::DebugTreeValue(v106, v10);
    gdc::DebugTreeNode::addProperty(v9, &__p, v106);
    if (v108 < 0)
    {
      operator delete(v107);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Height");
    [*(a2 + 41656) size];
    gdc::DebugTreeValue::DebugTreeValue(v103, v11);
    gdc::DebugTreeNode::addProperty(v9, &__p, v103);
    if (v105 < 0)
    {
      operator delete(v104);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Size Pixels");
    v12 = gdc::DebugTreeNode::createChildNode(ChildNode, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Width");
    [*(a2 + 41656) sizeInPixels];
    gdc::DebugTreeValue::DebugTreeValue(v100, v13);
    gdc::DebugTreeNode::addProperty(v12, &__p, v100);
    if (v102 < 0)
    {
      operator delete(v101);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Height");
    [*(a2 + 41656) sizeInPixels];
    gdc::DebugTreeValue::DebugTreeValue(v97, v14);
    gdc::DebugTreeNode::addProperty(v12, &__p, v97);
    if (v99 < 0)
    {
      operator delete(v98);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Map Engine Settings");
  v15 = gdc::DebugTreeNode::createChildNode(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 41936))
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "HasUpdatedSettings");
    gdc::DebugTreeValue::DebugTreeValue(v94, *(*(a2 + 41936) + 40) != 0);
    gdc::DebugTreeNode::addProperty(v15, &__p, v94);
    if (v96 < 0)
    {
      operator delete(v95);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    for (i = 0; i != 40; ++i)
    {
      v17 = md::MapEngineSettingList[i];
      v18 = "<Invalid>";
      if (v17 <= 0x27)
      {
        v18 = off_1E7B38960[md::MapEngineSettingList[i]];
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, v18);
      v19 = v85[49];
      v20 = *v19;
      v21 = v19[1];
      while (1)
      {
        if (v20 == v21)
        {
          goto LABEL_78;
        }

        if (v17 == *v20)
        {
          break;
        }

        v20 += 16;
      }

      if (v20 == v21)
      {
LABEL_78:
        v22 = 0;
      }

      else
      {
        v22 = *(v20 + 1);
      }

      gdc::DebugTreeValue::DebugTreeValue(v91, v22);
      gdc::DebugTreeNode::addProperty(v15, &__p, v91);
      if (v93 < 0)
      {
        operator delete(v92);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v23 = v85[59];
  if (v23)
  {
    std::string::basic_string[abi:nn200100]<0>(&__str, "Map Engine Configuration");
    gdc::DebugTreeNode::DebugTreeNode(&__p, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&v155, "Configuration Type");
    v24 = *(v23 + 8);
    v25 = "<Invalid>";
    if (v24 <= 3)
    {
      v25 = off_1E7B3E278[v24];
    }

    gdc::DebugTreeValue::DebugTreeValue(&__str, v25);
    gdc::DebugTreeNode::addProperty(&__p, &v155, &__str);
    if (SHIBYTE(v162) < 0)
    {
      operator delete(v160);
    }

    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v155.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(v151, "Renderer Type");
    if (*(v23 + 9))
    {
      v26 = "<Invalid>";
    }

    else
    {
      v26 = "Cartographic";
    }

    gdc::DebugTreeValue::DebugTreeValue(&v155, v26);
    gdc::DebugTreeNode::addProperty(&__p, v151, &v155);
    if (v157 < 0)
    {
      operator delete(v156);
    }

    if (v152 < 0)
    {
      operator delete(v151[0]);
    }

    gdc::DebugTreeNode::addChildNode(a1, &__p);
    __str.__r_.__value_.__r.__words[0] = &v90 + 8;
    std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
    __str.__r_.__value_.__r.__words[0] = v89;
    std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
    if (SHIBYTE(v88[1]) < 0)
    {
      operator delete(v87);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v27 = v85[60];
  if (v27)
  {
    std::string::basic_string[abi:nn200100]<0>(&__str, "Map Engine Mpde");
    gdc::DebugTreeNode::DebugTreeNode(&__p, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&v155, "Type");
    v28 = *(v27 + 48);
    if (v28 > 0x11)
    {
      v29 = "<Invalid>";
    }

    else
    {
      v29 = off_1E7B38AA0[v28];
    }

    gdc::DebugTreeValue::DebugTreeValue(&__str, v29);
    gdc::DebugTreeNode::addProperty(&__p, &v155, &__str);
    if (SHIBYTE(v162) < 0)
    {
      operator delete(v160);
    }

    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v155.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(v151, "Animate Transitions");
    gdc::DebugTreeValue::DebugTreeValue(&v155, *(v27 + 49));
    gdc::DebugTreeNode::addProperty(&__p, v151, &v155);
    if (v157 < 0)
    {
      operator delete(v156);
    }

    if (v152 < 0)
    {
      operator delete(v151[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(v144, "Default Max Zoom");
    gdc::DebugTreeValue::DebugTreeValue(v151, *(v27 + 52));
    gdc::DebugTreeNode::addProperty(&__p, v144, v151);
    if (v154 < 0)
    {
      operator delete(v153);
    }

    if (v145 < 0)
    {
      operator delete(v144[0]);
    }

    v149 = 0;
    v148 = 0;
    v150 = 0;
    v84 = v27;
    for (j = *(v27 + 96); j; j = *j)
    {
      v31 = *(j + 8);
      v32 = "<Invalid>";
      if (v31 <= 0x51)
      {
        v32 = off_1E7B30210[v31];
      }

      std::string::basic_string[abi:nn200100]<0>(&v142, v32);
      memset(&v141, 0, sizeof(v141));
      v33 = *(j + 18);
      if (*(j + 18))
      {
        if (v33 != 1)
        {
          if (v33 == 2)
          {
            *(&v141.__r_.__value_.__s + 23) = 7;
            qmemcpy(&v141, "allowed", 7);
          }

          goto LABEL_132;
        }

        *(&v141.__r_.__value_.__s + 23) = 8;
        v34 = 0x6C616E6F6974706FLL;
      }

      else
      {
        *(&v141.__r_.__value_.__s + 23) = 8;
        v34 = 0x6465726975716572;
      }

      v141.__r_.__value_.__r.__words[0] = v34;
LABEL_132:
      v35 = *(j + 10);
      v36 = "<Invalid>";
      if (v35 <= 8)
      {
        v36 = off_1E7B3B318[v35];
      }

      std::string::basic_string[abi:nn200100]<0>(&v140, v36);
      if (v143 >= 0)
      {
        v37 = HIBYTE(v143);
      }

      else
      {
        v37 = *(&v142 + 1);
      }

      std::string::basic_string[abi:nn200100](&v136, v37 + 1);
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = &v136;
      }

      else
      {
        v38 = v136.__r_.__value_.__r.__words[0];
      }

      if (v37)
      {
        if (v143 >= 0)
        {
          v39 = &v142;
        }

        else
        {
          v39 = v142;
        }

        memmove(v38, v39, v37);
      }

      *(&v38->__r_.__value_.__l.__data_ + v37) = 32;
      if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v141;
      }

      else
      {
        v40 = v141.__r_.__value_.__r.__words[0];
      }

      if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v141.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v141.__r_.__value_.__l.__size_;
      }

      v42 = std::string::append(&v136, v40, size);
      v43 = v42->__r_.__value_.__r.__words[2];
      *&v137.__r_.__value_.__l.__data_ = *&v42->__r_.__value_.__l.__data_;
      v137.__r_.__value_.__r.__words[2] = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      v44 = std::string::append(&v137, " ", 1uLL);
      v45 = v44->__r_.__value_.__r.__words[2];
      *&v138.__r_.__value_.__l.__data_ = *&v44->__r_.__value_.__l.__data_;
      v138.__r_.__value_.__r.__words[2] = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v140;
      }

      else
      {
        v46 = v140.__r_.__value_.__r.__words[0];
      }

      if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v140.__r_.__value_.__l.__size_;
      }

      v48 = std::string::append(&v138, v46, v47);
      v49 = v48->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = *&v48->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      gdc::DebugTreeValue::DebugTreeValue(v144, &__dst);
      std::vector<gdc::DebugTreeValue>::push_back[abi:nn200100](&v148, v144);
      if (v147 < 0)
      {
        operator delete(v146);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v140.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v141.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v143) < 0)
      {
        operator delete(v142);
      }
    }

    std::string::basic_string[abi:nn200100]<0>(v144, "MapDataTypes");
    gdc::DebugTreeNode::addProperty(&__p, v144, &v148);
    if (v145 < 0)
    {
      operator delete(v144[0]);
    }

    v50 = v149;
    v51 = v148;
    while (v50 != v51)
    {
      if (*(v50 - 9) < 0)
      {
        operator delete(*(v50 - 32));
      }

      v50 -= 64;
    }

    v149 = v51;
    v52 = *(v84 + 200);
    if (v52)
    {
      while (1)
      {
        v142 = 0uLL;
        v143 = 0;
        v53 = *(v52 + 40);
        if (v53 == 2)
        {
          HIBYTE(v143) = 7;
          qmemcpy(&v142, "allowed", 7);
          goto LABEL_189;
        }

        if (v53 == 1)
        {
          break;
        }

        if (!*(v52 + 40))
        {
          HIBYTE(v143) = 8;
          v54 = 0x6465726975716572;
LABEL_187:
          *&v142 = v54;
        }

LABEL_189:
        v55 = v52[4];
        if (v55 > 0x7FFFFFFFFFFFFFF7)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v56 = v52[3];
        if (v55 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v52[4];
        if (v55)
        {
          memmove(&__dst, v56, v55);
        }

        __dst.__r_.__value_.__s.__data_[v55] = 0;
        v57 = std::string::append(&__dst, " ", 1uLL);
        v58 = v57->__r_.__value_.__r.__words[2];
        *&v140.__r_.__value_.__l.__data_ = *&v57->__r_.__value_.__l.__data_;
        v140.__r_.__value_.__r.__words[2] = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        if (v143 >= 0)
        {
          v59 = &v142;
        }

        else
        {
          v59 = v142;
        }

        if (v143 >= 0)
        {
          v60 = HIBYTE(v143);
        }

        else
        {
          v60 = *(&v142 + 1);
        }

        v61 = std::string::append(&v140, v59, v60);
        v62 = v61->__r_.__value_.__r.__words[2];
        *&v141.__r_.__value_.__l.__data_ = *&v61->__r_.__value_.__l.__data_;
        v141.__r_.__value_.__r.__words[2] = v62;
        v61->__r_.__value_.__l.__size_ = 0;
        v61->__r_.__value_.__r.__words[2] = 0;
        v61->__r_.__value_.__r.__words[0] = 0;
        gdc::DebugTreeValue::DebugTreeValue(v144, &v141);
        std::vector<gdc::DebugTreeValue>::push_back[abi:nn200100](&v148, v144);
        if (v147 < 0)
        {
          operator delete(v146);
        }

        if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v141.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v140.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v143) < 0)
        {
          operator delete(v142);
        }

        v52 = *v52;
        if (!v52)
        {
          goto LABEL_212;
        }
      }

      HIBYTE(v143) = 8;
      v54 = 0x6C616E6F6974706FLL;
      goto LABEL_187;
    }

LABEL_212:
    std::string::basic_string[abi:nn200100]<0>(v144, "Logics");
    gdc::DebugTreeNode::addProperty(&__p, v144, &v148);
    if (v145 < 0)
    {
      operator delete(v144[0]);
    }

    std::string::basic_string[abi:nn200100]<0>(&v142, "World Type");
    v63 = gdc::to_string(*(v84 + 225));
    gdc::DebugTreeValue::DebugTreeValue(v144, v63);
    gdc::DebugTreeNode::addProperty(&__p, &v142, v144);
    if (v147 < 0)
    {
      operator delete(v146);
    }

    if (SHIBYTE(v143) < 0)
    {
      operator delete(v142);
    }

    *&v142 = &v148;
    std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](&v142);
    gdc::DebugTreeNode::addChildNode(a1, &__p);
    __str.__r_.__value_.__r.__words[0] = &v90 + 8;
    std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__str);
    __str.__r_.__value_.__r.__words[0] = v89;
    std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__str);
    if (SHIBYTE(v88[1]) < 0)
    {
      operator delete(v87);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v64 = v85[20];
  std::string::basic_string[abi:nn200100]<0>(&__p, "World");
  gdc::DebugTreeNode::DebugTreeNode(&__str, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v64[31])
  {
    std::string::basic_string[abi:nn200100]<0>(&__p, "ActiveDataDownloadRangeByTileSize");
    v65 = gdc::DebugTreeNode::createChildNode(&__str, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    for (k = v64[30]; k; k = *k)
    {
      std::to_string(&__p, *(k + 4));
      v67 = gdc::DebugTreeNode::createChildNode(v65, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, "Min");
      gdc::DebugTreeValue::DebugTreeValue(&v155, *(k + 5));
      gdc::DebugTreeNode::addProperty(v67, &__p, &v155);
      if (v157 < 0)
      {
        operator delete(v156);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&__p, "Max");
      gdc::DebugTreeValue::DebugTreeValue(v151, *(k + 6));
      gdc::DebugTreeNode::addProperty(v67, &__p, v151);
      if (v154 < 0)
      {
        operator delete(v153);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v149 = 0;
  v148 = 0;
  v150 = 0;
  for (m = v64[19]; m; m = *m)
  {
    v69 = *(m + 8);
    v70 = "<Invalid>";
    if (v69 <= 0x51)
    {
      v70 = off_1E7B30210[v69];
    }

    gdc::DebugTreeValue::DebugTreeValue(&__p, v70);
    std::vector<gdc::DebugTreeValue>::push_back[abi:nn200100](&v148, &__p);
    if ((v89[7] & 0x80000000) != 0)
    {
      operator delete(v88[0]);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Active Map Data Layers");
  gdc::DebugTreeNode::addProperty(&__str, &__p, &v148);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Layers");
  v71 = gdc::DebugTreeNode::createChildNode(&__str, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v72 = 0;
  while (1)
  {
    v73 = md::MapDataTypeList[v72];
    v74 = "<Invalid>";
    if (v73 <= 0x51)
    {
      v74 = off_1E7B30210[v73];
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, v74);
    v75 = gdc::DebugTreeNode::createChildNode(v71, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, "Active");
    v76 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(v64 + 17, v73) != 0;
    gdc::DebugTreeValue::DebugTreeValue(v144, v76);
    gdc::DebugTreeNode::addProperty(v75, &__p, v144);
    if (v147 < 0)
    {
      operator delete(v146);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v77 = v64[4];
    v78 = v64[5];
    while (1)
    {
      if (v77 == v78)
      {
        goto LABEL_267;
      }

      if (v73 == *v77)
      {
        break;
      }

      v77 += 8;
    }

    if (v77 != v78)
    {
      (*(**(v77 + 1) + 104))(&__p);
      gdc::DebugTreeNode::addChildNode(v75, &__p);
      *&v142 = &v90 + 8;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v142);
      *&v142 = v89;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v142);
      if (SHIBYTE(v88[1]) < 0)
      {
        operator delete(v87);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

LABEL_267:
    v79 = v64[7];
    v80 = v64[8];
    while (1)
    {
      if (v79 == v80)
      {
        goto LABEL_276;
      }

      if (v73 == *v79)
      {
        break;
      }

      v79 += 8;
    }

    if (v79 != v80)
    {
      (*(**(v79 + 1) + 56))(&__p);
      gdc::DebugTreeNode::addChildNode(v75, &__p);
      *&v142 = &v90 + 8;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v142);
      *&v142 = v89;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v142);
      if (SHIBYTE(v88[1]) < 0)
      {
        operator delete(v87);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

LABEL_276:
    v81 = v64[10];
    v82 = v64[11];
    while (1)
    {
      if (v81 == v82)
      {
        goto LABEL_285;
      }

      if (v73 == *v81)
      {
        break;
      }

      v81 += 8;
    }

    if (v81 != v82)
    {
      gdc::LayerDataStore::createDebugNode(&__p, *(v81 + 1));
      gdc::DebugTreeNode::addChildNode(v75, &__p);
      *&v142 = &v90 + 8;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v142);
      *&v142 = v89;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v142);
      if (SHIBYTE(v88[1]) < 0)
      {
        operator delete(v87);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

LABEL_285:
    if (++v72 == 82)
    {
      gdc::LayerDataManager::createDebugNode(&__p, *(v64[3] + 56), a3);
      gdc::DebugTreeNode::addChildNode(&__str, &__p);
      *&v142 = &v90 + 8;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v142);
      *&v142 = v89;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v142);
      if (SHIBYTE(v88[1]) < 0)
      {
        operator delete(v87);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = &v148;
      std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](&__p);
      gdc::DebugTreeNode::addChildNode(a1, &__str);
      __p.__r_.__value_.__r.__words[0] = &v163 + 8;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&__p);
      __p.__r_.__value_.__r.__words[0] = &v162;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&__p);
      if (v161 < 0)
      {
        operator delete(v159);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&__str, "Logic Manager");
      gdc::DebugTreeNode::DebugTreeNode(&__p, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&__str, "Logics");
      gdc::DebugTreeNode::createChildNode(&__p, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      memset(&v155, 0, sizeof(v155));
      v159 = 0;
      operator new();
    }
  }
}

void sub_1B302819C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  if (*(v45 - 201) < 0)
  {
    operator delete(*(v45 - 224));
  }

  std::ostringstream::~ostringstream(&a31);
  MEMORY[0x1B8C620C0](&a45);
  STACK[0x748] = a11 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&STACK[0x748]);
  STACK[0x748] = a11 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&STACK[0x748]);
  if (*(a11 + 47) < 0)
  {
    operator delete(*(a11 + 24));
  }

  if (*(a11 + 23) < 0)
  {
    operator delete(*a11);
  }

  _Unwind_Resume(a1);
}

uint64_t md::MapEngineDeleter::operator()(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v8 = a1;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "MapEngine:[%p] destruction requested", buf, 0xCu);
  }

  atomic_store(1u, (a1 + 81));
  v3 = *(a1 + 47352);
  v6 = 1;
  result = (*(*v3 + 16))(v3, v5);
  if (v6 != -1)
  {
    return (off_1F2A21620[v6])(buf, v5);
  }

  return result;
}

void sub_1B3028788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, char a16)
{
  if (a14 != -1)
  {
    (off_1F2A21620[a14])(&a16, &a9);
  }

  _Unwind_Resume(exception_object);
}

__CFString *VKStringForAnnotationTrackingBehavior(unsigned __int8 *a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AD60] stringWithString:@"{\n"];
    [(__CFString *)v2 appendFormat:@"\tshouldZoomToFit: %i\n", *a1];
    [(__CFString *)v2 appendFormat:@"\tidealCenterCoordinateDistance: %.1f\n", *(a1 + 1)];
    [(__CFString *)v2 appendFormat:@"\tshouldPreserveUserSpecifiedZoomLevel: %i\n", a1[16]];
    if (a1[17] == 1)
    {
      [(__CFString *)v2 appendFormat:@"\tresetAfterTracking: %i\n", 1];
    }

    [(__CFString *)v2 appendString:@"}"];
  }

  else
  {
    v2 = @"<nil>";
  }

  return v2;
}

void md::FontOptions::debugString(void *a1, __int128 *a2, const grl::FontKey *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  grl::FontManager::fontForKey(&v12, a3, a2, 0.0);
  if (!cf)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  v4 = [cf description];
  v5 = v4;
  v6 = [v4 UTF8String];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v7 | 7) + 1;
    }

    v10 = mdm::zone_mallocator::instance(v7);
    v11 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v10, v9);
    a1[1] = v8;
    a1[2] = v9 | 0x8000000000000000;
    *a1 = v11;
    a1 = v11;
    goto LABEL_11;
  }

  *(a1 + 23) = v7;
  if (v7)
  {
LABEL_11:
    memmove(a1, v6, v8);
  }

  *(a1 + v8) = 0;

  v12 = &unk_1F2A5F810;
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1B30289F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getTopDepthPipelineSetupForGroup(uint64_t a1, void *a2, uint64_t **a3)
{
  v5 = a2;
  v6 = *(a1 + 136);
  v7 = **a3;
  v8 = (*a3)[1];
  *v6 = v7;
  v6[1] = 0;
  v9 = *(a1 + 232);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v9[1];
  *v9 = v7;
  v9[1] = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v19, *(*(a1 + 136) + 16));
  *v20 = *(a3 + 76);
  v11 = [v5 origin];
  v12 = 0;
  v13 = v20 + 16;
  do
  {
    *(v13 + v12) = *(v11 + v12);
    v12 += 4;
  }

  while (v12 != 12);
  [v5 size];
  v14 = v20;
  *(v20 + 32) = v15;
  *(v14 + 36) = v16;
  *(v14 + 40) = v17;
  ggl::BufferMemory::~BufferMemory(v19);

  return a1;
}

void sub_1B3028B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ggl::BufferMemory::~BufferMemory(&a9);

  _Unwind_Resume(a1);
}

uint64_t getExtrusionDepthPipelineSetupForGroup(uint64_t a1, void *a2, uint64_t **a3)
{
  v5 = a2;
  v6 = *(a1 + 136);
  v7 = **a3;
  v8 = (*a3)[1];
  *v6 = v7;
  v6[1] = 0;
  v9 = *(a1 + 232);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v9[1];
  *v9 = v7;
  v9[1] = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v19, *(*(a1 + 136) + 16));
  *v20 = *(a3 + 76);
  v11 = [v5 origin];
  v12 = 0;
  v13 = v20 + 16;
  do
  {
    *(v13 + v12) = *(v11 + v12);
    v12 += 4;
  }

  while (v12 != 12);
  [v5 size];
  v14 = v20;
  *(v20 + 32) = v15;
  *(v14 + 36) = v16;
  *(v14 + 40) = v17;
  ggl::BufferMemory::~BufferMemory(v19);

  return a1;
}

void sub_1B3028C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ggl::BufferMemory::~BufferMemory(&a9);

  _Unwind_Resume(a1);
}

uint64_t getPointyRoofDepthPipelineSetupForGroup(uint64_t a1, void *a2, uint64_t **a3)
{
  v5 = a2;
  v6 = *(a1 + 136);
  v7 = **a3;
  v8 = (*a3)[1];
  *v6 = v7;
  v6[1] = 0;
  v9 = *(a1 + 232);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = v9[1];
  *v9 = v7;
  v9[1] = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v19, *(*(a1 + 136) + 16));
  *v20 = *(a3 + 76);
  v11 = [v5 origin];
  v12 = 0;
  v13 = v20 + 16;
  do
  {
    *(v13 + v12) = *(v11 + v12);
    v12 += 4;
  }

  while (v12 != 12);
  [v5 size];
  v14 = v20;
  *(v20 + 32) = v15;
  *(v14 + 36) = v16;
  *(v14 + 40) = v17;
  ggl::BufferMemory::~BufferMemory(v19);

  return a1;
}

void sub_1B3028D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ggl::BufferMemory::~BufferMemory(&a9);

  _Unwind_Resume(a1);
}

uint64_t getExtrusionPipelineSetupForGroup(uint64_t a1, void *a2, uint64_t a3, float a4)
{
  v7 = a2;
  v8 = *a3;
  v9 = *(a1 + 136);
  *(v9 + 24) = 0;
  v10 = *v8;
  *(v9 + 16) = *v8;
  v11 = *(a1 + 232);
  v12 = v8[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(v11 + 24);
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  **(a1 + 168) = *(a3 + 32);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v31, *(*(a1 + 136) + 32));
  *v32 = *(a3 + 76);
  v14 = [v7 origin];
  v15 = 0;
  v16 = v32 + 16;
  do
  {
    *(v16 + v15) = *(v14 + v15);
    v15 += 4;
  }

  while (v15 != 12);
  [v7 size];
  v17 = v32;
  *(v32 + 32) = v18;
  *(v17 + 36) = v19;
  *(v17 + 40) = v20;
  ggl::BufferMemory::~BufferMemory(v31);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v31, *(*(a1 + 136) + 48));
  v21 = 0;
  v22 = v32;
  v23 = v32 + 368;
  do
  {
    *(v23 + v21) = *(a3 + 56 + v21);
    v21 += 4;
  }

  while (v21 != 12);
  *(v22 + 356) = a4;
  ggl::BufferMemory::~BufferMemory(v31);
  v24 = md::LayoutContext::get<md::LightingLogicContext>(*(*(a3 + 40) + 8));
  v25 = *(a1 + 136);
  *(v25 + 88) = 0;
  v26 = *v24;
  *(v25 + 80) = *v24;
  v27 = *(a1 + 232);
  v28 = v24[1];
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v29 = *(v27 + 88);
  *(v27 + 80) = v26;
  *(v27 + 88) = v28;
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  return a1;
}

void sub_1B3028E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ggl::BufferMemory::~BufferMemory(&a9);

  _Unwind_Resume(a1);
}

uint64_t getFoggedExtrusionPipelineSetupForGroup(uint64_t a1, void *a2, uint64_t a3, float a4)
{
  v7 = a2;
  v8 = *a3;
  v9 = *(a1 + 136);
  *(v9 + 24) = 0;
  v10 = *v8;
  *(v9 + 16) = *v8;
  v11 = *(a1 + 232);
  v12 = v8[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(v11 + 24);
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  **(a1 + 168) = *(a3 + 32);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v31, *(*(a1 + 136) + 32));
  *v32 = *(a3 + 76);
  v14 = [v7 origin];
  v15 = 0;
  v16 = v32 + 16;
  do
  {
    *(v16 + v15) = *(v14 + v15);
    v15 += 4;
  }

  while (v15 != 12);
  [v7 size];
  v17 = v32;
  *(v32 + 32) = v18;
  *(v17 + 36) = v19;
  *(v17 + 40) = v20;
  ggl::BufferMemory::~BufferMemory(v31);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v31, *(*(a1 + 136) + 48));
  v21 = 0;
  v22 = v32;
  v23 = v32 + 368;
  do
  {
    *(v23 + v21) = *(a3 + 56 + v21);
    v21 += 4;
  }

  while (v21 != 12);
  *(v22 + 356) = a4;
  ggl::BufferMemory::~BufferMemory(v31);
  v24 = md::LayoutContext::get<md::LightingLogicContext>(*(*(a3 + 40) + 8));
  v25 = *(a1 + 136);
  *(v25 + 88) = 0;
  v26 = *v24;
  *(v25 + 80) = *v24;
  v27 = *(a1 + 232);
  v28 = v24[1];
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v29 = *(v27 + 88);
  *(v27 + 80) = v26;
  *(v27 + 88) = v28;
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(a1 + 136), *(a1 + 232), **(a3 + 8), *(*(a3 + 8) + 8));

  return a1;
}

void sub_1B3029048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ggl::BufferMemory::~BufferMemory(&a9);

  _Unwind_Resume(a1);
}

void submitRenderItems(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v159 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v130 = a3[10];
  v7 = 672;
  if (*(a3 + 88))
  {
    v7 = 688;
  }

  v8 = 640;
  if (*(a3 + 88))
  {
    v8 = 656;
  }

  v9 = *(a2 + v8);
  v10 = *(a2 + v7);
  ggl::RenderItem::RenderItem(&v139, "");
  v11 = *a3;
  v123 = v10;
  *&v141 = v10;
  *(&v141 + 1) = v11;
  *(&v142 + 1) = 0;
  *&v12 = ggl::RenderItem::RenderItem(&v131, "").u64[0];
  v13 = a3[1];
  if (!v13)
  {
    v13 = a3[2];
  }

  *&v133 = v9;
  *(&v133 + 1) = v13;
  v14 = [v6 fillMeshes];
  v15 = *v14;
  v124 = *(v14 + 8);
  v128 = a3;
  if (*v14 != v124)
  {
    v16 = 0;
    do
    {
      v17 = *(a3 + 18);
      std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v158, a4);
      v18 = v16;
      v19 = [v6 commitRangesToFillRenderItemBatcher:a2 + 784 forMeshAtIndex:v16 cullingMask:v17 featureIdPredicate:v158];
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v158);
      v20 = *v15;
      v147 = &off_1F2A5D8B8;
      v150 = v142;
      v149 = v141;
      v148 = v140;
      v154 = v146;
      v153 = v145;
      v152 = v144;
      v151 = v143;
      v21 = *(a2 + 872);
      v22 = v21[1];
      if (v22 == *(a2 + 880))
      {
        v21 = *v21;
        if (!v21)
        {
          v21 = malloc_type_malloc(120 * v22 + 16, 0x1020040EDED9539uLL);
          *v21 = 0;
          v21[1] = 0;
          **(a2 + 872) = v21;
        }

        *(a2 + 872) = v21;
        v22 = v21[1];
      }

      v23 = &v21[15 * v22];
      v21[1] = v22 + 1;
      v23[2] = &off_1F2A5D8B8;
      v24 = v148;
      v25 = v149;
      *(v23 + 7) = v150;
      *(v23 + 5) = v25;
      *(v23 + 3) = v24;
      v26 = v151;
      v27 = v152;
      v28 = v153;
      *(v23 + 15) = v154;
      *(v23 + 13) = v28;
      *(v23 + 11) = v27;
      *(v23 + 9) = v26;
      ggl::RenderItem::~RenderItem(&v147);
      v23[10] = v20;
      v29 = *v19;
      v23[13] = *v19;
      v23[14] = (v19[1] - v29) >> 4;
      v147 = (v23 + 2);
      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
      v30 = *v15;
      v147 = &off_1F2A5D8B8;
      v148 = v132;
      v149 = v133;
      v150 = v134;
      v154 = v138;
      v153 = v137;
      v152 = v136;
      v151 = v135;
      v31 = *(a2 + 872);
      v32 = v31[1];
      if (v32 == *(a2 + 880))
      {
        v31 = *v31;
        if (!v31)
        {
          v31 = malloc_type_malloc(120 * v32 + 16, 0x1020040EDED9539uLL);
          *v31 = 0;
          v31[1] = 0;
          **(a2 + 872) = v31;
        }

        *(a2 + 872) = v31;
        v32 = v31[1];
      }

      v33 = &v31[15 * v32];
      v31[1] = v32 + 1;
      v33[2] = &off_1F2A5D8B8;
      v34 = v148;
      v35 = v149;
      *(v33 + 7) = v150;
      *(v33 + 5) = v35;
      *(v33 + 3) = v34;
      v36 = v151;
      v37 = v152;
      v38 = v153;
      *(v33 + 15) = v154;
      *(v33 + 13) = v38;
      *(v33 + 11) = v37;
      *(v33 + 9) = v36;
      ggl::RenderItem::~RenderItem(&v147);
      v33[10] = v30;
      v39 = *v19;
      v33[13] = *v19;
      v33[14] = (v19[1] - v39) >> 4;
      a3 = v128;
      v33[8] = *(v128 + 19) + v18;
      v147 = (v33 + 2);
      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
      v16 = v18 + 1;
      v15 += 2;
    }

    while (v15 != v124);
  }

  v40 = a3[3];
  v41 = a3[4];
  *&v141 = v123;
  *(&v141 + 1) = v40;
  v42 = a3[5];
  if (v41)
  {
    v42 = v41;
  }

  *&v133 = v9;
  *(&v133 + 1) = v42;
  v43 = [v6 extrusionFillMeshVendor];
  v44 = *v43;
  if (*(**(**v43 + 64) + 48) != *(**(**v43 + 64) + 40))
  {
    v125 = v43[1];
    if (v44 != v125)
    {
      v45 = 0;
      do
      {
        v46 = *(a3 + 18);
        std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v157, a4);
        v47 = v45;
        v48 = [v6 commitRangesToExtrusionFillRenderItemBatcher:a2 + 784 forMeshAtIndex:v45 cullingMask:v46 featureIdPredicate:v157];
        std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v157);
        v49 = *v44;
        v147 = &off_1F2A5D8B8;
        v150 = v142;
        v149 = v141;
        v148 = v140;
        v154 = v146;
        v153 = v145;
        v152 = v144;
        v151 = v143;
        v50 = *(a2 + 872);
        v51 = v50[1];
        if (v51 == *(a2 + 880))
        {
          v50 = *v50;
          if (!v50)
          {
            v50 = malloc_type_malloc(120 * v51 + 16, 0x1020040EDED9539uLL);
            *v50 = 0;
            v50[1] = 0;
            **(a2 + 872) = v50;
          }

          *(a2 + 872) = v50;
          v51 = v50[1];
        }

        v52 = &v50[15 * v51];
        v50[1] = v51 + 1;
        v52[2] = &off_1F2A5D8B8;
        v53 = v148;
        v54 = v149;
        *(v52 + 7) = v150;
        *(v52 + 5) = v54;
        *(v52 + 3) = v53;
        v55 = v151;
        v56 = v152;
        v57 = v153;
        *(v52 + 15) = v154;
        *(v52 + 13) = v57;
        *(v52 + 11) = v56;
        *(v52 + 9) = v55;
        ggl::RenderItem::~RenderItem(&v147);
        v52[10] = v49;
        v58 = *v48;
        v52[13] = *v48;
        v52[14] = (v48[1] - v58) >> 4;
        v147 = (v52 + 2);
        std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
        v59 = *v44;
        v147 = &off_1F2A5D8B8;
        v148 = v132;
        v149 = v133;
        v150 = v134;
        v154 = v138;
        v153 = v137;
        v152 = v136;
        v151 = v135;
        v60 = *(a2 + 872);
        v61 = v60[1];
        if (v61 == *(a2 + 880))
        {
          v60 = *v60;
          if (!v60)
          {
            v60 = malloc_type_malloc(120 * v61 + 16, 0x1020040EDED9539uLL);
            *v60 = 0;
            v60[1] = 0;
            **(a2 + 872) = v60;
          }

          *(a2 + 872) = v60;
          v61 = v60[1];
        }

        v62 = &v60[15 * v61];
        v60[1] = v61 + 1;
        v62[2] = &off_1F2A5D8B8;
        v63 = v148;
        v64 = v149;
        *(v62 + 7) = v150;
        *(v62 + 5) = v64;
        *(v62 + 3) = v63;
        v65 = v151;
        v66 = v152;
        v67 = v153;
        *(v62 + 15) = v154;
        *(v62 + 13) = v67;
        *(v62 + 11) = v66;
        *(v62 + 9) = v65;
        ggl::RenderItem::~RenderItem(&v147);
        v62[10] = v59;
        v68 = *v48;
        v62[13] = *v48;
        v62[14] = (v48[1] - v68) >> 4;
        a3 = v128;
        v62[8] = v47 + 2 * *(v128 + 19);
        v147 = (v62 + 2);
        std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
        v45 = v47 + 1;
        ++v44;
      }

      while (v44 != v125);
    }
  }

  v69 = a3[6];
  v70 = a3[7];
  *&v141 = v123;
  *(&v141 + 1) = v69;
  *&v133 = v9;
  *(&v133 + 1) = v70;
  v71 = [v6 pointyRoofFillMeshVendor];
  v72 = *v71;
  if (*(**(**v71 + 64) + 48) != *(**(**v71 + 64) + 40))
  {
    v126 = v71[1];
    if (v72 != v126)
    {
      v73 = 0;
      do
      {
        v74 = *(a3 + 18);
        std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v156, a4);
        v75 = [v6 commitRangesToPointyRoofFillRenderItemBatcher:a2 + 784 forMeshAtIndex:v73 cullingMask:v74 featureIdPredicate:v156];
        std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v156);
        v76 = *v72;
        v147 = &off_1F2A5D8B8;
        v150 = v142;
        v149 = v141;
        v148 = v140;
        v154 = v146;
        v153 = v145;
        v152 = v144;
        v151 = v143;
        v77 = *(a2 + 872);
        v78 = v77[1];
        if (v78 == *(a2 + 880))
        {
          v77 = *v77;
          if (!v77)
          {
            v77 = malloc_type_malloc(120 * v78 + 16, 0x1020040EDED9539uLL);
            *v77 = 0;
            v77[1] = 0;
            **(a2 + 872) = v77;
          }

          *(a2 + 872) = v77;
          v78 = v77[1];
        }

        v79 = &v77[15 * v78];
        v77[1] = v78 + 1;
        v79[2] = &off_1F2A5D8B8;
        v80 = v148;
        v81 = v149;
        *(v79 + 7) = v150;
        *(v79 + 5) = v81;
        *(v79 + 3) = v80;
        v82 = v151;
        v83 = v152;
        v84 = v153;
        *(v79 + 15) = v154;
        *(v79 + 13) = v84;
        *(v79 + 11) = v83;
        *(v79 + 9) = v82;
        ggl::RenderItem::~RenderItem(&v147);
        v79[10] = v76;
        v85 = *v75;
        v79[13] = *v75;
        v79[14] = (v75[1] - v85) >> 4;
        v147 = (v79 + 2);
        std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
        v86 = *v72;
        v147 = &off_1F2A5D8B8;
        v148 = v132;
        v149 = v133;
        v150 = v134;
        v154 = v138;
        v153 = v137;
        v152 = v136;
        v151 = v135;
        v87 = *(a2 + 872);
        v88 = v87[1];
        if (v88 == *(a2 + 880))
        {
          v87 = *v87;
          if (!v87)
          {
            v87 = malloc_type_malloc(120 * v88 + 16, 0x1020040EDED9539uLL);
            *v87 = 0;
            v87[1] = 0;
            **(a2 + 872) = v87;
          }

          *(a2 + 872) = v87;
          v88 = v87[1];
        }

        v89 = &v87[15 * v88];
        v87[1] = v88 + 1;
        v89[2] = &off_1F2A5D8B8;
        v90 = v148;
        v91 = v149;
        *(v89 + 7) = v150;
        *(v89 + 5) = v91;
        *(v89 + 3) = v90;
        v92 = v151;
        v93 = v152;
        v94 = v153;
        *(v89 + 15) = v154;
        *(v89 + 13) = v94;
        *(v89 + 11) = v93;
        *(v89 + 9) = v92;
        ggl::RenderItem::~RenderItem(&v147);
        v89[10] = v86;
        v95 = *v75;
        v89[13] = *v75;
        v89[14] = (v75[1] - v95) >> 4;
        a3 = v128;
        v89[8] = 3 * *(v128 + 19) + v73;
        v147 = (v89 + 2);
        std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
        ++v73;
        ++v72;
      }

      while (v72 != v126);
    }
  }

  if (*(a2 + 769))
  {
    v96 = a3[8];
    *&v141 = *(a2 + 704);
    *(&v141 + 1) = v96;
    *&v133 = v141;
    *(&v133 + 1) = v96;
    v97 = [v6 extrusionStrokeMeshVendor];
    v98 = *v97;
    if (*(**(**v97 + 64) + 48) != *(**(**v97 + 64) + 40))
    {
      v127 = v97[1];
      if (v98 != v127)
      {
        v99 = 0;
        do
        {
          v100 = *(a3 + 18);
          std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v155, a4);
          v101 = v99;
          v102 = [v6 commitRangesToExtrusionStrokeRenderItemBatcher:a2 + 784 forMeshAtIndex:v99 cullingMask:v100 featureIdPredicate:v155];
          std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v155);
          v103 = *v98;
          v147 = &off_1F2A5D8B8;
          v150 = v142;
          v149 = v141;
          v148 = v140;
          v154 = v146;
          v153 = v145;
          v152 = v144;
          v151 = v143;
          v104 = *(a2 + 872);
          v105 = v104[1];
          if (v105 == *(a2 + 880))
          {
            v104 = *v104;
            if (!v104)
            {
              v104 = malloc_type_malloc(120 * v105 + 16, 0x1020040EDED9539uLL);
              *v104 = 0;
              v104[1] = 0;
              **(a2 + 872) = v104;
            }

            *(a2 + 872) = v104;
            v105 = v104[1];
          }

          v106 = &v104[15 * v105];
          v104[1] = v105 + 1;
          v106[2] = &off_1F2A5D8B8;
          v107 = v148;
          v108 = v149;
          *(v106 + 7) = v150;
          *(v106 + 5) = v108;
          *(v106 + 3) = v107;
          v109 = v151;
          v110 = v152;
          v111 = v153;
          *(v106 + 15) = v154;
          *(v106 + 13) = v111;
          *(v106 + 11) = v110;
          *(v106 + 9) = v109;
          ggl::RenderItem::~RenderItem(&v147);
          v106[10] = v103;
          v112 = *v102;
          v106[13] = *v102;
          v106[14] = (v102[1] - v112) >> 4;
          v147 = (v106 + 2);
          std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
          v113 = *v98;
          v147 = &off_1F2A5D8B8;
          v148 = v132;
          v149 = v133;
          v150 = v134;
          v154 = v138;
          v153 = v137;
          v152 = v136;
          v151 = v135;
          v114 = *(a2 + 872);
          v115 = v114[1];
          if (v115 == *(a2 + 880))
          {
            v114 = *v114;
            if (!v114)
            {
              v114 = malloc_type_malloc(120 * v115 + 16, 0x1020040EDED9539uLL);
              *v114 = 0;
              v114[1] = 0;
              **(a2 + 872) = v114;
            }

            *(a2 + 872) = v114;
            v115 = v114[1];
          }

          v116 = &v114[15 * v115];
          v114[1] = v115 + 1;
          v116[2] = &off_1F2A5D8B8;
          v117 = v148;
          v118 = v149;
          *(v116 + 7) = v150;
          *(v116 + 5) = v118;
          *(v116 + 3) = v117;
          v119 = v151;
          v120 = v152;
          v121 = v153;
          *(v116 + 15) = v154;
          *(v116 + 13) = v121;
          *(v116 + 11) = v120;
          *(v116 + 9) = v119;
          ggl::RenderItem::~RenderItem(&v147);
          v116[10] = v113;
          v122 = *v102;
          v116[13] = *v102;
          v116[14] = (v102[1] - v122) >> 4;
          a3 = v128;
          v116[8] = v101 + 4 * *(v128 + 19);
          v147 = (v116 + 2);
          std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v130 + 72), &v147);
          v99 = v101 + 1;
          ++v98;
        }

        while (v98 != v127);
      }
    }
  }
}

void md::BuildingRenderLayer::layout3DBuildings(uint64_t a1, void *a2, uint64_t a3, md::LayoutContext *a4, int a5, int a6)
{
  v77 = *MEMORY[0x1E69E9840];
  v9 = *(a4 + 1);
  v10 = gdc::Context::context<md::PolygonContext>(v9);
  if (v10 && *(v10 + 16) == 1)
  {
    v62 = v10[1];
  }

  else
  {
    v62 = 0;
  }

  if (a5 != 1 || v62)
  {
    if (a6 != 1 || (md::LayoutContext::zoomAtCentrePoint(v9), (1.0 - fminf(fmaxf((v11 * 2.0) + -31.0, 0.0), 1.0)) >= 0.00000011921))
    {
      if (gdc::Context::get<md::SkyLogicContext>(v9) && md::LayoutContext::get<md::LightingLogicContext>(v9) && md::LayoutContext::get<md::SharedResourcesContext>(v9))
      {
        md::LayoutContext::get<md::CameraContext>(v9);
        v12 = md::LayoutContext::get<md::SettingsContext>(v9);
        v13 = *v12;
        v14 = v12[1];
        if (*v12 == v14)
        {
          v16 = 0;
          v15 = a1;
        }

        else
        {
          v15 = a1;
          while (*v13 != 20)
          {
            v13 += 16;
            if (v13 == v14)
            {
              goto LABEL_20;
            }
          }

          if (v13 != v14)
          {
            v16 = *(v13 + 8) == 5;
            goto LABEL_21;
          }

LABEL_20:
          v16 = 0;
        }

LABEL_21:
        v17 = gdc::Context::get<md::StyleLogicContext>(v9)[2];
        v69 = 0uLL;
        *&v70 = 0;
        gss::StylesheetManager<gss::ScenePropertyID>::styleQueryForFeatureAttributes(&v75, v17, &v69);
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v69);
        v18 = v75;
        v19 = v76;
        if (v76)
        {
          atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::ScenePropertyID>::QueryableLocker(&v65, v18, v19);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

        v20 = **(v15 + 376);
        ggl::BufferMemory::BufferMemory(&v67);
        ggl::ResourceAccessor::accessConstantData(&v69, 0, v20, 1);
        ggl::BufferMemory::operator=(&v67, &v69);
        ggl::BufferMemory::~BufferMemory(&v69);
        if (v66 == 1)
        {
          gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(57, *(v65 + 24));
          v22 = v21;
          gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(64, *(v65 + 24));
          v24 = (v23 * 2.0) + -1.0;
          gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(58, *(v65 + 24));
          v26 = v25;
          gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(65, *(v65 + 24));
          v28 = v27;
          gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(60, *(v65 + 24));
          v30 = (v29 * 2.0) + -1.0;
          if (v16)
          {
            v64 = (v28 * 2.0) + -1.0;
            v31 = (v26 * 2.0) + -1.0;
            md::LayoutContext::frameState(a4);
            v63 = *(v32 + 64);
            v33 = tan(*(v32 + 56) * 0.5 + 0.785398163);
            v34 = log(v33);
            *&v35.f64[0] = v63;
            v35.f64[1] = v34;
            __asm { FMOV            V2.2D, #0.5 }

            v69 = vmlaq_f64(_Q2, vdupq_n_s64(0x3FC45F306DC9C883uLL), v35);
            *&v70 = *(&v63 + 1);
            v41 = md::LayoutContext::get<md::CameraContext>(*(a4 + 1));
            gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>((v41 + 808), &v69);
            v43 = v42;
            gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(59, *(v65 + 24));
            v45 = v44;
            gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(61, *(v65 + 24));
            v24 = fminf(fmaxf(v43 + (v45 * 2.0), v24), v31);
            v30 = fminf(fmaxf(v43 + (v46 * 2.0), v64), v30);
          }

          if (v24 >= v30)
          {
            v47 = -1.0;
          }

          else
          {
            v47 = v30;
          }

          v48 = -2.0;
          if (v24 < v30)
          {
            v48 = v24;
          }

          v49 = 1.0;
          if (v24 < v30)
          {
            v49 = v22;
          }

          *(*(v15 + 376) + 18) = v49 < 0.999;
          v50 = v68;
          v68[2] = v49;
          v51 = (1.0 - v49) / (v47 - v48);
          *v50 = v51;
          v52 = v49 - (v48 * v51);
        }

        else
        {
          *(*(v15 + 376) + 18) = 0;
          v50 = v68;
          v68[2] = 1.0;
          *v50 = 0.0;
          v52 = 1.0;
        }

        v50[1] = v52;
        ggl::BufferMemory::~BufferMemory(&v67);
        gss::QueryableLocker<gss::ScenePropertyID>::~QueryableLocker(&v65);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

        md::LayoutContext::get<md::VenueLogicContext>(*(a4 + 1));
        if (*(v15 + 440))
        {
          v55 = *(v15 + 432);
          if (v55)
          {
            do
            {
              v56 = *v55;
              operator delete(v55);
              v55 = v56;
            }

            while (v56);
          }

          *(v15 + 432) = 0;
          v57 = *(v15 + 424);
          if (v57)
          {
            for (i = 0; i != v57; ++i)
            {
              *(*(v15 + 416) + 8 * i) = 0;
            }
          }

          *(v15 + 440) = 0;
        }

        if (*a2 != a2[1])
        {
          __asm { FMOV            V0.2S, #1.0 }

          v54 = *(**a2 + 392);
          v69 = 0u;
          v70 = 0u;
          v71 = 0;
          v72 = a4;
          v73 = a3;
          v74 = *(v54 + 169);
          md::featureIdPredicate();
        }
      }
    }
  }
}

void sub_1B302D3A8(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

void *ggl::FragmentedPool<ggl::BuildingTopDepth::CompressedMeshPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::BuildingTopDepth::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *ggl::FragmentedPool<ggl::BuildingFacadeDepth::BuildingPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingFacadeDepth::BuildingPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingFacadeDepth::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *ggl::FragmentedPool<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,geo::allocator_adapter<ggl::BuildingPointyRoofDepth::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *ggl::FragmentedPool<ggl::DiffuseBuilding::BuildingPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseBuilding::BuildingPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::DiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *ggl::FragmentedPool<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseBuilding::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *ggl::FragmentedPool<ggl::PrefilteredLine::PrefilteredLinePipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,geo::allocator_adapter<ggl::PrefilteredLine::PrefilteredLinePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)161,(gss::PropertyID)489>(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 0x17)
  {
    v7 = 23;
  }

  else
  {
    v7 = a4;
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v10, *(*a3 + 24), 161, v7, 2u, 0);
  v9 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v10)), vdupq_n_s32(0x37800080u));
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a3 + 24), 489, v7, 2u, 0);
  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v9, v8);
}

void md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)3,(gss::PropertyID)490>(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  if (a4 >= 0x17)
  {
    v7 = 23;
  }

  else
  {
    v7 = a4;
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v10, *(*a3 + 24), 3, v7, 2u, 0);
  v9 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v10)), vdupq_n_s32(0x37800080u));
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a3 + 24), 490, v7, 2u, 0);
  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v9, v8);
}

void md::OcclusionPipelineProxy::update(ggl::zone_mallocator *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  v6 = *(a1 + 3);
  v7 = v6[1];
  if (v7 == *v6)
  {
    v9 = v6[11];
    if (!v9)
    {
      goto LABEL_21;
    }

    a1 = (*(*v9 + 48))(v9);
    v8 = a1;
  }

  else
  {
    v8 = *(v7 - 8);
    v6[1] = v7 - 8;
  }

  v11 = v6[5];
  v10 = v6[6];
  if (v11 >= v10)
  {
    v13 = v6[4];
    v14 = (v11 - v13) >> 3;
    if ((v14 + 1) >> 61)
    {
      goto LABEL_22;
    }

    v15 = v10 - v13;
    v16 = v15 >> 2;
    if (v15 >> 2 <= (v14 + 1))
    {
      v16 = v14 + 1;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16;
    }

    v48 = v6 + 7;
    if (v17)
    {
      v18 = ggl::zone_mallocator::instance(a1);
      v19 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ARMesh::ARDepthMeshPipelineSetup *>(v18, v17);
    }

    else
    {
      v19 = 0;
    }

    v21 = &v19[8 * v17];
    v20 = &v19[8 * v14];
    *v20 = v8;
    v12 = v20 + 1;
    v22 = v6[4];
    v23 = v6[5] - v22;
    v24 = v20 - v23;
    memcpy(v20 - v23, v22, v23);
    v25 = v6[4];
    v6[4] = v24;
    v6[5] = v12;
    v26 = v6[6];
    v6[6] = v21;
    *&v46[16] = v25;
    v47 = v26;
    *v46 = v25;
    *&v46[8] = v25;
    std::__split_buffer<ggl::ARMesh::ARDepthMeshPipelineSetup *,geo::allocator_adapter<ggl::ARMesh::ARDepthMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v46);
  }

  else
  {
    *v11 = v8;
    v12 = v11 + 1;
  }

  v6[5] = v12;
  *v46 = v8;
  v27 = v6[15];
  if (!v27)
  {
LABEL_21:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_22:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v27 + 48))(v27, v46);
  v28 = *a3;
  *v46 = v8;
  v29 = gdc::Registry::storage<arComponents::PipelineInstanceToUse>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v29, v28, v46);
  v30 = *a3;
  *&v46[4] = 0uLL;
  v47 = 0;
  v48 = 0;
  v51 = 0;
  v50 = 0;
  *v46 = 1065353216;
  *&v46[20] = 1065353216;
  v49 = 1065353216;
  v52 = 1065353216;
  v31 = gdc::Registry::storage<arComponents::ViewConstantDataComponent>(a2);
  gdc::ComponentStorageWrapper<arComponents::ViewConstantDataComponent>::emplace(v31, v30, v46);
  v32 = *a3;
  *v46 = 0;
  *&v46[8] = 0;
  v33 = gdc::Registry::storage<arComponents::TransformConstantDataComponent>(a2);
  gdc::ComponentStorageWrapper<arComponents::TransformConstantDataComponent>::emplace(v33, v32, v46);
  if (*&v46[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v46[8]);
  }

  v34 = *a3;
  v35 = gdc::Registry::storage<arComponents::NeedsTransformConstantDataUpdate>(a2);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v35, v34);
  v36 = *a3;
  *v46 = **(v8 + 17);
  v37 = gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::View>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v37, v36, v46);
  v38 = *a3;
  *v46 = *(*(v8 + 17) + 16);
  v39 = gdc::Registry::storage<arComponents::CompWrap<ggl::ConstantDataTyped<ggl::Tile::Transform>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v39, v38, v46);
  v40 = *a3;
  *v46 = **(v8 + 13);
  v41 = gdc::Registry::storage<arComponents::CompWrap<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(v41, v40, v46);
  v42 = *a3;
  *v46 = v5;
  HasTransformConstant = gdc::Registry::storage<md::pipelineECS::HasTransformConstantData>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(HasTransformConstant, v42, v46);
  v44 = *a3;
  *v46 = v5 + 8;
  HasTransformInstanceDeviceData = gdc::Registry::storage<md::pipelineECS::HasTransformInstanceDeviceDataFeature>(a2);
  gdc::ComponentStorageWrapper<arComponents::PipelineInstanceToUse>::emplace(HasTransformInstanceDeviceData, v44, v46);
}

void sub_1B302E3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ggl::Line::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RasterRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2)
{
  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), 1, (a1 + 392), 0);
  *(a1 + 400) = result;
  return result;
}

void md::RasterRenderLayer::layout(md::RasterRenderLayer *this, const md::LayoutContext *a2)
{
  v110 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  v101 = gdc::Context::get<md::GeometryContext>(v4);
  v5 = gdc::Context::get<md::StyleLogicContext>(v4);
  v104[0] = &unk_1F2A26F30;
  v104[1] = this;
  v104[2] = v5;
  v104[3] = v104;
  md::StyleLogicContext::parseEvents(v5, v104);
  std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v104);
  (*(*this + 32))(&v106, this, a2);
  v6 = LOWORD(v106->__vftable);
  v107 = v106;
  operator delete(v106);
  v7 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), v6);
  if (v7)
  {
    v8 = *(*(v7 + 16) + 8 * (v6 >> 8));
  }

  else
  {
    v8 = 0;
  }

  ggl::CommandBuffer::clearRenderItems(v8);
  *(v8 + 32) = 0;
  v9 = *(this + 47);
  ggl::FragmentedPool<ggl::RenderItem>::pushAll(v9[3]);
  v10 = *v9;
  v11 = *(*v9 + 4);
  v12 = *(*v9 + 5);
  if (v11 != v12)
  {
    do
    {
      v106 = *v11;
      std::vector<ggl::Textured::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v10, &v106);
      ++v11;
    }

    while (v11 != v12);
    v11 = *(v10 + 4);
    v12 = *(v10 + 5);
  }

  if (v11 != v12)
  {
    *(v10 + 5) = v11;
  }

  v13 = v9[1];
  v14 = *(v13 + 4);
  v15 = *(v13 + 5);
  if (v14 != v15)
  {
    do
    {
      v106 = *v14;
      std::vector<ggl::Clut::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Clut::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v13, &v106);
      ++v14;
    }

    while (v14 != v15);
    v14 = *(v13 + 4);
    v15 = *(v13 + 5);
  }

  if (v14 != v15)
  {
    *(v13 + 5) = v14;
  }

  v16 = v9[2];
  v17 = *(v16 + 4);
  v18 = *(v16 + 5);
  if (v17 != v18)
  {
    do
    {
      v106 = *v17;
      std::vector<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v16, &v106);
      ++v17;
    }

    while (v17 != v18);
    v17 = *(v16 + 4);
    v18 = *(v16 + 5);
  }

  if (v17 != v18)
  {
    *(v16 + 5) = v17;
  }

  if (*(this + 34) == *(this + 35))
  {
    return;
  }

  if (!*(*(this + 46) + 8) && *v5)
  {
    v32 = *(*v5 + 16);
    v33 = atomic_load((v32 + 2784));
    if ((v33 & 1) == 0)
    {
      std::__assoc_sub_state::wait(*(v32 + 2808));
    }

    if (*(v32 + 136) == 1 && md::RasterRenderLayer::shouldEnableCLUT(v5))
    {
      v34 = *a2;
      [v34 contentScale];
      md::LayoutContext::get<md::SharedResourcesContext>(*(a2 + 1));
      v35 = *(this + 46);
      v36 = *(v35 + 96);
      if (!v36)
      {
        LODWORD(v105.__r_.__value_.__l.__data_) = 5;
        WORD2(v105.__r_.__value_.__r.__words[0]) = 9;
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&__p, &v105, 1uLL);
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v106, &__p);
        gss::FeatureAttributeSet::sort(v106, v107);
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__p);
        if (*v5)
        {
          gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&__p, *v5, &v106);
          v37 = *&__p.__r_.__value_.__l.__data_;
        }

        else
        {
          v37 = 0uLL;
        }

        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        v94 = *(v35 + 104);
        *(v35 + 96) = v37;
        if (v94)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v94);
          if (__p.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](__p.__r_.__value_.__l.__size_);
          }
        }

        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v106);
        v36 = *(v35 + 96);
      }

      v95 = *(v35 + 104);
      if (v95)
      {
        atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v106, v36, v95);
      if (v95)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v95);
      }

      if (v109 == 1)
      {
        *(&__p.__r_.__value_.__s + 23) = 0;
        __p.__r_.__value_.__s.__data_[0] = 0;
        if (!md::RasterRenderLayer::shouldEnableCLUT(v5))
        {
          goto LABEL_122;
        }

        gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&v105, v106[1].__vftable, 0x88u, 1u, 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v105;
        size = HIBYTE(v105.__r_.__value_.__r.__words[2]);
        if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v105.__r_.__value_.__l.__size_;
        }

        if (!size)
        {
LABEL_122:
          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&v105, v106[1].__vftable, 0x88u, 1u, 2);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v105;
        }

        v97 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v97 = __p.__r_.__value_.__l.__size_;
        }

        if (v97)
        {
          std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,0>();
        }

        if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v109)
        {
          (v106->__vftable[1].__on_zero_shared)(v106);
        }
      }

      if (v108)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v108);
      }

      if (v107)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v107);
      }
    }
  }

  v19 = *(this + 46);
  v100 = *(v19 + 8);
  v20 = 40;
  if (!v100)
  {
    v20 = 32;
  }

  v21 = *(v19 + v20);
  *(v8 + 32) = *(this + 49);
  v99 = v21;
  *(v21 + 55) = *(this + 400);
  v22 = *v5;
  v23 = 0.0;
  if (*v5)
  {
    v24 = *(v22 + 520);
    v25 = *(v22 + 528);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v98 = v25;
    if (v24)
    {
      v26 = pthread_rwlock_rdlock((v24 + 16));
      if (v26)
      {
        geo::read_write_lock::logFailure(v26, "read lock", v27);
      }

      v28 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v24 + 216, 0x10001u);
      v29 = v28;
      v30 = *(v24 + 228);
      v31 = v28 != v30 && *(*(v24 + 216) + *(v24 + 224) + 2 * v28) == 1;
      v39 = pthread_rwlock_unlock((v24 + 16));
      if (v39)
      {
        geo::read_write_lock::logFailure(v39, "unlock", v40);
      }

      if (v29 != v30 && v31)
      {
        v38 = 1.0 - *(v24 + 272);
      }

      else
      {
        v38 = *(v24 + 272);
      }

      goto LABEL_46;
    }
  }

  else
  {
    v98 = 0;
  }

  v38 = 0.0;
LABEL_46:
  if (*(this + 48) == 3)
  {
    v41 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    v42 = fmaxf(*(v41 + 3080) + *(v41 + 3072), 1.0);
    v43 = 0.8;
    if (v42 > 9.0)
    {
      v43 = 0.5;
    }

    if (v42 <= 8.0)
    {
      v23 = 1.0;
    }

    else
    {
      v23 = v43;
    }
  }

  v45 = *(this + 34);
  for (i = *(this + 35); v45 != i; v45 += 8)
  {
    v46 = *v45;
    v47 = *(*(*v45 + 392) + 728);
    if (v47)
    {
      v48 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(this + 47) + 24));
      *(v48 + 3) = v99;
      v49 = gdc::ToCoordinateSystem(*(v101 + 320));
      v50 = 2;
      if (v49)
      {
        v50 = 4;
      }

      *(v48 + 8) = v101[v50];
      v51 = *(this + 47);
      if (v100)
      {
        v52 = v51[1];
        v53 = v52[1];
        if (v53 == *v52)
        {
          v57 = v52[11];
          if (!v57)
          {
            goto LABEL_139;
          }

          v54 = (*(*v57 + 48))(v57);
          __p.__r_.__value_.__r.__words[0] = v54;
        }

        else
        {
          v54 = *(v53 - 8);
          __p.__r_.__value_.__r.__words[0] = v54;
          v52[1] = v53 - 8;
        }

        std::vector<ggl::Clut::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Clut::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v52 + 4), &__p);
        v106 = v54;
        v58 = v52[15];
        if (!v58)
        {
          goto LABEL_139;
        }

        (*(*v58 + 48))(v58, &v106);
        v59 = *(this + 46);
        v60 = *(v59 + 72);
        v106 = *(v59 + 64);
        v107 = v60;
        if (v60)
        {
          atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          ggl::PipelineSetup::setState(v54, &v106);
          std::__shared_weak_count::__release_shared[abi:nn200100](v60);
        }

        else
        {
          ggl::PipelineSetup::setState(v54, &v106);
        }

        *(v54[21] + 8) = *(*(this + 46) + 8);
        *v54[21] = v47;
        v61 = v54[17];
        v61[1] = 0;
        v62 = v46[28];
        *v61 = v62;
        v63 = v54[29];
        v64 = v46[29];
        if (v64)
        {
          atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
        }

        v65 = v63[1];
        *v63 = v62;
        v63[1] = v64;
        if (v65)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v65);
        }

        v66 = v54[17];
        *(v66 + 24) = 0;
        v67 = v46[30];
        *(v66 + 16) = v67;
        v68 = v54[29];
        v69 = v46[31];
        if (v69)
        {
          atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
        }

        v70 = *(v68 + 24);
        *(v68 + 16) = v67;
        *(v68 + 24) = v69;
        if (v70)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v70);
        }

        v71 = *(v54[17] + 32);
        ggl::BufferMemory::BufferMemory(&__p);
        ggl::ResourceAccessor::accessConstantData(&v106, 0, v71, 1);
        ggl::BufferMemory::operator=(&__p, &v106);
        ggl::BufferMemory::~BufferMemory(&v106);
        *v103 = v38;
        ggl::BufferMemory::~BufferMemory(&__p);
      }

      else
      {
        if (v23 <= 0.0)
        {
          v72 = *v51;
          v74 = **v51;
          v73 = (*v51)[1];
          if (v73 == v74)
          {
            v79 = v72[11];
            if (!v79)
            {
              goto LABEL_139;
            }

            v54 = (*(*v79 + 48))(v79);
            __p.__r_.__value_.__r.__words[0] = v54;
          }

          else
          {
            v54 = *(v73 - 8);
            __p.__r_.__value_.__r.__words[0] = v54;
            v72[1] = v73 - 8;
          }

          std::vector<ggl::Textured::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v72 + 4), &__p);
          v106 = v54;
          v80 = v72[15];
          if (!v80)
          {
LABEL_139:
            std::__throw_bad_function_call[abi:nn200100]();
          }

          (*(*v80 + 48))(v80, &v106);
          v81 = *(this + 46);
          v82 = *(v81 + 56);
          v106 = *(v81 + 48);
          v107 = v82;
          if (v82)
          {
            atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(v54, &v106);
            std::__shared_weak_count::__release_shared[abi:nn200100](v82);
          }

          else
          {
            ggl::PipelineSetup::setState(v54, &v106);
          }

          *v54[21] = v47;
        }

        else
        {
          v55 = v51[2];
          v56 = v55[1];
          if (v56 == *v55)
          {
            v75 = v55[11];
            if (!v75)
            {
              goto LABEL_139;
            }

            v54 = (*(*v75 + 48))(v75);
            __p.__r_.__value_.__r.__words[0] = v54;
          }

          else
          {
            v54 = *(v56 - 8);
            __p.__r_.__value_.__r.__words[0] = v54;
            v55[1] = v56 - 8;
          }

          std::vector<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v55 + 4), &__p);
          v106 = v54;
          v76 = v55[15];
          if (!v76)
          {
            goto LABEL_139;
          }

          (*(*v76 + 48))(v76, &v106);
          v77 = *(this + 46);
          v78 = *(v77 + 88);
          v106 = *(v77 + 80);
          v107 = v78;
          if (v78)
          {
            atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
            ggl::PipelineSetup::setState(v54, &v106);
            std::__shared_weak_count::__release_shared[abi:nn200100](v78);
          }

          else
          {
            ggl::PipelineSetup::setState(v54, &v106);
          }

          *v54[21] = v47;
          v83 = *(v54[17] + 32);
          ggl::BufferMemory::BufferMemory(&__p);
          ggl::ResourceAccessor::accessConstantData(&v106, 0, v83, 1);
          ggl::BufferMemory::operator=(&__p, &v106);
          ggl::BufferMemory::~BufferMemory(&v106);
          *v103 = v23;
          ggl::BufferMemory::~BufferMemory(&__p);
        }

        v84 = v54[17];
        v84[1] = 0;
        v85 = v46[28];
        *v84 = v85;
        v86 = v54[29];
        v87 = v46[29];
        if (v87)
        {
          atomic_fetch_add_explicit((v87 + 8), 1uLL, memory_order_relaxed);
        }

        v88 = v86[1];
        *v86 = v85;
        v86[1] = v87;
        if (v88)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v88);
        }

        v89 = v54[17];
        *(v89 + 24) = 0;
        v90 = v46[30];
        *(v89 + 16) = v90;
        v91 = v54[29];
        v92 = v46[31];
        if (v92)
        {
          atomic_fetch_add_explicit((v92 + 8), 1uLL, memory_order_relaxed);
        }

        v93 = *(v91 + 24);
        *(v91 + 16) = v90;
        *(v91 + 24) = v92;
        if (v93)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v93);
        }
      }

      *(v48 + 4) = v54;
      ggl::RenderItem::assertValid(v48);
      v106 = v48;
      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v8 + 72), &v106);
    }
  }

  if (v98)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v98);
  }
}

void sub_1B302F050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a34);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v36 - 128) == 1)
  {
    (*(**(v36 - 160) + 56))(*(v36 - 160));
  }

  v38 = *(v36 - 136);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v38);
  }

  if (*(v36 - 152))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(v36 - 152));
  }

  _Unwind_Resume(a1);
}

uint64_t md::RasterRenderLayer::shouldEnableCLUT(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = *(v1 + 520);
  v3 = *(v1 + 528);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    v4 = *(*a1 + 520);
    v5 = *(*a1 + 528);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *(v4 + 272);
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    else
    {
      v6 = *(v4 + 272);
    }

    v7 = pthread_rwlock_rdlock((v2 + 16));
    if (v7)
    {
      geo::read_write_lock::logFailure(v7, "read lock", v8);
    }

    v9 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v2 + 216, 0x10001u);
    v10 = v9 != *(v2 + 228) && *(*(v2 + 216) + *(v2 + 224) + 2 * v9) == 1;
    v11 = pthread_rwlock_unlock((v2 + 16));
    if (v11)
    {
      geo::read_write_lock::logFailure(v11, "unlock", v12);
    }

    v13 = pthread_rwlock_rdlock((v2 + 16));
    if (v13)
    {
      geo::read_write_lock::logFailure(v13, "read lock", v14);
    }

    v15 = v6;
    v16 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v2 + 240, 0x10001u);
    if (v16 == *(v2 + 252))
    {
      geo::read_write_lock::unlock((v2 + 16));
    }

    else
    {
      v17 = *(*(v2 + 240) + *(v2 + 248) + 2 * v16);
      geo::read_write_lock::unlock((v2 + 16));
      if (v15 > 0.0 && v17 == 1)
      {
        v2 = 1;
        if (!v3)
        {
          return v2;
        }

        goto LABEL_26;
      }
    }

    v2 = (v15 < 1.0) & v10;
  }

  if (v3)
  {
LABEL_26:
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return v2;
}

void sub_1B302F314(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

ggl::zone_mallocator *std::vector<ggl::Textured::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::Pos2DUVPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Textured::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Textured::Pos2DUVPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::Pos2DUVPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

ggl::zone_mallocator *std::vector<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

ggl::zone_mallocator *std::vector<ggl::Clut::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Clut::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Clut::Pos2DUVPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Clut::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Clut::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Clut::Pos2DUVPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Clut::Pos2DUVPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__function::__func<md::RasterRenderLayer::layout(md::LayoutContext const&)::$_0,std::allocator<md::RasterRenderLayer::layout(md::LayoutContext const&)::$_0>,void ()(md::StyleManagerEvent)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  if ((*a2 | 4) == 4)
  {
    v2 = *(a1 + 8);
    if ((md::RasterRenderLayer::shouldEnableCLUT(*(a1 + 16)) & 1) == 0)
    {
      v3 = *(v2 + 368);
      v4 = *(v3 + 16);
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      if (v4)
      {

        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }
    }
  }
}

__n128 std::__function::__func<md::RasterRenderLayer::layout(md::LayoutContext const&)::$_0,std::allocator<md::RasterRenderLayer::layout(md::LayoutContext const&)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A26F30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ggl::ConstantDataTyped<ggl::TextureWithReverseAlpha::ReverseAlpha>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::TextureWithReverseAlpha::ReverseAlpha>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A26DA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Clut::Variation>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Clut::Variation>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A26CB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::TextureWithReverseAlpha::Pos2DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A26EB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Clut::Pos2DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A26E78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Textured::Pos2DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A26E40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::SceneQueryLogic::debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  v118 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v80);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n===== SceneQueryLogic =====\n", 29);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "HasBaseQuery:", 13);
  v5 = *(a1 + 320);
  if (v5)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  if (v5)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v6, v7);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "== RouteLineMasking ==\n", 23);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Allowed:", 8);
  if (*(a1 + 121))
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  if (*(a1 + 121))
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v8, v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, " ", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Active:", 7);
  if (*(a2 + 64))
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  if (*(a2 + 64))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v10, v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, " ", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "HasQuery:", 9);
  v12 = *(a1 + 352);
  if (v12)
  {
    v13 = "YES";
  }

  else
  {
    v13 = "NO";
  }

  if (v12)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v13, v14);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "== SpatialFlexing ==\n", 21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Allowed:", 8);
  if (*(a1 + 120))
  {
    v15 = "YES";
  }

  else
  {
    v15 = "NO";
  }

  if (*(a1 + 120))
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v15, v16);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, " ", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Active:", 7);
  if (*(a2 + 65))
  {
    v17 = "YES";
  }

  else
  {
    v17 = "NO";
  }

  if (*(a2 + 65))
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v17, v18);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, " ", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "HasQuery:", 9);
  v19 = *(a1 + 336);
  if (v19)
  {
    v20 = "YES";
  }

  else
  {
    v20 = "NO";
  }

  if (v19)
  {
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v20, v21);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
  if (*(a1 + 248) != *(a1 + 256))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "FlexBuckets:\n", 13);
    v22 = *(a1 + 248);
    for (i = *(a1 + 256); v22 != i; v22 += 12)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "  ", 2);
      v24 = gss::to_string(*v22);
      v25 = strlen(v24);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v24, v25);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, ":", 1);
      LODWORD(v26) = *(v22 + 1);
      v27 = MEMORY[0x1B8C61C60](&v80, sqrt(v26));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v27, " - ", 3);
      v28 = *(v22 + 2);
      if (v28 == -1)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "MAX", 3);
      }

      else
      {
        MEMORY[0x1B8C61C60](&v80, sqrt(v28));
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
    }
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Registries Processed:", 21);
  v29 = MEMORY[0x1B8C61C90](&v80, *(a1 + 544));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Entities Processed:", 19);
  v30 = MEMORY[0x1B8C61C90](&v80, *(a1 + 548));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Pending:", 8);
  v31 = MEMORY[0x1B8C61CB0](&v80, *(a1 + 472));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, "\n", 1);
  if (*(a1 + 472))
  {
    v32 = *(a1 + 456);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "[", 1);
    v33 = &v80 + *(v80 - 24);
    if ((v33[32] & 5) != 0)
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v117 = -1;
    }

    else
    {
      (*(**(v33 + 5) + 32))(&v109);
    }

    if (v32 != (a1 + 464))
    {
      while (1)
      {
        v34 = &v80 + *(v80 - 24);
        if ((v34[32] & 5) != 0)
        {
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v108 = -1;
        }

        else
        {
          (*(**(v34 + 5) + 32))(&v100);
        }

        MEMORY[0x1B8C61CD0](&v80, *(v32[4] + 40));
        v35 = &v80 + *(v80 - 24);
        if ((v35[32] & 5) != 0)
        {
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v99 = -1;
        }

        else
        {
          (*(**(v35 + 5) + 32))(&v91);
        }

        v36 = v32[1];
        if (v36)
        {
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36);
        }

        else
        {
          do
          {
            v37 = v32[2];
            v38 = *v37 == v32;
            v32 = v37;
          }

          while (!v38);
        }

        if (v37 == (a1 + 464))
        {
          break;
        }

        if (v99 > v108)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, ",", 1);
          if (v99 - v117 >= 41)
          {
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
            BYTE7(v78) = 2;
            strcpy(__p, "  ");
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, __p, 2);
            if (SBYTE7(v78) < 0)
            {
              operator delete(__p[0]);
            }

            v115 = v97;
            v116 = v98;
            v117 = v99;
            v111 = v93;
            v112 = v94;
            v113 = v95;
            v114 = v96;
            v109 = v91;
            v110 = v92;
          }
        }

        v32 = v37;
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "]", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Modified:", 9);
  v39 = MEMORY[0x1B8C61CB0](&v80, *(a1 + 496));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v39, "\n", 1);
  v40 = *(a1 + 152);
  if (v40[48] != v40[49])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Modified(Active):\n", 18);
    v41 = *(a1 + 480);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "[", 1);
    v42 = &v80 + *(v80 - 24);
    if ((v42[32] & 5) != 0)
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v117 = -1;
    }

    else
    {
      (*(**(v42 + 5) + 32))(&v109);
    }

    if (v41 != (a1 + 488))
    {
      while (1)
      {
        v43 = &v80 + *(v80 - 24);
        if ((v43[32] & 5) != 0)
        {
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v108 = -1;
        }

        else
        {
          (*(**(v43 + 5) + 32))(&v100);
        }

        v44 = v41[5];
        v45 = v40[48];
        v46 = v40[49];
        if (v45 != v46)
        {
          while (*v45 != v44)
          {
            if (++v45 == v46)
            {
              goto LABEL_87;
            }
          }
        }

        if (v45 != v46)
        {
          MEMORY[0x1B8C61CD0](&v80, *(v44 + 40));
        }

LABEL_87:
        v47 = &v80 + *(v80 - 24);
        if ((v47[32] & 5) != 0)
        {
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v99 = -1;
        }

        else
        {
          (*(**(v47 + 5) + 32))(&v91);
        }

        v48 = v41[1];
        if (v48)
        {
          do
          {
            v49 = v48;
            v48 = *v48;
          }

          while (v48);
        }

        else
        {
          do
          {
            v49 = v41[2];
            v38 = *v49 == v41;
            v41 = v49;
          }

          while (!v38);
        }

        if (v49 == (a1 + 488))
        {
          break;
        }

        if (v99 > v108)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, ",", 1);
          if (v99 - v117 >= 41)
          {
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
            BYTE7(v78) = 2;
            strcpy(__p, "  ");
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, __p, 2);
            if (SBYTE7(v78) < 0)
            {
              operator delete(__p[0]);
            }

            v115 = v97;
            v116 = v98;
            v117 = v99;
            v111 = v93;
            v112 = v94;
            v113 = v95;
            v114 = v96;
            v109 = v91;
            v110 = v92;
          }
        }

        v41 = v49;
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "]", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
    v40 = *(a1 + 152);
  }

  if (v40[60] != v40[61])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "Modified(Cached):\n", 18);
    v50 = *(a1 + 480);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "[", 1);
    v51 = &v80 + *(v80 - 24);
    if ((v51[32] & 5) != 0)
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v117 = -1;
    }

    else
    {
      (*(**(v51 + 5) + 32))(&v109);
    }

    if (v50 != (a1 + 488))
    {
      while (1)
      {
        v52 = &v80 + *(v80 - 24);
        if ((v52[32] & 5) != 0)
        {
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v108 = -1;
        }

        else
        {
          (*(**(v52 + 5) + 32))(&v100);
        }

        v53 = v50[5];
        v54 = v40[60];
        v55 = v40[61];
        if (v54 != v55)
        {
          while (*v54 != v53)
          {
            if (++v54 == v55)
            {
              goto LABEL_117;
            }
          }
        }

        if (v54 != v55)
        {
          MEMORY[0x1B8C61CD0](&v80, *(v53 + 40));
        }

LABEL_117:
        v56 = &v80 + *(v80 - 24);
        if ((v56[32] & 5) != 0)
        {
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v99 = -1;
        }

        else
        {
          (*(**(v56 + 5) + 32))(&v91);
        }

        v57 = v50[1];
        if (v57)
        {
          do
          {
            v58 = v57;
            v57 = *v57;
          }

          while (v57);
        }

        else
        {
          do
          {
            v58 = v50[2];
            v38 = *v58 == v50;
            v50 = v58;
          }

          while (!v38);
        }

        if (v58 == (a1 + 488))
        {
          break;
        }

        if (v99 > v108)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, ",", 1);
          if (v99 - v117 >= 41)
          {
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
            BYTE7(v78) = 2;
            strcpy(__p, "  ");
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, __p, 2);
            if (SBYTE7(v78) < 0)
            {
              operator delete(__p[0]);
            }

            v115 = v97;
            v116 = v98;
            v117 = v99;
            v111 = v93;
            v112 = v94;
            v113 = v95;
            v114 = v96;
            v109 = v91;
            v110 = v92;
          }
        }

        v50 = v58;
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "]", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
  }

  if (*(a1 + 528))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "CacheHits:\n", 11);
    *__p = 0u;
    v78 = 0u;
    v79 = 1065353216;
    v59 = *(a1 + 520);
    if (v59)
    {
      do
      {
        v60 = *(v59 + 5);
        *&v109 = v59 + 20;
        v61 = std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(__p, v60);
        ++*(v61 + 5);
        v59 = *v59;
      }

      while (v59);
      v62 = v78;
    }

    else
    {
      v62 = 0;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "[", 1);
    v63 = &v80 + *(v80 - 24);
    if ((v63[32] & 5) != 0)
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v117 = -1;
    }

    else
    {
      (*(**(v63 + 5) + 32))(&v109);
    }

    if (v62)
    {
      while (1)
      {
        v64 = &v80 + *(v80 - 24);
        if ((v64[32] & 5) != 0)
        {
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v108 = -1;
        }

        else
        {
          (*(**(v64 + 5) + 32))(&v100);
        }

        v66 = *(v62 + 4);
        v65 = *(v62 + 5);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "(", 1);
        v67 = MEMORY[0x1B8C61C90](&v80, v66);
        v68 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v67, ",", 1);
        v69 = MEMORY[0x1B8C61C90](v68, v65);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v69, ")", 1);
        v70 = &v80 + *(v80 - 24);
        if ((v70[32] & 5) != 0)
        {
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v99 = -1;
        }

        else
        {
          (*(**(v70 + 5) + 32))(&v91);
        }

        v62 = *v62;
        if (!v62)
        {
          break;
        }

        if (v99 > v108)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, ",", 1);
          if (v99 - v117 >= 41)
          {
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
            v90 = 2;
            strcpy(v89, "  ");
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, v89, 2);
            if (v90 < 0)
            {
              operator delete(v89[0]);
            }

            v115 = v97;
            v116 = v98;
            v117 = v99;
            v111 = v93;
            v112 = v94;
            v113 = v95;
            v114 = v96;
            v109 = v91;
            v110 = v92;
          }
        }
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "]", 1);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v80, "\n", 1);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(__p);
  }

  if ((v87 & 0x10) != 0)
  {
    v73 = v86;
    if (v86 < v83)
    {
      v86 = v83;
      v73 = v83;
    }

    locale = v82[4].__locale_;
  }

  else
  {
    if ((v87 & 8) == 0)
    {
      v71 = 0;
      v72 = a3;
      a3[23] = 0;
      goto LABEL_168;
    }

    locale = v82[1].__locale_;
    v73 = v82[3].__locale_;
  }

  v72 = a3;
  v71 = v73 - locale;
  if ((v73 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v71 >= 0x17)
  {
    operator new();
  }

  a3[23] = v71;
  if (v71)
  {
    memmove(a3, locale, v71);
  }

LABEL_168:
  v72[v71] = 0;
  v80 = *MEMORY[0x1E69E54E8];
  *(&v80 + *(v80 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v81 = MEMORY[0x1E69E5548] + 16;
  if (v85 < 0)
  {
    operator delete(v84);
  }

  v81 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v82);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v88);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::__shared_ptr_emplace<md::RouteLineMaskDesc>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A27108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__erase_unique<unsigned short>(uint64_t *a1, unsigned __int16 a2)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v2 <= a2)
      {
        v4 = a2 % a1[1];
      }
    }

    else
    {
      v4 = (v2 - 1) & a2;
    }

    v5 = *a1;
    v6 = *(*a1 + 8 * v4);
    if (v6)
    {
      v7 = *v6;
      if (v7)
      {
        v8 = v2 - 1;
        do
        {
          v9 = *(v7 + 1);
          if (v9 == a2)
          {
            if (v7[8] == a2)
            {
              v10 = *(v7 + 1);
              if (v3.u32[0] > 1uLL)
              {
                if (v10 >= v2)
                {
                  v10 %= v2;
                }
              }

              else
              {
                v10 &= v8;
              }

              v11 = *(v5 + 8 * v10);
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11 != v7);
              if (v12 == (a1 + 2))
              {
                goto LABEL_36;
              }

              v13 = *(v12 + 1);
              if (v3.u32[0] > 1uLL)
              {
                if (v13 >= v2)
                {
                  v13 %= v2;
                }
              }

              else
              {
                v13 &= v8;
              }

              if (v13 != v10)
              {
LABEL_36:
                if (!*v7)
                {
                  goto LABEL_37;
                }

                v14 = *(*v7 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v14 >= v2)
                  {
                    v14 %= v2;
                  }
                }

                else
                {
                  v14 &= v8;
                }

                if (v14 != v10)
                {
LABEL_37:
                  *(v5 + 8 * v10) = 0;
                }
              }

              v15 = *v7;
              if (*v7)
              {
                v16 = *(v15 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v16 >= v2)
                  {
                    v16 %= v2;
                  }
                }

                else
                {
                  v16 &= v8;
                }

                if (v16 != v10)
                {
                  *(*a1 + 8 * v16) = v12;
                  v15 = *v7;
                }
              }

              *v12 = v15;
              *v7 = 0;
              --a1[3];
              operator delete(v7);
              return;
            }
          }

          else
          {
            if (v3.u32[0] > 1uLL)
            {
              if (v9 >= v2)
              {
                v9 %= v2;
              }
            }

            else
            {
              v9 &= v8;
            }

            if (v9 != v4)
            {
              return;
            }
          }

          v7 = *v7;
        }

        while (v7);
      }
    }
  }
}

void *std::__hash_table<md::SceneQueryEvent,std::hash<md::SceneQueryEvent>,std::equal_to<md::SceneQueryEvent>,std::allocator<md::SceneQueryEvent>>::__emplace_unique_key_args<md::SceneQueryEvent,md::SceneQueryEvent&>(void *result, unsigned __int8 a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % result[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 16) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void md::SceneQueryLogic::clearNavigationFlexState(md::SceneQueryLogic *this)
{
  v1 = *(this + 60);
  v35 = this + 488;
  if (v1 != this + 488)
  {
    do
    {
      v2 = *(v1 + 5);
      v3 = gdc::Registry::storage<md::components::FlexSelectionInfo>(v2);
      v4 = v3;
      if (v3[29])
      {
        v5 = v3[28];
        if (v5)
        {
          v6 = v3[31];
          v7 = v3[7];
          v8 = (v3[8] - v7) >> 3;
          do
          {
            std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, v7, v8);
            v5 = *v5;
          }

          while (v5);
        }
      }

      v4[8] = v4[7];
      v4[11] = v4[10];
      v9 = gdc::Registry::storage<md::components::ClientState>(v2);
      v10 = gdc::Registry::storage<md::components::SupportsFlexing>(v2);
      v11 = v10;
      v12 = (v10 + 32);
      v14 = v9[7];
      v13 = v9[8];
      if (*(v10 + 64) - *(v10 + 56) >= (v13 - v14))
      {
        v15 = v9 + 4;
      }

      else
      {
        v15 = (v10 + 32);
      }

      v36 = v15;
      if (v9 + 4 == v15 && v14 != v13)
      {
        v16 = v9[10];
        do
        {
          if (*(v11 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v12, *(v14 + 4)))
          {
            v17 = *v14;
            if (geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::erase(v16, 0x10059u))
            {
              v18 = gdc::Registry::storage<md::components::FlexClientStateChanged>(v2);
              gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v18, v17);
            }
          }

          v16 += 24;
          v14 += 8;
        }

        while (v14 != v13);
      }

      if (v12 == v36)
      {
        v22 = *(v11 + 56);
        v23 = *(v11 + 64);
        while (v22 != v23)
        {
          Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v9 + 4, *(v22 + 4));
          v25 = v9[8];
          if (v25 != Index)
          {
            v26 = *v22;
            v27 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v9 + 4, HIDWORD(*v22));
            v28 = v25 == v27 ? v9[11] : v9[10] + 24 * ((v27 - v9[7]) >> 3);
            if (geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::erase(v28, 0x10059u))
            {
              v29 = gdc::Registry::storage<md::components::FlexClientStateChanged>(v2);
              gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v29, v26);
            }
          }

          v22 += 8;
        }
      }

      v19 = *(v1 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v1 + 2);
          v21 = *v20 == v1;
          v1 = v20;
        }

        while (!v21);
      }

      v1 = v20;
    }

    while (v20 != v35);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 61));
  *(this + 61) = 0;
  *(this + 62) = 0;
  *(this + 60) = v35;
  if (*(this + 66))
  {
    v30 = *(this + 65);
    if (v30)
    {
      do
      {
        v31 = *v30;
        operator delete(v30);
        v30 = v31;
      }

      while (v31);
    }

    *(this + 65) = 0;
    v32 = *(this + 64);
    if (v32)
    {
      for (i = 0; i != v32; ++i)
      {
        *(*(this + 63) + 8 * i) = 0;
      }
    }

    *(this + 66) = 0;
  }
}

void md::SceneQueryLogic::prepareNavigationFlexSegmentsForRoute(md::SceneQueryLogic *this, GEOComposedRoute *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v60 = a2;
  if (*(this + 24))
  {
    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(*(this + 23));
    *(this + 23) = 0;
    v3 = *(this + 22);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*(this + 21) + 8 * i) = 0;
      }
    }

    *(this + 24) = 0;
  }

  v5 = v60;
  if (v60)
  {
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = [(GEOComposedRoute *)v60 sections];
    v6 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v6)
    {
      v62 = *v73;
      v7 = MEMORY[0x1E69A1690];
      do
      {
        v8 = 0;
        v63 = v6;
        do
        {
          if (*v73 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v64 = v8;
          v9 = *(*(&v72 + 1) + 8 * v8);
          v76 = v9;
          for (j = 1; j < [v9 pointCount]; ++j)
          {
            v11 = [v76 points];
            v12 = v76;
            if (v76)
            {
              [v76 bounds];
              v13 = *(&v67 + 1);
              v14 = *&v67;
              v16 = *(&v68 + 1);
              v15 = *&v68;
              v17 = *(&v69 + 1);
              v18 = *&v69;
              v12 = v76;
            }

            else
            {
              v68 = 0u;
              v69 = 0u;
              v17 = 0.0;
              v18 = 0.0;
              v16 = 0.0;
              v15 = 0.0;
              v67 = 0u;
              v13 = 0.0;
              v14 = 0.0;
            }

            v19 = v11 + 12 * j;
            v20 = v13 + v18 * (1.0 - *(v19 - 8));
            v21 = v7[1];
            v22 = (v14 + v16 * *(v19 - 12)) / *v7;
            v23 = (v15 + v17 * *(v19 - 4)) * 0.0000000249532021;
            *&v70 = v22;
            *(&v70 + 1) = 1.0 - v20 / v21;
            v71 = v23;
            v24 = [v12 points];
            if (v76)
            {
              [v76 bounds];
              v25 = *(&v67 + 1);
              v26 = *&v67;
              v28 = *(&v68 + 1);
              v27 = *&v68;
              v29 = *(&v69 + 1);
              v30 = *&v69;
            }

            else
            {
              v68 = 0u;
              v69 = 0u;
              v29 = 0.0;
              v30 = 0.0;
              v28 = 0.0;
              v27 = 0.0;
              v67 = 0u;
              v25 = 0.0;
              v26 = 0.0;
            }

            v31 = (v24 + 12 * j);
            v32 = v27 + v29 * v31[2];
            v33 = 1.0 - (v25 + v30 * (1.0 - v31[1])) / v7[1];
            v65 = (v26 + v28 * *v31) / *v7;
            *v66 = v33;
            *&v66[1] = v32 * 0.0000000249532021;
            if (vabdd_f64(v22, v65) >= 0.0000000249532021)
            {
LABEL_25:
              *&v67 = &v76;
              v37 = std::__hash_table<std::__hash_value_type<GEOComposedRouteSection *,std::vector<gm::LineSegment<double,3>>>,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::__unordered_map_equal<std::vector,std::__unordered_map_hasher,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::equal_to,true>,std::allocator<std::allocator><std::__unordered_map_hasher>>::__emplace_unique_key_args<std::vector,std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const&>,GEOComposedRouteSection * const<>>(this + 21, v76);
              v38 = v37;
              v39 = v37[4];
              v40 = v37[5];
              if (v39 >= v40)
              {
                v45 = v37[3];
                v46 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v45) >> 4);
                v47 = v46 + 1;
                if (v46 + 1 > 0x555555555555555)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v48 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v45) >> 4);
                if (2 * v48 > v47)
                {
                  v47 = 2 * v48;
                }

                if (v48 >= 0x2AAAAAAAAAAAAAALL)
                {
                  v49 = 0x555555555555555;
                }

                else
                {
                  v49 = v47;
                }

                if (v49)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,4>>>(v49);
                }

                for (k = 0; k != 3; ++k)
                {
                  *(&v67 + k * 8) = *&v66[k - 1] - *(&v70 + k * 8);
                }

                v51 = 48 * v46;
                v52 = v68;
                v53 = v67;
                *v51 = v70;
                *(v51 + 16) = v71;
                *(v51 + 24) = v53;
                *(v51 + 40) = v52;
                v54 = v38[3];
                v55 = v38[4];
                v56 = 48 * v46 + v54 - v55;
                if (v54 != v55)
                {
                  v57 = (v51 + v54 - v55);
                  do
                  {
                    v58 = *v54;
                    v59 = *(v54 + 2);
                    v57[1] = *(v54 + 1);
                    v57[2] = v59;
                    *v57 = v58;
                    v57 += 3;
                    v54 += 48;
                  }

                  while (v54 != v55);
                  v54 = v38[3];
                }

                v44 = v51 + 48;
                v38[3] = v56;
                v38[4] = v51 + 48;
                v38[5] = 0;
                if (v54)
                {
                  operator delete(v54);
                }
              }

              else
              {
                for (m = 0; m != 3; ++m)
                {
                  *(&v67 + m * 8) = *&v66[m - 1] - *(&v70 + m * 8);
                }

                v42 = v68;
                v43 = v67;
                *v39 = v70;
                *(v39 + 16) = v71;
                *(v39 + 24) = v43;
                *(v39 + 40) = v42;
                v44 = v39 + 48;
              }

              v38[4] = v44;
            }

            else
            {
              v34 = 0;
              while (v34 != 2)
              {
                v35 = v34 + 1;
                v36 = vabdd_f64(*(&v70 + v34 + 1), *&v66[v34]);
                ++v34;
                if (v36 >= 0.0000000249532021)
                {
                  if ((v35 - 1) > 1)
                  {
                    break;
                  }

                  goto LABEL_25;
                }
              }
            }

            v9 = v76;
          }

          v8 = v64 + 1;
        }

        while (v64 + 1 != v63);
        v6 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
      }

      while (v6);
    }

    v5 = v60;
  }
}

uint64_t *std::__tree<gdc::Registry *,md::RegistryIdentifierLessThan,std::allocator<gdc::Registry *>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,unsigned int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(void *a1, unsigned __int16 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 8) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void gdc::Registry::add<md::components::FlexClientStateChanged,std::__wrap_iter<gdc::Entity *>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = *v4++;
      v7 = gdc::Registry::storage<md::components::FlexClientStateChanged>(a1);
      gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v7, v6);
    }

    while (v4 != a3);
  }
}

void md::SceneQueryLogic::categorizeEntitiesByFlexZone<>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v63[4] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  ++*(*a1 + 548);
  do
  {
    *&v60[v6] = *(a3 + 36 + 4 * v6);
    ++v6;
  }

  while (v6 != 3);
  v8 = (a3 + 48);
  for (i = 3; i != 6; ++i)
  {
    v10 = *v8++;
    *&v60[i] = v10;
  }

  v11 = (**(a1 + 8) + 312);
  v62[0] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v62[1] = xmmword_1B33B0520;
  v62[2] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v63[0] = &unk_1F2A61070;
  v63[1] = v62;
  v63[2] = v11;
  v63[3] = v63;
  gm::Box<double,3>::forEachCorner(v60, v63);
  std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](v63);
  v12 = *(a1 + 16);
  v13 = *v12;
  v14 = v12[1];
  if (*v12 == v14)
  {
    v35 = 0;
    v16 = 3.4028e38;
  }

  else
  {
    v58 = a4;
    v15 = -1;
    v16 = 3.4028e38;
    do
    {
      v63[0] = *v13;
      v60[0] = v63;
      v17 = std::__hash_table<std::__hash_value_type<GEOComposedRouteSection *,std::vector<gm::LineSegment<double,3>>>,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::__unordered_map_equal<std::vector,std::__unordered_map_hasher,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::equal_to,true>,std::allocator<std::allocator><std::__unordered_map_hasher>>::__emplace_unique_key_args<std::vector,std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const&>,GEOComposedRouteSection * const<>>(v7 + 21, v63[0]);
      v19 = v17[3];
      v18 = v17[4];
      if (v19 != v18)
      {
        v20 = gm::Box<double,3>::center<double>(v62);
        v22 = v21;
        v24 = v23;
        v25 = v7[32];
        v26 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v7[31]) >> 2);
        v27 = (v25 - 4);
        do
        {
          v28 = v15;
          *v60 = v20;
          v60[1] = v22;
          v60[2] = v24;
          v29 = gm::LineSegment<double,3>::distanceSquaredTo(v19, v60);
          v30 = v29 * 1.60600699e15;
          v16 = fminf(v16, v30);
          v31 = v30;
          v32 = v27;
          v15 = v26;
          do
          {
            if (v15-- < 1)
            {
              v15 = v28;
              goto LABEL_19;
            }

            v34 = *(v32 - 1) <= v31 && *v32 >= v31;
            v32 -= 3;
          }

          while (!v34 || v15 >= v28);
          if (!v15)
          {

            v15 = 0;
            goto LABEL_23;
          }

LABEL_19:
          v19 += 48;
        }

        while (v19 != v18);
      }

      ++v13;
    }

    while (v13 != v14);
    if (v15 == -1)
    {
      v35 = 0;
    }

    else
    {
LABEL_23:
      v35 = *(v7[31] + 12 * v15);
    }

    a4 = v58;
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::emplace<gss::StyleAttribute,unsigned short>(v60, a4, 0x10059u, v35);
  if (v61 == 1)
  {
    v36 = *(a1 + 24);
    v38 = *(v36 + 8);
    v37 = *(v36 + 16);
    if (v38 >= v37)
    {
      v40 = (v38 - *v36) >> 3;
      if ((v40 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v41 = v37 - *v36;
      v42 = v41 >> 2;
      if (v41 >> 2 <= (v40 + 1))
      {
        v42 = v40 + 1;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFF8)
      {
        v43 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v42;
      }

      if (v43)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v43);
      }

      *(8 * v40) = a2;
      v39 = 8 * v40 + 8;
      v44 = *(v36 + 8) - *v36;
      v45 = (8 * v40 - v44);
      memcpy(v45, *v36, v44);
      v46 = *v36;
      *v36 = v45;
      *(v36 + 8) = v39;
      *(v36 + 16) = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v38 = a2;
      v39 = (v38 + 1);
    }

    *(v36 + 8) = v39;
    v47 = *(a1 + 32);
    v49 = *(v47 + 8);
    v48 = *(v47 + 16);
    if (v49 >= v48)
    {
      v51 = *v47;
      v52 = v49 - *v47;
      v53 = v52 >> 2;
      v54 = (v52 >> 2) + 1;
      if (v54 >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v55 = v48 - v51;
      if (v55 >> 1 > v54)
      {
        v54 = v55 >> 1;
      }

      if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v56 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v56 = v54;
      }

      if (v56)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v56);
      }

      *(4 * v53) = v16;
      v50 = 4 * v53 + 4;
      memcpy(0, v51, v52);
      v57 = *v47;
      *v47 = 0;
      *(v47 + 8) = v50;
      *(v47 + 16) = 0;
      if (v57)
      {
        operator delete(v57);
      }
    }

    else
    {
      *v49 = v16;
      v50 = (v49 + 1);
    }

    *(v47 + 8) = v50;
  }
}

void *std::__hash_table<std::__hash_value_type<GEOComposedRouteSection *,std::vector<gm::LineSegment<double,3>>>,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::__unordered_map_equal<std::vector,std::__unordered_map_hasher,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::equal_to,true>,std::allocator<std::allocator><std::__unordered_map_hasher>>::__emplace_unique_key_args<std::vector,std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const&>,GEOComposedRouteSection * const<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1B303348C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[4] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::emplace<gss::StyleAttribute,unsigned short>(uint64_t result, uint64_t a2, unsigned int a3, __int16 a4)
{
  v5 = result;
  if (*(a2 + 16) == 1)
  {
    v6 = *(a2 + 12);
    *result = a2;
    *(result + 8) = v6;
    *(result + 16) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
  }

  else
  {
    v8 = a3;
    v9 = a4;
    result = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a2, a3);
    if (result == *(a2 + 12))
    {
      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::insert<std::pair<gss::StyleAttribute const,unsigned short> *>(a2, &v8, &v10);
      result = *(a2 + 12) - 1;
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    *v5 = a2;
    *(v5 + 8) = result;
    *(v5 + 16) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = v7;
  }

  return result;
}

void md::SceneQueryLogic::categorizeEntitiesByFlexZone<md::components::DidResolvePendingMaterial>(std::vector<gdc::Registry *> const&)::{lambda(gdc::Entity,md::components::MeshInstance &,md::components::ClientState &)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v63[4] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  ++*(*a1 + 548);
  do
  {
    *&v60[v6] = *(a3 + 36 + 4 * v6);
    ++v6;
  }

  while (v6 != 3);
  v8 = (a3 + 48);
  for (i = 3; i != 6; ++i)
  {
    v10 = *v8++;
    *&v60[i] = v10;
  }

  v11 = (**(a1 + 8) + 312);
  v62[0] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v62[1] = xmmword_1B33B0520;
  v62[2] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v63[0] = &unk_1F2A61070;
  v63[1] = v62;
  v63[2] = v11;
  v63[3] = v63;
  gm::Box<double,3>::forEachCorner(v60, v63);
  std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](v63);
  v12 = *(a1 + 16);
  v13 = *v12;
  v14 = v12[1];
  if (*v12 == v14)
  {
    v35 = 0;
    v16 = 3.4028e38;
  }

  else
  {
    v58 = a4;
    v15 = -1;
    v16 = 3.4028e38;
    do
    {
      v63[0] = *v13;
      v60[0] = v63;
      v17 = std::__hash_table<std::__hash_value_type<GEOComposedRouteSection *,std::vector<gm::LineSegment<double,3>>>,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::__unordered_map_equal<std::vector,std::__unordered_map_hasher,std::__unordered_map_hasher<std::vector,std::__unordered_map_hasher,md::SceneQueryLogic::pointer_hasher<GEOComposedRouteSection>,std::equal_to<std::vector>,true>,std::equal_to,true>,std::allocator<std::allocator><std::__unordered_map_hasher>>::__emplace_unique_key_args<std::vector,std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const&>,GEOComposedRouteSection * const<>>(v7 + 21, v63[0]);
      v19 = v17[3];
      v18 = v17[4];
      if (v19 != v18)
      {
        v20 = gm::Box<double,3>::center<double>(v62);
        v22 = v21;
        v24 = v23;
        v25 = v7[32];
        v26 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v7[31]) >> 2);
        v27 = (v25 - 4);
        do
        {
          v28 = v15;
          *v60 = v20;
          v60[1] = v22;
          v60[2] = v24;
          v29 = gm::LineSegment<double,3>::distanceSquaredTo(v19, v60);
          v30 = v29 * 1.60600699e15;
          v16 = fminf(v16, v30);
          v31 = v30;
          v32 = v27;
          v15 = v26;
          do
          {
            if (v15-- < 1)
            {
              v15 = v28;
              goto LABEL_19;
            }

            v34 = *(v32 - 1) <= v31 && *v32 >= v31;
            v32 -= 3;
          }

          while (!v34 || v15 >= v28);
          if (!v15)
          {

            v15 = 0;
            goto LABEL_23;
          }

LABEL_19:
          v19 += 48;
        }

        while (v19 != v18);
      }

      ++v13;
    }

    while (v13 != v14);
    if (v15 == -1)
    {
      v35 = 0;
    }

    else
    {
LABEL_23:
      v35 = *(v7[31] + 12 * v15);
    }

    a4 = v58;
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::emplace<gss::StyleAttribute,unsigned short>(v60, a4, 0x10059u, v35);
  if (v61 == 1)
  {
    v36 = *(a1 + 24);
    v38 = *(v36 + 8);
    v37 = *(v36 + 16);
    if (v38 >= v37)
    {
      v40 = (v38 - *v36) >> 3;
      if ((v40 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v41 = v37 - *v36;
      v42 = v41 >> 2;
      if (v41 >> 2 <= (v40 + 1))
      {
        v42 = v40 + 1;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFF8)
      {
        v43 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v42;
      }

      if (v43)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v43);
      }

      *(8 * v40) = a2;
      v39 = 8 * v40 + 8;
      v44 = *(v36 + 8) - *v36;
      v45 = (8 * v40 - v44);
      memcpy(v45, *v36, v44);
      v46 = *v36;
      *v36 = v45;
      *(v36 + 8) = v39;
      *(v36 + 16) = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v38 = a2;
      v39 = (v38 + 1);
    }

    *(v36 + 8) = v39;
    v47 = *(a1 + 32);
    v49 = *(v47 + 8);
    v48 = *(v47 + 16);
    if (v49 >= v48)
    {
      v51 = *v47;
      v52 = v49 - *v47;
      v53 = v52 >> 2;
      v54 = (v52 >> 2) + 1;
      if (v54 >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v55 = v48 - v51;
      if (v55 >> 1 > v54)
      {
        v54 = v55 >> 1;
      }

      if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v56 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v56 = v54;
      }

      if (v56)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v56);
      }

      *(4 * v53) = v16;
      v50 = 4 * v53 + 4;
      memcpy(0, v51, v52);
      v57 = *v47;
      *v47 = 0;
      *(v47 + 8) = v50;
      *(v47 + 16) = 0;
      if (v57)
      {
        operator delete(v57);
      }
    }

    else
    {
      *v49 = v16;
      v50 = (v49 + 1);
    }

    *(v47 + 8) = v50;
  }
}

uint64_t std::__function::__func<md::SceneQueryLogic::resolveFlexQueries(md::StyleLogicContext const&,md::NavigationContext const&,BOOL,BOOL)::$_0,std::allocator<md::SceneQueryLogic::resolveFlexQueries(md::StyleLogicContext const&,md::NavigationContext const&,BOOL,BOOL)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A27140;
  a2[1] = v2;
  return result;
}

uint64_t md::Logic<md::SceneQueryLogic,md::SceneQueryContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xDFC317497CF9A4BFLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::SceneQueryContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::SceneQueryContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::SceneQueryContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::SceneQueryContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A27248;
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 24);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 8));
    MEMORY[0x1B8C62190](v2, 0x10A0C4056A13B85);
  }

  return a1;
}

void md::SceneQueryLogic::didBecomeInactive(md::SceneQueryLogic *this)
{
  v2 = *(this + 38);
  if (v2)
  {
    *(this + 38) = 0;
  }

  md::SceneQueryLogic::clearNavigationFlexState(this);
}

void md::SceneQueryLogic::~SceneQueryLogic(md::SceneQueryLogic *this)
{
  md::SceneQueryLogic::~SceneQueryLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A26F78;
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 504);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 61));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 58));
  std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::destroy(*(this + 54));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 51));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 48));
  v2 = *(this + 45);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 43);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 41);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *(this + 37) = &unk_1F2A4C308;

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 35));
  v5 = *(this + 31);
  if (v5)
  {
    *(this + 32) = v5;
    operator delete(v5);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 208);
  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table(this + 168);
  v6 = *(this + 20);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B3033DB0(_Unwind_Exception *a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 504);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 488));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 464));
  std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::destroy(*(v1 + 432));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 408));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 384));
  v3 = *(v1 + 360);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 + 344);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 328);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *(v1 + 296) = &unk_1F2A4C308;

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 280));
  v6 = *(v1 + 248);
  if (v6)
  {
    *(v1 + 256) = v6;
    operator delete(v6);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 208);
  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table(v1 + 168);
  v7 = *(v1 + 160);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

void ___ZN2md15SceneQueryLogicC2ERKNSt3__110shared_ptrINS_15RegistryManagerEEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  *(v1 + 120) = GEOConfigGetBOOL();
  v2 = GEOGetVectorKitSceneQueryLogicLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(v1 + 120);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "SpatialFlexingAllowed updated to %d", v4, 8u);
  }
}

void ___ZN2md15SceneQueryLogicC2ERKNSt3__110shared_ptrINS_15RegistryManagerEEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_8(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  *(v1 + 121) = GEOConfigGetBOOL();
  v2 = GEOGetVectorKitSceneQueryLogicLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(v1 + 121);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "RouteLineMaskingAllowed updated to %d", v4, 8u);
  }
}

void ___ZN2md15SceneQueryLogicC2ERKNSt3__110shared_ptrINS_15RegistryManagerEEEPU28objcproto17OS_dispatch_queue8NSObject_block_invoke_9(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  *(v1 + 124) = GEOConfigGetUInteger();
  v2 = GEOGetVectorKitSceneQueryLogicLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(v1 + 124);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "MaxEntitiesToFlexPerFrame updated to %d", v4, 8u);
  }
}

void md::Logic<md::SceneQueryLogic,md::SceneQueryContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext,md::StyleLogicContext,md::SettingsContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void geo::_retain_ptr<NSUUID * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A27290;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<NSUUID * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A27290;

  return a1;
}

void sub_1B3034714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18)
{
  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_1B3034B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Block_object_dispose((v33 - 128), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13_23238(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__31(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

__n128 __Block_byref_object_copy__34(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void forEachNodeInSortedPaths(void *a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v3;
    v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v6)
    {
      v27 = *v31;
      v28 = 0;
      do
      {
        v7 = 0;
        do
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v30 + 1) + 8 * v7);
          if (v28 && ([v28 section], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "transportType"), objc_msgSend(v8, "section"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "transportType"), v11, v9, LODWORD(v13) = objc_msgSend(v28, "routeEnd") >> 32, *&v13 >= 0.0))
          {
            v22 = [v8 routeStart];
            v14 = 1;
            if (v22 <= [v28 routeEnd] && v10 == v12)
            {
              v23 = [v28 section];
              if ([v23 transportType] != 1)
              {
                v24 = [v8 section];
                v14 = [v24 transportType] == 2;
              }
            }
          }

          else
          {
            v14 = 1;
          }

          v15 = [v8 points];
          v16 = [v8 pointCount];
          if (v16)
          {
            v17 = 0;
            v18 = v16;
            do
            {
              v29 = *(*[v8 polylineCoordinates] + 8 * v17);
              if (v17)
              {
                v19 = 0;
              }

              else
              {
                v19 = v14;
              }

              [v8 laneHalfWidthAtIndex:v17];
              (v5)[2](v5, v15, &v29, v17, v8, v19, [v8 gradientTrafficAtIndex:v17], v20);
              ++v17;
              v15 += 12;
            }

            while (v18 != v17);
            if (v18 > 0)
            {
              v21 = v8;

              v28 = v21;
            }
          }

          ++v7;
        }

        while (v7 != v6);
        v25 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        v6 = v25;
      }

      while (v25);
    }

    else
    {
      v28 = 0;
    }
  }
}

void sub_1B3035238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(&a9);
  geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(&a10);

  _Unwind_Resume(a1);
}

id GEOGetVectorKitVKRouteLineLog(void)
{
  if (GEOGetVectorKitVKRouteLineLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKRouteLineLog(void)::onceToken, &__block_literal_global_23246);
  }

  v1 = GEOGetVectorKitVKRouteLineLog(void)::log;

  return v1;
}

void ___ZL29GEOGetVectorKitVKRouteLineLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "VKRouteLine");
  v1 = GEOGetVectorKitVKRouteLineLog(void)::log;
  GEOGetVectorKitVKRouteLineLog(void)::log = v0;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Arrow>>(unint64_t a1)
{
  if (a1 < 0x5D1745D1745D175)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void sub_1B3037E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a43, 8);
  geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr((v64 + 48));
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a59, 8);

  _Block_object_dispose((v67 - 200), 8);
  v69 = *(v67 - 152);
  if (v69)
  {
    *(v67 - 144) = v69;
    operator delete(v69);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__23251(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__23252(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 __Block_byref_object_copy__15_23254(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 48) = 0;
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24_23261(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

char *std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9 = 0;
      *v9++ = *v8;
      *v8 = 0;
      v8 += 8;
    }

    while (v8 != v5);
    do
    {
      result = (geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(result) + 1);
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1B3039954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::mutex::unlock((v10 + 440));

  _Unwind_Resume(a1);
}

void sub_1B30399D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKRouteLine;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void md::ExternalIconLabelPart::populateDebugNode(md::ExternalIconLabelPart *this, gdc::DebugTreeNode *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  md::ImageLabelPart::populateDebugNode(this, a2);
  std::string::basic_string[abi:nn200100]<0>(&v16, "ExternalIconLabelPart");
  v4 = gdc::DebugTreeNode::createChildNode(a2, &v16);
  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::string::basic_string[abi:nn200100]<0>(&v16, "Alpha");
  gdc::DebugTreeValue::DebugTreeValue(v13, *(this + 138));
  gdc::DebugTreeNode::addProperty(v4, &v16, v13);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  std::string::basic_string[abi:nn200100]<0>(&v16, "Is Round");
  gdc::DebugTreeValue::DebugTreeValue(v10, *(this + 672));
  gdc::DebugTreeNode::addProperty(v4, &v16, v10);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (*(this + 672) != 1)
  {
    std::string::basic_string[abi:nn200100]<0>(&v6, "Half Ext");
    gdc::DebugTreeValue::DebugTreeValue(&v16, *(this + 165));
    gdc::DebugTreeValue::DebugTreeValue(&v18, *(this + 166));
    memset(v5, 0, sizeof(v5));
    std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(v5, &v16, &v19, 2uLL);
  }

  std::string::basic_string[abi:nn200100]<0>(&v16, "Radius");
  gdc::DebugTreeValue::DebugTreeValue(v7, *(this + 164));
  gdc::DebugTreeNode::addProperty(v4, &v16, v7);
  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }
}

void sub_1B3039D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v19 = 0;
  while (1)
  {
    if (*(v17 + v19 + 119) < 0)
    {
      operator delete(*(v17 + v19 + 96));
    }

    v19 -= 64;
    if (v19 == -128)
    {
      if (a17 < 0)
      {
        operator delete(__p);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t md::ExternalIconLabelPart::debugString@<X0>(md::ExternalIconLabelPart *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "ExternalIcon", 12);
  v4 = v15;
  *(&v15 + *(v15 - 24) + 8) = *(&v15 + *(v15 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v17[0].__locale_ + *(v4 - 24)) = 2;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "\n  alpha:", 9);
  std::ostream::operator<<();
  if (*(this + 672) == 1)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "\n  radius:", 10);
    std::ostream::operator<<();
  }

  else
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "\n  halfExt:(", 12);
    v5 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v5, ", ", 2);
    v6 = std::ostream::operator<<();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v6, ")", 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, "\n  ", 3);
  md::ImageLabelPart::debugString(this, __p);
  if ((v14 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v8 = v14;
  }

  else
  {
    v8 = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v15, v7, v8);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v22 & 0x10) != 0)
  {
    v10 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v10 = v18;
    }

    locale = v17[4].__locale_;
  }

  else
  {
    if ((v22 & 8) == 0)
    {
      v9 = 0;
      a2[23] = 0;
      goto LABEL_25;
    }

    locale = v17[1].__locale_;
    v10 = v17[3].__locale_;
  }

  v9 = v10 - locale;
  if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memmove(a2, locale, v9);
  }

LABEL_25:
  a2[v9] = 0;
  v15 = *MEMORY[0x1E69E54E8];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v16 = MEMORY[0x1E69E5548] + 16;
  if (v20 < 0)
  {
    operator delete(v19);
  }

  v16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v23);
}

void sub_1B303A10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a15 = *MEMORY[0x1E69E54E8];
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a16 = MEMORY[0x1E69E5548] + 16;
  if (a29 < 0)
  {
    operator delete(a24);
  }

  a16 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a17);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a32);
  _Unwind_Resume(a1);
}

float md::ExternalIconLabelPart::calloutAnchorRect(md::ExternalIconLabelPart *this)
{
  if (*(this + 672) == 1)
  {
    return -*(this + 164);
  }

  else
  {
    return -*(this + 165);
  }
}

float md::ExternalIconLabelPart::pushToRenderModel(uint64_t a1, float a2)
{
  result = fmaxf(fminf(*(a1 + 600) * a2, 1.0), 0.0);
  *(a1 + 552) = result;
  return result;
}

uint64_t md::ExternalIconLabelPart::layoutForDisplay(_DWORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  a1[130] = *a4;
  a1[131] = a4[1];
  a1[86] = *a4;
  a1[87] = a4[1];
  md::CollisionObject::setupShapeData((a1 + 78));
  return 37;
}

uint64_t md::ExternalIconLabelPart::layoutForStaging(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 628) == 1)
  {
    v3 = (a1 + 668);
    v4 = vld1_dup_f32(v3);
    *(a1 + 168) = vmaxnm_f32(*(a1 + 620), v4);
    *(a1 + 271) = *(a1 + 631);
    *(a1 + 628) = 0;
  }

  *(a1 + 280) = *a3;
  *(a1 + 284) = a3[1];
  *(a1 + 104) = *a3;
  *(a1 + 108) = a3[1];
  md::CollisionObject::setupShapeData(a1 + 72);
  return 37;
}

void md::ExternalIconLabelPart::~ExternalIconLabelPart(md::ExternalIconLabelPart *this)
{
  *this = &unk_1F2A272B0;
  v2 = *(this + 81);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
  v4 = mdm::zone_mallocator::instance(v3);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v4, this);
}

{
  *this = &unk_1F2A272B0;
  v2 = *(this + 81);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  *this = &unk_1F2A5B190;
  md::CollisionObject::~CollisionObject(this + 39);
  md::CollisionObject::~CollisionObject(this + 9);
}

uint64_t md::HillshadeRenderLayer::reserveStencilRange(uint64_t a1, uint64_t a2)
{
  result = ggl::StencilManager::reserveStencilValues(*(a2 + 24), (*(a1 + 49) - *(a1 + 48) + 1), *(a1 + 368));
  *(a1 + 376) = result - *(a1 + 48);
  return result;
}

void md::HillshadeRenderLayer::layout(md::HillshadeRenderLayer *this, const md::LayoutContext *a2)
{
  v185 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 1);
  v142 = gdc::Context::get<md::GeometryContext>(v3);
  v144 = md::LayoutContext::get<md::CameraContext>(v3);
  if (!v144)
  {
    return;
  }

  v4 = *(this + 44);
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  v5 = *(this + 48);
  ggl::FragmentedPool<ggl::RenderItem>::pushAll(*(v5 + 48));
  v6 = *(v5 + 56);
  v7 = *(v6 + 4);
  v8 = *(v6 + 5);
  if (v7 != v8)
  {
    do
    {
      *&v175 = *v7;
      std::vector<ggl::Hillshade::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Hillshade::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](v6, &v175);
      ++v7;
    }

    while (v7 != v8);
    v7 = *(v6 + 4);
    v8 = *(v6 + 5);
  }

  if (v7 != v8)
  {
    *(v6 + 5) = v7;
  }

  v9 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 392));
  if (v9)
  {
    v9 = *(*(v9 + 16) + 8 * *(this + 393));
  }

  v10 = v9;
  ggl::CommandBuffer::clearRenderItems(v9);
  v152 = v10;
  *(v10 + 4) = *(this + 46);
  v148 = *(this + 94);
  v183[0] = &unk_1F2A2F290;
  v184 = v183;
  v11 = *(a2 + 1);
  v12 = gdc::Context::get<md::GeometryContext>(v11);
  v143 = md::LayoutContext::get<md::SceneContext>(v11);
  v147 = v12;
  if (v12)
  {
    if (md::SceneStateManager::isFinishedLoadingRequiredLayers(*v143))
    {
      v13 = *(this + 48);
      v14 = *(this + 49);
      *(this + 360) = v13 != v14;
      if (v13 == v14)
      {
        goto LABEL_59;
      }
    }

    else
    {
      *(this + 360) = 1;
    }

    v15 = *(this + 44);
    v17 = *(v15 + 112);
    v16 = *(v15 + 120);
    v18 = *(this + 34);
    v19 = *(this + 35);
    if (v18 == v19)
    {
      v155 = *(this + 44);
    }

    else
    {
      do
      {
        v20 = *v18;
        if (!v184 || std::function<BOOL ()(HillshadeRenderable const*)>::operator()(v184, *v18))
        {
          v21 = *(v20 + 392);
          FillRect = grl::IconMetricsRenderResult::getFillRect(v21);
          v23 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v143 + 1, FillRect);
          if (v23)
          {
            v24 = (*(v23 + 17) - *(v23 + 16)) >> 5;
            if (v21[168] == 255)
            {
              v17 += v24;
            }

            else
            {
              v16 += v24;
            }
          }
        }

        ++v18;
      }

      while (v18 != v19);
      v155 = *(this + 44);
    }

    v25 = gdc::ToCoordinateSystem(v147[320]);
    v26 = 128;
    if (v25)
    {
      v26 = 144;
    }

    v27 = *&v147[v26 + 8];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v153 = v27;
    if (v17 > (v155[8] - v155[7]) >> 3)
    {
      __asm { FMOV            V0.4S, #1.0 }

      operator new();
    }

    if (v16 > (v155[11] - v155[10]) >> 3)
    {
      operator new();
    }

    v33 = md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    v34 = md::LayoutContext::cameraType(a2);
    v35 = *(v33 + 888);
    v179 = *(v33 + 872);
    v180 = v35;
    v36 = *(v33 + 920);
    v181 = *(v33 + 904);
    v182 = v36;
    v37 = *(v33 + 824);
    v175 = *(v33 + 808);
    v176 = v37;
    v38 = *(v33 + 856);
    v177 = *(v33 + 840);
    v178 = v38;
    v39 = *(this + 34);
    v141 = *(this + 35);
    if (v39 != v141)
    {
      v40 = v34;
      do
      {
        v145 = v39;
        v41 = *v39;
        if (!v184 || (std::function<BOOL ()(HillshadeRenderable const*)>::operator()(v184, *v39) & 1) != 0)
        {
          v42 = *(v41 + 392);
          v43 = grl::IconMetricsRenderResult::getFillRect(v42);
          v44 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::find<gdc::LayerDataRequestKey>(*v143 + 1, v43);
          if (v44)
          {
            v45 = *(v44 + 16);
            v150 = *(v44 + 17);
            if (v150 != v45)
            {
              v146 = v41;
              do
              {
                v46 = *(this + 44);
                if (*(*(v41 + 392) + 168) != 255)
                {
                  v47 = v46[15];
                  v48 = v155[10];
                  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v158, *(*(**(v48 + 8 * v47) + 136) + 32));
                  v49 = (*(**(v41 + 392) + 32))(*(v41 + 392));
                  v50 = 0;
                  v51 = v159 + 32;
                  do
                  {
                    *(v51 + v50) = *(v49 + v50);
                    v50 += 4;
                  }

                  while (v50 != 12);
                  v52 = (*(**(v41 + 392) + 32))(*(v41 + 392));
                  v53 = 0;
                  v54 = v159 + 48;
                  do
                  {
                    *(v54 + v53) = *(v52 + 12 + v53);
                    v53 += 4;
                  }

                  while (v53 != 12);
                  *(*(v48 + 8 * v47) + 32) = **(this + 44);
                  *(*(v48 + 8 * v47) + 40) = **(v48 + 8 * v47);
                  v55 = *(v48 + 8 * v47);
                  *(v55 + 56) = 0;
                  *(v55 + 48) = v148 + *(v42 + 169);
                  v168 = 0u;
                  v167 = 0u;
                  v170 = 0u;
                  v171 = 0u;
                  v173 = 0u;
                  *v174 = 0u;
                  v166 = 1.0;
                  v169 = 1.0;
                  v172 = 1.0;
                  *&v174[16] = 0x3FF0000000000000;
                  md::GeometryContext::transformConstantData(0.0, 0.0, v160, v147, (v42 + 168), v40, -1);
                }

                v56 = v46[14];
                v57 = v155[7];
                *(*(v57 + 8 * v56) + 32) = *v46;
                *(*(v57 + 8 * v56) + 40) = **(v57 + 8 * v56);
                v58 = *(v57 + 8 * v56);
                *(v58 + 56) = 0;
                v59 = *(v42 + 169);
                *(v58 + 48) = v148 + v59;
                if (gdc::ToCoordinateSystem(v40))
                {
                  v60 = *(v42 + 176);
                  v61 = 1.0 / (1 << v59);
                  v62 = (1 << v59) + ~*(v42 + 172);
                  *&v162 = v61 * v60;
                  *(&v162 + 1) = v61 * v62;
                  *&v163 = v61 + v60 * v61;
                  *(&v163 + 1) = v61 + v62 * v61;
                  gdc::GlobeTileUtils::boundsFromMercatorRect(v160, &v162, 0.0, 0.0);
                  geo::OrientedBox<double,3u,double,double>::toMatrix(&v166, v160);
                  md::GeometryContext::transformConstantData(0.0, 0.0, &v162, v147, (v42 + 168), v40, -1);
                }

                v63 = 1 << *(v45 + 1);
                v64 = 1.0 / v63;
                v65 = v64 * *(v45 + 8);
                v66 = v64 * (v63 + ~*(v45 + 4));
                v167 = 0u;
                v168 = 0u;
                v170 = 0u;
                v171 = 0u;
                v166 = v64;
                v169 = v64;
                v172 = v64;
                *&v173 = 0;
                *(&v173 + 1) = v65;
                *v174 = v66;
                *&v174[8] = xmmword_1B33B0740;
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(*v58 + 136), *(*v58 + 232), v46[1], v46[2]);
                v27 = v153;
                v67 = 0;
                v68 = &v175;
                v41 = v146;
                do
                {
                  v69 = 0;
                  v70 = &v166;
                  do
                  {
                    v71 = 0;
                    v72 = 0.0;
                    v73 = v68;
                    do
                    {
                      v74 = *v73;
                      v73 += 4;
                      v72 = v72 + v70[v71++] * v74;
                    }

                    while (v71 != 4);
                    *(&v160[2 * v69++] + v67) = v72;
                    v70 += 4;
                  }

                  while (v69 != 4);
                  ++v67;
                  v68 = (v68 + 8);
                }

                while (v67 != 4);
                v75 = 0;
                v76 = v160;
                do
                {
                  v78 = *v76;
                  v77 = v76[1];
                  v76 += 2;
                  *(&v162 + v75) = vcvt_hight_f32_f64(vcvt_f32_f64(v78), v77);
                  v75 += 16;
                }

                while (v75 != 64);
                ggl::DataAccess<ggl::Tile::View>::DataAccess(v160, **(**(v57 + 8 * v56) + 136), 1);
                v79 = v161;
                *v161 = v162;
                v79[1] = v163;
                v79[2] = v164;
                v79[3] = v165;
                ggl::BufferMemory::~BufferMemory(v160);
                ggl::CommandBuffer::pushRenderItem(v152, (*(v57 + 8 * v56) + 8));
                ++*(*(this + 44) + 112);
                v45 += 32;
              }

              while (v45 != v150);
            }
          }
        }

        v39 = v145 + 1;
      }

      while (v145 + 1 != v141);
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v27);
    }
  }

LABEL_59:
  std::__function::__value_func<BOOL ()(HillshadeRenderable const*)>::~__value_func[abi:nn200100](v183);
  v80 = *(this + 34);
  v154 = *(this + 35);
  if (v80 != v154)
  {
    v81 = fmaxf(*(v144 + 3080) + *(v144 + 3076), 1.0);
    v82 = v81;
    if (v81 >= 0x17)
    {
      v82 = 23;
    }

    v151 = v82;
    v83 = fminf(v81, 23.0);
    v149 = vdupq_n_s32(0x37800080u);
    while (1)
    {
      while (1)
      {
        v84 = *v80;
        v85 = *(*v80 + 392);
        v86 = *(v85 + 744);
        v87 = *(v85 + 752);
        if (v87)
        {
          atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v87);
        }

        if (v86)
        {
          break;
        }

        v80 += 8;
        if (v80 == v154)
        {
          return;
        }
      }

      v88 = gdc::ToCoordinateSystem(*(v144 + 3784));
      v89 = *(this + 360);
      if (v89 == 1)
      {
        v156 = (*(v85 + 169) + *(this + 376));
      }

      else
      {
        v156 = 0;
      }

      v91 = v84[28];
      v90 = v84[29];
      if (v90)
      {
        atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v92 = v84[30];
      v93 = v84[31];
      if (v93)
      {
        atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v94 = *(*(this + 48) + 56);
      v95 = v94[1];
      if (v95 == *v94)
      {
        v97 = v94[11];
        if (!v97)
        {
          goto LABEL_135;
        }

        *&v96 = COERCE_DOUBLE((*(*v97 + 48))(v97));
        v166 = *&v96;
      }

      else
      {
        v96 = *(v95 - 8);
        v166 = *&v96;
        v94[1] = v95 - 8;
      }

      std::vector<ggl::Hillshade::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Hillshade::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v94 + 4), &v166);
      *&v175 = v96;
      v98 = v94[15];
      if (!v98)
      {
LABEL_135:
        std::__throw_bad_function_call[abi:nn200100]();
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      (*(*v98 + 48))(v98, &v175);
      v99 = 16;
      if (v88)
      {
        v99 = 32;
      }

      v100 = (*(this + 48) + v99);
      *&v175 = *v100;
      v101 = v100[1];
      *(&v175 + 1) = v101;
      if (v101)
      {
        atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
        ggl::PipelineSetup::setState(v96, &v175);
        std::__shared_weak_count::__release_shared[abi:nn200100](v101);
      }

      else
      {
        ggl::PipelineSetup::setState(v96, &v175);
      }

      v102 = *(v85 + 744);
      v103 = *(v85 + 752);
      if (v103)
      {
        atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
        **(v96 + 168) = v102;
        std::__shared_weak_count::__release_shared[abi:nn200100](v103);
      }

      else
      {
        **(v96 + 168) = v102;
      }

      v104 = *(v96 + 136);
      *v104 = v91;
      v104[1] = 0;
      v105 = *(v96 + 232);
      if (v90)
      {
        atomic_fetch_add_explicit(&v90->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v106 = v105[1];
      *v105 = v91;
      v105[1] = v90;
      if (v106)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v106);
      }

      v107 = *(v96 + 136);
      *(v107 + 16) = v92;
      *(v107 + 24) = 0;
      v108 = *(v96 + 232);
      if (v93)
      {
        atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v109 = *(v108 + 24);
      *(v108 + 16) = v92;
      *(v108 + 24) = v93;
      if (v109)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v109);
      }

      v110 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(*(this + 48) + 48));
      v111 = v110;
      v112 = 8;
      if (!v89)
      {
        v112 = 0;
      }

      *(v110 + 24) = *(*(this + 48) + v112);
      *(v110 + 32) = *&v96;
      v113 = gdc::ToCoordinateSystem(*(v142 + 320));
      v114 = 2;
      if (v113)
      {
        v114 = 4;
      }

      *(v111 + 64) = v142[v114];
      *(v111 + 16) = "hillshade";
      *(v111 + 40) = v156;
      v115 = *(*(v96 + 136) + 32);
      ggl::BufferMemory::BufferMemory(&v166);
      ggl::ResourceAccessor::accessConstantData(&v175, 0, v115, 1);
      ggl::BufferMemory::operator=(&v166, &v175);
      ggl::BufferMemory::~BufferMemory(&v175);
      v116 = *(v85 + 728);
      v117 = *(v85 + 736);
      if (v117)
      {
        atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v175, v116, v117);
      if (v117)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v117);
        std::__shared_weak_count::__release_shared[abi:nn200100](v117);
      }

      if ((v177 & 1) != 0 && gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(v175 + 24), 91, v151, 2u, 0))
      {
        break;
      }

      v134 = 1;
LABEL_117:
      if (v177 == 1)
      {
        (*(*v175 + 56))(v175);
      }

      if (*(&v176 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v176 + 1));
      }

      if (*(&v175 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v175 + 1));
      }

      ggl::BufferMemory::~BufferMemory(&v166);
      if (v93)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v93);
      }

      if (v90)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v90);
      }

      v80 += 8;
      if (v80 == v154)
      {
        v137 = 1;
      }

      else
      {
        v137 = v134;
      }

      if (v137)
      {
        return;
      }
    }

    v118 = *(v175 + 24);
    v119 = *v118;
    if (!*v118 || (v120 = *v119, LODWORD(v119) = *v119 == 1.0, *(v118 + 10) != 1) || v120 == 0.0 || v120 == 1.0)
    {
      v121 = *(v118 + v119 + 11);
      if (v121 != 2)
      {
        gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(*(v175 + 24), 194, v121, 0, v83);
        _S9 = v122;
LABEL_112:
        gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v160, v118, 438, v151, 2u, 0);
        v124 = *&v160[0];
        gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v160, *(v175 + 24), 92, v151, 2u, 0);
        v125 = *&v160[0];
        v126 = +[VKDebugSettings sharedSettings];
        v127 = [v126 enableDebugSettingForHillShade];

        if (v127)
        {
          v128 = +[VKDebugSettings sharedSettings];
          [v128 hillshadeOpacity];
          _S9 = v129;

          v130 = +[VKDebugSettings sharedSettings];
          [v130 hillshadeBlendMode];
          v132 = v131;

          v133 = vcvtms_u32_f32(v132);
        }

        else
        {
          v133 = 11;
        }

        v135 = *&v169;
        __asm { FCVT            H2, S9 }

        *(*&v169 + 32) = _H2;
        *v135 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v124)), v149);
        v135[1] = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v125)), v149);
        v135[2].i32[1] = v133;
        *&v160[0] = v111;
        std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v152 + 72), v160);
        v134 = 0;
        goto LABEL_117;
      }

      v120 = 0.0;
    }

    LOBYTE(v160[0]) = 1;
    LOBYTE(v162) = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v118, 194, 0, v160, v83);
    v139 = v138;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v118, 194, 1, &v162, v83);
    _S9 = v139 + ((v140 - v139) * v120);
    goto LABEL_112;
  }
}

void sub_1B303B650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (LOBYTE(STACK[0x260]) == 1)
  {
    (*(*STACK[0x240] + 56))();
  }

  if (STACK[0x258])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x258]);
  }

  if (STACK[0x248])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x248]);
  }

  ggl::BufferMemory::~BufferMemory(&a65);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v66);
  }

  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v65);
  }

  _Unwind_Resume(a1);
}

ggl::zone_mallocator *std::vector<ggl::Hillshade::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Hillshade::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Hillshade::Pos2DUVPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Hillshade::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Hillshade::Pos2DUVPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Hillshade::Pos2DUVPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Hillshade::Pos2DUVPipelineSetup *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void ggl::ConstantDataTyped<ggl::Hillshade::HillshadeStyle>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Hillshade::HillshadeStyle>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A27810;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Hillshade::Pos2DUVPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A27748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RasterTileResourceDecoder::decode(uint64_t a1@<X2>, void *a2@<X8>)
{
  if (*(a1 + 112))
  {
    v3 = *a1;
    if (!gdc::DataObject::empty(*a1))
    {
      if (gdc::DataObject::length(v3) == 4)
      {
        gdc::DataObject::bytes(v3);
        operator new();
      }

      v4 = v3[2];
      v5 = md::LabelExternalPointFeature::incident(v4);
      v6 = CGImageSourceCreateWithData(v5, 0);

      if (v6)
      {
        if (CGImageSourceGetCount(v6))
        {
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, 0);
          CFRelease(v6);
          if (ImageAtIndex)
          {
            CGImageGetWidth(ImageAtIndex);
            CGImageGetHeight(ImageAtIndex);
            operator new();
          }
        }

        else
        {
          CFRelease(v6);
        }
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
}

uint64_t _colorSpace(int a1)
{
  if (a1)
  {
    if (_colorSpace(BOOL)::onceTokenSRGB != -1)
    {
      dispatch_once(&_colorSpace(BOOL)::onceTokenSRGB, &__block_literal_global_23408);
    }

    v1 = &_colorSpace(BOOL)::colorspaceSRGB;
  }

  else
  {
    if (_colorSpace(BOOL)::onceTokenLinear != -1)
    {
      dispatch_once(&_colorSpace(BOOL)::onceTokenLinear, &__block_literal_global_5_23409);
    }

    v1 = &_colorSpace(BOOL)::colorspaceLinear;
  }

  return *v1;
}

CGColorSpaceRef ___ZL11_colorSpaceb_block_invoke_2()
{
  result = CGColorSpaceCreateDeviceRGB();
  _colorSpace(BOOL)::colorspaceLinear = result;
  return result;
}

CGColorSpaceRef ___ZL11_colorSpaceb_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  _colorSpace(BOOL)::colorspaceSRGB = result;
  return result;
}

CFDictionaryRef ___ZL19_imageSourceOptionsv_block_invoke()
{
  keys[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696E0E8];
  keys[0] = *MEMORY[0x1E696E0A8];
  keys[1] = v0;
  keys[2] = *MEMORY[0x1E696E118];
  v1 = *MEMORY[0x1E695E4D0];
  values[0] = *MEMORY[0x1E695E4C0];
  values[1] = v1;
  values[2] = @"public.png";
  result = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  _imageSourceOptions(void)::options = result;
  return result;
}

void sub_1B303CA4C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1B303CDDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::TextureData2D,geo::allocator_adapter<ggl::TextureData2D,mdm::zone_mallocator>>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::__shared_ptr_emplace<ggl::TextureData2D,geo::allocator_adapter<ggl::TextureData2D,mdm::zone_mallocator>>::__on_zero_shared_weak(mdm::zone_mallocator *a1)
{
  v2 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<ggl::TextureData2D,geo::allocator_adapter<ggl::TextureData2D,mdm::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::TextureData2D,geo::allocator_adapter<ggl::TextureData2D,mdm::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A27948;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B303D024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_1B303D1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1B303D318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void md::ImageLabelPart::populateDebugNode(md::ImageLabelPart *this, gdc::DebugTreeNode *a2)
{
  std::string::basic_string[abi:nn200100]<0>(&v20, "ImageLabelPart");
  v4 = gdc::DebugTreeNode::createChildNode(a2, &v20);
  if (v21 < 0)
  {
    operator delete(v20);
  }

  std::string::basic_string[abi:nn200100]<0>(&v20, "Alpha");
  gdc::DebugTreeValue::DebugTreeValue(v17, *(this + 138));
  gdc::DebugTreeNode::addProperty(v4, &v20, v17);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  std::string::basic_string[abi:nn200100]<0>(&v20, "Brightness");
  gdc::DebugTreeValue::DebugTreeValue(v14, *(this + 149));
  gdc::DebugTreeNode::addProperty(v4, &v20, v14);
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  std::string::basic_string[abi:nn200100]<0>(&v20, "Saturation");
  gdc::DebugTreeValue::DebugTreeValue(v11, *(this + 151));
  gdc::DebugTreeNode::addProperty(v4, &v20, v11);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  std::string::basic_string[abi:nn200100]<0>(&v20, "Padding");
  gdc::DebugTreeValue::DebugTreeValue(v8, *(this + 155));
  gdc::DebugTreeNode::addProperty(v4, &v20, v8);
  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  std::string::basic_string[abi:nn200100]<0>(&v20, "Layer");
  gdc::DebugTreeValue::DebugTreeValue(v5, *(this + 594));
  gdc::DebugTreeNode::addProperty(v4, &v20, v5);
  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }
}

uint64_t md::ImageLabelPart::debugString@<X0>(md::ImageLabelPart *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v10);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, "Icon:", 5);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " layer=", 7);
  MEMORY[0x1B8C61C80](&v10, *(this + 594));
  v4 = v10;
  *(&v10 + *(v10 - 24) + 8) = *(&v10 + *(v10 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v12[0].__locale_ + *(v4 - 24)) = 1;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " alpha=", 7);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " bright=", 8);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " sat=", 5);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " scale=", 7);
  std::ostream::operator<<();
  v5 = v10;
  *(&v10 + *(v10 - 24) + 8) = *(&v10 + *(v10 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v12[0].__locale_ + *(v5 - 24)) = 0;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " pad=", 5);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " opad=", 6);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " ovlp=", 6);
  MEMORY[0x1B8C61C50](&v10, *(this + 271));
  if (*(this + 272))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, " ovlpGroups=", 12);
    MEMORY[0x1B8C61C90](&v10, *(this + 272));
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v10, "\n", 1);
  if ((v17 & 0x10) != 0)
  {
    v7 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v7 = v13;
    }

    locale = v12[4].__locale_;
  }

  else
  {
    if ((v17 & 8) == 0)
    {
      v6 = 0;
      a2[23] = 0;
      goto LABEL_16;
    }

    locale = v12[1].__locale_;
    v7 = v12[3].__locale_;
  }

  v6 = v7 - locale;
  if ((v7 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  a2[23] = v6;
  if (v6)
  {
    memmove(a2, locale, v6);
  }

LABEL_16:
  a2[v6] = 0;
  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v18);
}

void sub_1B303DA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v27 + *(*MEMORY[0x1E69E54E8] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16GeocentricBoundsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::GeocentricBounds>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 36 * (v15 & 0x3F);
        v18 = *(v16 + ((v14 >> 3) & 0x1FF8)) + 36 * (v14 & 0x3F);
        *v25 = *v18;
        *&v25[16] = *(v18 + 16);
        v26 = *(v18 + 32);
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 4;
        }

        while (v13 != 12);
        v19 = 0;
        v20 = (v17 + 12);
        do
        {
          *(v18 + 12 + v19) = *(v20 + v19);
          v19 += 4;
        }

        while (v19 != 12);
        v21 = 0;
        v22 = v18 + 24;
        v23 = (v17 + 24);
        do
        {
          *(v22 + v21) = *(v23 + v21);
          v21 += 4;
        }

        while (v21 != 12);
        *v17 = *v25;
        *(v17 + 8) = *&v25[8];
        *v20 = *&v25[12];
        *(v17 + 20) = *&v25[20];
        *v23 = *&v25[24];
        *(v17 + 32) = v26;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  v24 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v24 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::GeocentricBounds,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A421C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::GeocentricBounds,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::GeocentricBounds,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A421E0;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::GeocentricBounds,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::GeocentricBounds,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::GeocentricBounds,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A421C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::GeocentricBounds,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20MeshRenderableBoundsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableBounds>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = 0;
        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
        v18 = *(v16 + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F);
        *v22 = *v18;
        *&v22[16] = *(v18 + 16);
        do
        {
          *(v18 + v13) = *(v17 + v13);
          v13 += 4;
        }

        while (v13 != 12);
        v19 = 0;
        v20 = v18 + 12;
        v21 = (v17 + 12);
        do
        {
          *(v20 + v19) = *(v21 + v19);
          v19 += 4;
        }

        while (v19 != 12);
        *v17 = *v22;
        *(v17 + 8) = *&v22[8];
        *v21 = *&v22[12];
        *(v17 + 20) = *&v22[20];
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>(void)::metadata) = *(v3 + 4096);
}