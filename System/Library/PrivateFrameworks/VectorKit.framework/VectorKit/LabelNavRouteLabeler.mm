@interface LabelNavRouteLabeler
- (BOOL)_addJunctionsForTile:(const void *)tile;
- (BOOL)_collideLabel:(id)label activeLabel:(id)activeLabel labelsToRemove:(id)remove;
- (BOOL)_findRouteOverlappingJunctionFrom:(int64_t)from routeJunctions:(void *)junctions lookBackward:(BOOL)backward firstOverlap:(int64_t *)overlap secondOverlap:(int64_t *)secondOverlap;
- (BOOL)_updateActiveRouteRange;
- (BOOL)needsDebugDraw;
- (LabelNavRouteLabeler)init;
- (RoadSignOrientationResolver)createRoadSignOrientationResolver:(id)resolver navContext:(NavContext *)context;
- (__n128)_addJunctionsForTile:;
- (id).cxx_construct;
- (unsigned)computeRoutePositionForPOIAtPixel:(const void *)pixel currentPosition:(unsigned __int8)position context:(NavContext *)context;
- (unsigned)orientationForRoadSign:(id)sign roadLabel:(id)label navContext:(NavContext *)context;
- (unsigned)resolveOrientation:(NavContext *)orientation road:(id)road currentOrientation:(unsigned __int8)currentOrientation;
- (void)_addJunctionsForTile:;
- (void)_addLabelsAtJunctions:(id)junctions withContext:(NavContext *)context maxLabelsToAdd:(unint64_t)add;
- (void)_addLabelsForJunctions:(id)junctions withContext:(NavContext *)context maxLabelsToAdd:(unint64_t)add useAllJunctions:(BOOL)allJunctions placeShieldsFrontToBack:(BOOL)back;
- (void)_addVisibleSigns;
- (void)_createOrUpdateLabelForRoad:(id)road isShield:(BOOL)shield navContext:(NavContext *)context hopOffsetDistance:(float)distance;
- (void)_dedupOffRouteRoads;
- (void)_generateCurrentRoadSignWithContext:(NavContext *)context;
- (void)_refreshGuidanceRoadNames;
- (void)_reloadRouteJunctions;
- (void)_tryAddLabel:(id)label navContext:(NavContext *)context labelCollisionEnabled:(BOOL)enabled;
- (void)_tryAddRoadSignForJunction:(id)junction navContext:(NavContext *)context labelCollisionEnabled:(BOOL)enabled;
- (void)_tryAddRoadSignForRoad:(id)road isShield:(BOOL)shield navContext:(NavContext *)context labelCollisionEnabled:(BOOL)enabled;
- (void)_updateCurrentRoadInfo;
- (void)_updatePreferredLabelPlacements;
- (void)_updateRoadStarts;
- (void)_updateRoadsInGuidance;
- (void)_updateUniqueOffRouteRoads;
- (void)clearSceneIsMemoryWarning:(BOOL)warning;
- (void)debugDraw:(id)draw overlayConsole:(void *)console navContext:(NavContext *)context;
- (void)drawNavOverlayDebugView:(void *)view navContext:(NavContext *)context;
- (void)drawRoadSignOrientationDebugView:(void *)view navContext:(NavContext *)context;
- (void)grabTilesFromScene:(const void *)scene;
- (void)layoutForDisplayWithNavContext:(NavContext *)context labels:(void *)labels;
- (void)layoutForStagingWithNavContext:(NavContext *)context avoidanceRects:(const void *)rects options:(const LabelUpdateOptions *)options;
- (void)prepareForLayoutForStaging;
- (void)setCurrentLocationText:(id)text;
- (void)setDebugDisableRoadSignLimit:(BOOL)limit;
- (void)setMaxVisibleRoadsigns:(unsigned int)roadsigns;
- (void)setRoute:(id)route;
- (void)setRouteUserOffset:(PolylineCoordinate)offset;
- (void)setStyleManager:(shared_ptr<gss::StylesheetManager<gss::PropertyID>>)manager;
- (void)styleManagerDidChange:(BOOL)change;
- (void)synchStagingWithDisplay;
@end

@implementation LabelNavRouteLabeler

- (id).cxx_construct
{
  *(self + 36) = 0xBF80000000000000;
  *(self + 72) = 0u;
  *(self + 14) = 0;
  *(self + 89) = 0;
  *(self + 12) = 0;
  *(self + 30) = 1065353216;
  *(self + 8) = 0u;
  *(self + 21) = 0;
  *(self + 145) = 0;
  *(self + 19) = 0;
  *(self + 44) = 1065353216;
  *(self + 25) = 0;
  *(self + 13) = 0u;
  *(self + 31) = 0;
  *(self + 232) = 0u;
  *(self + 428) = 0xBF80000000000000;
  *(self + 436) = 0xBF80000000000000;
  *(self + 456) = 0u;
  *(self + 504) = 0u;
  *(self + 68) = 0;
  *(self + 33) = 0u;
  *(self + 36) = 0u;
  *(self + 71) = self + 576;
  *(self + 600) = 0u;
  *(self + 74) = self + 600;
  *(self + 632) = 0u;
  *(self + 78) = self + 632;
  *(self + 81) = 0x7FEFFFFFFFFFFFFFLL;
  *(self + 41) = xmmword_1B33B0520;
  *(self + 84) = 0xFFEFFFFFFFFFFFFFLL;
  return self;
}

- (LabelNavRouteLabeler)init
{
  v25.receiver = self;
  v25.super_class = LabelNavRouteLabeler;
  v2 = [(LabelNavRouteLabeler *)&v25 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = *(v2 + 49);
    *(v2 + 49) = v3;

    *(v2 + 51) = -1;
    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__rehash<true>((v2 + 72), vcvtps_u32_f32(32.0 / *(v2 + 30)));
    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__rehash<true>((v2 + 128), vcvtps_u32_f32(32.0 / *(v2 + 44)));
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:32];
    v6 = *(v2 + 23);
    *(v2 + 23) = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = *(v2 + 34);
    *(v2 + 34) = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = *(v2 + 35);
    *(v2 + 35) = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v12 = *(v2 + 36);
    *(v2 + 36) = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = *(v2 + 33);
    *(v2 + 33) = v13;

    v15 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:16];
    v16 = *(v2 + 47);
    *(v2 + 47) = v15;

    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:16];
    v18 = *(v2 + 48);
    *(v2 + 48) = v17;

    v19 = [[VKLabelNavRoadGraph alloc] initWithJunctions:*(v2 + 23)];
    v20 = *(v2 + 24);
    *(v2 + 24) = v19;

    *(v2 + 20) = xmmword_1B33B0FE0;
    *(v2 + 21) = xmmword_1B33B1EC0;
    *(v2 + 22) = xmmword_1B33B1EB0;
    v2[473] = 0;
    v21 = *(v2 + 64);
    *(v2 + 63) = 0;
    *(v2 + 64) = 0;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    }

    v2[520] = 1;
    v2[560] = 0;
    v2[427] = 0;
    v23 = 0x3FC90FDB00000000;
    v24 = 1;
    geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::insert(v2 + 74, &v23);
    v23 = 0x40490FDB3FC90FDBLL;
    v24 = 1;
    geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::insert(v2 + 74, &v23);
    v23 = 0x4096CBE440490FDBLL;
    v24 = 0;
    geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::insert(v2 + 74, &v23);
    v23 = 0x40C90FDB4096CBE4;
    v24 = 0;
    geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::insert(v2 + 74, &v23);
    v23 = 0x3FC90FDB00000000;
    v24 = 0;
    geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::insert(v2 + 71, &v23);
    v23 = 0x40490FDB3FC90FDBLL;
    v24 = 0;
    geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::insert(v2 + 71, &v23);
    v23 = 0x4096CBE440490FDBLL;
    v24 = 1;
    geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::insert(v2 + 71, &v23);
    v23 = 0x40C90FDB4096CBE4;
    v24 = 1;
    geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::insert(v2 + 71, &v23);
  }

  return v2;
}

- (void)prepareForLayoutForStaging
{
  matchedPaths = self->_matchedPaths;
  self->_matchedPaths = 0;

  if (*&self->_pendingTiles.__table_.__max_load_factor_)
  {
    if ([(VKPolylineOverlay *)self->_route isSnappingForSceneTiles])
    {
      self->_isSnappingReady = 0;
    }

    else
    {
      routeRibbon = [(VKPolylineOverlay *)self->_route routeRibbon];
      renderRegion = [routeRibbon renderRegion];

      if (renderRegion)
      {
        snappingRegion = [renderRegion snappingRegion];
        v23 = 0;
        v24 = 0;
        v22 = &v23;
        v7 = *snappingRegion;
        if (*snappingRegion != snappingRegion + 8)
        {
          do
          {
            v8 = v23;
            v9 = &v23;
            if (v22 == &v23)
            {
              goto LABEL_13;
            }

            v10 = v23;
            v11 = &v23;
            if (v23)
            {
              do
              {
                v9 = v10;
                v10 = v10[1];
              }

              while (v10);
            }

            else
            {
              do
              {
                v9 = v11[2];
                v12 = *v9 == v11;
                v11 = v9;
              }

              while (v12);
            }

            if (md::MultiRectSetCompare::operator()((v9 + 4), (v7 + 4)))
            {
LABEL_13:
              if (!v8)
              {
                v27 = &v23;
LABEL_19:
                operator new();
              }

              v27 = v9;
              v13 = v9 + 1;
            }

            else
            {
              v13 = std::__tree<gm::Box<double,2>,md::MultiRectSetCompare,std::allocator<gm::Box<double,2>>>::__find_equal<gm::Box<double,2>>(&v22, &v27, (v7 + 4));
            }

            if (!*v13)
            {
              goto LABEL_19;
            }

            v14 = v7[1];
            if (v14)
            {
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v15 = v7[2];
                v12 = *v15 == v7;
                v7 = v15;
              }

              while (!v12);
            }

            v7 = v15;
          }

          while (v15 != (snappingRegion + 8));
        }

        v16 = *(snappingRegion + 24);
        v26 = *(snappingRegion + 40);
        v25 = v16;
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v22 = &v23;
        v25 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v26 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      }

      if (&self->_snappingRegion != &v22)
      {
        std::__tree<gm::Box<double,2>,md::MultiRectSetCompare,std::allocator<gm::Box<double,2>>>::__assign_multi<std::__tree_const_iterator<gm::Box<double,2>,std::__tree_node<gm::Box<double,2>,void *> *,long>>(&self->_snappingRegion, v22, &v23);
      }

      v17 = v26;
      self->_snappingRegion._enclosingRect._minimum = v25;
      self->_snappingRegion._enclosingRect._maximum = v17;
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v23);
      routeRibbon2 = [(VKPolylineOverlay *)self->_route routeRibbon];
      matchedSegments = [routeRibbon2 matchedSegments];
      v20 = [matchedSegments copy];
      v21 = self->_matchedPaths;
      self->_matchedPaths = v20;

      self->_isSnappingReady = 1;
    }
  }

  else
  {
    self->_isSnappingReady = 1;
  }
}

- (void)_addVisibleSigns
{
  begin = self->_activeSigns.__begin_;
  for (i = self->_activeSigns.__end_; begin != i; ++begin)
  {
    v5 = *begin;
    if (*(*begin + 26) == 1)
    {
      v6 = atomic_load((*(v5 + 8) + 286));
      v5 = *begin;
      if (v6)
      {
        v7 = *(*(v5 + 8) + 280);
        *(v5 + 27) = v7;
        if (v7 == 2)
        {
          v8 = 0;
        }

        else
        {
          *(v5 + 26) = 0;
          v8 = 1;
        }

        *(v5 + 24) = v8;
      }
    }

    if (*(v5 + 27) == 2)
    {
      std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::push_back[abi:nn200100](&self->_visibleSigns, begin);
    }
  }
}

- (void)synchStagingWithDisplay
{
  ptr = self->_currentRoadSign.__ptr_;
  v3 = 0.0;
  if (ptr && !self->_inOverviewMode)
  {
    v3 = *(ptr + 110);
  }

  self->_currentRoadSignPixelHeight = v3;
}

- (BOOL)needsDebugDraw
{
  v2 = +[VKDebugSettings sharedSettings];
  if ([v2 showNavLabelOverlay])
  {
    showNavLabelRouteAvoidanceOverlay = 1;
  }

  else
  {
    v4 = +[VKDebugSettings sharedSettings];
    if ([v4 enableNavRoadSignOrientationDebugging])
    {
      showNavLabelRouteAvoidanceOverlay = 1;
    }

    else
    {
      v5 = +[VKDebugSettings sharedSettings];
      showNavLabelRouteAvoidanceOverlay = [v5 showNavLabelRouteAvoidanceOverlay];
    }
  }

  return showNavLabelRouteAvoidanceOverlay;
}

- (void)drawNavOverlayDebugView:(void *)view navContext:(NavContext *)context
{
  v171 = *MEMORY[0x1E69E9840];
  v162 = -16776961;
  var3 = context->var3;
  var4 = context->var4;
  v7 = *(var3 + 266);
  v8 = *(var3 + 267);
  v9 = *(var4 + 13);
  v120 = *(context->var1 + 44);
  if (*(var3 + 8))
  {
    v122 = *(var4 + 12);
    v123 = *(var4 + 13);
  }

  else
  {
    v10 = *(var4 + 14);
    v167.f64[0] = *(var4 + 12);
    v167.f64[1] = v9;
    v168.f64[0] = v10;
    v157 = 0.0;
    v156 = 0.0;
    v158[0] = 0;
    geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(v167.f64, &v156);
    v11 = v157;
    v12 = tan(v156 * 0.5 + 0.785398163);
    v122 = v11 * 0.159154943 + 0.5;
    v123 = log(v12) * 0.159154943 + 0.5;
  }

  v160.f64[0] = geo::ConvexHull2<double>::boundingBox(*(var3 + 144), *(var3 + 145));
  v160.f64[1] = v13;
  v161.f64[0] = v14;
  v161.f64[1] = v15;
  route = self->_route;
  if (route)
  {
    routeRibbon = [(VKPolylineOverlay *)route routeRibbon];
    renderRegion = [routeRibbon renderRegion];

    if (renderRegion)
    {
      routeRibbon2 = [(VKPolylineOverlay *)self->_route routeRibbon];
      renderRegion2 = [routeRibbon2 renderRegion];
      snappingRegion = [renderRegion2 snappingRegion];

      v24 = *snappingRegion;
      v23 = snappingRegion + 1;
      v22 = v24;
      if (v24 != v23)
      {
        do
        {
          v25 = 0;
          v26 = &v160;
          v27 = 1;
          do
          {
            v28 = v27;
            v26->f64[0] = fmin(*&v22[v25 + 4], v26->f64[0]);
            v161.f64[v25] = fmax(v161.f64[v25], *&v22[v25 + 6]);
            v26 = &v160.f64[1];
            v25 = 1;
            v27 = 0;
          }

          while ((v28 & 1) != 0);
          v29 = v22[1];
          if (v29)
          {
            do
            {
              v30 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = v22[2];
              v31 = *v30 == v22;
              v22 = v30;
            }

            while (!v31);
          }

          v22 = v30;
        }

        while (v30 != v23);
      }
    }
  }

  for (i = self->_tiles.__table_.__first_node_.__next_; i; i = *i)
  {
    v33 = 0;
    v34 = i[2];
    v35 = v34 + 320;
    v36 = v34 + 336;
    v37 = &v160;
    v38 = 1;
    do
    {
      v39 = v38;
      v37->f64[0] = fmin(*(v35 + 8 * v33), v37->f64[0]);
      v161.f64[v33] = fmax(v161.f64[v33], *(v36 + 8 * v33));
      v37 = &v160.f64[1];
      v33 = 1;
      v38 = 0;
    }

    while ((v39 & 1) != 0);
  }

  v40 = vsubq_f64(v161, v160);
  v41 = fmax(v40.f64[0], v40.f64[1]) * 1.25;
  v159[0] = 0.0;
  v159[1] = v8 * 0.25;
  v159[2] = v7;
  v159[3] = v8 * 0.75;
  v42 = exp(v123 * 6.28318531 + -3.14159265);
  v43 = atan(v42);
  v44 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v43 * 114.591559 + -90.0);
  v167.f64[0] = v122;
  v167.f64[1] = v123;
  v163.n128_f64[0] = v41 / v44;
  v150 = v41 / v44;
  md::DebugConsoleMapRect::DebugConsoleMapRect(&v156, view, v159, &v167, v163.n128_f64, &v150);
  *(view + 24) = 0x80000000;
  v45 = *&v157;
  *(view + 1) = v157;
  *&v46 = ggl::DebugConsole::drawRectangleWithFill(view, v158, v45);
  v47 = self->_route;
  if (v47)
  {
    routeRibbon3 = [(VKPolylineOverlay *)v47 routeRibbon];
    renderRegion3 = [routeRibbon3 renderRegion];
    v50 = renderRegion3 == 0;

    if (!v50)
    {
      v155 = -16711936;
      v154 = -16777216;
      v153 = -1;
      v152 = -16776961;
      v51 = context->var3;
      v52 = *(v51 + 144);
      v53 = *v52;
      if (*(v51 + 145) - v52 < 0x11uLL)
      {
        v57 = *v52;
      }

      else
      {
        v54 = 1;
        do
        {
          v55 = vsubq_f64(v52[v54], v53);
          v167 = v53;
          v168 = v55;
          md::DebugConsoleMapRect::drawWorldSegment(&v156, &v167, &v155);
          v56 = context->var3;
          v52 = *(v56 + 144);
          v53 = v52[v54++];
        }

        while (v54 < (*(v56 + 145) - v52) >> 4);
        v57 = *v52;
      }

      v167 = v53;
      v168 = vsubq_f64(v57, v53);
      md::DebugConsoleMapRect::drawWorldSegment(&v156, &v167, &v155);
      routeRibbon4 = [(VKPolylineOverlay *)self->_route routeRibbon];
      renderRegion4 = [routeRibbon4 renderRegion];
      snappingRegion2 = [renderRegion4 snappingRegion];

      v63 = *snappingRegion2;
      v62 = snappingRegion2 + 1;
      v61 = v63;
      if (v63 != v62)
      {
        do
        {
          LODWORD(v167.f64[0]) = 1073742079;
          md::DebugConsoleMapRect::drawWorldRect(&v156, v61 + 2, &v167, 1);
          v64 = v61->n128_u64[1];
          if (v64)
          {
            do
            {
              v65 = v64;
              v64 = v64->n128_u64[0];
            }

            while (v64);
          }

          else
          {
            do
            {
              v65 = v61[1].n128_u64[0];
              v31 = *v65 == v61;
              v61 = v65;
            }

            while (!v31);
          }

          v61 = v65;
        }

        while (v65 != v62);
      }

      v151[1] = 0;
      v151[0] = 0;
      v150 = COERCE_DOUBLE(v151);
      v149[1] = 0;
      v149[0] = 0;
      v148 = v149;
      __p = 0;
      v146 = 0;
      v147 = 0;
      memset(v144, 0, sizeof(v144));
      routeRibbon5 = [(VKPolylineOverlay *)self->_route routeRibbon];
      obj = [routeRibbon5 matchedSegments];

      if ([obj countByEnumeratingWithState:v144 objects:v170 count:16])
      {
        v67 = **(&v144[0] + 1);
        [**(&v144[0] + 1) startRouteCoordinate];
        [v67 endRouteCoordinate];
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(1uLL);
      }

      std::__introsort<std::_ClassicAlgPolicy,[LabelNavRouteLabeler(Debug) drawNavOverlayDebugView:navContext:]::$_0 &,gm::Range<double> *,false>(0, 0, 0, 1, v68);
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      composedRoute = [(VKPolylineOverlay *)self->_route composedRoute];
      sections = [composedRoute sections];

      v70 = [sections countByEnumeratingWithState:&v140 objects:v169 count:16];
      if (v70)
      {
        v71 = *v141;
        do
        {
          for (j = 0; j != v70; ++j)
          {
            if (*v141 != v71)
            {
              objc_enumerationMutation(sections);
            }

            v73 = *(*(&v140 + 1) + 8 * j);
            if ([v73 pointCount] >= 2)
            {
              startPointIndex = [v73 startPointIndex];
              endPointIndex = [v73 endPointIndex];
              *&v139[3] = startPointIndex;
              *&v139[4] = endPointIndex;
              v139[0] = v139;
              v139[1] = v139;
              v139[2] = 0;
              md::MuninLabelingUtils::clipRange(&v167);
            }
          }

          v70 = [sections countByEnumeratingWithState:&v140 objects:v169 count:16];
        }

        while (v70);
      }

      for (k = self->_tiles.__table_.__first_node_.__next_; k; k = *k)
      {
        v77 = k[2];
        if (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(&self->_pendingTiles.__table_.__bucket_list_.__ptr_, v77))
        {
          md::DebugConsoleMapRect::drawWorldRect(&v156, v77 + 20, &v154, 0);
        }
      }

      for (m = &self->_pendingTiles.__table_.__first_node_; ; md::DebugConsoleMapRect::drawWorldRect(&v156, m[2].__next_ + 20, &v153, 0))
      {
        m = m->__next_;
        if (!m)
        {
          break;
        }
      }

      v168.f64[1] = 0.0;
      v167.f64[1] = 0.0;
      *&v167.f64[0] = &v167.f64[1];
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
      v79 = self->_visibleLabels;
      v80 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v135 objects:v166 count:16];
      if (v80)
      {
        v81 = *v136;
        do
        {
          for (n = 0; n != v80; ++n)
          {
            if (*v136 != v81)
            {
              objc_enumerationMutation(v79);
            }

            v83 = *(*(&v135 + 1) + 8 * n);
            navFeature = [v83 navFeature];
            routeOffset = [navFeature routeOffset];
            index = self->_routeUserOffset.index;
            if (index <= routeOffset && (index != routeOffset || self->_routeUserOffset.offset <= *(&routeOffset + 1)))
            {
              if ([v83 isJunctionLabel])
              {
                v87 = navFeature;
                v139[0] = v87;
                std::__tree<VKLabelNavJunction * {__strong},std::less<VKLabelNavJunction * {__strong}>,geo::allocator_adapter<VKLabelNavJunction * {__strong},mdm::zone_mallocator>>::__emplace_unique_key_args<VKLabelNavJunction * {__strong},VKLabelNavJunction * const {__strong}&>(&v167, v87, v139);
                v88 = *[v87 mercatorCoordinate];
                v89 = *([v87 mercatorCoordinate] + 8);
                v163.n128_u64[0] = v88;
                v163.n128_u64[1] = v89;
                md::DebugConsoleMapRect::drawWorldSymbol(&v156, &v163, 2, &v152);
              }

              else if ([v83 isRoadLabel])
              {
                v90 = navFeature;
                navJunctionA = [v90 navJunctionA];
                v139[0] = navJunctionA;
                if (navJunctionA)
                {
                  std::__tree<VKLabelNavJunction * {__strong},std::less<VKLabelNavJunction * {__strong}>,geo::allocator_adapter<VKLabelNavJunction * {__strong},mdm::zone_mallocator>>::__emplace_unique_key_args<VKLabelNavJunction * {__strong},VKLabelNavJunction * const {__strong}&>(&v167, navJunctionA, v139);
                  v92 = *[navJunctionA mercatorCoordinate];
                  v93 = *([navJunctionA mercatorCoordinate] + 8);
                  v163.n128_u64[0] = v92;
                  v163.n128_u64[1] = v93;
                  md::DebugConsoleMapRect::drawWorldSymbol(&v156, &v163, 2, &v152);
                }
              }
            }
          }

          v80 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v135 objects:v166 count:16];
        }

        while (v80);
      }

      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v94 = self->_junctions;
      v95 = [(NSMutableArray *)v94 countByEnumeratingWithState:&v131 objects:v165 count:16];
      if (v95)
      {
        v96 = *v132;
        do
        {
          for (ii = 0; ii != v95; ++ii)
          {
            if (*v132 != v96)
            {
              objc_enumerationMutation(v94);
            }

            v98 = *(*(&v131 + 1) + 8 * ii);
            v99 = v98;
            v139[0] = v98;
            v100 = v167.f64[1];
            if (*&v167.f64[1])
            {
              do
              {
                v101 = *(*&v100 + 32);
                if (v98 >= v101)
                {
                  if (v101 >= v98)
                  {
                    goto LABEL_81;
                  }

                  *&v100 += 8;
                }

                v100 = **&v100;
              }

              while (v100 != 0.0);
            }

            std::__tree<VKLabelNavJunction * {__strong},std::less<VKLabelNavJunction * {__strong}>,geo::allocator_adapter<VKLabelNavJunction * {__strong},mdm::zone_mallocator>>::__emplace_unique_key_args<VKLabelNavJunction * {__strong},VKLabelNavJunction * const {__strong}&>(&v167, v98, v139);
            routeOffset2 = [v99 routeOffset];
            v103 = self->_routeUserOffset.index;
            if (v103 <= routeOffset2 && (v103 != routeOffset2 || self->_routeUserOffset.offset <= *(&routeOffset2 + 1)))
            {
              v104 = *[v99 mercatorCoordinate];
              v105 = *([v99 mercatorCoordinate] + 8);
              v163.n128_u64[0] = v104;
              v163.n128_u64[1] = v105;
              md::DebugConsoleMapRect::drawWorldSymbol(&v156, &v163, 2, &v154);
            }

LABEL_81:
          }

          v95 = [(NSMutableArray *)v94 countByEnumeratingWithState:&v131 objects:v165 count:16];
        }

        while (v95);
      }

      v106 = 0;
      v107 = v154;
      while (1)
      {
        if (v106 == 2)
        {
          v108 = -256;
        }

        else
        {
          if (v106 != 1)
          {
            LODWORD(v139[0]) = v107;
            goto LABEL_90;
          }

          v108 = -16711681;
        }

        LODWORD(v139[0]) = v108;
LABEL_90:
        v109 = [(VKLabelNavRoadGraph *)self->_roadGraph junctionListForDepth:v106];
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v110 = v109;
        v111 = [v110 countByEnumeratingWithState:&v127 objects:v164 count:16];
        if (v111)
        {
          v112 = *v128;
          do
          {
            for (jj = 0; jj != v111; ++jj)
            {
              if (*v128 != v112)
              {
                objc_enumerationMutation(v110);
              }

              v114 = *(*(&v127 + 1) + 8 * jj);
              v115 = v167.f64[1];
              if (*&v167.f64[1])
              {
                do
                {
                  v116 = *(*&v115 + 32);
                  if (v114 >= v116)
                  {
                    if (v116 >= v114)
                    {
                      goto LABEL_101;
                    }

                    *&v115 += 8;
                  }

                  v115 = **&v115;
                }

                while (v115 != 0.0);
              }

              v117 = *[*(*(&v127 + 1) + 8 * jj) mercatorCoordinate];
              v118 = *([v114 mercatorCoordinate] + 8);
              v163.n128_u64[0] = v117;
              v163.n128_u64[1] = v118;
              md::DebugConsoleMapRect::drawWorldSymbol(&v156, &v163, 0, v139);
LABEL_101:
              ;
            }

            v111 = [v110 countByEnumeratingWithState:&v127 objects:v164 count:16];
          }

          while (v111);
        }

        if (++v106 == 3)
        {
          std::__tree<VKLabelNavJunction * {__strong},std::less<VKLabelNavJunction * {__strong}>,geo::allocator_adapter<VKLabelNavJunction * {__strong},mdm::zone_mallocator>>::destroy(*&v167.f64[1]);
          if (__p)
          {
            operator delete(__p);
          }

          std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(v149[0]);
          std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::destroy(v151[0]);
          break;
        }
      }
    }
  }

  v119.n128_f64[0] = v122;
  v119.n128_f64[1] = v123;
  v167.f64[0] = *(context->var3 + 105);
  md::DebugConsoleMapRect::drawWorldArrow(&v156, v167.f64, &v162, v119, v120 * 22.0, v120 * 12.0);
}

