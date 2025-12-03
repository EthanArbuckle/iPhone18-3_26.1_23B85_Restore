@interface VKLabelNavRoad
- (BOOL)_findLabelAnchorPoint:(void *)point isShieldLabel:(BOOL)label desiredOffsetDistance:(float)distance maxOffsetDistance:(float)offsetDistance minJunctionDistance:(float)junctionDistance roadGraph:(id)graph;
- (BOOL)_worldPointForRoadOffset:(float)offset worldPoint:(void *)point;
- (BOOL)isAwayFromRoute;
- (BOOL)isOnewayToJunction;
- (BOOL)isRamp;
- (BOOL)isValid;
- (BOOL)matchesRoad:(id)road;
- (BOOL)matchesRoadEdge:(const GeoCodecsRoadEdge *)edge;
- (Matrix<float,)direction2D;
- (Matrix<float,)direction3D;
- (NSString)shieldDisplayGroup;
- (NSString)shieldGroup;
- (VKLabelNavJunction)navJunctionA;
- (VKLabelNavRoad)initWithRoadEdge:(const GeoCodecsRoadEdge *)edge navJunctionA:(id)a routeOffset:(PolylineCoordinate)offset tile:(const void *)tile;
- (double)length;
- (float)_findRoadOffsetForDistanceToRay:(float)ray rayStart:()Matrix<double rayVector:()3 roadGraph:(1>)graph;
- (id).cxx_construct;
- (id)_newLabelWithNavContext:(NavContext *)context isShieldLabel:(BOOL)label worldPoint:(Mercator3<double>)point alignment:(unsigned __int8)alignment artworkCache:(void *)cache;
- (id)description;
- (id)labelWithType:(BOOL)type;
- (unsigned)roadSignAlignment;
- (void)_updateWithNavContext:(NavContext *)context threshold:(double)threshold;
- (void)_worldRoadPoints:(void *)points elevations:(void *)elevations;
- (void)appendSimplifiedWorldRoadPoints:(void *)points pointElevations:(void *)elevations;
- (void)clearRoadShield;
- (void)clearRoadSign;
- (void)createLabelWithNavContext:(NavContext *)context isShieldLabel:(BOOL)label desiredOffsetDistance:(float)distance maxOffsetDistance:(float)offsetDistance minJunctionDistance:(float)junctionDistance minRouteDistance:(float)routeDistance roadGraph:(id)graph artworkCache:(void *)self0;
- (void)dealloc;
- (void)getRoadEdge:(GeoCodecsRoadEdge *)edge;
- (void)layoutWithNavContext:(NavContext *)context;
- (void)prepareStyleVarsWithContext:(NavContext *)context;
- (void)recreateRoadShieldWithNavContext:(NavContext *)context artworkCache:(void *)cache;
- (void)recreateRoadSignWithAlignment:(unsigned __int8)alignment navContext:(NavContext *)context artworkCache:(void *)cache;
@end

@implementation VKLabelNavRoad

- (BOOL)isValid
{
  WeakRetained = objc_loadWeakRetained(&self->_navJunctionA);
  v3 = WeakRetained != 0;

  return v3;
}

- (BOOL)isAwayFromRoute
{
  WeakRetained = objc_loadWeakRetained(&self->_navJunctionA);
  isAwayFromRoute = [WeakRetained isAwayFromRoute];

  return isAwayFromRoute;
}

- (unsigned)roadSignAlignment
{
  routeCrossProduct = self->_routeCrossProduct;
  if (routeCrossProduct < -0.2)
  {
    return 6;
  }

  if (routeCrossProduct <= 0.2)
  {
    return 3;
  }

  return 7;
}

- (Matrix<float,)direction2D
{
  v2 = self->_direction2D._e[0];
  v3 = self->_direction2D._e[1];
  result._e[1] = v3;
  result._e[0] = v2;
  return result;
}

- (BOOL)isRamp
{
  v2 = *(self->_data + 3);
  v3 = *(v2 + 33);
  if (!*(v2 + 33))
  {
    return 0;
  }

  v4 = 0;
  v5 = *v2;
  v6 = v5;
  while (1)
  {
    v7 = *v6;
    v6 += 2;
    if (v7 == 21)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return v5[2 * v4 + 1] > 0;
}

- (double)length
{
  result = self->_length;
  if (result == 0.0)
  {
    v21 = 0;
    v4 = geo::codec::multiSectionFeaturePoints(self->_data, 0, &v21);
    if (v21 <= 1)
    {
      return 0.0;
    }

    else
    {
      labelVertexIndexA = self->_labelVertexIndexA;
      labelVertexIndexB = self->_labelVertexIndexB;
      if (labelVertexIndexA <= labelVertexIndexB)
      {
        v7 = labelVertexIndexB;
      }

      else
      {
        v7 = labelVertexIndexA;
      }

      if (labelVertexIndexA < labelVertexIndexB)
      {
        labelVertexIndexB = self->_labelVertexIndexA;
      }

      v8 = 0.0;
      if (labelVertexIndexB < v7)
      {
        v9 = (&v4->__vftable + labelVertexIndexB);
        v11 = *v9;
        v10 = v9 + 1;
        v12 = v11;
        v13 = v7 - labelVertexIndexB;
        do
        {
          v14 = *v10++;
          v15 = vsub_f32(v14, v12);
          v8 = v8 + sqrtf(vaddv_f32(vmul_f32(v15, v15)));
          v12 = v14;
          --v13;
        }

        while (v13);
      }

      ptr = self->_tile.__ptr_;
      v17 = *(ptr + 42);
      v18 = *(ptr + 40);
      WeakRetained = objc_loadWeakRetained(&self->_navJunctionA);
      [WeakRetained worldUnitsPerMeter];
      self->_length = (v17 - v18) * v8 / v20;

      return self->_length;
    }
  }

  return result;
}

- (void)dealloc
{
  [(VKLabelNavRoadLabel *)self->_roadSign setNavFeature:0];
  [(VKLabelNavRoadLabel *)self->_roadShield setNavFeature:0];
  v3.receiver = self;
  v3.super_class = VKLabelNavRoad;
  [(VKLabelNavRoad *)&v3 dealloc];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 16) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  *(self + 172) = 0xBF80000000000000;
  return self;
}

- (VKLabelNavJunction)navJunctionA
{
  WeakRetained = objc_loadWeakRetained(&self->_navJunctionA);

  return WeakRetained;
}

