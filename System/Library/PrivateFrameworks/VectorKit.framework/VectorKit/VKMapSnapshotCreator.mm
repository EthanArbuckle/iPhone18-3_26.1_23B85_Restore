@interface VKMapSnapshotCreator
+ (BOOL)supportsSharingThumbnails;
- (BOOL)preferStaleTiles;
- (BOOL)showsBuildings;
- (BOOL)showsGlobe;
- (BOOL)showsHiking;
- (BOOL)showsHillshade;
- (BOOL)showsPOIUpdates;
- (BOOL)showsTintBands;
- (BOOL)showsTopographicFeatures;
- (BOOL)showsTraffic;
- (BOOL)showsVenues;
- (CGSize)size;
- (VKEdgeInsets)edgeInsets;
- (VKMapSnapshotCreator)initWithSize:(CGSize)size scale:(double)scale homeQueue:(id)queue signpostId:(unint64_t)id mapType:(int)type mapDisplayStyles:(id *)styles mapDisplayStylesCount:(unint64_t)count auditToken:(id)self0 useMultisampling:(BOOL)self1 withError:(id *)self2;
- (id).cxx_construct;
- (int64_t)labelScaleFactor;
- (int64_t)terrainMode;
- (unsigned)levelOfDetail;
- (void)_transferSettingsFrom:(id)from to:(id)to;
- (void)addCustomFeatureDataSource:(id)source;
- (void)addOverlay:(id)overlay;
- (void)cancel;
- (void)cancelFlushingTileDecodes:(BOOL)decodes;
- (void)capturePostSnapshotStatisticsIfNecessary:(id)necessary;
- (void)clearResources;
- (void)dealloc;
- (void)didPresent;
- (void)didReceiveMemoryWarning;
- (void)didUpdateSceneStatus:(unsigned __int8)status;
- (void)initWithSize:scale:homeQueue:signpostId:mapType:mapDisplayStyles:mapDisplayStylesCount:auditToken:useMultisampling:withError:;
- (void)removeCustomFeatureDataSource:(id)source;
- (void)renderNextSnapshot;
- (void)renderSnapshot:(id)snapshot;
- (void)setAllowsBackgroundGPUSubmission;
- (void)setCenterCoordinate:(id)coordinate altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch;
- (void)setClearFontCache:(BOOL)cache;
- (void)setEdgeInsets:(VKEdgeInsets)insets;
- (void)setEmphasis:(unsigned __int8)emphasis;
- (void)setIncreaseContrastEnabled:(BOOL)enabled;
- (void)setLabelScaleFactor:(int64_t)factor;
- (void)setLevelOfDetail:(unsigned __int8)detail;
- (void)setLocalizeLabels:(BOOL)labels;
- (void)setMapKitClientMode:(unsigned __int8)mode;
- (void)setMapKitUsage:(unsigned __int8)usage;
- (void)setMapRegion:(id)region pitch:(double)pitch yaw:(double)yaw;
- (void)setMapType:(int)type;
- (void)setNewInterfaceEnabled:(BOOL)enabled;
- (void)setPointsOfInterestFilter:(id)filter;
- (void)setPreferStaleTiles:(BOOL)tiles;
- (void)setRouteContext:(id)context;
- (void)setRouteOverlay:(id)overlay;
- (void)setSelectedTrailWithId:(unint64_t)id name:(id)name locale:(id)locale;
- (void)setShowsBuildings:(BOOL)buildings;
- (void)setShowsContourLabels:(BOOL)labels;
- (void)setShowsGlobe:(BOOL)globe;
- (void)setShowsHiking:(BOOL)hiking withTopographicFeatures:(BOOL)features;
- (void)setShowsHillshade:(BOOL)hillshade;
- (void)setShowsLabels:(BOOL)labels;
- (void)setShowsPOIUpdates:(BOOL)updates;
- (void)setShowsPhysicalFeatureLabels:(BOOL)labels;
- (void)setShowsPointLabels:(BOOL)labels;
- (void)setShowsPointsOfInterest:(BOOL)interest;
- (void)setShowsRoadLabels:(BOOL)labels;
- (void)setShowsRoadShields:(BOOL)shields;
- (void)setShowsTintBands:(BOOL)bands;
- (void)setShowsTraffic:(BOOL)traffic;
- (void)setShowsVenues:(BOOL)venues;
- (void)setTerrainMode:(int64_t)mode;
- (void)softDealloc;
- (void)tileGroupDidChange;
- (void)tileGroupWillChange;
- (void)timeout;
- (void)willBecomeFullyDrawn;
- (void)willLayoutWithTimestamp:(double)timestamp withContext:(void *)context;
@end

@implementation VKMapSnapshotCreator

- (id).cxx_construct
{
  self->_mapEngine.__ptr_ = 0;
  self->_taskContext.__ptr_ = 0;
  self->_taskContext.__cntrl_ = 0;
  *&self->_images.__begin_ = 0u;
  *&self->_images.__cap_ = 0u;
  *&self->_ioSurfaces.__end_ = 0u;
  self->_timer._startTime.__d_.__rep_ = 0;
  self->_timer._startTime.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  self->_expirationTimer.__ptr_ = 0;
  return self;
}

- (VKEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setRouteContext:(id)context
{
  contextCopy = context;
  if (self->_routeContext != contextCopy)
  {
    v20 = contextCopy;
    objc_storeStrong(&self->_routeContext, context);
    v6 = *(self->_mapEngine.__ptr_ + 5241);
    if (v6)
    {
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v6 + 16), 0x1BCA10CB9934FB1BuLL);
      if (v7)
      {
        v7 = *(v7 + 5);
      }

      md::TransitLogic::setRouteContext(v7, v20);
      v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v6 + 16), 0xBEC1A12372CEEC00);
      if (v8)
      {
        v8 = *(v8 + 5);
      }

      md::NavigationLogic::setRouteContext(v8, v20);
      v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v6 + 16), 0x2FED70A4459DFCA1uLL);
      if (v9)
      {
        v10 = v9[5];
        if (v10)
        {
          v22 = 0;
          if (v20)
          {
            routeInfo = [(VKRouteContext *)v20 routeInfo];
            route = [routeInfo route];
            transportType = [route transportType];

            if (transportType >= 7)
            {
              LOWORD(v14) = 260;
            }

            else
            {
              v14 = (0x50403020100uLL >> (8 * transportType)) & 7 | 0x100;
            }

            HIWORD(v22) = v14;
            routeInfo2 = [(VKRouteContext *)v20 routeInfo];
            route2 = [routeInfo2 route];
            source = [route2 source];

            if (source >= 6)
            {
              v18 = 256;
            }

            else
            {
              v18 = (0x40003020100uLL >> (8 * source)) & 7 | 0x100;
            }

            LOWORD(v22) = v18;
          }

          md::StyleLogic::setRouteTransportType(v10, &v22 + 2);
          md::StyleLogic::setRouteSource(v10, &v22);
        }
      }
    }

    _labelSettings = [(VKMapSnapshotCreator *)self _labelSettings];
    md::LabelSettings_Navigation::setRouteContext((_labelSettings + 8), v21);
  }
}

