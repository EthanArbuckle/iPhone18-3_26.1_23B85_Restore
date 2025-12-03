@interface VKLabelNavTileData
- (VKLabelNavTileData)initWithTile:(const void *)tile;
- (__n128)_findTileEdgeJunctions;
- (__n128)findOppositeCarriagewayJunctionsWithRouteFeatures:distanceThreshold:;
- (id).cxx_construct;
- (id)findTileEdgeJunctionAtCoordinate:()Matrix<float;
- (id)junctionAtCoordinate:()Matrix<float;
- (void)_findTileEdgeJunctions;
- (void)addJunction:(id)junction;
- (void)appendNavJunctionsInWorldRect:(const void *)rect junctions:(id)junctions;
- (void)findOppositeCarriagewayJunctionsWithRouteFeatures:(void *)features distanceThreshold:(double)threshold;
- (void)findOppositeCarriagewayJunctionsWithRouteFeatures:distanceThreshold:;
- (void)initializeJunctionInfos;
@end

@implementation VKLabelNavTileData

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 7) = 0;
  return self;
}

- (void)findOppositeCarriagewayJunctionsWithRouteFeatures:(void *)features distanceThreshold:(double)threshold
{
  v76 = *MEMORY[0x1E69E9840];
  if (!self->_oppositeCarriagewayJunctionsValid)
  {
    selfCopy = self;
    self->_oppositeCarriagewayJunctionsValid = 1;
    if (self->_junctionInfos.__begin_ == self->_junctionInfos.__end_)
    {
      [(VKLabelNavTileData *)self initializeJunctionInfos];
    }

    [(NSMutableArray *)selfCopy->_oppositeCarriagewayJunctions removeAllObjects];
    begin = selfCopy->_junctionInfos.__begin_;
    end = selfCopy->_junctionInfos.__end_;
    if (begin != end)
    {
      featuresCopy = features;
      do
      {
        v9 = [(NSMapTable *)selfCopy->_geoJunctionToJunctionMap objectForKey:*begin];
        v10 = v9;
        if (v9)
        {
          if ([(VKLabelNavJunction *)v9 isOnRoute])
          {
            goto LABEL_71;
          }

          if ([(VKLabelNavJunction *)v10 isOnDualCarriageway])
          {
            [(NSMutableArray *)selfCopy->_oppositeCarriagewayJunctions addObject:v10];
            goto LABEL_71;
          }
        }

        v73 = 0;
        v74 = 0;
        v75 = 0;
        v71 = 8;
        v11 = *(selfCopy->_tile.__ptr_ + 3);
        v12 = v11[1];
        v69 = *v11;
        v70 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = *begin;
        v72[0] = &unk_1F2A384B8;
        v72[1] = &v71;
        v72[2] = &v73;
        v72[3] = v72;
        geo::codec::forEachEdgeOnJunction(&v69, v13, v72);
        std::__function::__value_func<void ()(GeoCodecsRoadEdge *)>::~__value_func[abi:nn200100](v72);
        v14 = 126 - 2 * __clz((v74 - v73) >> 5);
        if (v74 == v73)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> *,false>(v73, v74, v15, 1);
        v16 = v73;
        v17 = v74;
        if (v73 == v74)
        {
          v23 = v73;
LABEL_26:
          if (v23 != v17)
          {
            while (v17 != v23)
            {
              v17 -= 32;
              std::__destroy_at[abi:nn200100]<md::LabelShieldEntry,0>(v17);
            }

            v74 = v23;
            v16 = v73;
            goto LABEL_32;
          }
        }

        else
        {
          v18 = v73;
          while (1)
          {
            v19 = v18 + 32;
            if (v18 + 32 == v17)
            {
              break;
            }

            v20 = std::equal_to<std::string>::operator()[abi:nn200100](v18, v18 + 4);
            v18 = v19;
            if (v20)
            {
              v21 = v19 - 32;
              v22 = (v21 + 64);
              if (v21 + 64 != v17)
              {
                do
                {
                  if (!std::equal_to<std::string>::operator()[abi:nn200100](v21, v22))
                  {
                    v21 += 32;
                    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](v21, v22);
                  }

                  v22 += 2;
                }

                while (v22 != v17);
                v16 = v73;
                v17 = v74;
              }

              v23 = (v21 + 32);
              goto LABEL_26;
            }
          }
        }

        v23 = v17;
LABEL_32:
        if (v16 != v23)
        {
          v68 = *(begin + 8);
          v24 = v71;
          while (1)
          {
            v25 = std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::find<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(features, v16);
            if (v25)
            {
              break;
            }

LABEL_52:
            v16 += 32;
            if (v16 == v23)
            {
              goto LABEL_68;
            }
          }

          v26 = v25[6];
          v28 = *(v26 + 64);
          v27 = *(v26 + 72);
          while (2)
          {
            if (v28 == v27)
            {
              goto LABEL_52;
            }

            if (v24 <= *(v28 + 48))
            {
              v29 = *v28;
              v30 = (*(v28 + 8) - *v28) >> 4;
              if (v30 < 2)
              {
                v32 = 0;
                v36 = 0.0;
                v37 = 1.79769313e308;
              }

              else
              {
                v31 = 0;
                v32 = 0;
                v34 = *v29;
                f64 = v29[1].f64;
                v35 = v34;
                v36 = 0.0;
                v37 = 1.79769313e308;
                do
                {
                  v38 = f64[v31];
                  v39 = vsubq_f64(v38, v35);
                  v40 = vmulq_f64(v39, v39);
                  v41 = 0.0;
                  if (vaddvq_f64(v40) > 1.0e-15)
                  {
                    v42 = vaddq_f64(vdupq_laneq_s64(v40, 1), v40);
                    v43 = vmulq_f64(vsubq_f64(v68, v35), v39);
                    v41 = fmin(fmax(vdivq_f64(vaddq_f64(vdupq_laneq_s64(v43, 1), v43), v42).f64[0], 0.0), 1.0);
                  }

                  v44 = vsubq_f64(v68, vmlaq_n_f64(v35, v39, v41));
                  v45 = vaddvq_f64(vmulq_f64(v44, v44));
                  if (v45 < v37)
                  {
                    v32 = v31;
                    v36 = v41;
                  }

                  v37 = fmin(v45, v37);
                  ++v31;
                  v35 = v38;
                }

                while (v30 - 1 != v31);
                if (v32)
                {
                  goto LABEL_49;
                }
              }

              if (v36 > 0.1)
              {
LABEL_49:
                if ((v32 < v30 - 1 || v36 < 0.99) && v37 <= threshold)
                {
                  if (!v10)
                  {
                    v10 = [[VKLabelNavJunction alloc] initWithGEOJunction:*begin routeOffset:0xBF80000000000000 tile:&selfCopy->_tile];
                    [(VKLabelNavTileData *)selfCopy addJunction:v10];
                  }

                  [(VKLabelNavJunction *)v10 setDepthFromRoute:1];
                  [(VKLabelNavJunction *)v10 setIsOnDualCarriageway:1];
                  v46 = selfCopy;
                  v47 = end;
                  v48 = (v28 + 32);
                  routeOffset = [*(v28 + 32) routeOffset];
                  v50 = (v28 + 40);
                  routeOffset2 = [*(v28 + 40) routeOffset];
                  LODWORD(v53) = HIDWORD(routeOffset);
                  if (*(&routeOffset + 1) < 0.0 || (LODWORD(v52) = HIDWORD(routeOffset2), *(&routeOffset2 + 1) < 0.0))
                  {
                    if (*(&routeOffset + 1) >= 0.0)
                    {
                      v66 = (v28 + 32);
                    }

                    else
                    {
                      v66 = (v28 + 40);
                    }

                    end = v47;
                    selfCopy = v46;
                    features = featuresCopy;
                    -[VKLabelNavJunction setRouteOffset:](v10, "setRouteOffset:", [*v66 routeOffset]);
                  }

                  else
                  {
                    routeOffset3 = [*v48 routeOffset];
                    LODWORD(v55) = [*v48 routeOffset] >> 32;
                    routeOffset4 = [*v50 routeOffset];
                    routeOffset5 = [*v50 routeOffset];
                    v58 = **v28;
                    v59 = vsubq_f64(*(*(v28 + 8) - 16), v58);
                    v60 = vmulq_f64(v59, v59);
                    v61 = 0.0;
                    end = v47;
                    if (vaddvq_f64(v60) > 1.0e-15)
                    {
                      v62 = vmulq_f64(vsubq_f64(v68, v58), v59);
                      v61 = fmin(fmax(vdivq_f64(vaddq_f64(vdupq_laneq_s64(v62, 1), v62), vaddq_f64(vdupq_laneq_s64(v60, 1), v60)).f64[0], 0.0), 1.0);
                    }

                    v63 = v55 + routeOffset3 + v61 * (routeOffset4 - (v55 + routeOffset3) + *(&routeOffset5 + 1));
                    v64 = v63;
                    v65 = v63 - trunc(v63);
                    selfCopy = v46;
                    if (v65 >= 1.0)
                    {
                      v64 += vcvtms_u32_f32(v65);
                      v65 = v65 - floorf(v65);
                    }

                    features = featuresCopy;
                    [(VKLabelNavJunction *)v10 setRouteOffset:v64 | (LODWORD(v65) << 32)];
                  }

                  [(NSMutableArray *)selfCopy->_oppositeCarriagewayJunctions addObject:v10];
                  break;
                }
              }
            }

            v28 += 56;
            continue;
          }
        }

LABEL_68:
        if (v70)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v70);
        }

        v69 = &v73;
        std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v69);
