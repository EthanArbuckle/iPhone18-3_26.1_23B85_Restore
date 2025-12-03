@interface VKPolygonGroup
- (BOOL)addFillForSection:(const void *)section precision:(unsigned __int8)precision styleIndex:(unsigned int)index cullingMask:(unsigned int)mask accessor:(ResourceAccessor *)accessor triangulator:(void *)triangulator;
- (FeatureAttributeSet)styleAttributes;
- (VKPolygonGroup)initWithStyleQuery:(void *)query tileZoom:(float)zoom fixedAroundCentroid:(const void *)centroid contentScale:(float)scale;
- (VKPolygonGroup)initWithStyleQuery:(void *)query tileZoom:(float)zoom fixedAroundCentroid:(const void *)centroid contentScale:(float)scale storage:(shared_ptr<md::MeshSetStorage>)storage;
- (__n128)addFillForSection:precision:styleIndex:cullingMask:accessor:triangulator:;
- (id).cxx_construct;
- (id)addStrokeForSection:paddedCount:key:attributes:styles:cullingMask:accessor:;
- (shared_ptr<ggl::Texture2D>)_textureForName:(const void *)name textureManager:(void *)manager;
- (unint64_t)estimatedCost;
- (unsigned)createStrokePointStyleList:(void *)list section:(unint64_t)section outPointStyles:(void *)styles withRounder:(PolygonRound *)rounder;
- (unsigned)initialStyleIndexForSection:(const void *)section attributes:(const void *)attributes styles:(const void *)styles;
- (unsigned)styleIndexForAttributes:(const void *)attributes edgePair:(const GeoCodecsFeatureStylePair *)pair;
- (void)addFillForSection:precision:styleIndex:cullingMask:accessor:triangulator:;
- (void)addPolygon:(void *)polygon accessor:(ResourceAccessor *)accessor triangulator:(void *)triangulator withRounder:(PolygonRound *)rounder;
- (void)addStrokeForSection:(const void *)section paddedCount:(unsigned int)count key:(pair<const void *) attributes:(unsigned long>)attributes styles:(const void *)styles cullingMask:(void *)mask accessor:(unsigned int)accessor;
- (void)addStrokeForSection:paddedCount:key:attributes:styles:cullingMask:accessor:;
- (void)didFinishAddingData;
- (void)enclosePointsInBoundingBox:(const void *)box count:(unint64_t)count;
- (void)prepareForPolygon:(void *)polygon withRounder:(PolygonRound *)rounder;
- (void)prepareToStrokeSection:(const void *)section key:(const void *)key styles:(void *)styles paddedCount:(unsigned int)count;
- (void)updateTextures:(unsigned __int8)textures textureManager:(void *)manager;
- (void)updateTexturesIfNecessary:(float)necessary textureManager:(void *)manager;
- (void)willAddDataWithAccessor:(ResourceAccessor *)accessor;
@end

@implementation VKPolygonGroup

- (id).cxx_construct
{
  *(self + 2840) = 0;
  *(self + 3024) = 0;
  *(self + 380) = 0;
  *(self + 381) = 0;
  *(self + 379) = 0;
  *(self + 382) = 0;
  *(self + 383) = 0;
  *(self + 384) = 0;
  *(self + 385) = 0;
  *(self + 386) = 0;
  *(self + 387) = 0;
  *(self + 388) = 0;
  *(self + 389) = 0;
  return self;
}

- (unint64_t)estimatedCost
{
  begin = self->super._fillMeshes.__begin_;
  end = self->super._fillMeshes.__end_;
  if (begin == end)
  {
    result = 0;
  }

  else
  {
    result = 0;
    do
    {
      v6 = **(*begin + 64);
      if (v6)
      {
        v6 = *(v6 + 48) - *(v6 + 40);
      }

      v7 = *(*begin + 96);
      if (v7)
      {
        v6 = *(v7 + 48) + v6 - *(v7 + 40);
      }

      result += v6;
      begin += 16;
    }

    while (begin != end);
  }

  p_strokeMeshes = &self->_strokeMeshes;
  v9 = self->_strokeMeshes.__begin_;
  v10 = p_strokeMeshes->__end_;
  while (v9 != v10)
  {
    v11 = **(*v9 + 64);
    if (v11)
    {
      v11 = *(v11 + 48) - *(v11 + 40);
    }

    v12 = *(*v9 + 96);
    if (v12)
    {
      v11 = *(v12 + 48) + v11 - *(v12 + 40);
    }

    result += v11;
    v9 += 16;
  }

  return result;
}