- (void)setRouteOverlay:(id)overlay
{
  overlayCopy = overlay;
  if (self->_routeOverlay != overlayCopy)
  {
    objc_storeStrong(&self->_routeOverlay, overlay);
    ptr = self->_mapEngine.__ptr_;
    md::HomeQueueScheduler::waitForSynchronization(*(ptr + 5920), "[VKMapSnapshotCreator setRouteOverlay:]");
    md::RouteOverlayContainer::persistentOverlays(&v12, *(*(ptr + 5213) + 16));
    v7 = v12;
    if (v12 != v13)
    {
      do
      {
        v8 = v7[4];
        if (v8 != overlayCopy)
        {
          md::RouteOverlayContainer::removeOverlay(*(*(ptr + 5213) + 16), overlayCopy, 1);
        }

        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v13);
    }

    if (overlayCopy)
    {
      md::RouteOverlayContainer::addOverlay(*(*(ptr + 5213) + 16), overlayCopy, 1);
    }

    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v13[0]);
  }
}

- (void)didPresent
{
  activeCanvas = [(VKMapSnapshotCreator *)self activeCanvas];
  [activeCanvas didLayout];
}

- (void)willLayoutWithTimestamp:(double)timestamp withContext:(void *)context
{
  activeCanvas = [(VKMapSnapshotCreator *)self activeCanvas];
  [activeCanvas updateWithTimestamp:context withContext:timestamp];
}

- (void)didReceiveMemoryWarning
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator didReceiveMemoryWarning: %p", &v8, 0xCu);
  }

  v4 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_signpost_enabled(v4))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DidReceiveMemoryWarning", &unk_1B3514CAA, &v8, 2u);
  }

  ptr = self->_mapEngine.__ptr_;
  md::HomeQueueScheduler::waitForSynchronization(*(ptr + 5920), "[VKMapSnapshotCreator didReceiveMemoryWarning]");
  mapCanvas = self->_mapCanvas;
  if (mapCanvas)
  {
    [(VKImageCanvas *)mapCanvas didReceiveMemoryWarning:0];
  }

  md::MapEngine::prune(ptr, 2u);
  v7 = +[VKSharedResourcesManager sharedResources];
  [v7 prune:1];
}

- (void)didUpdateSceneStatus:(unsigned __int8)status
{
  if ((status - 2) <= 2)
  {
    self->_didBecomeFullyDrawn = 1;
    self->_hasFailedTiles = (status - 3) < 2;
  }
}

- (void)willBecomeFullyDrawn
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p willBecomeFullyDrawn", buf, 0xCu);
  }

  v4 = *self->_taskContext.__ptr_;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VKMapSnapshotCreator_willBecomeFullyDrawn__block_invoke;
  block[3] = &unk_1E7B3B9F8;
  block[4] = self;
  dispatch_async(v4, block);
}

void __44__VKMapSnapshotCreator_willBecomeFullyDrawn__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v8 = &unk_1F2A20368;
  v9 = v3;
  if (*(*v2 + 8))
  {
    v4 = [*v2 activeCanvas];
    v5 = *(*(a1 + 32) + 64);
    v7[3] = 0;
    [v4 renderSceneWithEngine:v5 completion:v7];
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v7);

    v6 = *(a1 + 32);
    if (v6[7])
    {
      [v6 renderNextSnapshot];
    }
  }

  v8 = &unk_1F2A20368;
}

- (void)renderNextSnapshot
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = *(self->_mapEngine.__ptr_ + 5207);
  if (v3)
  {
    [v3 bitmapData];
    if (*buf)
    {
      v4 = (*(**buf + 24))(*buf);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    *buf = 0;
    *&buf[8] = 0;
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
  }

  end = self->_images.__end_;
  cap = self->_images.__cap_;
  if (end >= cap)
  {
    begin = self->_images.__begin_;
    v9 = end - begin;
    v10 = end - begin;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = cap - begin;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 61))
      {
        operator new();
      }

      goto LABEL_48;
    }

    v14 = end - begin;
    v15 = (8 * v10);
    v16 = (8 * v10 - 8 * v14);
    *v15 = v4;
    v7 = (v15 + 1);
    memcpy(v16, begin, v9);
    self->_images.__begin_ = v16;
    self->_images.__end_ = v7;
    self->_images.__cap_ = 0;
    if (begin)
    {
      operator delete(begin);
    }
  }

  else
  {
    *end = v4;
    v7 = end + 1;
  }

  self->_images.__end_ = v7;
  if (!self->_displayStyles || self->_nextDisplayStyleIndex >= self->_displayStylesCount)
  {
    v25 = *self->_taskContext.__ptr_;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__VKMapSnapshotCreator_renderNextSnapshot__block_invoke;
    block[3] = &unk_1E7B3B9F8;
    block[4] = self;
    dispatch_async(v25, block);
    return;
  }

  v17 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    displayStylesCount = self->_displayStylesCount;
    nextDisplayStyleIndex = self->_nextDisplayStyleIndex;
    *buf = 134218496;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = nextDisplayStyleIndex;
    v53 = 2048;
    v54 = displayStylesCount;
    _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p rendering next display style (%llu / %llu)", buf, 0x20u);
  }

  v20 = *(self->_mapEngine.__ptr_ + 5207);
  flipImage = [v20 flipImage];
  v23 = self->_ioSurfaces.__end_;
  v22 = self->_ioSurfaces.__cap_;
  if (v23 >= v22)
  {
    v26 = self->_ioSurfaces.__begin_;
    v27 = v23 - v26;
    v28 = v23 - v26;
    v29 = v28 + 1;
    if ((v28 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v30 = v22 - v26;
    if (v30 >> 2 > v29)
    {
      v29 = v30 >> 2;
    }

    if (v30 >= 0x7FFFFFFFFFFFFFF8)
    {
      v31 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = v29;
    }

    if (!v31)
    {
      v32 = v23 - v26;
      v33 = (8 * v28);
      v34 = (8 * v28 - 8 * v32);
      *v33 = flipImage;
      v24 = (v33 + 1);
      memcpy(v34, v26, v27);
      self->_ioSurfaces.__begin_ = v34;
      self->_ioSurfaces.__end_ = v24;
      self->_ioSurfaces.__cap_ = 0;
      if (v26)
      {
        operator delete(v26);
      }

      goto LABEL_39;
    }

    if (!(v31 >> 61))
    {
      operator new();
    }

LABEL_48:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v23 = flipImage;
  v24 = v23 + 1;
LABEL_39:
  self->_ioSurfaces.__end_ = v24;

  v35 = &self->_displayStyles[self->_nextDisplayStyleIndex];
  var0 = v35->var0;
  var1 = v35->var1;
  var2 = v35->var2;
  var3 = v35->var3;
  var4 = v35->var4;
  var5 = v35->var5;
  v42 = var2 - 1;
  if (v42 > 8)
  {
    v43 = 0;
  }

  else
  {
    v43 = qword_1B3415160[v42];
  }

  v44 = var0 | (var1 << 8) | (var3 << 24) | (var4 << 32) | (var5 << 40);
  v45 = v43 + 0x1000000000000;
  v46 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->_mapEngine.__ptr_ + 5241) + 16), 0x2FED70A4459DFCA1uLL);
  if (v46)
  {
    v46 = v46[5];
  }

  md::StyleLogic::setDisplayStyle(v46, v45 + v44);
  activeCanvas = [(VKMapSnapshotCreator *)self activeCanvas];
  ptr = self->_mapEngine.__ptr_;
  v51 = 0;
  [activeCanvas renderSceneWithEngine:ptr completion:v50];
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v50);

  ++self->_nextDisplayStyleIndex;
  if (self->_completion)
  {
    [(VKMapSnapshotCreator *)self renderNextSnapshot];
  }
}