- (void)drawRoadSignOrientationDebugView:(void *)view navContext:(NavContext *)context
{
  v5 = 0;
  v140 = *MEMORY[0x1E69E9840];
  v6 = context->var3 + 864;
  v7 = &v136;
  do
  {
    v8 = 0;
    v9 = v6;
    do
    {
      v10 = *v9;
      v9 += 4;
      *(v7 + v8) = v10;
      v8 += 8;
    }

    while (v8 != 32);
    ++v5;
    v7 += 2;
    v6 += 8;
  }

  while (v5 != 4);
  [(VKLabelNavRoadGraph *)self->_roadGraph unitHeading:gm::Matrix<double];
  *&v136 = v11;
  *(&v136 + 1) = v12;
  v137 = 0;
  v13 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v138, &v136);
  v15 = v14;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  obj = self->_visibleLabels;
  v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v132 objects:v139 count:16];
  if (v16)
  {
    v17 = v13;
    v18 = v15;
    v19 = 1.0 / sqrtf((v17 * v17) + (v18 * v18));
    v113 = *v133;
    *&v107 = (v19 * v18) * 40.0;
    *(&v107 + 1) = (v19 * v17) * 40.0;
    v20 = 10.0;
    do
    {
      v114 = v16;
      for (i = 0; i != v114; ++i)
      {
        if (*v133 != v113)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v132 + 1) + 8 * i);
        navFeature = [v22 navFeature];
        routeOffset = [navFeature routeOffset];
        index = self->_routeUserOffset.index;
        if (index <= routeOffset && (index != routeOffset || self->_routeUserOffset.offset <= *(&routeOffset + 1)) && *[v22 label])
        {
          label = [v22 label];
          v27 = *label;
          v28 = *(*label + 160);
          if (v28)
          {
            (*(*v28 + 56))(v28);
          }

          else
          {
            v29 = v27[14];
            v30 = v27[15];
            v31 = v27[16];
          }

          *&v129 = v29;
          *(&v129 + 1) = v30;
          v130 = v31;
          var3 = context->var3;
          *&v136 = md::NavContext::worldPoint(*(var3 + 8), &v129, *(var3 + 13));
          *(&v136 + 1) = v33;
          v137 = v34;
          md::LabelLayoutContext::projectPointToPixel(var3, &v136, &v131);
          v112 = navFeature;
          if ([v22 isRoadLabel])
          {
            if (([v112 isAwayFromRoute] & 1) == 0)
            {
              navJunctionA = [v112 navJunctionA];
              outgoingRoad = [navJunctionA outgoingRoad];
              v37 = outgoingRoad == 0;

              if (!v37)
              {
                [v112 direction2D];
                *&v136 = v38;
                *(&v136 + 1) = v39;
                v137 = 0;
                v40 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v138, &v136);
                v42 = v41;
                navJunctionA2 = [v112 navJunctionA];
                mercatorCoordinate = [navJunctionA2 mercatorCoordinate];
                v129 = *mercatorCoordinate;
                v130 = *(mercatorCoordinate + 16);

                v45 = context->var3;
                *&v136 = md::NavContext::worldPoint(*(v45 + 8), &v129, *(v45 + 13));
                *(&v136 + 1) = v46;
                v137 = v47;
                md::LabelLayoutContext::projectPointToPixel(v45, &v136, &v128);
                v48 = exp(*(&v129 + 1) * 6.28318531 + -3.14159265);
                v49 = atan(v48);
                v50 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v49 * 114.591559 + -90.0);
                navJunctionA3 = [v112 navJunctionA];
                outgoingRoad2 = [navJunctionA3 outgoingRoad];
                [outgoingRoad2 direction3D];
                v53 = 0;
                v54 = v40;
                v55 = v42;
                v56 = 1.0 / sqrtf((v54 * v54) + (v55 * v55));
                v57 = v56 * v54;
                v58 = v56 * v55;
                v122 = __PAIR64__(v60, v59);
                v123 = v61;
                do
                {
                  *(&v136 + v53) = *(&v122 + v53) * v20;
                  v53 += 4;
                }

                while (v53 != 12);
                v62 = 0;
                v124 = v136;
                v125 = DWORD2(v136);
                v63 = v50;
                do
                {
                  *(&v136 + v62 * 4) = v124.f32[v62] * v63;
                  ++v62;
                }

                while (v62 != 3);
                v64 = 0;
                *&v120 = v136;
                DWORD2(v120) = DWORD2(v136);
                do
                {
                  *(&v126 + v64) = *(&v120 + v64);
                  ++v64;
                }

                while (v64 != 3);
                for (j = 0; j != 24; j += 8)
                {
                  *(&v136 + j) = *(&v126 + j) + *(&v129 + j);
                }

                v66 = v136;
                v67 = v137;

                navJunctionA4 = [v112 navJunctionA];
                incomingRoad = [navJunctionA4 incomingRoad];
                [incomingRoad direction3D];
                v70 = 0;
                v122 = __PAIR64__(v72, v71);
                v123 = v73;
                do
                {
                  *(&v136 + v70) = *(&v122 + v70) * v20;
                  v70 += 4;
                }

                while (v70 != 12);
                v74 = 0;
                v124 = v136;
                v125 = DWORD2(v136);
                do
                {
                  *(&v136 + v74 * 4) = v124.f32[v74] * v63;
                  ++v74;
                }

                while (v74 != 3);
                v75 = 0;
                *&v120 = v136;
                DWORD2(v120) = DWORD2(v136);
                do
                {
                  *(&v126 + v75) = *(&v120 + v75);
                  ++v75;
                }

                while (v75 != 3);
                for (k = 0; k != 24; k += 8)
                {
                  *(&v136 + k) = *(&v126 + k) + *(&v129 + k);
                }

                v77 = v137;
                v118 = v136;

                v126 = v66;
                v127 = v67;
                v120 = v118;
                v121 = v77;
                v78 = context->var3;
                v79 = *(v78 + 13);
                v80 = *(v78 + 8);
                *&v136 = md::NavContext::worldPoint(v80, &v126, v79);
                *(&v136 + 1) = v81;
                v137 = v82;
                md::LabelLayoutContext::projectPointToPixel(v78, &v136, &v124);
                *&v136 = md::NavContext::worldPoint(v80, &v120, v79);
                *(&v136 + 1) = v83;
                v137 = v84;
                md::LabelLayoutContext::projectPointToPixel(v78, &v136, &v122);
                v85 = v128;
                *(view + 1) = v128;
                ggl::DebugConsole::drawSymbol(view, 2);
                *(view + 1) = v85;
                v87 = ggl::DebugConsole::drawLine(view, &v124, v86);
                *(view + 1) = v85;
                *&v88 = ggl::DebugConsole::drawLine(view, &v122, v87);
                [(LabelNavRouteLabeler *)self createRoadSignOrientationResolver:v112 navContext:context, v88];
                v119 = v131.f32[1] + -40.0;
                v115 = v131.f32[0] + -40.0;
                v116 = v131.f32[0];
                v89 = v131.f32[1] + -80.0;
                v108 = v58;
                v109 = v57;
                v90 = atan2f(v58, v57);
                for (m = 0; m != 20; ++m)
                {
                  v92 = 0;
                  v93 = v115 + (4 * m);
                  v94 = v93 - v116;
                  v95 = v93 + -2.0;
                  v96 = v93 + 2.0;
                  do
                  {
                    v97 = v89 + v92;
                    v98 = 1.0 / sqrtf((v94 * v94) + ((v97 - v119) * (v97 - v119)));
                    v99 = atan2f(v98 * (v97 - v119), v98 * v94);
                    v100 = fmod((v99 - v90) + 6.28318531, 6.28318531);
                    v101 = fmod(v100 + 6.28318531, 6.28318531);
                    v102 = fmodf(v101, 6.2832);
                    v103 = fmodf(v102 + 6.2832, 6.2832);
                    v104 = v136;
                    v105 = geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::find(v136, v103);
                    if ((v104 + 8) == v105 || (*(&v136 + 2) + *(v105 + 7)) > v103 || (*(v105 + 8) - *(&v136 + 2)) < v103)
                    {
                      v106 = -16777216;
                    }

                    else if (*(v105 + 36))
                    {
                      v106 = -65536;
                    }

                    else
                    {
                      v106 = -16776961;
                    }

                    *(view + 24) = v106;
                    *&v126 = v95;
                    *(&v126 + 1) = v97 + -2.0;
                    *(&v126 + 2) = v96;
                    *(&v126 + 3) = v97 + 2.0;
                    *(view + 2) = v95;
                    *(view + 3) = v97 + -2.0;
                    ggl::DebugConsole::drawRectangleWithFill(view, &v126 + 2, v97 + -2.0);
                    v92 += 4;
                  }

                  while (v92 != 80);
                }

                *(view + 24) = -1;
                *&v126 = v116 + *(&v107 + 1);
                *(&v126 + 1) = v119 + *&v107;
                *(view + 2) = v116;
                *(view + 3) = v119;
                ggl::DebugConsole::drawLine(view, &v126, v116 + *(&v107 + 1));
                *(view + 24) = -16711681;
                *&v126 = v116 + (v109 * 40.0);
                *(&v126 + 1) = v119 + (v108 * 40.0);
                *(view + 2) = v116;
                *(view + 3) = v119;
                ggl::DebugConsole::drawLine(view, &v126, v119 + (v108 * 40.0));
                v20 = 10.0;
              }
            }
          }
        }
      }

      v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v132 objects:v139 count:16];
    }

    while (v16);
  }
}

- (void)debugDraw:(id)draw overlayConsole:(void *)console navContext:(NavContext *)context
{
  drawCopy = draw;
  v8 = +[VKDebugSettings sharedSettings];
  showNavLabelOverlay = [v8 showNavLabelOverlay];

  if (showNavLabelOverlay)
  {
    [(LabelNavRouteLabeler *)self drawNavOverlayDebugView:console navContext:context];
  }

  v10 = +[VKDebugSettings sharedSettings];
  enableNavRoadSignOrientationDebugging = [v10 enableNavRoadSignOrientationDebugging];

  if (enableNavRoadSignOrientationDebugging)
  {
    [(LabelNavRouteLabeler *)self drawRoadSignOrientationDebugView:console navContext:context];
  }

  v12 = +[VKDebugSettings sharedSettings];
  showNavLabelRouteAvoidanceOverlay = [v12 showNavLabelRouteAvoidanceOverlay];

  if (showNavLabelRouteAvoidanceOverlay)
  {
    [(VKLabelNavRoadGraph *)self->_roadGraph debugDraw:drawCopy overlayConsole:console navContext:context];
  }
}

- (unsigned)computeRoutePositionForPOIAtPixel:(const void *)pixel currentPosition:(unsigned __int8)position context:(NavContext *)context
{
  if (self->_isOnRoute)
  {
    return [(VKLabelNavRoadGraph *)self->_roadGraph computeRoutePositionForPOIAtPixel:pixel currentPosition:position context:context];
  }

  else
  {
    return 9;
  }
}

- (BOOL)_updateActiveRouteRange
{
  v56[4] = *MEMORY[0x1E69E9840];
  v50 = 0;
  v51 = &v50;
  v52 = 0x5012000000;
  v53 = __Block_byref_object_copy__26788;
  v54 = __Block_byref_object_dispose__26789;
  v55 = "";
  memset(v56, 0, 24);
  v49[0] = 0;
  v49[1] = v49;
  v2.n128_u64[0] = 0x4012000000;
  v49[2] = 0x4012000000;
  v49[3] = __Block_byref_object_copy__18_26791;
  v49[4] = __Block_byref_object_dispose__19_26792;
  v49[5] = "";
  v49[6] = 0xBF80000000000000;
  next = self->_tiles.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      v5 = *(*(next[2] + 24) + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      composedRoute = [(VKPolylineOverlay *)self->_route composedRoute];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __47__LabelNavRouteLabeler__updateActiveRouteRange__block_invoke;
      v48[3] = &unk_1E7B39450;
      v48[4] = v49;
      v48[5] = &v50;
      v48[6] = next + 2;
      [composedRoute forEachSnappedPath:v48];

      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      next = *next;
    }

    while (next);
    v7 = v51;
    v8 = v51[6];
  }

  else
  {
    v8 = 0;
    v7 = &v50;
  }

  v9 = v7[7];
  v10 = 126 - 2 * __clz((v9 - v8) >> 4);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,RouteJunctionInfo *,false>(v8, v9, v11, 1, v2);
  v12 = v51;
  v14 = v51[6];
  v13 = v51[7];
  if (v14 == v13)
  {
    v19 = v51[6];
LABEL_23:
    if (v19 != v13)
    {
      v12[7] = v19;
      v13 = v12[7];
    }
  }

  else
  {
    v15 = v14 - 16;
    while (v15 + 32 != v13)
    {
      v16 = *(v15 + 24);
      v17 = *(v15 + 40);
      v15 += 16;
      if (v16 == v17)
      {
        v18 = v15 + 32;
        if (v15 + 32 != v13)
        {
          do
          {
            if (*(v15 + 8) != *(v18 + 8))
            {
              *(v15 + 16) = *v18;
              v15 += 16;
            }

            v18 += 16;
          }

          while (v18 != v13);
          v14 = v12[6];
          v13 = v12[7];
        }

        v19 = v15 + 16;
        goto LABEL_23;
      }
    }
  }

  v20 = (v13 - v14) >> 4;
  if (v20 < 2)
  {
    if (!self->_useRouteSubrange)
    {
      goto LABEL_65;
    }

    goto LABEL_61;
  }

  if (!self->_isOnRoute)
  {
    v31 = 0;
    goto LABEL_45;
  }

  index = self->_routeUserOffset.index;
  offset = self->_routeUserOffset.offset;
  do
  {
    v23 = v20 >> 1;
    v24 = v14 + 16 * (v20 >> 1);
    if (*v24 != index)
    {
      if (*v24 >= index)
      {
        goto LABEL_36;
      }

LABEL_35:
      v14 = v24 + 16;
      v23 = v20 + ~v23;
      goto LABEL_36;
    }

    v25 = *(v24 + 4);
    if (vabds_f32(v25, offset) >= 0.00000011921 && v25 < offset)
    {
      goto LABEL_35;
    }

LABEL_36:
    v20 = v23;
  }

  while (v23);
  v27 = v12[6];
  v28 = (v14 - v27) >> 4;
  if (v28 <= 1)
  {
    v28 = 1;
  }

  v29 = v28 - 1;
  v30 = ((v13 - v27) >> 4) - 1;
  if (v29 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v29;
  }

