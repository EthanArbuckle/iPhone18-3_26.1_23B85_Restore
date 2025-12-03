@interface VKMapCanvas
+ (BOOL)supportsMapType:(int)type scale:(int)scale;
- ($F24F406B2B787EFB06265DBA3D28CBD5)convertPointToCoordinate:(CGPoint)coordinate;
- ($F24F406B2B787EFB06265DBA3D28CBD5)convertPointToMapPoint:(CGPoint)point;
- (BOOL)_isGlobeActive;
- (CGPoint)convertCoordinateToPoint:(id)point;
- (CGPoint)convertMapPointToPoint:(id)point;
- (NSArray)overlays;
- (NSArray)visibleTileSets;
- (VKInteractiveMapDelegate)delegate;
- (VKMapCanvas)initWithMapEngine:(void *)engine inBackground:(BOOL)background;
- (VKPuckAnimator)puckAnimator;
- (__n128)visibleTileSets;
- (id).cxx_construct;
- (id)annotationCoordinateTest;
- (id)annotationRectTest;
- (id)attributionsForCurrentRegion;
- (id)consoleString:(BOOL)string;
- (id)detailedDescription;
- (id)globeAnnotationCoordinateTest;
- (id)globeAnnotationRectTest;
- (id)markerAtScreenPoint:(CGPoint)point enableExtendedFeatureMarkers:(BOOL)markers;
- (optional<float>)_zoomLevelForCanvasSize:(CGSize)size;
- (uint64_t)observeValueForKeyPath:ofObject:change:context:;
- (void)addOverlay:(id)overlay;
- (void)dealloc;
- (void)debugHighlightObjectAtPoint:(CGPoint)point highlightTarget:(unsigned __int8)target;
- (void)didBecomeActive;
- (void)didBecomeInActive;
- (void)goToTileX:(int)x Y:(int)y Z:(int)z tileSize:(int)size;
- (void)insertOverlay:(id)overlay aboveOverlay:(id)aboveOverlay;
- (void)insertOverlay:(id)overlay belowOverlay:(id)belowOverlay;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)observeValueForKeyPath:ofObject:change:context:;
- (void)populateDebugNode:(void *)node withOptions:(const void *)options;
- (void)removeOverlay:(id)overlay;
- (void)setCameraHorizontalOffset:(double)offset duration:(double)duration timingFunction:(id)function;
- (void)setCanonicalSkyHeight:(double)height;
- (void)setForceRasterizationForGlobe:(BOOL)globe;
- (void)setMapType:(int)type animated:(BOOL)animated;
- (void)transferStateFromCanvas:(id)canvas;
- (void)transitionToTracking:(BOOL)tracking mapMode:(int64_t)mode startLocation:(id)location startCourse:(double)course cameraController:(id)controller pounceCompletionHandler:(id)handler;
- (void)updateCameraForFrameResize;
- (void)updateOverlays;
- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context;
- (void)visibleTileSets;
@end

@implementation VKMapCanvas

- (id).cxx_construct
{
  *(self + 688) = 0;
  *(self + 692) = 0;
  *(self + 89) = 0;
  *(self + 90) = 0;
  return self;
}

- (void)updateCameraForFrameResize
{
  v40 = *MEMORY[0x1E69E9840];
  [(MDRenderTarget *)self->super._displayTarget size];
  v4 = v3;
  v6 = v5;
  width = self->_lastCanvasSize.width;
  height = self->_lastCanvasSize.height;
  if (width != v4 || height != v6)
  {
    if (width <= 0.0)
    {
      if (v4 <= 0.0 || v6 <= 0.0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v4 <= 0.0 || v6 <= 0.0)
      {
        if (height > 0.0)
        {
          v15 = [(VKMapCanvas *)self _zoomLevelForCanvasSize:?];
          self->_lastValidCanvasSizeZoomLevel.__engaged_ = v15.__engaged_;
          self->_lastValidCanvasSizeZoomLevel.var0.__val_ = v15.var0.__val_;
        }

        goto LABEL_25;
      }

      if (height > 0.0)
      {
        v10 = [(VKMapCanvas *)self _zoomLevelForCanvasSize:?];
        val = v10.var0.__val_;
        v12 = HIDWORD(*&v10);
        if (!v10.__engaged_)
        {
          goto LABEL_25;
        }

LABEL_13:
        cameraDelegate = [(VKCameraController *)self->super._cameraController cameraDelegate];
        v14 = cameraDelegate;
        if (cameraDelegate)
        {
          [cameraDelegate willBeginRegionChangeAccess:0];
        }

        else
        {
          memset(v39, 0, sizeof(v39));
        }

        v16 = v4 * 0.001953125;
        v17 = log2f(v16);
        [(VKCamera *)self->super._vkCamera._obj depthForViewWidth:exp2((v17 - val))];
        v19 = v18;
        v20 = self->super._vkCamera._obj;
        footprint = [(VKCamera *)v20 footprint];
        [footprint maxDepth];
        v23 = v22;

        v24 = self->super._vkCamera._obj;
        v25 = v24;
        if (v24)
        {
          [(VKCamera *)v24 groundPointFromScreenPoint:0.5, 0.5];
        }

        else
        {
          v37 = 0u;
          v38 = 0u;
        }

        if (BYTE8(v38) == 1)
        {
          v26 = self->super._vkCamera._obj;
          position = [(VKCamera *)v26 position];
          v28 = *position;
          v29 = position[1];
          v30 = position[2];

          if ((BYTE8(v38) & 1) == 0)
          {
            v34 = std::__throw_bad_optional_access[abi:nn200100]();
            gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v39);
            _Unwind_Resume(v34);
          }

          v36[0] = gm::lerp<gm::Matrix<double,3,1>,double>(v28, v29, v30, *&v37, *(&v37 + 1), *&v38, 1.0 - v19 / v23);
          v36[1] = v31;
          v36[2] = v32;
          [(VKCamera *)self->super._vkCamera._obj setPosition:v36];
        }

        [(VKCameraController *)self->super._cameraController updateCameraToPositionOrientationLimits];
        cameraDelegate2 = [(VKCameraController *)self->super._cameraController cameraDelegate];
        [cameraDelegate2 didEndRegionChangeAccess:v39];

        self->_lastValidCanvasSizeZoomLevel.var0.__val_ = val;
        self->_lastValidCanvasSizeZoomLevel.__engaged_ = v12;
        gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v39);
        goto LABEL_25;
      }
    }

    LODWORD(v12) = self->_lastValidCanvasSizeZoomLevel.__engaged_;
    if (v12 == 1)
    {
      val = self->_lastValidCanvasSizeZoomLevel.var0.__val_;
      goto LABEL_13;
    }

LABEL_25:
    self->_lastCanvasSize.width = v4;
    self->_lastCanvasSize.height = v6;
    v35.receiver = self;
    v35.super_class = VKMapCanvas;
    [(VKScreenCanvas *)&v35 updateCameraForFrameResize];
    [(VKMapCanvas *)self setCanonicalSkyHeight:self->_canonicalSkyHeight];
  }
}

- (id)annotationRectTest
{
  if ([(VKMapCanvas *)self _isGlobeActive])
  {
    [(VKMapCanvas *)self globeAnnotationRectTest];
  }

  else
  {
    [(VKCamera *)self->super._vkCamera._obj annotationRectTest];
  }
  v3 = ;

  return v3;
}

- (BOOL)_isGlobeActive
{
  mapEngine = self->super._mapEngine;
  if (mapEngine)
  {
    v3 = mapEngine[5242];
    v4 = *v3;
    v5 = v3[1];
    if (v4 == v5)
    {
      goto LABEL_12;
    }

    v6 = v4;
    while (*v6 != 20)
    {
      v6 += 16;
      if (v6 == v5)
      {
        goto LABEL_12;
      }
    }

    if (v6 != v5 && (*(v6 + 8) - 3) < 2)
    {
      return 1;
    }

LABEL_12:
    while (v4 != v5)
    {
      if (*v4 == 22)
      {
        if (v4 == v5)
        {
          return 0;
        }

        return *(v4 + 8) != 0;
      }

      v4 += 16;
    }
  }

  return 0;
}

