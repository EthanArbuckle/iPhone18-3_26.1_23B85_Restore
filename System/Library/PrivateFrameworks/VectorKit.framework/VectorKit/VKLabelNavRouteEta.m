@interface VKLabelNavRouteEta
+ (RoadSignStyleGroup)styleForNavContext:(SEL)a3 selected:(const NavContext *)a4 focused:(BOOL)a5 etaComparison:(BOOL)a6 transportType:(unsigned __int8)a7 navLabelType:(unsigned __int8)a8 when:(unsigned __int8)a9 routeLegWhen:(optional<gss:(optional<gss:(id)a12 :RouteLegWhen>)a11 :When>)a10 additionalAttributes:;
+ (id)artworkForEtaDescription:(id)a3 navContext:(const NavContext *)a4 roadSignStyleGroup:(const void *)a5 mercatorPoint:(const void *)a6 orientation:(unsigned __int8)a7 isSelected:(BOOL)a8 artworkCache:(void *)a9;
+ (unsigned)toStyleEtaComparison:(unsigned __int8)a3;
+ (unsigned)toStyleNavLabelType:(int64_t)a3;
+ (vector<GeoCodecsFeatureStylePair,)baseAttributesForEtaLabel:(mdm:(id)a2 :(SEL)a3 zone_mallocator>> *__return_ptr)retstr focused:(BOOL)a4 etaComparison:(BOOL)a5 transportType:(unsigned __int8)a6 navLabelType:(unsigned __int8)a7 when:(unsigned __int8)a8 routeLegWhen:(optional<gss:(optional<gss:(id)a11 :RouteLegWhen>)a10 :When>)a9 additionalAttributes:;
- (BOOL)hasAnchor;
- (BOOL)hasLabelWithAnchor;
- (Matrix<double,)worldPointForStaging;
- (VKLabelNavRouteEta)initWithRouteInfo:(id)a3 routeCoord:(PolylineCoordinate)a4;
- (_retain_ptr<VKLabelNavRoadLabel)updateRoadSignWithNavContext:(const NavContext *)a3 artworkCache:(void *)a4;
- (id).cxx_construct;
- (unsigned)etaComparisonToMain;
- (void)clearLabel;
- (void)createLabelWithNavContext:(const NavContext *)a3 orientation:(unsigned __int8)a4 etaDescription:(id)a5 selected:(BOOL)a6 when:(optional<gss:(optional<gss:(void *)a9 :RouteLegWhen>)a8 :When>)a7 routeLegWhen:artworkCache:;
- (void)dealloc;
- (void)updateAnchorWithContext:(const NavContext *)a3;
@end

@implementation VKLabelNavRouteEta

- (id).cxx_construct
{
  *(self + 28) = 0xBF80000000000000;
  *(self + 59) = 0;
  *(self + 53) = 0;
  return self;
}