- (Matrix<float,)direction3D
{
  v2 = self->_direction3D._e[0];
  v3 = self->_direction3D._e[1];
  v4 = self->_direction3D._e[2];
  result._e[2] = v4;
  result._e[1] = v3;
  result._e[0] = v2;
  return result;
}

- (id)_newLabelWithNavContext:(NavContext *)context isShieldLabel:(BOOL)label worldPoint:(Mercator3<double>)point alignment:(unsigned __int8)alignment artworkCache:(void *)cache
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = *(*(context->var1 + 21) + 32);
  v9 = (*(*v8 + 96))(v8, &self->_routeOffset);
  isOnRoute = self->_isOnRoute;
  v11 = 2 * ([objc_loadWeakRetained(&self->_navJunctionA) depthFromRoute] == 0);
  if (isOnRoute)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  GetLabelNavStyleAttributes(&v14, 0, v12, *&self->_lineType, v9);
}

- (BOOL)_worldPointForRoadOffset:(float)offset worldPoint:(void *)point
{
  v36 = 0;
  v37 = 0;
  v7 = geo::codec::multiSectionFeaturePointsWithElevation(self->_data, 0, &v36, &v37);
  v8 = v37;
  if (v37 >= 2)
  {
    v9 = v7;
    WeakRetained = objc_loadWeakRetained(&self->_navJunctionA);
    [WeakRetained worldUnitsPerMeter];
    v12 = v11;
    ptr = self->_tile.__ptr_;
    v14 = *(ptr + 42);
    v15 = *(ptr + 40);

    labelVertexIndexA = self->_labelVertexIndexA;
    if (v36)
    {
      v17 = *(v36 + 4 * labelVertexIndexA);
    }

    else
    {
      v17 = 0.0;
    }

    v18 = *(&v9->__vftable + labelVertexIndexA);
    labelVertexIndexB = self->_labelVertexIndexB;
    if (labelVertexIndexA != labelVertexIndexB)
    {
      v20 = v12 * offset / (v14 - v15);
      v21 = 1;
      if (labelVertexIndexA >= labelVertexIndexB)
      {
        v21 = -1;
      }

      v22 = *(&v9->__vftable + v21 + labelVertexIndexA);
      v23 = vsub_f32(v22, v18);
      v24 = sqrtf(vaddv_f32(vmul_f32(v23, v23)));
      v25 = 0;
      if (v20 >= v24)
      {
        v27 = labelVertexIndexB - labelVertexIndexA;
        v28 = &v9->std::__shared_count + 2 * v21 + labelVertexIndexA;
        if (labelVertexIndexA - labelVertexIndexB > labelVertexIndexB - labelVertexIndexA)
        {
          v27 = labelVertexIndexA - labelVertexIndexB;
        }

        if (v27 <= 1)
        {
          v27 = 1;
        }

        v29 = v27 - 1;
        while (v29 != v25)
        {
          v30 = v22;
          v26 = v24;
          v22 = *v28;
          v31 = vsub_f32(*v28, v18);
          v24 = sqrtf(vaddv_f32(vmul_f32(v31, v31)));
          v28 += v21;
          ++v25;
          if (v20 < v24)
          {
            v23 = vsub_f32(v22, v30);
            v18 = v30;
            goto LABEL_18;
          }
        }

        v18 = *(&v9->__vftable + labelVertexIndexB);
        if (v36)
        {
          v17 = *(v36 + 4 * labelVertexIndexB);
        }

        else
        {
          v17 = 0.0;
        }
      }

      else
      {
        v26 = 0.0;
LABEL_18:
        v32 = v20;
        v33 = fminf(fmaxf((v32 - v26) / (v24 - v26), 0.0), 1.0);
        v18 = vmla_n_f32(v18, v23, v33);
        if (v36)
        {
          v34 = (v36 + 4 * v25 * v21 + 4 * labelVertexIndexA);
          v17 = *v34 + ((v34[v21] - *v34) * v33);
        }
      }
    }

    *point = vmlaq_f64(*(self->_tile.__ptr_ + 20), vcvtq_f64_f32(v18), vsubq_f64(*(self->_tile.__ptr_ + 21), *(self->_tile.__ptr_ + 20)));
    *(point + 2) = v17;
  }

  return v8 > 1;
}