LABEL_45:
  v46 = 0;
  v47 = 0;
  v32 = [(LabelNavRouteLabeler *)self _findRouteOverlappingJunctionFrom:v31 routeJunctions:v12 + 6 lookBackward:1 firstOverlap:&v47 secondOverlap:&v46];
  if (v32)
  {
    if (v47 + 1 < v46)
    {
      v33 = v47 + 1;
    }

    else
    {
      v33 = v46;
    }

    v34 = (v51[6] + 16 * v33);
    v35 = *v34;
    v36 = *(v34 + 1);
  }

  else
  {
    v35 = 0;
    v36 = 0.0;
  }

  v44 = 0;
  v45 = 0;
  v37 = [(LabelNavRouteLabeler *)self _findRouteOverlappingJunctionFrom:v31 routeJunctions:v51 + 6 lookBackward:0 firstOverlap:&v45 secondOverlap:&v44];
  if (v37)
  {
    v38 = (v51[6] + 16 * v45);
    v39 = *v38;
    v40 = *(v38 + 1);
  }

  else
  {
    v40 = 0.0;
    v39 = -1;
  }

  v41 = v32 || v37;
  if (!self->_useRouteSubrange)
  {
    if (!v41)
    {
      goto LABEL_65;
    }

    v42 = 1;
    self->_useRouteSubrange = 1;
    self->_routeSubrangeEnd.index = v39;
    self->_routeSubrangeEnd.offset = v40;
    self->_routeSubrangeStart.index = v35;
LABEL_64:
    self->_routeSubrangeStart.offset = v36;
    goto LABEL_66;
  }

  if (!v41)
  {
LABEL_61:
    self->_useRouteSubrange = 0;
    v42 = 1;
    goto LABEL_66;
  }

  if (self->_routeSubrangeEnd.index != v39 || vabds_f32(self->_routeSubrangeEnd.offset, v40) >= 0.00000011921 || self->_routeSubrangeStart.index != v35 || vabds_f32(self->_routeSubrangeStart.offset, v36) >= 0.00000011921)
  {
    self->_routeSubrangeEnd.index = v39;
    self->_routeSubrangeEnd.offset = v40;
    self->_routeSubrangeStart.index = v35;
    v42 = 1;
    goto LABEL_64;
  }

LABEL_65:
  v42 = 0;
LABEL_66:
  _Block_object_dispose(v49, 8);
  _Block_object_dispose(&v50, 8);
  std::vector<RouteJunctionInfo,geo::allocator_adapter<RouteJunctionInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v56);
  return v42;
}

void __47__LabelNavRouteLabeler__updateActiveRouteRange__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [a2 edges];
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        [v7 mapEdge];
        v8 = v22[2];
        v24 = v22[1];
        v25 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v9 = *(**(a1 + 48) + 24);
        v10 = *v9;
        v11 = v9[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = VectorTileMapper::mapNodeJunctionToTile(&v24, v10);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v23);
        }

        v13 = [v7 clippedFront];
        if (v12)
        {
          v14 = v13;
        }

        else
        {
          v14 = 1;
        }

        if ((v14 & 1) == 0)
        {
          *(*(*(a1 + 32) + 8) + 56) = v12;
          if (*(*(*(a1 + 32) + 8) + 56))
          {
            *(*(*(a1 + 32) + 8) + 48) = [v7 routeOffsetA];
            std::vector<RouteJunctionInfo,geo::allocator_adapter<RouteJunctionInfo,mdm::zone_mallocator>>::push_back[abi:nn200100]((*(*(a1 + 40) + 8) + 48), (*(*(a1 + 32) + 8) + 48));
          }
        }

        [v7 mapEdge];
        v15 = v22[4];
        v24 = v22[3];
        v25 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = *(**(a1 + 48) + 24);
        v17 = *v16;
        v18 = v16[1];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v19 = VectorTileMapper::mapNodeJunctionToTile(&v24, v17);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }

        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v15);
        }

        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v23);
        }

        v20 = [v7 clippedBack];
        if (v19)
        {
          v21 = v20;
        }

        else
        {
          v21 = 1;
        }

        if ((v21 & 1) == 0)
        {
          *(*(*(a1 + 32) + 8) + 56) = v19;
          if (*(*(*(a1 + 32) + 8) + 56))
          {
            *(*(*(a1 + 32) + 8) + 48) = [v7 routeOffsetB];
            std::vector<RouteJunctionInfo,geo::allocator_adapter<RouteJunctionInfo,mdm::zone_mallocator>>::push_back[abi:nn200100]((*(*(a1 + 40) + 8) + 48), (*(*(a1 + 32) + 8) + 48));
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }
}

- (BOOL)_findRouteOverlappingJunctionFrom:(int64_t)from routeJunctions:(void *)junctions lookBackward:(BOOL)backward firstOverlap:(int64_t *)overlap secondOverlap:(int64_t *)secondOverlap
{
  fromCopy = from;
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = 0;
  *v29 = 0;
  *&v29[23] = 0;
  *&v29[7] = 0;
  v30 = 1065353216;
  if (!backward)
  {
    v15 = from + 1;
    v16 = *junctions;
    if (from + 1 < ((*(junctions + 1) - *junctions) >> 4))
    {
      v17 = 16 * from + 24;
      while (1)
      {
        v18 = *(v16 + v17);
        v25 = v18;
        v19 = std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,mdm::zone_mallocator>>::find<GeoCodecsConnectivityJunction *>(v27, v28, v18);
        if (v19)
        {
          break;
        }

        v26 = &v25;
        std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,mdm::zone_mallocator>>::__emplace_unique_key_args<GeoCodecsConnectivityJunction *,std::piecewise_construct_t const&,std::tuple<GeoCodecsConnectivityJunction * const&>,std::tuple<>>(&v27, v18, &v26)[3] = v15++;
        v16 = *junctions;
        v17 += 16;
        if (v15 >= (*(junctions + 1) - *junctions) >> 4)
        {
          goto LABEL_12;
        }
      }

      *overlap = v19[3];
      *secondOverlap = v15;
      goto LABEL_15;
    }

LABEL_12:
    v20 = 0;
    goto LABEL_16;
  }

  if (from < 0)
  {
    goto LABEL_12;
  }

  v11 = (16 * from) | 8;
  while (1)
  {
    v12 = *(*junctions + v11);
    v25 = v12;
    v13 = std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,mdm::zone_mallocator>>::find<GeoCodecsConnectivityJunction *>(v27, v28, v12);
    if (v13)
    {
      break;
    }

    v26 = &v25;
    std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,mdm::zone_mallocator>>::__emplace_unique_key_args<GeoCodecsConnectivityJunction *,std::piecewise_construct_t const&,std::tuple<GeoCodecsConnectivityJunction * const&>,std::tuple<>>(&v27, v12, &v26)[3] = fromCopy;
    v11 -= 16;
    if (fromCopy-- < 1)
    {
      goto LABEL_12;
    }
  }

  *overlap = fromCopy;
  *secondOverlap = v13[3];
LABEL_15:
  v20 = 1;
LABEL_16:
  std::__hash_table<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::__unordered_map_hasher<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::hash<GeoCodecsConnectivityJunction *>,std::equal_to<GeoCodecsConnectivityJunction *>,true>,std::__unordered_map_equal<GeoCodecsConnectivityJunction *,std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,std::equal_to<GeoCodecsConnectivityJunction *>,std::hash<GeoCodecsConnectivityJunction *>,true>,geo::allocator_adapter<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,mdm::zone_mallocator>>::__deallocate_node(*&v29[7]);
  v22 = v27;
  v27 = 0;
  if (v22)
  {
    v23 = mdm::zone_mallocator::instance(v21);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<GeoCodecsConnectivityJunction *,long>,void *> *> *>(v23, v22);
  }

  return v20;
}

- (void)setCurrentLocationText:(id)text
{
  textCopy = text;
  v6 = textCopy;
  if (self->_currentLocationText != textCopy)
  {
    v9 = textCopy;
    v7 = [(NSString *)textCopy isEqualToString:?];
    v6 = v9;
    if (!v7)
    {
      objc_storeStrong(&self->_currentLocationText, text);
      v6 = v9;
      cntrl = self->_currentRoadSign.__cntrl_;
      self->_currentRoadSign.__ptr_ = 0;
      self->_currentRoadSign.__cntrl_ = 0;
      if (cntrl)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
        v6 = v9;
      }
    }
  }
}

- (void)_updateCurrentRoadInfo
{
  if (self->_isOnRoute)
  {
    currentRoadNameIndex = self->_currentRoadNameIndex;
    if (currentRoadNameIndex < [(NSMutableArray *)self->_routeRoadInfos count]- 1)
    {
      while (1)
      {
        v4 = currentRoadNameIndex + 1;
        v14 = [(NSMutableArray *)self->_routeRoadInfos objectAtIndexedSubscript:currentRoadNameIndex + 1];
        routeOffset = [v14 routeOffset];
        index = self->_routeUserOffset.index;
        if (index < routeOffset)
        {
          break;
        }

        if (index == routeOffset)
        {
          v7 = *(&routeOffset + 1);
          offset = self->_routeUserOffset.offset;

          if (offset < v7)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }

        ++currentRoadNameIndex;
        if (v4 >= [(NSMutableArray *)self->_routeRoadInfos count]- 1)
        {
          goto LABEL_14;
        }
      }
    }

LABEL_14:
    if (currentRoadNameIndex != self->_currentRoadNameIndex)
    {
      self->_currentRoadNameIndex = currentRoadNameIndex;
      v10 = [(NSMutableArray *)self->_routeRoadInfos objectAtIndexedSubscript:currentRoadNameIndex];
      name = [v10 name];

      currentRoadName = self->_currentRoadName;
      if (currentRoadName != name && ![(NSString *)currentRoadName isEqualToString:?])
      {
        [(LabelNavRouteLabeler *)self setCurrentRoadName:name];
        v12 = [(NSMutableArray *)self->_routeRoadInfos objectAtIndexedSubscript:self->_currentRoadNameIndex];
        shieldGroup = [v12 shieldGroup];
        [(LabelNavRouteLabeler *)self setCurrentShieldGroup:shieldGroup];
      }

      MEMORY[0x1EEE66BE0]();
    }
  }

  else
  {
    cntrl = self->_currentRoadSign.__cntrl_;
    self->_currentRoadSign.__ptr_ = 0;
    self->_currentRoadSign.__cntrl_ = 0;
    if (cntrl)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }
  }
}

- (void)_dedupOffRouteRoads
{
  v63 = *MEMORY[0x1E69E9840];
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = self->_junctions;
  v2 = [(NSMutableArray *)obj countByEnumeratingWithState:&v47 objects:v62 count:16];
  if (v2)
  {
    v37 = *v48;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v48 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v47 + 1) + 8 * i);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v40 = v3;
        roads = [v3 roads];
        v4 = [roads countByEnumeratingWithState:&v43 objects:v61 count:16];
        if (v4)
        {
          v5 = *v44;
          do
          {
            for (j = 0; j != v4; ++j)
            {
              if (*v44 != v5)
              {
                objc_enumerationMutation(roads);
              }

              v7 = *(*(&v43 + 1) + 8 * j);
              if (([v7 isOnRoute] & 1) == 0 && objc_msgSend(v7, "roadHasName") && (objc_msgSend(v7, "areLabelsDisabled") & 1) == 0)
              {
                [v7 setSuppressRoadSignIfDeduped:0];
                name = [v7 name];
                v9 = name;
                uTF8String = [name UTF8String];
                v11 = strlen(uTF8String);
                if (v11 >= 0x7FFFFFFFFFFFFFF8)
                {
                  std::__throw_bad_array_new_length[abi:nn200100]();
                }

                v12 = v11;
                if (v11 >= 0x17)
                {
                  operator new();
                }

                *(&__dst.__r_.__value_.__s + 23) = v11;
                if (v11)
                {
                  memmove(&__dst, uTF8String, v11);
                }

                __dst.__r_.__value_.__s.__data_[v12] = 0;

                v13 = v51;
                v14 = v52;
                if (v51 == v52)
                {
                  goto LABEL_30;
                }

                v15 = v51;
                while (!std::equal_to<std::string>::operator()[abi:nn200100](&__dst, v15))
                {
                  v15 = (v15 + 32);
                  if (v15 == v14)
                  {
                    goto LABEL_30;
                  }
                }

                if (v15 == v14)
                {
LABEL_30:
                  if (v13 == v14)
                  {
                    goto LABEL_36;
                  }

                  v21 = v13;
                  while (!std::equal_to<std::string>::operator()[abi:nn200100](&__dst, v21))
                  {
                    v21 = (v21 + 32);
                    if (v21 == v14)
                    {
                      goto LABEL_36;
                    }
                  }

                  if (v14 == v21)
                  {
LABEL_36:
                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v54, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
                      v13 = v51;
                      v14 = v52;
                    }

                    else
                    {
                      v54 = __dst;
                    }

                    v55 = 0;
                    v21 = v14;
                    if (v13 != v14)
                    {
                      v21 = v13;
                      while (!std::equal_to<std::string>::operator()[abi:nn200100](&v54, v21))
                      {
                        v21 = (v21 + 32);
                        if (v21 == v14)
                        {
                          v21 = v14;
                          break;
                        }
                      }
                    }

                    if (v14 == v21)
                    {
                      if (v53 <= v14)
                      {
                        v24 = (v14 - v13) >> 5;
                        v25 = v24 + 1;
                        if ((v24 + 1) >> 59)
                        {
                          std::__throw_bad_array_new_length[abi:nn200100]();
                        }

                        v26 = v53 - v13;
                        if ((v53 - v13) >> 4 > v25)
                        {
                          v25 = v26 >> 4;
                        }

                        if (v26 >= 0x7FFFFFFFFFFFFFE0)
                        {
                          v27 = 0x7FFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v27 = v25;
                        }

                        v60 = &v51;
                        if (v27)
                        {
                          if (!(v27 >> 59))
                          {
                            operator new();
                          }

                          std::__throw_bad_array_new_length[abi:nn200100]();
                        }

                        v56 = 0;
                        v57 = 32 * v24;
                        v58 = 32 * v24;
                        v59 = 0;
                        std::pair<std::string,VKLabelNavJunction * {__strong}>::pair[abi:nn200100]((32 * v24), &v54);
                        v23 = (v58 + 32);
                        v58 += 32;
                        p_data = &v51->__r_.__value_.__l.__data_;
                        v29 = &v52->__r_.__value_.__l.__data_;
                        v30 = v57 + v51 - v52;
                        if (v51 != v52)
                        {
                          v31 = v51;
                          v32 = v57 + v51 - v52;
                          do
                          {
                            v33 = *v31->__words;
                            *(v32 + 16) = v31->__words[2];
                            *v32 = v33;
                            v31->__words[0] = 0;
                            v31->__words[1] = 0;
                            v34 = v31[1].__words[0];
                            v31->__words[2] = 0;
                            v31[1].__words[0] = 0;
                            *(v32 + 24) = v34;
                            v31 = (v31 + 32);
                            v32 += 32;
                          }

                          while (v31 != v29);
                          do
                          {
                            std::__destroy_at[abi:nn200100]<std::pair<std::string,VKLabelNavJunction * {__strong}>,0>(p_data);
                            p_data += 4;
                          }

                          while (p_data != v29);
                          p_data = &v51->__r_.__value_.__l.__data_;
                          v23 = v58;
                        }

                        v51 = v30;
                        v52 = v23;
                        v35 = v53;
                        v53 = v59;
                        v58 = p_data;
                        v59 = v35;
                        v56 = p_data;
                        v57 = p_data;
                        std::__split_buffer<std::pair<std::string,VKLabelNavJunction * {__strong}>>::~__split_buffer(&v56);
                      }

                      else
                      {
                        std::pair<std::string,VKLabelNavJunction * {__strong}>::pair[abi:nn200100](v14, &v54);
                        v23 = (v14 + 32);
                      }

                      v52 = v23;
                      v21 = (v23 - 32);
                      v22 = v55;
                    }

                    else
                    {
                      v22 = 0;
                    }

                    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v54.__r_.__value_.__l.__data_);
                    }
                  }

                  objc_storeStrong(&v21[1].__r_.__value_.__l.__data_, v40);
                }

                else
                {
                  data = v15[1].__r_.__value_.__l.__data_;
                  v16 = &v15[1].__r_.__value_.__l.__data_;
                  if (data == v40)
                  {
                    [v7 setSuppressRoadSignIfDeduped:0];
                  }

                  else
                  {
                    composedRoute = [(VKPolylineOverlay *)self->_route composedRoute];
                    [composedRoute distanceFromPoint:objc_msgSend(*v16 toPoint:{"routeOffset"), objc_msgSend(v40, "routeOffset")}];
                    v20 = v19;

                    if (v20 >= 300.0)
                    {
                      objc_storeStrong(v16, v40);
                    }

                    [v7 setSuppressRoadSignIfDeduped:v20 < 300.0];
                  }
                }

                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }
              }
            }

            v4 = [roads countByEnumeratingWithState:&v43 objects:v61 count:16];
          }

          while (v4);
        }
      }

      v2 = [(NSMutableArray *)obj countByEnumeratingWithState:&v47 objects:v62 count:16];
    }

    while (v2);
  }

  v56 = &v51;
  std::vector<std::pair<std::string,VKLabelNavJunction * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v56);
}

- (void)_updatePreferredLabelPlacements
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_junctions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        v8 = v6;
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        requiredLabelPlacement = [v9 requiredLabelPlacement];
        v6 = requiredLabelPlacement;
        if ((requiredLabelPlacement - 1) >= 2)
        {
          if (requiredLabelPlacement == 3)
          {
            if (v8 == 1)
            {
              v11 = 2;
            }

            else
            {
              v11 = 1;
            }

            if (self->_preferRightSideLabelPlacement)
            {
              v6 = 1;
            }

            else
            {
              v6 = v11;
            }
          }

          else
          {
            v6 = v8;
            if (requiredLabelPlacement != 5)
            {
              continue;
            }

            if (self->_preferRightSideLabelPlacement)
            {
              v6 = 1;
            }

            else
            {
              composedRoute = [(VKPolylineOverlay *)self->_route composedRoute];
              steps = [composedRoute steps];
              v14 = [steps objectAtIndexedSubscript:self->_stepIndex];

              if ([v14 drivingSide])
              {
                v6 = 2;
              }

              else
              {
                v6 = 1;
              }
            }
          }

          [v9 setPreferredLabelPlacement:v6];
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

- (void)_updateRoadsInGuidance
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_junctions;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v21;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        outgoingRoad = [v7 outgoingRoad];
        roadNamesInGuidance = self->_roadNamesInGuidance;
        name = [outgoingRoad name];
        [outgoingRoad setIsInGuidance:{-[NSMutableSet containsObject:](roadNamesInGuidance, "containsObject:", name)}];

        [outgoingRoad setIsGuidanceStepStart:0];
        if ([outgoingRoad isInGuidance])
        {
          routeOffset = [v7 routeOffset];
          v12 = COERCE_FLOAT([v7 routeOffset] >> 32) + routeOffset;
          while (v4 < [(NSMutableArray *)self->_guidanceStepInfos count])
          {
            v13 = [(NSMutableArray *)self->_guidanceStepInfos objectAtIndexedSubscript:v4];
            v14 = v12 + -0.1 > [v13 routePoint];

            if (!v14)
            {
              break;
            }

            ++v4;
          }

          if (v4 < [(NSMutableArray *)self->_guidanceStepInfos count])
          {
            v15 = [(NSMutableArray *)self->_guidanceStepInfos objectAtIndexedSubscript:v4];
            roadName = [v15 roadName];
            name2 = [outgoingRoad name];
            if ([roadName isEqualToString:name2])
            {
              v18 = vabdd_f64(v12, [v15 routePoint]) < 0.1;

              if (v18)
              {
                [outgoingRoad setIsGuidanceStepStart:1];
                ++v4;
              }
            }

            else
            {
            }
          }
        }
      }

      v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v3);
  }
}

- (void)_updateRoadStarts
{
  [(NSMutableArray *)self->_routeRoadInfos removeAllObjects];
  currentRoadName = [(LabelNavRouteLabeler *)self currentRoadName];
  v3 = 0;
  v4 = 0;
  v5 = 0.0;
  while (v3 < [(NSMutableArray *)self->_junctions count])
  {
    v6 = [(NSMutableArray *)self->_junctions objectAtIndexedSubscript:v3];
    outgoingRoad = [v6 outgoingRoad];
    v8 = outgoingRoad;
    if (!outgoingRoad)
    {
      goto LABEL_17;
    }

    name = [outgoingRoad name];
    if (currentRoadName == name)
    {

LABEL_17:
      [v8 setIsStartOfRoadName:0];
      [v8 length];
      v17 = v23 + v5;
      goto LABEL_18;
    }

    name2 = [v8 name];
    v11 = [currentRoadName isEqualToString:name2];

    if (v11)
    {
      goto LABEL_17;
    }

    if (v3 && v5 < 30.0)
    {
      v12 = [(NSMutableSet *)self->_roadNamesInGuidance containsObject:currentRoadName];
      v13 = v4 >= v3 ? 1 : v12;
      if ((v13 & 1) == 0)
      {
        do
        {
          v14 = [(NSMutableArray *)self->_junctions objectAtIndexedSubscript:v4];
          outgoingRoad2 = [v14 outgoingRoad];

          if (([outgoingRoad2 areLabelsDisabled] & 1) == 0)
          {
            [outgoingRoad2 setAreLabelsDisabled:1];
          }

          ++v4;
        }

        while (v3 != v4);
      }
    }

    [v8 length];
    v17 = v16;
    [v8 setIsStartOfRoadName:1];
    name3 = [v8 name];

    v19 = [VKRouteRoadInfo alloc];
    name4 = [v8 name];
    shieldGroup = [v8 shieldGroup];
    v22 = -[VKRouteRoadInfo initWithName:shieldGroup:offset:](v19, "initWithName:shieldGroup:offset:", name4, shieldGroup, [v6 routeOffset]);

    [(NSMutableArray *)self->_routeRoadInfos addObject:v22];
    v4 = v3;
    currentRoadName = name3;
LABEL_18:
    v5 = v17;

    ++v3;
  }
}

