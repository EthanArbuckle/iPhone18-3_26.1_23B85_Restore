@interface VKRouteLine
- (BOOL)buildRouteLine:(id)a3 matchToRoads:(BOOL)a4 shouldGenerateSnapPath:(BOOL)a5 viewUnitsPerPoint:(double)a6 force:(BOOL)a7 boundsInflation:(float)a8 isGradientTraffic:(BOOL)a9 currentLegIndex:(unsigned int)a10 elevationSource:(void *)a11 elevationSourceContext:(void *)a12;
- (BOOL)isTrafficUpToDate;
- (BOOL)needsUpdateForViewingScale:(double)a3;
- (Box<double,)bounds;
- (Matrix<double,)inverseManeuverTransform;
- (Matrix<double,)maneuverTransform;
- (NSArray)matchedSegments;
- (VKRouteLine)initWithPolylineOverlay:(id)a3;
- (VKRouteLineObserverProtocol)observer;
- (double)_findSimplifiedOffsetFor:(const PolylineCoordinate *)a3 betweenA:(const PolylineCoordinate *)a4 andB:(const PolylineCoordinate *)a5;
- (id).cxx_construct;
- (optional<VKRouteLineSnapResult>)snapRouteMatch:(SEL)a3;
- (optional<std::pair<const)_getSnappedSegment:()fast_shared_ptr<md:(mdm:(const PolylineCoordinate *)a4 :allocator>)a3 :RouteLineSection coord:;
- (vector<geo::fast_shared_ptr<md::RouteLineSection,)sections;
- (vector<gm::Matrix<float,)maneuverPoints;
- (void)_addMatchedSegments:(id)a3;
- (void)_clearMatchedSegments;
- (void)_updateBounds:(id)a3 boundsInflation:(float)a4;
- (void)_updateTilesCovered:(id)a3;
- (void)createMeshIfNecessary:(int64_t)a3;
- (void)dealloc;
- (void)forEachSection:(id)a3;
- (void)generateArrowsForManeuverDisplayMode:(int)a3 routeLineWidth:(double)a4 collideTrafficFeatures:(const void *)a5;
- (void)splitRouteLineAtAnnotation:(id)a3 puckOffset:(PolylineCoordinate)a4;
@end

@implementation VKRouteLine

- (BOOL)isTrafficUpToDate
{
  v2 = *(self + 47);
  [*(self + 24) trafficTimeStamp];
  return v2 >= v3;
}

- (Box<double,)bounds
{
  v3 = *&self->_maximum._e[1];
  *retstr->_minimum._e = *&self->_minimum._e[2];
  *&retstr->_minimum._e[2] = v3;
  *&retstr->_maximum._e[1] = *self[1]._minimum._e;
  return self;
}

- (NSArray)matchedSegments
{
  std::mutex::lock((self + 440));
  if ([*(self + 54) count])
  {
    [*(self + 29) addObjectsFromArray:*(self + 54)];
    [*(self + 54) removeAllObjects];
  }

  std::mutex::unlock((self + 440));
  v3 = *(self + 29);

  return v3;
}

- (id).cxx_construct
{
  *(self + 39) = 0xBF80000000000000;
  *(self + 280) = 0u;
  *(self + 296) = 0u;
  *(self + 41) = &unk_1F2A27290;
  *(self + 42) = 0;
  *(self + 45) = 0;
  *(self + 46) = 0;
  *(self + 44) = 0;
  *(self + 51) = 0;
  *(self + 52) = 0;
  *(self + 50) = 0;
  *(self + 55) = 850045863;
  *(self + 28) = 0u;
  *(self + 29) = 0u;
  *(self + 30) = 0u;
  *(self + 62) = 0;
  return self;
}

- (VKRouteLineObserverProtocol)observer
{
  WeakRetained = objc_loadWeakRetained(self + 34);

  return WeakRetained;
}

- (vector<geo::fast_shared_ptr<md::RouteLineSection,)sections
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  cap = self[11].__cap_;
  begin = self[12].__begin_;
  v5 = begin - cap;
  if (begin != cap)
  {
    if (!((v5 >> 3) >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v5 >> 3);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return self;
}

- (Matrix<double,)maneuverTransform
{
  v3 = self->_e[2];
  v4 = self->_e[3];
  v5 = self->_e[4];
  v6 = self->_e[5];
  v7 = self->_e[6];
  v8 = self->_e[7];
  *&retstr->_e[5] = 0u;
  *&retstr->_e[9] = 0u;
  *&retstr->_e[1] = 0u;
  *&retstr->_e[3] = 0u;
  *&retstr->_e[7] = 0u;
  retstr->_e[11] = 0.0;
  retstr->_e[15] = 1.0;
  retstr->_e[0] = v6 - v3;
  retstr->_e[5] = v7 - v4;
  retstr->_e[10] = v8 - v5;
  retstr->_e[12] = v3;
  retstr->_e[13] = v4;
  retstr->_e[14] = v5;
  return self;
}

- (Matrix<double,)inverseManeuverTransform
{
  v3 = *&self[1]._e[2];
  *&retstr->_e[8] = *self[1]._e;
  *&retstr->_e[10] = v3;
  v4 = *&self[1]._e[6];
  *&retstr->_e[12] = *&self[1]._e[4];
  *&retstr->_e[14] = v4;
  v5 = *&self->_e[10];
  *retstr->_e = *&self->_e[8];
  *&retstr->_e[2] = v5;
  v6 = *&self->_e[14];
  *&retstr->_e[4] = *&self->_e[12];
  *&retstr->_e[6] = v6;
  return self;
}

- (vector<gm::Matrix<float,)maneuverPoints
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v33 = [*(self + 24) composedRoute];
  std::vector<gm::Matrix<float,2,1>>::reserve(retstr, [v33 stepsCount]);
  v5 = 0;
  __asm { FMOV            V0.2D, #0.5 }

  v30 = _Q0;
  v31 = xmmword_1B33B0700;
  v29 = xmmword_1B33B0740;
  while (v5 < [v33 stepsCount])
  {
    v11 = [v33 stepAtIndex:v5];
    [v33 pointAtRouteCoordinate:{objc_msgSend(v11, "endRouteCoordinate")}];
    v32 = v12;
    v14 = tan(v13 * 0.00872664626 + 0.785398163);
    v15 = log(v14);
    v16.f64[0] = v32;
    v16.f64[1] = v15;
    *__p = vmlaq_f64(v30, v31, v16);
    v35 = v29;
    v17 = gm::operator*<double,4,4,1>(self + 8, __p);
    v19 = v18;
    end = retstr->__end_;
    cap = retstr->__cap_;
    if (end >= cap)
    {
      v23 = (end - retstr->__begin_) >> 3;
      v24 = v23 + 1;
      if ((v23 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v25 = cap - retstr->__begin_;
      if (v25 >> 2 > v24)
      {
        v24 = v25 >> 2;
      }

      if (v25 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v24;
      }

      v36 = retstr;
      if (v26)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v26);
      }

      v27 = (8 * v23);
      __p[0] = 0;
      __p[1] = v27;
      *v27 = v17;
      v27[1] = v19;
      v35 = (8 * v23 + 8);
      std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(retstr, __p);
      v22 = retstr->__end_;
      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *end = v17;
      end[1] = v19;
      v22 = end + 2;
    }

    retstr->__end_ = v22;

    ++v5;
  }

  return result;
}

- (void)_updateBounds:(id)a3 boundsInflation:(float)a4
{
  *(self + 1) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(self + 2) = xmmword_1B33B0520;
  *(self + 3) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__13_23238;
  v45[4] = __Block_byref_object_dispose__14_23239;
  v46 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x5012000000;
  v44[3] = __Block_byref_object_copy__31;
  v44[4] = __Block_byref_object_dispose__32;
  v44[5] = "";
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x4012000000;
  v43[3] = __Block_byref_object_copy__34;
  v43[4] = __Block_byref_object_dispose__35;
  v43[5] = "";
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __45__VKRouteLine__updateBounds_boundsInflation___block_invoke;
  v30[3] = &unk_1E7B38D10;
  v30[6] = v44;
  v30[7] = v43;
  v30[8] = &v39;
  v30[9] = &v35;
  v30[4] = self;
  v30[5] = v45;
  v30[10] = &v31;
  forEachNodeInSortedPaths(a3, v30);
  v6 = v40;
  v40[3] = *(self + 5) - *(self + 2);
  v7 = *(self + 6) - *(self + 3);
  v36[3] = v7;
  v8 = v6[3];
  v10 = *(self + 2);
  v9 = *(self + 3);
  if (v8 <= v7)
  {
    v12 = v10 + v7;
    *(self + 5) = v10 + v7;
    v11 = *(self + 6);
  }

  else
  {
    v11 = v9 + v8;
    *(self + 6) = v9 + v8;
    v12 = *(self + 5);
  }

  v13 = exp((v9 + (v11 - v9) * 0.5) * 6.28318531 + -3.14159265);
  v14 = atan(v13);
  v15 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v14 * 114.591559 + -90.0);
  v16 = v15 * (a4 * v32[6]);
  v6[3] = v12 - v10;
  v17 = v16 + (v12 - v10) * 0.005;
  v18 = *(self + 3);
  v19 = *(self + 2) - v17;
  v20 = *(self + 4);
  v21 = *(self + 5) + v17;
  *(self + 2) = v19;
  *(self + 3) = v18 - v17;
  v22 = *(self + 6);
  v23 = *(self + 7);
  *(self + 5) = v21;
  *(self + 6) = v22 + v17;
  v24 = v23 - v20;
  if (v23 - v20 <= 0.000000999999997)
  {
    v24 = 1.0;
    *(self + 7) = v20 + 1.0;
  }

  v25 = v21 - v19;
  *(self + 31) = v21 - v19;
  v26 = exp((v22 + v18) * 3.14159265 + -3.14159265);
  v27 = atan(v26);
  *(self + 25) = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v27 * 114.591559 + -90.0) / v25;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 18) = 1.0 / v24;
  *(self + 19) = 0;
  v28 = *(self + 1);
  v29 = vsubq_f64(*(self + 40), v28);
  *(self + 8) = 1.0 / v29.f64[0];
  *(self + 13) = 1.0 / v29.f64[1];
  *(self + 10) = vdivq_f64(vnegq_f64(v28), v29);
  *(self + 22) = -v20 / v24;
  *(self + 23) = 0x3FF0000000000000;
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v45, 8);
}