void __42__VKMapSnapshotCreator_renderNextSnapshot__block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 56))
  {
    v2 = MEMORY[0x1B8C62DA0]();
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;

    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    v7 = *(v5 + 49);
    if (v6)
    {
      if ((v7 & 1) == 0)
      {
        v8 = GEOGetVectorKitVKMapSnapshotLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = *(a1 + 32);
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v9;
          _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p finished rendering snapshot!", &buf, 0xCu);
        }

        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v11 = *(a1 + 32);
        v12 = v11[18];
        v13 = v11[19];
        if (v12 != v13)
        {
          do
          {
            v14 = [MEMORY[0x1E696B098] valueWithBytes:v12 objCType:"^{CGImage=}"];
            [v10 addObject:v14];

            v12 += 8;
          }

          while (v12 != v13);
          v11 = *(a1 + 32);
        }

        v15 = [v11 activeCanvas];
        v16 = [v15 vkCamera];
        [v16 pitch];
        if (v17 > 0.0 && [*(a1 + 32) _elevatedGroundIsEnabled])
        {
          v18 = [*(a1 + 32) terrainMode] == 1;

          v19 = 0.0;
          if (v18)
          {
            v81 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v20 = *(a1 + 32);
            v21 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(v20[8] + 41728), 0x99BED48DEFBBD82BLL);
            if (v21 && (v22 = v21[5], *(v22 + 8) == 0x99BED48DEFBBD82BLL))
            {
              v23 = *(v22 + 32);
            }

            else
            {
              v23 = 0;
            }

            if ([v20 showsGlobe])
            {
              v24 = 1;
            }

            else if ([*(a1 + 32) _elevatedGroundIsEnabled])
            {
              v24 = 4;
            }

            else
            {
              v24 = 0;
            }

            v53 = *(*v23 + 112);
            v52 = *(*v23 + 120);
            while (v53 != v52)
            {
              if (*v53 == v24)
              {
                v52 = v53;
                break;
              }

              v53 += 56;
            }

            v54 = gdc::LayerDataCollector::cDataHolders(*(*(v52 + 13) + 24), *(*(v52 + 13) + 32), 43);
            v80 = v55;
            v56 = [*(a1 + 32) activeCanvas];
            v57 = v56;
            if (v56)
            {
              [v56 camera];
              v59 = *(&buf + 1);
              v58 = buf;
            }

            else
            {
              v59 = 0;
              v58 = 0;
              buf = 0uLL;
            }

            v60 = gdc::Camera::cameraFrame(v58);
            v78 = *(v60 + 8);
            v61 = tan(*v60 * 0.5 + 0.785398163);
            v77 = log(v61);
            if (v59)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v59);
            }

            if (v54 != v80)
            {
              *&v62.f64[0] = v78;
              v62.f64[1] = v77;
              __asm { FMOV            V1.2D, #0.5 }

              v79 = vmlaq_f64(_Q1, vdupq_n_s64(0x3FC45F306DC9C883uLL), v62);
              v19 = 0.0;
              do
              {
                v67 = *(v54 + 112);
                v68 = *(v54 + 120);
                if (v68)
                {
                  atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v67)
                {
                  v69 = *(v67 + 728);
                  v70 = *(v67 + 736);
                  if (v70)
                  {
                    atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v69 && md::ElevationRaster::containsWorldPoint(v69, v79))
                  {
                    v71 = md::ElevationRaster::elevationInMetersAtWorldPoint(v69, 1, v79);
                    if (HIDWORD(v71))
                    {
                      v19 = *&v71;
                    }

                    else
                    {
                      v19 = 0.0;
                    }
                  }

                  v72 = [VKSnapshotElevationRaster alloc];
                  *(&buf + 4) = *(v69 + 60);
                  HIDWORD(v73) = DWORD2(buf);
                  LOWORD(buf) = *(v69 + 56);
                  v83 = *(v69 + 72);
                  v84 = *(v69 + 80);
                  LODWORD(v73) = *(v69 + 48);
                  LODWORD(v74) = *(v67 + 744);
                  v75 = [(VKSnapshotElevationRaster *)v72 initWithQuadTile:&buf width:*(v69 + 32) height:*(v69 + 40) scale:*(v69 + 52) tileSizeInMeters:v73 minElevationInMeters:v74];
                  v76 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:*v69 length:2 * *(v69 + 32) * *(v69 + 40)];
                  [(VKSnapshotElevationRaster *)v75 setRasterData:v76];

                  [v81 addObject:v75];
                  if (v70)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v70);
                  }
                }

                if (v68)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v68);
                }

                v54 += 144;
              }

              while (v54 != v80);
            }
          }

          else
          {
            v81 = 0;
          }
        }

        else
        {

          v81 = 0;
          v19 = 0.0;
        }

        v29 = *(*(a1 + 32) + 64);
        v30 = v29 + 40960;
        v31 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(v29 + 41728), 0x8BD499FBD96FBB9ELL)[5] + 32);
        v32 = *(v31 + 16);
        v33 = *(v31 + 20);
        v34 = *[*(v30 + 696) format];
        if (v34 - 44 >= 0xE && ((v49 = v34 > 0xF, v50 = (1 << v34) & 0xA800, !v49) ? (_ZF = v50 == 0) : (_ZF = 1), _ZF))
        {
          v35 = MEMORY[0x1E695F1B0];
        }

        else
        {
          v35 = MEMORY[0x1E695F1C0];
        }

        v36 = *v35;
        v37 = [VKMapSnapshot alloc];
        v38 = *(a1 + 32);
        v39 = v38[15];
        v40 = v38[16];
        v41 = *(v38[8] + 41656);
        [v41 contentScale];
        v43 = v42;
        v44 = [*(a1 + 32) activeCanvas];
        v45 = [v44 vkCamera];
        *&v46 = v33 * v32;
        *&v47 = v19;
        v48 = [(VKMapSnapshot *)v37 _initWithImages:v10 displayStyles:v39 displayStylesCount:v40 scale:v45 camera:v36 elevationScale:v43 targetPointElevation:v46 colorSpace:v47];

        [v48 setElevationRasters:v81];
        [*(a1 + 32) capturePostSnapshotStatisticsIfNecessary:v48];
        [*(a1 + 32) softDealloc];
        (v2)[2](v2, v48, 0);
        [*(a1 + 32) clearResources];

        goto LABEL_28;
      }
    }

    else if ((v7 & 1) == 0)
    {
      v25 = GEOGetVectorKitVKMapSnapshotLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 32);
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v28;
        v27 = "VKMapSnapshotCreator: %p failed to fully render";
        goto LABEL_22;
      }

LABEL_23:

      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.maps.snapshot.failedtiles" code:-5 userInfo:0];
      [*(a1 + 32) softDealloc];
      (v2)[2](v2, 0, v10);
      [*(a1 + 32) clearResources];