- (void)_worldRoadPoints:(void *)points elevations:(void *)elevations
{
  __src = 0;
  v69 = 0;
  v7 = geo::codec::multiSectionFeaturePointsWithElevation(self->_data, 0, &__src, &v69);
  if (v69)
  {
    v8 = v7;
    elevationsCopy = elevations;
    labelVertexIndexA = self->_labelVertexIndexA;
    labelVertexIndexB = self->_labelVertexIndexB;
    if (labelVertexIndexA < labelVertexIndexB)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }

    v12 = labelVertexIndexA - labelVertexIndexB;
    if (v12 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -v12;
    }

    if (v13 >= (*(points + 2) - *points) >> 4)
    {
      v14 = *(points + 1) - *points;
      v74 = points + 24;
      v15 = mdm::zone_mallocator::instance(v7);
      v16 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<double,2,1>>(v15, v13 + 1);
      v17 = *points;
      v18 = *(points + 1);
      v19 = &v16[v14 + *points - v18];
      if (*points != v18)
      {
        v20 = &v16[v14 + *points - v18];
        do
        {
          v21 = *v17++;
          *v20 = v21;
          v20 += 16;
        }

        while (v17 != v18);
        v17 = *points;
      }

      *points = v19;
      *(points + 1) = &v16[v14];
      v22 = *(points + 2);
      *(points + 2) = &v16[16 * v13 + 16];
      v72 = v17;
      v73 = v22;
      v70 = v17;
      v71 = v17;
      v7 = std::__split_buffer<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator> &>::~__split_buffer(&v70);
      labelVertexIndexA = self->_labelVertexIndexA;
    }

    v65 = v13 + 1;
    v23 = 0;
    v24 = *(points + 1);
    v25 = (v8 + 8 * labelVertexIndexA);
    do
    {
      v26 = vmlaq_f64(*(self->_tile.__ptr_ + 20), vcvtq_f64_f32(*v25), vsubq_f64(*(self->_tile.__ptr_ + 21), *(self->_tile.__ptr_ + 20)));
      v27 = *(points + 2);
      if (v24 >= v27)
      {
        v28 = (v24 - *points) >> 4;
        if ((v28 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v29 = v27 - *points;
        v30 = v29 >> 3;
        if (v29 >> 3 <= (v28 + 1))
        {
          v30 = v28 + 1;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFF0)
        {
          v31 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        v74 = points + 24;
        if (v31)
        {
          v67 = v26;
          v32 = mdm::zone_mallocator::instance(v7);
          v33 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<double,2,1>>(v32, v31);
          v26 = v67;
        }

        else
        {
          v33 = 0;
        }

        v34 = &v33[16 * v28];
        *v34 = v26;
        v35 = *points;
        v36 = *(points + 1);
        v37 = v34 + *points - v36;
        if (v36 != *points)
        {
          v38 = (v34->f64 + *points - v36);
          do
          {
            v39 = *v35++;
            *v38++ = v39;
          }

          while (v35 != v36);
          v35 = *points;
        }

        v24 = v34 + 1;
        *points = v37;
        *(points + 1) = v34 + 1;
        v40 = *(points + 2);
        *(points + 2) = &v33[16 * v31];
        v72 = v35;
        v73 = v40;
        v70 = v35;
        v71 = v35;
        v7 = std::__split_buffer<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator> &>::~__split_buffer(&v70);
      }

      else
      {
        *v24++ = v26;
      }

      *(points + 1) = v24;
      v25 += v11;
    }

    while (v23++ != v13);
    if (elevationsCopy)
    {
      v42 = elevationsCopy[1];
      if (__src)
      {
        std::vector<float>::__insert_with_size[abi:nn200100]<float const*,float const*>(elevationsCopy, elevationsCopy[1], __src, __src + 4 * v65, v65);
      }

      else
      {
        v43 = elevationsCopy[2];
        if (v13 >= (v43 - v42) >> 2)
        {
          v50 = v42 - *elevationsCopy;
          v51 = v65 + (v50 >> 2);
          if (v51 >> 62)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v52 = v43 - *elevationsCopy;
          if (v52 >> 1 > v51)
          {
            v51 = v52 >> 1;
          }

          if (v52 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v53 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v51;
          }

          if (v53)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v53);
          }

          v54 = 0;
          v55 = 4 * (v50 >> 2);
          v56 = vdupq_n_s64(v13 & 0x3FFFFFFFFFFFFFFFLL);
          v57 = (v55 + 8);
          do
          {
            v58 = vdupq_n_s64(v54);
            v59 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(v58, xmmword_1B33B0560)));
            if (vuzp1_s16(v59, *v56.i8).u8[0])
            {
              *(v57 - 2) = 0;
            }

            if (vuzp1_s16(v59, *&v56).i8[2])
            {
              *(v57 - 1) = 0;
            }

            if (vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, vorrq_s8(v58, xmmword_1B33B0550)))).i32[1])
            {
              *v57 = 0;
              v57[1] = 0;
            }

            v54 += 4;
            v57 += 4;
          }

          while ((v13 & 0x3FFFFFFFFFFFFFFFLL) - (v13 & 3) + 4 != v54);
          v60 = (v55 + 4 * v65);
          memcpy(v60, v42, elevationsCopy[1] - v42);
          v61 = *elevationsCopy;
          v62 = &v60[elevationsCopy[1] - v42];
          elevationsCopy[1] = v42;
          v63 = (v55 - (v42 - v61));
          memcpy(v63, v61, v42 - v61);
          v64 = *elevationsCopy;
          *elevationsCopy = v63;
          elevationsCopy[1] = v62;
          elevationsCopy[2] = 0;
          if (v64)
          {
            operator delete(v64);
          }
        }

        else
        {
          v44 = ((v13 & 0x3FFFFFFFFFFFFFFFLL) + 4) & 0x7FFFFFFFFFFFFFFCLL;
          v45 = vdupq_n_s64(v13 & 0x3FFFFFFFFFFFFFFFLL);
          v46 = v42 + 2;
          v47 = 3;
          do
          {
            v48 = vdupq_n_s64(v47 - 3);
            v49 = vmovn_s64(vcgeq_u64(v45, vorrq_s8(v48, xmmword_1B33B0560)));
            if (vuzp1_s16(v49, *v45.i8).u8[0])
            {
              *(v46 - 2) = 0;
            }

            if (vuzp1_s16(v49, *&v45).i8[2])
            {
              *(v46 - 1) = 0;
            }

            if (vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, vorrq_s8(v48, xmmword_1B33B0550)))).i32[1])
            {
              *v46 = 0;
              v46[1] = 0;
            }

            v47 += 4;
            v46 += 4;
            v44 -= 4;
          }

          while (v44);
          elevationsCopy[1] = &v42[v65];
        }
      }
    }
  }
}

