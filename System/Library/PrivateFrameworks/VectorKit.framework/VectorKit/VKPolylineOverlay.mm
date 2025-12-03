@interface VKPolylineOverlay
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate;
- (BOOL)_meetsMinimumPathLengthBetweenStart:(unsigned int)start end:(unsigned int)end;
- (BOOL)isSnappingForSceneTiles;
- (DebugTreeNode)createDebugNode;
- (VKPolylineOverlay)initWithComposedRoute:(id)route traffic:(id)traffic;
- (VKPolylineOverlayRouteRibbonObserver)routeRibbonObserver;
- (VKRouteLine)routeRibbon;
- (_NSRange)sectionRangeForBounds:()Box<double;
- (id).cxx_construct;
- (id)getPathsForRenderRegion:(id)region shouldSnapToRoads:(BOOL)roads shouldGenerateSnapPath:(BOOL)path verifySnapping:(BOOL)snapping isGradientTraffic:(BOOL)traffic observer:(id)observer elevationSource:(void *)source elevationSourceContext:(void *)self0;
- (void)_setNeedsLayout;
- (void)addObserver:(id)observer;
- (void)composedRoute:(id)route selectedSections:(id)sections deselectedSections:(id)deselectedSections;
- (void)createMatchedSegmentAndAddToPaths:(id)paths section:(id)section pathStartIndex:(unsigned int)index pathEndIndex:(unsigned int)endIndex shouldGenerateSnapPath:(BOOL)path elevationSource:(void *)source elevationSourceContext:(void *)context;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)setRouteRibbon:(id)ribbon;
- (void)setSplitSections:(void *)sections;
- (void)updateTraffic:(id)traffic;
@end

@implementation VKPolylineOverlay

- (VKRouteLine)routeRibbon
{
  WeakRetained = objc_loadWeakRetained(&self->_routeRibbon);

  return WeakRetained;
}

- (void)_setNeedsLayout
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_observers;
  v4 = [(__CFSet *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) setNeedsLayoutForPolyline:{self, v7}];
      }

      while (v4 != v6);
      v4 = [(__CFSet *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)isSnappingForSceneTiles
{
  if (!self->_isReadyForSnapping)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_routeRibbon);
  v3 = [WeakRetained numPathsMatching] != 0;

  return v3;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 10) = 0;
  return self;
}

- (void)setSplitSections:(void *)sections
{
  p_splitSections = &self->_splitSections;
  if (&self->_splitSections != sections)
  {
    v5 = *sections;
    v6 = *(sections + 1);
    v7 = &v6[-*sections];
    cap = self->_splitSections.__cap_;
    begin = self->_splitSections.__begin_;
    if (cap - begin < v7)
    {
      v10 = v7 >> 4;
      if (begin)
      {
        self->_splitSections.__end_ = begin;
        operator delete(begin);
        cap = 0;
        p_splitSections->__begin_ = 0;
        p_splitSections->__end_ = 0;
        p_splitSections->__cap_ = 0;
      }

      if (!(v10 >> 60))
      {
        v11 = cap >> 3;
        if (cap >> 3 <= v10)
        {
          v11 = v7 >> 4;
        }

        if (cap >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (!(v12 >> 60))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v12);
        }
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    end = self->_splitSections.__end_;
    v14 = end - begin;
    if (end - begin >= v7)
    {
      if (v6 != v5)
      {
        memmove(begin, v5, v7);
      }

      v16 = (begin + v7);
    }

    else
    {
      v15 = &v5[v14];
      if (end != begin)
      {
        memmove(self->_splitSections.__begin_, v5, v14);
        end = self->_splitSections.__end_;
      }

      if (v6 != v15)
      {
        memmove(end, v15, v6 - v15);
      }

      v16 = (end + v6 - v15);
    }

    self->_splitSections.__end_ = v16;
  }
}

- (VKPolylineOverlayRouteRibbonObserver)routeRibbonObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_routeRibbonObserver);

  return WeakRetained;
}