- (id)globeAnnotationRectTest
{
  v2 = [&__block_literal_global_1296 copy];

  return v2;
}

- (id)annotationCoordinateTest
{
  if ([(VKMapCanvas *)self _isGlobeActive])
  {
    [(VKMapCanvas *)self globeAnnotationCoordinateTest];
  }

  else
  {
    [(VKCamera *)self->super._vkCamera._obj annotationCoordinateTest];
  }
  v3 = ;

  return v3;
}

- (VKPuckAnimator)puckAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_puckAnimator);

  return WeakRetained;
}

- (VKInteractiveMapDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
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

- (void)didBecomeInActive
{
  cameraController = self->super._cameraController;
  v3 = 0;
  v4 = 0;
  [(VKCameraController *)cameraController setCamera:&v3];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

- (void)didBecomeActive
{
  cameraController = self->super._cameraController;
  ptr = self->super._camera.__ptr_;
  cntrl = self->super._camera.__cntrl_;
  v6 = ptr;
  v7 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  [(VKCameraController *)cameraController setCamera:&v6];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

- (void)populateDebugNode:(void *)node withOptions:(const void *)options
{
  v8[3] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(v8, "Last Canvas Size");
  gdc::DebugTreeValue::DebugTreeValue(v6, self->_lastCanvasSize.width);
  gdc::DebugTreeValue::DebugTreeValue(&v7, self->_lastCanvasSize.height);
  memset(v5, 0, sizeof(v5));
  std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(v5, v6, v8, 2uLL);
}

- (void)setCanonicalSkyHeight:(double)height
{
  self->_canonicalSkyHeight = height;
  [(MDRenderTarget *)self->super._displayTarget size];
  if (v4 > 0.0)
  {
    v5 = v4;
    canonicalSkyHeight = self->_canonicalSkyHeight;
    cameraController = [(VKScreenCanvas *)self cameraController];
    vkCamera = [cameraController vkCamera];
    [vkCamera setFractionOfScreenAboveFarClipPlaneAtCanonicalPitch:canonicalSkyHeight / v5];
  }
}

- (void)setCameraHorizontalOffset:(double)offset duration:(double)duration timingFunction:(id)function
{
  functionCopy = function;
  [(VKAnimation *)self->_horizontalOffsetAnimation stop];
  if (duration <= 0.0 || functionCopy == 0)
  {
    [(MDRenderTarget *)self->super._displayTarget size];
    v10 = 0.0;
    if (v11 > 0.0)
    {
      [(MDRenderTarget *)self->super._displayTarget size];
      v10 = offset / v12;
    }

    [(VKCamera *)self->super._vkCamera._obj setHorizontalOffset:v10];
    gdc::Camera::setHorizontalOffset(self->super._camera.__ptr_, v10);
  }

  else
  {
    objc_initWeak(&location, self);
    v13 = [[VKTimedAnimation alloc] initWithDuration:duration];
    horizontalOffsetAnimation = self->_horizontalOffsetAnimation;
    self->_horizontalOffsetAnimation = v13;

    [(VKTimedAnimation *)self->_horizontalOffsetAnimation setTimingFunction:VKAnimationCurveLinear];
    v15 = self->super._vkCamera._obj;
    [(VKCamera *)v15 horizontalOffset];
    v17 = v16;
    [(MDRenderTarget *)self->super._displayTarget size];
    v19 = v18 * v17;

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65__VKMapCanvas_setCameraHorizontalOffset_duration_timingFunction___block_invoke;
    v21[3] = &unk_1E7B305F8;
    objc_copyWeak(v23, &location);
    v22 = functionCopy;
    v23[1] = *&v19;
    v23[2] = *&offset;
    [(VKTimedAnimation *)self->_horizontalOffsetAnimation setStepHandler:v21];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__VKMapCanvas_setCameraHorizontalOffset_duration_timingFunction___block_invoke_2;
    v20[3] = &unk_1E7B393B8;
    v20[4] = self;
    [(VKAnimation *)self->_horizontalOffsetAnimation setCompletionHandler:v20];
    [(VKScreenCanvas *)self runAnimation:self->_horizontalOffsetAnimation];

    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
  }
}

void __65__VKMapCanvas_setCameraHorizontalOffset_duration_timingFunction___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    *&v5 = a2;
    [*(a1 + 32) _solveForInput:v5];
    v7 = v6;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    [*(v12 + 13) size];
    v11 = (v8 + (v9 - v8) * v7) / v10;
    [*(v12 + 7) setHorizontalOffset:v11];
    gdc::Camera::setHorizontalOffset(*(v12 + 9), v11);
    WeakRetained = v12;
  }
}

void __65__VKMapCanvas_setCameraHorizontalOffset_duration_timingFunction___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 696);
  *(v1 + 696) = 0;
}

- (void)transitionToTracking:(BOOL)tracking mapMode:(int64_t)mode startLocation:(id)location startCourse:(double)course cameraController:(id)controller pounceCompletionHandler:(id)handler
{
  var1 = location.var1;
  var0 = location.var0;
  trackingCopy = tracking;
  controllerCopy = controller;
  handlerCopy = handler;
  if (mode == 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VKPounceWillStartNotification" object:self userInfo:0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(VKCameraController *)self->super._cameraController stopRegionAnimation];
  }

  [(VKScreenCanvas *)self setCameraController:controllerCopy];
  [controllerCopy setScreenCanvas:self];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __111__VKMapCanvas_transitionToTracking_mapMode_startLocation_startCourse_cameraController_pounceCompletionHandler___block_invoke;
  v19[3] = &unk_1E7B305D0;
  v18 = handlerCopy;
  v20 = v18;
  modeCopy = mode;
  v19[4] = self;
  [controllerCopy startWithPounce:trackingCopy startLocation:v19 startCourse:var0 pounceCompletionHandler:{var1, course}];
}

void __111__VKMapCanvas_transitionToTracking_mapMode_startLocation_startCourse_cameraController_pounceCompletionHandler___block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (a1[6] == 1)
  {
    v3 = dispatch_time(0, 4000000000);
    v4 = a1[4];
    v5 = **(v4 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111__VKMapCanvas_transitionToTracking_mapMode_startLocation_startCourse_cameraController_pounceCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7B3B9F8;
    block[4] = v4;
    dispatch_after(v3, v5, block);
  }
}

void __111__VKMapCanvas_transitionToTracking_mapMode_startLocation_startCourse_cameraController_pounceCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"VKPounceDidEndNotification" object:*(a1 + 32) userInfo:0];
}