LABEL_28:

      return;
    }

    v25 = GEOGetVectorKitVKMapSnapshotLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v26;
      v27 = "VKMapSnapshotCreator: %p failed to render - failed tiles!";
LABEL_22:
      _os_log_impl(&dword_1B2754000, v25, OS_LOG_TYPE_ERROR, v27, &buf, 0xCu);
      goto LABEL_23;
    }

    goto LABEL_23;
  }
}

- (void)capturePostSnapshotStatisticsIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v5 = necessaryCopy;
  if (self->_captureMemoryStatistics)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    task_info_outCnt = 93;
    if (!task_info(*MEMORY[0x1E69E9A60], 0x16u, task_info_out, &task_info_outCnt))
    {
      LODWORD(v7) = task_info_out[36];
      v8 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
      [v6 setValue:v8 forKey:@"MemoryUsage:Footprint"];

      LODWORD(v9) = task_info_out[42];
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
      [v6 setValue:v10 forKey:@"MemoryUsage:Footprint_Peak"];
    }

    v14 = 0;
    v13 = 0;
    malloc_get_all_zones();
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:((std::chrono::steady_clock::now().__d_.__rep_ - self->_timer._startTime.__d_.__rep_) / 1000) * 0.001];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TimeForSnapshot"];
    [v6 setValue:v11 forKey:v12];

    [v5 setMemoryStats:v6];
  }

  else
  {
    [necessaryCopy setMemoryStats:0];
  }
}

- (void)cancelFlushingTileDecodes:(BOOL)decodes
{
  v9[4] = *MEMORY[0x1E69E9840];
  completion = self->_completion;
  if (completion)
  {
    decodesCopy = decodes;
    self->_completion = 0;

    activeCanvas = [(VKMapSnapshotCreator *)self activeCanvas];
    [activeCanvas cancelLoad];

    md::MapEngine::cancelDisplayLink(self->_mapEngine.__ptr_);
    v7 = *(self->_taskContext.__ptr_ + 1);
    v9[0] = &unk_1F2A20320;
    v9[3] = v9;
    geo::TaskQueue::barrierSync(v7, v9);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v9);
    activeCanvas2 = [(VKMapSnapshotCreator *)self activeCanvas];
    [activeCanvas2 cancelTileRequests];

    [(VKMapSnapshotCreator *)self clearResources];
    if (decodesCopy)
    {
      md::TaskContext::flushTileDecodeQueues(self->_taskContext.__ptr_);
    }
  }
}

- (void)timeout
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p snapshot request timed out", &v7, 0xCu);
  }

  v4 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_signpost_enabled(v4))
  {
    LOWORD(v7) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cancel", &unk_1B3514CAA, &v7, 2u);
  }

  if (self->_completion)
  {
    v5 = MEMORY[0x1B8C62DA0]();
    [(VKMapSnapshotCreator *)self cancelFlushingTileDecodes:1];
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.maps.snapshot.timeout" code:-6 userInfo:0];
    [(VKMapSnapshotCreator *)self softDealloc];
    (v5)[2](v5, 0, v6);
    [(VKMapSnapshotCreator *)self clearResources];
  }
}

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p cancel snapshot", &v5, 0xCu);
  }

  v4 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_signpost_enabled(v4))
  {
    LOWORD(v5) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cancel", &unk_1B3514CAA, &v5, 2u);
  }

  (*(*self->_expirationTimer.__ptr_ + 40))(self->_expirationTimer.__ptr_);
  [(VKMapSnapshotCreator *)self cancelFlushingTileDecodes:1];
}

- (void)renderSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (snapshotCopy)
  {
    (*(*self->_expirationTimer.__ptr_ + 24))(self->_expirationTimer.__ptr_, 0, 70.0);
    v4 = [snapshotCopy copy];
    completion = self->_completion;
    self->_completion = v4;

    activeCanvas = [(VKMapSnapshotCreator *)self activeCanvas];
    [activeCanvas loadScene];

    md::MapEngine::updateRunLoopStatus(self->_mapEngine.__ptr_);
  }
}

- (void)setCenterCoordinate:(id)coordinate altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  activeCanvas = [(VKMapSnapshotCreator *)self activeCanvas];
  [activeCanvas setCenterCoordinate:var0 altitude:var1 yaw:altitude pitch:{yaw, pitch}];
}

- (void)setClearFontCache:(BOOL)cache
{
  cacheCopy = cache;
  v4 = +[VKSharedResourcesManager sharedResources];
  [v4 setSnapshotterIsInService:cacheCopy];
}

- (void)setMapRegion:(id)region pitch:(double)pitch yaw:(double)yaw
{
  regionCopy = region;
  activeCanvas = [(VKMapSnapshotCreator *)self activeCanvas];
  [activeCanvas setMapRegion:regionCopy pitch:pitch yaw:yaw];
}

- (void)removeCustomFeatureDataSource:(id)source
{
  sourceCopy = source;
  md::LabelSettings::removeCustomFeatureDataSource([(VKMapSnapshotCreator *)self _labelSettings], sourceCopy);
}

- (void)addCustomFeatureDataSource:(id)source
{
  sourceCopy = source;
  md::LabelSettings::addCustomFeatureDataSource([(VKMapSnapshotCreator *)self _labelSettings], sourceCopy);
}

- (void)setLabelScaleFactor:(int64_t)factor
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 134218240;
    selfCopy = self;
    v10 = 2048;
    factorCopy = factor;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p setLabelScaleFactor: %ld", &v8, 0x16u);
  }

  _labelSettings = [(VKMapSnapshotCreator *)self _labelSettings];
  if (factor >= 6)
  {
    factorCopy2 = 1;
  }

  else
  {
    factorCopy2 = factor;
  }

  md::LabelSettings_Presentation::setLabelScaleFactor(*(*_labelSettings + 24), *(*_labelSettings + 40), factorCopy2);
}

- (int64_t)labelScaleFactor
{
  v2 = *(*(*[(VKMapSnapshotCreator *)self _labelSettings]+ 40) + 48);
  if (v2 >= 6)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

- (void)setTerrainMode:(int64_t)mode
{
  if ([(VKMapSnapshotCreator *)self _daVinciDataAvailable]&& [(VKMapSnapshotCreator *)self _elevatedGroundIsEnabled])
  {
    v5 = *(self->_mapEngine.__ptr_ + 5242);
    v13 = 29;
    md::MapEngineSettings::set(v5, &v13, mode);
    v6 = *(self->_mapEngine.__ptr_ + 5242);
    v12 = 21;
    v7 = (mode - 1) < 3;
    v8 = &v12;
  }

  else
  {
    v9 = *(self->_mapEngine.__ptr_ + 5242);
    v11 = 29;
    md::MapEngineSettings::set(v9, &v11, 0);
    v6 = *(self->_mapEngine.__ptr_ + 5242);
    v10 = 21;
    v8 = &v10;
    v7 = 0;
  }

  md::MapEngineSettings::set(v6, v8, v7);
}

- (void)setIncreaseContrastEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  if ([(VKMapSnapshotCreator *)self isIncreaseContrastEnabled]!= enabled)
  {
    v5 = GEOGetVectorKitVKMapSnapshotLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = "NO";
      if (enabledCopy)
      {
        v6 = "YES";
      }

      v8 = 134218242;
      selfCopy = self;
      v10 = 2080;
      v11 = v6;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapSnapshotCreator:%p] Set increaseContrastEnabled: %s", &v8, 0x16u);
    }

    v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->_mapEngine.__ptr_ + 5241) + 16), 0x2FED70A4459DFCA1uLL);
    if (v7)
    {
      v7 = v7[5];
    }

    if (*(v7 + 1113) != enabledCopy)
    {
      *(v7 + 1113) = enabledCopy;
      if ((v7[139] & 1) == 0)
      {
        md::StyleLogic::setResolvedIncreaseContrastEnabled(v7, enabledCopy, 0.0);
      }
    }
  }
}