- (void)composedRoute:(id)route selectedSections:(id)sections deselectedSections:(id)deselectedSections
{
  v18 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  deselectedSectionsCopy = deselectedSections;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_observers;
  v10 = [(__CFSet *)v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v13 + 1) + 8 * v12++) polyline:self selectedSections:sectionsCopy deselectedSections:{deselectedSectionsCopy, v13}];
      }

      while (v10 != v12);
      v10 = [(__CFSet *)v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (DebugTreeNode)createDebugNode
{
  v2 = v1;
  *retstr[2]._name.__rep_.__s.__data_ = 0u;
  *(&retstr[2]._name.__rep_.__l + 1) = 0u;
  *retstr[1]._name.__rep_.__s.__data_ = 0u;
  *(&retstr[1]._name.__rep_.__l + 1) = 0u;
  *retstr->_name.__rep_.__s.__data_ = 0u;
  *(&retstr->_name.__rep_.__l + 1) = 0u;
  std::string::basic_string[abi:nn200100]<0>(__p, "traffic timestamp");
  [v2 trafficTimeStamp];
  gdc::DebugTreeValue::DebugTreeValue(v29, v4);
  gdc::DebugTreeNode::addProperty(&retstr->_name.__rep_.__l, __p, v29);
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "selected");
  gdc::DebugTreeValue::DebugTreeValue(v26, [v2 selected]);
  gdc::DebugTreeNode::addProperty(&retstr->_name.__rep_.__l, __p, v26);
  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v2[10];
  if (v6)
  {
    v7 = 0;
    for (i = 0; i < (v6[1] - *v6) >> 3; ++i)
    {
      std::to_string(&v18, i);
      v9 = std::string::insert(&v18, 0, "segment ", 8uLL);
      v19 = *v9;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      gdc::DebugTreeNode::DebugTreeNode(__p, &v19);
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&v19, "distance");
      v10 = *v2[10];
      if (i >= (*(v2[10] + 8) - v10) >> 3)
      {
        goto LABEL_32;
      }

      gdc::DebugTreeValue::DebugTreeValue(v15, *(v10 + v7));
      gdc::DebugTreeNode::addProperty(__p, &v19, v15);
      if (v17 < 0)
      {
        operator delete(v16);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      std::string::basic_string[abi:nn200100]<0>(&v19, "speed");
      v11 = *v2[10];
      if (i >= (*(v2[10] + 8) - v11) >> 3)
      {
LABEL_32:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      gdc::DebugTreeValue::DebugTreeValue(v12, *(v11 + v7 + 4));
      gdc::DebugTreeNode::addProperty(__p, &v19, v12);
      if (v14 < 0)
      {
        operator delete(v13);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      gdc::DebugTreeNode::addChildNode(retstr, __p);
      v19.__r_.__value_.__r.__words[0] = &v25;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v19);
      v19.__r_.__value_.__r.__words[0] = &v24;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v19);
      if (v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = v2[10];
      v7 += 8;
    }
  }

  return result;
}

- (id)getPathsForRenderRegion:(id)region shouldSnapToRoads:(BOOL)roads shouldGenerateSnapPath:(BOOL)path verifySnapping:(BOOL)snapping isGradientTraffic:(BOOL)traffic observer:(id)observer elevationSource:(void *)source elevationSourceContext:(void *)self0
{
  trafficCopy = traffic;
  snappingCopy = snapping;
  pathCopy = path;
  roadsCopy = roads;
  v198 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  observerCopy = observer;
  v162 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v157 = roadsCopy;
  self->_isReadyForSnapping = roadsCopy;
  selfCopy = self;
  if ([(VKPolylineOverlay *)self containsTransit])
  {
    [(GEOComposedRoute *)self->_composedRoute clearSnappedPathsForObserver:observerCopy];
    v191 = 0u;
    v192 = 0u;
    v189 = 0u;
    v190 = 0u;
    sections = [(GEOComposedRoute *)self->_composedRoute sections];
    v15 = [sections countByEnumeratingWithState:&v189 objects:v197 count:16];
    if (v15)
    {
      v16 = *v190;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v190 != v16)
          {
            objc_enumerationMutation(sections);
          }

          v18 = *(*(&v189 + 1) + 8 * i);
          v19 = [v18 pathsForRenderRegion:regionCopy inOverlay:self shouldSnapToTransit:1 verifySnapping:snappingCopy elevationSource:source elevationSourceContext:context];
          if (v19 || ([v18 pathsForRenderRegion:regionCopy inOverlay:self elevationSource:source elevationSourceContext:context], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            [v162 addObjectsFromArray:v19];
          }

          self = selfCopy;
        }

        v15 = [sections countByEnumeratingWithState:&v189 objects:v197 count:16];
      }

      while (v15);
    }

    v20 = v162;
LABEL_13:

    goto LABEL_145;
  }

  if (roadsCopy)
  {
    snappingRegion = [regionCopy snappingRegion];
    v22 = snappingRegion + 1;
    v23 = *snappingRegion;
    if (*snappingRegion == snappingRegion + 1)
    {
      v163 = 0;
    }

    else
    {
      v163 = 0;
      v24 = MEMORY[0x1E69A1688];
      do
      {
        v25 = v24[1];
        v26 = v23[2];
        v27 = vsubq_f64(v23[3], v26);
        v26.f64[1] = 1.0 - v23[3].f64[1];
        v28 = vmulq_f64(v26, v25);
        v29 = vmulq_f64(v27, v25);
        v30 = v163;
        v31 = v163 >> 5;
        if (((v163 >> 5) + 1) >> 59)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (v163 >> 5 != -1)
        {
          if (!(((v163 >> 5) + 1) >> 59))
          {
            operator new();
          }

          goto LABEL_160;
        }

        v32 = (32 * v31);
        *v32 = v28;
        v32[1] = v29;
        v163 = 32 * v31 + 32;
        memcpy(0, 0, v30);
        v33 = v23->f64[1];
        if (v33 == 0.0)
        {
          do
          {
            v34 = v23[1].f64[0];
            _ZF = **&v34 == v23;
            v23 = *&v34;
          }

          while (!_ZF);
        }

        else
        {
          do
          {
            v34 = v33;
            v33 = **&v33;
          }

          while (v33 != 0.0);
        }

        v23 = *&v34;
      }

      while (*&v34 != v22);
    }

    [regionCopy visibleRect];
    v41 = selfCopy;
    WeakRetained = objc_loadWeakRetained(&selfCopy->_routeRibbon);
    [WeakRetained _clearMatchedSegments];

    v43 = objc_loadWeakRetained(&selfCopy->_routeRibbon);
    if (v43)
    {
      v44 = v43;
      v45 = objc_loadWeakRetained(&selfCopy->_routeRibbon);
      pathMatcher = [v45 pathMatcher];

      if (pathMatcher)
      {
        v47 = objc_loadWeakRetained(&selfCopy->_routeRibbon);
        [v47 setMatchingEndIndex:0];

        v48 = [(GEOComposedRoute *)selfCopy->_composedRoute pointCount]- 1;
        v49 = objc_loadWeakRetained(&selfCopy->_routeRibbon);
        [v49 setMatchingStartIndex:v48];

        v187 = 0u;
        v188 = 0u;
        v185 = 0u;
        v186 = 0u;
        obj = [(GEOComposedRoute *)selfCopy->_composedRoute sections];
        v50 = [obj countByEnumeratingWithState:&v185 objects:v196 count:16];
        if (v50)
        {
          v158 = *v186;
          __asm { FMOV            V0.2D, #1.0 }

          v154 = _Q0;
          do
          {
            v56 = 0;
            v159 = v50;
            do
            {
              if (*v186 != v158)
              {
                objc_enumerationMutation(obj);
              }

              v57 = *(*(&v185 + 1) + 8 * v56);
              v160 = v56;
              if (v57)
              {
                [v57 bounds];
                *&v51 = __p[0];
                v58 = *&__p[1];
                v59 = v184;
              }

              else
              {
                v59 = 0uLL;
                v58 = 0.0;
                *&v51 = 0;
              }

              v60 = v59.f64[1];
              v166 = v51;
              v164 = v59;
              if (GEOMapRectIntersectsRect())
              {
                _ZF = v163 == 0;
              }

              else
              {
                _ZF = 1;
              }

              if (!_ZF)
              {
                v62 = 0;
                v161 = vdivq_f64(v154, v164);
                v63 = 0;
                do
                {
                  v65 = v63[2];
                  v64 = v63[3];
                  v168 = v63[1];
                  v169 = *v63;
                  if (GEOMapRectIntersectsRect())
                  {
                    v66.f64[0] = v169;
                    v66.f64[1] = v60 + v58;
                    *(&v51 + 1) = *(&v166 + 1);
                    *&v67.f64[0] = v166;
                    v67.f64[1] = v168;
                    v68 = vmulq_f64(vsubq_f64(v66, v67), v161);
                    v69 = vcvt_hight_f32_f64(vcvt_f32_f64(v68), v68);
                    LODWORD(v68.f64[0]) = vmovn_s32(vcgtq_f32(xmmword_1B33B0730, v69)).u32[0];
                    HIDWORD(v68.f64[0]) = vmovn_s32(vcgtq_f32(v69, xmmword_1B33B0730)).i32[1];
                    v70 = vbslq_s8(vmovl_s16(*&v68.f64[0]), v69, xmmword_1B33B0730);
                    v66.f64[0] = v65 + v169;
                    v67.f64[1] = v64 + v168;
                    v71 = vmulq_f64(vsubq_f64(v66, v67), v161);
                    v72 = vcvt_hight_f32_f64(vcvt_f32_f64(v71), v71);
                    LODWORD(v71.f64[0]) = vmovn_s32(vcgtq_f32(v70, v72)).u32[0];
                    HIDWORD(v71.f64[0]) = vmovn_s32(vcgtq_f32(v72, v70)).i32[1];
                    v73 = vbslq_s8(vmovl_s16(*&v71.f64[0]), v72, v70);
                    if (((v62 >> 4) + 1) >> 60)
                    {
                      std::__throw_bad_array_new_length[abi:nn200100]();
                    }

                    if (v62 >> 4 != -1)
                    {
                      if (!(((v62 >> 4) + 1) >> 60))
                      {
                        operator new();
                      }

LABEL_160:
                      std::__throw_bad_array_new_length[abi:nn200100]();
                    }

                    v74 = (16 * (v62 >> 4));
                    *v74 = v73;
                    v75 = v74 + 1;
                    if (v62)
                    {
                      v76 = 0;
                      v77 = 0;
                      do
                      {
                        v78 = *v76++;
                        *v77++ = v78;
                      }

                      while (v76 != v62);
                    }

                    v62 = v75;
                  }

                  else
                  {
                    *(&v51 + 1) = *(&v166 + 1);
                  }

                  v63 += 4;
                }

                while (v63 != v163);
                if (v62)
                {
                  startPointIndex = [v57 startPointIndex];
                  v80 = objc_loadWeakRetained(&selfCopy->_routeRibbon);
                  matchingStartIndex = [v80 matchingStartIndex];
                  if (startPointIndex >= matchingStartIndex)
                  {
                    v153 = objc_loadWeakRetained(&selfCopy->_routeRibbon);
                    matchingStartIndex2 = [v153 matchingStartIndex];
                  }

                  else
                  {
                    matchingStartIndex2 = [v57 startPointIndex];
                  }

                  v83 = matchingStartIndex2;
                  v84 = objc_loadWeakRetained(&selfCopy->_routeRibbon);
                  [v84 setMatchingStartIndex:v83];

                  if (startPointIndex >= matchingStartIndex)
                  {
                  }

                  endPointIndex = [v57 endPointIndex];
                  v86 = objc_loadWeakRetained(&selfCopy->_routeRibbon);
                  matchingEndIndex = [v86 matchingEndIndex];
                  if (endPointIndex <= matchingEndIndex)
                  {
                    v152 = objc_loadWeakRetained(&selfCopy->_routeRibbon);
                    matchingEndIndex2 = [v152 matchingEndIndex];
                  }

                  else
                  {
                    matchingEndIndex2 = [v57 endPointIndex];
                  }

                  v89 = matchingEndIndex2;
                  v90 = objc_loadWeakRetained(&selfCopy->_routeRibbon);
                  [v90 setMatchingEndIndex:v89];

                  if (endPointIndex <= matchingEndIndex)
                  {
                  }

                  points = [v57 points];
                  startPointIndex2 = [v57 startPointIndex];
                  v93 = 0;
                  endPointIndex2 = 0xFFFFFFFFLL;
LABEL_76:
                  while (2)
                  {
                    if (v93 >= [v57 pointCount] - 1)
                    {
                      v95 = startPointIndex2;
                    }

                    else
                    {
                      v95 = [v57 startPointIndex] + v93;
                      v96 = (points + 12 * v93++);
                      v97.i64[0] = *v96;
                      v97.i64[1] = *v96;
                      v98.i32[0] = vmovn_s32(vcgtq_f32(xmmword_1B33B0730, v97)).u32[0];
                      v98.i32[1] = vmovn_s32(vcgtq_f32(v97, xmmword_1B33B0730)).i32[1];
                      v99 = vbslq_s8(vmovl_s16(v98), v97, xmmword_1B33B0730);
                      v100.i64[0] = *(v96 + 12);
                      v101.i64[0] = v100.i64[0];
                      v101.i64[1] = v100.i64[0];
                      v102.i64[0] = v99.i64[0];
                      v102.i64[1] = v100.i64[0];
                      v100.i64[1] = vextq_s8(v99, v99, 8uLL).u64[0];
                      v103 = vbslq_s8(vcgtq_f32(v102, v100), v101, v99);
                      *__p = v103;
                      v104 = 0;
LABEL_78:
                      v105 = 0;
                      v106 = __p;
                      v107 = 1;
                      do
                      {
                        v103.i32[0] = *(&__p[1] + v105);
                        if (*v103.i32 <= *(v104 + 4 * v105) || (v103.i32[0] = *v106, *v106 >= *(v104 + 8 + 4 * v105)))
                        {
                          v104 += 16;
                          if (v104 != v62)
                          {
                            goto LABEL_78;
                          }

                          if (endPointIndex2 == v95)
                          {
                            if ([(VKPolylineOverlay *)selfCopy _meetsMinimumPathLengthBetweenStart:startPointIndex2 end:endPointIndex2, *v103.i64])
                            {
                              [(VKPolylineOverlay *)selfCopy createMatchedSegmentAndAddToPaths:v162 section:v57 pathStartIndex:startPointIndex2 pathEndIndex:endPointIndex2 shouldGenerateSnapPath:pathCopy elevationSource:source elevationSourceContext:context];
                              goto LABEL_76;
                            }

                            goto LABEL_88;
                          }

                          goto LABEL_76;
                        }

                        v108 = v107;
                        v107 = 0;
                        v106 = (__p + 4);
                        v105 = 1;
                      }

                      while ((v108 & 1) != 0);
                      if (endPointIndex2 == v95)
                      {
LABEL_88:
                        endPointIndex2 = (endPointIndex2 + 1);
                        continue;
                      }

                      if (-[VKPolylineOverlay _meetsMinimumPathLengthBetweenStart:end:](selfCopy, "_meetsMinimumPathLengthBetweenStart:end:", v95, [v57 endPointIndex]))
                      {
                        endPointIndex2 = (v95 + 1);
                        startPointIndex2 = v95;
                        continue;
                      }

                      endPointIndex2 = [v57 endPointIndex];
                    }

                    break;
                  }

                  if (endPointIndex2 == [v57 endPointIndex])
                  {
                    [(VKPolylineOverlay *)selfCopy createMatchedSegmentAndAddToPaths:v162 section:v57 pathStartIndex:v95 pathEndIndex:endPointIndex2 shouldGenerateSnapPath:pathCopy elevationSource:source elevationSourceContext:context];
                  }
                }
              }

              v56 = v160 + 1;
            }

            while (v160 + 1 != v159);
            v50 = [obj countByEnumeratingWithState:&v185 objects:v196 count:16];
          }

          while (v50);
        }

        v41 = selfCopy;
      }
    }

    __p[0] = 0;
    __p[1] = 0;
    v183 = 0;
    if (v162 && [v162 count])
    {
      routeEnd = 0;
      v110 = 0;
      routeStart = -1;
      while (1)
      {
        v112 = v110;
        if ([v162 count] <= v110)
        {
          break;
        }

        v113 = [v162 objectAtIndex:v110];
        v114 = v113;
        if (routeStart > routeEnd)
        {
          routeStart = [v113 routeStart];
          routeEnd = [v114 routeEnd];
        }

        if (routeEnd >= [v114 routeStart])
        {
          routeEnd = [v114 routeEnd];
        }

        else
        {
          v115 = __p[1];
          if (__p[1] >= v183)
          {
            v117 = __p[0];
            v118 = __p[1] - __p[0];
            v119 = (__p[1] - __p[0]) >> 3;
            v120 = v119 + 1;
            if ((v119 + 1) >> 61)
            {
              goto LABEL_162;
            }

            v121 = v183 - __p[0];
            if ((v183 - __p[0]) >> 2 > v120)
            {
              v120 = v121 >> 2;
            }

            if (v121 >= 0x7FFFFFFFFFFFFFF8)
            {
              v122 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v122 = v120;
            }

            if (v122)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v122);
            }

            v123 = (__p[1] - __p[0]) >> 3;
            v124 = (8 * v119);
            *v124 = routeStart;
            v124[1] = routeEnd;
            v116 = (8 * v119 + 8);
            v125 = (8 * v119 - 8 * v123);
            memcpy(&v124[-2 * v123], v117, v118);
            v126 = __p[0];
            __p[0] = v125;
            __p[1] = v116;
            v183 = 0;
            if (v126)
            {
              operator delete(v126);
            }
          }

          else
          {
            *__p[1] = routeStart;
            v115[1] = routeEnd;
            v116 = v115 + 2;
          }

          __p[1] = v116;
          routeStart = [v114 routeStart];
          routeEnd = [v114 routeEnd];
        }

        v110 = v112 + 1;
        v41 = selfCopy;
      }

      v127 = __p[1];
      if (__p[1] >= v183)
      {
        v129 = __p[0];
        v130 = __p[1] - __p[0];
        v131 = (__p[1] - __p[0]) >> 3;
        v132 = v131 + 1;
        if ((v131 + 1) >> 61)
        {
LABEL_162:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v133 = v183 - __p[0];
        if ((v183 - __p[0]) >> 2 > v132)
        {
          v132 = v133 >> 2;
        }

        if (v133 >= 0x7FFFFFFFFFFFFFF8)
        {
          v134 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v134 = v132;
        }

        if (v134)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v134);
        }

        v135 = (__p[1] - __p[0]) >> 3;
        v136 = (8 * v131);
        *v136 = routeStart;
        v136[1] = routeEnd;
        v128 = (8 * v131 + 8);
        v137 = (8 * v131 - 8 * v135);
        memcpy(&v136[-2 * v135], v129, v130);
        v138 = __p[0];
        __p[0] = v137;
        __p[1] = v128;
        v183 = 0;
        if (v138)
        {
          operator delete(v138);
        }
      }

      else
      {
        *__p[1] = routeStart;
        v127[1] = routeEnd;
        v128 = v127 + 2;
      }

      __p[1] = v128;
    }

    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    sections2 = [(GEOComposedRoute *)v41->_composedRoute sections];
    v140 = [sections2 countByEnumeratingWithState:&v178 objects:v195 count:16];
    if (v140)
    {
      v141 = *v179;
      do
      {
        for (j = 0; j != v140; ++j)
        {
          if (*v179 != v141)
          {
            objc_enumerationMutation(sections2);
          }

          v143 = [*(*(&v178 + 1) + 8 * j) pathsForRenderRegion:regionCopy inOverlay:v41 excludedSegments:__p elevationSource:source elevationSourceContext:context];
          [v162 addObjectsFromArray:v143];

          v41 = selfCopy;
        }

        v140 = [sections2 countByEnumeratingWithState:&v178 objects:v195 count:16];
      }

      while (v140);
    }

    [v162 sortUsingComparator:&__block_literal_global_24222];
    v40 = selfCopy;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    [(GEOComposedRoute *)self->_composedRoute clearSnappedPathsForObserver:observerCopy];
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    sections3 = [(GEOComposedRoute *)self->_composedRoute sections];
    v36 = [sections3 countByEnumeratingWithState:&v174 objects:v194 count:16];
    if (v36)
    {
      v37 = *v175;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v175 != v37)
          {
            objc_enumerationMutation(sections3);
          }

          v39 = [*(*(&v174 + 1) + 8 * k) pathsForRenderRegion:regionCopy inOverlay:self elevationSource:source elevationSourceContext:context];
          [v162 addObjectsFromArray:v39];

          self = selfCopy;
        }

        v36 = [sections3 countByEnumeratingWithState:&v174 objects:v194 count:16];
      }

      while (v36);
    }

    v40 = selfCopy;
  }

  if (v40->_traffic && ![(GEOComposedRoute *)v40->_composedRoute transportType])
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    sections = v162;
    v145 = [sections countByEnumeratingWithState:&v170 objects:v193 count:16];
    if (v145)
    {
      v146 = *v171;
      do
      {
        for (m = 0; m != v145; ++m)
        {
          if (*v171 != v146)
          {
            objc_enumerationMutation(sections);
          }

          v148 = *(*(&v170 + 1) + 8 * m);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v149 = v148;
            [v149 splitTrafficSegmentationAndAddTo:v20 with:v40->_trafficSegments.__ptr_ shouldSnap:v157 isGradientTraffic:trafficCopy];

            v40 = selfCopy;
          }

          else
          {
            [v20 addObject:v148];
          }
        }

        v145 = [sections countByEnumeratingWithState:&v170 objects:v193 count:16];
      }

      while (v145);
    }

    goto LABEL_13;
  }

  v20 = v162;