- (_retain_ptr<VKLabelNavRoadLabel)updateRoadSignWithNavContext:(const NavContext *)a3 artworkCache:(void *)a4
{
  v40 = v4;
  if ([(VKLabelNavRouteEta *)self isRepositioning])
  {
    goto LABEL_12;
  }

  v34 = [(VKLabelNavRouteEta *)self orientation];
  v37 = [(VKLabelNavRouteEta *)self selected];
  v38 = [(VKLabelNavRouteEta *)self routeInfo];
  v36 = [v38 hasFocus];
  v35 = [(VKLabelNavRouteEta *)self etaComparisonToMain];
  v7 = [(VKRouteInfo *)self->_routeInfo route];
  v8 = [v7 transportType];
  if (v8 >= 7)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0x50403020100uLL >> (8 * v8);
  }

  v10 = [(VKLabelNavRouteEta *)self displayEtaDescription];
  v11 = +[VKLabelNavRouteEta toStyleNavLabelType:](VKLabelNavRouteEta, "toStyleNavLabelType:", [v10 routeEtaType]);
  v12 = [(VKLabelNavRouteEta *)self when];
  v13 = [(VKLabelNavRouteEta *)self routeLegWhen];
  v14 = [(VKLabelNavRouteEta *)self displayEtaDescription];
  v15 = [v14 styleAttributes];
  [VKLabelNavRouteEta styleForNavContext:a3 selected:v37 focused:v36 etaComparison:v35 transportType:v9 navLabelType:v11 when:*&v12 routeLegWhen:*&v13 additionalAttributes:v15];

  [(VKLabelNavRouteEta *)self worldPointForStaging];
  v17 = v16;
  v19 = v18;
  v20 = [(VKLabelNavRouteEta *)self displayEtaDescription];
  v41[0] = v17;
  v41[1] = v19;
  [(VKLabelNavRouteEta *)self selected];
  artworkAndKeyForEtaLabel(&v42, v20, a3, v44, v41, v34, a4);

  etaLabelArtworkKey = self->_etaLabelArtworkKey;
  v22 = v42;
  v23 = v43;
  self->_didStyleChange = v43 != etaLabelArtworkKey;

  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v47);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v46);
  }

  v25 = v45;
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v45);
  }

  if (v23 == etaLabelArtworkKey)
  {
    *v40 = off_1F2A59C08;
    v40[1] = 0;
  }

  else
  {
LABEL_12:
    v26 = [(VKLabelNavRouteEta *)self label];
    geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v40, v26);

    [(VKLabelNavRouteEta *)self clearLabel];
    v27 = [(VKLabelNavRouteEta *)self orientation];
    v28 = [(VKLabelNavRouteEta *)self displayEtaDescription];
    [(VKLabelNavRouteEta *)self createLabelWithNavContext:a3 orientation:v27 etaDescription:v28 selected:[(VKLabelNavRouteEta *)self selected] when:[(VKLabelNavRouteEta *)self when] routeLegWhen:[(VKLabelNavRouteEta *)self routeLegWhen] artworkCache:a4];

    v25 = [(VKLabelNavRouteEta *)self isRepositioning];
    if (v25)
    {
      v29 = v40[1];
      if (v29)
      {
        v30 = v29;
        v31 = *[v30 label];
        v31[313] = 0;
        if (v31[312] == 1)
        {
          v31[314] = 0;
        }
      }

      self->_isRepositioning = 0;
    }

    else
    {
      v25 = [(VKLabelNavRouteEta *)self hasLabel];
      if (v25)
      {
        v32 = [(VKLabelNavRouteEta *)self label];
        v33 = *[v32 label];
        *(v33 + 280) = 1065353216;
        *(v33 + 284) = 1;
      }
    }
  }

  result.var1 = v24;
  result.var0 = &v25->__vftable;
  return result;
}

- (void)updateAnchorWithContext:(const NavContext *)a3
{
  v5 = *(*(a3->var1 + 29) + 30);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a3->var3 + 24) ^ 1;
  }

  v7 = v6 & 1;
  if (!*(*[(VKLabelNavRoadLabel *)self->_etaLabel label]+ 160) || self->_anchorHasNoAltitude != v7 || self->_anchorFollowsTerrain != v5)
  {
    self->_anchorHasNoAltitude = v7;
    self->_anchorFollowsTerrain = v5;
    md::AnchorManager::newAnchorAtCoordinate(&v12);
  }

  v8 = *[(VKLabelNavRoadLabel *)self->_etaLabel label];
  md::NavLabel::worldPointForDisplay(v8, a3);
  *(v8 + 17) = v9;
  *(v8 + 18) = v10;
  *(v8 + 19) = v11;
}