- (id)markerAtScreenPoint:(CGPoint)point enableExtendedFeatureMarkers:(BOOL)markers
{
  markersCopy = markers;
  y = point.y;
  x = point.x;
  v43 = *MEMORY[0x1E69E9840];
  [(MDRenderTarget *)self->super._displayTarget size];
  v9 = v8;
  [(MDRenderTarget *)self->super._displayTarget size];
  v11 = v10;
  [(MDRenderTarget *)self->super._displayTarget size];
  v13 = v12;
  [(VKScreenCanvas *)self vkCamera];
  v14 = v42;
  v15 = v14;
  if (v14)
  {
    [(std::__shared_weak_count *)v14 groundPointFromScreenPoint:x / v9, (-1.0 - y + v11) / v13];
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41 = &unk_1F2A203A8;
  if ((BYTE8(v40) & 1) == 0)
  {
    mapEngine = 0;
    goto LABEL_35;
  }

  v16 = *(self->super._mapEngine + 5241);
  v17 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v16 + 16), 0x20A1ED17D78F322BuLL);
  v45.x = x;
  v45.y = y;
  md::LabelSettings_Markers::labelMarkerForSelectionAtPoint(&v41, v45, *(*(*(v17[5] + 144) + 16) + 24), 0);
  if (!v41)
  {
    v19 = *(*(*(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v16 + 16), 0x20A1ED17D78F322BuLL)[5] + 144) + 16) + 24);
    v20 = *(v19 + 476);
    *&v21 = x * v20;
    *&v20 = *(v19 + 1500) - y * v20;
    v35 = __PAIR64__(LODWORD(v20), v21);
    v22 = *(v19 + 216);
    v23 = dispatch_time(0, 500000000);
    v24 = dispatch_semaphore_wait(v22, v23);

    if (v24)
    {
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v25 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&dword_1B2754000, v25, OS_LOG_TYPE_ERROR, "Timeout waiting for bkgd layout to complete for selection", &v33, 2u);
      }

      v37 = 0;
      v38 = 0;
    }

    else
    {
      (*(**(v19 + 240) + 240))(&v37);
      dispatch_semaphore_signal(*(v19 + 216));
      if (v37)
      {
        mapEngine = [VKLineMarker markerWithLabelFeatureMarker:&v37];
LABEL_31:
        if (v38)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v38);
        }

        goto LABEL_33;
      }
    }

    if (!markersCopy || (mapEngine = self->super._mapEngine, md::HomeQueueScheduler::waitForSynchronization(*(mapEngine + 47360), "[VKMapCanvas markerAtScreenPoint:enableExtendedFeatureMarkers:]"), v26 = *(mapEngine + 41672), v27 = *(v26 + 40), v28 = *(v26 + 48), v27 == v28))
    {
LABEL_28:
      mapEngine = 0;
    }

    else
    {
      while (1)
      {
        v29 = *v27;
        if (*v27 && v29[32] == 1)
        {
          if ((BYTE8(v40) & 1) == 0)
          {
            v32 = std::__throw_bad_optional_access[abi:nn200100]();
            if (v38)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v38);
            }

            if (v42)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v42);
            }

            _Unwind_Resume(v32);
          }

          (*(*v29 + 88))(&v35);
          v30 = v35;
          if (v35)
          {
            v33 = v35;
            v34 = v36;
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            mapEngine = [VKMarker markerWithFeatureMarker:&v33];
            if (v34)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v34);
            }
          }

          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v36);
          }

          if (v30)
          {
            break;
          }
        }

        if (++v27 == v28)
        {
          goto LABEL_28;
        }
      }
    }

    goto LABEL_31;
  }

  mapEngine = [VKLabelMarker markerWithLabelMarker:&v41];
LABEL_33:
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

LABEL_35:

  return mapEngine;
}

- (void)debugHighlightObjectAtPoint:(CGPoint)point highlightTarget:(unsigned __int8)target
{
  v83 = *MEMORY[0x1E69E9840];
  if (target == 1)
  {
    y = point.y;
    x = point.x;
    mapEngine = self->super._mapEngine;
    md::HomeQueueScheduler::waitForSynchronization(mapEngine[5920], "[VKMapCanvas debugHighlightObjectAtPoint:highlightTarget:]");
    v7 = *(mapEngine[5209] + 5);
    if ((*(mapEngine[5209] + 6) - v7) >= 0xA0)
    {
      v8 = *(v7 + 152);
    }

    else
    {
      v8 = 0;
    }

    if (*(v8[47] + 296))
    {
      [*(v8[5] + 104) contentScale];
      v10 = v9;
      v11 = *(*(v8[5] + 96) + 41872);
      v12 = *(*(v8[5] + 96) + 41880);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = gdc::ToCoordinateSystem(*v11);
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }

      else
      {
        v13 = gdc::ToCoordinateSystem(*v11);
      }

      v14 = *(v8[47] + 292);
      v71 = 0;
      v72 = 0;
      v15 = v8[34];
      v66 = v8[35];
      if (v15 != v66)
      {
        v16 = v10;
        v17 = v16 * 22.0;
        v18 = y;
        v19 = v14 - (v18 * v16);
        v20 = x;
        v21 = v20 * v16;
        v65 = v8;
        while (1)
        {
          v67 = v15;
          v22 = *(*v15 + 392);
          v23 = v8[47] + 160;
          v73[0] = v22;
          v73[1] = v23;
          v74 = !v13;
          v80 = 0;
          v81 = 0;
          v82 = 0;
          md::HighlightHelper::tileToScreenPoints(v73, &md::HighlightHelper::hitTestTile(gm::Matrix<float,2,1>,float)const::tileCorners, 4uLL, &v80);
          v24 = v80;
          v25 = *(v80 + 1);
          *__p = *v80;
          v79 = v25;
          v75.i32[0] = gm::Box<float,2>::boxEnclosingPoints(__p, 4);
          v75.i32[1] = v26;
          v76 = v27;
          v77 = v28;
          __p[0] = __PAIR64__(LODWORD(v19), LODWORD(v21));
          *&__p[1] = v17;
          v29 = gm::Box<float,2>::intersects<int,void>(&v75, __p);
          v81 = v24;
          operator delete(v24);
          if (v29)
          {
            v30 = *(v22 + 896);
            v64 = v22;
            v31 = *(v22 + 904);
            if (v30 != v31)
            {
              v32 = 0;
              v33 = 0;
              v34 = 3.4028e38;
              v68 = *(v22 + 904);
              while (1)
              {
                v35 = *v30;
                if (*(*v30 + 20))
                {
                  v36 = 0;
                  v37 = 0;
                  v38 = v17 * v17;
                  do
                  {
                    v80 = 0;
                    v39 = geo::codec::transitLinkPoints(v35, v36, &v80);
                    if (v80)
                    {
                      __p[0] = 0;
                      __p[1] = 0;
                      *&v79 = 0;
                      md::HighlightHelper::tileToScreenPoints(v73, v39, v80, __p);
                      v75.i32[0] = 2139095039;
                      v40 = md::HighlightHelper::hitTest(__p[0], __p[1], &v75, v21, v19, v38);
                      if (v40)
                      {
                        v38 = v75.f32[0];
                      }

                      if (__p[0])
                      {
                        __p[1] = __p[0];
                        operator delete(__p[0]);
                      }

                      v37 |= v40;
                    }

                    ++v36;
                    v35 = *v30;
                  }

                  while (v36 < *(*v30 + 20));
                  if (v37)
                  {
                    break;
                  }
                }

                v52 = v32;
                v53 = v34;
LABEL_48:
                v30 += 248;
                v32 = v52;
                v34 = v53;
                if (v30 == v31)
                {
                  goto LABEL_61;
                }
              }

              v70 = v33;
              v41 = *(v30 + 56);
              v42 = *(v30 + 64);
              if (v41 == v42)
              {
                v49 = *(v30 + 244);
              }

              else
              {
                v69 = v32;
                v43 = 0;
                v44 = v17 * v17;
                do
                {
                  v45 = 0;
                  v80 = v41;
                  v81 = v41 + 40;
                  do
                  {
                    v46 = *((&v80)[v45] + 3);
                    if (v46 && *(v46 + 82) == 1)
                    {
                      __p[0] = 0;
                      __p[1] = 0;
                      *&v79 = 0;
                      md::HighlightHelper::tileToScreenPoints(v73, v46 + 16, 1uLL, __p);
                      v75.i32[0] = 2139095039;
                      v47 = md::HighlightHelper::hitTest(__p[0], __p[1], &v75, v21, v19, v44);
                      v48 = v47;
                      if (v47)
                      {
                        v44 = v75.f32[0];
                      }

                      if (__p[0])
                      {
                        __p[1] = __p[0];
                        operator delete(__p[0]);
                      }

                      v43 |= v48;
                    }

                    ++v45;
                  }

                  while (v45 != 2);
                  v41 += 96;
                }

                while (v41 != v42);
                v49 = *(v30 + 244);
                v32 = v69;
                if (v43)
                {
                  if (*(v30 + 244))
                  {
                    v50 = 5;
                  }

                  else
                  {
                    v50 = 4;
                  }

                  v33 = v70;
                  if (v50 > v70 || (v50 == v70 ? (v51 = v34 <= 3.4028e38) : (v51 = 1), !v51))
                  {
                    operator new();
                  }

LABEL_59:
                  v52 = v32;
                  v53 = v34;
                  v31 = v68;
                  goto LABEL_48;
                }
              }

              if (v49)
              {
                v54 = 2;
              }

              else
              {
                v54 = 3;
              }

              v33 = v70;
              if (v54 > v70 || (v54 == v70 ? (v55 = v38 < v34) : (v55 = 0), v55))
              {
                operator new();
              }

              goto LABEL_59;
            }

LABEL_61:
            for (i = *(v64 + 928); i != v64 + 920; i = *(i + 8))
            {
              v58 = i + 16;
              v57 = *(i + 16);
              if (v57[11])
              {
                v59 = 0;
                v60 = 0;
                v61 = v17 * v17;
                do
                {
                  v80 = 0;
                  Points = geo::codec::pBTransitStationTransferGetPoints(v57, v60, &v80);
                  if (Points && v80)
                  {
                    __p[0] = 0;
                    __p[1] = 0;
                    *&v79 = 0;
                    md::HighlightHelper::tileToScreenPoints(v73, Points, v80, __p);
                    v75.i32[0] = 2139095039;
                    v63 = md::HighlightHelper::hitTest(__p[0], __p[1], &v75, v21, v19, v61);
                    if (v63)
                    {
                      v61 = v75.f32[0];
                    }

                    if (__p[0])
                    {
                      __p[1] = __p[0];
                      operator delete(__p[0]);
                    }

                    v59 |= v63;
                  }

                  ++v60;
                  v57 = *v58;
                }

                while (v60 < *(*v58 + 88));
                if (v59)
                {
                  operator new();
                }
              }
            }
          }

          v8 = v65;
          v15 = v67 + 8;
          if (v67 + 8 == v66)
          {
            v72 = 0;
            break;
          }
        }
      }

      v71 = 0;
    }

    else
    {
      v71 = 0;
      v72 = 0;
    }

    md::TransitRenderLayer::setDebugHighlightedItem(v8, &v71);
  }
}

