@interface VKMapImageCanvas
- (BOOL)_supportsDeferredCamera;
- (NSArray)overlays;
- (VKMapImageCanvas)initWithMapEngine:(void *)engine;
- (id).cxx_construct;
- (void)addOverlay:(id)overlay;
- (void)clearScene;
- (void)dealloc;
- (void)initWithMapEngine:;
- (void)resetCameraController;
- (void)setForceRasterizationForGlobe:(BOOL)globe;
- (void)setMapType:(int)type;
- (void)tileGroupDidChange;
- (void)updateOverlays;
- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context;
@end

@implementation VKMapImageCanvas

- (id).cxx_construct
{
  *(self + 17) = &unk_1F29FF438;
  *(self + 18) = 0;
  *(self + 20) = 0;
  *(self + 21) = 0;
  return self;
}

- (void)setForceRasterizationForGlobe:(BOOL)globe
{
  if (self->_forceRasterizationForGlobe != globe)
  {
    self->_forceRasterizationForGlobe = globe;
    md::OverlayContainer::belowOverlays(&v12, self->_overlayContainer.__ptr_);
    v4 = v12;
    v5 = v13;
    while (v4 != v5)
    {
      v6 = *(v4 + 8);
      [v6 setForceRasterizationForGlobe:self->_forceRasterizationForGlobe];

      v7 = *(v4 + 8);
      [v7 setNeedsDisplayForReason:2];

      v4 += 24;
    }

    v14 = &v12;
    std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v14);
    md::OverlayContainer::aboveOverlays(&v12, self->_overlayContainer.__ptr_);
    v8 = v12;
    v9 = v13;
    while (v8 != v9)
    {
      v10 = *(v8 + 8);
      [v10 setForceRasterizationForGlobe:self->_forceRasterizationForGlobe];

      v11 = *(v8 + 8);
      [v11 setNeedsDisplayForReason:2];

      v8 += 24;
    }

    v14 = &v12;
    std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v14);
  }
}

- (void)tileGroupDidChange
{
  mapEngine = self->_mapEngine;
  md::HomeQueueScheduler::waitForSynchronization(mapEngine[5920], "[VKMapImageCanvas tileGroupDidChange]");

  md::MapEngineSyncAccessor::configurationDidChange(mapEngine);
}

- (void)clearScene
{
  mapEngine = self->_mapEngine;
  md::HomeQueueScheduler::waitForSynchronization(mapEngine[5920], "[VKMapImageCanvas clearScene]");

  md::MapEngine::clearScene(mapEngine);
}

- (void)addOverlay:(id)overlay
{
  overlayCopy = overlay;
  md::OverlayContainer::addOverlay(self->_overlayContainer.__ptr_, overlayCopy);
  cntrl = self->_overlayContainer.__cntrl_;
  ptr = self->_overlayContainer.__ptr_;
  v7 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 2, 1uLL, memory_order_relaxed);
  }

  [(VKOverlay *)overlayCopy setStandardContainer:&ptr];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  [(VKOverlay *)overlayCopy setRunLoopController:self->super._runLoopController, ptr];
  [(VKOverlay *)overlayCopy setForceRasterizationForGlobe:self->_forceRasterizationForGlobe];
  [(VKMapImageCanvas *)self updateOverlays];
}

- (void)updateOverlays
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  md::OverlayContainer::computeTileExclusionAreas(self->_overlayContainer.__ptr_, &__p);
  v3 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->_mapEngine + 5241) + 16), 0x87BA2765F9E38E05);
  std::vector<md::TileExclusionArea>::__assign_with_size[abi:nn200100]<md::TileExclusionArea*,md::TileExclusionArea*>(v3[5] + 144, __p, v6, 0x8E38E38E38E38E39 * ((v6 - __p) >> 3));
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->_mapEngine + 5241) + 16), 0x87668FB4D087F775)[5] + 923) = 1;
  v4 = __p;
  if (__p)
  {

    operator delete(v4);
  }
}

- (void)setMapType:(int)type
{
  self->super._mapType = type;
  [(VKMapImageCanvas *)self resetCameraController];
  self->_forceRasterizationForGlobe = (type - 3) < 2;
}