- (int64_t)terrainMode
{
  ptr = self->_mapEngine.__ptr_;
  if (ptr)
  {
    v3 = *(ptr + 5242);
    v4 = *v3;
    v5 = v3[1];
    while (v4 != v5)
    {
      if (*v4 == 29)
      {
        if (v4 == v5)
        {
          return 0;
        }

        return *(v4 + 8);
      }

      v4 += 16;
    }
  }

  return 0;
}

- (void)setMapKitClientMode:(unsigned __int8)mode
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_mapKitClientMode != mode)
  {
    modeCopy = mode;
    v5 = GEOGetVectorKitVKMapSnapshotLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 134218242;
      selfCopy = self;
      v9 = 2080;
      v10 = gss::to_string(modeCopy);
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapSnapshotCreator:%p] Set mapKitClientMode: %s", &v7, 0x16u);
    }

    self->_mapKitClientMode = modeCopy;
    v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->_mapEngine.__ptr_ + 5241) + 16), 0x2FED70A4459DFCA1uLL);
    if (v6)
    {
      v6 = v6[5];
    }

    md::StyleLogic::setMapKitClientMode(v6, modeCopy);
  }
}

- (void)setMapKitUsage:(unsigned __int8)usage
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_mapKitUsage != usage)
  {
    usageCopy = usage;
    v5 = GEOGetVectorKitVKMapSnapshotLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 134218242;
      selfCopy = self;
      v9 = 2080;
      v10 = gss::to_string(usageCopy);
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapSnapshotCreator:%p] Set mapKitUsage: %s", &v7, 0x16u);
    }

    self->_mapKitUsage = usageCopy;
    self->_usage = usageCopy != 0;
    v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->_mapEngine.__ptr_ + 5241) + 16), 0x2FED70A4459DFCA1uLL);
    if (v6)
    {
      v6 = v6[5];
    }

    md::StyleLogic::setUsage(v6, usageCopy != 0, usageCopy);
  }
}

- (void)setShowsTraffic:(BOOL)traffic
{
  trafficCopy = traffic;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "false";
    if (trafficCopy)
    {
      v6 = "true";
    }

    v8 = 134218242;
    selfCopy = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p setShowsTraffic: %s", &v8, 0x16u);
  }

  v7 = *(self->_mapEngine.__ptr_ + 5242);
  LOBYTE(v8) = 2;
  md::MapEngineSettings::set(v7, &v8, trafficCopy);
}

- (BOOL)showsTraffic
{
  v2 = *(self->_mapEngine.__ptr_ + 5242);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 2)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setShowsGlobe:(BOOL)globe
{
  v3 = *(self->_mapEngine.__ptr_ + 5242);
  v4 = 22;
  md::MapEngineSettings::set(v3, &v4, [(VKMapSnapshotCreator *)self _globeIsEnabled]& globe);
}

- (BOOL)showsGlobe
{
  ptr = self->_mapEngine.__ptr_;
  if (ptr)
  {
    v3 = *(ptr + 5242);
    v4 = *v3;
    v5 = v3[1];
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

- (void)setShowsVenues:(BOOL)venues
{
  venuesCopy = venues;
  v13 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "false";
    if (venuesCopy)
    {
      v6 = "true";
    }

    v9 = 134218242;
    selfCopy = self;
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p setShowsVenues: %s", &v9, 0x16u);
  }

  v7 = *(self->_mapEngine.__ptr_ + 5242);
  LOBYTE(v9) = 0;
  md::MapEngineSettings::set(v7, &v9, venuesCopy);
  _labelSettings = [(VKMapSnapshotCreator *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsVenues(*(*_labelSettings + 24), *(*_labelSettings + 40), venuesCopy);
}

- (BOOL)showsVenues
{
  v2 = *(self->_mapEngine.__ptr_ + 5242);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (!*v3)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setSelectedTrailWithId:(unint64_t)id name:(id)name locale:(id)locale
{
  v21 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  localeCopy = locale;
  v10 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v17 = 134218240;
    selfCopy = self;
    v19 = 2048;
    idCopy = id;
    _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_INFO, "[VKMapSnapshotCreator:%p] Select trail id: %llu", &v17, 0x16u);
  }

  v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->_mapEngine.__ptr_ + 5241) + 16), 0xC74495586E0C32F6);
  if (v11)
  {
    v12 = v11[5];
    if (v12)
    {
      v13 = nameCopy;
      uTF8String = [nameCopy UTF8String];
      v15 = localeCopy;
      md::HikingLogic::setSelectedTrail(v12, id, uTF8String, [localeCopy UTF8String]);
      ptr = self->_mapEngine.__ptr_;
      LOBYTE(v17) = 1;
      md::MapEngine::setNeedsTick(ptr, &v17);
    }
  }
}

- (void)setPreferStaleTiles:(BOOL)tiles
{
  tilesCopy = tiles;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "NO";
    if (tilesCopy)
    {
      v6 = "YES";
    }

    v8 = 134218242;
    selfCopy = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[VKMapSnapshotCreator:%p] set preferStaleTiles: %s", &v8, 0x16u);
  }

  v7 = *(*(*(self->_mapEngine.__ptr_ + 5213) + 24) + 56);
  if (v7)
  {
    gdc::ResourceManager::setResourceFetcherConfig(v7, tilesCopy);
  }
}

- (BOOL)preferStaleTiles
{
  v2 = *(*(*(self->_mapEngine.__ptr_ + 5213) + 24) + 56);
  if (v2)
  {
    LOBYTE(v2) = gdc::ResourceManager::testResourceFetcherConfig(v2);
  }

  return v2;
}

- (void)setShowsPOIUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "false";
    if (updatesCopy)
    {
      v6 = "true";
    }

    v8 = 134218242;
    selfCopy = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p showsPOIUpdates: %s", &v8, 0x16u);
  }

  v7 = *(self->_mapEngine.__ptr_ + 5242);
  LOBYTE(v8) = 39;
  md::MapEngineSettings::set(v7, &v8, updatesCopy);
}

- (BOOL)showsPOIUpdates
{
  v2 = *(self->_mapEngine.__ptr_ + 5242);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 39)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setShowsHillshade:(BOOL)hillshade
{
  v3 = *(self->_mapEngine.__ptr_ + 5242);
  v5 = 32;
  if (hillshade)
  {
    _hillshadeIsAvailable = [(VKMapSnapshotCreator *)self _hillshadeIsAvailable];
  }

  else
  {
    _hillshadeIsAvailable = 0;
  }

  md::MapEngineSettings::set(v3, &v5, _hillshadeIsAvailable);
}