LABEL_145:

  return v20;
}

uint64_t __167__VKPolylineOverlay_getPathsForRenderRegion_shouldSnapToRoads_shouldGenerateSnapPath_verifySnapping_isGradientTraffic_observer_elevationSource_elevationSourceContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 routeStart];
  v9 = [v7 routeStart];
  if (v8 < v9 || v8 == v9 && (LODWORD(v10) = HIDWORD(v8), *(&v8 + 1) < *(&v9 + 1)))
  {
    v11 = -1;
  }

  else
  {
    v12 = [v6 routeStart];
    v13 = [v7 routeStart];
    v14 = fabsf(*(&v12 + 1) - *(&v13 + 1));
    v11 = v12 != v13 || v14 >= 0.00000011921;
  }

  return v11;
}

- (void)createMatchedSegmentAndAddToPaths:(id)paths section:(id)section pathStartIndex:(unsigned int)index pathEndIndex:(unsigned int)endIndex shouldGenerateSnapPath:(BOOL)path elevationSource:(void *)source elevationSourceContext:(void *)context
{
  v10 = *&endIndex;
  v11 = *&index;
  pathsCopy = paths;
  sectionCopy = section;
  WeakRetained = objc_loadWeakRetained(&self->_routeRibbon);
  [WeakRetained setNumPathsMatching:{(objc_msgSend(WeakRetained, "numPathsMatching") + 1)}];

  v17 = objc_loadWeakRetained(&self->_routeRibbon);
  pathMatcher = [v17 pathMatcher];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __153__VKPolylineOverlay_createMatchedSegmentAndAddToPaths_section_pathStartIndex_pathEndIndex_shouldGenerateSnapPath_elevationSource_elevationSourceContext___block_invoke;
  v29[3] = &unk_1E7B38E88;
  v29[4] = self;
  [pathMatcher matchRouteFromStart:v11 toEnd:v10 finishedHandler:v29];

  if (path)
  {
    v19 = objc_loadWeakRetained(&self->_routeRibbon);
    pathMatcher2 = [v19 pathMatcher];
    v21 = [pathMatcher2 matchedSegmentsFromStart:v11 toEnd:v10];

    if (!v21 || ![v21 count])
    {
      goto LABEL_10;
    }

    v22 = [v21 count];
    v23 = [v21 objectAtIndexedSubscript:0];
    if ([v23 startRouteCoordinate] == v11)
    {
      v24 = [v21 objectAtIndexedSubscript:v22 - 1];
      endRouteCoordinate = [v24 endRouteCoordinate];

      if (endRouteCoordinate != v10)
      {
LABEL_10:

        goto LABEL_11;
      }

      transportType = [(GEOComposedRoute *)self->_composedRoute transportType];
      v27 = off_1E7B2EB88;
      if (transportType)
      {
        v27 = off_1E7B2EC58;
      }

      v23 = [objc_alloc(*v27) initWithOverlay:self section:sectionCopy routeStartIndex:v11 routeEndIndex:v10 matchedPathSegments:v21 elevationSource:source elevationSourceContext:context];
      [pathsCopy addObject:v23];
      [(VKPolylineOverlay *)self _setNeedsLayout];
    }

    goto LABEL_10;
  }

LABEL_11:
}

