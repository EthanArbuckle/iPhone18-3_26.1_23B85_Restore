@interface VKPolygonalItemGroup
- (BOOL)canAcceptPolygon:(void *)polygon;
- (Matrix<float,)centroid;
- (Matrix<float,)size;
- (VKPolygonalItemGroup)initWithStyleQuery:(void *)query tileZoom:(float)zoom fixedAroundCentroid:(const void *)centroid contentScale:(float)scale;
- (VKPolygonalItemGroup)initWithStyleQuery:(void *)query tileZoom:(float)zoom fixedAroundCentroid:(const void *)centroid contentScale:(float)scale storage:(shared_ptr<md::MeshSetStorage>)storage;
- (const)commitRangesToFillRenderItemBatcher:(void *)batcher forMeshAtIndex:(unint64_t)index cullingMask:(unsigned int)mask featureIdPredicate:(function<BOOL (unsigned long)long;
- (const)commitRangesToHorizontalVenueWallStrokeRenderItemBatcher:(void *)batcher forMeshAtIndex:(unint64_t)index cullingMask:(unsigned int)mask;
- (const)commitRangesToStrokeRenderItemBatcher:(void *)batcher forMeshAtIndex:(unint64_t)index cullingMask:(unsigned int)mask featureIdPredicate:(function<BOOL (unsigned long)long;
- (const)commitRangesToVenueWallEndCapRenderItemBatcher:(void *)batcher forMeshAtIndex:(unint64_t)index cullingMask:(unsigned int)mask;
- (const)commitRangesToVenueWallRenderItemBatcher:(void *)batcher forMeshAtIndex:(unint64_t)index cullingMask:(unsigned int)mask;
- (const)commitRangesToVerticalVenueWallStrokeRenderItemBatcher:(void *)batcher forMeshAtIndex:(unint64_t)index cullingMask:(unsigned int)mask;
- (id).cxx_construct;
- (unsigned)indexForGeoFeatureAttributes:(const void *)attributes;
- (void)didFinishAddingData;
- (void)setRouteAttributes:(const PolygonRouteAttributes *)attributes;
- (void)updateCachedStyles;
@end

@implementation VKPolygonalItemGroup

- (id).cxx_construct
{
  self->_fillMeshInfo.var0.__null_state_ = 0;
  self->_fillMeshInfo.__engaged_ = 0;
  bzero(&self->_fillMeshes, 0x948uLL);
  self->_polygonEdges.__table_.__max_load_factor_ = 1.0;
  self->_featureIds.__table_.__bucket_list_ = 0u;
  *&self->_featureIds.__table_.__first_node_.__next_ = 0u;
  self->_featureIds.__table_.__max_load_factor_ = 1.0;
  self->_attributeSets._set.__tree_.__end_node_.__left_ = 0;
  *&self->_attributeSets._set.__tree_.__size_ = 0u;
  *&self->_fillRenderItemBatchers.__begin_ = 0u;
  *&self->_fillRenderItemBatchers.__cap_ = 0u;
  *&self->_strokeRenderItemBatchers.__end_ = 0u;
  self->_attributeSets._set.__tree_.__begin_node_ = &self->_attributeSets._set.__tree_.__end_node_;
  *&self->_attributeSets._array.__end_ = 0u;
  self->_styleQueries.__table_.__bucket_list_ = 0u;
  *&self->_styleQueries.__table_.__first_node_.__next_ = 0u;
  self->_styleQueries.__table_.__max_load_factor_ = 1.0;
  *(&self->_styleManager.__cntrl_ + 6) = 0;
  self->_styleManager = 0u;
  return self;
}

- (Matrix<float,)centroid
{
  v2 = self->_centroid._e[0];
  v3 = self->_centroid._e[1];
  result._e[1] = v3;
  result._e[0] = v2;
  return result;
}

- (void)setRouteAttributes:(const PolygonRouteAttributes *)attributes
{
  self->_hasRouteAttributes = 1;
  routeSignificance = attributes->routeSignificance;
  *&self->_routeAttributes.routeProximity = *&attributes->routeProximity;
  self->_routeAttributes.routeSignificance = routeSignificance;
  [(VKPolygonalItemGroup *)self updateCachedStyles];
}

- (void)updateCachedStyles
{
  v72 = *MEMORY[0x1E69E9840];
  p_styleQueries = &self->_styleQueries;
  if (self->_styleQueries.__table_.__size_)
  {
    self->_styleQueries.__table_.__first_node_.__next_ = 0;
    size = self->_styleQueries.__table_.__bucket_list_.__deleter_.__size_;
    if (size)
    {
      for (i = 0; i != size; ++i)
      {
        p_styleQueries->__table_.__bucket_list_.__ptr_[i] = 0;
      }
    }

    self->_styleQueries.__table_.__size_ = 0;
  }

  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(p_styleQueries, vcvtps_u32_f32(4.0 / self->_styleQueries.__table_.__max_load_factor_));
  v61 = 0x101010000010000;
  begin = self->_attributeSets._array.__begin_;
  if (self->_attributeSets._array.__end_ != begin)
  {
    v7 = 0;
    do
    {
      md::createFeatureAttributeSet(&v67, &begin[2 * v7]);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&__src, &v67);
      v58 = v7;
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v67);
      if (self->_hasRouteAttributes)
      {
        v10 = v64;
        v9 = v65;
        if (self->_routeAttributes.hasRouteSignificance)
        {
          if (v64 >= v65)
          {
            v11 = __src;
            v12 = v64 - __src;
            v13 = (v64 - __src) >> 3;
            v14 = v13 + 1;
            if ((v13 + 1) >> 61)
            {
              goto LABEL_53;
            }

            v15 = v65 - __src;
            if ((v65 - __src) >> 2 > v14)
            {
              v14 = v15 >> 2;
            }

            if (v15 >= 0x7FFFFFFFFFFFFFF8)
            {
              v16 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v16 = v14;
            }

            v71 = &v66;
            if (v16)
            {
              v17 = gss::zone_mallocator::instance(v8);
              v18 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v17, v16);
              v11 = __src;
              v12 = v64 - __src;
            }

            else
            {
              v18 = 0;
            }

            v19 = (v64 - __src) >> 3;
            v20 = &v18[8 * v13];
            v21 = &v18[8 * v16];
            *v20 = 44;
            *(v20 + 2) = self->_routeAttributes.routeSignificance;
            v10 = v20 + 8;
            v22 = &v20[-8 * v19];
            memcpy(v22, v11, v12);
            v23 = __src;
            v24 = v65;
            __src = v22;
            v64 = v10;
            v65 = v21;
            v69 = v23;
            v70 = v24;
            v67 = v23;
            v68 = v23;
            v8 = std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v67);
            v9 = v65;
          }

          else
          {
            *v64 = 44;
            *(v10 + 2) = self->_routeAttributes.routeSignificance;
            v10 += 8;
          }

          v64 = v10;
        }

        routeProximity = self->_routeAttributes.routeProximity;
        if (v10 >= v9)
        {
          v27 = __src;
          v28 = v10 - __src;
          v29 = (v10 - __src) >> 3;
          v30 = v29 + 1;
          if ((v29 + 1) >> 61)
          {
LABEL_53:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v31 = v9 - __src;
          if (v31 >> 2 > v30)
          {
            v30 = v31 >> 2;
          }

          if (v31 >= 0x7FFFFFFFFFFFFFF8)
          {
            v32 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v30;
          }

          v71 = &v66;
          if (v32)
          {
            v33 = gss::zone_mallocator::instance(v8);
            v34 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::pair<gss::StyleAttribute,unsigned short>>(v33, v32);
            v27 = __src;
            v28 = v64 - __src;
            v35 = (v64 - __src) >> 3;
          }

          else
          {
            v34 = 0;
            v35 = v29;
          }

          v36 = &v34[8 * v29];
          v37 = &v34[8 * v32];
          *v36 = 44;
          *(v36 + 2) = routeProximity;
          v26 = v36 + 8;
          v38 = &v36[-8 * v35];
          memcpy(v38, v27, v28);
          v39 = __src;
          v40 = v65;
          __src = v38;
          v64 = v26;
          v65 = v37;
          v69 = v39;
          v70 = v40;
          v67 = v39;
          v68 = v39;
          std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(&v67);
        }

        else
        {
          *v10 = 44;
          *(v10 + 2) = routeProximity;
          v26 = v10 + 8;
        }

        v64 = v26;
      }

      v41 = &v61;
      v42 = 8;
      do
      {
        gss::QueryOverrides::QueryOverrides(v60, *v41);
        v43 = v41[1];
        *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v60, 0x1004Du) = v43;
        ptr = self->_styleManager.__ptr_;
        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v62, &__src);
        gss::FeatureAttributeSet::sort(v62[0], v62[1]);
        gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v59, ptr, v62, v60);
        v46 = v44[1];
        v47 = v44[2];
        if (v46 >= v47)
        {
          v48 = (v46 - *v44) >> 4;
          v49 = v48 + 1;
          if ((v48 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v50 = v47 - *v44;
          if (v50 >> 3 > v49)
          {
            v49 = v50 >> 3;
          }

          if (v50 >= 0x7FFFFFFFFFFFFFF0)
          {
            v51 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v51 = v49;
          }

          v71 = v44;
          if (v51)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v51);
          }

          *(16 * v48) = v59;
          v52 = 16 * v48 + 16;
          v59 = 0uLL;
          v53 = v44[1] - *v44;
          v54 = (16 * v48 - v53);
          memcpy(v54, *v44, v53);
          v55 = *v44;
          *v44 = v54;
          v67 = v55;
          v68 = v55;
          v44[1] = v52;
          v69 = v55;
          v56 = v44[2];
          v44[2] = 0;
          v70 = v56;
          std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(&v67);
          v57 = *(&v59 + 1);
          v44[1] = v52;
          if (v57)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v57);
          }
        }

        else
        {
          *v46 = v59;
          v59 = 0uLL;
          v44[1] = (v46 + 1);
        }

        std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v62);
        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v60);
        v41 += 2;
        v42 -= 2;
      }

      while (v42);
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&__src);
      v7 = v58 + 1;
      begin = self->_attributeSets._array.__begin_;
    }

    while (v58 + 1 < ((self->_attributeSets._array.__end_ - begin) >> 4));
  }
}