- (void)updateTextures:(unsigned __int8)textures textureManager:(void *)manager
{
  texturesCopy = textures;
  [(VKPolygonalItemGroup *)self updateCachedStyles];
  LOWORD(v34.__r_.__value_.__l.__data_) = 0;
  v7 = [(VKPolygonalItemGroup *)self styleQueries:&v34];
  v8 = **v7;
  v9 = (*v7)[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v35, v8, v9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (v38 == 1)
  {
    if (texturesCopy >= 0x17)
    {
      v10 = 23;
    }

    else
    {
      v10 = texturesCopy;
    }

    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&v34, v35[3], 0x88u, v10, 2);
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      [(VKPolygonGroup *)self _textureForName:&v34 textureManager:manager];
      v12 = *&__p.__r_.__value_.__l.__data_;
    }

    else
    {
      v12 = 0;
    }

    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    cntrl = self->_sourceTexture.__cntrl_;
    self->_sourceTexture = v12;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](__p.__r_.__value_.__l.__size_);
      }
    }

    v18 = v35[3];
    if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v18, 0x88u, texturesCopy))
    {
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&__p, v18, 0x88u, v10, 1);
      v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v19 = __p.__r_.__value_.__l.__size_;
      }

      if (v19)
      {
        [(VKPolygonGroup *)self _textureForName:&__p textureManager:manager];
        v20 = *&v32.__r_.__value_.__l.__data_;
      }

      else
      {
        v20 = 0;
      }

      *&v32.__r_.__value_.__l.__data_ = 0uLL;
      v22 = self->_targetTexture.__cntrl_;
      self->_targetTexture = v20;
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v22);
        if (v32.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v32.__r_.__value_.__l.__size_);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v21 = self->_targetTexture.__cntrl_;
      self->_targetTexture.__ptr_ = 0;
      self->_targetTexture.__cntrl_ = 0;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v21);
      }
    }

    gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&__p, v35[3], 0x14Du, v10, 2);
    v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v23 = __p.__r_.__value_.__l.__size_;
    }

    if (v23)
    {
      [(VKPolygonGroup *)self _textureForName:&__p textureManager:manager];
      v24 = *&v32.__r_.__value_.__l.__data_;
    }

    else
    {
      v24 = 0;
    }

    *&v32.__r_.__value_.__l.__data_ = 0uLL;
    v25 = self->_sourceRoofTexture.__cntrl_;
    self->_sourceRoofTexture = v24;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
      if (v32.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v32.__r_.__value_.__l.__size_);
      }
    }

    v26 = v35[3];
    if (gss::QueryableLocker<gss::PropertyID>::hasTargetValueForKeyAtZ(v26, 0x14Du, texturesCopy))
    {
      gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<std::string>(&v32, v26, 0x14Du, v10, 1);
      v27 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = v32.__r_.__value_.__l.__size_;
      }

      if (v27)
      {
        [(VKPolygonGroup *)self _textureForName:&v32 textureManager:manager];
        v28 = v31;
      }

      else
      {
        v28 = 0;
      }

      v30 = self->_targetRoofTexture.__cntrl_;
      self->_targetRoofTexture = v28;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v30);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v29 = self->_targetRoofTexture.__cntrl_;
      self->_targetRoofTexture.__ptr_ = 0;
      self->_targetRoofTexture.__cntrl_ = 0;
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v29);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v13 = self->_sourceTexture.__cntrl_;
    self->_sourceTexture.__ptr_ = 0;
    self->_sourceTexture.__cntrl_ = 0;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v14 = self->_targetTexture.__cntrl_;
    self->_targetTexture.__ptr_ = 0;
    self->_targetTexture.__cntrl_ = 0;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    v15 = self->_sourceRoofTexture.__cntrl_;
    self->_sourceRoofTexture.__ptr_ = 0;
    self->_sourceRoofTexture.__cntrl_ = 0;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    v16 = self->_targetRoofTexture.__cntrl_;
    self->_targetRoofTexture.__ptr_ = 0;
    self->_targetRoofTexture.__cntrl_ = 0;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }
  }

  self->_lastResolvedZoom = texturesCopy;
  if (v38 == 1)
  {
    (*(*v35 + 56))(v35);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }
}

- (void)addStrokeForSection:(const void *)section paddedCount:(unsigned int)count key:(pair<const void *) attributes:(unsigned long>)attributes styles:(const void *)styles cullingMask:(void *)mask accessor:(unsigned int)accessor
{
  v14 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  *buf = &attributesCopy;
  v10 = std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__emplace_unique_key_args<std::pair<void const*,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<void const*,unsigned long> const&>,std::tuple<>>(&self->super._polygonEdges.__table_.__bucket_list_.__ptr_, attributes.var0, attributes.var1);
  if (v10[5] != v10[4])
  {
    selfCopy = self;
    operator new();
  }
}

- (void)addStrokeForSection:paddedCount:key:attributes:styles:cullingMask:accessor:
{

  JUMPOUT(0x1B8C62190);
}

- (id)addStrokeForSection:paddedCount:key:attributes:styles:cullingMask:accessor:
{
  *a2 = &unk_1F2A574B0;
  v4 = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = v4;
  result = *(self + 32);
  *(a2 + 32) = result;
  v6 = *(self + 48);
  *(a2 + 40) = *(self + 40);
  *(a2 + 48) = v6;
  return result;
}