void __45__VKRouteLine__updateBounds_boundsInflation___block_invoke(void *a1, float *a2, float a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a6;
  v11 = v10;
  if (*(*(a1[5] + 8) + 40) != v10)
  {
    v12 = [v10 section];
    [v12 vkBounds];
    v13 = *(a1[6] + 8);
    v13[6] = v14;
    v13[7] = v15;
    v13[8] = v16;
    v13[9] = v17;

    v18 = [v11 section];
    v19 = v18;
    if (v18)
    {
      [v18 bounds];
      v20 = v34;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v11 section];
    v22 = v21;
    if (v21)
    {
      [v21 bounds];
      v23 = v33;
    }

    else
    {
      v23 = 0.0;
    }

    v24 = [v11 section];
    v25 = v24;
    if (v24)
    {
      [v24 bounds];
      v26 = v32;
    }

    else
    {
      v26 = 0.0;
    }

    v27 = *(a1[7] + 8);
    *(v27 + 48) = v20;
    *(v27 + 56) = v26 + v23;

    *(*(a1[8] + 8) + 24) = *(*(a1[6] + 8) + 64) - *(*(a1[6] + 8) + 48);
    *(*(a1[9] + 8) + 24) = *(*(a1[6] + 8) + 72) - *(*(a1[6] + 8) + 56);
    objc_storeStrong((*(a1[5] + 8) + 40), a6);
  }

  v28 = *(a1[6] + 8);
  v29 = *(v28 + 48) + *(*(a1[8] + 8) + 24) * *a2;
  v30 = *(v28 + 56) + *(*(a1[9] + 8) + 24) * a2[1];
  v31 = *(*(a1[7] + 8) + 48) + a2[2];
  *(a1[4] + 16) = fmin(*(a1[4] + 16), v29);
  *(a1[4] + 40) = fmax(*(a1[4] + 40), v29);
  *(a1[4] + 24) = fmin(*(a1[4] + 24), v30);
  *(a1[4] + 48) = fmax(*(a1[4] + 48), v30);
  *(a1[4] + 32) = fmin(*(a1[4] + 32), v31);
  *(a1[4] + 56) = fmax(*(a1[4] + 56), v31);
  *(*(a1[10] + 8) + 24) = fmaxf(*(*(a1[10] + 8) + 24), a3);
}

- (void)forEachSection:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = *(self + 35);
    for (i = *(self + 36); v6 != i; ++v6)
    {
      v7 = *v6;
      v9 = v7;
      if (v7)
      {
        *v7 += 2;
      }

      v8 = v7;
      v4[2](v4, &v8);
      geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(&v8);
      geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(&v9);
    }
  }
}