- (BOOL)canAcceptPolygon:(void *)polygon
{
  v5 = self->_attributeSets._array.__end_ - self->_attributeSets._array.__begin_;
  if ([(VKPolygonalItemGroup *)self maxAttributeSetsPerGroup]> (v5 >> 4))
  {
    return 1;
  }

  p_end_node = &self->_attributeSets._set.__tree_.__end_node_;
  left = self->_attributeSets._set.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_10;
  }

  v9 = *(polygon + 3);
  v10 = FeatureStyleAttributes::hash(v9);
  v11 = p_end_node;
  do
  {
    v12 = FeatureStyleAttributes::hash(left[4]);
    if (v12 >= v10)
    {
      v11 = left;
    }

    left = left[v12 < v10];
  }

  while (left);
  if (p_end_node == v11 || (v13 = FeatureStyleAttributes::hash(v9), v13 < FeatureStyleAttributes::hash(v11[4].__left_)))
  {
LABEL_10:
    v11 = p_end_node;
  }

  return p_end_node != v11;
}

- (void)didFinishAddingData
{
  v3 = md::MeshSet<ggl::PolygonBase::CompressedMeshMesh,ggl::PolygonBase::CompressedVbo>::finishedWriting(&self->_fillMeshInfo.var0.__val_._vertexAndIndexCounts.__begin_);
  std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(&self->_fillMeshes);
  self->_fillMeshes = *v3;
  v3->__begin_ = 0;
  v3->__end_ = 0;
  v3->__cap_ = 0;
  if (self->_fillMeshInfo.__engaged_)
  {
    cntrl = self->_fillMeshInfo.var0.__val_._storageClient.__cntrl_;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    std::unique_ptr<md::MeshSetStorage>::reset[abi:nn200100](&self->_fillMeshInfo.var0.__val_._internalStorage, 0);
    ggl::BufferMemory::~BufferMemory(&self->_fillMeshInfo.var0.__val_._indexDataWrite);
    ggl::BufferMemory::~BufferMemory(&self->_fillMeshInfo.var0.__val_._vertexDataWrite);
    __p[0] = &self->_fillMeshInfo.var0.__val_._meshes;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](__p);
    begin = self->_fillMeshInfo.var0.__val_._vertexAndIndexCounts.__begin_;
    if (begin)
    {
      self->_fillMeshInfo.var0.__val_._vertexAndIndexCounts.__end_ = begin;
      operator delete(begin);
    }

    self->_fillMeshInfo.__engaged_ = 0;
  }

  *__p = 0u;
  *v21 = 0u;
  v22 = 1065353216;
  std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__move_assign(&self->_polygonEdges, __p);
  std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__deallocate_node(v21[0]);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v6 = 0;
  p_fillCullingGroups = &self->_fillCullingGroups;
  do
  {
    v8 = p_fillCullingGroups->__elems_[v6].__begin_;
    end = p_fillCullingGroups->__elems_[v6].__end_;
    while (v8 != end)
    {
      v10 = v8[1];
      if (*v8 != v10)
      {
        v11 = (*v8 + 16);
        do
        {
          if (*v11)
          {
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&self->_featureIds.__table_.__bucket_list_.__ptr_, *v11);
          }

          v12 = v11 + 1;
          v11 += 3;
        }

        while (v12 != v10);
      }

      v8 += 3;
    }

    ++v6;
  }

  while (v6 != 16);
  v13 = 0;
  p_venueCullingGroups = &self->_venueCullingGroups;
  do
  {
    v15 = p_venueCullingGroups->__elems_[v13].__begin_;
    v16 = p_venueCullingGroups->__elems_[v13].__end_;
    while (v15 != v16)
    {
      v17 = v15[1];
      if (*v15 != v17)
      {
        v18 = (*v15 + 16);
        do
        {
          if (*v18)
          {
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&self->_featureIds.__table_.__bucket_list_.__ptr_, *v18);
          }

          v19 = v18 + 1;
          v18 += 3;
        }

        while (v19 != v17);
      }

      v15 += 3;
    }

    ++v13;
  }

  while (v13 != 16);
}