- (void)goToTileX:(int)x Y:(int)y Z:(int)z tileSize:(int)size
{
  v11 = (1 << z);
  [(MDRenderTarget *)self->super._displayTarget size];
  v13 = v12;
  v14 = 1.0 / v11 * 0.5;
  v19[0] = v14 + x * (1.0 / v11);
  v19[1] = v14 + (-1.0 - y + v11) * (1.0 / v11);
  [(VKCamera *)self->super._vkCamera._obj tanHalfHorizFOV];
  v16 = v15;
  v17 = log2(v13 / size);
  v19[2] = 0.5 / (v16 * exp2((z - v17)));
  memset(v18, 0, 24);
  v18[3] = 0x3FF0000000000000;
  [(VKCamera *)self->super._vkCamera._obj setOrientation:v18];
  [(VKCamera *)self->super._vkCamera._obj setPosition:v19];
}

- (id)globeAnnotationCoordinateTest
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__VKMapCanvas_globeAnnotationCoordinateTest__block_invoke;
  v4[3] = &unk_1E7B305A8;
  v4[4] = self;
  v2 = [v4 copy];

  return v2;
}

BOOL __44__VKMapCanvas_globeAnnotationCoordinateTest__block_invoke(uint64_t a1, double a2, double a3)
{
  v5 = *(*(a1 + 32) + 72);
  v6 = *grl::IconMetricsRenderResult::size(v5);
  v7 = gdc::Camera::pitch(v5);
  v8 = 6371008.77 / (v6 / cos(*v7) + 6371008.77);
  v9 = gdc::Camera::cameraFrame(v5);
  v10 = a2 * 0.0174532925;
  v11 = *v9;
  v12 = __sincos_stret(v10);
  v13 = __sincos_stret(v11);
  return v13.__sinval * v12.__sinval + v13.__cosval * v12.__cosval * cos(-(*(v9 + 8) - a3 * 0.0174532925)) > v8;
}

- (NSArray)overlays
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  md::OverlayContainer::belowOverlays(&v11, self->_overlayContainer.__ptr_);
  v4 = v11;
  v5 = v12;
  while (v4 != v5)
  {
    v6 = *(v4 + 8);
    [v3 addObject:v6];

    v4 += 24;
  }

  v13 = &v11;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v13);
  md::OverlayContainer::aboveOverlays(&v11, self->_overlayContainer.__ptr_);
  v7 = v11;
  v8 = v12;
  while (v7 != v8)
  {
    v9 = *(v7 + 8);
    [v3 addObject:v9];

    v7 += 24;
  }

  v13 = &v11;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v13);

  return v3;
}

- (void)insertOverlay:(id)overlay belowOverlay:(id)belowOverlay
{
  overlayCopy = overlay;
  belowOverlayCopy = belowOverlay;
  ptr = self->_overlayContainer.__ptr_;
  v9 = overlayCopy;
  v10 = belowOverlayCopy;
  v18 = v10;
  std::mutex::lock((ptr + 232));
  v11 = ptr + 24 * [v9 level];
  v12 = *(v11 + 20);
  v13 = *(v11 + 21);
  if (v12 != v13)
  {
    while ((geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(v12 + 8), &v18) & 1) == 0)
    {
      v12 += 24;
      if (v12 == v13)
      {
        v12 = v13;
        break;
      }
    }
  }

  md::OverlayContainer::_insertOverlay(ptr, v9, v12);
  std::mutex::unlock((ptr + 232));

  cntrl = self->_overlayContainer.__cntrl_;
  v16 = self->_overlayContainer.__ptr_;
  v17 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 2, 1uLL, memory_order_relaxed);
  }

  [v9 setStandardContainer:&v16];
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  [v9 setRunLoopController:self->super._runLoopController];
  [v9 setForceRasterizationForGlobe:self->_forceRasterizationForGlobe];
  [(VKMapCanvas *)self updateOverlays];
  var0 = self->super._runLoopController->var0;
  if (var0)
  {
    LOBYTE(v18) = 1;
    md::MapEngine::setNeedsTick(var0, &v18);
  }
}

- (void)insertOverlay:(id)overlay aboveOverlay:(id)aboveOverlay
{
  overlayCopy = overlay;
  aboveOverlayCopy = aboveOverlay;
  ptr = self->_overlayContainer.__ptr_;
  v9 = overlayCopy;
  v10 = aboveOverlayCopy;
  v20 = v10;
  std::mutex::lock((ptr + 232));
  v11 = ptr + 24 * [v9 level];
  v12 = *(v11 + 20);
  v13 = *(v11 + 21);
  v14 = v11 + 160;
  if (v12 != v13)
  {
    while ((geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(v12[1], &v20) & 1) == 0)
    {
      v12 += 3;
      if (v12 == v13)
      {
        v12 = v13;
        break;
      }
    }

    v13 = *(v14 + 1);
  }

  if (v12 == v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12 + 3;
  }

  md::OverlayContainer::_insertOverlay(ptr, v9, v15);
  std::mutex::unlock((ptr + 232));

  cntrl = self->_overlayContainer.__cntrl_;
  v18 = self->_overlayContainer.__ptr_;
  v19 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 2, 1uLL, memory_order_relaxed);
  }

  [v9 setStandardContainer:&v18];
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  [v9 setRunLoopController:self->super._runLoopController];
  [v9 setForceRasterizationForGlobe:self->_forceRasterizationForGlobe];
  [(VKMapCanvas *)self updateOverlays];
  var0 = self->super._runLoopController->var0;
  if (var0)
  {
    LOBYTE(v20) = 1;
    md::MapEngine::setNeedsTick(var0, &v20);
  }
}