- (void)_updateUniqueOffRouteRoads
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->_junctions;
  v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v17)
  {
    v18 = *v35;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v34 + 1) + 8 * i);
        if (([v21 isOnDualCarriageway] & 1) == 0)
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          roads = [v21 roads];
          v2 = [roads countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (!v2)
          {
            goto LABEL_32;
          }

          v3 = *v31;
          v20 = *v31;
          while (1)
          {
            v4 = 0;
            v22 = v2;
            do
            {
              if (*v31 != v3)
              {
                objc_enumerationMutation(roads);
              }

              v5 = *(*(&v30 + 1) + 8 * v4);
              if (([v5 isOnRoute] & 1) == 0)
              {
                v28 = 0u;
                v29 = 0u;
                v26 = 0u;
                v27 = 0u;
                roads2 = [v21 roads];
                v6 = [roads2 countByEnumeratingWithState:&v26 objects:v38 count:16];
                v24 = v4;
                if (v6)
                {
                  v7 = 0;
                  v8 = *v27;
                  v9 = 1;
                  do
                  {
                    for (j = 0; j != v6; ++j)
                    {
                      if (*v27 != v8)
                      {
                        objc_enumerationMutation(roads2);
                      }

                      v11 = *(*(&v26 + 1) + 8 * j);
                      if (v11 != v5)
                      {
                        name = [v5 name];
                        name2 = [v11 name];
                        v14 = [name isEqualToString:name2];

                        if (v14)
                        {
                          v7 |= [v11 isOnRoute];
                          ++v9;
                        }
                      }
                    }

                    v6 = [roads2 countByEnumeratingWithState:&v26 objects:v38 count:16];
                  }

                  while (v6);

                  if (v9 == 2)
                  {
                    v15 = 0;
                    goto LABEL_29;
                  }

                  if (v9 != 1)
                  {
                    v15 = v7 ^ 1;
LABEL_29:
                    v3 = v20;
                    v2 = v22;
                    v4 = v24;
                    [v5 setIsRoadLabelUnique:v15 & 1];
                    goto LABEL_30;
                  }
                }

                else
                {
                }

                v15 = 1;
                goto LABEL_29;
              }

LABEL_30:
              ++v4;
            }

            while (v4 != v2);
            v2 = [roads countByEnumeratingWithState:&v30 objects:v39 count:16];
            if (!v2)
            {
LABEL_32:

              break;
            }
          }
        }
      }

      v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v17);
  }
}

- (BOOL)_addJunctionsForTile:(const void *)tile
{
  v85 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v3 = *(*tile + 24);
  v5 = *v3;
  v4 = v3[1];
  v76 = v5;
  v77 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v74 = *MEMORY[0x1E69A1918];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v6 = selfCopy->_matchedPaths;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v69 objects:v84 count:16];
  if (v7)
  {
    v8 = *v70;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v70 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v73 = *(*(&v69 + 1) + 8 * i);
        road = [v73 road];
        feature = [road feature];
        getRoad = [feature getRoad];

        if (getRoad)
        {
          road2 = [v73 road];
          startJunction = [road2 startJunction];
          connectivityJunction = [startJunction connectivityJunction];

          v68 = connectivityJunction;
          road3 = [v73 road];
          endJunction = [road3 endJunction];
          connectivityJunction2 = [endJunction connectivityJunction];

          v67 = connectivityJunction2;
          road4 = [v73 road];
          feature2 = [road4 feature];
          v20Feature = [feature2 feature];
          containingTile = [v20Feature containingTile];
          v23 = containingTile;
          if (containingTile)
          {
            [containingTile vectorTilePtr];
          }

          else
          {
            v65 = 0;
            v66 = 0;
          }

          v24 = v76;
          if (geo::codec::TileKeyEquals((v76 + 4), (v65 + 4)) && *v24 == *v65)
          {
            v25 = *(getRoad + 8);
            if (v25)
            {
              std::__shared_weak_count::lock(v25);
            }

            v83 = 0;
            operator new();
          }

          if (v66)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v66);
          }
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v69 objects:v84 count:16];
    }

    while (v7);
  }

  if ([v75 count])
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v26 = v75;
    v27 = [v26 countByEnumeratingWithState:&v61 objects:v82 count:16];
    if (v27)
    {
      v28 = *v62;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v62 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v61 + 1) + 8 * j);
          [v30 evaluateCrossStreets];
          [v30 setDepthFromRoute:0];
        }

        v27 = [v26 countByEnumeratingWithState:&v61 objects:v82 count:16];
      }

      while (v27);
    }

    [(NSMutableArray *)selfCopy->_junctions removeObjectsInArray:v75];
    [(NSMutableArray *)selfCopy->_junctions addObjectsFromArray:v75];
    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v32 = v75;
    v33 = [v32 countByEnumeratingWithState:&v57 objects:v81 count:16];
    if (v33)
    {
      v34 = *v58;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v58 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = *(*(&v57 + 1) + 8 * k);
          if ([v36 isOverpass])
          {
            v37 = [(VKLabelNavRoadGraph *)selfCopy->_roadGraph overpassJunctionForJunction:v36];
            v38 = v37;
            if (v37 && ([v37 isOnRoute] & 1) == 0 && (objc_msgSend(v38, "isIntraRamp") & 1) == 0)
            {
              [v38 setDepthFromRoute:0];
              [v38 setRouteOffset:{objc_msgSend(v36, "routeOffset")}];
              [v38 setIsRouteOverpass:1];
              [v38 evaluateCrossStreetsUsingRouteJunction:v36];
              [v31 addObject:v38];
            }
          }
        }

        v33 = [v32 countByEnumeratingWithState:&v57 objects:v81 count:16];
      }

      while (v33);
    }

    [v75 removeObjectsInArray:v31];
    [v75 addObjectsFromArray:v31];
    [v31 removeObjectsInArray:selfCopy->_junctions];
    [(NSMutableArray *)selfCopy->_junctions addObjectsFromArray:v31];
    v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v40 = v75;
    v41 = [v40 countByEnumeratingWithState:&v53 objects:v80 count:16];
    if (v41)
    {
      v42 = *v54;
      do
      {
        for (m = 0; m != v41; ++m)
        {
          if (*v54 != v42)
          {
            objc_enumerationMutation(v40);
          }

          [(VKLabelNavRoadGraph *)selfCopy->_roadGraph evaluateDualCarriagewayForJunction:*(*(&v53 + 1) + 8 * m) outputJunctionList:v39];
        }

        v41 = [v40 countByEnumeratingWithState:&v53 objects:v80 count:16];
      }

      while (v41);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v44 = v39;
    v45 = [v44 countByEnumeratingWithState:&v49 objects:v79 count:16];
    if (v45)
    {
      v46 = *v50;
      do
      {
        for (n = 0; n != v45; ++n)
        {
          if (*v50 != v46)
          {
            objc_enumerationMutation(v44);
          }

          [*(*(&v49 + 1) + 8 * n) setDepthFromRoute:{0, v49}];
        }

        v45 = [v44 countByEnumeratingWithState:&v49 objects:v79 count:16];
      }

      while (v45);
    }

    [v44 removeObjectsInArray:selfCopy->_junctions];
    [(NSMutableArray *)selfCopy->_junctions addObjectsFromArray:v44];
    [(NSMutableArray *)selfCopy->_junctions sortUsingComparator:&__block_literal_global_26808];
    [(LabelNavRouteLabeler *)selfCopy _updateRoadStarts];
    [(LabelNavRouteLabeler *)selfCopy _updateRoadsInGuidance];
    [(LabelNavRouteLabeler *)selfCopy _updatePreferredLabelPlacements];
    [(LabelNavRouteLabeler *)selfCopy _initalizeCurrentRoadInfo];
    [(LabelNavRouteLabeler *)selfCopy _updateUniqueOffRouteRoads];
    [(LabelNavRouteLabeler *)selfCopy _dedupOffRouteRoads];
  }

  if (v77)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v77);
  }

  return 1;
}

uint64_t __45__LabelNavRouteLabeler__addJunctionsForTile___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = v6[25];
  v9 = v7[25];
  if (v8 < v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = v8 > v9;
  }

  if (!v10)
  {
    v11 = [v6 incomingRoad];
    if (v11 && ([v7 incomingRoad], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, !v12))
    {
      v10 = -1;
    }

    else
    {
      v13 = [v6 incomingRoad];
      if (v13)
      {

        v10 = 0;
      }

      else
      {
        v14 = [v7 incomingRoad];
        v10 = v14 != 0;
      }
    }
  }

  return v10;
}