- (unsigned)indexForGeoFeatureAttributes:(const void *)attributes
{
  p_end_node = &self->_attributeSets._set.__tree_.__end_node_;
  left = self->_attributeSets._set.__tree_.__end_node_.__left_;
  if (!left)
  {
LABEL_14:
    operator new();
  }

  v7 = *attributes;
  v8 = FeatureStyleAttributes::hash(*attributes);
  v9 = p_end_node;
  v10 = left;
  do
  {
    v11 = FeatureStyleAttributes::hash(v10[4]);
    if (v11 >= v8)
    {
      v9 = v10;
    }

    v10 = v10[v11 < v8];
  }

  while (v10);
  if (p_end_node == v9 || (v12 = FeatureStyleAttributes::hash(v7), v12 < FeatureStyleAttributes::hash(v9[4].__left_)))
  {
    v13 = *attributes;
    v14 = FeatureStyleAttributes::hash(*attributes);
    while (1)
    {
      while (1)
      {
        v15 = left;
        v16 = FeatureStyleAttributes::hash(left[4]);
        if (v14 >= v16)
        {
          break;
        }

        left = *left;
        if (!*v15)
        {
          goto LABEL_14;
        }
      }

      if (v16 >= FeatureStyleAttributes::hash(v13))
      {
        break;
      }

      left = left[1];
      if (!left)
      {
        goto LABEL_14;
      }
    }

    end = self->_attributeSets._array.__end_;
    cap = self->_attributeSets._array.__cap_;
    if (end >= cap)
    {
      begin = self->_attributeSets._array.__begin_;
      v22 = (end - begin) >> 4;
      v23 = v22 + 1;
      if ((v22 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v24 = cap - begin;
      if (v24 >> 3 > v23)
      {
        v23 = v24 >> 3;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF0)
      {
        v25 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        v26 = malloc_type_malloc(16 * v25, 0x600405C6656D0uLL);
      }

      else
      {
        v26 = 0;
      }

      v36 = &v26[16 * v22];
      v37 = *attributes;
      *v36 = *attributes;
      if (*(&v37 + 1))
      {
        atomic_fetch_add_explicit((*(&v37 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v38 = &v26[16 * v25];
      v20 = v36 + 16;
      v39 = self->_attributeSets._array.__begin_;
      v40 = (self->_attributeSets._array.__end_ - v39);
      v41 = (v36 - v40);
      memcpy((v36 - v40), v39, v40);
      v42 = self->_attributeSets._array.__begin_;
      self->_attributeSets._array.__begin_ = v41;
      self->_attributeSets._array.__end_ = v20;
      self->_attributeSets._array.__cap_ = v38;
      if (v42)
      {
        free(v42);
      }
    }

    else
    {
      v19 = *(attributes + 1);
      *end = *attributes;
      *(end + 1) = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      v20 = end + 16;
    }

    self->_attributeSets._array.__end_ = v20;
    return ((v20 - self->_attributeSets._array.__begin_) >> 4) - 1;
  }

  else
  {
    v27 = self->_attributeSets._array.__end_;
    v28 = self->_attributeSets._array.__begin_;
    v29 = v27 - v28;
    if (v27 == v28)
    {
      LOBYTE(v30) = 0;
    }

    else
    {
      v30 = 0;
      v31 = v29 >> 4;
      do
      {
        v32 = *&v28[16 * v30];
        if (*(v7 + 33) == v32[33])
        {
          if (!*(v7 + 33))
          {
            return v30;
          }

          v33 = (*v32 + 4);
          v34 = (*v7 + 4);
          v35 = *(v7 + 33);
          while (*(v34 - 1) == *(v33 - 1) && *v34 == *v33)
          {
            v33 += 2;
            v34 += 2;
            if (!--v35)
            {
              return v30;
            }
          }
        }

        ++v30;
      }

      while (v30 < v31);
    }
  }

  return v30;
}

- (const)commitRangesToVerticalVenueWallStrokeRenderItemBatcher:(void *)batcher forMeshAtIndex:(unint64_t)index cullingMask:(unsigned int)mask
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1F2A4E800;
  v8[3] = v8;
  _setupRenderItemBatcherForCullingMask(batcher, index, &self->_venueWallVerticalStrokeCullingGroups, mask, v8);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v8);
  return ggl::Batcher::commit(batcher, 0xC8u, v6);
}

- (const)commitRangesToHorizontalVenueWallStrokeRenderItemBatcher:(void *)batcher forMeshAtIndex:(unint64_t)index cullingMask:(unsigned int)mask
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1F2A4E800;
  v8[3] = v8;
  _setupRenderItemBatcherForCullingMask(batcher, index, &self->_venueWallHorizontalStrokeCullingGroups, mask, v8);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v8);
  return ggl::Batcher::commit(batcher, 0xC8u, v6);
}

- (const)commitRangesToVenueWallEndCapRenderItemBatcher:(void *)batcher forMeshAtIndex:(unint64_t)index cullingMask:(unsigned int)mask
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1F2A4E800;
  v8[3] = v8;
  _setupRenderItemBatcherForCullingMask(batcher, index, &self->_venueEndCapCullingGroups, mask, v8);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v8);
  return ggl::Batcher::commit(batcher, 0xC8u, v6);
}