LABEL_71:

        begin = (begin + 32);
      }

      while (begin != end);
    }
  }
}

- (void)findOppositeCarriagewayJunctionsWithRouteFeatures:distanceThreshold:
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = **a2;
  if (v2)
  {
    v4 = *(v2 + 24);
    v5 = *(v4 + 33);
    if (!*(v4 + 33))
    {
      goto LABEL_8;
    }

    v6 = 0;
    v7 = *v4;
    v8 = v7;
    while (1)
    {
      v9 = *v8;
      v8 += 2;
      if (v9 == 21)
      {
        break;
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }

    if (v7[2 * v6 + 1] <= 0)
    {
LABEL_8:
      v10 = *(self + 8);
      v11 = *v10;
      if (v11 >= *(v2 + 151))
      {
        LOBYTE(v11) = *(v2 + 151);
      }

      *v10 = v11;
      v12 = *(v2 + 16);
      if (v12)
      {
        if (*v12)
        {
          v13 = *(self + 16);
          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v26, v12);
          v14 = std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::push_back[abi:nn200100](v13, &v26);
          if (v27 < 0)
          {
            v15 = v26;
            v16 = mdm::zone_mallocator::instance(v14);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, v15);
          }
        }
      }

      if (*(v2 + 72))
      {
        v25 = 0;
        v17 = VKLabelCopyShield(v2, 0, &v25);
        if (v17)
        {
          v18 = objc_alloc(MEMORY[0x1E696AEC0]);
          v19 = [v18 initWithFormat:@"%@_%llX", v17, v25];
          v20 = *(self + 16);
          v21 = v19;
          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v26, [v19 UTF8String]);
          v22 = std::vector<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::push_back[abi:nn200100](v20, &v26);
          if (v27 < 0)
          {
            v23 = v26;
            v24 = mdm::zone_mallocator::instance(v22);
            geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v24, v23);
          }
        }
      }
    }
  }
}