- (unsigned)initialStyleIndexForSection:(const void *)section attributes:(const void *)attributes styles:(const void *)styles
{
  v5 = *(styles + 1);
  while (v5 != *styles)
  {
    v6 = *(v5 - 12);
    v5 -= 12;
    if (v6 == 1)
    {
      v8 = *(v5 + 4);
      return [(VKPolygonGroup *)self styleIndexForAttributes:attributes edgePair:&v8];
    }
  }

  return [(VKPolygonalItemGroup *)self indexForGeoFeatureAttributes:attributes];
}

- (unsigned)styleIndexForAttributes:(const void *)attributes edgePair:(const GeoCodecsFeatureStylePair *)pair
{
  geo::codec::copyFeatureStyleAttributes(&v12, *attributes);
  v6 = v12;
  FeatureStyleAttributes::replaceAttributes(v12, pair, 1);
  v7 = v13;
  v10 = v6;
  v11 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = [(VKPolygonalItemGroup *)self indexForGeoFeatureAttributes:&v10];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return v8;
}

- (BOOL)addFillForSection:(const void *)section precision:(unsigned __int8)precision styleIndex:(unsigned int)index cullingMask:(unsigned int)mask accessor:(ResourceAccessor *)accessor triangulator:(void *)triangulator
{
  md::Triangulator<float>::triangulate(triangulator, *(section + 1), *(section + 11));
  if (*(triangulator + 12) != *(triangulator + 11))
  {
    [(VKPolygonalItemGroup *)self size];
    operator new();
  }

  return 0;
}

- (void)addFillForSection:precision:styleIndex:cullingMask:accessor:triangulator:
{
  v5 = *(self + 8);
  v6 = v5[11];
  if (v6)
  {
    v7 = *(self + 16);
    v8 = *(self + 24);
    v9 = *v7;
    v10 = v7[1];
    v11 = v8[1];
    v12 = **(self + 32) << 8;
    v13 = 1.0 / *v8;
    v14 = (*(a4 + 40) + 8 * *a2 + 4);
    v15 = (v5[1] + 4);
    v16 = 1.0 / v11;
    do
    {
      v17 = ((*v15 - v10) * 65535.0) * v16;
      *(v14 - 2) = (((*(v15 - 1) - v9) * 65535.0) * v13);
      *(v14 - 1) = v17;
      *v14 = 0x7FFF;
      v14[1] = v12;
      v14 += 4;
      v15 += 2;
      --v6;
    }

    while (v6);
  }

  v18 = *(*(self + 40) + 88);
  v19 = *(*(self + 40) + 96) - v18;
  if (v19)
  {
    v20 = v19 >> 1;
    v21 = *a2;
    v22 = (*(a5 + 40) + 2 * *a3);
    if (v20 <= 1)
    {
      v20 = 1;
    }

    do
    {
      v23 = *v18++;
      *v22++ = v23 + v21;
      --v20;
    }

    while (v20);
  }

  v24 = **(self + 48);
  v25 = **(self + 56);
  v26 = *(v24 + 152);
  v27 = *a3;
  v28 = v5[13];
  _addRangeToList(v24 + 240, v25, v26, &v27);
}