- (void)removeOverlay:(id)overlay
{
  v35 = *MEMORY[0x1E69E9840];
  overlayCopy = overlay;
  ptr = self->_overlayContainer.__ptr_;
  v6 = overlayCopy;
  std::mutex::lock((ptr + 232));
  level = [v6 level];
  v8 = ptr + 24 * level;
  v9 = *(v8 + 20);
  v10 = *(v8 + 21);
  v11 = v8 + 160;
  if (v9 != v10)
  {
    while ((geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(v9 + 8), &v31) & 1) == 0)
    {
      v9 += 24;
      if (v9 == v10)
      {
        v9 = v10;
        break;
      }
    }

    v10 = *(v11 + 1);
  }

  if (v9 != v10)
  {
    if (v9 + 24 != v10)
    {
      do
      {
        v12 = v9;
        v9 += 24;
      }

      while (geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v12, v9) + 48 != v10);
      v10 = *(v11 + 1);
    }

    if (v10 != v9)
    {
      v13 = (v10 - 24);
      v14 = v13;
      v15 = v13;
      do
      {
        v16 = *v15;
        v15 -= 3;
        (*v16)(v14);
        v13 -= 3;
        v17 = v14 == v9;
        v14 = v15;
      }

      while (!v17);
    }

    *(v11 + 1) = v9;
  }

  v18 = *(ptr + 26);
  v19 = *(ptr + 27);
  if (v18 != v19)
  {
    while ((geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(v18 + 8), &v31) & 1) == 0)
    {
      v18 += 24;
      if (v18 == v19)
      {
        v18 = v19;
        break;
      }
    }

    v19 = *(ptr + 27);
  }

  if (v18 != v19)
  {
    if (v18 + 24 != v19)
    {
      do
      {
        v20 = v18;
        v18 += 24;
      }

      while (geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v20, v18) + 48 != v19);
      v19 = *(ptr + 27);
    }

    if (v19 != v18)
    {
      v21 = (v19 - 24);
      v22 = v21;
      v23 = v21;
      do
      {
        v24 = *v23;
        v23 -= 3;
        (*v24)(v22);
        v21 -= 3;
        v17 = v22 == v18;
        v22 = v23;
      }

      while (!v17);
    }

    *(ptr + 27) = v18;
    *(ptr + 344) = v18 != *(ptr + 26);
  }

  areResourcesRequired = [v6 areResourcesRequired];
  if (level <= 1 && *(ptr + 2 * level + areResourcesRequired))
  {
    v26 = v6;
    if (([v26 canProvideVectorData] & 1) == 0)
    {
      rasterTileProvider = [v26 rasterTileProvider];

      if (!rasterTileProvider)
      {
        [v26 customTileProvider];
      }
    }

    [v26 identifier];
    rasterTileProvider2 = [v26 rasterTileProvider];
    if (!rasterTileProvider2)
    {
      [v26 customTileProvider];
    }

    v34 = 0;
    operator new();
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__erase_unique<unsigned int>(ptr + 37, [v6 identifier]);
  *(ptr + 345) = 1;
  ++*(ptr + 87);
  std::mutex::unlock((ptr + 232));

  if (v6)
  {
    [v6 standardContainer];
    v29 = v33;
    v32 = 0;
    v33 = 0;
    if (v29)
    {
      std::__shared_weak_count::__release_weak(v29);
      if (v33)
      {
        std::__shared_weak_count::__release_weak(v33);
      }
    }
  }

  [v6 setRunLoopController:0];
  [(VKMapCanvas *)self updateOverlays];
  var0 = self->super._runLoopController->var0;
  if (var0)
  {
    LOBYTE(v32) = 1;
    md::MapEngine::setNeedsTick(var0, &v32);
  }
}

- (void)addOverlay:(id)overlay
{
  overlayCopy = overlay;
  md::OverlayContainer::addOverlay(self->_overlayContainer.__ptr_, overlayCopy);
  cntrl = self->_overlayContainer.__cntrl_;
  ptr = self->_overlayContainer.__ptr_;
  v8 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 2, 1uLL, memory_order_relaxed);
  }

  [(VKOverlay *)overlayCopy setStandardContainer:&ptr];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  [(VKOverlay *)overlayCopy setRunLoopController:self->super._runLoopController];
  [(VKOverlay *)overlayCopy setForceRasterizationForGlobe:self->_forceRasterizationForGlobe];
  [(VKMapCanvas *)self updateOverlays];
  var0 = self->super._runLoopController->var0;
  if (var0)
  {
    v9 = 1;
    md::MapEngine::setNeedsTick(var0, &v9);
  }
}

- (void)updateOverlays
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  md::OverlayContainer::computeTileExclusionAreas(self->_overlayContainer.__ptr_, &__p);
  v3 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(-[VKScreenCanvas mapEngine](self, "mapEngine") + 41928) + 16), 0x87BA2765F9E38E05);
  std::vector<md::TileExclusionArea>::__assign_with_size[abi:nn200100]<md::TileExclusionArea*,md::TileExclusionArea*>(v3[5] + 144, __p, v6, 0x8E38E38E38E38E39 * ((v6 - __p) >> 3));
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(-[VKScreenCanvas mapEngine](self, "mapEngine") + 41928) + 16), 0x87668FB4D087F775)[5] + 923) = 1;
  v4 = __p;
  if (__p)
  {

    operator delete(v4);
  }
}

- (CGPoint)convertCoordinateToPoint:(id)point
{
  var0 = point.var0;
  var1 = point.var1;
  if ([(VKCameraController *)self->super._cameraController usesVKCamera])
  {
    v4 = tan(var0 * 0.00872664626 + 0.785398163);
    v5 = log(v4);
    v6.f64[0] = var1;
    v6.f64[1] = v5;
    __asm { FMOV            V1.2D, #0.5 }

    v37 = vmlaq_f64(_Q1, xmmword_1B33B0700, v6);
    v38 = 0;
    [(VKCamera *)self->super._vkCamera._obj screenPointFromGroundPoint:&v37];
    v13 = v12;
    v15 = v14 * 0.5 + 0.5;
    [(MDRenderTarget *)self->super._displayTarget size];
    v17 = v16 * v15;
    [(MDRenderTarget *)self->super._displayTarget size];
    v19 = v18 * (0.5 - v13 * 0.5);
  }

  else
  {
    [(MDRenderTarget *)self->super._displayTarget size];
    v21 = v20;
    [(MDRenderTarget *)self->super._displayTarget size];
    v23 = v22 * v21;
    v17 = 0.0;
    v19 = 0.0;
    if (v23 > 0.0)
    {
      v24.f64[0] = var0;
      v24.f64[1] = var1;
      v37 = vmulq_f64(v24, vdupq_n_s64(0x3F91DF46A2529D39uLL));
      v38 = 0;
      v25 = *([(VKScreenCanvas *)self mapEngine]+ 41712);
      mapEngine = [(VKScreenCanvas *)self mapEngine];
      v27 = mapEngine + 5120;
      v28 = mapEngine[5234];
      v29 = v27[115];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = gdc::Camera::cameraFrame(v28);
      gdc::ViewDataAccess::screenPointForCoordinate(*(v25 + 16), &v37, v30);
      v17 = v31;
      v19 = v32;
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v29);
      }
    }
  }

  v33 = v17;
  v34 = v19;
  result.y = v34;
  result.x = v33;
  return result;
}