- (__n128)findOppositeCarriagewayJunctionsWithRouteFeatures:distanceThreshold:
{
  *a2 = &unk_1F2A384B8;
  result = *(self + 8);
  *(a2 + 8) = result;
  return result;
}

- (void)appendNavJunctionsInWorldRect:(const void *)rect junctions:(id)junctions
{
  junctionsCopy = junctions;
  begin = self->_junctionInfos.__begin_;
  end = self->_junctionInfos.__end_;
  if (begin == end)
  {
    [(VKLabelNavTileData *)self initializeJunctionInfos];
    begin = self->_junctionInfos.__begin_;
    end = self->_junctionInfos.__end_;
  }

  for (; begin != end; begin = (begin + 32))
  {
    v8 = 0;
    v9 = *(begin + 1);
    v10 = 1;
    while (v9 >= *(rect + v8) && v9 < *(rect + v8 + 2))
    {
      v11 = v10;
      v10 = 0;
      v9 = *(begin + 2);
      v8 = 1;
      if ((v11 & 1) == 0)
      {
        v12 = [(NSMapTable *)self->_geoJunctionToJunctionMap objectForKey:*begin, *(begin + 2), v9];
        if (!v12)
        {
          v12 = [[VKLabelNavJunction alloc] initWithGEOJunction:*begin routeOffset:0xBF80000000000000 tile:&self->_tile];
          [(VKLabelNavTileData *)self addJunction:v12];
        }

        [junctionsCopy addObject:v12];

        end = self->_junctionInfos.__end_;
        break;
      }
    }
  }
}