- (BOOL)showsHillshade
{
  v2 = *(self->_mapEngine.__ptr_ + 5242);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 32)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setShowsHiking:(BOOL)hiking withTopographicFeatures:(BOOL)features
{
  featuresCopy = features;
  hikingCopy = hiking;
  v20 = *MEMORY[0x1E69E9840];
  v7 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = "NO";
    if (hikingCopy)
    {
      v9 = "YES";
    }

    else
    {
      v9 = "NO";
    }

    v14 = 134218498;
    selfCopy = self;
    v17 = v9;
    v16 = 2080;
    if (featuresCopy)
    {
      v8 = "YES";
    }

    v18 = 2080;
    v19 = v8;
    _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "KMapSnapshotCreator: %p Set shows hiking: %s with topograpic features: %s", &v14, 0x20u);
  }

  v10 = hikingCopy && [(VKMapSnapshotCreator *)self _hikingIsAvailable];
  v11 = v10 & featuresCopy;
  v12 = *(self->_mapEngine.__ptr_ + 5242);
  LOBYTE(v14) = 33;
  md::MapEngineSettings::set(v12, &v14, v10);
  v13 = *(self->_mapEngine.__ptr_ + 5242);
  LOBYTE(v14) = 34;
  md::MapEngineSettings::set(v13, &v14, v11);
}

- (BOOL)showsTopographicFeatures
{
  v2 = *(self->_mapEngine.__ptr_ + 5242);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 34)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (BOOL)showsHiking
{
  v2 = *(self->_mapEngine.__ptr_ + 5242);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 33)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setShowsTintBands:(BOOL)bands
{
  bandsCopy = bands;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "false";
    if (bandsCopy)
    {
      v6 = "true";
    }

    v8 = 134218242;
    selfCopy = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p setShowsTintBands: %s", &v8, 0x16u);
  }

  v7 = *(self->_mapEngine.__ptr_ + 5242);
  LOBYTE(v8) = 11;
  md::MapEngineSettings::set(v7, &v8, bandsCopy);
}

- (BOOL)showsTintBands
{
  v2 = *(self->_mapEngine.__ptr_ + 5242);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 11)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setShowsBuildings:(BOOL)buildings
{
  buildingsCopy = buildings;
  v13 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "false";
    if (buildingsCopy)
    {
      v6 = "true";
    }

    v9 = 134218242;
    selfCopy = self;
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p setShowsBuildings: %s", &v9, 0x16u);
  }

  v7 = *(self->_mapEngine.__ptr_ + 5242);
  LOBYTE(v9) = 1;
  md::MapEngineSettings::set(v7, &v9, buildingsCopy);
  if (buildingsCopy && *(self->_mapEngine.__ptr_ + 42104) == 1)
  {
    v8 = *(self->_mapEngine.__ptr_ + 5242);
    LOBYTE(v9) = 24;
    md::MapEngineSettings::set(v8, &v9, 1);
  }
}

- (BOOL)showsBuildings
{
  v2 = *(self->_mapEngine.__ptr_ + 5242);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    if (*v3 == 1)
    {
      if (v3 != v4)
      {
        return *(v3 + 8) != 0;
      }

      return 0;
    }

    v3 += 16;
  }

  return 0;
}

- (void)setShowsLabels:(BOOL)labels
{
  labelsCopy = labels;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "false";
    if (labelsCopy)
    {
      v6 = "true";
    }

    v8 = 134218242;
    selfCopy = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p setShowsLabels: %s", &v8, 0x16u);
  }

  _labelSettings = [(VKMapSnapshotCreator *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsLabels(*(*_labelSettings + 24), *(*_labelSettings + 40), labelsCopy);
}

- (void)setShowsPhysicalFeatureLabels:(BOOL)labels
{
  labelsCopy = labels;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "false";
    if (labelsCopy)
    {
      v6 = "true";
    }

    v8 = 134218242;
    selfCopy = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p setShowPhysicalFeatureLabels: %s", &v8, 0x16u);
  }

  _labelSettings = [(VKMapSnapshotCreator *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsPhysicalFeatureLabels(*(*_labelSettings + 24), *(*_labelSettings + 40), labelsCopy);
}

- (void)setShowsContourLabels:(BOOL)labels
{
  labelsCopy = labels;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "false";
    if (labelsCopy)
    {
      v6 = "true";
    }

    v8 = 134218242;
    selfCopy = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p setShowsContourLabels: %s", &v8, 0x16u);
  }

  _labelSettings = [(VKMapSnapshotCreator *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsContourLabels(*(*_labelSettings + 24), *(*_labelSettings + 40), labelsCopy);
}

- (void)setShowsPointLabels:(BOOL)labels
{
  labelsCopy = labels;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "false";
    if (labelsCopy)
    {
      v6 = "true";
    }

    v8 = 134218242;
    selfCopy = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p setShowsPointLabels: %s", &v8, 0x16u);
  }

  _labelSettings = [(VKMapSnapshotCreator *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsPointLabels(*(*_labelSettings + 24), *(*_labelSettings + 40), labelsCopy);
}

- (void)setShowsRoadShields:(BOOL)shields
{
  shieldsCopy = shields;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "false";
    if (shieldsCopy)
    {
      v6 = "true";
    }

    v8 = 134218242;
    selfCopy = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p setShowsRoadShields: %s", &v8, 0x16u);
  }

  _labelSettings = [(VKMapSnapshotCreator *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsRoadShields(*(*_labelSettings + 24), *(*_labelSettings + 40), shieldsCopy);
}

- (void)setShowsRoadLabels:(BOOL)labels
{
  labelsCopy = labels;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "false";
    if (labelsCopy)
    {
      v6 = "true";
    }

    v8 = 134218242;
    selfCopy = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p setShowsRoadLabels: %s", &v8, 0x16u);
  }

  _labelSettings = [(VKMapSnapshotCreator *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsRoadLabels(*(*_labelSettings + 24), *(*_labelSettings + 40), labelsCopy);
}

- (void)setPointsOfInterestFilter:(id)filter
{
  filterCopy = filter;
  v8 = filterCopy;
  if (self->_pointsOfInterestFilter != filterCopy)
  {
    v6 = filterCopy;
    objc_storeStrong(&self->_pointsOfInterestFilter, filter);
    if (v6)
    {
      std::allocate_shared[abi:nn200100]<md::LabelCategoryFilter,std::allocator<md::LabelCategoryFilter>,GEOPOICategoryFilter * {__strong}&,0>();
    }

    v7[0] = 0;
    v7[1] = 0;
    md::LabelSettings_Presentation::setPointsOfInterestFilter([(VKMapSnapshotCreator *)self _labelSettings:0], v7);
  }
}

- (void)setShowsPointsOfInterest:(BOOL)interest
{
  interestCopy = interest;
  v12 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "false";
    if (interestCopy)
    {
      v6 = "true";
    }

    v8 = 134218242;
    selfCopy = self;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator: %p setShowsPointsOfInterest: %s", &v8, 0x16u);
  }

  _labelSettings = [(VKMapSnapshotCreator *)self _labelSettings];
  md::LabelSettings_Presentation::setShowsPOIs(*(*_labelSettings + 24), *(*_labelSettings + 40), interestCopy);
}

- (void)setAllowsBackgroundGPUSubmission
{
  v5 = +[VKSharedResourcesManager sharedResources];
  device = [v5 device];
  v3 = *(device + 8);
  v4 = *(device + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [*(v3 + 112) setBackgroundGPUPriority:2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

- (void)setLocalizeLabels:(BOOL)labels
{
  _labelSettings = [(VKMapSnapshotCreator *)self _labelSettings];
  v5 = *_labelSettings;
  v6 = *(*_labelSettings + 24);
  v7 = *(v5 + 40);

  md::LabelSettings_Presentation::setLocalizeLabels(v6, v7, labels);
}

- (void)_transferSettingsFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  [fromCopy edgeInsets];
  [toCopy setEdgeInsets:?];
  mapRegion = [fromCopy mapRegion];
  [fromCopy pitch];
  v8 = v7;
  [fromCopy yaw];
  [toCopy setMapRegion:mapRegion pitch:v8 yaw:v9];
}

- (unsigned)levelOfDetail
{
  v2 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->_mapEngine.__ptr_ + 5241) + 16), 0x2FED70A4459DFCA1uLL)[5] + 165);
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

- (void)setLevelOfDetail:(unsigned __int8)detail
{
  detailCopy = detail;
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->_mapEngine.__ptr_ + 5241) + 16), 0x2FED70A4459DFCA1uLL);
  if (v4)
  {
    v4 = v4[5];
  }

  if (detailCopy == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = detailCopy == 1;
  }

  md::StyleLogic::setLevelOfDetail(v4, v5, 0.0);
}

- (void)setNewInterfaceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->_mapEngine.__ptr_ + 5241) + 16), 0x2FED70A4459DFCA1uLL);
  if (v4)
  {
    v4 = *(v4 + 5);
  }

  md::StyleLogic::setNewInterfaceEnabled(v4, enabledCopy);
}

