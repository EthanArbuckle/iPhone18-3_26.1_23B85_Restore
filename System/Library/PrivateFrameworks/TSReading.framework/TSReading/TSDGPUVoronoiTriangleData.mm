@interface TSDGPUVoronoiTriangleData
- (CGRect)bounds;
- (TSDGPUVoronoiTriangleData)initWithPoints:(unint64_t)points clippedToRect:(CGRect)rect percentOfCellsToSplit:(double)split randomGenerator:(id)generator;
- (id)cellFromTriangleIndex:(unint64_t)index;
- (unint64_t)cellIndexFromTriangleIndex:(unint64_t)index;
- (unint64_t)triangleIndexInCellFromGlobalTriangleIndex:(unint64_t)index;
- (void)dealloc;
- (void)p_setupDataWithPointCount:(unint64_t)count clippedToRect:(CGRect)rect percentOfCellsToSplit:(double)split randomGenerator:(id)generator;
@end

@implementation TSDGPUVoronoiTriangleData

- (void)p_setupDataWithPointCount:(unint64_t)count clippedToRect:(CGRect)rect percentOfCellsToSplit:(double)split randomGenerator:(id)generator
{
  height = rect.size.height;
  width = rect.size.width;
  x = rect.origin.x;
  y = rect.origin.y;
  v151 = *MEMORY[0x277D85DE8];
  if (!generator)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUVoronoiTriangleData p_setupDataWithPointCount:clippedToRect:percentOfCellsToSplit:randomGenerator:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUVoronoiTriangleData.mm"), 507, @"invalid nil value for '%s'", "randGen"}];
  }

  v13 = 0;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v140[0] = 0;
  v140[1] = 0;
  v139 = v140;
  v14 = height;
  if (width <= height)
  {
    v15 = height;
  }

  else
  {
    v15 = width;
  }

  v109 = v15;
  v16 = -1.0;
  v17 = 0.25;
  v18 = 1.0;
  do
  {
    v19 = fabs(v16);
    v20 = width;
    v21 = v109;
    if (v19 <= 0.5)
    {
      v21 = width;
    }

    v107 = v21;
    v22 = -1.0;
    do
    {
      v23 = fabs(v22);
      if (v19 > 0.5 || v23 > 0.5)
      {
        v25 = v14;
        if (v23 <= 0.5)
        {
          v26 = v14;
        }

        else
        {
          v26 = v109;
        }

        v27 = x;
        v28 = y;
        v29 = v20;
        MidX = CGRectGetMidX(*(&v25 - 3));
        v152.origin.x = x;
        v152.origin.y = y;
        v152.size.width = v20;
        v152.size.height = v14;
        MidY = CGRectGetMidY(v152);
        *&v146 = round(MidX + v16 * v107);
        *(&v146 + 1) = round(MidY + v22 * v26);
        std::__tree<boost::polygon::point_data<double>>::__emplace_unique_key_args<boost::polygon::point_data<double>,boost::polygon::point_data<double> const&>(&v139, &v146);
        v32 = v142;
        if (v142 >= v143)
        {
          v13 = std::vector<boost::polygon::point_data<double>>::__emplace_back_slow_path<boost::polygon::point_data<double> const&>(&v141, &v146);
        }

        else
        {
          *&v142->f64[0] = v146;
          v32->f64[1] = *(&v146 + 1);
          v13 = v32 + 1;
        }

        v142 = v13;
        v17 = 0.25;
        v18 = 1.0;
      }

      v22 = v22 + v17;
    }

    while (v22 <= v18);
    v16 = v16 + v17;
    width = v20;
  }

  while (v16 <= v18);
  if (count)
  {
    do
    {
      v153.origin.x = x;
      v153.origin.y = y;
      v153.size.width = v20;
      v153.size.height = v14;
      MinX = CGRectGetMinX(v153);
      v154.origin.x = x;
      v154.origin.y = y;
      v154.size.width = v20;
      v154.size.height = v14;
      [generator doubleBetween:MinX :CGRectGetMaxX(v154)];
      v35 = v34;
      v155.origin.x = x;
      v155.origin.y = y;
      v155.size.width = v20;
      v155.size.height = v14;
      MinY = CGRectGetMinY(v155);
      v156.origin.x = x;
      v156.origin.y = y;
      v156.size.width = v20;
      v156.size.height = v14;
      [generator doubleBetween:MinY :CGRectGetMaxY(v156)];
      *&v146 = round(v35);
      *(&v146 + 1) = round(v37);
      if (v140 == std::__tree<boost::polygon::point_data<double>>::find<boost::polygon::point_data<double>>(&v139, &v146))
      {
        std::__tree<boost::polygon::point_data<double>>::__emplace_unique_key_args<boost::polygon::point_data<double>,boost::polygon::point_data<double> const&>(&v139, &v146);
        v38 = v142;
        if (v142 >= v143)
        {
          v39 = std::vector<boost::polygon::point_data<double>>::__emplace_back_slow_path<boost::polygon::point_data<double> const&>(&v141, &v146);
        }

        else
        {
          *&v142->f64[0] = v146;
          v38->f64[1] = *(&v146 + 1);
          v39 = &v38[1];
        }

        v142 = v39;
      }

      --count;
    }

    while (count);
    v13 = v142;
  }

  v150 = 0;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  boost::polygon::construct_voronoi<std::__wrap_iter<boost::polygon::point_data<double> *>,std::__wrap_iter<boost::polygon::segment_data<double> *>,boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(v141, v13, 0, 0, &v146);
  v40 = *MEMORY[0x277CBF398];
  v41 = *(MEMORY[0x277CBF398] + 8);
  v42 = *(MEMORY[0x277CBF398] + 16);
  v43 = *(MEMORY[0x277CBF398] + 24);
  v44 = objc_alloc(MEMORY[0x277CBEB18]);
  v105 = [v44 initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((*(&v146 + 1) - v146) >> 3)];
  __p = 0;
  v137 = 0;
  v138 = 0;
  v45 = *(&v146 + 1);
  v46 = v146;
  if (v146 == *(&v146 + 1))
  {
    v133 = 0;
    v134 = 0;
    v135 = 0;
LABEL_106:
    v77 = 0;
    v128 = 0;
    v129 = 0;
    v130 = 0;
    goto LABEL_108;
  }

  v47 = 0;
  do
  {
    v48 = *(v46 + 1);
    while (v48[1] && *(v48[2] + 8))
    {
      v48 = v48[3];
      if (v48 == *(v46 + 1))
      {
        if (v47 >= v138)
        {
          v50 = 0xAAAAAAAAAAAAAAABLL * ((v47 - __p) >> 3);
          v51 = v50 + 1;
          if (v50 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v138 - __p) >> 3) > v51)
          {
            v51 = 0x5555555555555556 * ((v138 - __p) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v138 - __p) >> 3) >= 0x555555555555555)
          {
            v52 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v52 = v51;
          }

          if (v52)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_cell<double>>>(&__p, v52);
          }

          v53 = 8 * ((v47 - __p) >> 3);
          v54 = *v46;
          *(v53 + 16) = *(v46 + 2);
          *v53 = v54;
          v47 = (24 * v50 + 24);
          memcpy((24 * v50 - (v137 - __p)), __p, v137 - __p);
          v55 = __p;
          __p = (24 * v50 - (v137 - __p));
          v137 = v47;
          v138 = 0;
          if (v55)
          {
            operator delete(v55);
          }
        }

        else
        {
          v49 = *v46;
          *(v47 + 2) = *(v46 + 2);
          *v47 = v49;
          v47 += 24;
        }

        v137 = v47;
        v45 = *(&v146 + 1);
        break;
      }
    }

    v46 = (v46 + 24);
  }

  while (v46 != v45);
  v56 = __p;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  if (__p == v47)
  {
    goto LABEL_106;
  }

  do
  {
    v123[1] = 0;
    v124.f64[0] = 0.0;
    v123[0] = 0;
    v57 = v56[1];
    v58 = v57;
    do
    {
      if (TSDLineIntersectsRect(**(v58 + 8), *(*(v58 + 8) + 8), **(*(v58 + 16) + 8), *(*(*(v58 + 16) + 8) + 8), x, y, v20, v14))
      {
        segment_from_edge_clipped_to_rect(v58, v131, x, y, v20, v14);
        std::vector<boost::polygon::segment_data<double>>::push_back[abi:ne200100](v123, v131);
        v57 = v56[1];
      }

      v58 = *(v58 + 24);
    }

    while (v58 != v57);
    std::vector<std::vector<boost::polygon::segment_data<double>>>::push_back[abi:ne200100](&v133, v123);
    if (v123[0])
    {
      v123[1] = v123[0];
      operator delete(v123[0]);
    }

    v56 += 3;
  }

  while (v56 != v137);
  v59 = v133;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  if (v133 == v134)
  {
    goto LABEL_107;
  }

  do
  {
    v125 = 0;
    v126 = 0;
    v127 = 0;
    std::vector<boost::polygon::segment_data<double>>::__init_with_size[abi:ne200100]<boost::polygon::segment_data<double>*,boost::polygon::segment_data<double>*>(&v125, *v59, v59[1], (v59[1] - *v59) >> 5);
    v60 = v125;
    if (v126 != v125)
    {
      v61 = 0;
      v62 = (v126 - v125) >> 5;
      v63 = 1;
      do
      {
        v64 = v61;
        v65 = v60[v63];
        if (++v61 == v62)
        {
          v66 = 0;
        }

        else
        {
          v66 = v64 + 1;
        }

        v67 = v60[2 * v66];
        v68 = vmovn_s64(vmvnq_s8(vceqq_f64(v65, v67)));
        if ((v68.i32[0] | v68.i32[1]))
        {
          v108 = v60[2 * v66];
          v110 = v60[v63];
          v69 = vsubq_f64(v65, v67);
          if (fabs(v69.f64[0]) >= 0.00999999978 && fabs(v69.f64[1]) >= 0.00999999978)
          {
            v157.origin.x = x;
            v157.origin.y = y;
            v157.size.width = v20;
            v157.size.height = v14;
            v70 = CGRectGetMinX(v157);
            v71.f64[0] = v110.f64[0];
            v71.f64[1] = v108.f64[1];
            v106 = v71;
            if (vabdd_f64(v110.f64[0], v70) >= 0.00999999978)
            {
              v158.origin.x = x;
              v158.origin.y = y;
              v158.size.width = v20;
              v158.size.height = v14;
              if (vabdd_f64(v110.f64[0], CGRectGetMaxX(v158)) >= 0.00999999978)
              {
                v159.origin.x = x;
                v159.origin.y = y;
                v159.size.width = v20;
                v159.size.height = v14;
                v72 = CGRectGetMinX(v159);
                v73.f64[0] = v108.f64[0];
                v73.f64[1] = v110.f64[1];
                v106 = v73;
                if (vabdd_f64(v108.f64[0], v72) >= 0.00999999978)
                {
                  v160.origin.x = x;
                  v160.origin.y = y;
                  v160.size.width = v20;
                  v160.size.height = v14;
                  if (vabdd_f64(v108.f64[0], CGRectGetMaxX(v160)) >= 0.00999999978)
                  {
                    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
                    v75 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUVoronoiTriangleData p_setupDataWithPointCount:clippedToRect:percentOfCellsToSplit:randomGenerator:]"];
                    [currentHandler2 handleFailureInFunction:v75 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUVoronoiTriangleData.mm"), 710, @"Couldn't find corner!"}];
                  }
                }
              }
            }

            *v131 = v110;
            v132 = v106;
            *v123 = v106;
            v124 = v108;
            std::vector<boost::polygon::segment_data<double>>::insert(&v125, v125 + 32 * v66, v131);
            std::vector<boost::polygon::segment_data<double>>::insert(&v125, v125 + 32 * v66 + 32, v123);
          }

          else
          {
            *v131 = v60[v63];
            v132 = v108;
            std::vector<boost::polygon::segment_data<double>>::insert(&v125, &v60[2 * v66], v131);
          }
        }

        v60 = v125;
        v62 = (v126 - v125) >> 5;
        v63 += 2;
      }

      while (v61 < v62);
    }

    std::vector<std::vector<boost::polygon::segment_data<double>>>::push_back[abi:ne200100](&v128, &v125);
    if (v125)
    {
      v126 = v125;
      operator delete(v125);
    }

    v59 += 3;
  }

  while (v59 != v134);
  v76 = v128;
  if (v128 == v129)
  {
LABEL_107:
    v77 = 0;
  }

  else
  {
    v77 = 0;
    do
    {
      v131[0] = 0;
      v131[1] = 0;
      v132.f64[0] = 0.0;
      std::vector<boost::polygon::segment_data<double>>::__init_with_size[abi:ne200100]<boost::polygon::segment_data<double>*,boost::polygon::segment_data<double>*>(v131, *v76, v76[1], (v76[1] - *v76) >> 5);
      v78 = (v131[1] - v131[0]) >> 5;
      if (v78 >= 3)
      {
        v120 = 0;
        v121 = 0;
        v122 = 0;
        std::vector<boost::polygon::segment_data<double>>::__init_with_size[abi:ne200100]<boost::polygon::segment_data<double>*,boost::polygon::segment_data<double>*>(&v120, v131[0], v131[1], v78);
        v79 = 0.0;
        if (v120 != v121)
        {
          v80 = v120;
          do
          {
            v79 = v79 + (v80[2] - *v80) * ((v80[1] + v80[3]) * 0.5);
            v80 += 4;
          }

          while (v80 != v121);
        }

        if (v120)
        {
          v121 = v120;
          operator delete(v120);
        }

        if (fabs(v79) > 1.0)
        {
          v81 = [TSDGPUVoronoiTriangleDataCell alloc];
          v117 = 0;
          v118 = 0;
          v119 = 0;
          std::vector<boost::polygon::segment_data<double>>::__init_with_size[abi:ne200100]<boost::polygon::segment_data<double>*,boost::polygon::segment_data<double>*>(&v117, v131[0], v131[1], (v131[1] - v131[0]) >> 5);
          v82 = [(TSDGPUVoronoiTriangleDataCell *)v81 initWithEdges:&v117];
          if (v117)
          {
            v118 = v117;
            operator delete(v117);
          }

          splitCopy = split;
          if (split <= 0.0 || ([generator randomDouble], splitCopy >= split))
          {
            v145 = v82;
            cellsBySplittingCellIntoTriangles = [MEMORY[0x277CBEA60] arrayWithObjects:&v145 count:{1, splitCopy}];
          }

          else
          {
            cellsBySplittingCellIntoTriangles = [(TSDGPUVoronoiTriangleDataCell *)v82 cellsBySplittingCellIntoTriangles];
          }

          v85 = cellsBySplittingCellIntoTriangles;

          [(NSArray *)v105 addObjectsFromArray:v85];
          v115 = 0u;
          v116 = 0u;
          v113 = 0u;
          v114 = 0u;
          v86 = [v85 countByEnumeratingWithState:&v113 objects:v144 count:16];
          if (v86)
          {
            v87 = *v114;
            do
            {
              for (i = 0; i != v86; ++i)
              {
                if (*v114 != v87)
                {
                  objc_enumerationMutation(v85);
                }

                v89 = *(*(&v113 + 1) + 8 * i);
                triangleCount = [v89 triangleCount];
                [v89 bounds];
                v163.origin.x = v91;
                v163.origin.y = v92;
                v163.size.width = v93;
                v163.size.height = v94;
                v161.origin.x = v40;
                v161.origin.y = v41;
                v161.size.width = v42;
                v161.size.height = v43;
                v162 = CGRectUnion(v161, v163);
                v40 = v162.origin.x;
                v41 = v162.origin.y;
                v42 = v162.size.width;
                v43 = v162.size.height;
                v77 += triangleCount;
              }

              v86 = [v85 countByEnumeratingWithState:&v113 objects:v144 count:16];
            }

            while (v86);
          }
        }
      }

      if (v131[0])
      {
        v131[1] = v131[0];
        operator delete(v131[0]);
      }

      v76 += 3;
    }

    while (v76 != v129);
  }