- (void)createLabelWithNavContext:(const NavContext *)a3 orientation:(unsigned __int8)a4 etaDescription:(id)a5 selected:(BOOL)a6 when:(optional<gss:(optional<gss:(void *)a9 :RouteLegWhen>)a8 :When>)a7 routeLegWhen:artworkCache:
{
  v11 = a6;
  v16 = a5;
  if (!self->_etaLabel)
  {
    displayEtaDescription = self->_displayEtaDescription;
    location = &self->_displayEtaDescription;
    v46 = v16;
    if (displayEtaDescription != v16 && ![(VKRouteEtaDescription *)displayEtaDescription isEqual:v16])
    {
      objc_storeStrong(location, a5);
    }

    self->_selected = v11;
    self->_when = a7;
    self->_routeLegWhen = a8;
    self->_orientation = a4;
    v18 = [(VKRouteInfo *)self->_routeInfo route];
    [v18 pointWithAltitudeCorrectionAtRouteCoordinate:*&self->_routeOffset];
    v48 = v19;
    v21 = v20;
    v23 = v22;

    v45 = [(VKLabelNavRouteEta *)self routeInfo];
    v24 = [v45 hasFocus];
    v25 = [(VKLabelNavRouteEta *)self etaComparisonToMain];
    v26 = [(VKRouteInfo *)self->_routeInfo route];
    v43 = v25;
    v44 = v24;
    v47 = a4;
    v27 = [v26 transportType];
    if (v27 >= 7)
    {
      v28 = 4;
    }

    else
    {
      v28 = 0x50403020100uLL >> (8 * v27);
    }

    v29 = [(VKLabelNavRouteEta *)self displayEtaDescription];
    v30 = +[VKLabelNavRouteEta toStyleNavLabelType:](VKLabelNavRouteEta, "toStyleNavLabelType:", [v29 routeEtaType]);
    v31 = [(VKLabelNavRouteEta *)self when];
    v32 = [(VKLabelNavRouteEta *)self routeLegWhen];
    v33 = [*location styleAttributes];
    [VKLabelNavRouteEta styleForNavContext:a3 selected:v11 focused:v44 etaComparison:v43 transportType:v28 navLabelType:v30 when:*&v31 routeLegWhen:*&v32 additionalAttributes:v33];

    v34 = tan(v21 * 0.00872664626 + 0.785398163);
    v35 = log(v34);
    v36.f64[0] = v48;
    v36.f64[1] = v35;
    __asm { FMOV            V2.2D, #0.5 }

    v54 = vmlaq_f64(_Q2, xmmword_1B33B0700, v36);
    v16 = v46;
    artworkAndKeyForEtaLabel(&v55, v46, a3, &v50, &v54, v47, a9);
    v42 = v55;
    *&v55 = 0;
    if (v42)
    {
      self->_coordinate.latitude = v21;
      self->_coordinate.longitude = v48;
      self->_coordinate.altitude = v23;
      operator new();
    }

    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v53);
    }

    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v52);
    }

    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v51);
    }
  }
}

- (void)clearLabel
{
  [(VKLabelNavRoadLabel *)self->_etaLabel setNavFeature:0];
  etaLabel = self->_etaLabel;
  self->_etaLabel = 0;
}

- (void)dealloc
{
  [(VKLabelNavRouteEta *)self clearLabel];
  v3.receiver = self;
  v3.super_class = VKLabelNavRouteEta;
  [(VKLabelNavRouteEta *)&v3 dealloc];
}

- (unsigned)etaComparisonToMain
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = self->_routeInfo;
  v4 = [objc_opt_class() toStyleEtaComparison:{-[VKRouteInfo etaComparisionToMain](v3, "etaComparisionToMain")}];

  return v4;
}

- (VKLabelNavRouteEta)initWithRouteInfo:(id)a3 routeCoord:(PolylineCoordinate)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = VKLabelNavRouteEta;
  v8 = [(VKLabelNavRouteEta *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_routeInfo, a3);
    v9->_routeOffset = a4;
    v10 = v9;
  }

  return v9;
}

- (BOOL)hasLabelWithAnchor
{
  v3 = [(VKLabelNavRouteEta *)self hasLabel];
  if (v3)
  {
    LOBYTE(v3) = *(*[(VKLabelNavRoadLabel *)self->_etaLabel label]+ 160) != 0;
  }

  return v3;
}