- (void)appendSimplifiedWorldRoadPoints:(void *)points pointElevations:(void *)elevations
{
  selfCopy = self;
  v108 = *MEMORY[0x1E69E9840];
  begin = self->_simplifiedPoints.__begin_;
  end = self->_simplifiedPoints.__end_;
  if (begin != end)
  {
    goto LABEL_31;
  }

  v105 = 0;
  v106 = 0;
  v107 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v9 = [(VKLabelNavRoad *)self _worldRoadPoints:&v105 elevations:&v97];
  v10 = v106 - v105;
  if (v106 != v105)
  {
    v11 = v10 >> 1;
    if ((v10 >> 1) <= 0x2000)
    {
      MEMORY[0x1EEE9AC00](v9);
      v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v12, v11);
      goto LABEL_6;
    }

    v12 = malloc_type_malloc(v10 >> 1, 0x100004000313F17uLL);
    if (v12)
    {
LABEL_6:
      WeakRetained = objc_loadWeakRetained(&selfCopy->_navJunctionA);
      [WeakRetained worldUnitsPerMeter];
      v15 = v14;

      v96 = 0;
      v16 = geo::DouglasPeuckerSimplifyViaIndexes<gm::Matrix<double,2,1>,unsigned long>(v105, (v106 - v105) >> 4, v12, &v96, v15 * 8.0);
      v17 = v96;
      if (!v96)
      {
        goto LABEL_26;
      }

      v18 = selfCopy->_simplifiedPoints.__begin_;
      v19 = selfCopy->_simplifiedPoints.__end_;
      v20 = v19 - v18;
      v21 = (v19 - v18) >> 4;
      if (v96 <= v21)
      {
        if (v96 >= v21)
        {
          goto LABEL_24;
        }

        v35 = &v18[16 * v96];
      }

      else
      {
        v22 = v96 - v21;
        cap = selfCopy->_simplifiedPoints.__cap_;
        if (v22 > (cap - v19) >> 4)
        {
          if (v96 >> 60)
          {
            goto LABEL_77;
          }

          v24 = cap - v18;
          v25 = v24 >> 3;
          if (v24 >> 3 <= v96)
          {
            v25 = v96;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF0)
          {
            v26 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v25;
          }

          anon_68 = selfCopy->_anon_68;
          v27 = mdm::zone_mallocator::instance(v16);
          v28 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<double,2,1>>(v27, v26);
          v29 = selfCopy->_simplifiedPoints.__begin_;
          v30 = selfCopy->_simplifiedPoints.__end_;
          v31 = &v28[v20 + v29 - v30];
          if (v30 != v29)
          {
            v32 = &v28[v20 + v29 - v30];
            do
            {
              v33 = *v29;
              v29 += 16;
              *v32 = v33;
              v32 += 16;
            }

            while (v29 != v30);
            v29 = selfCopy->_simplifiedPoints.__begin_;
          }

          selfCopy->_simplifiedPoints.__begin_ = v31;
          selfCopy->_simplifiedPoints.__end_ = &v28[16 * v22 + v20];
          v34 = selfCopy->_simplifiedPoints.__cap_;
          selfCopy->_simplifiedPoints.__cap_ = &v28[16 * v26];
          v102 = v29;
          v103 = v34;
          v100 = v29;
          v101 = v29;
          std::__split_buffer<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator> &>::~__split_buffer(&v100);
          goto LABEL_24;
        }

        v35 = &v19[16 * v22];
      }

      selfCopy->_simplifiedPoints.__end_ = v35;
LABEL_24:
      std::vector<float,geo::allocator_adapter<float,mdm::zone_mallocator>>::resize(&selfCopy->_simplifiedPointElevations, v17);
      v36 = v105;
      v37 = v97;
      v38 = selfCopy->_simplifiedPointElevations.__begin_;
      v39 = selfCopy->_simplifiedPoints.__begin_ + 8;
      v40 = v12;
      do
      {
        v41 = *v40++;
        v42 = (v36 + 16 * v41);
        *(v39 - 1) = *v42;
        *v39 = v42[1];
        v39 += 2;
        *v38++ = *&v37[v41];
        --v17;
      }

      while (v17);
LABEL_26:
      if (v11 > 0x2000)
      {
        free(v12);
      }
    }
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  std::vector<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v105);
  begin = selfCopy->_simplifiedPoints.__begin_;
  end = selfCopy->_simplifiedPoints.__end_;
LABEL_31:
  v43 = end - begin;
  v44 = end - begin;
  if (v44 < 1)
  {
    goto LABEL_44;
  }

  v46 = *(points + 1);
  v45 = *(points + 2);
  if (v45 - v46 >= v43)
  {
    while (begin != end)
    {
      v55 = *begin++;
      *v46 = v55;
      v46 += 16;
    }

    *(points + 1) = v46;
LABEL_44:
    if (!elevations)
    {
      return;
    }

    goto LABEL_59;
  }

  v47 = *points;
  v48 = &v46[-*points];
  v49 = v44 + (v48 >> 4);
  if (v49 >> 60)
  {
LABEL_77:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v50 = v45 - v47;
  v51 = (v45 - v47) >> 3;
  if (v51 > v49)
  {
    v49 = v51;
  }

  if (v50 >= 0x7FFFFFFFFFFFFFF0)
  {
    v52 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v52 = v49;
  }

  anon_68 = points + 24;
  if (v52)
  {
    v53 = mdm::zone_mallocator::instance(self);
    v54 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<gm::Matrix<double,2,1>>(v53, v52);
  }

  else
  {
    v54 = 0;
  }

  v56 = &v54[16 * (v48 >> 4)];
  v100 = v54;
  v101 = v56;
  v103 = &v54[16 * v52];
  v57 = &v56[v43];
  v58 = v56;
  do
  {
    v59 = *begin++;
    *v58 = v59;
    v58 += 16;
    v43 -= 16;
  }

  while (v43);
  v102 = v57;
  v60 = *(points + 1);
  if (v60 == v46)
  {
    v64 = v46;
  }

  else
  {
    v61 = v46;
    v62 = v57;
    do
    {
      v63 = *v61++;
      *v62 = v63;
      v62 += 16;
    }

    while (v61 != v60);
    v64 = *(points + 1);
  }

  v65 = &v57[v64 - v46];
  v102 = v65;
  *(points + 1) = v46;
  v66 = *points;
  v67 = &v56[*points - v46];
  if (*points != v46)
  {
    v68 = v67;
    do
    {
      v69 = *v66;
      v66 += 16;
      *v68 = v69;
      v68 += 16;
    }

    while (v66 != v46);
    v66 = *points;
  }

  *points = v67;
  *(points + 1) = v65;
  v70 = *(points + 2);
  *(points + 2) = &v54[16 * v52];
  v102 = v66;
  v103 = v70;
  v100 = v66;
  v101 = v66;
  self = std::__split_buffer<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator> &>::~__split_buffer(&v100);
  if (elevations)
  {
LABEL_59:
    v72 = selfCopy->_simplifiedPointElevations.__begin_;
    v71 = selfCopy->_simplifiedPointElevations.__end_;
    v73 = v71 - v72;
    v74 = v71 - v72;
    if (v74 >= 1)
    {
      v76 = *(elevations + 1);
      v75 = *(elevations + 2);
      if (v75 - v76 >= v73)
      {
        if (v72 != v71)
        {
          memmove(*(elevations + 1), v72, v71 - v72);
        }

        *(elevations + 1) = &v76[v73];
      }

      else
      {
        v77 = *elevations;
        v78 = &v76[-*elevations];
        v79 = v74 + (v78 >> 2);
        if (v79 >> 62)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v80 = v75 - v77;
        v81 = (v75 - v77) >> 1;
        if (v81 > v79)
        {
          v79 = v81;
        }

        if (v80 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v82 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v82 = v79;
        }

        anon_68 = elevations + 24;
        if (v82)
        {
          v83 = mdm::zone_mallocator::instance(self);
          v84 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<float>(v83, v82);
        }

        else
        {
          v84 = 0;
        }

        v85 = &v84[4 * (v78 >> 2)];
        v86 = &v85[v73];
        v87 = v85;
        do
        {
          v88 = *v72++;
          *v87 = v88;
          v87 += 4;
          v73 -= 4;
        }

        while (v73);
        v89 = &v84[4 * v82];
        memcpy(v86, v76, *(elevations + 1) - v76);
        v90 = *elevations;
        v91 = &v86[*(elevations + 1) - v76];
        *(elevations + 1) = v76;
        v92 = v76 - v90;
        v93 = &v85[-(v76 - v90)];
        memcpy(v93, v90, v92);
        v94 = *elevations;
        *elevations = v93;
        *(elevations + 1) = v91;
        v95 = *(elevations + 2);
        *(elevations + 2) = v89;
        v102 = v94;
        v103 = v95;
        v100 = v94;
        v101 = v94;
        std::__split_buffer<float,geo::allocator_adapter<float,mdm::zone_mallocator> &>::~__split_buffer(&v100);
      }
    }
  }
}