- (void)setEmphasis:(unsigned __int8)emphasis
{
  emphasisCopy = emphasis;
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->_mapEngine.__ptr_ + 5241) + 16), 0x2FED70A4459DFCA1uLL);
  if (v4)
  {
    v4 = v4[5];
  }

  if (emphasisCopy == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = emphasisCopy == 1;
  }

  md::StyleLogic::setEmphasis(v4, v5, 0.0);
}

- (void)setEdgeInsets:(VKEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  self->_edgeInsets = insets;
  activeCanvas = [(VKMapSnapshotCreator *)self activeCanvas];
  *&v9 = top;
  *&v10 = left;
  *&v11 = bottom;
  *&v12 = right;
  [activeCanvas setEdgeInsets:{v9, v10, v11, v12}];

  v13 = *(self->_mapEngine.__ptr_ + 5234);
  v14 = *(self->_mapEngine.__ptr_ + 5235);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v13[108] = top;
    v13[109] = left;
    v13[110] = bottom;
    v13[111] = right;

    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  else
  {
    v13[108] = top;
    v13[109] = left;
    v13[110] = bottom;
    v13[111] = right;
  }
}

- (void)setMapType:(int)type
{
  v3 = *&type;
  v15 = *MEMORY[0x1E69E9840];
  v5 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 134218240;
    selfCopy = self;
    v13 = 2048;
    v14 = v3;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "VKMapSnapshotCreator %p setMapType: %ld", &v11, 0x16u);
  }

  v6 = *(self->_mapEngine.__ptr_ + 5242);
  LOBYTE(v11) = 20;
  md::MapEngineSettings::set(v6, &v11, v3);
  activeCanvas = [(VKMapSnapshotCreator *)self activeCanvas];
  self->_mapType = v3;
  activeCanvas2 = [(VKMapSnapshotCreator *)self activeCanvas];
  if (activeCanvas2 != activeCanvas)
  {
    [(VKMapSnapshotCreator *)self _transferSettingsFrom:activeCanvas to:activeCanvas2];
  }

  v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->_mapEngine.__ptr_ + 5241) + 16), 0x2FED70A4459DFCA1uLL);
  if (v9)
  {
    v9 = v9[5];
  }

  md::StyleLogic::updateConfiguration(v9, self->_mapType);
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->_mapEngine.__ptr_ + 5241) + 16), 0x20A1ED17D78F322BuLL)[5] + 220) = self->_mapType;
  activeCanvas3 = [(VKMapSnapshotCreator *)self activeCanvas];
  [activeCanvas3 setMapType:v3];
}

- (CGSize)size
{
  [*(self->_mapEngine.__ptr_ + 5207) size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)addOverlay:(id)overlay
{
  [(VKMapImageCanvas *)self->_mapCanvas addOverlay:overlay];
  v4 = *(self->_mapEngine.__ptr_ + 5242);
  v6 = 5;
  overlays = [(VKMapImageCanvas *)self->_mapCanvas overlays];
  md::MapEngineSettings::set(v4, &v6, [overlays count] != 0);
}

- (void)clearResources
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_images.__begin_ != self->_images.__end_ || self->_ioSurfaces.__begin_ != self->_ioSurfaces.__end_)
  {
    v3 = GEOGetVectorKitVKMapSnapshotLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "Clear VKMapSnapshotCreator %p resources", &v10, 0xCu);
    }

    begin = self->_images.__begin_;
    end = self->_images.__end_;
    if (begin != end)
    {
      do
      {
        v6 = *begin++;
        CGImageRelease(v6);
      }

      while (begin != end);
      begin = self->_images.__begin_;
    }

    self->_images.__end_ = begin;
    v7 = self->_ioSurfaces.__begin_;
    v8 = self->_ioSurfaces.__end_;
    if (v7 != v8)
    {
      do
      {
        v9 = *v7++;
        CFRelease(v9);
      }

      while (v7 != v8);
      v7 = self->_ioSurfaces.__begin_;
    }

    self->_ioSurfaces.__end_ = v7;
  }
}

- (void)tileGroupDidChange
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKSnapshotCreator:%p] tileGroupDidChange", &v6, 0xCu);
  }

  ptr = self->_mapEngine.__ptr_;
  if (ptr)
  {
    md::HomeQueueScheduler::waitForSynchronization(*(ptr + 5920), "[VKMapSnapshotCreator tileGroupDidChange]");
  }

  v5 = +[VKSharedResourcesManager sharedResources];
  [v5 prune:0];
}

- (void)tileGroupWillChange
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[VKSnapshotCreator:%p] tileGroupWillChange", &v4, 0xCu);
  }
}