- (__n128)addFillForSection:precision:styleIndex:cullingMask:accessor:triangulator:
{
  *a2 = &unk_1F2A57468;
  result = *(self + 8);
  v3 = *(self + 24);
  v4 = *(self + 40);
  *(a2 + 56) = *(self + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

- (void)addPolygon:(void *)polygon accessor:(ResourceAccessor *)accessor triangulator:(void *)triangulator withRounder:(PolygonRound *)rounder
{
  v9 = *(polygon + 24);
  v20 = 0;
  StrokeSpecifications = geo::codec::polygonFeatureGetStrokeSpecifications(polygon, &v20);
  [(VKPolygonalItemGroup *)self indexForGeoFeatureAttributes:polygon + 24];
  if (v9)
  {
    v11 = 0;
    for (i = 0; i != v9; ++i)
    {
      if (v11 < v20)
      {
        v13 = &StrokeSpecifications->__vftable + 4 * v11 + 1;
        while (1)
        {
          v14 = *v13;
          v13 += 4;
          if (v14 >= i)
          {
            break;
          }

          if (v20 == ++v11)
          {
            v11 = v20;
            break;
          }
        }
      }

      v19 = 0;
      v15 = geo::codec::multiSectionFeaturePoints(polygon, i, &v19);
      __p = 0;
      v17 = 0;
      v18 = 0;
      [(VKPolygonGroup *)self createStrokePointStyleList:polygon section:i outPointStyles:&__p withRounder:rounder];
      if (geo::codec::multiSectionFeaturePrecision(polygon) <= 0x10 && v19 >= 3)
      {
        self->super._cullingMask |= ggl::CullingGrid::intersectedCellsForRibbon(v19, v15, 1);
        if (rounder)
        {
          operator new();
        }

        operator new();
      }

      if (__p)
      {
        v17 = __p;
        operator delete(__p);
      }
    }
  }
}

- (void)didFinishAddingData
{
  v9.receiver = self;
  v9.super_class = VKPolygonGroup;
  [(VKPolygonalItemGroup *)&v9 didFinishAddingData];
  p_strokeMeshInfo = &self->_strokeMeshInfo;
  ptr = self->_strokeMeshInfo.var0.__val_._storageClient.__ptr_;
  if (ptr && *ptr == self->_strokeMeshInfo.var0.__val_._storage)
  {
    *(ptr + 80) = 1;
  }

  v5 = self->_strokeMeshInfo.var0.__val_._internalStorage.__ptr_;
  if (v5)
  {
    md::MeshSetStorage::finalize(v5);
  }

  ggl::BufferMemory::BufferMemory(v10);
  ggl::BufferMemory::operator=(&self->_strokeMeshInfo.var0.__val_._vertexDataWrite, v10);
  ggl::BufferMemory::~BufferMemory(v10);
  ggl::BufferMemory::BufferMemory(v10);
  ggl::BufferMemory::operator=(&self->_strokeMeshInfo.var0.__val_._indexDataWrite, v10);
  ggl::BufferMemory::~BufferMemory(v10);
  p_strokeMeshes = &self->_strokeMeshes;
  std::vector<std::shared_ptr<ggl::Texture2D>>::__vdeallocate(p_strokeMeshes);
  *p_strokeMeshes = *&p_strokeMeshInfo->var0.__val_._meshes.__begin_;
  p_strokeMeshes[2] = p_strokeMeshInfo->var0.__val_._meshes.__cap_;
  p_strokeMeshInfo->var0.__val_._meshes.__begin_ = 0;
  p_strokeMeshInfo->var0.__val_._meshes.__end_ = 0;
  p_strokeMeshInfo->var0.__val_._meshes.__cap_ = 0;
  if (p_strokeMeshInfo->__engaged_)
  {
    cntrl = p_strokeMeshInfo->var0.__val_._storageClient.__cntrl_;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    std::unique_ptr<md::MeshSetStorage>::reset[abi:nn200100](&p_strokeMeshInfo->var0.__val_._internalStorage, 0);
    ggl::BufferMemory::~BufferMemory(&p_strokeMeshInfo->var0.__val_._indexDataWrite);
    ggl::BufferMemory::~BufferMemory(&p_strokeMeshInfo->var0.__val_._vertexDataWrite);
    v10[0] = &p_strokeMeshInfo->var0.__val_._meshes.__begin_;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](v10);
    begin = p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
    if (p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_)
    {
      p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__end_ = begin;
      operator delete(begin);
    }

    p_strokeMeshInfo->__engaged_ = 0;
  }
}

- (void)willAddDataWithAccessor:(ResourceAccessor *)accessor
{
  v14 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VKPolygonGroup;
  [(VKPolygonalItemGroup *)&v10 willAddDataWithAccessor:?];
  p_strokeMeshInfo = &self->_strokeMeshInfo;
  ptr = self->_strokeMeshInfo.var0.__val_._internalStorage.__ptr_;
  if (ptr)
  {
    md::MeshSetStorage::prepareStorage(ptr, accessor);
  }

  begin = p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
  end = self->_strokeMeshInfo.var0.__val_._vertexAndIndexCounts.__end_;
  if (p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_ != end)
  {
    do
    {
      if (*begin && *(begin + 1))
      {
        md::MeshSetStorage::buildSubVertexData(&v12, self->_strokeMeshInfo.var0.__val_._storage, self->_strokeMeshInfo.var0.__val_._storageClient.__ptr_, "Polygon Stroke Vertex Data", *begin);
        md::MeshSetStorage::buildSubIndexData(&v11, self->_strokeMeshInfo.var0.__val_._storage, self->_strokeMeshInfo.var0.__val_._storageClient.__ptr_, "Polygon Stroke Index Data", *(begin + 1));
        if (*(&v12 + 1))
        {
          atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }

      begin += 4;
    }

    while (begin != end);
  }

  v9 = self->_strokeMeshInfo.var0.__val_._meshes.__begin_;
  if (v9 != self->_strokeMeshInfo.var0.__val_._meshes.__end_)
  {
    ggl::DataAccess<ggl::TrafficBase::DefaultVbo>::DataAccess(v13, **(*v9 + 64), 0, *p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_, accessor);
    ggl::BufferMemory::operator=(&self->_strokeMeshInfo.var0.__val_._vertexDataWrite, v13);
    ggl::BufferMemory::~BufferMemory(v13);
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v13, *(*self->_strokeMeshInfo.var0.__val_._meshes.__begin_ + 96), 0, *(self->_strokeMeshInfo.var0.__val_._vertexAndIndexCounts.__begin_ + 1), 1, 1, accessor);
    ggl::BufferMemory::operator=(&self->_strokeMeshInfo.var0.__val_._indexDataWrite, v13);
    ggl::BufferMemory::~BufferMemory(v13);
  }
}

- (void)prepareToStrokeSection:(const void *)section key:(const void *)key styles:(void *)styles paddedCount:(unsigned int)count
{
  v9 = std::__hash_table<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::__unordered_map_hasher<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::hash<std::pair<void const*,unsigned long>>,std::equal_to<std::pair<void const*,unsigned long>>,true>,std::__unordered_map_equal<std::pair<void const*,unsigned long>,std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>,std::equal_to<std::pair<void const*,unsigned long>>,std::hash<std::pair<void const*,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<void const*,unsigned long>,std::vector<md::Edge>>>>::__emplace_unique_key_args<std::pair<void const*,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<void const*,unsigned long> const&>,std::tuple<>>(&self->super._polygonEdges.__table_.__bucket_list_.__ptr_, *key, *(key + 1));
  std::vector<md::Edge>::reserve(v9 + 4, *(section + 11));
  countCopy = count;
  v11 = *(section + 11);
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    countCopy2 = count;
    countCopy3 = count;
    countCopy4 = count;
    do
    {
      v15 = *(*styles + 12 * v13) + v12;
      if ((*(*(section + 8) + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13))
      {
        v16 = v13 + 1;
        v12 = v15 + 1;
      }

      else
      {
        v17 = *(section + 1);
        v18 = *(v17 + 8 * v13);
        v16 = v13 + 1;
        v19 = *(v17 + 8 * ((v13 + 1) % v11));
        v12 = v15 + 1;
        v20 = (v15 + 1) % countCopy;
        v21 = (v13 + 1) % countCopy2;
        v22 = v9[5];
        v23 = v9[6];
        if (v22 >= v23)
        {
          v25 = v9[4];
          v26 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v25) >> 3);
          v27 = v26 + 1;
          if ((v26 + 1) > 0x492492492492492)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v28 = 0x6DB6DB6DB6DB6DB7 * ((v23 - v25) >> 3);
          if (2 * v28 > v27)
          {
            v27 = 2 * v28;
          }

          if (v28 >= 0x249249249249249)
          {
            v29 = 0x492492492492492;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::variant<gm::Box<float,3>,gm::Sphere<float,3,std::enable_if<true,void>>,geo::OrientedBox<float,3u,float,float>,geo::OrientedBox<float,2u,float,float>>>>(v29);
          }

          v30 = 56 * v26;
          *v30 = v18;
          *(v30 + 8) = 0;
          *(v30 + 12) = v19;
          *(v30 + 20) = 0;
          *(v30 + 24) = v15;
          *(v30 + 32) = v20;
          *(v30 + 40) = v13;
          *(v30 + 48) = v21;
          v31 = v9[4];
          v32 = v9[5];
          v33 = 56 * v26 + v31 - v32;
          if (v31 != v32)
          {
            v34 = (v30 + v31 - v32);
            do
            {
              v35 = *v31;
              v36 = v31[1];
              v37 = v31[2];
              *(v34 + 6) = *(v31 + 6);
              *(v34 + 1) = v36;
              *(v34 + 2) = v37;
              *v34 = v35;
              v34 += 56;
              v31 = (v31 + 56);
            }

            while (v31 != v32);
            v31 = v9[4];
          }

          v24 = v30 + 56;
          v9[4] = v33;
          v9[5] = v30 + 56;
          v9[6] = 0;
          if (v31)
          {
            operator delete(v31);
          }

          countCopy2 = countCopy3;
          countCopy = countCopy4;
        }

        else
        {
          *v22 = v18;
          *(v22 + 8) = 0;
          *(v22 + 12) = v19;
          *(v22 + 20) = 0;
          *(v22 + 24) = v15;
          *(v22 + 32) = v20;
          v24 = v22 + 56;
          *(v22 + 40) = v13;
          *(v22 + 48) = v21;
        }

        v9[5] = v24;
        v11 = *(section + 11);
      }

      v13 = v16;
    }

    while (v16 < v11);
  }

  v38 = v9[5] - v9[4];
  if (v38)
  {
    if (countCopy < 0x8000)
    {
      v40 = 0x924924924924924ALL * (v38 >> 3);
      p_strokeMeshInfo = &self->_strokeMeshInfo;
      end = self->_strokeMeshInfo.var0.__val_._vertexAndIndexCounts.__end_;
      v43 = *(end - 4);
      if (2 * countCopy <= ~v43)
      {
        *(end - 4) = v43 + 2 * countCopy;
        *(end - 1) += v40;
      }

      else
      {
        cap = self->_strokeMeshInfo.var0.__val_._vertexAndIndexCounts.__cap_;
        if (end >= cap)
        {
          begin = p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
          v47 = end - p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
          v48 = v47 >> 3;
          v49 = (v47 >> 3) + 1;
          if (v49 >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v50 = countCopy;
          v51 = cap - begin;
          if (v51 >> 2 > v49)
          {
            v49 = v51 >> 2;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFF8)
          {
            v52 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v52 = v49;
          }

          if (v52)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned short,unsigned int>>>(v52);
          }

          v53 = 8 * v48;
          *v53 = 2 * countCopy;
          *(v53 + 4) = v40;
          v45 = (8 * v48 + 8);
          v54 = (v53 - 8 * (v47 >> 3));
          memcpy(v54, begin, v47);
          v55 = p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_;
          p_strokeMeshInfo->var0.__val_._vertexAndIndexCounts.__begin_ = v54;
          self->_strokeMeshInfo.var0.__val_._vertexAndIndexCounts.__end_ = v45;
          self->_strokeMeshInfo.var0.__val_._vertexAndIndexCounts.__cap_ = 0;
          if (v55)
          {
            operator delete(v55);
          }

          countCopy = v50;
        }

        else
        {
          *end = 2 * countCopy;
          *(end + 1) = v40;
          v45 = end + 4;
        }

        self->_strokeMeshInfo.var0.__val_._vertexAndIndexCounts.__end_ = v45;
      }

      storage = self->_strokeMeshInfo.var0.__val_._storage;
      ptr = self->_strokeMeshInfo.var0.__val_._storageClient.__ptr_;
      cntrl = self->_strokeMeshInfo.var0.__val_._storageClient.__cntrl_;
      if (cntrl)
      {
        atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
      }

      if (ptr && *ptr == storage && (*(storage + 40) & 1) == 0)
      {
        v59 = 48 * countCopy;
        v60 = *(storage + 1) + v40;
        *storage += v59;
        *(storage + 1) = v60;
        v61 = *(ptr + 2) + v59;
        v62 = *(ptr + 3) + v40;
        *(ptr + 2) = v61;
        *(ptr + 3) = v62;
      }

      if (cntrl)
      {

        std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
      }
    }

    else
    {
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v39 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B2754000, v39, OS_LOG_TYPE_ERROR, "MeshSet: Cannot prepare space polygons points: polygon is too large", buf, 2u);
      }
    }
  }
}