- (void)initializeJunctionInfos
{
  begin = self->_junctionInfos.__begin_;
  if (begin == self->_junctionInfos.__end_)
  {
    v4 = *(self->_tile.__ptr_ + 3);
    v6 = *v4;
    v5 = v4[1];
    v42 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      begin = self->_junctionInfos.__begin_;
    }

    v7 = v6[88];
    if (v7 > (self->_junctionInfos.__cap_ - begin) >> 5)
    {
      if (v7 >> 59)
      {
LABEL_36:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      end = self->_junctionInfos.__end_;
      v49 = self + 1;
      v9 = mdm::zone_mallocator::instance(self);
      v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<LabelNavJunctionInfo>(v9, v7);
      v11 = &v10[end - begin];
      v12 = self->_junctionInfos.__begin_;
      v13 = self->_junctionInfos.__end_;
      v14 = (v11 + v12 - v13);
      if (v13 != v12)
      {
        v15 = (v11 + v12 - v13);
        do
        {
          v16 = *v12;
          v17 = *(v12 + 1);
          v12 = (v12 + 32);
          *v15 = v16;
          v15[1] = v17;
          v15 += 2;
        }

        while (v12 != v13);
        v12 = self->_junctionInfos.__begin_;
      }

      self->_junctionInfos.__begin_ = v14;
      self->_junctionInfos.__end_ = v11;
      cap = self->_junctionInfos.__cap_;
      self->_junctionInfos.__cap_ = &v10[32 * v7];
      v47 = v12;
      v48 = cap;
      v45 = v12;
      v46 = v12;
      std::__split_buffer<LabelNavJunctionInfo,geo::allocator_adapter<LabelNavJunctionInfo,mdm::zone_mallocator> &>::~__split_buffer(&v45);
    }

    v19 = v6[87];
    if (v19)
    {
      for (i = 0; i < v6[88]; ++i)
      {
        if (*v19)
        {
          v21 = (v6[90] + 16 * v19[1]);
          v22 = geo::codec::multiSectionFeaturePoints((v6[4] + 168 * v21[1]), v21[2], &v44);
          v23 = vmlaq_f64(*(self->_tile.__ptr_ + 20), vcvtq_f64_f32(*(&v22->__vftable + v21[3])), vsubq_f64(*(self->_tile.__ptr_ + 21), *(self->_tile.__ptr_ + 20)));
          v24 = self->_junctionInfos.__end_;
          v25 = self->_junctionInfos.__cap_;
          if (v24 >= v25)
          {
            v27 = self->_junctionInfos.__begin_;
            v28 = (v24 - v27) >> 5;
            v29 = v28 + 1;
            if ((v28 + 1) >> 59)
            {
              goto LABEL_36;
            }

            v30 = v25 - v27;
            if (v30 >> 4 > v29)
            {
              v29 = v30 >> 4;
            }

            if (v30 >= 0x7FFFFFFFFFFFFFE0)
            {
              v31 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v29;
            }

            v49 = self + 1;
            if (v31)
            {
              v43 = v23;
              v32 = mdm::zone_mallocator::instance(v22);
              v33 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<LabelNavJunctionInfo>(v32, v31);
              v23 = v43;
            }

            else
            {
              v33 = 0;
            }

            v34 = &v33[32 * v28];
            *v34 = v19;
            *(v34 + 8) = v23;
            *(v34 + 3) = 0;
            v35 = self->_junctionInfos.__begin_;
            v36 = self->_junctionInfos.__end_;
            v37 = &v34[v35 - v36];
            if (v36 != v35)
            {
              v38 = &v34[v35 - v36];
              do
              {
                v39 = *v35;
                v40 = *(v35 + 1);
                v35 = (v35 + 32);
                *v38 = v39;
                *(v38 + 1) = v40;
                v38 += 32;
              }

              while (v35 != v36);
              v35 = self->_junctionInfos.__begin_;
            }

            v26 = (v34 + 32);
            self->_junctionInfos.__begin_ = v37;
            self->_junctionInfos.__end_ = (v34 + 32);
            v41 = self->_junctionInfos.__cap_;
            self->_junctionInfos.__cap_ = &v33[32 * v31];
            v47 = v35;
            v48 = v41;
            v45 = v35;
            v46 = v35;
            std::__split_buffer<LabelNavJunctionInfo,geo::allocator_adapter<LabelNavJunctionInfo,mdm::zone_mallocator> &>::~__split_buffer(&v45);
          }

          else
          {
            *v24 = v19;
            *(v24 + 8) = v23;
            v26 = (v24 + 32);
            *(v24 + 3) = 0;
          }

          self->_junctionInfos.__end_ = v26;
        }

        v19 += 8;
      }
    }

    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v42);
    }
  }
}