LABEL_108:
  self->_triangleCount = v77;
  self->_bounds.origin.x = v40;
  self->_bounds.origin.y = v41;
  self->_bounds.size.width = v42;
  self->_bounds.size.height = v43;

  self->_cells = v105;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  free(self->_triangleIndexToCellIndexMappingTable);
  free(self->_triangleIndexToCellTriangleIndexMappingTable);
  self->_triangleIndexToCellMappingTableCount = v77;
  if (v77)
  {
    self->_triangleIndexToCellIndexMappingTable = malloc_type_calloc(8uLL, v77, 0x100004000313F17uLL);
    v96 = 0;
    v97 = 0;
    self->_triangleIndexToCellTriangleIndexMappingTable = malloc_type_calloc(8uLL, self->_triangleIndexToCellMappingTableCount, 0x100004000313F17uLL);
    while (v97 < [(NSArray *)self->_cells count])
    {
      v98 = [(NSArray *)self->_cells objectAtIndex:v97];
      v99 = [dictionary objectForKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", objc_msgSend(v98, "triangleCount"))}];
      if (v99)
      {
        v100 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v99, "integerValue") + 1}];
      }

      else
      {
        v100 = &unk_287DDD518;
      }

      [dictionary setObject:v100 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", objc_msgSend(v98, "triangleCount"))}];
      for (j = 0; j < [v98 triangleCount]; ++j)
      {
        self->_triangleIndexToCellIndexMappingTable[v96] = v97;
        self->_triangleIndexToCellTriangleIndexMappingTable[v96++] = j;
      }

      ++v97;
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v103 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUVoronoiTriangleData p_setupDataWithPointCount:clippedToRect:percentOfCellsToSplit:randomGenerator:]"];
    [currentHandler3 handleFailureInFunction:v103 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUVoronoiTriangleData.mm"), 807, @"No triangles created!"}];
  }

  v131[0] = &v128;
  std::vector<std::vector<boost::polygon::segment_data<double>>>::__destroy_vector::operator()[abi:ne200100](v131);
  v131[0] = &v133;
  std::vector<std::vector<boost::polygon::segment_data<double>>>::__destroy_vector::operator()[abi:ne200100](v131);
  if (__p)
  {
    v137 = __p;
    operator delete(__p);
  }

  if (v149)
  {
    *(&v149 + 1) = v149;
    operator delete(v149);
  }

  if (*(&v147 + 1))
  {
    *&v148 = *(&v147 + 1);
    operator delete(*(&v147 + 1));
  }

  if (v146)
  {
    *(&v146 + 1) = v146;
    operator delete(v146);
  }

  std::__tree<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::__map_value_compare<std::pair<unsigned short,EQKit::Config::Operator::Form>,std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>,std::less<std::pair<unsigned short,EQKit::Config::Operator::Form>>,true>,std::allocator<std::__value_type<std::pair<unsigned short,EQKit::Config::Operator::Form>,EQKit::Config::Operator::Dictionary::Entry>>>::destroy(&v139, v140[0]);
  if (v141)
  {
    v142 = v141;
    operator delete(v141);
  }
}