- (void)_addJunctionsForTile:
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*(*a2 + 40) == **(self + 8) && *(v2 + 48) == **(self + 16))
  {
    v4 = objc_alloc(MEMORY[0x1E69A24E8]);
    road = [**(self + 24) road];
    feature = [road feature];
    v48 = &unk_1F2A2A6E8;
    v49 = [v4 init:v2 withMultiSectionFeatureInterface:feature];

    v7 = **(self + 32);
    v8 = v49;
    road2 = [v8 road];
    feature2 = [road2 feature];
    containingTile = [feature2 containingTile];
    v12 = containingTile;
    if (containingTile)
    {
      [containingTile vectorTilePtr];
      v13 = startRouteCoordinate2;
      if (endRouteCoordinate)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](endRouteCoordinate);
      }
    }

    else
    {
      v13 = 0;
      startRouteCoordinate2 = 0;
      endRouteCoordinate = 0;
    }

    if (!geo::codec::TileKeyEquals((v7 + 4), (v13 + 4)) || *v7 != *v13)
    {

LABEL_40:
      v48 = &unk_1F2A2A6E8;

      return;
    }

    if (v13 == v7)
    {
      v26 = [v8 get];
      v25 = *v26;
      v36 = *(v26 + 24);
      v38 = *(v26 + 8);
      v17 = *(v26 + 40);
      v20 = *(v26 + 48);
    }

    else
    {
      v14 = [v8 get];
      v15 = *(v14 + 40);
      if (v15 && (v16 = v15 - *(v13 + 696), *(v7 + 704) > (v16 >> 5)))
      {
        v17 = *(v7 + 696) + v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = *(v14 + 48);
      if (v18 && (v19 = v18 - *(v13 + 696), *(v7 + 704) > (v19 >> 5)))
      {
        v20 = *(v7 + 696) + v19;
      }

      else
      {
        v20 = 0;
      }

      v36 = *(v14 + 24);
      v38 = *(v14 + 8);
      if (*v14)
      {
        v21 = *v14 - *(v13 + 32);
        v22 = *(v7 + 32);
        v23 = *(v7 + 40) - v22;
        v24 = v22 + v21;
        if (v21 >= v23)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    road3 = [**(self + 24) road];
    isFlipped = [road3 isFlipped];

    if ([**(self + 24) isPartialStart])
    {
      startRouteCoordinate = [**(self + 24) startRouteCoordinate];
      v30 = *(self + 40);
      v31 = *v30 != startRouteCoordinate || vabds_f32(*(&startRouteCoordinate + 1), *(v30 + 4)) >= 0.00000011921;
    }

    else
    {
      v31 = 0;
    }

    isPartialEnd = [**(self + 24) isPartialEnd];
    **(self + 40) = [**(self + 24) endRouteCoordinate];
    startRouteCoordinate2 = [**(self + 24) startRouteCoordinate];
    endRouteCoordinate = [**(self + 24) endRouteCoordinate];
    v42 = v25;
    v43 = v39;
    v44 = v37;
    v45 = v17;
    v46 = v20;
    v47 = vmovn_s64(v39);
    if (v31)
    {
      v33 = **(self + 24);
      if (isFlipped)
      {
        v47.i32[1] = [v33 roadRange];
        if ((isPartialEnd & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v47.i32[0] = [v33 roadRange];
      if ((isPartialEnd & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if ((isPartialEnd & 1) == 0)
      {
LABEL_39:
        [*(**(self + 48) + 192) addRouteRoadEdge:&startRouteCoordinate2 atA:isFlipped ^ 1 isRouteRefineJunction:0 tile:*(self + 56) junctionList:**(self + 64)];
        [*(**(self + 48) + 192) addRouteRoadEdge:&startRouteCoordinate2 atA:isFlipped isRouteRefineJunction:0 tile:*(self + 56) junctionList:**(self + 64)];
        goto LABEL_40;
      }

      if (isFlipped)
      {
LABEL_36:
        [**(self + 24) roadRange];
        v47.i32[0] = v34;
        goto LABEL_39;
      }
    }

    [**(self + 24) roadRange];
    v47.i32[1] = v35;
    goto LABEL_39;
  }
}

- (__n128)_addJunctionsForTile:
{
  *a2 = &unk_1F2A2A6A0;
  result = *(self + 8);
  v3 = *(self + 24);
  v4 = *(self + 40);
  *(a2 + 56) = *(self + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

- (void)_addLabelsForJunctions:(id)junctions withContext:(NavContext *)context maxLabelsToAdd:(unint64_t)add useAllJunctions:(BOOL)allJunctions placeShieldsFrontToBack:(BOOL)back
{
  backCopy = back;
  allJunctionsCopy = allJunctions;
  v119 = *MEMORY[0x1E69E9840];
  junctionsCopy = junctions;
  if (!add)
  {
    goto LABEL_107;
  }

  countVisibleRoadSigns = self->_countVisibleRoadSigns;
  maxVisibleRoadSigns = self->_maxVisibleRoadSigns;
  v13 = maxVisibleRoadSigns >= countVisibleRoadSigns;
  v14 = maxVisibleRoadSigns - countVisibleRoadSigns;
  if (v14 == 0 || !v13)
  {
    goto LABEL_107;
  }

  if (v14 >= add)
  {
    addCopy = add;
  }

  else
  {
    addCopy = v14;
  }

  v16 = +[VKDebugSettings sharedSettings];
  labelCollisionDisabled = [v16 labelCollisionDisabled];

  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (allJunctionsCopy)
  {
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v18 = junctionsCopy;
    v19 = [v18 countByEnumeratingWithState:&v108 objects:v118 count:16];
    if (v19)
    {
      v20 = *v109;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v109 != v20)
          {
            objc_enumerationMutation(v18);
          }

          roads = [*(*(&v108 + 1) + 8 * i) roads];
          [v17 addObjectsFromArray:roads];
        }

        v19 = [v18 countByEnumeratingWithState:&v108 objects:v118 count:16];
      }

      while (v19);
    }

    goto LABEL_57;
  }

  if (![junctionsCopy count])
  {
    goto LABEL_57;
  }

  for (j = 0; j < [junctionsCopy count]; ++j)
  {
    v24 = [junctionsCopy objectAtIndexedSubscript:j];
    if ((*(*context->var2 + 416))(context->var2))
    {
      mercatorCoordinate = [v24 mercatorCoordinate];
      var3 = context->var3;
      v112 = md::NavContext::worldPoint(*(var3 + 8), mercatorCoordinate, *(var3 + 13));
      v113 = v27;
      v114 = v28;
      md::LabelLayoutContext::projectPointToPixel(var3, &v112, &v107);
      v29 = 0;
      v30 = 0;
      var4 = context->var4;
      v32 = v107.f32[0];
      v33 = var4 + 48;
      v34 = var4 + 56;
      while (1)
      {
        v35 = v32;
        if (v32 < *&v33[4 * v30])
        {
          break;
        }

        v36 = *&v34[4 * v30];
        v30 = 1;
        v37 = (v32 < v36) & ~v29;
        v29 = 1;
        v32 = v107.f32[1];
        if ((v37 & 1) == 0)
        {
          if (v35 >= v36)
          {
            break;
          }

          goto LABEL_29;
        }
      }
    }

    else
    {
      routeOffset = [v24 routeOffset];
      index = self->_routeUserOffset.index;
      if (index <= routeOffset && (index != routeOffset || self->_routeUserOffset.offset < *(&routeOffset + 1)))
      {
LABEL_29:

        break;
      }
    }
  }

  v40 = [junctionsCopy count];
  if (j >= v40)
  {
    v41 = v40;
  }

  else
  {
    v41 = j;
  }

  if (v41 <= 1)
  {
    v42 = 1;
  }

  else
  {
    v42 = v41;
  }

  v43 = v42 - 1;
  v44 = [junctionsCopy objectAtIndexedSubscript:v42 - 1];
  routeOffset2 = [v44 routeOffset];

  if (v41 < 2)
  {
    goto LABEL_47;
  }

  v46 = 0;
  v47 = *(&routeOffset2 + 1);
  while (1)
  {
    v48 = [junctionsCopy objectAtIndexedSubscript:v42 - 2];
    routeOffset3 = [v48 routeOffset];
    --v42;
    *&v50 = vabds_f32(*(&routeOffset3 + 1), v47);
    if (routeOffset2 == routeOffset3 && *&v50 < 0.00000011921)
    {
      goto LABEL_44;
    }

    if (v46)
    {
      break;
    }

    routeOffset4 = [v48 routeOffset];
    v47 = *(&routeOffset4 + 1);
    LODWORD(routeOffset2) = routeOffset4;
    v46 = 1;
LABEL_44:

    if (v42 <= 1)
    {
      v43 = 0;
      goto LABEL_47;
    }
  }

  v43 = v42;
LABEL_47:
  v53 = 0;
  while (v43 < [junctionsCopy count])
  {
    v54 = [junctionsCopy objectAtIndexedSubscript:v43];
    mercatorCoordinate2 = [v54 mercatorCoordinate];
    v56 = context->var3;
    v112 = md::NavContext::worldPoint(*(v56 + 8), mercatorCoordinate2, *(v56 + 13));
    v113 = v57;
    v114 = v58;
    *&v62 = md::LabelLayoutContext::projectPointToPixel(v56, &v112, &v107);
    v59 = 0;
    v60 = 0;
    v61 = context->var4;
    LODWORD(v62) = v107.i32[1];
    v63 = v107.f32[0];
    v64 = v61 + 48;
    v65 = v61 + 56;
    while (1)
    {
      v66 = v63;
      if (v63 < *&v64[4 * v60])
      {
        break;
      }

      v67 = *&v65[4 * v60];
      v60 = 1;
      v68 = (v63 < v67) & ~v59;
      v59 = 1;
      v63 = v107.f32[1];
      if ((v68 & 1) == 0)
      {
        if (v66 < v67)
        {
          roads2 = [v54 roads];
          [v17 addObjectsFromArray:roads2];

          goto LABEL_56;
        }

        break;
      }
    }

    if (v53 >= 0x14)
    {

      break;
    }

LABEL_56:
    ++v53;

    ++v43;
  }

LABEL_57:
  v70 = self->_countVisibleRoadSigns;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v71 = v17;
  v72 = [v71 countByEnumeratingWithState:&v103 objects:v117 count:16];
  if (v72)
  {
    v73 = *v104;
LABEL_59:
    v74 = 0;
    while (1)
    {
      if (*v104 != v73)
      {
        objc_enumerationMutation(v71);
      }

      if (self->_countVisibleRoadSigns >= self->_maxVisibleRoadSigns || addCopy == 0)
      {
        break;
      }

      v76 = *(*(&v103 + 1) + 8 * v74);
      if ((([v76 isOnRoute] & 1) != 0 || self->_countVisibleOffRouteRoadSigns < self->_maxVisibleOffRouteRoadSigns) && (!objc_msgSend(v76, "isOnRoute") || self->_countVisibleOnRouteRoadSigns < self->_maxVisibleOnRouteRoadSigns) && (objc_msgSend(v76, "areLabelsDisabled") & 1) == 0)
      {
        [v76 prepareStyleVarsWithContext:context];
        if ([v76 hasVisibleSigns])
        {
          [(LabelNavRouteLabeler *)self _tryAddRoadSignForRoad:v76 isShield:0 navContext:context labelCollisionEnabled:labelCollisionDisabled ^ 1u];
        }

        if (backCopy && [v76 hasVisibleShields])
        {
          [(LabelNavRouteLabeler *)self _tryAddRoadSignForRoad:v76 isShield:1 navContext:context labelCollisionEnabled:labelCollisionDisabled ^ 1u];
        }

        addCopy -= self->_countVisibleRoadSigns - v70 == 1;
        v70 = self->_countVisibleRoadSigns;
      }

      if (v72 == ++v74)
      {
        v72 = [v71 countByEnumeratingWithState:&v103 objects:v117 count:16];
        if (v72)
        {
          goto LABEL_59;
        }

        break;
      }
    }
  }

  if (!backCopy)
  {
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    reverseObjectEnumerator = [v71 reverseObjectEnumerator];
    v78 = v71;
    v79 = [reverseObjectEnumerator countByEnumeratingWithState:&v99 objects:v116 count:16];
    if (v79)
    {
      v80 = *v100;
      do
      {
        for (k = 0; k != v79; ++k)
        {
          if (*v100 != v80)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v82 = *(*(&v99 + 1) + 8 * k);
          if (([v82 areLabelsDisabled] & 1) == 0)
          {
            [v82 prepareStyleVarsWithContext:context];
            if ([v82 hasVisibleShields])
            {
              [(LabelNavRouteLabeler *)self _tryAddRoadSignForRoad:v82 isShield:1 navContext:context labelCollisionEnabled:labelCollisionDisabled ^ 1u];
            }
          }
        }

        v79 = [reverseObjectEnumerator countByEnumeratingWithState:&v99 objects:v116 count:16];
      }

      while (v79);
    }

    v71 = v78;
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v83 = v71;
  v84 = [v83 countByEnumeratingWithState:&v95 objects:v115 count:16];
  if (v84)
  {
    v85 = *v96;
    do
    {
      for (m = 0; m != v84; ++m)
      {
        if (*v96 != v85)
        {
          objc_enumerationMutation(v83);
        }

        v87 = *(*(&v95 + 1) + 8 * m);
        if (([v87 areLabelsDisabled] & 1) == 0 && (objc_msgSend(v87, "isOnRoute") & 1) == 0)
        {
          visibleLabelsByName = self->_visibleLabelsByName;
          name = [v87 name];
          v90 = [(NSMutableDictionary *)visibleLabelsByName objectForKey:name];
          LOBYTE(visibleLabelsByName) = v90 == 0;

          if ((visibleLabelsByName & 1) == 0)
          {
            v91 = [v87 labelWithType:0];
            if (!v91 || ([(NSMutableArray *)self->_visibleLabels containsObject:v91]& 1) == 0)
            {
              [v87 prepareStyleVarsWithContext:context];
              if ([v87 hasVisibleSigns])
              {
                [(LabelNavRouteLabeler *)self _tryAddRoadSignForRoad:v87 isShield:0 navContext:context labelCollisionEnabled:labelCollisionDisabled ^ 1u];
              }
            }
          }
        }
      }

      v84 = [v83 countByEnumeratingWithState:&v95 objects:v115 count:16];
    }

    while (v84);
  }

LABEL_107:
}

- (void)_addLabelsAtJunctions:(id)junctions withContext:(NavContext *)context maxLabelsToAdd:(unint64_t)add
{
  v66 = *MEMORY[0x1E69E9840];
  junctionsCopy = junctions;
  if (!add)
  {
    goto LABEL_61;
  }

  countVisibleRoadSigns = self->_countVisibleRoadSigns;
  maxVisibleRoadSigns = self->_maxVisibleRoadSigns;
  v11 = maxVisibleRoadSigns >= countVisibleRoadSigns;
  v12 = maxVisibleRoadSigns - countVisibleRoadSigns;
  if (v12 == 0 || !v11)
  {
    goto LABEL_61;
  }

  if (v12 >= add)
  {
    addCopy = add;
  }

  else
  {
    addCopy = v12;
  }

  v14 = +[VKDebugSettings sharedSettings];
  labelCollisionDisabled = [v14 labelCollisionDisabled];

  v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  while (v16 < [junctionsCopy count])
  {
    v18 = [junctionsCopy objectAtIndexedSubscript:v16];
    if (([v18 isOnRoute] & 1) == 0)
    {
      goto LABEL_40;
    }

    if (v15)
    {
      mercatorCoordinate = [v18 mercatorCoordinate];
      var3 = context->var3;
      v62 = md::NavContext::worldPoint(*(var3 + 8), mercatorCoordinate, *(var3 + 13));
      v63 = v21;
      v64 = v22;
      *&v26 = md::LabelLayoutContext::projectPointToPixel(var3, &v62, &v61);
      v23 = 0;
      v24 = 0;
      var4 = context->var4;
      LODWORD(v26) = v61.i32[1];
      v27 = v61.f32[0];
      v28 = var4 + 48;
      v29 = var4 + 56;
      while (1)
      {
        v30 = v27;
        if (v27 < *&v28[4 * v24])
        {
          break;
        }

        v31 = *&v29[4 * v24];
        v24 = 1;
        v32 = (v27 < v31) & ~v23;
        v23 = 1;
        v27 = v61.f32[1];
        if ((v32 & 1) == 0)
        {
          if (v30 < v31)
          {
            [v55 addObject:{v18, v26}];
          }

          break;
        }
      }

      if (++v17 >= 0x14)
      {

        break;
      }

      v15 = 1;
    }

    else
    {
      if ((*(*context->var2 + 416))(context->var2))
      {
        mercatorCoordinate2 = [v18 mercatorCoordinate];
        v34 = context->var3;
        v62 = md::NavContext::worldPoint(*(v34 + 8), mercatorCoordinate2, *(v34 + 13));
        v63 = v35;
        v64 = v36;
        md::LabelLayoutContext::projectPointToPixel(v34, &v62, &v61);
        v37 = 0;
        v38 = 0;
        v39 = context->var4;
        v40 = v61.f32[0];
        v41 = v39 + 48;
        v42 = v39 + 56;
        while (v40 >= *&v41[4 * v38])
        {
          v43 = v40 >= *&v42[4 * v38];
          v44 = v37 | v43;
          v37 = 1;
          v40 = v61.f32[1];
          v38 = 1;
          if (v44)
          {
            v15 = !v43;
            if (v16 <= 2)
            {
              v45 = 2;
            }

            else
            {
              v45 = v16;
            }

            if (!v43)
            {
              goto LABEL_39;
            }

            goto LABEL_40;
          }
        }

LABEL_28:
        v15 = 0;
        goto LABEL_40;
      }

      routeOffset = [v18 routeOffset];
      index = self->_routeUserOffset.index;
      if (index > routeOffset)
      {
        goto LABEL_28;
      }

      if (index == routeOffset)
      {
        if (v16 <= 2)
        {
          v45 = 2;
        }

        else
        {
          v45 = v16;
        }

        if (self->_routeUserOffset.offset >= *(&routeOffset + 1))
        {
          goto LABEL_28;
        }
      }

      else if (v16 <= 2)
      {
        v45 = 2;
      }

      else
      {
        v45 = v16;
      }

      v15 = 1;
LABEL_39:
      v16 = v45 - 2;
    }

LABEL_40:

    ++v16;
  }

  v48 = self->_countVisibleRoadSigns;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v49 = v55;
  v50 = [v49 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v50)
  {
    v51 = *v58;
LABEL_44:
    v52 = 0;
    while (1)
    {
      if (*v58 != v51)
      {
        objc_enumerationMutation(v49);
      }

      if (self->_countVisibleRoadSigns >= self->_maxVisibleRoadSigns || addCopy < 1)
      {
        break;
      }

      v54 = *(*(&v57 + 1) + 8 * v52);
      if ((([v54 isOnRoute] & 1) != 0 || self->_countVisibleOffRouteRoadSigns < self->_maxVisibleOffRouteRoadSigns) && (!objc_msgSend(v54, "isOnRoute") || self->_countVisibleOnRouteRoadSigns < self->_maxVisibleOnRouteRoadSigns))
      {
        [v54 prepareStyleVarsWithContext:context];
        if ([v54 isVisible])
        {
          [(LabelNavRouteLabeler *)self _tryAddRoadSignForJunction:v54 navContext:context labelCollisionEnabled:labelCollisionDisabled ^ 1u];
        }

        addCopy -= self->_countVisibleRoadSigns - v48 == 1;
        v48 = self->_countVisibleRoadSigns;
      }

      if (v50 == ++v52)
      {
        v50 = [v49 countByEnumeratingWithState:&v57 objects:v65 count:16];
        if (v50)
        {
          goto LABEL_44;
        }

        break;
      }
    }
  }

LABEL_61:
}

- (void)layoutForStagingWithNavContext:(NavContext *)context avoidanceRects:(const void *)rects options:(const LabelUpdateOptions *)options
{
  contextCopy = context;
  selfCopy = self;
  v241 = *MEMORY[0x1E69E9840];
  self->_needsLayout = 0;
  v9 = *(*(context->var1 + 21) + 32);
  selfCopy->_inOverviewMode = (*(*v9 + 88))(v9, a2);
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](&selfCopy->_activeSigns);
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](&selfCopy->_visibleSigns);
  v186 = selfCopy;
  if (selfCopy->_isOnRoute || (var2 = contextCopy->var2, *(*(*(var2 + 3) + 336) + 163) << 16 == 393216) || (*(*var2 + 384))(var2))
  {
    [(LabelNavRouteLabeler *)selfCopy _generateCurrentRoadSignWithContext:contextCopy];
    ptr = selfCopy->_currentRoadSign.__ptr_;
    if (ptr)
    {
      v12 = (*(*ptr + 16))(ptr, contextCopy);
      if (selfCopy->_isCurrentRoadSignVisible)
      {
        currentRoadSign = selfCopy->_currentRoadSign;
        cntrl = selfCopy->_currentRoadSign.__cntrl_;
        if (cntrl)
        {
          atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
        }

        end = selfCopy->_visibleSigns.__end_;
        cap = selfCopy->_visibleSigns.__cap_;
        if (end >= cap)
        {
          begin = selfCopy->_visibleSigns.__begin_;
          v19 = (end - begin) >> 4;
          if ((v19 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v20 = cap - begin;
          v21 = v20 >> 3;
          if (v20 >> 3 <= (v19 + 1))
          {
            v21 = v19 + 1;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v22 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v21;
          }

          anon_100 = selfCopy->_anon_100;
          if (v22)
          {
            v180 = currentRoadSign;
            v23 = mdm::zone_mallocator::instance(v12);
            v24 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::NavLabel>>(v23, v22);
            currentRoadSign = v180;
          }

          else
          {
            v24 = 0;
          }

          v27 = &v24[16 * v22];
          v26 = &v24[16 * v19];
          *v26 = currentRoadSign;
          v17 = v26 + 1;
          v28 = v186->_visibleSigns.__begin_;
          v29 = v186->_visibleSigns.__end_ - v28;
          v30 = v26 - v29;
          memcpy(v26 - v29, v28, v29);
          v31 = v186->_visibleSigns.__begin_;
          v186->_visibleSigns.__begin_ = v30;
          v186->_visibleSigns.__end_ = v17;
          v32 = *&v186->_visibleSigns.__cap_;
          v186->_visibleSigns.__cap_ = v27;
          selfCopy = v186;
          v225.__shared_weak_owners_ = v31;
          v226 = v32;
          v225.__shared_owners_ = v31;
          v225.__vftable = v31;
          std::__split_buffer<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator> &>::~__split_buffer(&v225);
        }

        else
        {
          *end = currentRoadSign;
          v17 = (end + 1);
        }

        selfCopy->_visibleSigns.__end_ = v17;
      }
    }
  }

  else
  {
    v25 = selfCopy->_currentRoadSign.__cntrl_;
    selfCopy->_currentRoadSign.__ptr_ = 0;
    selfCopy->_currentRoadSign.__cntrl_ = 0;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    }
  }

  if (!*&selfCopy->_tiles.__table_.__max_load_factor_ || !selfCopy->_route)
  {
    [(NSMutableDictionary *)selfCopy->_visibleLabelsByName removeAllObjects];
    [(NSMutableArray *)v186->_visibleLabels removeAllObjects];
    [(NSMutableSet *)v186->_visibleShieldGroups removeAllObjects];
    [(NSMutableArray *)v186->_fadingLabels removeAllObjects];
    v186->_regenerateRoadSigns = 0;
    return;
  }

  if (&selfCopy->_avoidanceRects != rects)
  {
    std::vector<md::AvoidanceRectWithPriority,geo::allocator_adapter<md::AvoidanceRectWithPriority,mdm::zone_mallocator>>::__assign_with_size[abi:nn200100]<md::AvoidanceRectWithPriority*,md::AvoidanceRectWithPriority*>(&selfCopy->_avoidanceRects.__begin_, *rects, *(rects + 1), 0xAAAAAAAAAAAAAAABLL * ((*(rects + 1) - *rects) >> 3));
    selfCopy = v186;
  }

  if (selfCopy->_disableTileParseForOneLayout || !selfCopy->_isSnappingReady)
  {
    p_hasPendingTilesInSnappingRegion = &selfCopy->_hasPendingTilesInSnappingRegion;
    selfCopy->_areAllTilesReady = 0;
LABEL_50:
    selfCopy->_needsLayout = 1;
    goto LABEL_51;
  }

  if (selfCopy->_checkIfRouteSubrangeChanged)
  {
    if ([(LabelNavRouteLabeler *)selfCopy _updateActiveRouteRange])
    {
      [(LabelNavRouteLabeler *)v186 _reloadRouteJunctions];
    }

    selfCopy = v186;
    v186->_checkIfRouteSubrangeChanged = 0;
  }

  if (selfCopy->_useRouteSubrange && selfCopy->_isOnRoute)
  {
    index = selfCopy->_routeUserOffset.index;
    v34 = selfCopy->_routeSubrangeEnd.index;
    if (index >= v34 && (index != v34 || selfCopy->_routeUserOffset.offset > selfCopy->_routeSubrangeEnd.offset))
    {
      [(LabelNavRouteLabeler *)selfCopy _updateActiveRouteRange];
      [(LabelNavRouteLabeler *)v186 _reloadRouteJunctions];
      selfCopy = v186;
    }
  }

  if (options->var0 || options->var5)
  {
    next = selfCopy->_pendingTiles.__table_.__first_node_.__next_;
    if (next)
    {
      v36 = 0;
      __asm { FMOV            V0.2D, #0.5 }

      v181 = _Q0;
      do
      {
        v225.std::__shared_count = vmlaq_f64(*(next[2] + 320), v181, vsubq_f64(*(next[2] + 336), *(next[2] + 320)));
        if (md::MultiRectRegion::contains(&selfCopy->_snappingRegion._rects.__tree_.__begin_node_, &v225))
        {
          [(LabelNavRouteLabeler *)selfCopy _addJunctionsForTile:next + 2];
          v36 = 1;
          selfCopy = v186;
        }

        next = *next;
      }

      while (next);
      selfCopy->_hasPendingTilesInSnappingRegion = 0;
      std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::clear(&selfCopy->_pendingTiles);
      if (v36)
      {
        [(VKLabelNavRoadGraph *)selfCopy->_roadGraph routeJunctionsHaveChanged];
        selfCopy = v186;
      }
    }

    else
    {
      selfCopy->_hasPendingTilesInSnappingRegion = 0;
      std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::clear(&selfCopy->_pendingTiles);
    }
  }

  else
  {
    p_first_node = &selfCopy->_pendingTiles.__table_.__first_node_;
    __asm { FMOV            V0.2D, #0.5 }

    v185 = _Q0;
    do
    {
      p_first_node = *p_first_node;
      if (!p_first_node)
      {
        selfCopy->_hasPendingTilesInSnappingRegion = 0;
        goto LABEL_273;
      }

      v153 = p_first_node[2];
      v225.std::__shared_count = vmlaq_f64(*(v153 + 320), v185, vsubq_f64(*(v153 + 336), *(v153 + 320)));
    }

    while (!md::MultiRectRegion::contains(&selfCopy->_snappingRegion._rects.__tree_.__begin_node_, &v225));
    v154 = p_first_node[3];
    v225.__vftable = v153;
    v225.__shared_owners_ = v154;
    if (v154)
    {
      atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
    }

    [(LabelNavRouteLabeler *)selfCopy _addJunctionsForTile:&v225];
    [(VKLabelNavRoadGraph *)selfCopy->_roadGraph routeJunctionsHaveChanged];
    v155 = std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::erase(&selfCopy->_pendingTiles.__table_.__bucket_list_.__ptr_, p_first_node);
    if (v225.__shared_owners_)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v225.__shared_owners_);
    }

    selfCopy->_hasPendingTilesInSnappingRegion = 0;
    if (v155)
    {
      while (1)
      {
        v225.std::__shared_count = vmlaq_f64(*(v155[2] + 320), v185, vsubq_f64(*(v155[2] + 336), *(v155[2] + 320)));
        if (md::MultiRectRegion::contains(&selfCopy->_snappingRegion._rects.__tree_.__begin_node_, &v225))
        {
          break;
        }

        v155 = *v155;
        if (!v155)
        {
          goto LABEL_273;
        }
      }

      selfCopy->_hasPendingTilesInSnappingRegion = 1;
    }
  }

LABEL_273:
  p_hasPendingTilesInSnappingRegion = &selfCopy->_hasPendingTilesInSnappingRegion;
  hasPendingTilesInSnappingRegion = selfCopy->_hasPendingTilesInSnappingRegion;
  selfCopy->_areAllTilesReady = !hasPendingTilesInSnappingRegion;
  if (hasPendingTilesInSnappingRegion)
  {
    goto LABEL_50;
  }

LABEL_51:
  selfCopy->_disableTileParseForOneLayout = 0;
  var4 = contextCopy->var4;
  v223 = *(var4 + 6);
  v43 = *(var4 + 14);
  v224 = v43;
  v44 = vdupq_n_s64(0x7FF8000000000000uLL);
  v225.std::__shared_count = v44;
  v46 = v223 == v44.__vftable && *(&v223 + 1) == v44.__shared_owners_ && v43 == 0x7FF8000000000000;
  if (v46 || ((var3 = contextCopy->var3, *v182 = v44, v229 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(var3 + 92, &v223), v230 = v48, v231 = v49, v44.__vftable = v182[0], v225.std::__shared_count = *v182, *&v229 == v182[0]) ? (v50 = v48 == v182[1]) : (v50 = 0), v50 ? (v51 = *&v49 == 0x7FF8000000000000) : (v51 = 0), v51 || (v44.__vftable = 0xBFF0CCCCCCCCCCCDLL, v49 < -1.05) || (v44.__vftable = 0x3FF0CCCCCCCCCCCDLL, v49 > 1.05)))
  {
    p_regenerateRoadSigns = &selfCopy->_regenerateRoadSigns;
    v60 = !selfCopy->_isStylesheetAnimating && selfCopy->_regenerateRoadSigns;
    goto LABEL_82;
  }

  v44.__vftable = COERCE_STD_SHARED_COUNT_VTBL_(1.0);
  if (*(var3 + 8) == 1)
  {
    v52 = exp(*(&v223 + 1) * 6.28318531 + -3.14159265);
    v53 = atan(v52);
    *&v44.__vftable = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v53 * 114.591559 + -90.0);
  }

  for (i = 0; i != 24; i += 8)
  {
    *(&v225.__vftable + i) = -*(var3 + i + 160);
  }

  v55 = 0;
  v228 = v225;
  v56 = 0.0;
  do
  {
    v56 = v56 + *(&v228.__vftable + v55) * *(&v223 + v55);
    v55 += 8;
  }

  while (v55 != 24);
  v57 = 0;
  v226 = -v56;
  v58 = 0.0;
  do
  {
    v58 = v58 + *(&v225.__vftable + v57) * *(var3 + v57 + 136);
    v57 += 8;
  }

  while (v57 != 24);
  p_regenerateRoadSigns = &selfCopy->_regenerateRoadSigns;
  v170 = !selfCopy->_isStylesheetAnimating && selfCopy->_regenerateRoadSigns;
  if (!selfCopy->_isStylesheetAnimating)
  {
    *&v44.__vftable = (v58 - v56) * (*(var3 + 39) + *(var3 + 39)) / (*&v44.__vftable * (*(var3 + 266) / *(var3 + 11)));
    *&v44.__vftable = *&v44.__vftable;
    if (*&v44.__vftable > 0.0)
    {
      *&v44.__vftable = ((*(var4 + 30) * 0.5) + 7.0) * *&v44.__vftable;
      if (*&v44.__vftable < 100.0)
      {
        minSignOffsetDistance = selfCopy->_minSignOffsetDistance;
        if (minSignOffsetDistance < *&v44.__vftable || (*&v44.__vftable = *&v44.__vftable + 2.0, minSignOffsetDistance > *&v44.__vftable))
        {
          selfCopy->_minSignOffsetDistance = *&v44.__vftable;
          v60 = 1;
LABEL_82:
          v170 = v60;
        }
      }
    }
  }

  selfCopy->_countVisibleOnRouteRoadSigns = 0;
  selfCopy->_countVisibleOffRouteRoadSigns = 0;
  selfCopy->_countVisibleRoadSigns = 0;
  [(VKLabelNavRoadGraph *)selfCopy->_roadGraph startingLabelLayoutWithContext:contextCopy routeUserOffset:*&selfCopy->_routeUserOffset, *&v44.__vftable, p_hasPendingTilesInSnappingRegion];
  v167 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v186->_fadingLabels];
  [(NSMutableArray *)v186->_fadingLabels removeAllObjects];
  v221 = 0u;
  v222 = 0u;
  v219 = 0u;
  v220 = 0u;
  obj = v167;
  v61 = [obj countByEnumeratingWithState:&v219 objects:v240 count:16];
  if (v61)
  {
    v62 = *v220;
    do
    {
      for (j = 0; j != v61; ++j)
      {
        if (*v220 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v64 = *(*(&v219 + 1) + 8 * j);
        v65 = atomic_load((*[v64 label] + 288));
        if ((v65 & 0x7FFFFFFF) != 0 && *(*[v64 label] + 316) == 1)
        {
          [v64 layoutWithNavContext:contextCopy];
          if (*(*[v64 label] + 315) == 1)
          {
            [(NSMutableArray *)v186->_fadingLabels addObject:v64];
            std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::push_back[abi:nn200100](&v186->_activeSigns, [v64 label]);
          }
        }
      }

      v61 = [obj countByEnumeratingWithState:&v219 objects:v240 count:16];
    }

    while (v61);
  }

  v172 = v186->_visibleLabels;
  v66 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](v172, "count")}];
  visibleLabels = v186->_visibleLabels;
  v186->_visibleLabels = v66;

  [(NSMutableDictionary *)v186->_visibleLabelsByName removeAllObjects];
  [(NSMutableSet *)v186->_visibleShieldGroups removeAllObjects];
  v169 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v68 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v217 = 0u;
  v218 = 0u;
  v215 = 0u;
  v216 = 0u;
  v173 = v172;
  v69 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v215 objects:v239 count:16];
  if (v69)
  {
    v175 = *v216;
    v168 = contextCopy;
    do
    {
      v70 = 0;
      v178 = v69;
      do
      {
        if (*v216 != v175)
        {
          objc_enumerationMutation(v173);
        }

        v71 = *(*(&v215 + 1) + 8 * v70);
        navFeature = [v71 navFeature];
        v183 = *(*[v71 label] + 27);
        navFeature2 = [v71 navFeature];
        if (([navFeature2 isValid] & 1) == 0)
        {

          goto LABEL_167;
        }

        v74 = atomic_load((*[v71 label] + 288));
        if ((v74 & 0x7FFFFFFF) != 0)
        {
        }

        else
        {
          v75 = *(*[v71 label] + 316);

          if (v75)
          {
            goto LABEL_167;
          }
        }

        if (*p_regenerateRoadSigns)
        {
          if ([v71 isRoadLabel])
          {
            navFeature3 = [v71 navFeature];
            v77 = *[v71 label];
            *(v77 + 316) = 1;
            *(v77 + 276) = 0;
            [(NSMutableArray *)v186->_fadingLabels addObject:v71];
            std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::push_back[abi:nn200100](&v186->_activeSigns, [v71 label]);
            [navFeature3 recreateRoadSignWithAlignment:objc_msgSend(v71 navContext:"alignment") artworkCache:{contextCopy, v186->_artworkCache}];
            v78 = [navFeature3 labelWithType:0];

            navFeature4 = [v78 navFeature];
LABEL_107:
            v80 = navFeature4;

            navFeature = v80;
            v71 = v78;
            goto LABEL_111;
          }

          if (*p_regenerateRoadSigns && [v71 isShieldLabel])
          {
            navFeature3 = [v71 navFeature];
            v81 = *[v71 label];
            *(v81 + 316) = 1;
            *(v81 + 276) = 0;
            [(NSMutableArray *)v186->_fadingLabels addObject:v71];
            std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::push_back[abi:nn200100](&v186->_activeSigns, [v71 label]);
            [navFeature3 recreateRoadShieldWithNavContext:contextCopy artworkCache:v186->_artworkCache];
            v78 = [navFeature3 labelWithType:1];

            navFeature4 = [v78 navFeature];
            goto LABEL_107;
          }
        }

LABEL_111:
        if (v170 && (([v71 isRoadLabel] & 1) != 0 || objc_msgSend(v71, "isShieldLabel")))
        {
          isShieldLabel = [v71 isShieldLabel];
          [v71 desiredOffsetDistance];
          [(LabelNavRouteLabeler *)v186 _createOrUpdateLabelForRoad:navFeature isShield:isShieldLabel navContext:contextCopy hopOffsetDistance:?];
        }

        [navFeature layoutWithNavContext:contextCopy];
        if (*[v71 label] && *(*objc_msgSend(v71, "label") + 315) == 1)
        {
          if ([v71 isRoadLabel])
          {
            currentRoadName = v186->_currentRoadName;
            name = [navFeature name];
            if ([(NSString *)currentRoadName isEqualToString:name])
            {
              isGuidanceStepStart = [navFeature isGuidanceStepStart];

              if ((isGuidanceStepStart & 1) == 0)
              {
LABEL_124:
                if ((*(*[v71 label] + 316) & 1) == 0)
                {
                  v87 = *[v71 label];
                  *(v87 + 316) = 1;
                  *(v87 + 276) = 0;
                }

                goto LABEL_126;
              }
            }

            else
            {
            }
          }

          label = [v71 label];
          if (*(*label + 313) != 1 || (*(*label + 314) & 1) == 0)
          {
            goto LABEL_124;
          }

LABEL_126:
          if ((*(*[v71 label] + 316) & 1) == 0)
          {
            if ([(LabelNavRouteLabeler *)v186 _collideLabel:v71 activeLabel:0 labelsToRemove:v169])
            {
              v88 = *[v71 label];
              *(v88 + 316) = 1;
              *(v88 + 276) = 0;
            }

            else
            {
              v213 = 0u;
              v214 = 0u;
              v211 = 0u;
              v212 = 0u;
              v89 = v169;
              v90 = [v89 countByEnumeratingWithState:&v211 objects:v238 count:16];
              if (v90)
              {
                v91 = *v212;
                do
                {
                  for (k = 0; k != v90; ++k)
                  {
                    if (*v212 != v91)
                    {
                      objc_enumerationMutation(v89);
                    }

                    v93 = *(*(&v211 + 1) + 8 * k);
                    if ((*(*[v93 label] + 316) & 1) == 0)
                    {
                      v94 = *[v93 label];
                      *(v94 + 316) = 1;
                      *(v94 + 276) = 0;
                    }
                  }

                  v90 = [v89 countByEnumeratingWithState:&v211 objects:v238 count:16];
                }

                while (v90);
              }

              contextCopy = v168;
            }

            [v169 removeAllObjects];
          }

          if ([v71 isRoadLabel] && (*(*objc_msgSend(v71, "label") + 316) & 1) == 0)
          {
            navFeature5 = [v71 navFeature];
            v96 = [(LabelNavRouteLabeler *)v186 orientationForRoadSign:navFeature5 roadLabel:v71 navContext:contextCopy];
            if (v96 != [v71 alignment] || *p_regenerateRoadSigns)
            {
              v97 = *[v71 label];
              *(v97 + 316) = 1;
              *(v97 + 276) = 0;
              [(NSMutableArray *)v186->_fadingLabels addObject:v71];
              std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::push_back[abi:nn200100](&v186->_activeSigns, [v71 label]);
              [navFeature5 recreateRoadSignWithAlignment:v96 navContext:contextCopy artworkCache:v186->_artworkCache];
              v98 = [navFeature5 labelWithType:0];

              v71 = v98;
            }
          }

          if (v186->_checkOnRouteLabelsAlignment && [v71 isRoadLabel])
          {
            navFeature6 = [v71 navFeature];
            if (([navFeature6 isAwayFromRoute] & 1) != 0 || (v101 = objc_msgSend(v71, "alignment"), v101 == objc_msgSend(navFeature6, "roadSignAlignment")) && !*p_regenerateRoadSigns)
            {
              v100 = v71;
            }

            else
            {
              if (*(*[v71 label] + 316))
              {
                [(NSMutableArray *)v186->_fadingLabels addObject:v71];
                std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::push_back[abi:nn200100](&v186->_activeSigns, [v71 label]);
                [navFeature6 clearRoadSign];
                v100 = 0;
              }

              else
              {
                v102 = *[v71 label];
                *(v102 + 316) = 1;
                *(v102 + 276) = 0;
                [(NSMutableArray *)v186->_fadingLabels addObject:v71];
                std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::push_back[abi:nn200100](&v186->_activeSigns, [v71 label]);
                [navFeature6 recreateRoadSignWithAlignment:objc_msgSend(navFeature6 navContext:"roadSignAlignment") artworkCache:{contextCopy, v186->_artworkCache}];
                v100 = [navFeature6 labelWithType:0];
              }
            }

            v71 = v100;
          }

          if (v71)
          {
            visibleLabelsByName = v186->_visibleLabelsByName;
            displayGroup = [v71 displayGroup];
            [(NSMutableDictionary *)visibleLabelsByName setObject:v71 forKey:displayGroup];

            [(NSMutableArray *)v186->_visibleLabels addObject:v71];
            std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::push_back[abi:nn200100](&v186->_activeSigns, [v71 label]);
            [v68 addObject:navFeature];
            if ([v71 isShieldLabel])
            {
              navFeature7 = [v71 navFeature];
              visibleShieldGroups = v186->_visibleShieldGroups;
              shieldGroup = [navFeature7 shieldGroup];
              [(NSMutableSet *)visibleShieldGroups addObject:shieldGroup];
            }

            if (([v71 isShieldLabel] & 1) == 0)
            {
              ++v186->_countVisibleRoadSigns;
              isOnRoute = [navFeature isOnRoute];
              p_countVisibleOffRouteRoadSigns = &v186->_countVisibleOffRouteRoadSigns;
              if (isOnRoute)
              {
                p_countVisibleOffRouteRoadSigns = &v186->_countVisibleOnRouteRoadSigns;
              }

              ++*p_countVisibleOffRouteRoadSigns;
            }

            if (*[v71 label] && v183 == 2)
            {
              v110 = *[v71 label];
              *(v110 + 24) = 0;
              *(v110 + 27) = 2;
            }
          }
        }

LABEL_167:

        ++v70;
      }

      while (v70 != v178);
      v69 = [(NSMutableArray *)v173 countByEnumeratingWithState:&v215 objects:v239 count:16];
    }

    while (v69);
  }

  v111 = v186;
  v186->_checkOnRouteLabelsAlignment = 0;
  if (!v186->_isStylesheetAnimating)
  {
    [(LabelNavRouteLabeler *)v186 _addLabelsAtJunctions:v186->_junctions withContext:contextCopy maxLabelsToAdd:v186->_maxVisibleRoadSigns];
    [(LabelNavRouteLabeler *)v186 _addLabelsForJunctions:v186->_junctions withContext:contextCopy maxLabelsToAdd:v186->_maxVisibleRoadSigns useAllJunctions:0 placeShieldsFrontToBack:0];
    if ((*v166 & 1) == 0)
    {
      if (v186->_shouldLabelOppositeCarriageways)
      {
        if (![(VKLabelNavRoadGraph *)v186->_roadGraph prepareOppositeCarriagewayJunctions])
        {
          v186->_needsLayout = 1;
          goto LABEL_171;
        }

        oppositeCarriagewayJunctions = [(VKLabelNavRoadGraph *)v186->_roadGraph oppositeCarriagewayJunctions];
        [(LabelNavRouteLabeler *)v186 _addLabelsForJunctions:oppositeCarriagewayJunctions withContext:contextCopy maxLabelsToAdd:v186->_maxVisibleRoadSigns useAllJunctions:0 placeShieldsFrontToBack:0];

        v111 = v186;
      }

      if (!(*(*contextCopy->var2 + 416))(contextCopy->var2))
      {
        goto LABEL_171;
      }

      countReadyJunctionLists = [(VKLabelNavRoadGraph *)v111->_roadGraph countReadyJunctionLists];
      v148 = countReadyJunctionLists > 2;
      countVisibleRoadSigns = v111->_countVisibleRoadSigns;
      if (countVisibleRoadSigns >= v111->_maxOnRoadGraphRoadSigns)
      {
        goto LABEL_263;
      }

      if ([(VKLabelNavRoadGraph *)v111->_roadGraph countReadyJunctionLists]> 1)
      {
        countReadyJunctionLists2 = 2;
      }

      else
      {
        countReadyJunctionLists2 = [(VKLabelNavRoadGraph *)v111->_roadGraph countReadyJunctionLists];
        if (!countReadyJunctionLists2)
        {
LABEL_259:
          countVisibleRoadSigns = v111->_countVisibleRoadSigns;
          if (countVisibleRoadSigns < v111->_maxOnRoadGraphRoadSigns && countReadyJunctionLists <= 2)
          {
            v161 = 0;
            v111->_needsLayout = 1;
LABEL_271:

            v111 = v186;
            goto LABEL_171;
          }

LABEL_263:
          v162 = 360;
          if (v111->_isOnRoute)
          {
            v162 = 352;
          }

          v163 = *(&v111->super.isa + v162);
          if (countVisibleRoadSigns >= v163 || !v148)
          {
            v161 = 0;
          }

          else
          {
            v161 = [(VKLabelNavRoadGraph *)v111->_roadGraph offRouteGraphJunctionsWithNavContext:contextCopy maxJunctions:25 isOnRoute:?];
            [(LabelNavRouteLabeler *)v111 _addLabelsForJunctions:v161 withContext:contextCopy maxLabelsToAdd:v163 useAllJunctions:1 placeShieldsFrontToBack:1];
          }

          goto LABEL_271;
        }
      }

      v156 = 2;
      while (1)
      {
        v157 = [(VKLabelNavRoadGraph *)v111->_roadGraph junctionListForDepth:v156 - 1];
        v158 = v157;
        if (!v157 || ![v157 count])
        {
          break;
        }

        [(LabelNavRouteLabeler *)v111 _addLabelsForJunctions:v158 withContext:contextCopy maxLabelsToAdd:v111->_maxOnRoadGraphRoadSigns useAllJunctions:0 placeShieldsFrontToBack:1];
        v159 = v111->_countVisibleRoadSigns >= v111->_maxOnRoadGraphRoadSigns;

        v160 = v156++ > countReadyJunctionLists2 || v159;
        v111 = v186;
        if (v160 == 1)
        {
          goto LABEL_259;
        }
      }

      v111 = v186;
      countVisibleRoadSigns = v186->_countVisibleRoadSigns;
      v148 = 1;
      goto LABEL_263;
    }
  }

LABEL_171:
  v111->_avoidanceRects.__end_ = v111->_avoidanceRects.__begin_;
  if (v111->_regenerateRoadSigns)
  {
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v112 = v111->_junctions;
    v113 = [(NSMutableArray *)v112 countByEnumeratingWithState:&v207 objects:v237 count:16];
    if (v113)
    {
      v114 = *v208;
      do
      {
        for (m = 0; m != v113; ++m)
        {
          if (*v208 != v114)
          {
            objc_enumerationMutation(v112);
          }

          v116 = *(*(&v207 + 1) + 8 * m);
          v203 = 0u;
          v204 = 0u;
          v205 = 0u;
          v206 = 0u;
          roads = [v116 roads];
          v118 = [roads countByEnumeratingWithState:&v203 objects:v236 count:16];
          if (v118)
          {
            v119 = *v204;
            do
            {
              for (n = 0; n != v118; ++n)
              {
                if (*v204 != v119)
                {
                  objc_enumerationMutation(roads);
                }

                v121 = *(*(&v203 + 1) + 8 * n);
                if (([v68 containsObject:v121] & 1) == 0)
                {
                  [v121 clearRoadSign];
                  [v121 clearRoadShield];
                }
              }

              v118 = [roads countByEnumeratingWithState:&v203 objects:v236 count:16];
            }

            while (v118);
          }
        }

        v113 = [(NSMutableArray *)v112 countByEnumeratingWithState:&v207 objects:v237 count:16];
      }

      while (v113);
    }

    v122 = v186;
    if ([(VKLabelNavRoadGraph *)v186->_roadGraph countReadyJunctionLists]> 1)
    {
      countReadyJunctionLists3 = 2;
    }

    else
    {
      countReadyJunctionLists3 = [(VKLabelNavRoadGraph *)v186->_roadGraph countReadyJunctionLists];
      if (!countReadyJunctionLists3)
      {
        v176 = 0;
LABEL_191:
        offRouteJunctionList = [(VKLabelNavRoadGraph *)v122->_roadGraph offRouteJunctionList];

        v193 = 0u;
        v194 = 0u;
        v191 = 0u;
        v192 = 0u;
        v177 = offRouteJunctionList;
        v125 = [v177 countByEnumeratingWithState:&v191 objects:v233 count:16];
        if (v125)
        {
          v126 = *v192;
          do
          {
            for (ii = 0; ii != v125; ++ii)
            {
              if (*v192 != v126)
              {
                objc_enumerationMutation(v177);
              }

              v128 = *(*(&v191 + 1) + 8 * ii);
              v187 = 0u;
              v188 = 0u;
              v189 = 0u;
              v190 = 0u;
              roads2 = [v128 roads];
              v130 = [roads2 countByEnumeratingWithState:&v187 objects:v232 count:16];
              if (v130)
              {
                v131 = *v188;
                do
                {
                  for (jj = 0; jj != v130; ++jj)
                  {
                    if (*v188 != v131)
                    {
                      objc_enumerationMutation(roads2);
                    }

                    v133 = *(*(&v187 + 1) + 8 * jj);
                    if (([v68 containsObject:v133] & 1) == 0)
                    {
                      [v133 clearRoadSign];
                      [v133 clearRoadShield];
                    }
                  }

                  v130 = [roads2 countByEnumeratingWithState:&v187 objects:v232 count:16];
                }

                while (v130);
              }
            }

            v125 = [v177 countByEnumeratingWithState:&v191 objects:v233 count:16];
          }

          while (v125);
        }

        v111 = v186;
        goto LABEL_208;
      }
    }

    v176 = 0;
    for (kk = 1; kk <= countReadyJunctionLists3; ++kk)
    {
      v135 = [(VKLabelNavRoadGraph *)v122->_roadGraph junctionListForDepth:kk];

      v201 = 0u;
      v202 = 0u;
      v199 = 0u;
      v200 = 0u;
      v176 = v135;
      v136 = [v176 countByEnumeratingWithState:&v199 objects:v235 count:16];
      if (v136)
      {
        v179 = *v200;
        do
        {
          for (mm = 0; mm != v136; ++mm)
          {
            if (*v200 != v179)
            {
              objc_enumerationMutation(v176);
            }

            v138 = kk;
            v139 = *(*(&v199 + 1) + 8 * mm);
            v195 = 0u;
            v196 = 0u;
            v197 = 0u;
            v198 = 0u;
            v184 = v139;
            roads3 = [v139 roads];
            v141 = countReadyJunctionLists3;
            v142 = [roads3 countByEnumeratingWithState:&v195 objects:v234 count:16];
            if (v142)
            {
              v143 = *v196;
              do
              {
                for (nn = 0; nn != v142; ++nn)
                {
                  if (*v196 != v143)
                  {
                    objc_enumerationMutation(roads3);
                  }

                  v145 = *(*(&v195 + 1) + 8 * nn);
                  if (([v68 containsObject:v145] & 1) == 0)
                  {
                    [v145 clearRoadSign];
                    [v145 clearRoadShield];
                  }
                }

                v142 = [roads3 countByEnumeratingWithState:&v195 objects:v234 count:16];
              }

              while (v142);
            }

            countReadyJunctionLists3 = v141;
            kk = v138;
          }

          v136 = [v176 countByEnumeratingWithState:&v199 objects:v235 count:16];
        }

        while (v136);
      }

      v122 = v186;
    }

    goto LABEL_191;
  }

LABEL_208:
  v111->_regenerateRoadSigns = 0;
  [(LabelNavRouteLabeler *)v111 _addVisibleSigns];
}