- (void)recreateRoadShieldWithNavContext:(NavContext *)context artworkCache:(void *)cache
{
  label = [(VKLabelNavRoadLabel *)self->_roadShield label];
  v8 = *label;
  v9 = *(*label + 20);
  if (v9)
  {
    v10 = (*(*v9 + 56))(v9);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v10 = v8[14];
    v12 = v8[15];
    v14 = v8[16];
  }

  [(VKLabelNavRoad *)self clearRoadShield];
  v15 = [(VKLabelNavRoad *)self _newLabelWithNavContext:context isShieldLabel:1 worldPoint:0 alignment:cache artworkCache:v10, v12, v14];
  v16 = v15;
  if (v15 && self->_isRoadLabelUnique)
  {
    if ((nextUniqueDisplayID + 1) > 1)
    {
      v17 = nextUniqueDisplayID + 1;
    }

    else
    {
      v17 = 1;
    }

    nextUniqueDisplayID = v17;
    [(VKLabelNavRoadLabel *)v15 setDisplayID:?];
  }

  roadShield = self->_roadShield;
  self->_roadShield = v16;
}

- (void)recreateRoadSignWithAlignment:(unsigned __int8)alignment navContext:(NavContext *)context artworkCache:(void *)cache
{
  alignmentCopy = alignment;
  label = [(VKLabelNavRoadLabel *)self->_roadSign label];
  v10 = *label;
  v11 = *(*label + 20);
  if (v11)
  {
    v12 = (*(*v11 + 56))(v11);
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v12 = v10[14];
    v14 = v10[15];
    v16 = v10[16];
  }

  [(VKLabelNavRoad *)self clearRoadSign];
  v17 = [(VKLabelNavRoad *)self _newLabelWithNavContext:context isShieldLabel:0 worldPoint:alignmentCopy alignment:cache artworkCache:v12, v14, v16];
  v18 = v17;
  if (v17 && self->_isRoadLabelUnique)
  {
    if ((nextUniqueDisplayID + 1) > 1)
    {
      v19 = nextUniqueDisplayID + 1;
    }

    else
    {
      v19 = 1;
    }

    nextUniqueDisplayID = v19;
    [(VKLabelNavRoadLabel *)v17 setDisplayID:?];
  }

  roadSign = self->_roadSign;
  self->_roadSign = v18;
}

- (void)createLabelWithNavContext:(NavContext *)context isShieldLabel:(BOOL)label desiredOffsetDistance:(float)distance maxOffsetDistance:(float)offsetDistance minJunctionDistance:(float)junctionDistance minRouteDistance:(float)routeDistance roadGraph:(id)graph artworkCache:(void *)self0
{
  labelCopy = label;
  graphCopy = graph;
  if (!self->_areLabelsDisabled)
  {
    [(VKLabelNavRoad *)self _updateWithNavContext:context];
    v19 = [(VKLabelNavRoad *)self labelWithType:labelCopy];
    v23 = v19;
    if (v19)
    {
      [v19 desiredOffsetDistance];
      if (vabds_f32(distance, *&v20) < 0.01)
      {
        goto LABEL_35;
      }
    }

    if (labelCopy)
    {
      if (!self->_hasVisibleShields)
      {
        goto LABEL_35;
      }
    }

    else if (![(VKLabelNavRoad *)self roadHasName])
    {
LABEL_35:

      goto LABEL_36;
    }

    if (*(self->_data + 153) != 6)
    {
      distanceCopy4 = distance;
      if (!self->_isOnRoute)
      {
        WeakRetained = objc_loadWeakRetained(&self->_navJunctionA);
        distanceCopy4 = distance;
        if (WeakRetained)
        {
          v26 = WeakRetained;
          v27 = objc_loadWeakRetained(&self->_navJunctionA);
          isOnRoute = [v27 isOnRoute];

          distanceCopy4 = distance;
          if (isOnRoute)
          {
            v29 = objc_loadWeakRetained(&self->_navJunctionA);
            outgoingRoad = [v29 outgoingRoad];

            distanceCopy4 = distance;
            if (outgoingRoad)
            {
              v31 = objc_loadWeakRetained(&self->_navJunctionA);
              mercatorCoordinate = [v31 mercatorCoordinate];
              v33 = *mercatorCoordinate;
              v34 = mercatorCoordinate[1];
              v35 = mercatorCoordinate[2];
              v36 = objc_loadWeakRetained(&self->_navJunctionA);
              outgoingRoad2 = [v36 outgoingRoad];
              [outgoingRoad2 direction2D];
              LODWORD(v39) = v38;
              LODWORD(v41) = v40;
              *&v42 = routeDistance;
              [(VKLabelNavRoad *)self _findRoadOffsetForDistanceToRay:graphCopy rayStart:v42 rayVector:v33 roadGraph:v34, v35, v39, v41];
              LODWORD(v33) = v43;

              distanceCopy4 = fmaxf(*&v33, distance);
            }

            v44 = objc_loadWeakRetained(&self->_navJunctionA);
            incomingRoad = [v44 incomingRoad];

            if (incomingRoad)
            {
              v46 = objc_loadWeakRetained(&self->_navJunctionA);
              mercatorCoordinate2 = [v46 mercatorCoordinate];
              v48 = *mercatorCoordinate2;
              v49 = mercatorCoordinate2[1];
              v50 = mercatorCoordinate2[2];
              v51 = objc_loadWeakRetained(&self->_navJunctionA);
              incomingRoad2 = [v51 incomingRoad];
              [incomingRoad2 direction2D];
              LODWORD(v54) = v53;
              LODWORD(v56) = v55;
              *&v57 = routeDistance;
              [(VKLabelNavRoad *)self _findRoadOffsetForDistanceToRay:graphCopy rayStart:v57 rayVector:v48 roadGraph:v49, v50, v54, v56];
              v59 = v58;

              distanceCopy4 = fmaxf(distanceCopy4, v59);
            }
          }
        }
      }

      v75 = 0.0;
      v76 = 0.0;
      v77 = 0.0;
      *&v20 = distanceCopy4;
      *&v21 = offsetDistance;
      *&v22 = junctionDistance;
      if ([(VKLabelNavRoad *)self _findLabelAnchorPoint:&v75 isShieldLabel:labelCopy desiredOffsetDistance:graphCopy maxOffsetDistance:v20 minJunctionDistance:v21 roadGraph:v22])
      {
        if (v23)
        {
          *&v60 = distance;
          [v23 setDesiredOffsetDistance:v60];
          label = [v23 label];
          v62 = *label;
          v63 = *(*label + 160);
          if (v63)
          {
            (*(*v63 + 80))(v63, v75, v76, v77);
          }

          else
          {
            v69 = 0;
            v70 = v62 + 112;
            do
            {
              *(v70 + v69) = *(&v75 + v69);
              v69 += 8;
            }

            while (v69 != 24);
          }

          label2 = [v23 label];
          v72 = *label2;
          isOnRoute = self->_isOnRoute;
          *(*label2 + 24) = !isOnRoute;
          if (isOnRoute)
          {
            v74 = 2;
          }

          else
          {
            v74 = 0;
          }

          *(v72 + 27) = v74;
        }

        else
        {
          v64 = [(VKLabelNavRoad *)self _newLabelWithNavContext:context isShieldLabel:labelCopy worldPoint:[(VKLabelNavRoad *)self roadSignAlignment] alignment:cache artworkCache:v75, v76, v77];
          *&v65 = distance;
          [v64 setDesiredOffsetDistance:v65];
          if (v64 && self->_isRoadLabelUnique)
          {
            if ((nextUniqueDisplayID + 1) > 1)
            {
              v66 = nextUniqueDisplayID + 1;
            }

            else
            {
              v66 = 1;
            }

            nextUniqueDisplayID = v66;
            [v64 setDisplayID:?];
          }

          v67 = 232;
          if (labelCopy)
          {
            v67 = 240;
          }

          v68 = *(&self->super.isa + v67);
          *(&self->super.isa + v67) = v64;
        }
      }
    }

    goto LABEL_35;
  }

LABEL_36:
}