- (const)commitRangesToVenueWallRenderItemBatcher:(void *)batcher forMeshAtIndex:(unint64_t)index cullingMask:(unsigned int)mask
{
  v8[4] = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1F2A4E800;
  v8[3] = v8;
  _setupRenderItemBatcherForCullingMask(batcher, index, &self->_venueCullingGroups, mask, v8);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v8);
  return ggl::Batcher::commit(batcher, 0xC8u, v6);
}

- (const)commitRangesToStrokeRenderItemBatcher:(void *)batcher forMeshAtIndex:(unint64_t)index cullingMask:(unsigned int)mask featureIdPredicate:(function<BOOL (unsigned long)long
{
  v13 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v12, a6);
  _setupRenderItemBatcherForCullingMask(batcher, index, &self->_strokeCullingGroups, mask, v12);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v12);
  return ggl::Batcher::commit(batcher, 0, v10);
}

- (const)commitRangesToFillRenderItemBatcher:(void *)batcher forMeshAtIndex:(unint64_t)index cullingMask:(unsigned int)mask featureIdPredicate:(function<BOOL (unsigned long)long
{
  v13 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(unsigned long long)>::__value_func[abi:nn200100](v12, a6);
  _setupRenderItemBatcherForCullingMask(batcher, index, &self->_fillCullingGroups, mask, v12);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v12);
  return ggl::Batcher::commit(batcher, 0, v10);
}