void __153__VKPolylineOverlay_createMatchedSegmentAndAddToPaths_section_pathStartIndex_pathEndIndex_shouldGenerateSnapPath_elevationSource_elevationSourceContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((v3 + 56));
  [WeakRetained _addMatchedSegments:v4];

  v6 = objc_loadWeakRetained((*(a1 + 32) + 56));
  [v6 setNumPathsMatching:{(objc_msgSend(v6, "numPathsMatching") - 1)}];
}

- (BOOL)_meetsMinimumPathLengthBetweenStart:(unsigned int)start end:(unsigned int)end
{
  [(GEOComposedRoute *)self->_composedRoute pointAt:start];
  v7 = start + 1;
  v8 = 0.0;
  do
  {
    v9 = v7;
    if (v7 > end)
    {
      break;
    }

    [(GEOComposedRoute *)self->_composedRoute pointAt:v7];
    GEOCalculateDistance();
    v8 = v10 + v8;
    v7 = v9 + 1;
  }

  while (v8 < 100.0);
  return v9 <= end;
}

- (void)updateTraffic:(id)traffic
{
  v22 = *MEMORY[0x1E69E9840];
  trafficCopy = traffic;
  if (GEOGetVectorKitRouteLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
  }

  v6 = GEOGetVectorKitRouteLog_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v18 = 134218242;
    selfCopy = self;
    v20 = 2112;
    v21 = trafficCopy;
    _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "VKPolylineOverlay %p updateTraffic: %@", &v18, 0x16u);
  }

  if (self->_traffic != trafficCopy)
  {
    objc_storeStrong(&self->_traffic, traffic);
  }

  if (![(VKPolylineOverlay *)self containsTransit])
  {
    *(self->_trafficSegments.__ptr_ + 1) = *self->_trafficSegments.__ptr_;
    if (trafficCopy)
    {
      trafficColorOffsetsCount = [(GEOComposedRouteTraffic *)trafficCopy trafficColorOffsetsCount];
      trafficColorsCount = [(GEOComposedRouteTraffic *)trafficCopy trafficColorsCount];
      if (trafficColorsCount >= trafficColorOffsetsCount)
      {
        v9 = trafficColorOffsetsCount;
      }

      else
      {
        v9 = trafficColorsCount;
      }

      if (v9)
      {
        trafficColors = [(GEOComposedRouteTraffic *)trafficCopy trafficColors];
        trafficColorOffsets = [(GEOComposedRouteTraffic *)trafficCopy trafficColorOffsets];
        v12 = v9 - 1;
        if (v9 != 1)
        {
          v13 = (trafficColorOffsets + 4);
          v14 = trafficColors;
          do
          {
            v16 = *v13++;
            v15 = v16;
            v17 = *v14;
            v14 += 4;
            md::TrafficSegmentsAlongRoute::addSegmentAt(self->_trafficSegments.__ptr_, v15, v17);
            --v12;
          }

          while (v12);
        }

        md::TrafficSegmentsAlongRoute::addSegmentAt(self->_trafficSegments.__ptr_, 0xFFFFFFFF, *(trafficColors + 4 * v9 - 4));
      }

      else
      {
        md::TrafficSegmentsAlongRoute::addSegmentAt(self->_trafficSegments.__ptr_, 0xFFFFFFFF, 4);
      }
    }

    self->_trafficTimeStamp = CFAbsoluteTimeGetCurrent();
    [(VKPolylineOverlay *)self _setNeedsLayout];
  }
}