- (void)softDealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v14 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "Deleting VKMapSnapshotCreator memory: %p", &v14, 0xCu);
  }

  notificationObserver = self->_notificationObserver;
  self->_notificationObserver = 0;

  modernManager = [MEMORY[0x1E69A2478] modernManager];
  [modernManager closeServerConnection:1];

  modernLoader = [MEMORY[0x1E69A2610] modernLoader];
  v7 = GEOTileLoaderClientIdentifier();
  [modernLoader closeForClient:v7];

  completion = self->_completion;
  self->_completion = 0;

  mapCanvas = self->_mapCanvas;
  self->_mapCanvas = 0;

  routeContext = self->_routeContext;
  self->_routeContext = 0;

  routeOverlay = self->_routeOverlay;
  self->_routeOverlay = 0;

  pointsOfInterestFilter = self->_pointsOfInterestFilter;
  self->_pointsOfInterestFilter = 0;

  ptr = self->_mapEngine.__ptr_;
  self->_mapEngine.__ptr_ = 0;
  if (ptr)
  {
    md::MapEngineDeleter::operator()(ptr);
  }

  self->_didSoftDealloc = 1;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "Deallocating VKMapSnapshotCreator: %p", buf, 0xCu);
  }

  if (!self->_didSoftDealloc)
  {
    [(VKMapSnapshotCreator *)self softDealloc];
  }

  pointsOfInterestFilter = self->_pointsOfInterestFilter;
  self->_pointsOfInterestFilter = 0;

  displayStyles = self->_displayStyles;
  if (displayStyles)
  {
    free(displayStyles);
  }

  [(VKMapSnapshotCreator *)self clearResources];
  v6 = GEOGetVectorKitVKMapSnapshotLog();
  v7 = v6;
  signpostId = self->_signpostId;
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v7, OS_SIGNPOST_INTERVAL_END, signpostId, "MapSnapshotCreator", &unk_1B3514CAA, buf, 2u);
  }

  v9 = GEOGetVectorKitVKMapSnapshotLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_INFO, "Dealloc VKMapSnapshotCreator end", buf, 2u);
  }

  v10.receiver = self;
  v10.super_class = VKMapSnapshotCreator;
  [(VKMapSnapshotCreator *)&v10 dealloc];
}

- (VKMapSnapshotCreator)initWithSize:(CGSize)size scale:(double)scale homeQueue:(id)queue signpostId:(unint64_t)id mapType:(int)type mapDisplayStyles:(id *)styles mapDisplayStylesCount:(unint64_t)count auditToken:(id)self0 useMultisampling:(BOOL)self1 withError:(id *)self2
{
  height = size.height;
  width = size.width;
  v56 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  tokenCopy = token;
  if (error)
  {
    *error = 0;
  }

  v40.receiver = self;
  v40.super_class = VKMapSnapshotCreator;
  v20 = [(VKMapSnapshotCreator *)&v40 init];
  if (v20)
  {
    v21 = +[VKSharedResourcesManager sharedResources];
    v22 = [[VKManifestTileGroupObserverProxy alloc] initWithQueue:queueCopy];
    manifestTileGroupObserverProxy = v20->_manifestTileGroupObserverProxy;
    v20->_manifestTileGroupObserverProxy = v22;

    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v24 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = v20->_manifestTileGroupObserverProxy;
      buf = 134218240;
      *buf_4 = v20;
      v44 = 2048;
      v45 = *&v25;
      _os_log_impl(&dword_1B2754000, v24, OS_LOG_TYPE_INFO, "[VKSnapshotCreator:%p] Manifest observer - %p", &buf, 0x16u);
    }

    objc_initWeak(&location, v20);
    v26 = v20->_manifestTileGroupObserverProxy;
    objc_copyWeak(&to, &location);
    v55 = 0;
    v53 = &unk_1F2A20210;
    objc_moveWeak(&v54, &to);
    v55 = &v53;
    objc_destroyWeak(&to);
    [(VKManifestTileGroupObserverProxy *)v26 setDidChangeActiveTileGroup:&v53];
    std::__function::__value_func<void ()(GEOResourceManifestManager *,GEOActiveTileGroup *,GEOActiveTileGroup *)>::~__value_func[abi:nn200100](&v53);
    v27 = v20->_manifestTileGroupObserverProxy;
    objc_copyWeak(&from, &location);
    v52 = 0;
    v50 = &unk_1F2A20258;
    objc_moveWeak(&v51, &from);
    v52 = &v50;
    objc_destroyWeak(&from);
    [(VKManifestTileGroupObserverProxy *)v27 setWillChangeActiveTileGroup:&v50];
    std::__function::__value_func<void ()(GEOResourceManifestManager *)>::~__value_func[abi:nn200100](&v50);
    if ([v21 device] && (v28 = *(objc_msgSend(v21, "device") + 8)) != 0 && ((*(*v28 + 32))(v28) & 1) != 0)
    {
      if (width * scale >= 1.0 && queueCopy && height * scale >= 1.0 && scale >= 1.0 && *(*([v21 device] + 8) + 24) >= (fmax(width, height) * scale))
      {
        v20->_signpostId = id;
        v33 = GEOGetVectorKitVKMapSnapshotLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          buf = 134218752;
          *buf_4 = v20;
          v44 = 2048;
          v45 = height;
          v46 = 2048;
          scaleCopy3 = width;
          v48 = 2048;
          scaleCopy = scale;
          _os_log_impl(&dword_1B2754000, v33, OS_LOG_TYPE_INFO, "Creating VKMapSnapshotCreator: %p with height:%f width:%f contenteScale:%f", &buf, 0x2Au);
        }

        v34 = GEOGetVectorKitVKMapSnapshotLog();
        v35 = v34;
        signpostId = v20->_signpostId;
        if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
        {
          buf = 134218496;
          *buf_4 = height;
          v44 = 2048;
          v45 = width;
          v46 = 2048;
          scaleCopy3 = scale;
          _os_signpost_emit_with_name_impl(&dword_1B2754000, v35, OS_SIGNPOST_INTERVAL_BEGIN, signpostId, "MapSnapshotCreator", "height:%f width:%f contenteScale:%f", &buf, 0x20u);
        }

        v20->_timer._startTime.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        objc_copyWeak(&v41, &location);
        operator new();
      }

      v29 = GEOGetVectorKitVKMapSnapshotLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        buf = 134218496;
        *buf_4 = height;
        v44 = 2048;
        v45 = width;
        v46 = 2048;
        scaleCopy3 = scale;
        _os_log_impl(&dword_1B2754000, v29, OS_LOG_TYPE_ERROR, "Image size or content scale too small to produce an image: height:%f, width:%f, contentScale:%f", &buf, 0x20u);
      }

      if (!error)
      {
        goto LABEL_22;
      }

      v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.maps.snapshot" code:-2 userInfo:0];
    }

    else
    {
      v31 = GEOGetVectorKitVKMapSnapshotLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B2754000, v31, OS_LOG_TYPE_ERROR, "Not able to take a snapshot without valid metal device", &buf, 2u);
      }

      if (!error)
      {
        goto LABEL_22;
      }

      v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.maps.snapshot" code:-3 userInfo:0];
    }

    *error = v30;
LABEL_22:
    objc_destroyWeak(&location);
  }

  return 0;
}

- (void)initWithSize:scale:homeQueue:signpostId:mapType:mapDisplayStyles:mapDisplayStylesCount:auditToken:useMultisampling:withError:
{
  objc_destroyWeak((self + 8));

  JUMPOUT(0x1B8C62190);
}

+ (BOOL)supportsSharingThumbnails
{
  v2 = +[VKPlatform sharedPlatform];
  canMakeSharingThumbnails = [v2 canMakeSharingThumbnails];

  return canMakeSharingThumbnails;
}

@end