- (void)layoutForDisplayWithNavContext:(NavContext *)context labels:(void *)labels
{
  v5 = *labels;
  v6 = *(labels + 1);
  if (*labels != v6)
  {
    while (1)
    {
      v8 = *v5;
      if (*(*v5 + 380) != 1)
      {
        goto LABEL_5;
      }

      v9 = COERCE_FLOAT(atomic_load(v8 + 72));
      v4.n128_f32[0] = v9;
      if (v9 > 0.0)
      {
        break;
      }

LABEL_6:
      v5 += 2;
      if (v5 == v6)
      {
        return;
      }
    }

    v8 = *v5;
LABEL_5:
    (*(*v8 + 24))(v8, context, v4);
    goto LABEL_6;
  }
}

- (unsigned)orientationForRoadSign:(id)sign roadLabel:(id)label navContext:(NavContext *)context
{
  signCopy = sign;
  labelCopy = label;
  if (![signCopy isAwayFromRoute] || objc_msgSend(signCopy, "roadSignAlignment") == 3)
  {
    if (([signCopy isAwayFromRoute] & 1) == 0 && objc_msgSend(signCopy, "roadSignAlignment") != 3)
    {
      alignment = -[LabelNavRouteLabeler resolveOrientation:road:currentOrientation:](self, "resolveOrientation:road:currentOrientation:", context, signCopy, [labelCopy alignment]);
LABEL_11:
      v12 = alignment;
      goto LABEL_12;
    }

LABEL_10:
    alignment = [labelCopy alignment];
    goto LABEL_11;
  }

  v14 = 0.0;
  if (![(VKLabelNavRoadGraph *)self->_roadGraph collideRouteWithLabel:labelCopy routeCrossProduct:&v14 context:context])
  {
    goto LABEL_10;
  }

  if (fabsf(v14) <= -0.1)
  {
    alignment = [signCopy roadSignAlignment];
    goto LABEL_11;
  }

  v11 = [signCopy roadSignAlignment] - 1;
  if (v11 > 0xC)
  {
    v12 = 0;
  }

  else
  {
    v12 = byte_1B33B308E[v11];
  }

LABEL_12:

  return v12;
}