- (void)splitRouteLineAtAnnotation:(id)a3 puckOffset:(PolylineCoordinate)a4
{
  v6 = a3;
  v7 = [v6 routeMatch];
  v8 = v7;
  if (!v7 || ([v7 route], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "uniqueRouteID"), v10 = objc_claimAutoreleasedReturnValue(), -[VKRouteLine overlay](self, "overlay"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "composedRoute"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "uniqueRouteID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v10, "isEqual:", v13), v13, v12, v11, v10, v9, (v14 & 1) == 0))
  {
    *(self + 39) = 0xBF80000000000000;
    v50 = *(self + 35);
    for (i = *(self + 36); v50 != i; ++v50)
    {
      v51 = *v50;
      *&v74[0] = v51;
      if (v51)
      {
        ++*v51;
        v52 = v51 + 1;
      }

      else
      {
        v52 = 0;
      }

      *(v52 + 16) = -1082130432;
      geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(v74);
    }

    goto LABEL_38;
  }

  [v6 presentationCoordinate];
  v16 = v15;
  [v6 presentationCoordinate];
  v59 = v17;
  v18 = HIDWORD(*&a4);
  offset = a4.offset;
  v20 = tan(v16 * 0.00872664626 + 0.785398163);
  v21 = log(v20);
  *&v22.f64[0] = v59;
  v22.f64[1] = v21;
  __asm { FMOV            V1.2D, #0.5 }

  v74[0] = vmlaq_f64(_Q1, xmmword_1B33B0700, v22);
  v74[1] = xmmword_1B33B0740;
  v28 = gm::operator*<double,4,4,1>(self + 8, v74);
  v30 = v29;
  if (*MEMORY[0x1E69A1918] == a4.index && vabds_f32(a4.offset, *(MEMORY[0x1E69A1918] + 4)) < 0.00000011921)
  {
    v31 = [v8 routeCoordinate];
    v18 = HIDWORD(v31);
    offset = *(&v31 + 1);
    a4.index = v31;
  }

  v32 = *MEMORY[0x1E69A1920];
  v33 = *(MEMORY[0x1E69A1920] + 4);
  index = *(MEMORY[0x1E69A1920] + 8);
  v35 = *(MEMORY[0x1E69A1920] + 12);
  v36 = [*(self + 24) splitSections];
  v37 = *v36;
  v38 = v36[1];
  if (*v36 == v38)
  {
    v42 = v35;
    v41 = index;
    v40 = v33;
    v39 = v32;
    goto LABEL_31;
  }

  v39 = v32;
  v40 = v33;
  v41 = index;
  v42 = v35;
  while (1)
  {
    v43 = *v37;
    v44 = v37[1];
    v45 = *(v37 + 2);
    v46 = v37[3];
    if (*v37 >= a4.index && (LODWORD(v43) != a4.index || v44 > offset))
    {
      goto LABEL_20;
    }

    if (v45 > a4.index)
    {
      break;
    }

    if (v45 == a4.index && v46 >= offset)
    {
      v32 = *v37;
      v33 = v37[1];
      index = a4.index;
      goto LABEL_30;
    }

LABEL_20:
    v37 += 4;
    v39 = v43;
    v40 = v44;
    v41 = v45;
    v42 = v46;
    if (v37 == v38)
    {
      v42 = v46;
      v41 = v45;
      v40 = v44;
      v39 = v43;
      goto LABEL_31;
    }
  }

  v32 = *v37;
  v33 = v37[1];
  index = *(v37 + 2);
LABEL_30:
  v35 = v37[3];
LABEL_31:
  v53 = v28;
  v54 = v30;
  if (*(self + 79) < 0.0)
  {
    goto LABEL_36;
  }

  v55 = 0;
  v56 = 1;
  v57 = v53;
  do
  {
    v58 = vabds_f32(v57, *(self + v55 + 80));
    if ((v56 & 1) == 0)
    {
      break;
    }

    v56 = 0;
    v57 = v54;
    v55 = 1;
  }

  while (v58 < 1.0e-10);
  if (v58 >= 1.0e-10)
  {
LABEL_36:
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __53__VKRouteLine_splitRouteLineAtAnnotation_puckOffset___block_invoke;
    v60[3] = &unk_1E7B38CE8;
    v62 = a4.index;
    v63 = v18;
    v60[4] = self;
    v64 = v53;
    v65 = v54;
    v66 = v32;
    v67 = v33;
    v68 = index;
    v69 = v35;
    v70 = v39;
    v71 = v40;
    v72 = v41;
    v73 = v42;
    v61 = v8;
    [(VKRouteLine *)self forEachSection:v60];
  }

  *(self + 80) = v53;
  *(self + 81) = v54;
LABEL_38:
}

void __53__VKRouteLine_splitRouteLineAtAnnotation_puckOffset___block_invoke(float32x2_t *a1, uint64_t a2)
{
  v4 = a1 + 6;
  v5 = a1[6].u32[0];
  v6 = *a2;
  if (*a2)
  {
    v7 = *a2 + 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v7 + 88);
  if (v5 < v8 || v5 == v8 && a1[6].f32[1] < *(v7 + 92))
  {
    v9 = md::RouteLineSection::kSplitLocationBeforeSection;
LABEL_40:
    md::RouteLineSection::split(v7, v9);
    goto LABEL_41;
  }

  v10 = *(v7 + 96);
  if (v10 < v5 || v10 == v5 && *(v7 + 100) < a1[6].f32[1])
  {
    v9 = md::RouteLineSection::kSplitLocationAfterSection;
    goto LABEL_40;
  }

  v11 = a1[4];
  v55 = *a2;
  if (v6)
  {
    ++*v6;
  }

  v12 = [v11 _getSnappedSegment:&v55 coord:v4];
  v14 = v13;
  geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(&v55);
  if (v14)
  {
    if ((v12 - 5) <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v12 - 5;
    }

    v16 = v12 + 5;
    if (*a2)
    {
      v17 = *a2 + 8;
    }

    else
    {
      v17 = 0;
    }

    v18 = (*(*v17 + 56))(v17);
    if (v18 >= v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = v18;
    }

    *(*&a1[4] + 312) = 0;
    v20 = v19 - v15;
    if (v19 > v15)
    {
      v21 = v15 - 1;
      v22 = 3.4028e38;
      do
      {
        v23 = *(*(*(*a2 + 8) + 48))(*a2 + 8, v21);
        v24 = vsub_f32(*(*(*(*a2 + 8) + 48))(*a2 + 8, v21 + 1), v23);
        v25 = vmul_f32(v24, v24);
        v26 = a1[7];
        v27 = 0.0;
        if (vaddv_f32(v25) > 1.0e-15)
        {
          v28 = vadd_f32(vdup_lane_s32(v25, 1), v25);
          v29 = vmul_f32(vsub_f32(v26, v23), v24);
          v27 = fminf(fmaxf(vdiv_f32(vadd_f32(vdup_lane_s32(v29, 1), v29), v28).f32[0], 0.0), 1.0);
        }

        v30 = vsub_f32(v26, vmla_n_f32(v23, v24, v27));
        v31 = vaddv_f32(vmul_f32(v30, v30));
        if (v31 < v22)
        {
          v32 = v27 < 1.0;
          v33 = vcvtms_u32_f32(v27) + v15 - 1;
          v34 = v27 - floorf(v27);
          if (v27 >= 1.0)
          {
            v27 = v34;
          }

          v35 = a1[4];
          if (v32)
          {
            v33 = v21;
          }

          *(*&v35 + 312) = v33;
          *(*&v35 + 316) = v27;
          v22 = v31;
        }

        LODWORD(v15) = v15 + 1;
        ++v21;
        --v20;
      }

      while (v20);
    }

    if (*a2)
    {
      v7 = *a2 + 8;
    }

    else
    {
      v7 = 0;
    }

    v9 = (*&a1[4] + 312);
    goto LABEL_40;
  }

LABEL_41:
  if (*a2)
  {
    v36 = *a2 + 8;
  }

  else
  {
    v36 = 0;
  }

  *(v36 + 237) = 0;
  v37 = (v36 + 237);
  v38 = a1[8].u32[0];
  v39 = *MEMORY[0x1E69A1918];
  if (v38 == *MEMORY[0x1E69A1918] && vabds_f32(a1[8].f32[1], *(MEMORY[0x1E69A1918] + 4)) < 0.00000011921)
  {
    v40 = 0;
  }

  else
  {
    v40 = a1[9].i32[0] != v39 || vabds_f32(a1[9].f32[1], *(MEMORY[0x1E69A1918] + 4)) >= 0.00000011921;
  }

  v41 = a1[10].u32[0];
  if (v41 == v39 && vabds_f32(a1[10].f32[1], *(MEMORY[0x1E69A1918] + 4)) < 0.00000011921)
  {
    v42 = 1;
    if (!v40)
    {
      return;
    }
  }

  else if (a1[11].i32[0] == v39)
  {
    v42 = vabds_f32(a1[11].f32[1], *(MEMORY[0x1E69A1918] + 4)) < 0.00000011921;
    if (!v40)
    {
      return;
    }
  }

  else
  {
    v42 = 0;
    if (!v40)
    {
      return;
    }
  }

  v43 = *(v36 + 88);
  if (v38 < v43 || v38 == v43 && a1[8].f32[1] <= *(v36 + 92))
  {
    v44 = *(v36 + 96);
    v45 = a1[9].u32[0];
    if (v44 < v45 || v44 == v45 && *(v36 + 100) <= a1[9].f32[1])
    {
      goto LABEL_60;
    }
  }

  if (!v42 && (v41 < v43 || v41 == v43 && a1[10].f32[1] <= *(v36 + 92)))
  {
    v46 = *(v36 + 96);
    v47 = a1[11].u32[0];
    if (v46 < v47 || v46 == v47 && *(v36 + 100) <= a1[11].f32[1])
    {
      v48 = [*&a1[5] route];
      [v48 distanceBetweenRouteCoordinate:*&a1[8] andRouteCoordinate:*&a1[9]];
      v50 = v49;

      v51 = [*&a1[5] route];
      [v51 distanceBetweenRouteCoordinate:*&a1[8] andRouteCoordinate:*&a1[6]];
      v53 = v52;

      if (v53 < v50 * 0.5)
      {
        if (*a2)
        {
          v54 = *a2 + 8;
        }

        else
        {
          v54 = 0;
        }

        v37 = (v54 + 237);
LABEL_60:
        *v37 = 1;
      }
    }
  }
}

- (optional<VKRouteLineSnapResult>)snapRouteMatch:(SEL)a3
{
  v119 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (!v6 || ([v6 route], (v8 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(v7, "route"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "uniqueRouteID"), v10 = objc_claimAutoreleasedReturnValue(), -[VKRouteLine overlay](self, "overlay"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "composedRoute"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "uniqueRouteID"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v10, "isEqual:", v13), v13, v12, v11, v10, v9, v8, (v14 & 1) == 0))
  {
    retstr->var0.var0 = 0;
    retstr->var1 = 0;
    goto LABEL_42;
  }

  [v7 locationCoordinate3D];
  [v7 locationCoordinate3D];
  v15 = [v7 routeCoordinate];
  v81 = v15;
  v17 = *(self + 35);
  v16 = *(self + 36);
  if (v17 == v16)
  {
LABEL_43:
    v73 = 0;
    retstr->var0.var0 = 0;
    goto LABEL_44;
  }

  while (1)
  {
    if (*v17)
    {
      v18 = *v17 + 8;
    }

    else
    {
      v18 = 0;
    }

    if ((*(*v18 + 56))(v18) <= 1)
    {
      v19 = GEOGetVectorKitVKRouteLineLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v20 = v19;
        v21 = "[RouteSnapping] Not enough vertices";
LABEL_19:
        _os_log_impl(&dword_1B2754000, v20, OS_LOG_TYPE_INFO, v21, &buf, 2u);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    v22 = *v17 + 8;
    if (!*v17)
    {
      v22 = 0;
    }

    v23 = *(v22 + 88);
    if (v23 <= v15 && (v23 != v15 || *(v22 + 92) <= *(&v15 + 1)))
    {
      v24 = *(v22 + 96);
      if (v24 >= v15 && (v24 != v15 || *(v22 + 100) >= *(&v15 + 1)))
      {
        break;
      }
    }

    v19 = GEOGetVectorKitVKRouteLineLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      v20 = v19;
      v21 = "[RouteSnapping] Section not contained";
      goto LABEL_19;
    }

LABEL_20:

LABEL_21:
    if (++v17 == v16)
    {
      goto LABEL_43;
    }
  }

  v25 = *(v22 + 8);
  v26 = *(v22 + 16);
  if (v26 == v25)
  {
    v28 = v26;
  }

  else
  {
    v27 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 4);
    v28 = v25;
    do
    {
      v29 = v27 >> 1;
      v30 = &v28[6 * (v27 >> 1)];
      v31 = v30[1].u32[1];
      if (v31 < v15 || v31 == v15 && v30[2].f32[0] < *(&v15 + 1))
      {
        v28 = v30 + 6;
        v29 = v27 + ~v29;
      }

      v27 = v29;
    }

    while (v29);
  }

  if (v26 == v28)
  {
    goto LABEL_21;
  }

  if (v25 == v28)
  {
    v32 = v28;
  }

  else
  {
    v32 = v28 - 6;
  }

  [(VKRouteLine *)self _findSimplifiedOffsetFor:&v81 betweenA:&v32[1].i32[1] andB:&v28[1].i32[1]];
  v34 = v33;
  v77 = gm::lerp<gm::Matrix<float,3,1>,float>(v32->f32[0], v32->f32[1], v32[1].f32[0], v28->f32[0], v28->f32[1], v28[1].f32[0], v34);
  v78 = v35;
  v76 = v36;
  [(VKRouteLine *)self maneuverTransform];
  __asm { FMOV            V1.2S, #1.0 }

  _D1.f32[0] = v76;
  v80 = vcvtq_f64_f32(_D1);
  v79 = vcvtq_f64_f32(__PAIR64__(LODWORD(v78), LODWORD(v77)));
  v42 = gm::operator*<double,4,4,1>(&buf, &v79);
  v44 = v43;
  v46 = v45;
  v47 = GEOGetVectorKitVKRouteLineLog();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    v48 = exp(v44 * 6.28318531 + -3.14159265);
    v49 = atan(v48) * 114.591559 + -90.0;
    v50 = fmod(v42 * 6.28318531, 6.28318531);
    v51 = fmod(v50 + 6.28318531, 6.28318531);
    v52 = v32[1].i32[1];
    v53 = v32[2].f32[0];
    v54 = v32->f32[0];
    v55 = v32->f32[1];
    v56 = v32[1].f32[0];
    v57 = v28[1].i32[1];
    v58 = v28[2].f32[0];
    v59 = v28->f32[0];
    v60 = v28->f32[1];
    v61 = v28[1].f32[0];
    LODWORD(buf) = 67113729;
    HIDWORD(buf) = v52;
    v83 = 2048;
    v84 = v53;
    v85 = 2048;
    v86 = v54;
    v87 = 2048;
    v88 = v55;
    v89 = 2048;
    v90 = v56;
    v91 = 1024;
    v92 = v57;
    v93 = 2048;
    v94 = v58;
    v95 = 2048;
    v96 = v59;
    v97 = 2048;
    v98 = v60;
    v99 = 2048;
    v100 = v61;
    v101 = 2048;
    v102 = v34;
    v103 = 1024;
    v104 = v81;
    v105 = 2048;
    v106 = *(&v81 + 1);
    v107 = 2048;
    v108 = v77;
    v109 = 2048;
    v110 = v78;
    v111 = 2048;
    v112 = v76;
    v113 = 2049;
    v114 = v49;
    v115 = 2049;
    v116 = v51 * 57.2957795 + -180.0;
    v117 = 2049;
    v118 = v46;
    _os_log_impl(&dword_1B2754000, v47, OS_LOG_TYPE_INFO, "[RouteSnapping] Segment matched: point0 routeIndexAndOffset: (%d, %f), position: (%f, %f, %f) | point1 routeIndexAndOffset: (%d, %f) position: (%f %f %f) |  offset %f | routeCoordinate: (%d, %f) | localResult (%f, %f, %f) | worldResultCoordinate (%{private}f, %{private}f, %{private}f)\n", &buf, 0xB4u);
  }

  [(VKRouteLine *)self maneuverTransform];
  *v62.f32 = *v32;
  v62.i32[2] = v32[1].i32[0];
  v62.i32[3] = 1.0;
  v63 = vcvtq_f64_f32(*v32);
  v80 = vcvt_hight_f64_f32(v62);
  v79 = v63;
  v64 = gm::operator*<double,4,4,1>(&buf, &v79);
  v66 = v65;
  v68 = v67;
  [(VKRouteLine *)self maneuverTransform];
  *v69.f32 = *v28;
  v69.i32[2] = v28[1].i32[0];
  v69.i32[3] = 1.0;
  v70 = vcvtq_f64_f32(*v28);
  v80 = vcvt_hight_f64_f32(v69);
  v79 = v70;
  v71 = gm::operator*<double,4,4,1>(&buf, &v79);
  retstr->var0.var1.var0._e[0] = v42;
  retstr->var0.var1.var0._e[1] = v44;
  retstr->var0.var1.var0._e[2] = v46;
  retstr->var0.var1.var1.first._e[0] = v64;
  retstr->var0.var1.var1.first._e[1] = v66;
  retstr->var0.var1.var1.first._e[2] = v68;
  retstr->var0.var1.var1.second._e[0] = v71;
  retstr->var0.var1.var1.second._e[1] = v72;
  v73 = 1;
  retstr->var0.var1.var1.second._e[2] = v74;
LABEL_44:
  retstr->var1 = v73;
LABEL_42:

  return result;
}

- (BOOL)needsUpdateForViewingScale:(double)a3
{
  v4 = *(self + 53);
  if (v4 == 0.0)
  {
    v7 = 1;
  }

  else
  {
    v5 = (v4 - a3) / v4;
    v6 = fabsf(v5);
    if (v4 >= a3)
    {
      v7 = v6 > 0.45;
    }

    else
    {
      v7 = v6 > 1.0;
    }
  }

  if ([(VKRouteLine *)self isTrafficUpToDate]&& ![(VKRouteLine *)self hasNewRoadMatches])
  {
    v9 = [(VKRouteLine *)self composedRoute];
    v10 = [v9 revisionIdentifier];
    v12 = v10;
    v8 = geo::_retain_ptr<NSUUID * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(self + 42), &v12) ^ 1 | v7;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (void)createMeshIfNecessary:(int64_t)a3
{
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __37__VKRouteLine_createMeshIfNecessary___block_invoke;
  v21[3] = &unk_1E7B38CC0;
  v21[4] = self;
  v21[5] = a3;
  [(VKRouteLine *)self forEachSection:v21];
  v4 = *(self + 44);
  v5 = *(self + 45);
  while (v4 != v5)
  {
    v6 = *(self + 35);
    if (*(self + 36) != v6)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = *(v6 + 8 * v7);
        if (v9)
        {
          v10 = v9 + 8;
        }

        else
        {
          v10 = 0;
        }

        v11 = *(v10 + 88);
        v12 = *(v4 + 12);
        if (v11 < v12 || v11 == v12 && *(v10 + 92) <= *(v4 + 16))
        {
          v13 = *(v10 + 96);
          if (v12 < v13 || v12 == v13 && *(v4 + 16) <= *(v10 + 100))
          {
            v14 = *(v4 + 12);
            *(v4 + 28) = md::RouteLineSection::simplifiedCoordinate(v10, *(self + 24), v14);
            *(v4 + 4) = v8;
            v6 = *(self + 35);
            v9 = *(v6 + 8 * v7);
          }
        }

        v15 = v9 ? v9 + 8 : 0;
        v16 = *(v15 + 88);
        v17 = *(v4 + 20);
        if (v16 < v17 || v16 == v17 && *(v15 + 92) <= *(v4 + 24))
        {
          v18 = *(v15 + 96);
          if (v17 < v18 || v17 == v18 && *(v4 + 24) <= *(v15 + 100))
          {
            break;
          }
        }

        v7 = ++v8;
        if (v8 >= ((*(self + 36) - v6) >> 3))
        {
          goto LABEL_29;
        }
      }

      v19 = *(v4 + 20);
      *(v4 + 36) = md::RouteLineSection::simplifiedCoordinate(v15, *(self + 24), v19);
      *(v4 + 8) = v8;
    }

LABEL_29:
    v4 += 44;
  }

  WeakRetained = objc_loadWeakRetained(self + 34);
  [WeakRetained routeLineDidUpdateSections:self];
}

void __37__VKRouteLine_createMeshIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v2 = *a2 + 8;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 32);
  v22 = *(v3 + 192);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 16) - *(v2 + 8)) >> 4);
  if (v4 >= 2)
  {
    v5 = *(v3 + 256);
    v6 = *(v3 + 264);
    v7 = *(v2 + 120);
    if (v7 < 0.0 || vabdd_f64(v7 / v6, v5) > 1.0)
    {
      if (*(v2 + 104))
      {
        free(*(v2 + 104));
        *(v2 + 104) = 0;
        v4 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 16) - *(v2 + 8)) >> 4);
      }

      *(v2 + 112) = 0;
      *(v2 + 120) = 0xBFF0000000000000;
      v8 = malloc_type_calloc(v4, 8uLL, 0x100004000313F17uLL);
      v9 = v6 * v5;
      *(v2 + 120) = v9;
      *(v2 + 104) = v8;
      *(v2 + 112) = 1;
      *v8 = 0;
      if (*(v2 + 232) == 1)
      {
        v10 = v24;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3321888768;
        v11 = &__block_descriptor_33_ea8_32c58_ZTSKZN2md16RouteLineSection19simplifyWithEpsilonERKdE3__0_e16_B28__0r_v8Q16B24l;
        v12 = ___ZN2md16RouteLineSection19simplifyWithEpsilonERKd_block_invoke;
      }

      else
      {
        v10 = v23;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3321888768;
        v11 = &__block_descriptor_33_ea8_32c58_ZTSKZN2md16RouteLineSection19simplifyWithEpsilonERKdE3__1_e16_B28__0r_v8Q16B24l;
        v12 = ___ZN2md16RouteLineSection19simplifyWithEpsilonERKd_block_invoke_2;
      }

      v10[2] = v12;
      v10[3] = v11;
      v13 = MEMORY[0x1B8C62DA0]();
      v14 = *(v2 + 8);
      v15 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 16) - v14) >> 4);
      if (v15 > 1)
      {
        v16 = 1;
        v17 = 48;
        do
        {
          v18 = (v15 - 1 == v16) | (v13)[2](v13, v2 + 8, v16, v15 - 1 == v16);
          v19 = *(v2 + 8);
          if (v18)
          {
            goto LABEL_20;
          }

          for (i = 0; i != 3; ++i)
          {
            v25[0].f32[i] = *(v14 + i * 4) - *(v19 + v17 + i * 4);
          }

          if (v9 < sqrtf(vaddv_f32(vmul_f32(v25[0], v25[0]))))
          {
LABEL_20:
            *(*(v2 + 104) + 8 * *(v2 + 112)) = v16;
            v14 = v19 + 48 * v16;
            ++*(v2 + 112);
          }

          ++v16;
          v15 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 16) - v19) >> 4);
          v17 += 48;
        }

        while (v15 > v16);
      }

      v21 = *(v2 + 72);
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      operator new();
    }

    if (!*(v2 + 72))
    {
      operator new();
    }
  }
}