- (CGPoint)convertMapPointToPoint:(id)point
{
  var1 = point.var1;
  var0 = point.var0;
  if ([(VKCameraController *)self->super._cameraController usesVKCamera])
  {
    v6 = 1.0 - var1 / *(MEMORY[0x1E69A1690] + 8);
    v33 = var0 / *MEMORY[0x1E69A1690];
    v34 = v6;
    v35 = 0;
    v7 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>([(VKCamera *)self->super._vkCamera._obj scaledViewProjectionMatrix], &v33);
    v9 = v8;
    v10 = v7 * 0.5 + 0.5;
    [(MDRenderTarget *)self->super._displayTarget size];
    v12 = v10 * v11;
    [(MDRenderTarget *)self->super._displayTarget size];
    v14 = v13 * (0.5 - v9 * 0.5);
  }

  else
  {
    [(MDRenderTarget *)self->super._displayTarget size];
    v16 = v15;
    [(MDRenderTarget *)self->super._displayTarget size];
    v18 = v17 * v16;
    v12 = 0.0;
    v14 = 0.0;
    if (v18 > 0.0)
    {
      v19 = var0 * 6.28318531 / *MEMORY[0x1E69A1690];
      v20 = exp(3.14159265 - var1 * 6.28318531 / *(MEMORY[0x1E69A1690] + 8));
      v21 = atan(v20) * 2.0 + -1.57079633;
      v22 = fmod(v19, 6.28318531);
      v33 = v21;
      v34 = fmod(v22 + 6.28318531, 6.28318531) + -3.14159265;
      v35 = 0;
      v23 = *([(VKScreenCanvas *)self mapEngine]+ 41712);
      mapEngine = [(VKScreenCanvas *)self mapEngine];
      v25 = mapEngine + 5120;
      v26 = mapEngine[5234];
      v27 = v25[115];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = gdc::Camera::cameraFrame(v26);
      gdc::ViewDataAccess::screenPointForCoordinate(*(v23 + 16), &v33, v28);
      v12 = v29;
      v14 = v30;
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v27);
      }
    }
  }

  v31 = v12;
  v32 = v14;
  result.y = v32;
  result.x = v31;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)convertPointToCoordinate:(CGPoint)coordinate
{
  y = coordinate.y;
  x = coordinate.x;
  usesVKCamera = [(VKCameraController *)self->super._cameraController usesVKCamera];
  [(MDRenderTarget *)self->super._displayTarget size];
  if (usesVKCamera)
  {
    if (v5 <= 0.0)
    {
      goto LABEL_23;
    }

    [(MDRenderTarget *)self->super._displayTarget size];
    if (v6 <= 0.0)
    {
      goto LABEL_23;
    }

    [(MDRenderTarget *)self->super._displayTarget size];
    v8 = v7;
    [(MDRenderTarget *)self->super._displayTarget size];
    v10 = v9;
    v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->super._mapEngine + 5241) + 16), 0x17767EADC5B287BuLL);
    v12 = 0.0;
    if (v11)
    {
      v13 = v11[5];
      if (v13)
      {
        cameraController = self->super._cameraController;
        if (cameraController)
        {
          [(VKCameraController *)cameraController camera];
          if (*(&v60 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](*(&v60 + 1));
          }

          if (v60)
          {
            v15 = *(v13 + 248);
            v16 = self->super._cameraController;
            if (v16)
            {
              [(VKCameraController *)v16 camera];
              v17 = *(&v60 + 1);
              v16 = v60;
            }

            else
            {
              v17 = 0;
              v60 = 0uLL;
            }

            v46 = *gdc::Camera::cameraFrame(v16);
            v47 = cos(v46 + v46) * -559.82 + 111132.92;
            v48 = v47 + cos(v46 * 4.0) * 1.175;
            v49 = v48 + cos(v46 * 6.0) * -0.0023;
            v50 = v46 * 0.5;
            v51 = tan(v46 * 0.5 + 0.78103484);
            v52 = log(v51);
            v53 = tan(v50 + 0.789761487);
            v54 = fabs((log(v53) - v52) * 0.159154943) * v15;
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v17);
            }

            v12 = v54 / v49;
          }
        }
      }
    }

    v55 = self->super._vkCamera._obj;
    v56 = v55;
    if (v55)
    {
      [(VKCamera *)v55 groundPointFromScreenPoint:x / v8 atGroundLevel:1.0 - y / v10, -v12];
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    if (BYTE8(v61) == 1)
    {
      v39 = *(&v60 + 1);
      v38 = *&v60;
    }

    else
    {
LABEL_23:
      v34 = self->super._vkCamera._obj;
      position = [(VKCamera *)v34 position];
      v36 = self->super._vkCamera._obj;
      position2 = [(VKCamera *)v36 position];
      [(VKCamera *)self->super._vkCamera._obj position];
      v38 = *position;
      v39 = *(position2 + 8);
    }

    v40 = exp(v39 * 6.28318531 + -3.14159265);
    v41 = atan(v40);
    v42 = fmod(v38 * 6.28318531, 6.28318531);
    v43 = fmod(v42 + 6.28318531, 6.28318531) * 57.2957795 + -180.0;
    v44 = v41 * 114.591559 + -90.0;
  }

  else
  {
    if (v5 <= 0.0)
    {
      goto LABEL_21;
    }

    [(MDRenderTarget *)self->super._displayTarget size];
    if (v18 <= 0.0)
    {
      goto LABEL_21;
    }

    v19 = *([(VKScreenCanvas *)self mapEngine]+ 41712);
    v20.f64[0] = x;
    v20.f64[1] = y;
    v59 = v20;
    mapEngine = [(VKScreenCanvas *)self mapEngine];
    v22 = mapEngine + 5120;
    v23 = mapEngine[5234];
    v24 = v22[115];
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = gdc::Camera::cameraFrame(v23);
    md::MapDataAccess::groundCoordinateForScreenPoint(&v60, v19, v25, 0, 0, v59);
    v27 = *(&v60 + 1);
    v26 = *&v60;
    v28 = *&v61;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    }

    if (v26 == -3.14159265 && v27 == -3.14159265 && v28 == 0.0)
    {
LABEL_21:
      mapEngine2 = [(VKScreenCanvas *)self mapEngine];
      v30 = mapEngine2 + 5120;
      v31 = mapEngine2[5234];
      v32 = v30[115];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        v33 = gdc::Camera::cameraFrame(v31);
        v26 = *v33;
        v27 = v33[1];
        std::__shared_weak_count::__release_shared[abi:nn200100](v32);
      }

      else
      {
        v45 = gdc::Camera::cameraFrame(v31);
        v26 = *v45;
        v27 = v45[1];
      }
    }

    v44 = v26 * 57.2957795;
    v43 = v27 * 57.2957795;
  }

  result.var1 = v43;
  result.var0 = v44;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)convertPointToMapPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(VKCameraController *)self->super._cameraController usesVKCamera])
  {
    [(MDRenderTarget *)self->super._displayTarget size];
    v5 = v4;
    [(MDRenderTarget *)self->super._displayTarget size];
    v7 = v6;
    v8 = self->super._vkCamera._obj;
    v9 = v8;
    if (v8)
    {
      [(VKCamera *)v8 groundPointFromScreenPoint:x / v5, 1.0 - y / v7];
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    if (BYTE8(v28))
    {
      *&v22.f64[0] = v27;
      v22.f64[1] = 1.0 - *(&v27 + 1);
      v21 = vmulq_f64(v22, *MEMORY[0x1E69A1690]);
      goto LABEL_16;
    }

LABEL_15:
    v21 = *MEMORY[0x1E69A1678];
    goto LABEL_16;
  }

  v10 = *([(VKScreenCanvas *)self mapEngine]+ 41712);
  v11.f64[0] = x;
  v11.f64[1] = y;
  v26 = v11;
  mapEngine = [(VKScreenCanvas *)self mapEngine];
  v13 = mapEngine + 5120;
  v14 = mapEngine[5234];
  v15 = v13[115];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = gdc::Camera::cameraFrame(v14);
  md::MapDataAccess::groundCoordinateForScreenPoint(&v27, v10, v16, 0, 0, v26);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v17 = v27;
  if (*&v27 == -3.14159265 && *(&v27 + 1) == -3.14159265 && *&v28 == 0.0)
  {
    goto LABEL_15;
  }

  v18 = tan(*&v27 * 0.5 + 0.785398163);
  v19 = log(v18);
  v20.f32[0] = *(&v17 + 1) * 0.159154943 + 0.5;
  *&v19 = v19 * 0.159154943 + 0.5;
  v20.f32[1] = 1.0 - *&v19;
  v21 = vmulq_f64(*MEMORY[0x1E69A1690], vcvtq_f64_f32(v20));
LABEL_16:
  v23 = v21.f64[1];
  result.var0 = v21.f64[0];
  result.var1 = v23;
  return result;
}

- (optional<float>)_zoomLevelForCanvasSize:(CGSize)size
{
  v4 = 0;
  if (size.width > 0.0)
  {
    height = size.height;
    if (size.height > 0.0)
    {
      width = size.width;
      footprint = [(VKCamera *)self->super._vkCamera._obj footprint];
      [footprint maxDepth];
      v9 = v8;

      [(VKCamera *)self->super._vkCamera._obj tanHalfVerticalFOV];
      v11 = log2(width * v10 * (v9 + v9) / height);
      v12 = width * 0.001953125;
      *&v13 = log2f(v12) - v11;
      return (v13 | 0x100000000);
    }
  }

  return v4;
}

- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_puckAnimator);
  [WeakRetained processLocationUpdates];

  v14.receiver = self;
  v14.super_class = VKMapCanvas;
  [(VKScreenCanvas *)&v14 updateWithTimestamp:context withContext:timestamp];
  if ([(VKCameraController *)self->super._cameraController shouldUpdateCameraWithVKCamera])
  {
    v8 = self->super._vkCamera._obj;
    v19 = 0;
    mapEngine = self->super._mapEngine;
    if (mapEngine)
    {
      v10 = mapEngine[5253];
      if (v10)
      {
        if (*(v10 + 568) == 1)
        {
          std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](v16, v10 + 536);
        }

        else
        {
          v17 = 0;
        }

        std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::operator=[abi:nn200100](v18, v16);
        std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v16);
      }
    }

    cntrl = self->super._camera.__cntrl_;
    ptr = self->super._camera.__ptr_;
    v13 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](v15, v18);
    [(VKCamera *)v8 updateCamera:&ptr withAdjustment:v15];
    std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v15);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v18);
  }
}

- (id)consoleString:(BOOL)string
{
  v4 = objc_opt_respondsToSelector();
  v5 = 0.0;
  if (v4)
  {
    [(MDRenderTarget *)self->super._displayTarget averageFPS];
  }

  consoleFpsUpdateTicker = self->_consoleFpsUpdateTicker;
  self->_consoleFpsUpdateTicker = consoleFpsUpdateTicker - 1;
  if (consoleFpsUpdateTicker <= 0)
  {
    self->_consoleFps = v5;
    self->_consoleFpsUpdateTicker = 10;
  }

  v7 = *(self->super._mapEngine + 5253);
  if (v7)
  {
    v8 = *(v7 + 48);
    if (v8 > 0x11)
    {
      v9 = "<Invalid>";
    }

    else
    {
      v9 = off_1E7B38AA0[v8];
    }
  }

  else
  {
    v9 = "Not Initialized";
  }

  v10 = *(self->super._mapEngine + 5216);
  v11 = v10[1];
  if (!*&v11)
  {
    goto LABEL_29;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = 0x1AF456233693CD46;
    if (*&v11 <= 0x1AF456233693CD46uLL)
    {
      v13 = 0x1AF456233693CD46uLL % *&v11;
    }
  }

  else
  {
    v13 = (*&v11 - 1) & 0x1AF456233693CD46;
  }

  v14 = *(*v10 + 8 * v13);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v14;
  if (!v15)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == 0x1AF456233693CD46)
    {
      break;
    }

    if (v12.u32[0] > 1uLL)
    {
      if (v16 >= *&v11)
      {
        v16 %= *&v11;
      }
    }

    else
    {
      v16 &= *&v11 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_29;
    }

LABEL_25:
    v17 = 0;
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_30;
    }
  }

  if (v15[2] != 0x1AF456233693CD46)
  {
    goto LABEL_25;
  }

  v18 = v15[5];
  if (*(v18 + 8) == 0x1AF456233693CD46)
  {
    v17 = *(v18 + 32);
    goto LABEL_30;
  }

LABEL_29:
  v17 = 0;
LABEL_30:
  v19 = *(self->super._mapEngine + 5207);
  [v19 size];
  v22 = v21;
  mapEngine = self->super._mapEngine;
  v24 = *(*(mapEngine + 5213) + 312);
  consoleFps = self->_consoleFps;
  if (mapEngine[42063] < 0)
  {
    std::string::__init_copy_ctor_external(&v44, *(mapEngine + 5255), *(mapEngine + 5256));
  }

  else
  {
    v26 = mapEngine + 42040;
    v27 = *v26;
    v44.__r_.__value_.__r.__words[2] = *(v26 + 2);
    *&v44.__r_.__value_.__l.__data_ = v27;
  }

  if (v17)
  {
    v28 = gdc::DisplayZoomLevel::centerZoomLevel(v17, v20);
    gdc::NormalizedZoomLevel::NormalizedZoomLevel(&v46, v28, v24, v22);
    v29 = v46;
    gdc::StyleZoomLevel::StyleZoomLevel(&v45, v30, v46, v47);
    v31 = MEMORY[0x1E696AEC0];
    v32 = consoleFps;
    v33 = *(gdc::Camera::cameraFrame(v17) + 32) * 57.2957795;
    v34 = (floorf(v45 * 10.0) * 0.1);
    v35 = (floorf(v29 * 10.0) * 0.1);
    v36 = gdc::Camera::cameraFrame(v17);
    v37 = *v36 * 57.2957795;
    v38 = *(v36 + 8) * 57.2957795;
    v39 = *(v36 + 16);
    v40 = *grl::IconMetricsRenderResult::size(v17);
    v41 = &v44;
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v41 = v44.__r_.__value_.__r.__words[0];
    }

    v42 = [v31 stringWithFormat:@"%.2f fps | Pitch: %.0f˚ | s: %.1f | n: %.1f\nlat: %f lon: %f alt: %f tgtDist: %.1f | %s | %s", *&v32, *&v33, *&v34, *&v35, *&v37, *&v38, v39, v40, v41, v9];
  }

  else
  {
    v42 = @"Error";
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  return v42;
}