- (BOOL)_findLabelAnchorPoint:(void *)point isShieldLabel:(BOOL)label desiredOffsetDistance:(float)distance maxOffsetDistance:(float)offsetDistance minJunctionDistance:(float)junctionDistance roadGraph:(id)graph
{
  labelCopy = label;
  graphCopy = graph;
  selfCopy = self;
  [(VKLabelNavRoad *)selfCopy length];
  v16 = v15;
  junctionDistanceCopy = junctionDistance;
  v17 = junctionDistance + junctionDistance;
  v18 = 0.0;
  if (v16 <= distance || v17 > v16)
  {
    v20 = 0;
    v21 = 0.0;
    v22 = selfCopy;
    v23 = 0.0;
    v24 = v16;
    v25 = v16;
    while (v23 <= offsetDistance && v20 <= 7)
    {
      v27 = [graphCopy junctionForRoad:v22 nearJunction:0 crossTileEdge:0];
      isMultiRoadIntersection = [v27 isMultiRoadIntersection];
      if ((isMultiRoadIntersection & (v16 > v25)) != 0)
      {
        v18 = v21;
        v25 = v16;
      }

      if (isMultiRoadIntersection)
      {
        v21 = v24;
      }

      v29 = [graphCopy nextRoadSegmentForRoad:v22];

      if (!v29 || !labelCopy && selfCopy->_isOnRoute && ![(VKLabelNavRoad *)v29 isOnRoute])
      {

        goto LABEL_31;
      }

      [(VKLabelNavRoad *)v29 length];
      v31 = v30 + v24;

      v16 = v31 - v21;
      ++v20;
      v32 = v31 <= distance || v16 < v17;
      v22 = v29;
      v23 = v24;
      v24 = v31;
      if (!v32)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_32;
  }

  v25 = v15;
  v31 = v15;
  v21 = 0.0;
  v29 = selfCopy;
LABEL_24:
  v33 = fminf(fmaxf(v21 + junctionDistanceCopy, distance), v31 - junctionDistanceCopy);
  if (v33 == 0.0)
  {
    v24 = v31;
LABEL_31:
    v22 = v29;
LABEL_32:
    if (!selfCopy->_isOnRoute && v24 < 30.0)
    {
      v37 = 0;
      goto LABEL_46;
    }

    v33 = v18 + (v25 * 0.5);
    v38 = 184;
    if (labelCopy)
    {
      v38 = 192;
    }

    v35 = (selfCopy + v38);
    v29 = v22;
    goto LABEL_38;
  }

  v34 = 184;
  if (labelCopy)
  {
    v34 = 192;
  }

  v35 = (selfCopy + v34);
  if (v33 < (distance + ((offsetDistance - distance) * 0.5)))
  {
    v36 = *v35 | 1;
    goto LABEL_39;
  }

LABEL_38:
  v36 = *v35 & 0xFFFFFFFFFFFFFFFELL;
LABEL_39:
  *v35 = v36;
  v39 = selfCopy;

  v40 = v39;
  v41 = 0;
  v42 = v40;
  while (1)
  {
    [(VKLabelNavRoad *)v42 length];
    if (v43 >= v33)
    {
      break;
    }

    [(VKLabelNavRoad *)v42 length];
    v45 = v44;
    v46 = [graphCopy nextRoadSegmentForRoad:v42];

    if (v46)
    {
      v33 = v33 - v45;
      v42 = v46;
      if (v41++ < 7)
      {
        continue;
      }
    }

    [(VKLabelNavRoad *)v40 length];
    v33 = v48;
    v42 = v40;

    break;
  }

  v22 = v42;
  *&v43 = v33;
  v37 = [(VKLabelNavRoad *)v42 _worldPointForRoadOffset:point worldPoint:v43];

LABEL_46:
  return v37;
}

- (float)_findRoadOffsetForDistanceToRay:(float)ray rayStart:()Matrix<double rayVector:()3 roadGraph:(1>)graph
{
  v6 = a5._e[1];
  v7 = a5._e[0];
  v8 = graph._e[1];
  v9 = graph._e[0];
  v39 = *MEMORY[0x1E69E9840];
  v12 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_navJunctionA);
  [WeakRetained worldUnitsPerMeter];
  v15 = v14;

  v36 = 0;
  v37 = 0;
  v38 = 0;
  selfCopy = self;
  if (selfCopy)
  {
    v17 = selfCopy;
    v18 = 0;
    v19 = v15 * ray;
    v20 = v7;
    v21 = v6;
    v22 = 0.0;
    v23 = 0.0;
    while (1)
    {
      v37 = v36;
      [v17 _worldRoadPoints:&v36 elevations:0];
      v24 = (v37 - v36) >> 4;
      if (v24 >= 2)
      {
        break;
      }

LABEL_8:
      if (v18 != 7)
      {
        v31 = [v12 nextRoadSegmentForRoad:v17];

        ++v18;
        v17 = v31;
        if (v31)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    v25 = v24 - 1;
    v26 = (v36 + 16);
    v27 = v22;
    while (1)
    {
      v28 = v26[1];
      v29 = *v26 - v9;
      if (v29 * v20 + (v28 - v8) * v21 < 0.0)
      {
        break;
      }

      v30 = sqrt((*v26 - *(v26 - 2)) * (*v26 - *(v26 - 2)) + (v28 - *(v26 - 1)) * (v28 - *(v26 - 1)));
      v22 = fabs(-(v29 * v21 - (v28 - v8) * v20));
      if (v22 >= v19)
      {
        v23 = v23 + fmin(fmax((v19 - v27) / (v22 - v27), 0.0), 1.0) * v30;
        break;
      }

      v23 = v30 + v23;
      v26 += 2;
      v27 = v22;
      if (!--v25)
      {
        goto LABEL_8;
      }
    }

LABEL_13:
  }

  else
  {
    v23 = 0.0;
  }

  v32 = objc_loadWeakRetained(&self->_navJunctionA);
  [v32 worldUnitsPerMeter];
  v34 = v33;

  std::vector<gm::Matrix<double,2,1>,geo::allocator_adapter<gm::Matrix<double,2,1>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v36);
  return v23 / v34;
}

- (id)labelWithType:(BOOL)type
{
  v3 = 232;
  if (type)
  {
    v3 = 240;
  }

  return *(&self->super.isa + v3);
}

- (NSString)shieldDisplayGroup
{
  shieldDisplayGroup = self->_shieldDisplayGroup;
  if (!shieldDisplayGroup)
  {
    v9 = 0;
    v4 = VKLabelCopyShield(self->_data, 0, &v9);
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [v5 initWithFormat:@"%@_%llX_%@", v4, v9, self->_name];
    v7 = self->_shieldDisplayGroup;
    self->_shieldDisplayGroup = v6;

    shieldDisplayGroup = self->_shieldDisplayGroup;
  }

  return shieldDisplayGroup;
}

- (NSString)shieldGroup
{
  if (!self->_shieldGroup && [(VKLabelNavRoad *)self hasShield])
  {
    v9 = 0;
    v3 = VKLabelCopyShield(self->_data, 0, &v9);
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [v4 initWithFormat:@"%@_%llX", v3, v9];
    shieldGroup = self->_shieldGroup;
    self->_shieldGroup = v5;
  }

  v7 = self->_shieldGroup;

  return v7;
}

- (BOOL)matchesRoad:(id)road
{
  if (self->_data != *(road + 3))
  {
    return 0;
  }

  v4 = *(road + 9);
  v5 = *(road + 10);
  if (__PAIR64__(v5, v4) == *&self->_vertexIndexA)
  {
    return 1;
  }

  if (v5 != self->_vertexIndexA)
  {
    return 0;
  }

  return v4 == self->_vertexIndexB;
}

- (BOOL)matchesRoadEdge:(const GeoCodecsRoadEdge *)edge
{
  if (self->_data != edge->var0)
  {
    return 0;
  }

  var1 = edge->var1;
  var2 = edge->var2;
  vertexIndexA = self->_vertexIndexA;
  if (__PAIR128__(var2, var1) == __PAIR128__(self->_vertexIndexB, vertexIndexA))
  {
    return 1;
  }

  if (var2 != vertexIndexA)
  {
    return 0;
  }

  return var1 == self->_vertexIndexB;
}

- (void)getRoadEdge:(GeoCodecsRoadEdge *)edge
{
  edge->var6 = 0;
  *&edge->var2 = 0u;
  *&edge->var4 = 0u;
  *&edge->var0 = 0u;
  v3 = *&self->_vertexIndexA;
  *&v4 = v3;
  *(&v4 + 1) = HIDWORD(v3);
  *&edge->var1 = v4;
  edge->var5 = self->_junctionA;
  edge->var6 = self->_junctionB;
  edge->var0 = self->_data;
}

- (BOOL)isOnewayToJunction
{
  v2 = *(self->_data + 153);
  if (v2 == 2)
  {
    return self->_vertexIndexA < self->_vertexIndexB;
  }

  if (v2 == 1)
  {
    return self->_vertexIndexA > self->_vertexIndexB;
  }

  return 0;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"VKLabelNavRoad (%@)", self->_name];

  return v2;
}