- (void)generateArrowsForManeuverDisplayMode:(int)a3 routeLineWidth:(double)a4 collideTrafficFeatures:(const void *)a5
{
  v174[16] = *MEMORY[0x1E69E9840];
  *(self + 45) = *(self + 44);
  v6 = [*(self + 24) composedRoute];
  v161 = [v6 currentDisplayStep];

  v7 = [*(self + 24) composedRoute];
  v8 = [v7 maneuverDisplayEnabled];

  v9 = v8 ^ 1;
  if (!a3)
  {
    v9 = 1;
  }

  if (v9)
  {
    return;
  }

  v10 = [*(self + 24) composedRoute];
  v11 = *(self + 26);
  v12 = a4;
  v13 = (v12 * v11) * 0.56406;
  v163 = v12 * v11;
  v14 = (v12 * v11) * 0.7125;
  v15 = v10;
  v16 = v15;
  v166 = v15;
  if (v15)
  {
    v17 = [v15 maneuverDisplaySteps];
    v18 = [v17 count];

    if (v18)
    {
      *(self + 51) = *(self + 50);
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v19 = [v16 maneuverDisplaySteps];
      v20 = [v19 countByEnumeratingWithState:&v170 objects:v174 count:16];
      if (!v20)
      {
        goto LABEL_42;
      }

      v165 = *v171;
      v21 = (v11 * 10.0);
      v164 = v19;
      while (1)
      {
        v167 = v20;
        for (i = 0; i != v167; ++i)
        {
          if (*v171 != v165)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v170 + 1) + 8 * i);
          v24 = [v23 stepIndex];
          v25 = v24 == v161;
          if (v24 == v161)
          {
            v26 = v14;
          }

          else
          {
            v26 = v13;
          }

          v27 = [v166 routeCoordinateForDistance:objc_msgSend(v23 beforeRouteCoordinate:{"maneuverStartRouteCoordinate"), v21}];
          v28 = [v166 routeCoordinateForDistance:objc_msgSend(v23 afterRouteCoordinate:{"endRouteCoordinate"), v21}];
          v29 = HIDWORD(v27);
          if ([v23 maneuverType] == 88)
          {
            [v166 distanceFromPoint:v27 toPoint:v28];
            *&v30 = v30;
            v31 = [v166 routeCoordinateForDistance:v27 beforeRouteCoordinate:*&v30];
            LODWORD(v28) = v27;
            LODWORD(v27) = v31;
            v168 = HIDWORD(v31);
          }

          else
          {
            v168 = HIDWORD(v27);
            v29 = HIDWORD(v28);
          }

          v32 = [v166 coordinateAtOffset:v28 | (v29 << 32) fromRouteCoordinate:v26];
          v33 = [v166 pointCount];
          v34 = v166;
          v35 = v34;
          if (!v32 || [v34 pointCount] - 1 <= v32)
          {
            goto LABEL_26;
          }

          [v35 pointAt:v32 - 1];
          GEOMapPointForCoordinate();
          v37 = v36;
          v39 = v38;
          [v35 pointAt:v32];
          GEOMapPointForCoordinate();
          v41 = v40;
          v43 = v42;
          v44 = v32 + 1;
          [v35 pointAt:v44];
          GEOMapPointForCoordinate();
          v45 = v28 != v32;
          v48 = ((v46 - v41) * (v37 - v41) + (v47 - v43) * (v39 - v43)) / sqrt(((v37 - v41) * (v37 - v41) + (v39 - v43) * (v39 - v43)) * ((v46 - v41) * (v46 - v41) + (v47 - v43) * (v47 - v43))) > -0.866025405;

          v49 = v28 < v33 - 1 && v45;
          if (v49 && v48)
          {
            v28 = [v35 coordinateAtOffset:v44 fromRoutePoint:(v163 * 0.5)];
            v29 = HIDWORD(v28);
            if ([v35 pointCount] > v28)
            {
              v35 = [v35 stepAtIndex:{objc_msgSend(v35, "stepIndexForPointIndex:", v28)}];
              [v35 distance];
              if (v50 - *(&v28 + 1) * v50 < (v26 + v163))
              {
                LODWORD(v29) = 0;
              }

LABEL_26:
            }
          }

          v51 = *(self + 51);
          v52 = *(self + 52);
          if (v51 >= v52)
          {
            v54 = *(self + 50);
            v55 = v51 - v54;
            v56 = 0xCCCCCCCCCCCCCCCDLL * ((v51 - v54) >> 2);
            v57 = v56 + 1;
            if (v56 + 1 > 0xCCCCCCCCCCCCCCCLL)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v58 = 0xCCCCCCCCCCCCCCCDLL * ((v52 - v54) >> 2);
            if (2 * v58 > v57)
            {
              v57 = 2 * v58;
            }

            if (v58 >= 0x666666666666666)
            {
              v59 = 0xCCCCCCCCCCCCCCCLL;
            }

            else
            {
              v59 = v57;
            }

            if (v59)
            {
              if (v59 <= 0xCCCCCCCCCCCCCCCLL)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v60 = 20 * v56;
            *v60 = v27;
            *(v60 + 4) = v168;
            *(v60 + 8) = v28;
            *(v60 + 12) = v29;
            *(v60 + 16) = 1;
            *(v60 + 17) = v25;
            v53 = 20 * v56 + 20;
            v61 = 20 * v56 - v55;
            memcpy((v60 - v55), v54, v55);
            *(self + 50) = v61;
            *(self + 51) = v53;
            *(self + 52) = 0;
            if (v54)
            {
              operator delete(v54);
            }
          }

          else
          {
            *v51 = v27;
            *(v51 + 4) = v168;
            *(v51 + 8) = v28;
            *(v51 + 12) = v29;
            *(v51 + 16) = 1;
            v53 = v51 + 20;
            *(v51 + 17) = v25;
          }

          v19 = v164;
          *(self + 51) = v53;
        }

        v20 = [v164 countByEnumeratingWithState:&v170 objects:v174 count:16];
        if (!v20)
        {
LABEL_42:

          v16 = v166;
          break;
        }
      }
    }
  }

  v62 = *(self + 51);
  v63 = *(self + 50);
  if (v63 != v62)
  {
    *(v63 + 16) = 0;
    *(v62 - 4) = 0;
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((v62 - v63) >> 2) >= 3)
  {
    v64 = *(v63 + 17) ? v14 : v13;
    v65 = [v16 coordinateAtOffset:*(v63 + 8) fromRouteCoordinate:v64];
    v66 = v62 - 20;
    v67 = v63 + 20;
    if (v63 + 20 != v66)
    {
      v112 = v65;
      v113 = *(&v65 + 1);
      do
      {
        v114 = *(v67 + 17);
        if (*(v67 + 17))
        {
          v115 = v14;
        }

        else
        {
          v115 = v13;
        }

        v116 = [v16 coordinateAtOffset:*(v67 + 8) fromRouteCoordinate:v115];
        if (v114)
        {
          v117 = -0.075;
        }

        else
        {
          v117 = -0.059375;
        }

        v118 = [v16 coordinateAtOffset:*v67 fromRouteCoordinate:(v163 * v117)];
        v119 = *(&v116 + 1);
        if (v112 <= v116)
        {
          v120 = 1;
          if ((v112 != v116 || v113 <= *(&v116 + 1)) && v112 <= v118)
          {
            if (v112 != v118)
            {
              v122 = v67;
              goto LABEL_121;
            }

            v120 = v113 > *(&v118 + 1);
          }
        }

        else
        {
          v120 = 1;
        }

        if (v114 && v120)
        {
          v121 = v63;
          v112 = v116;
          v113 = *(&v116 + 1);
          v63 = v67;
LABEL_120:
          *(v121 + 16) = 0;
          v116 = v112;
          v119 = v113;
          v122 = v63;
          goto LABEL_121;
        }

        v121 = v67;
        v122 = v67;
        if (v120)
        {
          goto LABEL_120;
        }

LABEL_121:
        v67 += 20;
        v63 = v122;
        v113 = v119;
        v112 = v116;
      }

      while (v67 != v66);
    }
  }

  v68 = *(self + 50);
  v69 = *(self + 51);
  if (v68 != v69)
  {
    v70 = *a5;
    v71 = *(a5 + 1);
    do
    {
      if (v70 != v71)
      {
        v72 = *v68;
        v73 = v70;
        while (1)
        {
          v74 = *v73;
          v75 = *(v73 + 1);
          if (*v73 > v72 || v74 == v72 && v75 >= *(v68 + 1))
          {
            v76 = v68[2];
            if (v74 < v76 || v74 == v76 && v75 <= *(v68 + 3))
            {
              break;
            }
          }

          v73 += 2;
          if (v73 == v71)
          {
            goto LABEL_64;
          }
        }

        *(v68 + 16) = 0;
      }

LABEL_64:
      v68 += 5;
    }

    while (v68 != v69);
  }

  if (a3 == 1)
  {
    v101 = *(self + 50);
    if (*(self + 51) == v101)
    {
      return;
    }

    v102 = (v101 + 20 * v161);
    if ((v102[4] & 1) == 0 || (v103 = *(self + 35), *(self + 36) == v103))
    {
      v104 = 0;
    }

    else
    {
      v104 = 0;
      v105 = *v102;
      v106 = *(v102 + 1);
      v107 = *(v102 + 1);
      while (1)
      {
        v174[0] = 0;
        v108 = *(v103 + 8 * v104);
        v174[0] = v108;
        if (v108)
        {
          ++*v108;
          v109 = v108 + 1;
        }

        else
        {
          v109 = 0;
        }

        v110 = *(v109 + 22);
        if (v105 > v110 || v105 == v110 && v106 >= *(v109 + 23))
        {
          v111 = *(v109 + 24);
          if (v105 < v111 || v105 == v111 && v106 <= *(v109 + 25))
          {
            break;
          }
        }

        ++v104;
        geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(v174);
        v103 = *(self + 35);
        if (v104 >= (*(self + 36) - v103) >> 3)
        {
          goto LABEL_124;
        }
      }

      v137 = *(self + 45);
      v138 = *(self + 46);
      if (v137 >= v138)
      {
        v140 = *(self + 44);
        v141 = 0x2E8BA2E8BA2E8BA3 * ((v137 - v140) >> 2);
        v142 = v141 + 1;
        if ((v141 + 1) > 0x5D1745D1745D174)
        {
          goto LABEL_169;
        }

        v143 = 0x2E8BA2E8BA2E8BA3 * ((v138 - v140) >> 2);
        if (2 * v143 > v142)
        {
          v142 = 2 * v143;
        }

        if (v143 >= 0x2E8BA2E8BA2E8BALL)
        {
          v144 = 0x5D1745D1745D174;
        }

        else
        {
          v144 = v142;
        }

        if (v144)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<Arrow>>(v144);
        }

        v145 = 44 * v141;
        *v145 = v161;
        *(v145 + 4) = -1;
        *(v145 + 12) = v105;
        *(v145 + 16) = v106;
        *(v145 + 20) = v107;
        *(v145 + 28) = 0xBF80000000000000;
        *(v145 + 36) = 0xBF80000000000000;
        v139 = 44 * v141 + 44;
        v146 = *(self + 44);
        v147 = *(self + 45) - v146;
        v148 = (44 * v141 - v147);
        memcpy(v148, v146, v147);
        v149 = *(self + 44);
        *(self + 44) = v148;
        *(self + 45) = v139;
        *(self + 46) = 0;
        if (v149)
        {
          operator delete(v149);
        }
      }

      else
      {
        *v137 = v161;
        *(v137 + 4) = -1;
        *(v137 + 12) = v105;
        *(v137 + 16) = v106;
        *(v137 + 20) = v107;
        *(v137 + 28) = 0xBF80000000000000;
        v139 = v137 + 44;
        *(v137 + 36) = 0xBF80000000000000;
      }

      *(self + 45) = v139;
      geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(v174);
    }