- (void)enclosePointsInBoundingBox:(const void *)box count:(unint64_t)count
{
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      v9 = *(box + i);
      v10 = 0;
      p_maximum = &self->super._boundingBox._maximum;
      for (j = 2624; j != 2636; j += 4)
      {
        v7 = (&v9 + j - 2624);
        v8 = *v7;
        p_maximum[-1]._e[0] = fminf(*v7, p_maximum[-1]._e[0]);
        p_maximum->_e[0] = fmaxf(p_maximum->_e[0], v8);
        p_maximum = (p_maximum + 4);
      }
    }
  }
}

- (void)prepareForPolygon:(void *)polygon withRounder:(PolygonRound *)rounder
{
  v7 = *(polygon + 24);
  v25 = 0;
  StrokeSpecifications = geo::codec::polygonFeatureGetStrokeSpecifications(polygon, &v25);
  [(VKPolygonalItemGroup *)self indexForGeoFeatureAttributes:polygon + 24];
  if (v25)
  {
    v9 = 0;
    v10 = &StrokeSpecifications->__shared_owners_ + 1;
    do
    {
      v17 = 56;
      v11 = *v10;
      v10 += 4;
      HIDWORD(v17) = v11;
      geo::codec::copyFeatureStyleAttributes(&__p, *(polygon + 3));
      v12 = __p;
      FeatureStyleAttributes::replaceAttributes(__p, &v17, 1);
      v13 = v19;
      v23 = v12;
      v24 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [(VKPolygonalItemGroup *)self indexForGeoFeatureAttributes:&v23];
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v24);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      ++v9;
    }

    while (v9 < v25);
  }

  v22 = 0x100000038;
  geo::codec::copyFeatureStyleAttributes(&v23, *(polygon + 3));
  v14 = v23;
  FeatureStyleAttributes::replaceAttributes(v23, &v22, 1);
  v15 = v24;
  __p = v14;
  v19 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(VKPolygonalItemGroup *)self indexForGeoFeatureAttributes:&__p];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v21 = 0;
      geo::codec::multiSectionFeaturePoints(polygon, i, &v21);
      __p = 0;
      v19 = 0;
      v20 = 0;
      [(VKPolygonGroup *)self createStrokePointStyleList:polygon section:i outPointStyles:&__p withRounder:rounder];
      if (v21 >= 3)
      {
        if (rounder)
        {
          operator new();
        }

        operator new();
      }

      if (__p)
      {
        v19 = __p;
        operator delete(__p);
      }
    }
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }
}