- (_NSRange)sectionRangeForBounds:()Box<double
{
  v35 = *MEMORY[0x1E69E9840];
  v33 = a3;
  sections = [(GEOComposedRoute *)self->_composedRoute sections];
  v5 = [sections count];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  sections2 = [(GEOComposedRoute *)self->_composedRoute sections];
  v7 = [sections2 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    LODWORD(v24) = 0;
    v25 = v5 - 1;
    v8 = *v30;
    do
    {
      v9 = 0;
      v10 = v24;
      v24 = v7 + v24;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(sections2);
        }

        [*(*(&v29 + 1) + 8 * v9) vkBounds];
        v11 = 0;
        v26 = v12;
        v27 = v13;
        v14 = &v33;
        v15 = &v26;
        v16 = 1;
        v28[0] = v17;
        v28[1] = v18;
        while (1)
        {
          v19 = v33._maximum._e[v11];
          if (v19 <= *v15)
          {
            break;
          }

          v19 = v14->_minimum._e[0];
          if (v14->_minimum._e[0] >= *&v28[v11])
          {
            break;
          }

          v20 = v16;
          v16 = 0;
          v15 = &v27;
          v14 = &v33._minimum._e[1];
          v11 = 1;
          if ((v20 & 1) == 0)
          {
            if (v5 >= v10)
            {
              v5 = v10;
            }

            v25 = v10;
            break;
          }
        }

        ++v10;
        ++v9;
      }

      while (v9 != v7);
      v7 = [sections2 countByEnumeratingWithState:&v29 objects:v34 count:{16, v19}];
    }

    while (v7);
    v21 = v25 + 1;
  }

  else
  {
    v21 = v5;
  }

  v22 = v21 - v5;
  v23 = v5;
  result.length = v22;
  result.location = v23;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinate
{
  boundingMapRegion = [(GEOComposedRoute *)self->_composedRoute boundingMapRegion];
  [boundingMapRegion southLat];
  v4 = v3;
  [boundingMapRegion northLat];
  v6 = v5;
  [boundingMapRegion westLng];
  v8 = v7;
  [boundingMapRegion eastLng];
  v9 = (v6 + v4) * 0.5;
  v11 = (v10 + v8) * 0.5;

  v12 = v9;
  v13 = v11;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (void)setRouteRibbon:(id)ribbon
{
  obj = ribbon;
  WeakRetained = objc_loadWeakRetained(&self->_routeRibbon);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_routeRibbon, obj);
    v6 = objc_loadWeakRetained(&self->_routeRibbonObserver);
    v7 = objc_loadWeakRetained(&self->_routeRibbon);
    [v6 polylineOverlay:self didUpdateRouteRibbon:v7];

    v5 = obj;
  }
}