LABEL_124:
    v123 = v161 + 1;
    v124 = *(self + 50);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(self + 51) - v124) >> 2) <= v123)
    {
      return;
    }

    v125 = *(self + 35);
    if (v104 >= (*(self + 36) - v125) >> 3)
    {
      return;
    }

    v126 = *(v125 + 8 * v104);
    v174[0] = v126;
    if (v126)
    {
      ++*v126;
    }

    v127 = (v124 + 20 * v123);
    if ((v127[4] & 1) == 0)
    {
      goto LABEL_165;
    }

    v128 = *v127;
    v129 = *(v127 + 1);
    v130 = *(v127 + 1);
    v131 = v126 + 1;
    if (!v126)
    {
      v131 = 0;
    }

    if ((v132 = *(v131 + 22), v128 <= v132) && (v128 != v132 || v129 < *(v131 + 23)) || (v133 = *(v131 + 24), v128 >= v133) && (v128 != v133 || v129 > *(v131 + 25)))
    {
LABEL_165:
      geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(v174);
      return;
    }

    v134 = *(self + 45);
    v135 = *(self + 46);
    if (v134 < v135)
    {
      *v134 = v123;
      *(v134 + 4) = -1;
      *(v134 + 12) = v128;
      *(v134 + 16) = v129;
      *(v134 + 20) = v130;
      *(v134 + 28) = 0xBF80000000000000;
      v136 = v134 + 44;
      *(v134 + 36) = 0xBF80000000000000;
LABEL_164:
      *(self + 45) = v136;
      goto LABEL_165;
    }

    v150 = *(self + 44);
    v151 = 0x2E8BA2E8BA2E8BA3 * ((v134 - v150) >> 2);
    v152 = v151 + 1;
    if ((v151 + 1) <= 0x5D1745D1745D174)
    {
      v153 = 0x2E8BA2E8BA2E8BA3 * ((v135 - v150) >> 2);
      if (2 * v153 > v152)
      {
        v152 = 2 * v153;
      }

      if (v153 >= 0x2E8BA2E8BA2E8BALL)
      {
        v154 = 0x5D1745D1745D174;
      }

      else
      {
        v154 = v152;
      }

      if (v154)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<Arrow>>(v154);
      }

      v155 = 44 * v151;
      *v155 = v123;
      *(v155 + 4) = -1;
      *(v155 + 12) = v128;
      *(v155 + 16) = v129;
      *(v155 + 20) = v130;
      *(v155 + 28) = 0xBF80000000000000;
      *(v155 + 36) = 0xBF80000000000000;
      v136 = 44 * v151 + 44;
      v156 = *(self + 44);
      v157 = *(self + 45) - v156;
      v158 = (44 * v151 - v157);
      memcpy(v158, v156, v157);
      v159 = *(self + 44);
      *(self + 44) = v158;
      *(self + 45) = v136;
      *(self + 46) = 0;
      if (v159)
      {
        operator delete(v159);
      }

      goto LABEL_164;
    }

LABEL_169:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (a3 == 2)
  {
    v77 = *(self + 51) - *(self + 50);
    if (v77)
    {
      v78 = 0;
      v79 = 0;
      v80 = 0xCCCCCCCCCCCCCCCDLL * (v77 >> 2);
      v81 = 0x5D1745D1745D174;
      v82 = 0x2E8BA2E8BA2E8BA3;
      do
      {
        v83 = (*(self + 50) + v78);
        if (v83[2])
        {
          v85 = *v83;
          v84 = v83[1];
          v86 = *(self + 45);
          v87 = *(self + 46);
          if (v86 >= v87)
          {
            v89 = *(self + 44);
            v90 = ((v86 - v89) >> 2) * v82;
            v91 = v90 + 1;
            if (v90 + 1 > v81)
            {
              goto LABEL_169;
            }

            v92 = v82;
            v93 = ((v87 - v89) >> 2) * v82;
            if (2 * v93 > v91)
            {
              v91 = 2 * v93;
            }

            v94 = v81;
            if (v93 >= 0x2E8BA2E8BA2E8BALL)
            {
              v95 = v81;
            }

            else
            {
              v95 = v91;
            }

            if (v95)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<Arrow>>(v95);
            }

            v96 = 44 * v90;
            *v96 = v79;
            *(v96 + 4) = -1;
            *(v96 + 12) = v85;
            *(v96 + 20) = v84;
            *(v96 + 28) = 0xBF80000000000000;
            *(v96 + 36) = 0xBF80000000000000;
            v88 = 44 * v90 + 44;
            v97 = *(self + 44);
            v98 = *(self + 45) - v97;
            v99 = v96 - v98;
            memcpy((v96 - v98), v97, v98);
            v100 = *(self + 44);
            *(self + 44) = v99;
            *(self + 45) = v88;
            *(self + 46) = 0;
            if (v100)
            {
              operator delete(v100);
            }

            v81 = v94;
            v82 = v92;
          }

          else
          {
            *v86 = v79;
            *(v86 + 4) = -1;
            *(v86 + 12) = v85;
            *(v86 + 20) = v84;
            *(v86 + 28) = 0xBF80000000000000;
            v88 = v86 + 44;
            *(v86 + 36) = 0xBF80000000000000;
          }

          *(self + 45) = v88;
        }

        ++v79;
        v78 += 20;
      }

      while (v80 != v79);
    }
  }
}