- (void)prepareStyleVarsWithContext:(NavContext *)context
{
  v5 = *(*(context->var1 + 21) + 32);
  v6 = (*(*v5 + 96))(v5, &self->_routeOffset);
  v7 = (***(*(context->var1 + 21) + 32))();
  v8 = v6;
  if ((v6 & 0x100) == 0)
  {
    v8 = 3;
  }

  v9 = v8 + 4 * v7;
  if (v9 >= 7)
  {
    v10 = 7;
  }

  else
  {
    v10 = v9;
  }

  if (!self->_isVisibilityCached[v10])
  {
    self->_isVisibilityCached[v10] = 1;
    isOnRoute = self->_isOnRoute;
    v12 = 2 * ([objc_loadWeakRetained(&self->_navJunctionA) depthFromRoute] == 0);
    if (isOnRoute)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    GetLabelNavStyleAttributes(&v14, 0, v13, *&self->_lineType, v6);
  }

  self->_hasVisibleSigns = self->_cachedSignVisibility[v10];
  self->_hasVisibleShields = self->_cachedShieldVisibility[v10];
}

- (void)layoutWithNavContext:(NavContext *)context
{
  [(VKLabelNavRoad *)self _updateWithNavContext:20.0 threshold:?];
  roadSign = self->_roadSign;
  if (roadSign && *[(VKLabelNavRoadLabel *)roadSign label])
  {
    [(VKLabelNavRoadLabel *)self->_roadSign layoutWithNavContext:context];
  }

  roadShield = self->_roadShield;
  if (roadShield && *[(VKLabelNavRoadLabel *)roadShield label])
  {
    v7 = self->_roadShield;

    [(VKLabelNavRoadLabel *)v7 layoutWithNavContext:context];
  }
}