- (id)detailedDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = [(VKMapCanvas *)self description];
  v5 = [v3 initWithFormat:@"%@\n\n", v4];

  [(MDRenderTarget *)self->super._displayTarget sizeInPixels];
  v7 = v6;
  [(MDRenderTarget *)self->super._displayTarget sizeInPixels];
  [v5 appendFormat:@"Canvas size: (%f, %f)\n", v7, v8];

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v18[4] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (_PreserveModelTileKVOContext == context)
  {
    v13 = +[VKDebugSettings sharedSettings];
    preserveModelTile = [v13 preserveModelTile];

    if (preserveModelTile)
    {
      v15 = *(self->super._mapEngine + 5213);
      v16 = *(v15 + 24);
      v18[0] = &unk_1F29E65E8;
      v18[1] = v15;
      v18[3] = v18;
      gdc::LayerDataManager::forEachLayer(*(v16 + 8), *(v16 + 16), v18);
      std::__function::__value_func<void ()(unsigned short,gdc::LayerDataSource *,gdc::DataKeyRequester *)>::~__value_func[abi:nn200100](v18);
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = VKMapCanvas;
    [(VKMapCanvas *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)observeValueForKeyPath:ofObject:change:context:
{
  v2 = *(self + 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  if (v3 != v4)
  {
    while (*v3 != *a2)
    {
      v3 += 8;
      if (v3 == v4)
      {
        return;
      }
    }

    if (v3 != v4)
    {
      v5 = *(v3 + 1);
      if (v5)
      {
        gdc::LayerDataStore::clearAllData(v5);
      }
    }
  }
}

- (uint64_t)observeValueForKeyPath:ofObject:change:context:
{
  v2 = *(result + 8);
  *a2 = &unk_1F29E65E8;
  a2[1] = v2;
  return result;
}

- (void)dealloc
{
  v3 = +[VKDebugSettings sharedSettings];
  [v3 removeObserver:self forKeyPath:@"preserveModelTile"];

  [(VKAnimation *)self->_horizontalOffsetAnimation stop];
  horizontalOffsetAnimation = self->_horizontalOffsetAnimation;
  self->_horizontalOffsetAnimation = 0;

  v5.receiver = self;
  v5.super_class = VKMapCanvas;
  [(VKScreenCanvas *)&v5 dealloc];
}

- (VKMapCanvas)initWithMapEngine:(void *)engine inBackground:(BOOL)background
{
  v21.receiver = self;
  v21.super_class = VKMapCanvas;
  v4 = [(VKScreenCanvas *)&v21 initWithMapEngine:engine inBackground:background];
  v5 = v4;
  v6 = v4;
  if (v4)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    v4->_lastCanvasSize = _Q0;
    [(MDRenderTarget *)v4->super._displayTarget size];
    if (v12 > 0.0)
    {
      [(MDRenderTarget *)v6->super._displayTarget size];
      if (v13 > 0.0)
      {
        [(VKMapCanvas *)v6 updateCameraForFrameResize];
      }
    }

    v6->_canonicalSkyHeight = 0.0;
    v14 = *(v6->super._mapEngine + 5213);
    v16 = *(v14 + 272);
    v15 = *(v14 + 280);
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v5->_overlayContainer.__cntrl_;
    v5->_overlayContainer.__ptr_ = v16;
    v5->_overlayContainer.__cntrl_ = v15;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    v18 = +[VKDebugSettings sharedSettings];
    [v18 addObserver:v6 forKeyPath:@"preserveModelTile" options:0 context:_PreserveModelTileKVOContext];

    v19 = v6;
  }

  return v6;
}

- (void)transferStateFromCanvas:(id)canvas
{
  v9 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VKMapCanvas;
  [(VKScreenCanvas *)&v7 transferStateFromCanvas:canvas];
  cameraDelegate = [(VKCameraController *)self->super._cameraController cameraDelegate];
  v5 = cameraDelegate;
  if (cameraDelegate)
  {
    [cameraDelegate willBeginRegionChangeAccess:0];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  [(VKCameraController *)self->super._cameraController updateCameraToPositionOrientationLimits];
  cameraDelegate2 = [(VKCameraController *)self->super._cameraController cameraDelegate];
  [cameraDelegate2 didEndRegionChangeAccess:v8];

  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v8);
}

- (void)setMapType:(int)type animated:(BOOL)animated
{
  [(MDRenderTarget *)self->super._displayTarget size:*&type];
  v6 = v5;
  [(MDRenderTarget *)self->super._displayTarget size];
  if (v7 * v6 > 0.0)
  {
    cameraController = self->super._cameraController;

    [(VKCameraController *)cameraController updateCameraToPositionOrientationLimits];
  }
}

- (id)attributionsForCurrentRegion
{
  mapEngine = self->super._mapEngine;
  if (mapEngine && (v3 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((mapEngine[5241] + 16), 0x2B7C4502BD3C99C6uLL)) != 0 && (v4 = v3[5]) != 0 && (v5 = *(v4 + 120)) != 0 && (v6 = md::SceneContext::layerDataInView(v5, 27), v7 = v6 + 1, v8 = *v6, *v6 != v6 + 1))
  {
    array = 0;
    do
    {
      v11 = v8[4];
      v10 = v8[5];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v11)
      {
        v12 = *(v11 + 728);
        if (v12)
        {
          v13 = *(v12 + 24);
          v14 = *(v12 + 32);
          if (v13 != v14)
          {
            if (!array)
            {
              array = [MEMORY[0x1E695DF70] array];
              v15 = *(v11 + 728);
              v13 = *(v15 + 24);
              v14 = *(v15 + 32);
            }

            while (v13 != v14)
            {
              v16 = *(v13 + 8);
              v17 = [array containsObject:v16];

              if ((v17 & 1) == 0)
              {
                v18 = *(v13 + 8);
                [array addObject:v18];
              }

              v13 += 24;
            }
          }
        }
      }

      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }

      v19 = v8[1];
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
          v20 = v8[2];
          v21 = *v20 == v8;
          v8 = v20;
        }

        while (!v21);
      }

      v8 = v20;
    }

    while (v20 != v7);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (NSArray)visibleTileSets
{
  v14[20] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v14[15] = array;
  mapEngine = self->super._mapEngine;
  if (mapEngine)
  {
    v5 = (mapEngine + 5120);
    v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((mapEngine[5241] + 16), 0x2B7C4502BD3C99C6uLL);
    if (v6)
    {
      v7 = v6[5];
      if (v7)
      {
        v14[14] = *(*(*(v5 + 93) + 24) + 56);
        v8 = *(v7 + 120);
        if (v8)
        {
          v9 = *v8;
          v11 = *(v9 + 112);
          v10 = *(v9 + 120);
          while (1)
          {
            if (v11 == v10)
            {
              goto LABEL_13;
            }

            if (!*v11)
            {
              break;
            }

            v11 += 56;
          }

          v10 = v11;
LABEL_13:
          v14[13] = *(v10 + 13);
          memset(&v14[10], 0, 24);
          {
            {
              operator new();
            }
          }

          gdc::ResourceStatusContainer::ResourceStatusContainer(v14, gdc::getEmptyLogger(void)::emptyLogger);
          operator new();
        }
      }
    }
  }

  v12 = array;

  return v12;
}

- (void)visibleTileSets
{
  v36 = *MEMORY[0x1E69E9840];
  v23 = a3;
  if (a2 != a3)
  {
    v4 = a2;
    while (1)
    {
      v32 = *v4;
      std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::unordered_set(&__p, (v4 + 4));
      v5 = gdc::ResourceManager::resourceFetcher(*(**self + 4), *(**self + 5), v32);
      v6 = (*(*v5 + 80))(v5);
      if (v7)
      {
        break;
      }

LABEL_33:
      std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::__deallocate_node(v34);
      v22 = __p;
      __p = 0;
      if (v22)
      {
        operator delete(v22);
      }

      v4 += 24;
      if (v4 == v23)
      {
        return;
      }
    }

    v8 = v6;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = *self[1];
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v10)
    {
      v11 = 0;
      v12 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          if ([v14 style] == HIDWORD(v8) && objc_msgSend(v14, "identifier") == v8)
          {
            v15 = v14;

            v11 = v15;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v10);

      if (v11)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v11 = objc_alloc_init(MEMORY[0x1E69A2408]);
    [v11 setStyle:HIDWORD(v8)];
    [v11 setIdentifier:v8];
    [*self[1] addObject:v11];
LABEL_18:
    v16 = v34;
    if (v34)
    {
      do
      {
        md::GEOVectorTileResource::QuadTileFromResourceKey(&v25, *(v16 + 3));
        v17 = 0;
        while (v17 < [v11 tileKeysCount])
        {
          v18 = [v11 tileKeyAtIndex:v17++];
          if (v27 == v18 && HIDWORD(v27) == HIDWORD(v18) && v19 == v26)
          {
            goto LABEL_31;
          }
        }

        v3 = v3 & 0xFFFFFFF800000000 | v26 | 0x700000000;
        [v11 addTileKey:{v27, v3}];
LABEL_31:
        v16 = *v16;
      }

      while (v16);
    }

    goto LABEL_33;
  }
}

- (__n128)visibleTileSets
{
  *a2 = &unk_1F29E65A0;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

+ (BOOL)supportsMapType:(int)type scale:(int)scale
{
  v4 = *&scale;
  modernManager = [MEMORY[0x1E69A2478] modernManager];
  activeTileGroup = [modernManager activeTileGroup];

  v8 = 1;
  if (type <= 2)
  {
    if (!type)
    {
      goto LABEL_24;
    }

    if (type != 1)
    {
      if (type == 2)
      {
        v9 = [activeTileGroup activeTileSetForTileType:7 scale:v4];

        v10 = [activeTileGroup activeTileSetForTileType:20 scale:0];

        v11 = [activeTileGroup activeTileSetForTileType:6 scale:v4];

        if (v9)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        v13 = v12 && v11 == 0;
        goto LABEL_17;
      }

LABEL_21:
      v8 = 0;
      goto LABEL_24;
    }

    v16 = [activeTileGroup activeTileSetForTileType:7 scale:v4];
LABEL_23:
    v8 = v16 != 0;

    goto LABEL_24;
  }

  if ((type - 5) < 4)
  {
    goto LABEL_24;
  }

  if (type == 3)
  {
    v16 = [activeTileGroup activeTileSetForTileType:92 scale:1];
    goto LABEL_23;
  }

  if (type != 4)
  {
    goto LABEL_21;
  }

  v14 = [activeTileGroup activeTileSetForTileType:92 scale:1];

  v15 = [activeTileGroup activeTileSetForTileType:66 scale:0];

  if (v14)
  {
    v13 = v15 == 0;
  }

  else
  {
    v13 = 1;
  }

LABEL_17:
  v8 = !v13;
LABEL_24:

  return v8;
}

@end