- (BOOL)hasAnchor
{
  v3 = [(VKLabelNavRouteEta *)self hasLabel];
  if (v3)
  {
    LOBYTE(v3) = *(*[(VKLabelNavRoadLabel *)self->_etaLabel label]+ 160) != 0;
  }

  return v3;
}

- (Matrix<double,)worldPointForStaging
{
  v2 = [(VKLabelNavRouteEta *)self label];
  v3 = [v2 label];
  v4 = *(*v3 + 136);
  v5 = *(*v3 + 144);
  v6 = *(*v3 + 152);

  v7 = v4;
  v8 = v5;
  v9 = v6;
  result._e[2] = v9;
  result._e[1] = v8;
  result._e[0] = v7;
  return result;
}

+ (unsigned)toStyleNavLabelType:(int64_t)a3
{
  v3 = a3 + 4;
  if (a3 >= 5)
  {
    return 4;
  }

  return v3;
}

+ (unsigned)toStyleEtaComparison:(unsigned __int8)a3
{
  if (a3 >= 4u)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (RoadSignStyleGroup)styleForNavContext:(SEL)a3 selected:(const NavContext *)a4 focused:(BOOL)a5 etaComparison:(BOOL)a6 transportType:(unsigned __int8)a7 navLabelType:(unsigned __int8)a8 when:(unsigned __int8)a9 routeLegWhen:(optional<gss:(optional<gss:(id)a12 :RouteLegWhen>)a11 :When>)a10 additionalAttributes:
{
  v12 = a9;
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v62[1] = *MEMORY[0x1E69E9840];
  v19 = a12;
  v20 = objc_alloc_init(MEMORY[0x1E69A1DB0]);
  [VKLabelNavRouteEta baseAttributesForEtaLabel:v16 focused:v15 etaComparison:v14 transportType:v13 navLabelType:v12 when:*&a10 routeLegWhen:*&a11 additionalAttributes:v19];
  [v20 replaceAttributes:? count:?];
  md::NavContext::styleQueryForFeatureAttributes(&v54, a4, v20);
  v23 = v54;
  v22 = v55;
  v24 = v60;
  if (v19)
  {
    if (v60 >= v61)
    {
      v28 = (v60 - v59) >> 3;
      if ((v28 + 1) >> 61)
      {
        goto LABEL_40;
      }

      v29 = (v61 - v59) >> 2;
      if (v29 <= v28 + 1)
      {
        v29 = v28 + 1;
      }

      if (v61 - v59 >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v29;
      }

      v58 = v62;
      if (v30)
      {
        v31 = mdm::zone_mallocator::instance(v21);
        v32 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v31, v30);
      }

      else
      {
        v32 = 0;
      }

      v33 = &v32[8 * v28];
      v34 = &v32[8 * v30];
      *v33 = 0x10001004CLL;
      v25 = v33 + 8;
      v35 = &v33[-(v60 - v59)];
      memcpy(v35, v59, v60 - v59);
      v36 = v59;
      v37 = v61;
      v59 = v35;
      v60 = v25;
      v61 = v34;
      v56 = v36;
      v57 = v37;
      v54 = v36;
      v55 = v36;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v54);
    }

    else
    {
      *v60 = 0x10001004CLL;
      v25 = v24 + 8;
    }

    v60 = v25;
    [v20 replaceAttributes:? count:?];
    md::NavContext::styleQueryForFeatureAttributes(&v54, a4, v20);
    v27 = v54;
    v26 = v55;
    v24 = v60 - 8;
    v60 -= 8;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  if (v24 < v61)
  {
    *v24 = 0x30001004CLL;
    v38 = v24 + 8;
    goto LABEL_28;
  }

  v39 = (v24 - v59) >> 3;
  if ((v39 + 1) >> 61)
  {
LABEL_40:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v40 = (v61 - v59) >> 2;
  if (v40 <= v39 + 1)
  {
    v40 = v39 + 1;
  }

  if (v61 - v59 >= 0x7FFFFFFFFFFFFFF8)
  {
    v41 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v41 = v40;
  }

  v58 = v62;
  v53 = v19;
  if (v41)
  {
    v42 = mdm::zone_mallocator::instance(v21);
    v43 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v42, v41);
    v44 = v23;
  }

  else
  {
    v44 = v23;
    v43 = 0;
  }

  v46 = &v43[8 * v41];
  v45 = &v43[8 * v39];
  *v45 = 0x30001004CLL;
  v38 = v45 + 8;
  v47 = &v45[-(v60 - v59)];
  memcpy(v47, v59, v60 - v59);
  v48 = v59;
  v49 = v61;
  v59 = v47;
  v60 = v38;
  v61 = v46;
  v56 = v48;
  v57 = v49;
  v54 = v48;
  v55 = v48;
  std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v54);
  v23 = v44;
  v19 = v53;