- (unsigned)createStrokePointStyleList:(void *)list section:(unint64_t)section outPointStyles:(void *)styles withRounder:(PolygonRound *)rounder
{
  v69[3] = *MEMORY[0x1E69E9840];
  v68 = 0;
  StrokeSpecifications = geo::codec::polygonFeatureGetStrokeSpecifications(list, &v68);
  v67 = 0;
  CharacteristicPoints = geo::codec::polygonFeatureGetCharacteristicPoints(list, &v67);
  if (v68)
  {
    v10 = 0;
    v11 = &StrokeSpecifications->__vftable + 1;
    while (1)
    {
      v12 = *v11;
      v11 += 4;
      if (v12 >= section)
      {
        break;
      }

      if (v68 == ++v10)
      {
        v10 = v68;
        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if (v67)
  {
    v13 = 0;
    p_shared_owners = &CharacteristicPoints->__shared_owners_;
    while (1)
    {
      v15 = *p_shared_owners;
      p_shared_owners = (p_shared_owners + 100);
      if (v15 >= section)
      {
        break;
      }

      if (v67 == ++v13)
      {
        v13 = v67;
        break;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v66 = 0;
  v58 = geo::codec::multiSectionFeaturePoints(list, section, &v66);
  v16 = v66;
  if (v66 < 3)
  {
    v17 = 0;
    v54 = *styles;
    *v54 = 0;
    *(v54 + 4) = 56;
    return v17;
  }

  v17 = 0;
  v18 = 0;
  shared_owners_high = 0;
  rounderCopy = rounder;
  sectionCopy = section;
  do
  {
    if (v10 < v68 && (v19 = (StrokeSpecifications + 16 * v10), HIDWORD(v19->__vftable) == section) && v18 == LODWORD(v19->__shared_owners_))
    {
      shared_owners_high = HIDWORD(v19->__shared_owners_);
      ++v10;
      v20 = 1;
      if (!rounder)
      {
        goto LABEL_35;
      }
    }

    else if (v13 < v67 && (v21 = CharacteristicPoints + 100 * v13, *(v21 + 2) == section) && v18 == *(v21 + 3))
    {
      v20 = v21[28] & 1;
      if (v20)
      {
        v22 = 1;
      }

      else
      {
        v22 = shared_owners_high;
      }

      shared_owners_high = v22;
      ++v13;
      if (!rounder)
      {
        goto LABEL_35;
      }
    }

    else if (v13 && (v23 = CharacteristicPoints + 100 * v13, *(v23 - 23) == section) && v18 == *(v23 - 22) + 1)
    {
      v20 = *(v23 - 72) & 1;
      if (v20)
      {
        v24 = 0;
      }

      else
      {
        v24 = shared_owners_high;
      }

      shared_owners_high = v24;
      if (!rounder)
      {
LABEL_35:
        v26 = *(styles + 1);
        v25 = *(styles + 2);
        if (v26 >= v25)
        {
          v45 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *styles) >> 2);
          v46 = v45 + 1;
          if (v45 + 1 > 0x1555555555555555)
          {
LABEL_79:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v47 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *styles) >> 2);
          if (2 * v47 > v46)
          {
            v46 = 2 * v47;
          }

          if (v47 >= 0xAAAAAAAAAAAAAAALL)
          {
            v48 = 0x1555555555555555;
          }

          else
          {
            v48 = v46;
          }

          if (v48)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<BOOL,GeoCodecsFeatureStylePair>>>(v48);
          }

          v49 = 12 * v45;
          *v49 = v20;
          *(v49 + 4) = (shared_owners_high << 32) | 0x38;
          v27 = 12 * v45 + 12;
          v50 = *(styles + 1) - *styles;
          v51 = v49 - v50;
          memcpy((v49 - v50), *styles, v50);
          v52 = *styles;
          *styles = v51;
          *(styles + 1) = v27;
          *(styles + 2) = 0;
          if (v52)
          {
            operator delete(v52);
          }

          rounder = rounderCopy;
        }

        else
        {
          *v26 = v20;
          *(v26 + 4) = (shared_owners_high << 32) | 0x38;
          v27 = v26 + 12;
        }

        *(styles + 1) = v27;
        v17 += v20 + 1;
        ++v18;
        goto LABEL_73;
      }
    }

    else
    {
      v20 = 0;
      if (!rounder)
      {
        goto LABEL_35;
      }
    }

    v28 = v18 + 1;
    v29 = *(&v58->__vftable + v18);
    v30 = *(&v58->__vftable + (v18 + 1) % v16);
    v69[0] = *(&v58->__vftable + (v18 + v16 - 1) % v16);
    v69[1] = v29;
    v69[2] = v30;
    v31.i64[0] = v29;
    v31.i64[1] = v29;
    if (vmaxv_u16(vmovn_s32(vceqq_f32(v31, xmmword_1B33B09C0))))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(1uLL);
    }

    md::PolygonRound::smoothTwoSegments(&__p, &rounder->var0, v69);
    v32 = __p;
    if (v65 != __p)
    {
      v61 = v18 + 1;
      v62 = v10;
      v33 = (shared_owners_high << 32) | 0x38;
      v34 = *(styles + 1);
      if (((v65 - __p) >> 3) <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = (v65 - __p) >> 3;
      }

      do
      {
        v36 = *(styles + 2);
        if (v34 >= v36)
        {
          v37 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *styles) >> 2);
          v38 = v37 + 1;
          if (v37 + 1 > 0x1555555555555555)
          {
            goto LABEL_79;
          }

          v39 = 0xAAAAAAAAAAAAAAABLL * ((v36 - *styles) >> 2);
          if (2 * v39 > v38)
          {
            v38 = 2 * v39;
          }

          if (v39 >= 0xAAAAAAAAAAAAAAALL)
          {
            v40 = 0x1555555555555555;
          }

          else
          {
            v40 = v38;
          }

          if (v40)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<BOOL,GeoCodecsFeatureStylePair>>>(v40);
          }

          v41 = 12 * v37;
          *v41 = v20;
          *(v41 + 4) = v33;
          v34 = 12 * v37 + 12;
          v42 = *(styles + 1) - *styles;
          v43 = v41 - v42;
          memcpy((v41 - v42), *styles, v42);
          v44 = *styles;
          *styles = v43;
          *(styles + 1) = v34;
          *(styles + 2) = 0;
          if (v44)
          {
            operator delete(v44);
          }
        }

        else
        {
          *v34 = v20;
          *(v34 + 4) = v33;
          v34 += 12;
        }

        *(styles + 1) = v34;
        v17 += (v20 + 1);
        --v35;
      }

      while (v35);
      rounder = rounderCopy;
      section = sectionCopy;
      v10 = v62;
      v28 = v61;
    }

    if (v32)
    {
      operator delete(v32);
    }

    v18 = v28;