- (unsigned)resolveOrientation:(NavContext *)orientation road:(id)road currentOrientation:(unsigned __int8)currentOrientation
{
  roadCopy = road;
  [(LabelNavRouteLabeler *)self createRoadSignOrientationResolver:roadCopy navContext:orientation];
  [roadCopy direction2D];
  v9 = v8;
  v11 = v10;
  v22 = __PAIR64__(LODWORD(v10), LODWORD(v8));
  v12 = __sincosf_stret(*(orientation->var3 + 105));
  if (v22 && *&v12)
  {
    v13 = atan2f(v11, v9);
    v14 = (3.1416 - v13) + atan2f(v12.__sinval, v12.__cosval);
    v15 = fmodf(v14, 6.2832);
    v16 = fmodf(v15 + 6.2832, 6.2832) + -3.1416;
    if (v16 < 0.0)
    {
      v16 = v16 + 6.28318531;
    }
  }

  else
  {
    v16 = 0.0;
  }

  v17 = v25;
  v18 = fmodf(v16, 6.2832);
  v19 = fmodf(v18 + 6.2832, 6.2832);
  v20 = geo::range_map<geo::Unit<geo::RadianUnitDescription,float>,md::OrientationAction,std::less<geo::Unit<geo::RadianUnitDescription,float>>,std::allocator<std::pair<gm::Range<geo::Unit<geo::RadianUnitDescription,float>> const,md::OrientationAction>>>::find(v23, v19);
  if (v23 + 1 != v20 && !*(v20 + 36) && (v24 + *(v20 + 7)) <= v19 && (*(v20 + 8) - v24) >= v19)
  {
    if (v25 - 1 > 0xC)
    {
      v17 = 0;
    }

    else
    {
      v17 = byte_1B33B308E[(v25 - 1)];
    }
  }

  return v17;
}

- (RoadSignOrientationResolver)createRoadSignOrientationResolver:(id)resolver navContext:(NavContext *)context
{
  v6 = v4;
  resolverCopy = resolver;
  roadSignAlignment = [resolverCopy roadSignAlignment];
  roadSignAlignment2 = [resolverCopy roadSignAlignment];
  v9 = 592;
  if (roadSignAlignment == 7)
  {
    v9 = 568;
  }

  *v6 = self + v9;
  *(v6 + 8) = 1035122883;
  *(v6 + 12) = roadSignAlignment2;

  result.var1 = v11;
  result.var2 = BYTE4(v11);
  result.var0 = v10;
  return result;
}

- (void)_generateCurrentRoadSignWithContext:(NavContext *)context
{
  v49 = *MEMORY[0x1E69E9840];
  var1 = context->var1;
  v7 = *(var1 + 43);
  v6 = *(var1 + 44);
  if (!v6)
  {
    if (v7)
    {
      v9 = 0;
      goto LABEL_7;
    }

LABEL_25:
    v13 = 0.0;
    goto LABEL_52;
  }

  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = context->var1;
  v7 = *(v8 + 43);
  v9 = *(v8 + 44);
  if (v9)
  {
    v10 = 0;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_8;
  }

LABEL_7:
  v10 = 1;
LABEL_8:
  memset(v47, 0, 24);
  gss::StylesheetManager<gss::ScenePropertyID>::styleQueryForFeatureAttributes(&v42, v7, v47);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v47);
  if ((v10 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v11 = *&v42._orientation;
  v12 = *&v42._scale;
  if (*&v42._scale)
  {
    atomic_fetch_add_explicit((*&v42._scale + 8), 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::ScenePropertyID>::QueryableLocker(v47, v11, v12);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = 0.0;
  if (v48 != 1)
  {
    goto LABEL_50;
  }

  v14 = *(context->var3 + 8);
  LOBYTE(v44) = 1;
  v15 = v47[0][3];
  if (v14 >= 0x17)
  {
    v16 = 23;
  }

  else
  {
    v16 = v14;
  }

  v17 = *v15;
  if (*v15)
  {
    v18 = *v17;
    v19 = *v17 == 1.0;
    if (*(v15 + 10) == 1 && v18 != 0.0 && v18 != 1.0)
    {
      v21 = v18 < 1.0;
      goto LABEL_29;
    }
  }

  else
  {
    v19 = 0;
  }

  v22 = *(v15 + v19 + 11);
  if (v22 != 2)
  {
    v26 = *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<BOOL>(v47[0][3], v16, v22, &v44);
    v25 = v44;
    goto LABEL_33;
  }

  v21 = 1;
LABEL_29:
  LOBYTE(v46._scale) = 1;
  LOBYTE(v45) = 1;
  v23 = *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<BOOL>(v15, v16, 0, &v46);
  v24 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<BOOL>(v15, v16, 1u, &v45);
  v25 = LOBYTE(v46._scale) | v45;
  v26 = *v24;
  if (v21)
  {
    v26 = v23;
  }

LABEL_33:
  self->_isCurrentRoadSignVisible = v25 & v26 & 1;
  LOBYTE(v44) = 1;
  if (v17)
  {
    v27 = *v17;
    v28 = *v17 == 1.0;
    if (*(v15 + 10) == 1 && v27 != 0.0 && v27 != 1.0)
    {
      v30 = v27 < 1.0;
      goto LABEL_43;
    }
  }

  else
  {
    v28 = 0;
  }

  v31 = *(v15 + v28 + 11);
  if (v31 == 2)
  {
    v30 = 1;
LABEL_43:
    LOBYTE(v46._scale) = 1;
    LOBYTE(v45) = 1;
    v32 = *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<int>(v15, v16, 0, &v46);
    v33 = *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<int>(v15, v16, 1u, &v45);
    v34 = LOBYTE(v46._scale) | v45;
    if (v30)
    {
      LOWORD(v33) = v32;
    }

    goto LABEL_47;
  }

  v33 = *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<int>(v15, v16, v31, &v44);
  v34 = v44;
LABEL_47:
  if (v34)
  {
    v13 = v33;
  }

  else
  {
    v13 = 0.0;
  }

LABEL_50:
  gss::QueryableLocker<gss::ScenePropertyID>::~QueryableLocker(v47);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

LABEL_52:
  p_currentRoadSign = &self->_currentRoadSign;
  if (!self->_regenerateRoadSigns)
  {
    ptr = p_currentRoadSign->__ptr_;
    if (p_currentRoadSign->__ptr_)
    {
      if ((*(ptr + 92) - *(ptr + 90)) <= (*(context->var4 + 10) - *(context->var4 + 8)))
      {
        v37 = *(ptr + 93);
        v38 = *(ptr + 91);
        v39 = truncf(*(context->var1 + 44) * v13);
        v40 = *(ptr + 111) + v39;
        *(ptr + 80) = 0;
        *(ptr + 81) = v40;
        *(ptr + 110) = (v37 + v39) - v38;
        return;
      }
    }

    else if ([(NSString *)self->_currentLocationText length])
    {
      GetLabelNavStyleAttributes(&v43, 3, 1, 0, 0);
    }
  }

  cntrl = self->_currentRoadSign.__cntrl_;
  p_currentRoadSign->__ptr_ = 0;
  self->_currentRoadSign.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }
}

- (void)styleManagerDidChange:(BOOL)change
{
  if (!change)
  {
    self->_regenerateRoadSigns = 1;
  }

  self->_isStylesheetAnimating = change;
}

- (BOOL)_collideLabel:(id)label activeLabel:(id)activeLabel labelsToRemove:(id)remove
{
  v59 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  activeLabelCopy = activeLabel;
  removeCopy = remove;
  v47 = labelCopy;
  label = [labelCopy label];
  begin = self->_avoidanceRects.__begin_;
  end = self->_avoidanceRects.__end_;
  while (begin != end)
  {
    if (![labelCopy isJunctionLabel] || (*(begin + 20) & 1) != 0)
    {
      v11 = 0;
      v12 = 0;
      while (*(*label + 368 + 4 * v12) > *(begin + v12))
      {
        v13 = *(*label + 360 + 4 * v12) >= *(begin + v12 + 2);
        v14 = v11 | v13;
        v11 = 1;
        v12 = 1;
        if (v14)
        {
          if (v13)
          {
            break;
          }

          v44 = 1;
          goto LABEL_66;
        }
      }
    }

    begin = (begin + 24);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = self->_visibleLabels;
  v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (!v15)
  {
    goto LABEL_63;
  }

  v51 = *v54;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v54 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v53 + 1) + 8 * i);
      if (v17 != activeLabelCopy)
      {
        v18 = *label;
        label2 = [*(*(&v53 + 1) + 8 * i) label];
        v20 = 0;
        v21 = 0;
        v57 = *(*label2 + 424);
        v22 = &v57;
        do
        {
          if (*(v18 + 368 + 4 * v21) <= *v22)
          {
            goto LABEL_61;
          }

          v23 = *(v18 + 360 + 4 * v21);
          v24 = *&v58[4 * v21 - 8];
          v21 = 1;
          v25 = (v23 < v24) & ~v20;
          v20 = 1;
          v22 = &v57 + 1;
        }

        while ((v25 & 1) != 0);
        if (v23 >= v24)
        {
          continue;
        }

        v26 = v47;
        v27 = v17;
        v49 = v26;
        v28 = *([v26 label] + 8);
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        navFeature = [v26 navFeature];
        navFeature2 = [v27 navFeature];
        if (![navFeature isOnRoute])
        {
          isAwayFromRoute = [navFeature isAwayFromRoute];
          v34 = v27;
          if ((isAwayFromRoute & 1) == 0)
          {
            isAwayFromRoute2 = [navFeature2 isAwayFromRoute];
            v34 = v27;
            if ((isAwayFromRoute2 & 1) == 0)
            {
              isShieldLabel = [v26 isShieldLabel];
              v34 = v27;
              if ((isShieldLabel & 1) == 0)
              {
                [v27 isShieldLabel];
                v34 = v27;
              }
            }
          }

          goto LABEL_57;
        }

        if ([navFeature2 isOnRoute])
        {
          if (([v26 isShieldLabel] & 1) != 0 || (objc_msgSend(v27, "isShieldLabel") & 1) == 0)
          {
            if ([v26 isShieldLabel])
            {
              v31 = [v27 isShieldLabel] ^ 1;
              v32 = v31;
            }

            else
            {
              LOBYTE(v31) = 0;
              v32 = 0;
            }
          }

          else
          {
            LOBYTE(v31) = 0;
            v32 = 1;
          }

          if ([navFeature isInGuidance] && !objc_msgSend(navFeature2, "isInGuidance"))
          {
            goto LABEL_55;
          }

          if ([navFeature isInGuidance])
          {
            if (v32)
            {
              goto LABEL_55;
            }
          }

          else
          {
            isInGuidance = [navFeature2 isInGuidance];
            LOBYTE(v31) = isInGuidance | v31;
            if ((isInGuidance | v32))
            {
              goto LABEL_55;
            }
          }

          if ([v49 isJunctionLabel] && !objc_msgSend(v27, "isJunctionLabel"))
          {
            goto LABEL_55;
          }

          if (([v49 isJunctionLabel] & 1) == 0)
          {
            isJunctionLabel = [v27 isJunctionLabel];
            v34 = v27;
            if (isJunctionLabel)
            {
              goto LABEL_57;
            }
          }

          if ([navFeature isStartOfRoadName] && !objc_msgSend(navFeature2, "isStartOfRoadName"))
          {
LABEL_55:
            v34 = v27;
            if ((v31 & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          else if (([navFeature isStartOfRoadName] & 1) != 0 || (v40 = objc_msgSend(navFeature2, "isStartOfRoadName"), v34 = v27, (v40 & 1) == 0))
          {
            routeOffset = [navFeature2 routeOffset];
            routeOffset2 = [navFeature routeOffset];
            v34 = v27;
            if (routeOffset >= routeOffset2)
            {
              if (routeOffset != routeOffset2 || (v34 = v27, *(&routeOffset + 1) > *(&routeOffset2 + 1)))
              {
LABEL_56:
                v34 = v49;
              }
            }
          }
        }

        else
        {
          if (![v26 isShieldLabel])
          {
            goto LABEL_56;
          }

          isShieldLabel2 = [v27 isShieldLabel];
          v34 = v27;
          if (isShieldLabel2)
          {
            goto LABEL_56;
          }
        }

LABEL_57:
        v43 = v34;

        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v28);
        }

        if (v43 != v27)
        {
          [removeCopy addObject:v27];

          continue;
        }

        v44 = 1;
        goto LABEL_65;
      }

LABEL_61:
      ;
    }

    v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  }

  while (v15);
LABEL_63:
  v44 = 0;
LABEL_65:

LABEL_66:
  return v44;
}

- (void)_tryAddLabel:(id)label navContext:(NavContext *)context labelCollisionEnabled:(BOOL)enabled
{
  obj = enabled;
  v103 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  v8 = labelCopy;
  if (labelCopy)
  {
    v84 = labelCopy;
    v8 = labelCopy;
    if (*[labelCopy label])
    {
      navFeature = [v84 navFeature];
      visibleLabelsByName = self->_visibleLabelsByName;
      displayGroup = [v8 displayGroup];
      v11 = [(NSMutableDictionary *)visibleLabelsByName objectForKey:displayGroup];

      v85 = v11;
      navFeature2 = [v11 navFeature];
      if (self->_regenerateRoadSigns)
      {

        v85 = 0;
      }

      if ([v84 isShieldLabel])
      {
        v12 = navFeature;
        visibleShieldGroups = self->_visibleShieldGroups;
        shieldGroup = [v12 shieldGroup];
        LOBYTE(visibleShieldGroups) = [(NSMutableSet *)visibleShieldGroups containsObject:shieldGroup];

        if (visibleShieldGroups)
        {

LABEL_111:
          v8 = v84;
          goto LABEL_112;
        }

        v15 = self->_visibleShieldGroups;
        shieldGroup2 = [v12 shieldGroup];
        [(NSMutableSet *)v15 addObject:shieldGroup2];
      }

      if (([navFeature isAwayFromRoute] & 1) != 0 || objc_msgSend(navFeature2, "isOnRoute"))
      {
        isRamp = [navFeature isRamp];
        if (v85)
        {
          v18 = 1;
        }

        else
        {
          v18 = isRamp;
        }

        if ((v18 & 1) == 0)
        {
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v19 = self->_visibleLabels;
          v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v96 objects:v102 count:16];
          if (!v20)
          {
            goto LABEL_23;
          }

          v21 = *v97;
LABEL_17:
          v22 = 0;
          while (1)
          {
            if (*v97 != v21)
            {
              objc_enumerationMutation(v19);
            }

            navFeature3 = [*(*(&v96 + 1) + 8 * v22) navFeature];
            name = [navFeature3 name];
            name2 = [navFeature name];
            v26 = [name isEqualToString:name2];

            if (v26)
            {
              break;
            }

            if (v20 == ++v22)
            {
              v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v96 objects:v102 count:16];
              if (!v20)
              {
LABEL_23:

                goto LABEL_24;
              }

              goto LABEL_17;
            }
          }
        }

        goto LABEL_111;
      }

LABEL_24:
      if (v85)
      {
        if (v85 == v84)
        {
          goto LABEL_111;
        }

        if (([navFeature isOnRoute] & 1) == 0 && (objc_msgSend(navFeature2, "isAwayFromRoute") & 1) == 0)
        {
          if ([navFeature2 isOnRoute])
          {
            goto LABEL_111;
          }

          if ([v84 isRoadLabel])
          {
            intraRoadPriorityForRoadLabel = [navFeature2 intraRoadPriorityForRoadLabel];
            intraRoadPriorityForRoadLabel2 = [navFeature intraRoadPriorityForRoadLabel];
          }

          else
          {
            intraRoadPriorityForRoadLabel = [navFeature2 intraRoadPriorityForShieldLabel];
            intraRoadPriorityForRoadLabel2 = [navFeature intraRoadPriorityForShieldLabel];
          }

          if (intraRoadPriorityForRoadLabel > intraRoadPriorityForRoadLabel2)
          {
            goto LABEL_111;
          }

          if (intraRoadPriorityForRoadLabel == intraRoadPriorityForRoadLabel2)
          {
            [v85 desiredOffsetDistance];
            v75 = v74;
            [v84 desiredOffsetDistance];
            if ((v75 - v76) <= 10.0)
            {
              goto LABEL_111;
            }
          }

          if (*(*[v85 label] + 364) < *(context->var4 + 21))
          {
            navFeature4 = [v84 navFeature];
            navFeature5 = [v85 navFeature];
            v79 = navFeature4 == navFeature5;

            if (v79)
            {
              goto LABEL_111;
            }
          }
        }

        if ([navFeature2 isOnRoute])
        {
          if ([navFeature2 isStartOfRoadName])
          {
            if (![navFeature isStartOfRoadName])
            {
              goto LABEL_111;
            }

            routeOffset = [navFeature2 routeOffset];
            routeOffset2 = [navFeature routeOffset];
            if (routeOffset < routeOffset2 || routeOffset == routeOffset2 && *(&routeOffset + 1) <= *(&routeOffset2 + 1))
            {
              goto LABEL_111;
            }
          }

          else if (([navFeature isStartOfRoadName] & 1) == 0)
          {
            routeOffset3 = [navFeature2 routeOffset];
            routeOffset4 = [navFeature routeOffset];
            if (routeOffset3 < routeOffset4 || routeOffset3 == routeOffset4 && *(&routeOffset3 + 1) <= *(&routeOffset4 + 1))
            {
              goto LABEL_111;
            }

            v73 = atomic_load((*[v85 label] + 288));
            if ((v73 & 0x7FFFFFFF) != 0)
            {
              goto LABEL_111;
            }
          }
        }
      }

      label = [v84 label];
      v32 = *label;
      v33 = label[1];
      *&v95 = *label;
      *(&v95 + 1) = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [v84 layoutWithNavContext:context];
      if (*(v32 + 315))
      {
        if (*(v32 + 313) == 1 && (*(v32 + 314) & 1) != 0)
        {
          v80 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (v85)
          {
            [v80 addObject:v85];
          }

          if (!obj || ![(LabelNavRouteLabeler *)self _collideLabel:v84 activeLabel:v85 labelsToRemove:v80])
          {
            if (([navFeature isAwayFromRoute] & 1) == 0)
            {
              v93 = 0u;
              v94 = 0u;
              v91 = 0u;
              v92 = 0u;
              obja = self->_visibleLabels;
              v34 = [(NSMutableArray *)obja countByEnumeratingWithState:&v91 objects:v101 count:16];
              if (v34)
              {
                v35 = *v92;
                do
                {
                  for (i = 0; i != v34; ++i)
                  {
                    if (*v92 != v35)
                    {
                      objc_enumerationMutation(obja);
                    }

                    v37 = *(*(&v91 + 1) + 8 * i);
                    navFeature6 = [v37 navFeature];
                    if ([navFeature6 isAwayFromRoute])
                    {
                      navFeature7 = [v37 navFeature];
                      name3 = [navFeature7 name];
                      name4 = [navFeature name];
                      v42 = [name3 isEqualToString:name4];

                      if (v42 && ([v80 containsObject:v37] & 1) == 0)
                      {
                        [v80 addObject:v37];
                      }
                    }

                    else
                    {
                    }
                  }

                  v34 = [(NSMutableArray *)obja countByEnumeratingWithState:&v91 objects:v101 count:16];
                }

                while (v34);
              }
            }

            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            v43 = v80;
            v44 = [v43 countByEnumeratingWithState:&v87 objects:v100 count:16];
            if (v44)
            {
              v45 = *v88;
              do
              {
                for (j = 0; j != v44; ++j)
                {
                  if (*v88 != v45)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v47 = *(*(&v87 + 1) + 8 * j);
                  v48 = atomic_load((*[v47 label] + 288));
                  if ((v48 & 0x7FFFFFFF) != 0)
                  {
                    if ((*(*[v47 label] + 316) & 1) == 0)
                    {
                      v49 = *[v47 label];
                      *(v49 + 316) = 1;
                      *(v49 + 276) = 0;
                    }

                    if (v47 == v85)
                    {
                      [(NSMutableArray *)self->_fadingLabels addObject:v47];
                      v50 = self->_visibleLabelsByName;
                      displayGroup2 = [v47 displayGroup];
                      [(NSMutableDictionary *)v50 removeObjectForKey:displayGroup2];

                      [(NSMutableArray *)self->_visibleLabels removeObject:v47];
                      if ([v47 isShieldLabel])
                      {
                        goto LABEL_90;
                      }
                    }
                  }

                  else
                  {
                    begin = self->_activeSigns.__begin_;
                    end = self->_activeSigns.__end_;
                    label2 = [v47 label];
                    if (begin != end)
                    {
                      while (*begin != *label2)
                      {
                        begin += 16;
                        if (begin == end)
                        {
                          begin = end;
                          break;
                        }
                      }
                    }

                    v55 = self->_activeSigns.__end_;
                    if (begin != v55)
                    {
                      if (begin + 16 != v55)
                      {
                        do
                        {
                          v56 = *(begin + 1);
                          *(begin + 2) = 0;
                          *(begin + 3) = 0;
                          v57 = *(begin + 1);
                          *begin = v56;
                          if (v57)
                          {
                            std::__shared_weak_count::__release_shared[abi:nn200100](v57);
                          }

                          v58 = begin + 16;
                          v59 = begin + 32;
                          begin += 16;
                        }

                        while (v59 != v55);
                        v55 = self->_activeSigns.__end_;
                        begin = v58;
                      }

                      while (v55 != begin)
                      {
                        v60 = *(v55 - 1);
                        if (v60)
                        {
                          std::__shared_weak_count::__release_shared[abi:nn200100](v60);
                        }

                        v55 -= 16;
                      }

                      self->_activeSigns.__end_ = begin;
                    }

                    v61 = self->_visibleLabelsByName;
                    displayGroup3 = [v47 displayGroup];
                    [(NSMutableDictionary *)v61 removeObjectForKey:displayGroup3];

                    [(NSMutableArray *)self->_visibleLabels removeObject:v47];
                    if ([v47 isShieldLabel])
                    {
LABEL_90:
                      navFeature8 = [v47 navFeature];
                      v64 = self->_visibleShieldGroups;
                      shieldGroup3 = [navFeature8 shieldGroup];
                      [(NSMutableSet *)v64 removeObject:shieldGroup3];

                      continue;
                    }
                  }
                }

                v44 = [v43 countByEnumeratingWithState:&v87 objects:v100 count:16];
              }

              while (v44);
            }

            v66 = self->_visibleLabelsByName;
            displayGroup4 = [v84 displayGroup];
            [(NSMutableDictionary *)v66 setObject:v84 forKey:displayGroup4];

            [(NSMutableArray *)self->_visibleLabels addObject:v84];
            if (([v84 isShieldLabel] & 1) == 0)
            {
              ++self->_countVisibleRoadSigns;
              isOnRoute = [navFeature isOnRoute];
              v69 = 304;
              if (isOnRoute)
              {
                v69 = 296;
              }

              ++*(&self->super.isa + v69);
            }

            if ([(NSMutableArray *)self->_fadingLabels containsObject:v84])
            {
              [(NSMutableArray *)self->_fadingLabels removeObject:v84];
              v70 = v95;
            }

            else
            {
              std::vector<std::shared_ptr<md::NavLabel>,geo::allocator_adapter<std::shared_ptr<md::NavLabel>,mdm::zone_mallocator>>::push_back[abi:nn200100](&self->_activeSigns, &v95);
              v70 = v95;
              atomic_store(0, (v95 + 288));
            }

            *(v70 + 316) = 0;
            *(v70 + 276) = 1065353216;
            v33 = *(&v95 + 1);
          }
        }

        else if ((*(v32 + 316) & 1) == 0)
        {
          *(v32 + 316) = 1;
          *(v32 + 276) = 0;
        }
      }

      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v33);
      }

      goto LABEL_111;
    }
  }