- (id)findTileEdgeJunctionAtCoordinate:()Matrix<float
{
  v3 = a3._e[1];
  v4 = a3._e[0];
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_foundTileEdgeJunctions)
  {
    [(VKLabelNavTileData *)self _findTileEdgeJunctions];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_tileEdgeJunctions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        [v10 tileCoordinate];
        v13 = 1;
        v14 = v4;
        do
        {
          v15 = vabds_f32(v11, v14);
          if ((v13 & 1) == 0)
          {
            break;
          }

          v13 = 0;
          v11 = v12;
          v14 = v3;
        }

        while (v15 < 0.0005);
        if (v15 < 0.0005)
        {
          v7 = v10;
          goto LABEL_16;
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v7;
}

- (void)_findTileEdgeJunctions
{
  v3 = *a2;
  v4 = *(*a2 + 8);
  if (!v4 || v4 == **(self + 8) - 1)
  {
    v5.i64[0] = *(**(self + 16) + 8 * v4);
    v5.i64[1] = v5.i64[0];
    v6.i32[0] = vmovn_s32(vcgtq_f32(v5, xmmword_1B33B2170)).u32[0];
    v6.i32[1] = vmovn_s32(vcgtq_f32(xmmword_1B33B2170, v5)).i32[1];
    if ((vmaxv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & 1) != 0 && !*(v3 + 40))
    {
      v7 = [[VKLabelNavJunction alloc] initWithRoadEdge:v3 atA:1 routeOffset:0xBF80000000000000 tile:**(self + 24) + 8];
      [**(self + 24) addJunction:?];
    }
  }
}

- (__n128)_findTileEdgeJunctions
{
  *a2 = &unk_1F2A38428;
  result = *(self + 8);
  *(a2 + 8) = result;
  return result;
}

- (void)addJunction:(id)junction
{
  junctionCopy = junction;
  if ([junctionCopy geoJunction])
  {
    -[NSMapTable setObject:forKey:](self->_geoJunctionToJunctionMap, "setObject:forKey:", junctionCopy, [junctionCopy geoJunction]);
  }

  else
  {
    [(NSMutableArray *)self->_tileEdgeJunctions addObject:junctionCopy];
  }
}

- (id)junctionAtCoordinate:()Matrix<float
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_tileEdgeJunctions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        [v7 tileCoordinate];
        if (__PAIR64__(v9, v8) == v15)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (VKLabelNavTileData)initWithTile:(const void *)tile
{
  v17.receiver = self;
  v17.super_class = VKLabelNavTileData;
  v4 = [(VKLabelNavTileData *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v7 = *tile;
    v6 = *(tile + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_tile.__cntrl_;
    v5->_tile.__ptr_ = v7;
    v5->_tile.__cntrl_ = v6;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    v9 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:1282 valueOptions:0 capacity:5];
    geoJunctionToJunctionMap = v5->_geoJunctionToJunctionMap;
    v5->_geoJunctionToJunctionMap = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    tileEdgeJunctions = v5->_tileEdgeJunctions;
    v5->_tileEdgeJunctions = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    oppositeCarriagewayJunctions = v5->_oppositeCarriagewayJunctions;
    v5->_oppositeCarriagewayJunctions = v13;

    v15 = v5;
  }

  return v5;
}

@end