LABEL_73:
    v16 = v66;
  }

  while (v18 < v66);
  v53 = *styles;
  if (*(*(styles + 1) - 4) != *(*styles + 8) && (*v53 & 1) == 0)
  {
    *v53 = 1;
    ++v17;
  }

  return v17;
}

- (void)updateTexturesIfNecessary:(float)necessary textureManager:(void *)manager
{
  if (self->_lastResolvedZoom != necessary)
  {
    [VKPolygonGroup updateTextures:"updateTextures:textureManager:" textureManager:?];
  }
}

- (FeatureAttributeSet)styleAttributes
{
  v4 = *([(VKPolygonalItemGroup *)self attributeSets]+ 24);

  md::createFeatureAttributeSet(retstr, v4);
  return result;
}

- (shared_ptr<ggl::Texture2D>)_textureForName:(const void *)name textureManager:(void *)manager
{
  LODWORD(v4) = 0;
  v5 = 0;
  std::allocate_shared[abi:nn200100]<ggl::SamplerState,std::allocator<ggl::SamplerState>,ggl::Wrap,ggl::Wrap,0>();
}

- (VKPolygonGroup)initWithStyleQuery:(void *)query tileZoom:(float)zoom fixedAroundCentroid:(const void *)centroid contentScale:(float)scale storage:(shared_ptr<md::MeshSetStorage>)storage
{
  ptr = storage.__ptr_;
  v20 = *MEMORY[0x1E69E9840];
  v8 = *(storage.__ptr_ + 1);
  v18 = *storage.__ptr_;
  v19 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17.receiver = self;
  v17.super_class = VKPolygonGroup;
  v9 = [(VKPolygonalItemGroup *)&v17 initWithStyleQuery:query tileZoom:centroid fixedAroundCentroid:&v18 contentScale:storage.__cntrl_ storage:?];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  if (v9)
  {
    v9->_lastResolvedZoom = -1;
    v10 = *ptr;
    ggl::BufferMemory::BufferMemory(v12);
    ggl::BufferMemory::BufferMemory(v13);
    v14 = 0;
    v15 = 0u;
    memset(v16, 0, sizeof(v16));
    *(&v15 + 6) = v10;
    if (!v10)
    {
      operator new();
    }

    operator new();
  }

  return 0;
}

- (VKPolygonGroup)initWithStyleQuery:(void *)query tileZoom:(float)zoom fixedAroundCentroid:(const void *)centroid contentScale:(float)scale
{
  v8 = 0;
  v9 = 0;
  v6 = [VKPolygonGroup initWithStyleQuery:"initWithStyleQuery:tileZoom:fixedAroundCentroid:contentScale:storage:" tileZoom:query fixedAroundCentroid:centroid contentScale:&v8 storage:?];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  return v6;
}

@end