LABEL_112:
}

- (void)_tryAddRoadSignForRoad:(id)road isShield:(BOOL)shield navContext:(NavContext *)context labelCollisionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  shieldCopy = shield;
  roadCopy = road;
  if (!shieldCopy)
  {
    currentRoadName = self->_currentRoadName;
    name = [roadCopy name];
    if ([(NSString *)currentRoadName isEqualToString:name])
    {
      isGuidanceStepStart = [roadCopy isGuidanceStepStart];

      if ((isGuidanceStepStart & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }
  }

  if ((![roadCopy isRamp] || (objc_msgSend(roadCopy, "isOnewayToJunction") & 1) == 0) && !(objc_msgSend(roadCopy, "isOnRoute") & shieldCopy) && (shieldCopy || (!objc_msgSend(roadCopy, "hasVisibleShields") || (objc_msgSend(roadCopy, "suppressRoadSignIfShieldPresent") & 1) == 0) && (objc_msgSend(roadCopy, "suppressRoadSignIfDeduped") & 1) == 0))
  {
    v13 = [roadCopy labelWithType:shieldCopy];
    if (!v13 || ([(NSMutableArray *)self->_visibleLabels containsObject:v13]& 1) == 0)
    {
      v15 = 0.0;
      for (i = 2; ; --i)
      {
        *&v14 = v15;
        [(LabelNavRouteLabeler *)self _createOrUpdateLabelForRoad:roadCopy isShield:shieldCopy navContext:context hopOffsetDistance:v14];
        v17 = [roadCopy labelWithType:shieldCopy];

        if (!v17)
        {
          v13 = 0;
          goto LABEL_34;
        }

        if (shieldCopy)
        {
          goto LABEL_18;
        }

        if (([roadCopy isAwayFromRoute] & 1) != 0 || !self->_isOnRoute && (objc_msgSend(roadCopy, "isOnRoute") & 1) == 0 && objc_msgSend(roadCopy, "roadSignAlignment") != 3)
        {
          [v17 layoutWithNavContext:context];
          if (*(*[v17 label] + 315) != 1)
          {
            v13 = v17;
            goto LABEL_34;
          }
        }

        v18 = [(LabelNavRouteLabeler *)self orientationForRoadSign:roadCopy roadLabel:v17 navContext:context];
        if (v18 == [v17 alignment] && !self->_regenerateRoadSigns)
        {
LABEL_18:
          v13 = v17;
        }

        else
        {
          [roadCopy recreateRoadSignWithAlignment:v18 navContext:context artworkCache:self->_artworkCache];
          v13 = [roadCopy labelWithType:0];

          if (!v13)
          {
            goto LABEL_34;
          }
        }

        visibleLabelsByName = self->_visibleLabelsByName;
        displayGroup = [v13 displayGroup];
        v21 = [(NSMutableDictionary *)visibleLabelsByName objectForKey:displayGroup];

        [v13 layoutWithNavContext:context];
        if (![(LabelNavRouteLabeler *)self _collideLabel:v13 activeLabel:v21 labelsToRemove:0])
        {
          break;
        }

        [v13 desiredOffsetDistance];
        if (!i)
        {
          goto LABEL_33;
        }

        v15 = v22 + 10.0;
      }

      [(LabelNavRouteLabeler *)self _tryAddLabel:v13 navContext:context labelCollisionEnabled:enabledCopy];
LABEL_33:
    }

LABEL_34:
  }

LABEL_35:
}

- (void)_createOrUpdateLabelForRoad:(id)road isShield:(BOOL)shield navContext:(NavContext *)context hopOffsetDistance:(float)distance
{
  shieldCopy = shield;
  roadCopy = road;
  v18 = roadCopy;
  if (shieldCopy)
  {
    v15 = 20.0;
    v16 = 40.0;
    LODWORD(v12) = 1120403456;
  }

  else
  {
    v16 = 13.0;
    v15 = 12.0;
    if ([roadCopy isOnRoute] && objc_msgSend(v18, "isStartOfRoadName"))
    {
      LODWORD(v11) = 1128792064;
      v17 = [(VKLabelNavRoadGraph *)self->_roadGraph isPriorRouteCollinearWithRoad:v18 distance:v11];
      if (v17)
      {
        v15 = 20.0;
      }

      else
      {
        v15 = 12.0;
      }

      if (v17)
      {
        *&v12 = 150.0;
      }

      else
      {
        *&v12 = 100.0;
      }

      if (v17)
      {
        v16 = 90.0;
      }

      else
      {
        v16 = 13.0;
      }
    }

    else
    {
      LODWORD(v12) = 1120403456;
    }

    roadCopy = v18;
  }

  *&v11 = fmaxf(fmaxf(self->_minSignOffsetDistance, v16), distance);
  LODWORD(v14) = 13.0;
  *&v13 = v15;
  [roadCopy createLabelWithNavContext:context isShieldLabel:shieldCopy desiredOffsetDistance:self->_roadGraph maxOffsetDistance:self->_artworkCache minJunctionDistance:v11 minRouteDistance:v12 roadGraph:v13 artworkCache:v14];
}

- (void)_tryAddRoadSignForJunction:(id)junction navContext:(NavContext *)context labelCollisionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  junctionCopy = junction;
  composedRoute = [(VKPolylineOverlay *)self->_route composedRoute];
  steps = [composedRoute steps];
  v10 = [steps objectAtIndexedSubscript:self->_stepIndex];

  [junctionCopy createLabelWithNavContext:context isDrivingSideRight:objc_msgSend(v10 artworkCache:{"drivingSide") == 0, self->_artworkCache}];
  junctionSign = [junctionCopy junctionSign];
  if (junctionSign)
  {
    [(LabelNavRouteLabeler *)self _tryAddLabel:junctionSign navContext:context labelCollisionEnabled:enabledCopy];
  }
}

- (void)grabTilesFromScene:(const void *)scene
{
  v36 = *MEMORY[0x1E69E9840];
  v33[0] = 0;
  v33[1] = 0;
  *v34 = 0;
  *&v34[23] = 0;
  *&v34[7] = 0;
  v35 = 1065353216;
  v4 = *scene;
  {
    qword_1ED65AC10 = 0;
    qword_1ED65AC08 = 0;
    md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet = &qword_1ED65AC08;
  }

  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  if (v5 == v6)
  {
    goto LABEL_12;
  }

  v7 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
  v8 = v5;
  while (*v8 != 13)
  {
    v8 += 16;
    if (v8 == v6)
    {
      goto LABEL_13;
    }
  }

  if (v8 == v6)
  {
LABEL_12:
    v7 = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
  }

  else
  {
    while (*v5 != 13)
    {
      v5 += 16;
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }

    v7 = (v5 + 4);
  }

LABEL_13:
  v11 = *v7;
  v9 = v7 + 1;
  v10 = v11;
  if (v11 != v9)
  {
    do
    {
      v12 = v10[4];
      if (v12)
      {
        if (*(v12 + 169) == 15)
        {
          v13 = *(v12 + 728);
          if (*v13 == 1)
          {
            std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::LabelTile>,std::shared_ptr<md::LabelTile> const&>(v33, v13, (v12 + 728));
          }
        }
      }

      v14 = v10[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v10[2];
          v16 = *v15 == v10;
          v10 = v15;
        }

        while (!v16);
      }

      v10 = v15;
    }

    while (v15 != v9);
  }

  v17 = [(NSMutableArray *)self->_junctions count];
  junctions = self->_junctions;
  v19 = MEMORY[0x1E696AE18];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3321888768;
  v31[2] = __43__LabelNavRouteLabeler_grabTilesFromScene___block_invoke;
  v31[3] = &__block_descriptor_88_ea8_32c147_ZTSNSt3__113unordered_setINS_10shared_ptrIN2md9LabelTileEEENS_4hashIS4_EENS_8equal_toIS4_EEN3geo17allocator_adapterIS4_N3mdm15zone_mallocatorEEEEE_e25_B24__0_8__NSDictionary_16l;
  std::unordered_set<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::unordered_set(v32, v33);
  v20 = [v19 predicateWithBlock:v31];
  [(NSMutableArray *)junctions filterUsingPredicate:v20];

  if ([(NSMutableArray *)self->_junctions count]!= v17)
  {
    [(VKLabelNavRoadGraph *)self->_roadGraph routeJunctionsHaveChanged];
  }

  for (i = self->_tiles.__table_.__first_node_.__next_; i; i = *i)
  {
    v22 = i[2];
    if (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(v33, v22))
    {
      std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__erase_unique<std::shared_ptr<md::LabelTile>>(&self->_pendingTiles.__table_.__bucket_list_.__ptr_, v22);
      self->_checkIfRouteSubrangeChanged = 1;
    }
  }

  v23 = *&v34[7];
  if (*&v34[7])
  {
    do
    {
      v24 = v23[2];
      if (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(&self->_tiles.__table_.__bucket_list_.__ptr_, v24))
      {
        self->_disableTileParseForOneLayout = 1;
        std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::LabelTile>,std::shared_ptr<md::LabelTile> const&>(&self->_pendingTiles, v24, v23 + 2);
        self->_checkIfRouteSubrangeChanged = 1;
      }

      v23 = *v23;
    }

    while (v23);
  }

  if (&self->_tiles != v33)
  {
    *self->_anon_78 = v35;
    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *>>(&self->_tiles, *&v34[7]);
  }

  [(VKLabelNavRoadGraph *)self->_roadGraph setTiles:v33];
  std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__deallocate_node(v32[3]);
  v26 = v32[0];
  v32[0] = 0;
  if (v26)
  {
    v27 = mdm::zone_mallocator::instance(v25);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *>(v27, v26);
  }

  std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__deallocate_node(*&v34[7]);
  v29 = v33[0];
  v33[0] = 0;
  if (v29)
  {
    v30 = mdm::zone_mallocator::instance(v28);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *> *>(v30, v29);
  }
}

- (void)_refreshGuidanceRoadNames
{
  [(NSMutableSet *)self->_roadNamesInGuidance removeAllObjects];
  [(NSMutableArray *)self->_guidanceStepInfos removeAllObjects];
  route = self->_route;
  if (route)
  {
    composedRoute = [(VKPolylineOverlay *)route composedRoute];
    steps = [composedRoute steps];
    v6 = [steps count];

    stepIndex = self->_stepIndex;
    if (stepIndex < v6)
    {
      do
      {
        composedRoute2 = [(VKPolylineOverlay *)self->_route composedRoute];
        steps2 = [composedRoute2 steps];
        v10 = [steps2 objectAtIndexedSubscript:stepIndex];

        maneuverRoadOrExitName = [v10 maneuverRoadOrExitName];
        if ([maneuverRoadOrExitName length])
        {
          [(NSMutableSet *)self->_roadNamesInGuidance addObject:maneuverRoadOrExitName];
          if (stepIndex < v6 - 1)
          {
            v12 = -[VKGuidanceStepInfo initWithRoadName:point:]([VKGuidanceStepInfo alloc], "initWithRoadName:point:", maneuverRoadOrExitName, [v10 endRouteCoordinate]);
            [(NSMutableArray *)self->_guidanceStepInfos addObject:v12];
          }
        }

        ++stepIndex;
      }

      while (v6 != stepIndex);
    }
  }
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  if (self->_route != routeCopy)
  {
    objc_storeStrong(&self->_route, route);
    self->_isSnappingReady = 0;
    matchedPaths = self->_matchedPaths;
    self->_matchedPaths = 0;

    *self->_anon_b0 = *self->_anon_78;
    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *>>(&self->_pendingTiles, self->_tiles.__table_.__first_node_.__next_);
    [(NSMutableArray *)self->_junctions removeAllObjects];
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](&self->_activeSigns);
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](&self->_visibleSigns);
    [(NSMutableDictionary *)self->_visibleLabelsByName removeAllObjects];
    [(NSMutableArray *)self->_visibleLabels removeAllObjects];
    [(NSMutableSet *)self->_visibleShieldGroups removeAllObjects];
    [(NSMutableArray *)self->_fadingLabels removeAllObjects];
    [(VKLabelNavRoadGraph *)self->_roadGraph reset];
    [(VKLabelNavRoadGraph *)self->_roadGraph setTiles:&self->_tiles];
    self->_stepIndex = 0;
    [(LabelNavRouteLabeler *)self _refreshGuidanceRoadNames];
    self->_disableTileParseForOneLayout = 1;
    *&self->_checkIfRouteSubrangeChanged = 1;
    self->_isOnRoute = 0;
    self->_regenerateRoadSigns = 0;
    self->_routeUserOffset = 0xBF80000000000000;
    self->_currentRoadNameIndex = -1;
    [(LabelNavRouteLabeler *)self setCurrentRoadName:0];
    [(LabelNavRouteLabeler *)self setCurrentShieldGroup:0];
    [(NSMutableArray *)self->_routeRoadInfos removeAllObjects];
  }
}

- (void)_reloadRouteJunctions
{
  *self->_anon_b0 = *self->_anon_78;
  std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::shared_ptr<md::LabelTile>,void *> *>>(&self->_pendingTiles, self->_tiles.__table_.__first_node_.__next_);
  [(NSMutableArray *)self->_junctions removeAllObjects];
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](&self->_activeSigns);
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](&self->_visibleSigns);
  [(NSMutableDictionary *)self->_visibleLabelsByName removeAllObjects];
  [(NSMutableArray *)self->_visibleLabels removeAllObjects];
  [(NSMutableSet *)self->_visibleShieldGroups removeAllObjects];
  [(NSMutableArray *)self->_fadingLabels removeAllObjects];
  [(VKLabelNavRoadGraph *)self->_roadGraph reset];
  roadGraph = self->_roadGraph;

  [(VKLabelNavRoadGraph *)roadGraph setTiles:&self->_tiles];
}

- (void)clearSceneIsMemoryWarning:(BOOL)warning
{
  self->_disableTileParseForOneLayout = 1;
  if (!warning)
  {
    self->_isSnappingReady = 0;
    matchedPaths = self->_matchedPaths;
    self->_matchedPaths = 0;

    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::clear(&self->_tiles);
    std::__hash_table<std::shared_ptr<md::LabelTile>,std::hash<std::shared_ptr<md::LabelTile>>,std::equal_to<std::shared_ptr<md::LabelTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelTile>,mdm::zone_mallocator>>::clear(&self->_pendingTiles);
    self->_hasPendingTilesInSnappingRegion = 0;
    [(NSMutableArray *)self->_junctions removeAllObjects];
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](&self->_activeSigns);
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](&self->_visibleSigns);
    [(NSMutableDictionary *)self->_visibleLabelsByName removeAllObjects];
    [(NSMutableArray *)self->_visibleLabels removeAllObjects];
    [(NSMutableSet *)self->_visibleShieldGroups removeAllObjects];
    [(NSMutableArray *)self->_fadingLabels removeAllObjects];
    [(VKLabelNavRoadGraph *)self->_roadGraph reset];
    self->_useRouteSubrange = 0;
  }
}

- (void)setRouteUserOffset:(PolylineCoordinate)offset
{
  *&v3 = offset.offset;
  self->_routeUserOffset = offset;
  isOnRoute = self->_isOnRoute;
  if (offset.offset >= 0.0)
  {
    index = offset.index;
    composedRoute = [(VKPolylineOverlay *)self->_route composedRoute];
    v7 = [composedRoute stepIndexForPointIndex:index];

    v6 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  self->_isOnRoute = v6;
  if (v6 != isOnRoute)
  {
    self->_checkIfRouteSubrangeChanged = 1;
    self->_checkOnRouteLabelsAlignment = v6;
  }

  if (v7 == self->_stepIndex)
  {
    if (!v6)
    {
LABEL_8:
      self->_currentRoadNameIndex = -1;
      [(LabelNavRouteLabeler *)self setCurrentRoadName:0, v3];

      [(LabelNavRouteLabeler *)self setCurrentShieldGroup:0];
      return;
    }
  }

  else
  {
    self->_stepIndex = v7;
    [(LabelNavRouteLabeler *)self _refreshGuidanceRoadNames];
    [(LabelNavRouteLabeler *)self _updateRoadsInGuidance];
    if (!self->_isOnRoute)
    {
      goto LABEL_8;
    }
  }

  [(LabelNavRouteLabeler *)self _updateCurrentRoadInfo];
}

- (void)setMaxVisibleRoadsigns:(unsigned int)roadsigns
{
  if (self->_maxVisibleRoadSigns != roadsigns && !self->_debugDisableRoadSignLimit)
  {
    maxVisibleOnRouteRoadSigns = self->_maxVisibleOnRouteRoadSigns;
    v4 = roadsigns - maxVisibleOnRouteRoadSigns;
    if (roadsigns < maxVisibleOnRouteRoadSigns)
    {
      v4 = 0;
    }

    self->_maxVisibleOffRouteRoadSigns = v4;
    self->_maxVisibleRoadSigns = roadsigns;
    self->_debugCachedMaxVisibleOffRouteRoadSigns = v4;
    self->_debugCachedMaxVisibleOnRouteRoadSigns = maxVisibleOnRouteRoadSigns;
  }
}

- (void)setDebugDisableRoadSignLimit:(BOOL)limit
{
  if (self->_debugDisableRoadSignLimit != limit)
  {
    v11 = v3;
    self->_debugDisableRoadSignLimit = limit;
    if (limit)
    {
      debugCachedMaxVisibleOnRouteRoadSigns = 100;
      debugCachedMaxVisibleOffRouteRoadSigns = 100;
    }

    else
    {
      debugCachedMaxVisibleOffRouteRoadSigns = self->_debugCachedMaxVisibleOffRouteRoadSigns;
      debugCachedMaxVisibleOnRouteRoadSigns = self->_debugCachedMaxVisibleOnRouteRoadSigns;
    }

    self->_maxVisibleOnRouteRoadSigns = debugCachedMaxVisibleOnRouteRoadSigns;
    self->_maxVisibleOffRouteRoadSigns = debugCachedMaxVisibleOffRouteRoadSigns;
    self->_maxVisibleRoadSigns = debugCachedMaxVisibleOnRouteRoadSigns + debugCachedMaxVisibleOffRouteRoadSigns;
    [(NSMutableDictionary *)self->_visibleLabelsByName removeAllObjects:v4];
    [(NSMutableArray *)self->_visibleLabels removeAllObjects];
    [(NSMutableSet *)self->_visibleShieldGroups removeAllObjects];
    fadingLabels = self->_fadingLabels;

    [(NSMutableArray *)fadingLabels removeAllObjects];
  }
}

- (void)setStyleManager:(shared_ptr<gss::StylesheetManager<gss::PropertyID>>)manager
{
  ptr = *manager.__ptr_;
  v5 = *(manager.__ptr_ + 1);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_styleManager.__cntrl_;
  self->_styleManager.__ptr_ = ptr;
  self->_styleManager.__cntrl_ = v5;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    ptr = self->_styleManager.__ptr_;
  }

  if (ptr)
  {
    gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v12, ptr[2]);
    v7 = self->_styleManager.__ptr_;
    if (v7 && *(v7[2] + 60) == 1)
    {
      self->_maxOnRoadGraphRoadSigns = 0;
      self->_minVisibleOffRoadGraphRoadSigns = 0;
      self->_minVisibleProceedToRouteRoadSigns = 2;
      v8 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v8 = 0;
  maxVisibleRoadSigns = self->_maxVisibleRoadSigns;
  if (maxVisibleRoadSigns >= 5)
  {
    maxVisibleRoadSigns = 5;
  }

  self->_maxOnRoadGraphRoadSigns = maxVisibleRoadSigns;
  *&self->_minVisibleOffRoadGraphRoadSigns = xmmword_1B33B1EB0;
LABEL_13:
  self->_preferRightSideLabelPlacement = v8;
  v10 = v12;
  if (v12)
  {
    v10 = *(v12 + 257);
  }

  self->_shouldLabelOppositeCarriageways = v10 & 1;
  v11 = v13;
  if (v13)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

@end