- (void)_updateWithNavContext:(NavContext *)context threshold:(double)threshold
{
  WeakRetained = objc_loadWeakRetained(&self->_navJunctionA);
  self->_hasVisibleSigns &= DetermineJunctionVisibility(WeakRetained, context, threshold);

  roadSign = self->_roadSign;
  if (roadSign)
  {
    if (*[(VKLabelNavRoadLabel *)roadSign label])
    {
      v9 = *[(VKLabelNavRoadLabel *)self->_roadSign label];
      hasVisibleSigns = [(VKLabelNavRoad *)self hasVisibleSigns];
      v9[313] = hasVisibleSigns;
      if (v9[312] == 1)
      {
        v9[314] = hasVisibleSigns;
      }
    }
  }

  roadShield = self->_roadShield;
  if (roadShield && *[(VKLabelNavRoadLabel *)roadShield label])
  {
    v12 = *[(VKLabelNavRoadLabel *)self->_roadShield label];
    hasVisibleShields = [(VKLabelNavRoad *)self hasVisibleShields];
    v12[313] = hasVisibleShields;
    if (v12[312] == 1)
    {
      v12[314] = hasVisibleShields;
    }
  }
}

- (void)clearRoadShield
{
  [(VKLabelNavRoadLabel *)self->_roadShield setNavFeature:0];
  roadShield = self->_roadShield;
  self->_roadShield = 0;
}

- (void)clearRoadSign
{
  [(VKLabelNavRoadLabel *)self->_roadSign setNavFeature:0];
  roadSign = self->_roadSign;
  self->_roadSign = 0;
}

- (VKLabelNavRoad)initWithRoadEdge:(const GeoCodecsRoadEdge *)edge navJunctionA:(id)a routeOffset:(PolylineCoordinate)offset tile:(const void *)tile
{
  aCopy = a;
  v58.receiver = self;
  v58.super_class = VKLabelNavRoad;
  v11 = [(VKLabelNavRoad *)&v58 init];
  v12 = v11;
  v13 = v11;
  if (!v11)
  {
LABEL_38:
    v42 = v13;
    goto LABEL_39;
  }

  v15 = *tile;
  v14 = *(tile + 1);
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = v11->_tile.__cntrl_;
  v13->_tile.__ptr_ = v15;
  v13->_tile.__cntrl_ = v14;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }

  *&v13->_vertexIndexA = vuzp1q_s32(*&edge->var1, *&edge->var1);
  objc_storeWeak(&v12->_navJunctionA, aCopy);
  v13->_junctionA = edge->var5;
  v13->_junctionB = edge->var6;
  var0 = edge->var0;
  v13->_data = edge->var0;
  if (var0)
  {
    v18 = *(var0 + 3);
    v19 = *(v18 + 33);
    if (*(v18 + 33))
    {
      v20 = 0;
      v21 = *v18;
      v22 = v21;
      while (1)
      {
        v23 = *v22;
        v22 += 2;
        if (v23 == 1)
        {
          break;
        }

        if (v19 == ++v20)
        {
          goto LABEL_11;
        }
      }

      v24 = v21[2 * v20 + 1];
    }

    else
    {
LABEL_11:
      v24 = -1;
    }

    v25 = v24 > 0;
    LODWORD(var0) = v24 & ~(v24 >> 31);
  }

  else
  {
    v25 = 0;
  }

  v13->_lineType = (var0 | (v25 << 8));
  v26 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (*(v13->_data + 2))
  {
    v27 = *(v13->_data + 2);
  }

  else
  {
    v27 = "";
  }

  v28 = [v26 initWithUTF8String:v27];
  name = v13->_name;
  v13->_name = v28;

  roadHasName = [(VKLabelNavRoad *)v13 roadHasName];
  data = v13->_data;
  v32 = !roadHasName && LOBYTE(data[3].__vftable) == 0;
  v13->_areLabelsDisabled = v32;
  v13->_routeOffset = offset;
  *&v13->_intraRoadPriorityForRoadLabel = vdupq_n_s64(1uLL);
  v56 = 0;
  v57 = 0;
  v33 = geo::codec::multiSectionFeaturePointsWithElevation(data, 0, &v56, &v57);
  if (v57 >= 2)
  {
    vertexIndexA = v13->_vertexIndexA;
    vertexIndexB = v13->_vertexIndexB;
    v36 = *(&v33->__vftable + vertexIndexA);
    v55 = v36;
    v37 = 1;
    if (vertexIndexA >= vertexIndexB)
    {
      v37 = -1;
    }

    if (vertexIndexA != vertexIndexB)
    {
      v38 = 0;
      v39 = v33 + 8 * v37 + 8 * vertexIndexA;
      v40 = vertexIndexB - vertexIndexA;
      v41 = vertexIndexA - vertexIndexB;
      if (v41 <= v40)
      {
        v41 = v40;
      }

      if (v41 <= 1)
      {
        v41 = 1;
      }

      while (v55 == *v39)
      {
        ++v38;
        v39 += 8 * v37;
        if (v41 == v38)
        {
          goto LABEL_38;
        }
      }

      v43 = *v39 - *&v36;
      v44 = *(v39 + 4) - *(&v36 + 1);
      v45 = 1.0 / sqrtf((v43 * v43) + (v44 * v44));
      v13->_direction2D._e[0] = v45 * v43;
      v13->_direction2D._e[1] = v45 * v44;
      v53 = v36;
      v54 = 0;
      v51 = *v39;
      v52 = 0;
      if (v56)
      {
        v46 = (v56 + 4 * v38 * v37 + 4 * vertexIndexA);
        v54 = *v46;
        v52 = v46[v37];
      }

      for (i = 0; i != 12; i += 4)
      {
        *(&v59 + i) = *(&v51 + i) - *(&v53 + i);
      }

      v13->_direction3D._e[0] = gm::Matrix<float,3,1>::normalized<int,void>(&v59);
      v13->_direction3D._e[1] = v48;
      v13->_direction3D._e[2] = v49;
    }

    goto LABEL_38;
  }

  v42 = 0;
LABEL_39:

  return v42;
}

@end