- (BOOL)buildRouteLine:(id)a3 matchToRoads:(BOOL)a4 shouldGenerateSnapPath:(BOOL)a5 viewUnitsPerPoint:(double)a6 force:(BOOL)a7 boundsInflation:(float)a8 isGradientTraffic:(BOOL)a9 currentLegIndex:(unsigned int)a10 elevationSource:(void *)a11 elevationSourceContext:(void *)a12
{
  v13 = a9;
  v17 = a5;
  v18 = a4;
  v52 = a3;
  if ((*(self + 8) & 1) == 0)
  {
    v21 = [*(self + 24) composedRoute];
    [v21 clearSnappedPathsForObserver:self];
  }

  v22 = [(VKRouteLine *)self composedRoute];
  v23 = [v22 revisionIdentifier];
  v85 = v23;
  v24 = geo::_retain_ptr<NSUUID * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator==(*(self + 42), &v85);

  if ((v24 & 1) == 0)
  {
    v25 = [(VKRouteLine *)self composedRoute];
    v26 = [v25 revisionIdentifier];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    v30 = *(self + 42);
    *(self + 42) = v27;

    a7 = 1;
  }

  v31 = *(self + 49);
  objc_storeStrong(self + 49, a3);
  if (!a7 && *(self + 8) == v18 && ([v31 isEquivalentToNewRegion:*(self + 49)] & 1) != 0)
  {
    i = 0;
  }

  else
  {
    *(self + 8) = v18;
    v33 = *(self + 38);
    if (v33)
    {
      if ((*v33)-- == 1)
      {
        md::RouteLineSection::~RouteLineSection((v33 + 1));
        v35 = *(self + 38);
        v37 = mdm::zone_mallocator::instance(v36);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::_fast_shared_ptr_control>(v37, v35);
        *(self + 38) = 0;
      }
    }

    *(self + 38) = 0;
    *(self + 39) = 0xBF80000000000000;
    v39 = *(self + 35);
    v38 = *(self + 36);
      ;
    }

    *(self + 36) = v39;
    if ([*(self + 24) containsTransit])
    {
      v40 = +[VKDebugSettings sharedSettings];
      v41 = [v40 dontVerifyRouteToTransitSnapping] ^ 1;
    }

    else
    {
      v41 = 0;
    }

    v42 = [*(self + 24) getPathsForRenderRegion:*(self + 49) shouldSnapToRoads:*(self + 8) shouldGenerateSnapPath:v17 verifySnapping:v41 isGradientTraffic:v13 observer:self elevationSource:a11 elevationSourceContext:{a12, v52}];
    if ([v42 count])
    {
      *&v43 = a8;
      [(VKRouteLine *)self _updateBounds:v42 boundsInflation:v43];
      [(VKRouteLine *)self _updateTilesCovered:v42];
      v44 = exp((*(self + 6) + *(self + 3)) * 3.14159265 + -3.14159265);
      v45 = atan(v44);
      *(self + 26) = a6 / geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v45 * 114.591559 + -90.0);
      *(self + 33) = a6 / (*(self + 5) - *(self + 2));
      v76 = 0;
      v77 = &v76;
      v78 = 0x4812000000;
      v79 = __Block_byref_object_copy__23251;
      v80 = __Block_byref_object_dispose__23252;
      v81 = "";
      v83 = 0;
      v84 = 0;
      v82 = 0;
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 3221225472;
      v75[2] = __179__VKRouteLine_buildRouteLine_matchToRoads_shouldGenerateSnapPath_viewUnitsPerPoint_force_boundsInflation_isGradientTraffic_currentLegIndex_elevationSource_elevationSourceContext___block_invoke;
      v75[3] = &unk_1E7B38C70;
      v75[4] = &v76;
      forEachNodeInSortedPaths(v42, v75);
      v46 = v77[7] - v77[6];
      if (*(self + 37) - *(self + 35) < v46)
      {
        if (!((v46 >> 3) >> 61))
        {
          v67 = (self + 280);
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v46 >> 3);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      [(VKRouteLine *)self setHasNewRoadMatches:0];
      v69 = 0;
      v70 = &v69;
      v71 = 0x3032000000;
      v72 = __Block_byref_object_copy__13_23238;
      v73 = __Block_byref_object_dispose__14_23239;
      v74 = 0;
      v66[0] = 0;
      v66[1] = v66;
      v66[2] = 0x4812000000;
      v66[3] = __Block_byref_object_copy__15_23254;
      v67 = __Block_byref_object_dispose__16_23255;
      v68 = "";
      v59 = 0;
      v60 = &v59;
      v61 = 0x3812000000;
      v62 = __Block_byref_object_copy__18;
      v63 = __Block_byref_object_dispose__19;
      v64 = "";
      v65 = 0;
      v58[0] = 0;
      v58[1] = v58;
      v58[2] = 0x3812000000;
      v58[3] = __Block_byref_object_copy__21_23258;
      v58[4] = __Block_byref_object_dispose__22_23259;
      v58[5] = "";
      v58[6] = v77[6];
      v57[0] = 0;
      v57[1] = v57;
      v57[2] = 0x4012000000;
      v57[3] = __Block_byref_object_copy__24_23261;
      v57[4] = __Block_byref_object_dispose__25_23262;
      v57[5] = "";
      v56[0] = 0;
      v56[1] = v56;
      v56[2] = 0x2020000000;
      v56[3] = 0;
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __179__VKRouteLine_buildRouteLine_matchToRoads_shouldGenerateSnapPath_viewUnitsPerPoint_force_boundsInflation_isGradientTraffic_currentLegIndex_elevationSource_elevationSourceContext___block_invoke_27;
      v53[3] = &unk_1E7B38C98;
      v53[4] = self;
      v53[5] = &v69;
      v54 = a10;
      v53[6] = v57;
      v53[7] = &v59;
      v55 = v13;
      v53[8] = v56;
      v53[9] = v58;
      v53[10] = v66;
      forEachNodeInSortedPaths(v42, v53);
      if (v60[6])
      {
        v47 = [v70[5] routeEnd];
        v48 = v60[6];
        if (v48)
        {
          v49 = v48 + 8;
        }

        else
        {
          v49 = 0;
        }

        *(v49 + 96) = v47;
      }

      [*(self + 24) trafficTimeStamp];
      *(self + 47) = v50;
      *(self + 53) = a6;
      _Block_object_dispose(v56, 8);
      _Block_object_dispose(v57, 8);
      _Block_object_dispose(v58, 8);
      _Block_object_dispose(&v59, 8);
      geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(&v65);
      _Block_object_dispose(v66, 8);
      _Block_object_dispose(&v69, 8);

      _Block_object_dispose(&v76, 8);
      if (v82)
      {
        v83 = v82;
        operator delete(v82);
      }

      i = 1;
    }
  }

  return i;
}

void __179__VKRouteLine_buildRouteLine_matchToRoads_shouldGenerateSnapPath_viewUnitsPerPoint_force_boundsInflation_isGradientTraffic_currentLegIndex_elevationSource_elevationSourceContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v8 = a5;
  if (a6)
  {
    v9 = *(*(a1 + 32) + 8);
    v11 = v9[7];
    v10 = v9[8];
    if (v11 >= v10)
    {
      v24 = v8;
      v13 = v9[6];
      v14 = v11 - v13;
      v15 = (v11 - v13) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v10 - v13;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v18);
      }

      v19 = (v11 - v13) >> 3;
      v20 = (8 * v15);
      v21 = (8 * v15 - 8 * v19);
      *v20 = 0;
      v12 = v20 + 1;
      memcpy(v21, v13, v14);
      v22 = v9[6];
      v9[6] = v21;
      v9[7] = v12;
      v9[8] = 0;
      if (v22)
      {
        operator delete(v22);
      }

      v8 = v24;
    }

    else
    {
      *v11 = 0;
      v12 = v11 + 8;
    }

    v9[7] = v12;
  }

  v23 = *(*(*(a1 + 32) + 8) + 56);
  ++*(v23 - 8);
}