- (void)removeObserver:(id)observer
{
  value = observer;
  observers = self->_observers;
  if (observers)
  {
    CFSetRemoveValue(observers, value);
  }

  [(GEOComposedRoute *)self->_composedRoute clearSnappedPathsForObserver:value];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  if (!observers)
  {
    v6 = *byte_1F2A28D60;
    observers = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &v6);
    self->_observers = observers;
  }

  CFSetAddValue(observers, observerCopy);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  objc_storeWeak(&self->_routeRibbon, 0);
  [(GEOComposedRoute *)self->_composedRoute unregisterObserver:self];
  observers = self->_observers;
  if (observers)
  {
    CFRelease(observers);
  }

  v5.receiver = self;
  v5.super_class = VKPolylineOverlay;
  [(VKPolylineOverlay *)&v5 dealloc];
}

- (VKPolylineOverlay)initWithComposedRoute:(id)route traffic:(id)traffic
{
  routeCopy = route;
  trafficCopy = traffic;
  v14.receiver = self;
  v14.super_class = VKPolylineOverlay;
  v9 = [(VKPolylineOverlay *)&v14 init];
  v10 = v9;
  v11 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_composedRoute, route);
    [(GEOComposedRoute *)v11->_composedRoute registerObserver:v11];
    if (![(VKPolylineOverlay *)v11 containsTransit])
    {
      objc_storeStrong(&v10->_traffic, traffic);
      operator new();
    }

    v12 = v11;
  }

  return v11;
}

@end