LABEL_28:
  v60 = v38;
  [v20 replaceAttributes:? count:?];
  md::NavContext::styleQueryForFeatureAttributes(&v54, a4, v20);
  v50 = v54;
  v51 = v55;
  retstr->var0.var0 = v23;
  retstr->var0.var1 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
  }

  retstr->var1.var0 = v27;
  retstr->var1.var1 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
  }

  retstr->var2.var0 = v50;
  retstr->var2.var1 = v51;
  if (v51)
  {
    atomic_fetch_add_explicit(v51 + 1, 1uLL, memory_order_relaxed);
    std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v59);

    std::__shared_weak_count::__release_shared[abi:nn200100](v51);
  }

  else
  {
    std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v59);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v26);
  }

  return result;
}

+ (vector<GeoCodecsFeatureStylePair,)baseAttributesForEtaLabel:(mdm:(id)a2 :(SEL)a3 zone_mallocator>> *__return_ptr)retstr focused:(BOOL)a4 etaComparison:(BOOL)a5 transportType:(unsigned __int8)a6 navLabelType:(unsigned __int8)a7 when:(unsigned __int8)a8 routeLegWhen:(optional<gss:(optional<gss:(id)a11 :RouteLegWhen>)a10 :When>)a9 additionalAttributes:
{
  v11 = a8;
  v144 = a7;
  v145 = a6;
  v12 = a5;
  v13 = a4;
  v15 = a11;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v151 = retstr + 1;
  v16 = mdm::zone_mallocator::instance(v15);
  v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v16, 1);
  *v17 = 0x1000000005;
  v18 = retstr->var1 - retstr->var0;
  v19 = &v17[-v18];
  memcpy(&v17[-v18], retstr->var0, v18);
  var0 = retstr->var0;
  retstr->var0 = v19;
  retstr->var1 = (v17 + 8);
  var2 = retstr->var2;
  retstr->var2 = (v17 + 8);
  v149 = var0;
  v150 = var2;
  v147 = var0;
  v148 = var0;
  v22 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
  v23 = retstr->var2;
  retstr->var1 = (v17 + 8);
  if (v17 + 8 >= v23)
  {
    v25 = (v17 + 8 - retstr->var0) >> 3;
    if ((v25 + 1) >> 61)
    {
      goto LABEL_118;
    }

    v26 = v23 - retstr->var0;
    v27 = v26 >> 2;
    if (v26 >> 2 <= (v25 + 1))
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      v28 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v27;
    }

    v151 = retstr + 1;
    if (v28)
    {
      v29 = mdm::zone_mallocator::instance(v22);
      v30 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v29, v28);
    }

    else
    {
      v30 = 0;
    }

    v31 = &v30[8 * v28];
    v32 = &v30[8 * v25];
    *v32 = (((v11 << 32) | 0x10002) + 51);
    v24 = v32 + 1;
    v33 = retstr->var1 - retstr->var0;
    v34 = &v30[8 * v25 - v33];
    memcpy(v34, retstr->var0, v33);
    v35 = retstr->var0;
    retstr->var0 = v34;
    retstr->var1 = v24;
    v36 = retstr->var2;
    retstr->var2 = v31;
    v149 = v35;
    v150 = v36;
    v147 = v35;
    v148 = v35;
    v22 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
  }

  else
  {
    *(v17 + 1) = ((v11 << 32) | 0x10002) + 51;
    v24 = (v17 + 16);
  }

  retstr->var1 = v24;
  v37 = retstr->var2;
  if (v24 >= v37)
  {
    v40 = v24 - retstr->var0;
    if ((v40 + 1) >> 61)
    {
      goto LABEL_118;
    }

    v41 = v37 - retstr->var0;
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

    v151 = retstr + 1;
    if (v43)
    {
      v44 = mdm::zone_mallocator::instance(v22);
      v45 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v44, v43);
    }

    else
    {
      v45 = 0;
    }

    v46 = &v45[8 * v40];
    v47 = &v45[8 * v43];
    if (v13)
    {
      v48 = 0x100010002;
    }

    else
    {
      v48 = 65538;
    }

    *v46 = v48;
    v39 = (v46 + 1);
    v49 = retstr->var1 - retstr->var0;
    v50 = (v46 - v49);
    memcpy(v46 - v49, retstr->var0, v49);
    v51 = retstr->var0;
    retstr->var0 = v50;
    retstr->var1 = v39;
    v52 = retstr->var2;
    retstr->var2 = v47;
    v149 = v51;
    v150 = v52;
    v147 = v51;
    v148 = v51;
    v22 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
  }

  else
  {
    if (v13)
    {
      v38 = 0x100010002;
    }

    else
    {
      v38 = 65538;
    }

    *v24 = v38;
    v39 = v24 + 1;
  }

  retstr->var1 = v39;
  v53 = retstr->var2;
  if (v39 >= v53)
  {
    v56 = v39 - retstr->var0;
    if ((v56 + 1) >> 61)
    {
      goto LABEL_118;
    }

    v57 = v53 - retstr->var0;
    v58 = v57 >> 2;
    if (v57 >> 2 <= (v56 + 1))
    {
      v58 = v56 + 1;
    }

    if (v57 >= 0x7FFFFFFFFFFFFFF8)
    {
      v59 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v59 = v58;
    }

    v151 = retstr + 1;
    if (v59)
    {
      v60 = mdm::zone_mallocator::instance(v22);
      v61 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v60, v59);
    }

    else
    {
      v61 = 0;
    }

    v62 = &v61[8 * v56];
    v63 = &v61[8 * v59];
    if (v12)
    {
      v64 = 0x100010002;
    }

    else
    {
      v64 = 65538;
    }

    *v62 = (v64 + 75);
    v55 = v62 + 1;
    v65 = retstr->var1 - retstr->var0;
    v66 = (v62 - v65);
    memcpy(v62 - v65, retstr->var0, v65);
    v67 = retstr->var0;
    retstr->var0 = v66;
    retstr->var1 = v55;
    v68 = retstr->var2;
    retstr->var2 = v63;
    v149 = v67;
    v150 = v68;
    v147 = v67;
    v148 = v67;
    v22 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
  }

  else
  {
    if (v12)
    {
      v54 = 0x100010002;
    }

    else
    {
      v54 = 65538;
    }

    *v39 = (v54 + 75);
    v55 = v39 + 1;
  }

  retstr->var1 = v55;
  v69 = retstr->var2;
  if (v55 >= v69)
  {
    v72 = v55 - retstr->var0;
    v70 = a9;
    if ((v72 + 1) >> 61)
    {
      goto LABEL_118;
    }

    v73 = v69 - retstr->var0;
    v74 = v73 >> 2;
    if (v73 >> 2 <= (v72 + 1))
    {
      v74 = v72 + 1;
    }

    if (v73 >= 0x7FFFFFFFFFFFFFF8)
    {
      v75 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v75 = v74;
    }

    v151 = retstr + 1;
    if (v75)
    {
      v76 = mdm::zone_mallocator::instance(v22);
      v77 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v76, v75);
    }

    else
    {
      v77 = 0;
    }

    v78 = &v77[8 * v75];
    v79 = &v77[8 * v72];
    *v79 = (((v145 << 32) | 0x10002) + 69);
    v71 = v79 + 1;
    v80 = retstr->var1 - retstr->var0;
    v81 = &v77[8 * v72 - v80];
    memcpy(v81, retstr->var0, v80);
    v82 = retstr->var0;
    retstr->var0 = v81;
    retstr->var1 = v71;
    v83 = retstr->var2;
    retstr->var2 = v78;
    v149 = v82;
    v150 = v83;
    v147 = v82;
    v148 = v82;
    v22 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
  }

  else
  {
    v70 = a9;
    *v55 = (((v145 << 32) | 0x10002) + 69);
    v71 = v55 + 1;
  }

  retstr->var1 = v71;
  v84 = retstr->var2;
  if (v71 >= v84)
  {
    v86 = v71 - retstr->var0;
    if ((v86 + 1) >> 61)
    {
      goto LABEL_118;
    }

    v87 = v84 - retstr->var0;
    v88 = v87 >> 2;
    if (v87 >> 2 <= (v86 + 1))
    {
      v88 = v86 + 1;
    }

    if (v87 >= 0x7FFFFFFFFFFFFFF8)
    {
      v89 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v89 = v88;
    }

    v151 = retstr + 1;
    if (v89)
    {
      v90 = mdm::zone_mallocator::instance(v22);
      v91 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v90, v89);
    }

    else
    {
      v91 = 0;
    }

    v92 = &v91[8 * v89];
    v93 = &v91[8 * v86];
    *v93 = (((v144 << 32) | 0x10002) + 14);
    v85 = v93 + 1;
    v94 = retstr->var1 - retstr->var0;
    v95 = &v91[8 * v86 - v94];
    memcpy(v95, retstr->var0, v94);
    v96 = retstr->var0;
    retstr->var0 = v95;
    retstr->var1 = v85;
    v97 = retstr->var2;
    retstr->var2 = v92;
    v149 = v96;
    v150 = v97;
    v147 = v96;
    v148 = v96;
    v22 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
  }

  else
  {
    *v71 = (((v144 << 32) | 0x10002) + 14);
    v85 = v71 + 1;
  }

  retstr->var1 = v85;
  if ((*&v70 & 0x100) != 0)
  {
    v98 = retstr->var2;
    if (v85 >= v98)
    {
      v99 = v85 - retstr->var0;
      if ((v99 + 1) >> 61)
      {
        goto LABEL_118;
      }

      v100 = v98 - retstr->var0;
      v101 = v100 >> 2;
      if (v100 >> 2 <= (v99 + 1))
      {
        v101 = v99 + 1;
      }

      if (v100 >= 0x7FFFFFFFFFFFFFF8)
      {
        v102 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v102 = v101;
      }

      v151 = retstr + 1;
      if (v102)
      {
        v103 = mdm::zone_mallocator::instance(v22);
        v104 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v103, v102);
      }

      else
      {
        v104 = 0;
      }

      v105 = &v104[8 * v102];
      v106 = &v104[8 * v99];
      *v106 = (((v70.var0.__val_ << 32) | 0x10002) + 7);
      v85 = v106 + 1;
      v107 = retstr->var1 - retstr->var0;
      v108 = &v104[8 * v99 - v107];
      memcpy(v108, retstr->var0, v107);
      v109 = retstr->var0;
      retstr->var0 = v108;
      retstr->var1 = v85;
      v110 = retstr->var2;
      retstr->var2 = v105;
      v149 = v109;
      v150 = v110;
      v147 = v109;
      v148 = v109;
      v22 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
    }

    else
    {
      *v85++ = (((v70.var0.__val_ << 32) | 0x10002) + 7);
    }

    retstr->var1 = v85;
  }

  if ((*&a10 & 0x100) == 0)
  {
    goto LABEL_101;
  }

  v111 = retstr->var2;
  if (v85 >= v111)
  {
    v113 = v85 - retstr->var0;
    if (!((v113 + 1) >> 61))
    {
      v114 = v111 - retstr->var0;
      v115 = v114 >> 2;
      if (v114 >> 2 <= (v113 + 1))
      {
        v115 = v113 + 1;
      }

      if (v114 >= 0x7FFFFFFFFFFFFFF8)
      {
        v116 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v116 = v115;
      }

      v151 = retstr + 1;
      if (v116)
      {
        v117 = mdm::zone_mallocator::instance(v22);
        v118 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v117, v116);
      }

      else
      {
        v118 = 0;
      }

      v119 = &v118[8 * v113];
      v120 = &v118[8 * v116];
      *v119 = (((a10.var0.__val_ << 32) | 0x10002) + 82);
      v112 = v119 + 1;
      v121 = retstr->var1 - retstr->var0;
      v122 = (v119 - v121);
      memcpy(v119 - v121, retstr->var0, v121);
      v123 = retstr->var0;
      retstr->var0 = v122;
      retstr->var1 = v112;
      v124 = retstr->var2;
      retstr->var2 = v120;
      v149 = v123;
      v150 = v124;
      v147 = v123;
      v148 = v123;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
      goto LABEL_100;
    }