- (TSDGPUVoronoiTriangleData)initWithPoints:(unint64_t)points clippedToRect:(CGRect)rect percentOfCellsToSplit:(double)split randomGenerator:(id)generator
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v17.receiver = self;
  v17.super_class = TSDGPUVoronoiTriangleData;
  v13 = [(TSDGPUVoronoiTriangleData *)&v17 init];
  if (v13)
  {
    if (!generator)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUVoronoiTriangleData initWithPoints:clippedToRect:percentOfCellsToSplit:randomGenerator:]"];
      [currentHandler handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUVoronoiTriangleData.mm"), 855, @"invalid nil value for '%s'", "randomGenerator"}];
    }

    [(TSDGPUVoronoiTriangleData *)v13 p_setupDataWithPointCount:points clippedToRect:generator percentOfCellsToSplit:x randomGenerator:y, width, height, split];
  }

  return v13;
}

- (void)dealloc
{
  triangleIndexToCellIndexMappingTable = self->_triangleIndexToCellIndexMappingTable;
  if (triangleIndexToCellIndexMappingTable)
  {
    free(triangleIndexToCellIndexMappingTable);
    self->_triangleIndexToCellIndexMappingTable = 0;
  }

  triangleIndexToCellTriangleIndexMappingTable = self->_triangleIndexToCellTriangleIndexMappingTable;
  if (triangleIndexToCellTriangleIndexMappingTable)
  {
    free(triangleIndexToCellTriangleIndexMappingTable);
    self->_triangleIndexToCellTriangleIndexMappingTable = 0;
  }

  v5.receiver = self;
  v5.super_class = TSDGPUVoronoiTriangleData;
  [(TSDGPUVoronoiTriangleData *)&v5 dealloc];
}

- (id)cellFromTriangleIndex:(unint64_t)index
{
  cells = self->_cells;
  v4 = [(TSDGPUVoronoiTriangleData *)self cellIndexFromTriangleIndex:index];

  return [(NSArray *)cells objectAtIndexedSubscript:v4];
}

- (unint64_t)cellIndexFromTriangleIndex:(unint64_t)index
{
  if (self->_triangleIndexToCellMappingTableCount <= index)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUVoronoiTriangleData cellIndexFromTriangleIndex:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUVoronoiTriangleData.mm"), 883, @"%d is out of bounds(%d)!", index, self->_triangleIndexToCellMappingTableCount}];
  }

  return self->_triangleIndexToCellIndexMappingTable[index];
}

- (unint64_t)triangleIndexInCellFromGlobalTriangleIndex:(unint64_t)index
{
  if (self->_triangleIndexToCellMappingTableCount <= index)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUVoronoiTriangleData triangleIndexInCellFromGlobalTriangleIndex:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUVoronoiTriangleData.mm"), 891, @"%d is out of bounds(%d)!", index, self->_triangleIndexToCellMappingTableCount}];
  }

  return self->_triangleIndexToCellTriangleIndexMappingTable[index];
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end