void __179__VKRouteLine_buildRouteLine_matchToRoads_shouldGenerateSnapPath_viewUnitsPerPoint_force_boundsInflation_isGradientTraffic_currentLegIndex_elevationSource_elevationSourceContext___block_invoke_27(uint64_t a1, float32x2_t *a2, uint64_t *a3, uint64_t a4, void *a5, int a6, uint64_t a7, float a8)
{
  v10 = a5;
  v13 = a5;
  v234 = v13;
  if (!a6)
  {
    goto LABEL_61;
  }

  v14 = *(*(*(a1 + 40) + 8) + 40);
  v226 = v10;
  if (v14)
  {
    v15 = [v14 section];
    if ([v15 transportType])
    {
    }

    else
    {
      v51 = [v13 section];
      v52 = [v51 transportType];

      if (v52)
      {
        v53 = [*(a1 + 32) composedRoute];
        v54 = [*(*(*(a1 + 40) + 8) + 40) section];
        v55 = [v53 legIndexForStepIndex:{objc_msgSend(v54, "finalStepIndex")}];

        v56 = [*(a1 + 32) composedRoute];
        v57 = [v13 section];
        v58 = [v56 legIndexForStepIndex:{objc_msgSend(v57, "finalStepIndex")}];

        if (v55 != v58 && v55 < *(a1 + 88))
        {
          v59 = [v13 section];
          v60 = v59;
          if (v59)
          {
            [v59 bounds];
            v61 = *(&v241 + 1);
            v62 = *&v241;
            v64 = *(&v242 + 1);
            v63 = *&v243;
          }

          else
          {
            v242 = 0u;
            v243 = 0u;
            v241 = 0u;
            v63 = 0.0;
            v64 = 0.0;
            v61 = 0.0;
            v62 = 0.0;
          }

          v186 = v62 + v64 * a2->f32[0];
          v187 = v61 + v63 * (1.0 - a2->f32[1]);
          v188 = MEMORY[0x1E69A1690];
          v189 = *MEMORY[0x1E69A1690];
          v190 = *(MEMORY[0x1E69A1690] + 8);

          v191 = exp(3.14159265 - v187 * 6.28318531 / v190);
          v192 = atan(v191) * 2.0 + -1.57079633;
          v193 = fmod(v186 * 6.28318531 / v189, 6.28318531);
          v194 = fmod(v193 + 6.28318531, 6.28318531) + -3.14159265;
          v195 = __sincos_stret(v192);
          v196 = 6378137.0 / sqrt(v195.__sinval * v195.__sinval * -0.00669437999 + 1.0);
          v197 = __sincos_stret(v194);
          *&v238 = v196 * v195.__cosval * v197.__cosval;
          *(&v238 + 1) = v196 * v195.__cosval * v197.__sinval;
          *&v239 = v195.__sinval * 0.99330562 * v196;
          v198 = *(*(a1 + 48) + 8);
          v199 = [*(*(*(a1 + 40) + 8) + 40) section];
          v200 = v199;
          if (v199)
          {
            [v199 bounds];
            v201 = *(&v241 + 1);
            v202 = *&v241;
            v204 = *(&v242 + 1);
            v203 = *&v243;
          }

          else
          {
            v242 = 0u;
            v243 = 0u;
            v241 = 0u;
            v203 = 0.0;
            v204 = 0.0;
            v201 = 0.0;
            v202 = 0.0;
          }

          v205 = v202 + v204 * *(v198 + 48);
          v206 = v201 + v203 * (1.0 - *(v198 + 52));
          v207 = *v188;
          v208 = v188[1];

          v209 = exp(3.14159265 - v206 * 6.28318531 / v208);
          v210 = atan(v209) * 2.0 + -1.57079633;
          v211 = fmod(v205 * 6.28318531 / v207, 6.28318531);
          v212 = fmod(v211 + 6.28318531, 6.28318531) + -3.14159265;
          v213 = __sincos_stret(v210);
          v214 = 6378137.0 / sqrt(v213.__sinval * v213.__sinval * -0.00669437999 + 1.0);
          v215 = __sincos_stret(v212);
          v216 = 0;
          *&v235 = v214 * v213.__cosval * v215.__cosval;
          *(&v235 + 1) = v214 * v213.__cosval * v215.__sinval;
          *&v236 = v213.__sinval * 0.99330562 * v214;
          do
          {
            *(&v241 + v216) = *(&v235 + v216) - *(&v238 + v216);
            v216 += 8;
          }

          while (v216 != 24);
          v217 = 0;
          v218 = 0.0;
          v10 = v226;
          do
          {
            v218 = v218 + *(&v241 + v217) * *(&v241 + v217);
            v217 += 8;
          }

          while (v217 != 24);
          if (sqrt(v218) <= 10.0)
          {
            goto LABEL_61;
          }
        }
      }
    }
  }

  if (*(*(*(a1 + 56) + 8) + 48))
  {
    v16 = [*(*(*(a1 + 40) + 8) + 40) routeEnd];
    v17 = *(*(*(a1 + 56) + 8) + 48);
    if (v17)
    {
      v18 = v17 + 8;
    }

    else
    {
      v18 = 0;
    }

    *(v18 + 96) = v16;
  }

  v19 = [v13 section];
  v20 = [v19 composedRouteSegment];

  v222 = v20;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = MEMORY[0x1E69A25E0];
    v22 = [v20 transitLine];
    v224 = [v21 attributesForTransitLine:v22];
  }

  else
  {
    v224 = 0;
  }

  v23 = [*(a1 + 32) composedRoute];
  v24 = [v13 section];
  v25 = [v23 legIndexForStepIndex:{objc_msgSend(v24, "finalStepIndex")}];

  v26 = *(a1 + 32);
  v27 = v13;
  v221 = [v13 section];
  v28 = *(*(a1 + 64) + 8);
  v29 = *(v28 + 24);
  *(v28 + 24) = v29 + 1;
  v220 = [v27 section];
  v30 = [v220 transportType];
  v228 = a1;
  *&v238 = 0;
  v31 = mdm::zone_mallocator::instance(v30);
  v32 = pthread_rwlock_rdlock((v31 + 32));
  v34 = v30;
  if (v32)
  {
    geo::read_write_lock::logFailure(v32, "read lock", v33);
  }

  v35 = v25;
  v36 = malloc_type_zone_malloc(*v31, 0x190uLL, 0x10F00406A3C7EFEuLL);
  atomic_fetch_add((v31 + 24), 1u);
  geo::read_write_lock::unlock((v31 + 32));
  *&v238 = v36;
  *v36 = 1;
  v37 = *(v26 + 200);
  v38 = *(v26 + 248);
  v39 = *(v228 + 92);
  v40 = v221;
  *(v36 + 1) = &unk_1F2A2F738;
  *(v36 + 2) = 0;
  *(v36 + 3) = 0;
  *(v36 + 4) = 0;
  v41 = v224;
  *(v36 + 5) = &unk_1F2A2F880;
  *(v36 + 6) = v41;
  v219 = v41;
  *(v36 + 14) = 0;
  *(v36 + 16) = v37;
  *(v36 + 17) = v38;
  *(v36 + 10) = 0;
  *(v36 + 11) = 0;
  *(v36 + 24) = 0;
  *(v36 + 100) = 3212836864;
  *(v36 + 27) = -1082130432;
  *(v36 + 15) = 0;
  *(v36 + 16) = 0xBFF0000000000000;
  *(v36 + 17) = 0x4040000000000000;
  *(v36 + 36) = 1043452238;
  *(v36 + 50) = v34;
  objc_initWeak(v36 + 26, v40);
  *(v36 + 28) = v29;
  *(v36 + 29) = v35;
  v36[240] = v39;
  *(v36 + 61) = 0;
  *(v36 + 247) = 0;
  *(v36 + 251) = 257;
  v36[253] = 0;
  *(v36 + 16) = 0u;
  *(v36 + 17) = 0u;
  *(v36 + 18) = 0u;
  *(v36 + 19) = 0u;
  *(v36 + 20) = 0u;
  *(v36 + 21) = 0u;
  *(v36 + 22) = 0u;
  *(v36 + 23) = 0u;
  *(v36 + 48) = -1;
  v36[392] = 1;
  if (md::RouteLineSection::RouteLineSection(float,float,GEOComposedRouteSection *,unsigned long,GEOTransportType,GEOStyleAttributes *,unsigned long,BOOL)::once[0] != -1)
  {
    dispatch_once(md::RouteLineSection::RouteLineSection(float,float,GEOComposedRouteSection *,unsigned long,GEOTransportType,GEOStyleAttributes *,unsigned long,BOOL)::once, &__block_literal_global_30225);
  }

  v13 = v234;
  *(v36 + 18) = -1082130432;
  v42 = *(v36 + 14);
  a1 = v228;
  if (v42)
  {
    free(v42);
    *(v36 + 14) = 0;
  }

  *(v36 + 15) = 0;
  *(v36 + 16) = 0xBFF0000000000000;

  *&v238 = v36;
  v44 = *(v26 + 288);
  v43 = *(v26 + 296);
  if (v44 >= v43)
  {
    v46 = *(v26 + 280);
    v47 = (v44 - v46) >> 3;
    if ((v47 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v48 = v43 - v46;
    v49 = v48 >> 2;
    if (v48 >> 2 <= (v47 + 1))
    {
      v49 = v47 + 1;
    }

    if (v48 >= 0x7FFFFFFFFFFFFFF8)
    {
      v50 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v50 = v49;
    }

    *&v243 = v26 + 280;
    if (v50)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v50);
    }

    v65 = (8 * v47);
    *&v241 = 0;
    *(&v241 + 1) = v65;
    *(&v242 + 1) = 0;
    *v65 = 0;
    *v65 = v238;
    *&v238 = 0;
    *&v242 = 8 * v47 + 8;
    std::vector<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::__swap_out_circular_buffer(v26 + 280, &v241);
    v45 = *(v26 + 288);
    std::__split_buffer<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>>::~__split_buffer(&v241);
  }

  else
  {
    *v44 = 0;
    *v44 = v238;
    v45 = v44 + 1;
    *&v238 = 0;
  }

  *(v26 + 288) = v45;
  geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::~fast_shared_ptr(&v238);

  v66 = *(*(v228 + 32) + 288);
  v67 = *(*(v228 + 56) + 8);
  v68 = *(v66 - 8);
  if (v68)
  {
    ++*v68;
  }

  v69 = *(v67 + 48);
  if (v69)
  {
    _ZF = (*v69)-- == 1;
    if (_ZF)
    {
      md::RouteLineSection::~RouteLineSection((v69 + 1));
      v70 = *(v67 + 48);
      v72 = mdm::zone_mallocator::instance(v71);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::_fast_shared_ptr_control>(v72, v70);
      *(v67 + 48) = 0;
      v68 = *(v66 - 8);
    }
  }

  *(v67 + 48) = v68;
  v73 = *(*(v228 + 72) + 8);
  v74 = *(v73 + 48);
  v75 = *v74;
  *(v73 + 48) = v74 + 1;
  v76 = *(*(*(v228 + 56) + 8) + 48);
  if (v76)
  {
    v77 = v76 + 8;
  }

  else
  {
    v77 = 0;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(v77 + 24) - *(v77 + 8)) >> 4) < v75)
  {
    if (v75 <= 0x555555555555555)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::RouteLineSection::Vertex>>(v75);
    }

LABEL_161:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v78 = [v234 routeStart];
  v79 = 0;
  v80 = *(*(*(v228 + 56) + 8) + 48);
  if (v80)
  {
    v81 = v80 + 8;
  }

  else
  {
    v81 = 0;
  }

  *(v81 + 88) = v78;
  v82 = *(*(*(v228 + 56) + 8) + 48);
  if (v82)
  {
    v83 = v82 + 8;
  }

  else
  {
    v83 = 0;
  }

  v84 = 1.0 / *(*(v228 + 32) + 264);
  *(v83 + 128) = v84;
  v85 = *(v228 + 32);
  v86 = *(*(*(v228 + 56) + 8) + 48);
  if (v86)
  {
    v87 = v86 + 8;
  }

  else
  {
    v87 = 0;
  }

  v10 = v226;
  do
  {
    *(v87 + 144 + v79) = *(v85 + 16 + v79);
    v79 += 8;
  }

  while (v79 != 24);
  v88 = 0;
  v89 = v87 + 168;
  v90 = v85 + 40;
  do
  {
    *(v89 + v88) = *(v90 + v88);
    v88 += 8;
  }

  while (v88 != 24);