LABEL_118:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v85 = (((a10.var0.__val_ << 32) | 0x10002) + 82);
  v112 = v85 + 1;
LABEL_100:
  retstr->var1 = v112;
LABEL_101:
  if (v15)
  {
    for (i = 0; i < [(mdm::zone_mallocator *)v15 countAttrs]; ++i)
    {
      v126 = [(mdm::zone_mallocator *)v15 attributeAtIndex:i];
      v127 = v126;
      var1 = retstr->var1;
      v128 = retstr->var2;
      if (var1 >= v128)
      {
        v131 = var1 - retstr->var0;
        if ((v131 + 1) >> 61)
        {
          goto LABEL_118;
        }

        v132 = v128 - retstr->var0;
        v133 = v132 >> 2;
        if (v132 >> 2 <= (v131 + 1))
        {
          v133 = v131 + 1;
        }

        if (v132 >= 0x7FFFFFFFFFFFFFF8)
        {
          v134 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v134 = v133;
        }

        v151 = retstr + 1;
        if (v134)
        {
          v135 = mdm::zone_mallocator::instance(v126);
          v136 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v135, v134);
        }

        else
        {
          v136 = 0;
        }

        v137 = &v136[8 * v131];
        v138 = &v136[8 * v134];
        *v137 = *v127;
        v130 = v137 + 1;
        v139 = retstr->var1 - retstr->var0;
        v140 = (v137 - v139);
        memcpy(v137 - v139, retstr->var0, v139);
        v141 = retstr->var0;
        retstr->var0 = v140;
        retstr->var1 = v130;
        v142 = retstr->var2;
        retstr->var2 = v138;
        v149 = v141;
        v150 = v142;
        v147 = v141;
        v148 = v141;
        std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
      }

      else
      {
        *var1 = *v126;
        v130 = var1 + 1;
      }

      retstr->var1 = v130;
    }
  }

  return result;
}

+ (id)artworkForEtaDescription:(id)a3 navContext:(const NavContext *)a4 roadSignStyleGroup:(const void *)a5 mercatorPoint:(const void *)a6 orientation:(unsigned __int8)a7 isSelected:(BOOL)a8 artworkCache:(void *)a9
{
  artworkAndKeyForEtaLabel(v11, a3, a4, a5, a6, a7, a9);
  v9 = v11[0];

  return v9;
}

@end