- (Matrix<float,)size
{
  p_boundingBox = &self->_boundingBox;
  for (i = 659; i != 662; ++i)
  {
    v4 = p_boundingBox->_maximum._e[0];
    v5 = p_boundingBox->_minimum._e[0];
    p_boundingBox = (p_boundingBox + 4);
    v9[i - 659] = v4 - v5;
  }

  v6 = fmaxf(v9[0], 0.0);
  v7 = fmaxf(v9[1], 0.0);
  v8 = fmaxf(v9[2], 0.0);
  result._e[2] = v8;
  result._e[1] = v7;
  result._e[0] = v6;
  return result;
}

- (VKPolygonalItemGroup)initWithStyleQuery:(void *)query tileZoom:(float)zoom fixedAroundCentroid:(const void *)centroid contentScale:(float)scale storage:(shared_ptr<md::MeshSetStorage>)storage
{
  ptr = storage.__ptr_;
  v25.receiver = self;
  v25.super_class = VKPolygonalItemGroup;
  v12 = [(VKPolygonalItemGroup *)&v25 init:query];
  v13 = v12;
  if (v12)
  {
    v12->_tileZoom = zoom;
    v12->_contentScale = scale;
    v14 = *query;
    v15 = *(v14 + 16);
    if (v15 && (v15 = std::__shared_weak_count::lock(v15)) != 0)
    {
      v16 = *(v14 + 8);
    }

    else
    {
      v16 = 0;
    }

    v13->_styleManager.__ptr_ = v16;
    cntrl = v13->_styleManager.__cntrl_;
    v13->_styleManager.__cntrl_ = v15;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    *v13->_boundingBox._minimum._e = xmmword_1B33B1330;
    *&v13->_boundingBox._maximum._e[1] = 0x80000000800000;
    if (centroid)
    {
      v13->_centroid._e[0] = *centroid;
      v18 = *(centroid + 1);
      v19 = 1;
    }

    else
    {
      v19 = 0;
      v13->_centroid._e[0] = 0.0;
      v18 = 0.0;
    }

    v13->_isFixedSize = v19;
    v13->_centroid._e[1] = v18;
    v20 = *ptr;
    v21 = *(ptr + 1);
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = v13->_meshStorage.__cntrl_;
    v13->_meshStorage.__ptr_ = v20;
    v13->_meshStorage.__cntrl_ = v21;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
      v20 = v13->_meshStorage.__ptr_;
    }

    md::MeshSet<ggl::PolygonBase::CompressedMeshMesh,ggl::PolygonBase::CompressedVbo>::MeshSet(&__p, v20);
  }

  return 0;
}

- (VKPolygonalItemGroup)initWithStyleQuery:(void *)query tileZoom:(float)zoom fixedAroundCentroid:(const void *)centroid contentScale:(float)scale
{
  v8 = 0;
  v9 = 0;
  v6 = [VKPolygonalItemGroup initWithStyleQuery:"initWithStyleQuery:tileZoom:fixedAroundCentroid:contentScale:storage:" tileZoom:query fixedAroundCentroid:centroid contentScale:&v8 storage:?];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  return v6;
}

@end