LABEL_61:
  if (*(*(*(a1 + 40) + 8) + 40) != v13)
  {
    v91 = [v13 section];
    [v91 vkBounds];
    v229 = v92;
    v93 = [v13 section];
    [v93 vkBounds];
    v227 = v94;
    v95 = [v13 section];
    v96 = v95;
    if (v95)
    {
      [v95 bounds];
      v97 = *&v242;
    }

    else
    {
      v242 = 0u;
      v243 = 0u;
      v241 = 0u;
      v97 = 0.0;
    }

    v98 = [v13 section];
    [v98 vkBounds];
    v225 = v99;
    v100 = [v13 section];
    [v100 vkBounds];
    v223 = v101;
    v102 = [v13 section];
    v103 = v102;
    if (v102)
    {
      [v102 bounds];
      v104 = *&v239;
    }

    else
    {
      v239 = 0u;
      v240 = 0u;
      v238 = 0u;
      v104 = 0.0;
    }

    v105 = [v13 section];
    v106 = v105;
    if (v105)
    {
      [v105 bounds];
      v107 = *(&v237 + 1);
    }

    else
    {
      v236 = 0u;
      v237 = 0u;
      v235 = 0u;
      v107 = 0.0;
    }

    v108 = *(a1 + 32);
    v109 = *(v108 + 16);
    v110.f64[0] = v225;
    v110.f64[1] = v223;
    v111.f64[0] = v229;
    v111.f64[1] = v227;
    v112 = vsubq_f64(v110, v111);
    v113 = (*(v108 + 40) - v109) / v112.f64[0];
    v114 = 1.0 / v113;
    v115 = *(*(a1 + 80) + 8);
    *(v115 + 48) = v114;
    v116 = *(v108 + 24);
    *&v117.f64[0] = vdupq_laneq_s64(v112, 1).u64[0];
    v117.f64[1] = v104 - v97 + v107;
    __asm { FMOV            V6.2S, #1.0 }

    *&v110.f64[0] = vdiv_f32(_D6, vcvt_f32_f64(vdivq_f64(vsubq_f64(*(v108 + 48), v116), v117)));
    v122 = (v97 - *(v108 + 32)) / v117.f64[1];
    *(v115 + 52) = v110.f64[0];
    v123 = vdupq_lane_s64(*&v116.f64[0], 0);
    v123.f64[0] = v109;
    v124 = vdivq_f64(vsubq_f64(v111, v123), v112);
    *&v112.f64[0] = vdup_lane_s32(*&v110.f64[0], 0);
    *v112.f64 = v114;
    *(v115 + 60) = vmul_f32(*&v112.f64[0], vcvt_f32_f64(v124));
    *(v115 + 68) = vmuls_lane_f32(v122, *&v110.f64[0], 1);
    v13 = v234;
  }

  v125 = 0;
  v126 = *(*(a1 + 80) + 8);
  v127 = a2[1].f32[0] * v126[7].f32[0];
  *&v238 = vmul_f32(*a2, v126[6]);
  *(&v238 + 2) = v127;
  v128 = &v126[7] + 4;
  do
  {
    *(&v241 + v125) = *&v128[v125] + *(&v238 + v125);
    v125 += 4;
  }

  while (v125 != 12);
  v230 = v241;
  v129 = DWORD2(v241);
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v10);
  v130 = *(*(*(a1 + 56) + 8) + 48);
  v131 = *a3;
  v132 = [v13 pointCount];
  if (v130)
  {
    v133 = v130 + 8;
  }

  else
  {
    v133 = 0;
  }

  v244 = v230;
  v245 = v129;
  v134 = *(a7 + 4);
  v135 = *a7;
  v137 = *(v133 + 8);
  v136 = *(v133 + 16);
  _ZF = v137 == v136 || v132 - 1 == a4;
  if (!_ZF)
  {
    if (*(v133 + 232) == 1)
    {
      if ((v134 == *(a7 + 5) || v135 != 0.0 && v135 != 1.0) && *(v136 - 12) == a8)
      {
LABEL_99:
        v146 = *(v136 - 48);
        v147 = vabds_f32(v146, *&v230);
        if (v147 <= (fabsf(*&v230 + v146) * 0.000011921) || v147 <= 1.1755e-38)
        {
          v149 = 0;
          do
          {
            if (v149 == 2)
            {
              goto LABEL_148;
            }

            v150 = *(v136 - 44 + 4 * v149);
            v151 = v149 + 1;
            v152 = *(&v244 + v149 + 1);
            v153 = vabds_f32(v150, v152);
            v154 = v153 <= (fabsf(v152 + v150) * 0.000011921) || v153 <= 1.1755e-38;
            ++v149;
          }

          while (v154);
          if ((v151 - 1) > 1)
          {
            goto LABEL_148;
          }
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v136 - v137) >> 4) >= 2)
        {
          v155 = *(v136 - 96);
          v156 = vabds_f32(v155, v146);
          if (v156 > (fabsf(v146 + v155) * 0.000011921) && v156 > 1.1755e-38)
          {
            goto LABEL_124;
          }

          v158 = 0;
          v159 = (v136 - 92);
          do
          {
            if (v158 == 2)
            {
              goto LABEL_82;
            }

            ++v158;
            v160 = v159[12];
            v161 = vabds_f32(*v159, v160);
            v162 = fabsf(v160 + *v159++) * 0.000011921;
          }

          while (v161 <= v162 || v161 <= 1.1755e-38);
          if ((v158 - 1) <= 1)
          {
LABEL_124:
            v164 = 0;
            v165 = (v136 - 48);
            do
            {
              *(&v241 + v164++) = *v165 - *(v165 - 12);
              ++v165;
            }

            while (v164 != 3);
            v166 = 0;
            *&v238 = v241;
            DWORD2(v238) = DWORD2(v241);
            do
            {
              *(&v241 + v166) = *(&v244 + v166) - *(v136 - 48 + v166);
              v166 += 4;
            }

            while (v166 != 12);
            v167 = 0;
            *&v235 = v241;
            DWORD2(v235) = DWORD2(v241);
            v168 = 0.0;
            do
            {
              v168 = v168 + (*(&v238 + v167) * *(&v238 + v167));
              v167 += 4;
            }

            while (v167 != 12);
            v169 = 0;
            v170 = 0.0;
            do
            {
              v170 = v170 + (*(&v235 + v169) * *(&v235 + v169));
              v169 += 4;
            }

            while (v169 != 12);
            v171 = 0;
            v172 = 1.0 / sqrtf(v168);
            do
            {
              *(&v241 + v171) = *(&v238 + v171) * v172;
              v171 += 4;
            }

            while (v171 != 12);
            v173 = 0;
            v174 = sqrtf(v170);
            v246 = v241;
            v247 = DWORD2(v241);
            do
            {
              *(&v241 + v173) = *(&v235 + v173) * (1.0 / v174);
              v173 += 4;
            }

            while (v173 != 12);
            v175 = 0;
            v176 = 0.0;
            do
            {
              v176 = v176 + (*(&v241 + v175) * *(&v246 + v175));
              v175 += 4;
            }

            while (v175 != 12);
            if (v176 < *(v133 + 136) && (*(v133 + 128) * v174) < *(v133 + 132))
            {
              goto LABEL_148;
            }
          }
        }
      }
    }

    else if (*(v136 - 4) == v134)
    {
      goto LABEL_99;
    }
  }

LABEL_82:
  v139 = *(a7 + 5);
  v140 = *(v133 + 24);
  if (v136 >= v140)
  {
    v142 = 0xAAAAAAAAAAAAAAABLL * ((v136 - v137) >> 4);
    v143 = v142 + 1;
    if (v142 + 1 > 0x555555555555555)
    {
      goto LABEL_161;
    }

    v144 = 0xAAAAAAAAAAAAAAABLL * ((v140 - v137) >> 4);
    if (2 * v144 > v143)
    {
      v143 = 2 * v144;
    }

    if (v144 >= 0x2AAAAAAAAAAAAAALL)
    {
      v145 = 0x555555555555555;
    }

    else
    {
      v145 = v143;
    }

    if (v145)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::RouteLineSection::Vertex>>(v145);
    }

    v177 = 48 * v142;
    *(v177 + 8) = v245;
    *v177 = v244;
    *(v177 + 12) = v131;
    *(v177 + 24) = 0;
    *(v177 + 32) = 0;
    *(v177 + 36) = a8;
    *(v177 + 40) = v135;
    *(v177 + 44) = v134;
    *(v177 + 45) = v139;
    *(v177 + 46) = 253;
    v141 = 48 * v142 + 48;
    v178 = *(v133 + 8);
    v179 = *(v133 + 16);
    v180 = (v177 + v178 - v179);
    if (v178 != v179)
    {
      v181 = v180;
      do
      {
        v182 = *v178;
        v183 = *(v178 + 2);
        v181[1] = *(v178 + 1);
        v181[2] = v183;
        *v181 = v182;
        v181 += 3;
        v178 += 48;
      }

      while (v178 != v179);
      v178 = *(v133 + 8);
    }

    *(v133 + 8) = v180;
    *(v133 + 16) = v141;
    *(v133 + 24) = 0;
    if (v178)
    {
      operator delete(v178);
    }
  }

  else
  {
    *v136 = v244;
    *(v136 + 8) = v245;
    *(v136 + 12) = v131;
    *(v136 + 24) = 0;
    *(v136 + 32) = 0;
    *(v136 + 36) = a8;
    *(v136 + 40) = v135;
    *(v136 + 44) = v134;
    *(v136 + 45) = v139;
    v141 = v136 + 48;
    *(v136 + 46) = 253;
  }

  *(v133 + 16) = v141;
LABEL_148:
  v184 = 0;
  v185 = *(*(a1 + 48) + 8) + 48;
  do
  {
    *(v185 + v184 * 4) = a2->i32[v184];
    ++v184;
  }

  while (v184 != 3);
}

- (optional<std::pair<const)_getSnappedSegment:()fast_shared_ptr<md:(mdm:(const PolylineCoordinate *)a4 :allocator>)a3 :RouteLineSection coord:
{
  if (*a3._control)
  {
    v6 = *a3._control + 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(*v6 + 56))(v6, a2);
  if (v7 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = v7 >> 1;
      v10 = (*(*(*a3._control + 8) + 48))(*a3._control + 8, v8 + (v7 >> 1));
      v11 = *(v10 + 12);
      if (v11 < a4->index || v11 == a4->index && *(v10 + 16) < a4->offset)
      {
        v9 = v7 + ~v9;
        v8 += (v7 >> 1) + 1;
      }

      v7 = v9;
    }

    while (v9 > 0);
  }

  if (*a3._control)
  {
    v12 = *a3._control + 8;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*v12 + 56))(v12);
  LODWORD(v14) = v8 - 1;
  if (v8)
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 != v8;
  if (v13 == v8)
  {
    v14 = 0;
  }

  v16 = v14 | (v8 << 32);
  result.var0 = v16;
  result.var1 = v15;
  return result;
}

- (double)_findSimplifiedOffsetFor:(const PolylineCoordinate *)a3 betweenA:(const PolylineCoordinate *)a4 andB:(const PolylineCoordinate *)a5
{
  v9 = [*(self + 24) composedRoute];
  v10 = v9;
  index = a4->index;
  offset = a4->offset;
  if (offset >= 1.0)
  {
    index += vcvtms_u32_f32(offset);
    offset = offset - floorf(offset);
  }

  v13 = a5->index;
  v14 = a5->offset;
  if (v14 >= 1.0)
  {
    v13 += vcvtms_u32_f32(v14);
    v14 = v14 - floorf(v14);
  }

  [v9 distanceBetweenRouteCoordinate:index | (LODWORD(offset) << 32) andRouteCoordinate:v13 | (LODWORD(v14) << 32)];
  v16 = v15;

  result = 0.0;
  if (v16 >= 1.0e-10)
  {
    v18 = [*(self + 24) composedRoute];
    v19 = v18;
    v20 = a4->index;
    v21 = a4->offset;
    if (v21 >= 1.0)
    {
      v20 += vcvtms_u32_f32(v21);
      v21 = v21 - floorf(v21);
    }

    v22 = a3->index;
    v23 = a3->offset;
    if (v23 >= 1.0)
    {
      v22 += vcvtms_u32_f32(v23);
      v23 = v23 - floorf(v23);
    }

    [v18 distanceBetweenRouteCoordinate:v20 | (LODWORD(v21) << 32) andRouteCoordinate:v22 | (LODWORD(v23) << 32)];
    v25 = v24;

    return v25 / v16;
  }

  return result;
}

- (void)_updateTilesCovered:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(self + 8) == 1)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [*(*(&v12 + 1) + 8 * v9) matchedPathSegments];
          if (v10)
          {
            [v5 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = *(self + 48);
  *(self + 48) = v5;
}

- (void)_clearMatchedSegments
{
  std::mutex::lock((self + 440));
  [*(self + 54) removeAllObjects];
  std::mutex::unlock((self + 440));
  v3 = *(self + 29);

  [v3 removeAllObjects];
}

- (void)_addMatchedSegments:(id)a3
{
  v4 = a3;
  std::mutex::lock((self + 440));
  [*(self + 54) addObjectsFromArray:v4];
  std::mutex::unlock((self + 440));
}

- (void)dealloc
{
  v3 = [*(self + 24) composedRoute];
  [v3 clearSnappedPathsForObserver:self];

  v4.receiver = self;
  v4.super_class = VKRouteLine;
  [(VKRouteLine *)&v4 dealloc];
}

- (VKRouteLine)initWithPolylineOverlay:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = VKRouteLine;
  v6 = [(VKRouteLine *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 24, a3);
    v8 = objc_alloc(MEMORY[0x1E69A2330]);
    v9 = [v7[24] composedRoute];
    v10 = [v8 initWithRoute:v9 auditToken:0];
    v11 = v7[27];
    v7[27] = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = v7[29];
    v7[29] = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = v7[54];
    v7[54] = v14;
  }

  return v7;
}

@end