- (void)resetCameraController
{
  v37 = *MEMORY[0x1E69E9840];
  if (self->super._mapType == 10)
  {
    v3 = [VKMuninCameraController alloc];
    mapEngine = self->_mapEngine;
    v5 = mapEngine[12];
    v33 = mapEngine[11];
    v34 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      mapEngine = self->_mapEngine;
    }

    v6 = mapEngine[5214];
    v7 = mapEngine[25];
    v8 = mapEngine[26];
    v9 = mapEngine[5239];
    md::LabelExternalPointFeature::incident(v9);
    objc_claimAutoreleasedReturnValue();
    v10 = *(self->_mapEngine + 5241);
    v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v10 + 16), 0x669A8EDAC04FCBF1uLL);
    if (v11)
    {
      v12 = v11[5];
    }

    else
    {
      v12 = 0;
    }

    v28 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v10 + 16), 0x17767EADC5B287BuLL);
    if (v28)
    {
      v29 = v28[5];
    }

    else
    {
      v29 = 0;
    }

    v30 = [(VKMuninCameraController *)v3 initWithTaskContext:&v33 mapDataAccess:v6 animationRunner:v7 runLoopController:v8 cameraDelegate:v9 muninSceneLogic:v12 elevationLogic:v29];
    v35 = &unk_1F2A20410;
    v36 = v30;
    v31 = v30;
    geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(&self->super._cameraController, &v35);
    v35 = &unk_1F2A20410;

    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    [(VKCameraController *)self->super._cameraController._obj setCanvas:self->super._displayTarget];
  }

  else
  {
    if ([(VKMapImageCanvas *)self _supportsDeferredCamera])
    {
      v13 = [VKDeferredCameraController alloc];
      v14 = self->_mapEngine;
      v15 = v14[5214];
      v16 = v14[25];
      v17 = v14[26];
      v18 = v14[5239];
      md::LabelExternalPointFeature::incident(v18);
      objc_claimAutoreleasedReturnValue();
      v19 = [(VKDeferredCameraController *)v13 initWithMapDataAccess:v15 animationRunner:v16 runLoopController:v17 cameraDelegate:v18 mapEngine:self->_mapEngine collisionMode:2];
    }

    else
    {
      v20 = [VKMapCameraController alloc];
      v21 = self->_mapEngine;
      v22 = v21[5214];
      v23 = v21[25];
      v24 = v21[26];
      v18 = v21[5239];
      md::LabelExternalPointFeature::incident(v18);
      objc_claimAutoreleasedReturnValue();
      v19 = [(VKMapCameraController *)v20 initWithMapDataAccess:v22 animationRunner:v23 runLoopController:v24 cameraDelegate:v18];
    }

    v25 = v19;

    [v25 setCanvas:self->super._displayTarget];
    [v25 setVkCamera:self->super._vkCamera._obj];
    v26 = *(self->_mapEngine + 2617);
    v32 = v26;
    if (*(&v26 + 1))
    {
      atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    [v25 setCamera:&v32];
    if (*(&v32 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v32 + 1));
    }

    [v25 setMapEngine:self->_mapEngine];
    v27 = v25;
    v35 = &unk_1F2A20410;
    v36 = v27;
    geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(&self->super._cameraController, &v35);
    v35 = &unk_1F2A20410;
  }
}

- (BOOL)_supportsDeferredCamera
{
  {
    [VKMapImageCanvas _supportsDeferredCamera]::$_2::operator() const(void)::cached_result = GEOConfigGetBOOL();
  }

  if ([VKMapImageCanvas _supportsDeferredCamera]::$_2::operator() const(void)::cached_result == 1)
  {
    v3 = self->super._mapType - 1;
    if (v3 >= 7 || ((0x4Fu >> v3) & 1) == 0)
    {
      v4 = *(self->_mapEngine + 5242);
      v5 = *v4;
      v6 = v4[1];
      while (v5 != v6)
      {
        if (*v5 == 21)
        {
          if (v5 == v6)
          {
            return 0;
          }

          return *(v5 + 8) != 0;
        }

        v5 += 16;
      }
    }
  }

  return 0;
}

- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context
{
  v19 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VKMapImageCanvas;
  [VKImageCanvas updateWithTimestamp:sel_updateWithTimestamp_withContext_ withContext:?];
  [(VKCameraController *)self->super._cameraController._obj updateWithTimestamp:context withContext:timestamp];
  if ([(VKCameraController *)self->super._cameraController._obj shouldUpdateCameraWithVKCamera])
  {
    v7 = self->super._vkCamera._obj;
    v18 = 0;
    mapEngine = self->_mapEngine;
    if (mapEngine)
    {
      v9 = mapEngine[5253];
      if (v9)
      {
        if (*(v9 + 568) == 1)
        {
          std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](v15, v9 + 536);
        }

        else
        {
          v16 = 0;
        }

        std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::operator=[abi:nn200100](v17, v15);
        std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v15);
      }
    }

    cntrl = self->super._camera.__cntrl_;
    ptr = self->super._camera.__ptr_;
    v12 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](v14, v17);
    [(VKCamera *)v7 updateCamera:&ptr withAdjustment:v14];
    std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v14);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v17);
  }
}

- (void)dealloc
{
  [(VKCameraController *)self->super._cameraController._obj setCanvas:0];
  v3.receiver = self;
  v3.super_class = VKMapImageCanvas;
  [(VKMapImageCanvas *)&v3 dealloc];
}

- (NSArray)overlays
{
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  md::OverlayContainer::belowOverlays(&v15, self->_overlayContainer.__ptr_);
  v5 = v15;
  v4 = v16;
  md::OverlayContainer::aboveOverlays(v14, self->_overlayContainer.__ptr_);
  v6 = [v3 initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) - 0x5555555555555555 * (v14[1] - v14[0])];
  v17 = v14;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v17);
  v14[0] = &v15;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](v14);
  md::OverlayContainer::belowOverlays(&v15, self->_overlayContainer.__ptr_);
  v7 = v15;
  v8 = v16;
  while (v7 != v8)
  {
    v9 = *(v7 + 8);
    [v6 addObject:v9];

    v7 += 24;
  }

  v14[0] = &v15;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](v14);
  md::OverlayContainer::aboveOverlays(&v15, self->_overlayContainer.__ptr_);
  v10 = v15;
  v11 = v16;
  while (v10 != v11)
  {
    v12 = *(v10 + 8);
    [v6 addObject:v12];

    v10 += 24;
  }

  v14[0] = &v15;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](v14);

  return v6;
}

- (VKMapImageCanvas)initWithMapEngine:(void *)engine
{
  v31 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = VKMapImageCanvas;
  v4 = [(VKImageCanvas *)&v22 initWithMapEngine:?];
  v5 = v4;
  v6 = v4;
  if (v4)
  {
    v4->_mapEngine = engine;
    v7 = *(engine + 5213);
    p_overlayContainer = &v4->_overlayContainer;
    v10 = *(v7 + 272);
    v9 = *(v7 + 280);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_overlayContainer.__cntrl_;
    p_overlayContainer->__ptr_ = v10;
    v5->_overlayContainer.__cntrl_ = v9;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    [(VKMapImageCanvas *)v6 resetCameraController];
    v12 = [VKManifestTileGroupObserverProxy alloc];
    mapEngine = v6->_mapEngine;
    v14 = *(mapEngine + 11);
    v15 = *(mapEngine + 12);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = [(VKManifestTileGroupObserverProxy *)v12 initWithQueue:*v14];
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    v17 = v16;
    location = &unk_1F29FF438;
    v30 = v17;
    objc_storeStrong(&v5->_manifestTileGroupObserverProxy._obj, v16);
    v18 = v30;
    v30 = 0;

    location = &unk_1F29FF438;
    objc_initWeak(&location, v6);
    objc_copyWeak(&to, &location);
    v28 = 0;
    v26 = &unk_1F29FF458;
    objc_moveWeak(&v27, &to);
    v28 = &v26;
    objc_destroyWeak(&to);
    [(VKManifestTileGroupObserverProxy *)v17 setDidChangeActiveTileGroup:&v26];
    std::__function::__value_func<void ()(GEOResourceManifestManager *,GEOActiveTileGroup *,GEOActiveTileGroup *)>::~__value_func[abi:nn200100](&v26);
    objc_copyWeak(&v20, &location);
    v25 = 0;
    v23 = &unk_1F29FF4A0;
    objc_moveWeak(&v24, &v20);
    v25 = &v23;
    objc_destroyWeak(&v20);
    [(VKManifestTileGroupObserverProxy *)v17 setExperimentConfigurationDidChange:&v23];
    std::__function::__value_func<void ()(GEOExperimentConfiguration *)>::~__value_func[abi:nn200100](&v23);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)initWithMapEngine:
{
  objc_destroyWeak((self + 8));

  JUMPOUT(0x1B8C62190);
}

@end