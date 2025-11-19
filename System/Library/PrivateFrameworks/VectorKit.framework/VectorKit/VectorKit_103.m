uint64_t md::FlyoverMetaData::tileCacheLookup(md::FlyoverMetaData *this, const geo::QuadTile *a2, unsigned __int8 *a3, uint64_t a4, int a5)
{
  v39 = *(a3 + 4);
  v38[0] = *a3;
  v40 = *(a3 + 2);
  v41 = a3[24];
  v42 = a4;
  result = std::__hash_table<std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,std::__unordered_map_hasher<md::FlyoverMetaData::TileCacheEntry,std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,md::FlyoverMetaData::TileCacheEntryHash,std::equal_to<md::FlyoverMetaData::TileCacheEntry>,true>,std::__unordered_map_equal<md::FlyoverMetaData::TileCacheEntry,std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,std::equal_to<md::FlyoverMetaData::TileCacheEntry>,md::FlyoverMetaData::TileCacheEntryHash,true>,std::allocator<std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>>>::find<md::FlyoverMetaData::TileCacheEntry>(a2 + 3, v38);
  if (!result)
  {
    goto LABEL_7;
  }

  v11 = *(a2 + 9);
  v12 = *(result + 56);
  if (v11 != v12)
  {
    v13 = v12[1];
    if (v13 != v11)
    {
      v14 = *v12;
      *(v14 + 8) = v13;
      *v13 = v14;
      v15 = *v11;
      *(v15 + 8) = v12;
      *v12 = v15;
      *v11 = v12;
      v12[1] = v11;
      v11 = *(a2 + 9);
    }
  }

  if ((a2 + 64) == v11)
  {
LABEL_7:
    RegionAreas = md::FlyoverRegionManager::getRegionAreas(**a2, a3);
    v17 = *(a3 + 2);
    v37[0] = a3[1] | ((~(-1 << a3[1]) - *(a3 + 1)) << 32);
    v37[1] = v17 | (a4 << 32);
    v35 = 0;
    v36 = 0;
    v32[0] = 0;
    v32[1] = 0;
    v33 = 1;
    v34 = 0;
    v31 = 3;
    v18 = *RegionAreas;
    v19 = *(RegionAreas + 8);
    if (*RegionAreas == v19)
    {
LABEL_11:
      geo::Cache<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue,md::FlyoverMetaData::TileCacheEntryHash,geo::LRUPolicy>::insert(a2 + 16, v38);
    }

    while (1)
    {
      result = geo::c3mm::C3mmArea::getMeshTypeForKeyOrParent(*v18, v37, &v31, &v35);
      if (result != -1)
      {
        break;
      }

      if (v31 != 1)
      {
        v25 = v35;
        v24 = -1;
        v26 = (1 << v35) + ~HIDWORD(v35);
        v27 = v36;
        v28 = 0;
        v29 = 1;
        v30 = HIDWORD(v36);
        geo::QuadTile::computeHash(&v24);
        v20 = v28;
        if (a3[24])
        {
          v22 = (a3[1] + ((*a3 - 0x61C8864680B583EBLL) << 6) + ((*a3 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a3 - 0x61C8864680B583EBLL);
          v23 = (*(a3 + 1) + (v22 << 6) + (v22 >> 2) - 0x61C8864680B583EBLL) ^ v22;
          v21 = (*(a3 + 2) + (v23 << 6) + (v23 >> 2) - 0x61C8864680B583EBLL) ^ v23;
          *(a3 + 2) = v21;
          a3[24] = 0;
        }

        else
        {
          v21 = *(a3 + 2);
        }

        if (v20 != v21 || v24 != *a3 || v25 != a3[1] || v26 != *(a3 + 1) || v27 != *(a3 + 2))
        {
          geo::c3mm::C3mmArea::getEntry(*v18, v37, v32);
        }

        geo::Cache<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue,md::FlyoverMetaData::TileCacheEntryHash,geo::LRUPolicy>::insert(a2 + 16, v38);
      }

      v18 += 3;
      if (v18 == v19)
      {
        goto LABEL_11;
      }
    }

    if (a5)
    {
      result = std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(a2 + 11, a3);
    }

    *this = 0;
    *(this + 56) = 0;
  }

  else
  {
    *(this + 4) = *(v11 + 60);
    *this = *(v11 + 28);
    *(this + 2) = v11[9];
    *(this + 24) = *(v11 + 80);
    *(this + 8) = *(v11 + 22);
    *(this + 36) = *(v11 + 92);
    *(this + 5) = v11[12];
    *(this + 48) = *(v11 + 104);
    *(this + 56) = 1;
  }

  return result;
}

void geo::Cache<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue,md::FlyoverMetaData::TileCacheEntryHash,geo::LRUPolicy>::insert(uint64_t a1, geo::QuadTile *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,std::__unordered_map_hasher<md::FlyoverMetaData::TileCacheEntry,std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,md::FlyoverMetaData::TileCacheEntryHash,std::equal_to<md::FlyoverMetaData::TileCacheEntry>,true>,std::__unordered_map_equal<md::FlyoverMetaData::TileCacheEntry,std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,std::equal_to<md::FlyoverMetaData::TileCacheEntry>,md::FlyoverMetaData::TileCacheEntryHash,true>,std::allocator<std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>>>::find<md::FlyoverMetaData::TileCacheEntry>((a1 + 8), a2);
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 7);
    v7 = *v5;
    v6 = v5[1];
    *(v7 + 8) = v6;
    *v6 = v7;
    --*(a1 + 64);
    operator delete(v5);
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase((a1 + 8), v4);
  }

  operator new();
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,std::__unordered_map_hasher<md::FlyoverMetaData::TileCacheEntry,std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,md::FlyoverMetaData::TileCacheEntryHash,std::equal_to<md::FlyoverMetaData::TileCacheEntry>,true>,std::__unordered_map_equal<md::FlyoverMetaData::TileCacheEntry,std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>,std::equal_to<md::FlyoverMetaData::TileCacheEntry>,md::FlyoverMetaData::TileCacheEntryHash,true>,std::allocator<std::__hash_value_type<md::FlyoverMetaData::TileCacheEntry,std::__list_iterator<std::pair<md::FlyoverMetaData::TileCacheEntry,md::FlyoverMetaData::TileCacheValue>,void *>>>>::find<md::FlyoverMetaData::TileCacheEntry>(void *a1, geo::QuadTile *this)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = *(this + 2) ^ (2 * *(this + 8));
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = *(this + 2) ^ (2 * *(this + 8));
    if (v5 >= *&v4)
    {
      v8 = v5 % *&v4;
    }
  }

  else
  {
    v8 = v5 & (*&v4 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (i = *v9; i; i = *i)
  {
    v11 = *(i + 1);
    if (v11 == v5)
    {
      if (std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>::operator()[abi:nn200100](i + 16, this))
      {
        return i;
      }
    }

    else
    {
      if (v7 > 1)
      {
        if (v11 >= *&v4)
        {
          v11 %= *&v4;
        }
      }

      else
      {
        v11 &= *&v4 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t md::FlyoverMetaData::adjustedTile(md::FlyoverMetaData *this, const geo::QuadTile *a2, unsigned __int8 *a3, int a4)
{
  result = md::FlyoverMetaData::tileCacheLookup(v11, a2, a3, 0, a4);
  v6 = 0;
  v7 = 0;
  if (v16 == 1)
  {
    v6 = v11[0];
    v8 = v13;
    v9 = v14;
    v10 = v15;
    *(this + 1) = v11[1];
    *(this + 4) = v12;
    *(this + 2) = v8;
    *(this + 24) = v9;
    v7 = 1;
    *(this + 32) = v10;
  }

  *this = v6;
  *(this + 40) = v7;
  return result;
}

__n128 geo::small_vector_base<md::FlyoverOctile>::small_vector_base(void *a1, void *a2, uint64_t a3)
{
  *a1 = a3;
  a1[1] = a3;
  a1[2] = a3;
  v3 = a2[2];
  a1[3] = a2[3];
  v4 = *a2;
  if (*a2 == v3)
  {
    a1[1] = a3 + a2[1] - v4;
    v7 = a2[1];
    if (v4 != v7)
    {
      v8 = 0;
      do
      {
        v9 = a3 + v8;
        *(v9 + 24) = 0;
        *(v9 + 4) = *(v4 + v8 + 4);
        *v9 = *(v4 + v8);
        *(v9 + 16) = *(v4 + v8 + 16);
        *(v9 + 24) = *(v4 + v8 + 24);
        result = *(v4 + v8 + 32);
        *(v9 + 32) = result;
        v8 += 48;
      }

      while (v4 + v8 != v7);
    }
  }

  else
  {
    v5 = a2[1];
    *a1 = v4;
    a1[1] = v5;
    result.n128_u64[0] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

void geo::small_vector_base<md::FlyoverOctile>::grow(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(48 * v9, 0x10000408903FB4CuLL);
  v11 = v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v14 = 0;
    do
    {
      v15 = &v10[v14];
      v15[24] = 0;
      *(v15 + 4) = *&v12[v14 + 4];
      *v15 = *&v12[v14];
      *(v15 + 2) = *&v12[v14 + 16];
      v15[24] = v12[v14 + 24];
      *(v15 + 2) = *&v12[v14 + 32];
      v14 += 48;
    }

    while (&v12[v14] != v13);
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = &v11[v4 - v3];
  *(a1 + 24) = v9;
}

void md::DaVinciGroundTileResourceFetcher::~DaVinciGroundTileResourceFetcher(md::DaVinciGroundTileResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2F2BAAC(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    v27 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v27, a19);
  }

  if (a17 < 0)
  {
    v28 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v28, a12);
  }

  _Unwind_Resume(a1);
}

void *geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A4B8F8;
  a1[1] = v3;
  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>,geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>*>(uint64_t result, uint64_t (***a2)(void), void *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = a3;
    v6 = result;
    v7 = a3;
    do
    {
      *v7 = &unk_1F2A4B8F8;
      v7 += 3;
      a3[1] = 0;
      objc_storeStrong(a3 + 1, *(v6 + 8));
      v8 = *(v6 + 8);
      *(v6 + 8) = 0;

      v6 += 24;
      v5 += 3;
      a3 = v7;
    }

    while (v6 != a2);
    v9 = v4;
    v10 = v4;
    do
    {
      v11 = *v10;
      v10 += 3;
      result = (*v11)(v4);
      v9 += 3;
      v4 = v10;
    }

    while (v10 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 24);
    *(a1 + 16) = i - 24;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4B8F8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEOAttribution * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A4B8F8;

  return a1;
}

void ggl::Blur::XPipelineState::~XPipelineState(ggl::Blur::XPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::Blur::XPipelineSetup::~XPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Blur::YPipelineState::~YPipelineState(ggl::Blur::YPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::Blur::YPipelineSetup::~YPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::Blur::Downsample4XPipelineState::~Downsample4XPipelineState(ggl::Blur::Downsample4XPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::Blur::Downsample4XPipelineSetup::~Downsample4XPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2F2C554(_Unwind_Exception *a1)
{
  if (*(v2 - 65) < 0)
  {
    operator delete(*(v2 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_1B2F2CC50(_Unwind_Exception *a1)
{
  std::__shared_mutex_base::unlock_shared(v4);

  _Unwind_Resume(a1);
}

void md::mun::MuninViewDataRequester::requestDataKeys(md::mun::MuninViewDataRequester *this, const gdc::SelectionContext *a2)
{
  v2 = *(a2 + 10);
  v3 = *(a2 + 11);
  if (v2 != v3)
  {
    v5 = *(a2 + 1);
    do
    {
      md::mun::MuninMetadataContainer::activePoint(v9, *(a2 + 9), *v2);
      if (v13 == 1)
      {
        md::mun::ViewId::toLayerDataKey(v6, v2, v12, v11, -1073741827);
        gdc::LayerDataCollector::addDataKey(v5, v6);
        if (v7 != v8)
        {
          free(v7);
        }

        if (v13)
        {
          geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v10);
        }
      }

      v2 += 2;
    }

    while (v2 != v3);
  }
}

uint64_t md::DebugConsoleMapRect::DebugConsoleMapRect(uint64_t a1, uint64_t a2, float *a3, float64x2_t *a4, double *a5, double *a6)
{
  *a1 = a2;
  *(a1 + 8) = xmmword_1B33B0730;
  *(a1 + 24) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 40) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 112) = 0x3FF0000000000000;
  *(a1 + 152) = 0x3FF0000000000000;
  *(a1 + 192) = 0x3FF0000000000000;
  *(a1 + 252) = 0;
  *(a1 + 236) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 220) = 1065353216;
  *(a1 + 240) = 1065353216;
  *(a1 + 260) = 1065353216;
  v10 = *a3;
  *(a1 + 8) = *a3;
  v11 = a3[1];
  *(a1 + 12) = v11;
  v12 = a3[2];
  *(a1 + 16) = v12;
  v13 = a3[3];
  *(a1 + 20) = v13;
  memset(&v49[4], 0, 56);
  *&v49[60] = 1065353216;
  *v49 = v12 - v10;
  *&v49[20] = v13 - v11;
  memset(&v42[20], 0, 28);
  *&v42[4] = 0u;
  *v42 = 1065353216;
  *&v42[20] = 1065353216;
  *&v42[40] = 1065353216;
  *&v42[48] = v10;
  *&v42[52] = v11;
  *&v43 = 0x3F80000000000000;
  gm::operator*<float,4,4,4>(v41, v42, v49);
  v14 = v41[1];
  *(a1 + 200) = v41[0];
  *(a1 + 216) = v14;
  v15 = v41[3];
  *(a1 + 232) = v41[2];
  *(a1 + 248) = v15;
  v39 = *a5;
  v38 = *a6;
  v16 = exp(a4->f64[1] * 6.28318531 + -3.14159265);
  v17 = atan(v16);
  v18 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v17 * 114.591559 + -90.0);
  v19.f64[0] = v39;
  *(a1 + 56) = v39;
  *(a1 + 64) = v38;
  v19.f64[1] = v38;
  __asm { FMOV            V2.2D, #0.5 }

  _Q0 = vmulq_f64(vmaxnmq_f64(vmulq_n_f64(v19, v18), 0), _Q2);
  _Q2 = vsubq_f64(*a4, _Q0);
  v40 = vaddq_f64(*a4, _Q0);
  *(a1 + 24) = _Q2;
  *(a1 + 40) = v40;
  _Q1 = vsubq_f64(v40, _Q2);
  _Q2.f64[0] = 0.5;
  __asm { FMLA            D0, D2, V1.D[1] }

  v28 = exp(_Q0.f64[0] * 6.28318531 + -3.14159265);
  v29 = atan(v28);
  *&v30 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v29 * 114.591559 + -90.0);
  v31 = *(a1 + 24);
  v32 = vsubq_f64(v40, v31);
  *(a1 + 56) = vdivq_f64(v32, vdupq_lane_s64(v30, 0));
  *&v42[40] = 0u;
  v44 = 0;
  v46 = 0;
  v43 = 0u;
  memset(&v42[8], 0, 32);
  *&v42[40] = v32.f64[1];
  *v42 = v32.f64[0];
  v45 = v32.f64[0];
  v47 = v31;
  v48 = xmmword_1B33B0740;
  gm::Matrix<double,4,4>::inverted<int,void>(v49, v42);
  v33 = v51;
  *(a1 + 136) = v50;
  *(a1 + 152) = v33;
  v34 = v53;
  *(a1 + 168) = v52;
  *(a1 + 184) = v34;
  v35 = *&v49[16];
  *(a1 + 72) = *v49;
  *(a1 + 88) = v35;
  v36 = *&v49[48];
  *(a1 + 104) = *&v49[32];
  *(a1 + 120) = v36;
  return a1;
}

double md::DebugConsoleMapRect::worldPointToPixel(uint64_t a1, __n128 a2)
{
  v6 = a2;
  v7 = 0;
  v3 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>((a1 + 72), &v6);
  *&v4 = v4;
  v6.n128_f32[0] = v3;
  *(v6.n128_u64 + 4) = LODWORD(v4);
  return gm::Matrix<float,4,4>::multiplyHomogeneous<int,void>(a1 + 200, &v6);
}

void md::DebugConsoleMapRect::drawPixelCircle(float32x2_t *a1, float32x2_t *a2, uint64_t a3, int a4)
{
  if (gm::Box<float,2>::intersects<int,void>(a1 + 1, a2))
  {
    v9 = 0;
    v10 = *a1 + 96;
    do
    {
      *(v10 + v9) = *(a3 + v9);
      ++v9;
    }

    while (v9 != 4);
    v11 = *a1;
    LODWORD(v8) = a2[1].i32[0];
    *(v11 + 2) = a2->i32[0];
    *(v11 + 3) = a2->i32[1];
    if (a4)
    {

      ggl::DebugConsole::drawCircleWithFill(v11, *&v8);
    }

    else
    {

      ggl::DebugConsole::drawCircle(v11, v8);
    }
  }
}

BOOL gm::Box<float,2>::intersects<int,void>(float32x2_t *a1, float32x2_t *a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    v4 = a1[1].f32[v3];
    v5 = a1->f32[v3];
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v4 >= v5);
  if (v4 < v5)
  {
    return 0;
  }

  v6 = a2[1].f32[0];
  if (v6 == 0.0)
  {
    return 0;
  }

  v7 = vmaxnm_f32(vsub_f32(*a2, a1[1]), vsub_f32(*a1, *a2));
  if (v7.f32[0] >= v6 || v7.f32[1] >= v6)
  {
    return 0;
  }

  result = 1;
  if (v7.f32[0] > 0.0 && v7.f32[1] > 0.0)
  {
    return vaddv_f32(vmul_f32(v7, v7)) < (v6 * v6);
  }

  return result;
}

void md::DebugConsoleMapRect::drawWorldCircleWithPixelRadius(float32x2_t *a1, unsigned int a2, uint64_t a3, int a4, __n128 a5)
{
  v9 = md::DebugConsoleMapRect::worldPointToPixel(a1, a5);
  v11 = __PAIR64__(v10, LODWORD(v9));
  v12 = a2;
  md::DebugConsoleMapRect::drawPixelCircle(a1, &v11, a3, a4);
}

float md::DebugConsoleMapRect::drawPixelRect(float *a1, int8x16_t *a2, uint64_t a3, int a4, float32x4_t a5, float32x4_t a6)
{
  v7 = 0;
  v8 = (a1 + 2);
  v9 = &a2->i64[1];
  v10 = 1;
  while (1)
  {
    result = a1[v7 + 4];
    if (result <= *&a2->i32[v7])
    {
      break;
    }

    result = *(v8 + 4 * v7);
    if (result >= *(v9 + v7))
    {
      break;
    }

    v12 = v10;
    v10 = 0;
    v7 = 1;
    if ((v12 & 1) == 0)
    {
      v13 = 0;
      v14 = *a1 + 96;
      do
      {
        *(v14 + v13) = *(a3 + v13);
        ++v13;
      }

      while (v13 != 4);
      if (a4)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          a5.i32[0] = *(v9 + v16);
          a6.i32[0] = a2->i32[v16];
          if (v15)
          {
            break;
          }

          v15 = 1;
          v16 = 1;
        }

        while (a5.f32[0] >= a6.f32[0]);
        v26 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a6, a5), 0), *a2, vaddq_f32(*a2, xmmword_1B33B1450));
        v17 = gm::Box<float,2>::intersection(v8, &v26);
        v27 = v17;
        v28 = v18;
        v29 = v19;
        v30 = v20;
        v21 = *a1;
        v21[1].f32[0] = v17;
        v21[1].i32[1] = v18;
        return ggl::DebugConsole::drawRectangleWithFill(v21, &v29, v17);
      }

      else
      {
        v27 = gm::Box<float,2>::intersection(v8, a2);
        v28 = v22;
        v29 = v23;
        v30 = v24;
        v25 = *a1;
        *(v25 + 8) = v27;
        *(v25 + 12) = v22;
        return ggl::DebugConsole::drawRectangle(v25, &v29);
      }
    }
  }

  return result;
}

void md::DebugConsoleMapRect::drawWorldSegment(uint64_t *a1, float64x2_t *a2, uint64_t a3)
{
  v6 = 0;
  v28 = 1.0;
  v29 = 0.0;
  v7 = (a1 + 3);
  v8 = a1 + 5;
  v9 = 1;
  while (1)
  {
    v10 = a2->f64[v6];
    if (v10 < *(v7 + 8 * v6) || v10 >= *&v8[v6])
    {
      break;
    }

    v11 = v9;
    v9 = 0;
    v6 = 1;
    if ((v11 & 1) == 0)
    {
      v12 = 0;
      v13 = a2[1].f64[0] + a2->f64[0];
      v14 = 1;
      while (v13 >= *(v7 + 8 * v12) && v13 < *&v8[v12])
      {
        v15 = v14;
        v14 = 0;
        v13 = a2[1].f64[1] + a2->f64[1];
        v12 = 1;
        if ((v15 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      break;
    }
  }

  if (gm::Ray<double,2>::segmentIntersectsBox(a2, v7, &v29, &v28, 2.22044605e-16))
  {
LABEL_11:
    v16 = 0;
    v17 = *a1 + 96;
    do
    {
      *(v17 + v16) = *(a3 + v16);
      ++v16;
    }

    while (v16 != 4);
    v18 = *a1;
    v25 = a2[1];
    v26 = *a2;
    v19 = md::DebugConsoleMapRect::worldPointToPixel(a1, vmlaq_n_f64(*a2, v25, v29));
    v20 = LODWORD(v19);
    v22 = v21;
    v23 = md::DebugConsoleMapRect::worldPointToPixel(a1, vmlaq_n_f64(v26, v25, v28));
    v27[0] = *&v23;
    v27[1] = v24;
    *(v18 + 8) = v20;
    *(v18 + 12) = v22;
    ggl::DebugConsole::drawLine(v18, v27, *&v23);
  }
}

void md::DebugConsoleMapRect::drawWorldRectWithMeterDimension(uint64_t a1, float64x2_t *a2, uint64_t a3, int a4, __n128 a5)
{
  v9 = (*(a1 + 16) - *(a1 + 8)) / *(a1 + 56);
  v10 = (*(a1 + 20) - *(a1 + 12)) / *(a1 + 64);
  *v11.i64 = md::DebugConsoleMapRect::worldPointToPixel(a1, a5);
  v12 = *a2;
  v13.f64[1] = a2->f64[1];
  v13.f64[0] = v9;
  __asm { FMOV            V3.2D, #0.5 }

  v12.f64[1] = v10;
  v19 = vmulq_f64(vmulq_f64(v13, _Q3), v12);
  v11.i32[1] = v20;
  v21 = vdupq_lane_s64(v11.i64[0], 0);
  v22 = vcvt_hight_f32_f64(vcvt_f32_f64(v19), v19);
  v11.i64[0] = vsubq_f32(v11, v22).u64[0];
  v23 = vaddq_f32(v21, v22);
  v11.i64[1] = v23.i64[1];
  v24 = v11;
  md::DebugConsoleMapRect::drawPixelRect(a1, &v24, a3, a4, v11, v23);
}

void md::DebugConsoleMapRect::drawWorldRect(float *a1, __n128 *a2, uint64_t a3, int a4)
{
  v8 = 0;
  v9 = 1;
  while (a2[1].n128_f64[v8] > *&a1[2 * v8 + 6] && a2->n128_f64[v8] < *&a1[2 * v8 + 10])
  {
    v10 = v9;
    v9 = 0;
    v8 = 1;
    if ((v10 & 1) == 0)
    {
      v11 = md::DebugConsoleMapRect::worldPointToPixel(a1, *a2);
      v12 = LODWORD(v11);
      v14 = v13;
      *v15.i64 = md::DebugConsoleMapRect::worldPointToPixel(a1, a2[1]);
      v17.i64[0] = __PAIR64__(v14, v12);
      v17.i64[1] = __PAIR64__(v16.u32[0], v15.u32[0]);
      md::DebugConsoleMapRect::drawPixelRect(a1, &v17, a3, a4, v15, v16);
      return;
    }
  }
}

float32x2_t *md::DebugConsoleMapRect::drawWorldSymbol(float32x2_t *result, __n128 *a2, char a3, uint64_t a4)
{
  v5 = 0;
  for (i = 1; ; i = 0)
  {
    v7 = a2->n128_f64[v5];
    if (v7 < *&result[v5 + 3] || v7 >= *&result[v5 + 5])
    {
      break;
    }

    v8 = i;
    v5 = 1;
    if ((v8 & 1) == 0)
    {
      v9 = 0;
      v10 = *result + 96;
      do
      {
        *(v10 + v9) = *(a4 + v9);
        ++v9;
      }

      while (v9 != 4);
      v11 = *result;
      v12 = md::DebugConsoleMapRect::worldPointToPixel(result, *a2);
      v11[1].i32[0] = LODWORD(v12);
      v11[1].i32[1] = v13;

      return ggl::DebugConsole::drawSymbol(v11, a3);
    }
  }

  return result;
}

void md::DebugConsoleMapRect::drawWorldArrow(float32x2_t *a1, double *a2, uint64_t a3, __n128 a4, float a5, float a6)
{
  v11 = md::DebugConsoleMapRect::worldPointToPixel(a1, a4);
  v12 = *&v11;
  v14 = v13;
  md::DebugConsoleMapRect::drawWorldCircleWithPixelRadius(a1, 5u, a3, 1, a4);
  v15 = *a2;
  v16 = __sincosf_stret(v15);
  v17 = 1.0 / sqrtf((v16.__cosval * v16.__cosval) + (v16.__sinval * v16.__sinval));
  v21 = v12 - ((a5 * 0.25) * (v17 * v16.__cosval));
  v22 = v14 - ((v17 * v16.__sinval) * (a5 * 0.25));
  v18 = (a6 * 0.5) * (v17 * v16.__cosval);
  v19 = (v17 * v16.__sinval) * (a6 * 0.5);
  v23 = v21 - v19;
  v24 = v22 + v18;
  v25 = v21 + ((a5 * 0.75) * (v17 * v16.__cosval));
  v26 = v22 + ((a5 * 0.75) * (v17 * v16.__sinval));
  v27 = v21 + v19;
  v28 = v22 - v18;
  v29 = v21;
  v30 = v22;
  ggl::DebugConsole::drawLineStrip(*a1, &v21, 5uLL);
}

double md::StandardGlobeLabelMapTile::assignWorldPointToLabel(md::StandardGlobeLabelMapTile *this, md::Label *a2)
{
  v3 = (*(**(a2 + 1) + 120))(*(a2 + 1), a2 + 48, *(this + 9), *(this + 70));
  v4 = md::LabelPoint::geocentricPoint(v3);
  v11 = *v4;
  v12 = *(v4 + 2);
  md::LabelPoint::geocentricPoint(v4);
  for (i = 0; i != 6; i += 2)
  {
    *&v13[i / 2] = *&md::GeocentricNormal(geo::Geocentric<double> const&)::oneOverRadiiSquared[i / 2] * *&v3[i];
  }

  v13[0] = gm::Matrix<double,3,1>::normalized<int,void>(v13);
  v13[1] = v6;
  v13[2] = v7;
  v8 = v3[10];
  v9 = v8 != 3.4028e38;
  if (v8 == 3.4028e38)
  {
    v8 = 0.0;
  }

  return md::Label::setWorldPoint(a2, &v11, v13, LODWORD(v8) | (v9 << 32));
}

double md::StandardGlobeLabelMapTile::worldPointFromMercatorPoint(uint64_t a1, double *a2)
{
  v2 = *a2 * 6.28318531;
  v3 = exp(a2[1] * 6.28318531 + -3.14159265);
  v4 = atan(v3);
  v5 = fmod(v2, 6.28318531);
  v6 = fmod(v5 + 6.28318531, 6.28318531) + -3.14159265;
  v7 = __sincos_stret(v4 * 2.0 + -1.57079633);
  return 6378137.0 / sqrt(v7.__sinval * v7.__sinval * -0.00669437999 + 1.0) * v7.__cosval * __sincos_stret(v6).__cosval;
}

void md::StandardGlobeLabelMapTile::~StandardGlobeLabelMapTile(md::StandardGlobeLabelMapTile *this)
{
  md::StandardLabelMapTile::~StandardLabelMapTile(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t ta2::TextureAtlas::debugDisplay(ta2::TextureAtlas *this, unsigned int a2)
{
  v2 = *(this + 14);
  if (a2 >= ((*(this + 15) - v2) >> 4))
  {
    return 0;
  }

  else
  {
    return *(*(v2 + 16 * a2) + 192);
  }
}

uint64_t ta2::TextureAtlas::debugString@<X0>(ta2::TextureAtlas *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v33);
  v5 = *(this + 14);
  v4 = *(this + 15);
  if (v4 != v5)
  {
    if (v4 - v5 >= 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  __dst = a2;
  v6 = v33;
  *(&v33 + *(v33 - 24) + 8) = *(&v33 + *(v33 - 24) + 8) & 0xFFFFFEFB | 4;
  *(&v35[0].__locale_ + *(v6 - 24)) = 0;
  v7 = *(this + 31);
  if (v7 >= 0)
  {
    v8 = this + 8;
  }

  else
  {
    v8 = *(this + 1);
  }

  if (v7 >= 0)
  {
    v9 = *(this + 31);
  }

  else
  {
    v9 = *(this + 2);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, v8, v9);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, "[T2](pages=", 11);
  v10 = MEMORY[0x1B8C61CB0](&v33, (*(this + 15) - *(this + 14)) >> 4);
  v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, " txts=", 6);
  v12 = MEMORY[0x1B8C61CB0](v11, 0);
  v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, " area=", 6);
  v14 = MEMORY[0x1B8C61C90](v13, 0);
  v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, "kB", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, " usage%=", 8);
  v16 = std::ostream::operator<<();
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, ") ", 2);
  if (*(this + 15) != *(this + 14))
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v20 = *(8 * v18);
      v19 = *(8 * v18 + 4);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, "\n\t", 2);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, "pg:", 3);
      v21 = MEMORY[0x1B8C61CB0](&v33, v18);
      v22 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v21, " txts=", 6);
      MEMORY[0x1B8C61CB0](v22, (*(*(*(this + 14) + v17) + 368) - *(*(*(this + 14) + v17) + 360)) >> 4);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, " area(", 6);
      v23 = MEMORY[0x1B8C61C90](&v33, v20);
      v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, "x", 1);
      v25 = MEMORY[0x1B8C61C90](v24, v19);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, ")=", 2);
      v26 = std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, "kB", 2);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, " usage%=", 8);
      std::ostream::operator<<();
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v33, ") ", 2);
      ++v18;
      v17 += 16;
    }

    while (v18 < (*(this + 15) - *(this + 14)) >> 4);
  }

  if ((v40 & 0x10) != 0)
  {
    v29 = v39;
    v27 = __dst;
    if (v39 < v36)
    {
      v39 = v36;
      v29 = v36;
    }

    locale = v35[4].__locale_;
  }

  else
  {
    v27 = __dst;
    if ((v40 & 8) == 0)
    {
      v28 = 0;
      __dst[23] = 0;
      goto LABEL_26;
    }

    locale = v35[1].__locale_;
    v29 = v35[3].__locale_;
  }

  v28 = v29 - locale;
  if ((v29 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v28 >= 0x17)
  {
    operator new();
  }

  v27[23] = v28;
  if (v28)
  {
    memmove(v27, locale, v28);
  }

LABEL_26:
  v27[v28] = 0;
  v33 = *MEMORY[0x1E69E54E8];
  *(&v33 + *(v33 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v34 = MEMORY[0x1E69E5548] + 16;
  if (v38 < 0)
  {
    operator delete(__p);
  }

  v34 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v35);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v41);
}

uint64_t ta2::TextureAtlas::allocateTextureRegion@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v4 = *(*a2 + 20);
  v5 = *(*a2 + 16) + 2;
  v6 = 0;
  if (a3)
  {
    v7 = 1;
    do
    {
      v8 = v5;
      v9 = *(result + 64 + 4 * v6);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v7 = 0;
      v5 = v4 + 2;
      v6 = 1;
    }

    while (v9 >= v8);
  }

  else
  {
    v10 = 1;
    do
    {
      v8 = v5;
      v9 = *(result + 56 + 4 * v6);
      if ((v10 & 1) == 0)
      {
        break;
      }

      v10 = 0;
      v5 = v4 + 2;
      v6 = 1;
    }

    while (v9 >= v8);
  }

  if (v9 >= v8)
  {
    operator new();
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

os_log_t ___ZL30GEOGetVectorKitTextureAtlasLogv_block_invoke_17135()
{
  result = os_log_create("com.apple.VectorKit", "TextureAtlas");
  GEOGetVectorKitTextureAtlasLog(void)::log = result;
  return result;
}

void std::__shared_ptr_emplace<ta2::TextureAtlasRegion>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A16E80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ta2::TextureAtlas::createRegionLoadItems(void *a1, uint64_t *a2)
{
  std::vector<ta2::TextureAtlas::RegionLoadItem>::reserve(a2, 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) + ((a1[1] - *a1) >> 4));
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = *v4;
      if (*(*v4 + 128) != 2)
      {
        v9 = 0;
        memset(v8, 0, sizeof(v8));
        v7 = v4[1];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          *&v8[0] = v6;
          *(&v8[0] + 1) = v7;
          std::vector<ta2::TextureAtlas::RegionLoadItem>::push_back[abi:nn200100](a2, v8);
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        else
        {
          *&v8[0] = v6;
          std::vector<ta2::TextureAtlas::RegionLoadItem>::push_back[abi:nn200100](a2, v8);
        }
      }

      v4 += 2;
    }

    while (v4 != v5);
  }
}

void *std::__tree<std::shared_ptr<ta2::TextureAtlasRegion>>::__emplace_hint_unique_key_args<std::shared_ptr<ta2::TextureAtlasRegion>,std::shared_ptr<ta2::TextureAtlasRegion> const&>(void *result, void *a2, unint64_t a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = a2[4], v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (v7[4] < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (!*v3)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v14 = v13;
        v15 = v13[4];
        if (v15 <= a3)
        {
          break;
        }

        v13 = *v14;
        v3 = v14;
        if (!*v14)
        {
          goto LABEL_38;
        }
      }

      if (v15 >= a3)
      {
        break;
      }

      v3 = v14 + 1;
      v13 = v14[1];
      if (!v13)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v8 = v3;
    goto LABEL_19;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && v10[4] <= a3)
  {
    v17 = *v3;
    if (!*v3)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v18 = v17;
        v19 = v17[4];
        if (v19 <= a3)
        {
          break;
        }

        v17 = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_40;
      }

      v3 = v18 + 1;
      v17 = v18[1];
      if (!v17)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  if (!*v8)
  {
LABEL_38:
    operator new();
  }

  return result;
}

void ta2::TextureAtlasPage::releaseRegions(ta2::TextureAtlasPage *this, uint64_t a2)
{
  *(this + 27) = a2;
  v2 = *(this + 45);
  for (i = *(this + 46); v2 != i; v2 += 2)
  {
    v4 = *v2;
    if (!*(*v2 + 88) && !*(v4 + 32))
    {
      *(v4 + 32) = *(v4 + 24);
      v5 = *(v4 + 56);
      v6 = *(v4 + 64);
      *(v4 + 40) = v5 - 1;
      *(v4 + 44) = (v5 - 0x100000000) >> 32;
      *(v4 + 48) = v6 + 1;
      *(v4 + 52) = (v6 + 0x100000000) >> 32;
    }

    *(v4 + 129) = 0;
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 45);
}

void std::__introsort<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,false>(__int128 *a1, __int128 *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v8 = (a2 - 40);
    v130 = (a2 - 120);
    v132 = a2 - 5;
    v9 = a1;
    v147 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = a2 - v9;
          v11 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v9) >> 3);
          v12 = v11 - 2;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:

                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(a1, (a1 + 40), v8);
                return;
              case 4:
                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(a1, (a1 + 40), a1 + 5);
                v58 = *(a2 - 5);
                v57 = (a2 - 40);
                if (*(v58 + 68) - *(v58 + 60) <= (*(*(a1 + 10) + 68) - *(*(a1 + 10) + 60)))
                {
                  return;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(a1 + 5, v57);
                if (*(*(a1 + 10) + 68) - *(*(a1 + 10) + 60) <= (*(*(a1 + 5) + 68) - *(*(a1 + 5) + 60)))
                {
                  return;
                }

                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>((a1 + 40), a1 + 5);
                if (*(*(a1 + 5) + 68) - *(*(a1 + 5) + 60) <= (*(*a1 + 68) - *(*a1 + 60)))
                {
                  return;
                }

                v56 = (a1 + 40);
                v55 = a1;
                goto LABEL_76;
              case 5:

                std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(a1, (a1 + 40), a1 + 5, (a1 + 120), v8);
                return;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return;
            }

            if (v11 == 2)
            {
              v54 = *(a2 - 5);
              v53 = (a2 - 40);
              if (*(v54 + 68) - *(v54 + 60) <= (*(*a1 + 68) - *(*a1 + 60)))
              {
                return;
              }

              v55 = a1;
              v56 = v53;
LABEL_76:

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(v55, v56);
              return;
            }
          }

          if (v10 <= 959)
          {
            v59 = (a1 + 40);
            v61 = a1 == a2 || v59 == a2;
            if (a4)
            {
              if (!v61)
              {
                v62 = 0;
                v63 = a1;
                do
                {
                  v64 = v59;
                  v65 = *(v63 + 5);
                  v66 = *v63;
                  if (*(v65 + 68) - *(v65 + 60) > (*(*v63 + 68) - *(*v63 + 60)))
                  {
                    v67 = *(v63 + 6);
                    *v64 = 0;
                    *(v64 + 1) = 0;
                    v143 = *(v63 + 56);
                    v68 = v62;
                    v69 = *(v63 + 9);
                    while (1)
                    {
                      v70 = a1 + v68;
                      v71 = *(a1 + v68 + 8);
                      *v70 = 0;
                      *(v70 + 1) = 0;
                      v72 = *(a1 + v68 + 48);
                      *(v70 + 5) = v66;
                      *(v70 + 6) = v71;
                      if (v72)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v72);
                      }

                      *(v70 + 14) = *(v70 + 4);
                      *(v70 + 60) = *(v70 + 20);
                      *(v70 + 17) = *(v70 + 7);
                      *(v70 + 9) = *(v70 + 4);
                      if (!v68)
                      {
                        break;
                      }

                      v66 = *(a1 + v68 - 40);
                      v68 -= 40;
                      if (*(v65 + 68) - *(v65 + 60) <= (*(v66 + 68) - *(v66 + 60)))
                      {
                        v73 = a1 + v68 + 40;
                        goto LABEL_103;
                      }
                    }

                    v73 = a1;
LABEL_103:
                    v74 = *(v73 + 8);
                    *v73 = v65;
                    *(v73 + 8) = v67;
                    if (v74)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v74);
                    }

                    *(v73 + 16) = v143;
                    *(v73 + 32) = v69;
                    a2 = v147;
                  }

                  v59 = (v64 + 40);
                  v62 += 40;
                  v63 = v64;
                }

                while ((v64 + 40) != a2);
              }
            }

            else if (!v61)
            {
              v120 = a1 + 1;
              do
              {
                v121 = v59;
                v122 = *(a1 + 5);
                v123 = *a1;
                if (*(v122 + 68) - *(v122 + 60) > (*(*a1 + 68) - *(*a1 + 60)))
                {
                  v124 = *(a1 + 6);
                  *v121 = 0;
                  *(v121 + 1) = 0;
                  v146 = *(a1 + 56);
                  v125 = v120;
                  v126 = *(a1 + 9);
                  do
                  {
                    v127 = *(v125 - 1);
                    *(v125 - 2) = 0;
                    *(v125 - 1) = 0;
                    v128 = v125[4];
                    v125[3] = v123;
                    v125[4] = v127;
                    if (v128)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v128);
                    }

                    *(v125 + 10) = *v125;
                    *(v125 + 44) = *(v125 + 4);
                    *(v125 + 13) = *(v125 + 3);
                    v125[7] = v125[2];
                    v123 = *(v125 - 7);
                    v125 -= 5;
                  }

                  while (*(v122 + 68) - *(v122 + 60) > (*(v123 + 68) - *(v123 + 60)));
                  v129 = v125[4];
                  v125[3] = v122;
                  v125[4] = v124;
                  if (v129)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v129);
                  }

                  *(v125 + 5) = v146;
                  v125[7] = v126;
                  a2 = v147;
                }

                v59 = (v121 + 40);
                v120 += 5;
                a1 = v121;
              }

              while ((v121 + 40) != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v75 = v12 >> 1;
              v76 = v12 >> 1;
              do
              {
                v77 = v76;
                if (v75 >= v76)
                {
                  v78 = (2 * v76) | 1;
                  v79 = a1 + 5 * v78;
                  if (2 * v77 + 2 >= v11)
                  {
                    v80 = *v79;
                  }

                  else
                  {
                    v80 = *v79;
                    if (*(*v79 + 68) - *(*v79 + 60) > (*(v79[5] + 68) - *(v79[5] + 60)))
                    {
                      v80 = v79[5];
                      v79 += 5;
                      v78 = 2 * v77 + 2;
                    }
                  }

                  v81 = a1 + 5 * v77;
                  v82 = *v81;
                  if (*(v80 + 68) - *(v80 + 60) <= (*(*v81 + 68) - *(*v81 + 60)))
                  {
                    v83 = v81[1];
                    *v81 = 0;
                    v81[1] = 0;
                    v144 = *(v81 + 1);
                    v133 = v83;
                    v138 = v81[4];
                    v84 = *v79;
                    do
                    {
                      v85 = v79;
                      v86 = v79[1];
                      *v85 = 0;
                      v85[1] = 0;
                      v87 = v81[1];
                      *v81 = v84;
                      v81[1] = v86;
                      if (v87)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v87);
                      }

                      *(v81 + 4) = *(v85 + 4);
                      *(v81 + 5) = *(v85 + 5);
                      *(v81 + 6) = *(v85 + 6);
                      *(v81 + 7) = *(v85 + 7);
                      v81[4] = v85[4];
                      if (v75 < v78)
                      {
                        break;
                      }

                      v79 = a1 + 5 * ((2 * v78) | 1);
                      if (2 * v78 + 2 >= v11)
                      {
                        v84 = *v79;
                        v78 = (2 * v78) | 1;
                      }

                      else
                      {
                        v84 = *v79;
                        if (*(*v79 + 68) - *(*v79 + 60) <= (*(v79[5] + 68) - *(v79[5] + 60)))
                        {
                          v78 = (2 * v78) | 1;
                        }

                        else
                        {
                          v84 = v79[5];
                          v79 += 5;
                          v78 = 2 * v78 + 2;
                        }
                      }

                      v81 = v85;
                    }

                    while (*(v84 + 68) - *(v84 + 60) <= (*(v82 + 68) - *(v82 + 60)));
                    v88 = v85[1];
                    *v85 = v82;
                    v85[1] = v133;
                    if (v88)
                    {
                      std::__shared_weak_count::__release_shared[abi:nn200100](v88);
                    }

                    *(v85 + 1) = v144;
                    v85[4] = v138;
                  }
                }

                v76 = v77 - 1;
              }

              while (v77);
              v89 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 3);
              v90 = v147;
              do
              {
                v91 = 0;
                v92 = v90;
                v94 = *a1;
                v93 = *(a1 + 1);
                *a1 = 0;
                *(a1 + 1) = 0;
                v148 = *(a1 + 4);
                v145 = *(a1 + 5);
                v139 = *(a1 + 6);
                v134 = *(a1 + 7);
                v95 = a1;
                v131 = *(a1 + 4);
                do
                {
                  v96 = v95 + 40 * v91;
                  v97 = (v96 + 40);
                  if (2 * v91 + 2 >= v89)
                  {
                    v98 = *v97;
                    v91 = (2 * v91) | 1;
                  }

                  else
                  {
                    v100 = *(v96 + 80);
                    v99 = (v96 + 80);
                    v98 = v100;
                    if (*(*(v99 - 5) + 68) - *(*(v99 - 5) + 60) > (*(v100 + 68) - *(v100 + 60)))
                    {
                      v97 = v99;
                      v91 = 2 * v91 + 2;
                    }

                    else
                    {
                      v98 = *(v99 - 5);
                      v91 = (2 * v91) | 1;
                    }
                  }

                  v101 = *(v97 + 1);
                  *v97 = 0;
                  *(v97 + 1) = 0;
                  v102 = *(v95 + 1);
                  *v95 = v98;
                  *(v95 + 1) = v101;
                  if (v102)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v102);
                  }

                  *(v95 + 4) = *(v97 + 4);
                  *(v95 + 5) = *(v97 + 5);
                  *(v95 + 6) = *(v97 + 6);
                  *(v95 + 7) = *(v97 + 7);
                  *(v95 + 4) = *(v97 + 4);
                  v95 = v97;
                }

                while (v91 <= ((v89 - 2) >> 1));
                v90 = (v92 - 40);
                if (v97 == (v92 - 40))
                {
                  v118 = *(v97 + 1);
                  *v97 = v94;
                  *(v97 + 1) = v93;
                  if (v118)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v118);
                  }

                  *(v97 + 4) = v148;
                  *(v97 + 5) = v145;
                  *(v97 + 6) = v139;
                  *(v97 + 7) = v134;
                  *(v97 + 4) = v131;
                }

                else
                {
                  v103 = *(v92 - 40);
                  *v90 = 0;
                  *(v92 - 4) = 0;
                  v104 = *(v97 + 1);
                  *v97 = v103;
                  if (v104)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v104);
                  }

                  *(v97 + 4) = *(v92 - 6);
                  *(v97 + 5) = *(v92 - 5);
                  *(v97 + 6) = *(v92 - 4);
                  *(v97 + 7) = *(v92 - 3);
                  *(v97 + 4) = *(v92 - 1);
                  v105 = *(v92 - 4);
                  *(v92 - 5) = v94;
                  *(v92 - 4) = v93;
                  if (v105)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v105);
                  }

                  *(v92 - 6) = v148;
                  *(v92 - 5) = v145;
                  *(v92 - 4) = v139;
                  *(v92 - 3) = v134;
                  *(v92 - 1) = v131;
                  v106 = v97 + 40 - a1;
                  if (v106 >= 41)
                  {
                    v107 = (-2 - 0x3333333333333333 * (v106 >> 3)) >> 1;
                    v108 = a1 + 5 * v107;
                    v109 = *v97;
                    if (*(*v108 + 68) - *(*v108 + 60) > (*(*v97 + 68) - *(*v97 + 60)))
                    {
                      v110 = (v92 - 40);
                      v111 = *(v97 + 1);
                      *v97 = 0;
                      *(v97 + 1) = 0;
                      v149 = v97[1];
                      v112 = *(v97 + 4);
                      v113 = *v108;
                      do
                      {
                        v114 = v108;
                        v115 = v108[1];
                        *v114 = 0;
                        v114[1] = 0;
                        v116 = *(v97 + 1);
                        *v97 = v113;
                        *(v97 + 1) = v115;
                        if (v116)
                        {
                          std::__shared_weak_count::__release_shared[abi:nn200100](v116);
                        }

                        *(v97 + 4) = *(v114 + 4);
                        *(v97 + 5) = *(v114 + 5);
                        *(v97 + 6) = *(v114 + 6);
                        *(v97 + 7) = *(v114 + 7);
                        *(v97 + 4) = v114[4];
                        if (!v107)
                        {
                          break;
                        }

                        v107 = (v107 - 1) >> 1;
                        v108 = a1 + 5 * v107;
                        v113 = *v108;
                        v97 = v114;
                      }

                      while (*(*v108 + 68) - *(*v108 + 60) > (*(v109 + 68) - *(v109 + 60)));
                      v117 = v114[1];
                      *v114 = v109;
                      v114[1] = v111;
                      if (v117)
                      {
                        std::__shared_weak_count::__release_shared[abi:nn200100](v117);
                      }

                      *(v114 + 1) = v149;
                      v114[4] = v112;
                      v90 = v110;
                    }
                  }
                }
              }

              while (v89-- > 2);
            }

            return;
          }

          v13 = (a1 + 40 * (v11 >> 1));
          if (v10 < 0x1401)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(v13, a1, v8);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(a1, v13, v8);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>((a1 + 40), (v13 - 40), v132);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(a1 + 5, (v13 + 40), v130);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>((v13 - 40), v13, (v13 + 40));
            v14 = *a1;
            v140 = a1[1];
            *a1 = 0;
            *(a1 + 1) = 0;
            v15 = *(a1 + 4);
            v16 = *v13;
            *v13 = 0;
            *(v13 + 1) = 0;
            v17 = *(a1 + 1);
            *a1 = v16;
            if (v17)
            {
              v135 = v14;
              std::__shared_weak_count::__release_shared[abi:nn200100](v17);
              v14 = v135;
            }

            *(a1 + 2) = *(v13 + 2);
            *(a1 + 3) = *(v13 + 3);
            *(a1 + 4) = *(v13 + 4);
            v18 = *(v13 + 1);
            *v13 = v14;
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v18);
            }

            v13[1] = v140;
            *(v13 + 4) = v15;
          }

          --a3;
          if ((a4 & 1) != 0 || *(*(a1 - 5) + 68) - *(*(a1 - 5) + 60) > (*(*a1 + 68) - *(*a1 + 60)))
          {
            break;
          }

          v38 = *a1;
          *a1 = 0;
          *(a1 + 1) = 0;
          v142 = v38;
          v39 = v38;
          v40 = *(v38 + 68) - *(v38 + 60);
          if (v40 <= *(*v8 + 68) - *(*v8 + 60))
          {
            v42 = (a1 + 40);
            do
            {
              v9 = v42;
              if (v42 >= a2)
              {
                break;
              }

              v42 = (v42 + 40);
            }

            while (v40 <= *(*v9 + 68) - *(*v9 + 60));
          }

          else
          {
            v9 = a1;
            do
            {
              v41 = *(v9 + 5);
              v9 = (v9 + 40);
            }

            while (v40 <= *(v41 + 68) - *(v41 + 60));
          }

          v43 = a2;
          if (v9 < a2)
          {
            v43 = a2;
            do
            {
              v44 = *(v43 - 5);
              v43 = (v43 - 40);
            }

            while (v40 > *(v44 + 68) - *(v44 + 60));
          }

          v137 = a1[1];
          v45 = *(a1 + 4);
          while (v9 < v43)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(v9, v43);
            v46 = *(v39 + 68) - *(v39 + 60);
            do
            {
              v47 = *(v9 + 5);
              v9 = (v9 + 40);
            }

            while (v46 <= *(v47 + 68) - *(v47 + 60));
            do
            {
              v48 = *(v43 - 5);
              v43 = (v43 - 40);
            }

            while (v46 > *(v48 + 68) - *(v48 + 60));
          }

          v49 = (v9 - 40);
          if ((v9 - 40) != a1)
          {
            v50 = *v49;
            *v49 = 0;
            *(v9 - 4) = 0;
            v51 = *(a1 + 1);
            *a1 = v50;
            if (v51)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v51);
            }

            *(a1 + 4) = *(v9 - 6);
            *(a1 + 5) = *(v9 - 5);
            *(a1 + 6) = *(v9 - 4);
            *(a1 + 7) = *(v9 - 3);
            *(a1 + 4) = *(v9 - 1);
          }

          v52 = *(v9 - 4);
          *(v9 - 40) = v142;
          if (v52)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v52);
          }

          a4 = 0;
          *(v9 - 24) = v137;
          *(v9 - 1) = v45;
        }

        v136 = *a1;
        v19 = *a1;
        v141 = a1[1];
        *a1 = 0;
        *(a1 + 1) = 0;
        v20 = *(a1 + 4);
        v21 = v19;
        v22 = *(v19 + 68) - *(v19 + 60);
        v23 = a1;
        do
        {
          v24 = v23;
          v25 = *(v23 + 5);
          v23 = (v23 + 40);
        }

        while (*(v25 + 68) - *(v25 + 60) > v22);
        v26 = v147;
        if (v24 == a1)
        {
          v26 = v147;
          do
          {
            if (v23 >= v26)
            {
              break;
            }

            v28 = *(v26 - 5);
            v26 = (v26 - 40);
          }

          while (*(v28 + 68) - *(v28 + 60) <= v22);
        }

        else
        {
          do
          {
            v27 = *(v26 - 5);
            v26 = (v26 - 40);
          }

          while (*(v27 + 68) - *(v27 + 60) <= v22);
        }

        if (v23 >= v26)
        {
          v9 = v23;
        }

        else
        {
          v29 = v26;
          v9 = v23;
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(v9, v29);
            v30 = *(v21 + 68) - *(v21 + 60);
            do
            {
              v31 = *(v9 + 5);
              v9 = (v9 + 40);
            }

            while (*(v31 + 68) - *(v31 + 60) > v30);
            do
            {
              v32 = *(v29 - 5);
              v29 = (v29 - 40);
            }

            while (*(v32 + 68) - *(v32 + 60) <= v30);
          }

          while (v9 < v29);
        }

        v33 = (v9 - 40);
        a2 = v147;
        if ((v9 - 40) != a1)
        {
          v34 = *v33;
          *v33 = 0;
          *(v9 - 4) = 0;
          v35 = *(a1 + 1);
          *a1 = v34;
          if (v35)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v35);
          }

          *(a1 + 4) = *(v9 - 6);
          *(a1 + 5) = *(v9 - 5);
          *(a1 + 6) = *(v9 - 4);
          *(a1 + 7) = *(v9 - 3);
          *(a1 + 4) = *(v9 - 1);
        }

        v36 = *(v9 - 4);
        *(v9 - 40) = v136;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v36);
        }

        *(v9 - 24) = v141;
        *(v9 - 1) = v20;
        if (v23 >= v26)
        {
          break;
        }

LABEL_45:
        std::__introsort<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,false>(a1, v9 - 40, a3, a4 & 1);
        a4 = 0;
      }

      v37 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*>(a1, (v9 - 40));
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*>(v9, v147))
      {
        break;
      }

      if (!v37)
      {
        goto LABEL_45;
      }
    }

    a2 = (v9 - 40);
    if (!v37)
    {
      continue;
    }

    break;
  }
}

void ta2::TextureAtlas::createFailedRegionLoadItems(void *a1, uint64_t *a2)
{
  std::vector<ta2::TextureAtlas::RegionLoadItem>::reserve(a2, a1[33] - 0x3333333333333333 * ((a2[1] - *a2) >> 3));
  v4 = a1[31];
  v5 = a1 + 32;
  if (v4 != a1 + 32)
  {
    do
    {
      if (*(v4[4] + 129) == 1)
      {
        v15 = 0;
        v13 = 0u;
        v14 = 0u;
        v6 = v4[4];
        v7 = v4[5];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          *&v13 = v6;
          *(&v13 + 1) = v7;
          v6 = v4[4];
        }

        else
        {
          *&v13 = v4[4];
        }

        v15 = v6[3];
        v9 = v6[7];
        v8 = v6[8];
        LODWORD(v14) = v9 - 1;
        DWORD1(v14) = (v9 - 0x100000000) >> 32;
        DWORD2(v14) = v8 + 1;
        HIDWORD(v14) = (v8 + 0x100000000) >> 32;
        std::vector<ta2::TextureAtlas::RegionLoadItem>::push_back[abi:nn200100](a2, &v13);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }
      }

      v10 = v4[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v4[2];
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != v5);
  }
}

void ta2::TextureAtlas::loadRegions(uint64_t a1, __n128 *a2, __n128 *a3, double a4, uint32x4_t a5)
{
  v101 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v5 = a3;
    v6 = a2;
    v8 = xmmword_1B33B1490;
    do
    {
      v9 = v6[2].n128_u64[0];
      if (v9)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = v6[1].n128_u32[v11 + 2];
          v13 = v6[1].n128_u32[v11];
          if (v10)
          {
            break;
          }

          v10 = 1;
          v11 = 1;
        }

        while (v12 >= v13);
        v8.i32[0] = v12;
        a5.i32[0] = v13;
        v14 = vdupq_lane_s32(*&vcgtq_u32(a5, v8), 0);
        a5 = v6[1];
        v8 = vbslq_s8(v14, a5, vaddq_s32(a5, xmmword_1B33B1490));
        v15 = v8.i32[0];
        v16 = v8.i32[2];
        v17 = v6->n128_u64[0];
        v18 = HIDWORD(v8.i64[1]);
        v19 = HIDWORD(v8.i64[0]);
        if (!*(v6->n128_u64[0] + 129))
        {
          *(v17 + 24) = v9;
          *(v17 + 56) = v8;
          a5.i64[0] = v9[23];
          a5.i64[1] = a5.i64[0];
          v8 = vmulq_f32(a5, vcvtq_f32_u32(v8));
          *(v17 + 129) = 1;
          *(v17 + 72) = v8;
          v20 = v9[46];
          v21 = v9[47];
          if (v20 >= v21)
          {
            v24 = v9[45];
            v25 = (v20 - v24) >> 4;
            v26 = v25 + 1;
            if ((v25 + 1) >> 60)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v27 = v21 - v24;
            if (v27 >> 3 > v26)
            {
              v26 = v27 >> 3;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF0)
            {
              v28 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            v96 = (v9 + 45);
            if (v28)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v28);
            }

            v29 = 16 * v25;
            v30 = *v6;
            *(16 * v25) = *v6;
            if (v30.n128_u64[1])
            {
              atomic_fetch_add_explicit((v30.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
            }

            v23 = (v29 + 16);
            v31 = v9[45];
            v32 = v9[46] - v31;
            v33 = v29 - v32;
            memcpy((v29 - v32), v31, v32);
            v34 = v9[45];
            v9[45] = v33;
            v9[46] = v23;
            v35 = v9[47];
            v9[47] = 0;
            *&v95 = v34;
            *(&v95 + 1) = v35;
            *&v94 = v34;
            *(&v94 + 1) = v34;
            std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(&v94);
            v5 = a3;
          }

          else
          {
            *v20 = v6->n128_u64[0];
            v22 = v6->n128_u64[1];
            v20[1] = v22;
            if (v22)
            {
              atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
            }

            v23 = v20 + 2;
          }

          v9[46] = v23;
          v17 = v6->n128_u64[0];
        }

        v36 = *(v17 + 32);
        if (v36)
        {
          *(v36 + 216) = *(a1 + 304);
          v37 = *(a1 + 424);
          v38 = *(v36 + 192);
          v39 = *(v36 + 200) | v87 & 0xFFFFFFFFFFFFFF00;
          v40 = *(v6[2].n128_u64[0] + 200) | v86 & 0xFFFFFFFFFFFFFF00;
          LODWORD(v94) = 0;
          HIDWORD(v94) = 0;
          v41 = *(v17 + 48);
          *(&v94 + 4) = *(v17 + 40);
          *&v95 = vsub_s32(v41, *(&v94 + 4));
          *(&v95 + 1) = 1;
          v96 = v6[1].n128_u64[0];
          LODWORD(v97) = 0;
          BYTE4(v97) = 0;
          v86 = v40;
          v87 = v39;
          (*(*v37 + 16))(v37, v38);
        }

        else
        {
          v42 = *(v17 + 88);
          if (v42)
          {
            v82 = v19;
            v43 = *(v17 + 96);
            if (v43)
            {
              atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v44 = v42[8];
            v85 = v43;
            v45 = *(a1 + 408);
            LODWORD(v94) = v44;
            WORD2(v94) = 1;
            v46 = (*(*v45 + 16))(v45, &v94);
            v47 = *(a1 + 424);
            v94 = (*(*v42 + 16))(v42, 0);
            *&v95 = v44;
            if (v85)
            {
              atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *(&v95 + 1) = &unk_1F2A16F70;
            v96 = v42;
            v97 = v85;
            v98 = &v95 + 8;
            v48 = *(*v47 + 48);
            v49 = v47;
            v50 = v46;
            v48(v49, v46, &v94);
            std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&v95 + 8);
            v51 = *(a1 + 424);
            v52 = v6[2].n128_u64[0];
            v53 = *(v52 + 192);
            v54 = *(v52 + 200) | v83 & 0xFFFFFFFFFFFFFF00;
            v55 = (v16 - v15) * *(a1 + 36);
            LODWORD(v94) = 0;
            *(&v94 + 4) = __PAIR64__(v44, v55);
            HIDWORD(v94) = v16 - v15;
            LODWORD(v95) = v18 - v82;
            *(&v95 + 4) = 1;
            HIDWORD(v95) = v15;
            v96 = v82;
            LOBYTE(v97) = 0;
            (*(*v51 + 32))(v51, v46, v53, v54, &v94);
            v56 = *(a1 + 368);
            v58 = *(v56 - 16);
            v57 = *(v56 - 8);
            v83 = v54;
            if (v58 >= v57)
            {
              v60 = *(v56 - 24);
              v61 = (v58 - v60) >> 3;
              if ((v61 + 1) >> 61)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v62 = v57 - v60;
              v63 = v62 >> 2;
              if (v62 >> 2 <= (v61 + 1))
              {
                v63 = v61 + 1;
              }

              if (v62 >= 0x7FFFFFFFFFFFFFF8)
              {
                v64 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v64 = v63;
              }

              if (v64)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v64);
              }

              *(8 * v61) = v50;
              v59 = 8 * v61 + 8;
              v65 = *(v56 - 24);
              v66 = *(v56 - 16) - v65;
              v67 = (8 * v61 - v66);
              memcpy(v67, v65, v66);
              v68 = *(v56 - 24);
              *(v56 - 24) = v67;
              *(v56 - 16) = v59;
              *(v56 - 8) = 0;
              if (v68)
              {
                operator delete(v68);
              }
            }

            else
            {
              *v58 = v50;
              v59 = (v58 + 1);
            }

            v69 = 0;
            *(v56 - 16) = v59;
            v71 = *(v6->n128_u64[0] + 56);
            v70 = *(v6->n128_u64[0] + 64);
            v72 = (v70 + 0x100000000) >> 32;
            LODWORD(v94) = v70 - v71 + 2;
            DWORD1(v94) = 1;
            DWORD2(v94) = v71 - 1;
            HIDWORD(v94) = (v71 - 0x100000000) >> 32;
            *&v95 = v94 | 0x100000000;
            DWORD2(v95) = v71 - 1;
            HIDWORD(v95) = v72 - 1;
            LODWORD(v96) = 1;
            HIDWORD(v96) = v72 - HIDWORD(v94);
            LODWORD(v97) = v71 - 1;
            HIDWORD(v97) = HIDWORD(v94);
            LODWORD(v98) = 1;
            HIDWORD(v98) = v72 - HIDWORD(v94);
            v99 = v70;
            v100 = HIDWORD(v94);
            do
            {
              v73 = *(a1 + 424);
              v74 = (*(*v6->n128_u64[0] + 32))();
              v76 = v75;
              v77 = (*(*v6->n128_u64[0] + 32))();
              v88 = 0u;
              v78 = *(&v94 + v69 + 8);
              v89 = *(&v94 + v69);
              v90 = 1;
              v91 = v78;
              v92 = 0;
              v93 = 0;
              (*(*v73 + 16))(v73, v74, v76, v77, v79, &v88);
              v69 += 16;
            }

            while (v69 != 64);
            if (v85)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v85);
            }

            v5 = a3;
          }
        }

        v80 = v6->n128_u64[0];
        v81 = *(a1 + 304);
        *(v80 + 129) = 2;
        *(v80 + 104) = v81;
      }

      v6 = (v6 + 40);
    }

    while (v6 != v5);
  }
}

void std::vector<ta2::TextureAtlas::RegionLoadItem>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 4);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__function::__func<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0,std::allocator<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0,std::allocator<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0,std::allocator<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A16F70;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0,std::allocator<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A16F70;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0,std::allocator<ta2::TextureAtlas::loadRegions(std::vector<ta2::TextureAtlas::RegionLoadItem> const&)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A16F70;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void *std::vector<ta2::TextureAtlas::RegionLoadItem>::reserve(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<ta2::TextureAtlas::RegionLoadItem>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t *std::vector<ta2::TextureAtlas::RegionLoadItem>::push_back[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    v19[4] = v2;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<ta2::TextureAtlas::RegionLoadItem>>(v11);
    }

    v12 = *(a2 + 8);
    v13 = 40 * v8;
    *v13 = *a2;
    *(v13 + 8) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(a2 + 16);
    *(40 * v8 + 0x20) = *(a2 + 32);
    *(40 * v8 + 0x10) = v14;
    v7 = v13 + 40;
    v15 = v2[1];
    v16 = v13 + *v2 - v15;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<ta2::TextureAtlas::RegionLoadItem>,ta2::TextureAtlas::RegionLoadItem*>(*v2, v15, v16);
    v17 = *v2;
    *v2 = v16;
    v2[1] = v7;
    v18 = v2[2];
    v2[2] = 0;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ta2::TextureAtlas::RegionLoadItem>::~__split_buffer(v19);
  }

  else
  {
    v5 = *(a2 + 8);
    *v3 = *a2;
    *(v3 + 8) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  v2[1] = v7;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<ta2::TextureAtlas::RegionLoadItem>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<ta2::TextureAtlas::RegionLoadItem>,ta2::TextureAtlas::RegionLoadItem*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *v5 = 0;
      *(v5 + 8) = 0;
      v6 = *(v5 + 16);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 16) = v6;
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
    do
    {
      v7 = *(v4 + 8);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v4 += 40;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<ta2::TextureAtlas::RegionLoadItem>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 40;
    v4 = *(v2 - 32);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL ta2::TextureAtlasPage::reserveRegions(_DWORD *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = (a2 + 32);
    v7 = 1;
    v8 = a3;
    while (1)
    {
      v9 = *(v6 - 4);
      v11 = *(v9 + 56);
      v10 = *(v9 + 64);
      v12 = v10 - v11 + 2;
      v13 = ((v10 + 0x100000000) >> 32) - ((v11 - 0x100000000) >> 32);
      v14 = geo::SkylineBin::insert((a1 + 6), v12, v13);
      v16 = (HIDWORD(v15) - HIDWORD(v14)) * (v15 - v14);
      if (v16 != v13 * v12)
      {
        break;
      }

      a1[52] += v16;
      *(v6 - 2) = v14;
      *(v6 - 1) = v15;
      *v6 = a1;
      v6 += 5;
      v5 = v7++ >= a3;
      if (!--v8)
      {
        return 1;
      }
    }

    if (!a1[53])
    {
      a1[53] = (a1[52] * 0.8);
    }
  }

  else
  {
    return 1;
  }

  return v5;
}

uint64_t std::construct_at[abi:nn200100]<ta2::TextureAtlasPage,ta2::TextureAtlas &,gm::Matrix<unsigned int,2,1> &,unsigned int &,BOOL &,BOOL,std::shared_ptr<mre::GraphicsResourceStore> &,ta2::TextureAtlasPage*>(uint64_t a1, uint64_t a2, uint32x2_t *a3, int a4, char a5, char a6, uint64_t a7, std::__shared_weak_count *a8)
{
  v11[0] = a7;
  v11[1] = a8;
  if (a8)
  {
    atomic_fetch_add_explicit(&a8->__shared_owners_, 1uLL, memory_order_relaxed);
    ta2::TextureAtlasPage::TextureAtlasPage(a1, a2, a3, a4, a5 & 1, a6 & 1, v11);
    std::__shared_weak_count::__release_shared[abi:nn200100](a8);
  }

  else
  {
    ta2::TextureAtlasPage::TextureAtlasPage(a1, a2, a3, a4, a5 & 1, a6 & 1, v11);
  }

  return a1;
}

void ta2::TextureAtlas::clearPageEdges(ta2::TextureAtlas *this, ta2::TextureAtlasPage *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(**(this + 51) + 24))(*(this + 51), *(a2 + 24), *(a2 + 200));
  if (!v4)
  {
    if (GEOGetVectorKitTextureAtlasLog(void)::onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitTextureAtlasLog(void)::onceToken, &__block_literal_global_17126);
    }

    v5 = GEOGetVectorKitTextureAtlasLog(void)::log;
    if (os_log_type_enabled(GEOGetVectorKitTextureAtlasLog(void)::log, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315650;
      *v24 = "textureDescriptor";
      *&v24[8] = 2080;
      *&v24[10] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/TextureAtlas2.cpp";
      *&v24[18] = 1024;
      *&v24[20] = 542;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "Using stale/invalid texture: Assertion with expression - %s : Failed in file - %s line - %i", &v23, 0x1Cu);
    }
  }

  v6 = *v4;
  if (*(this + 15) >= v4[1])
  {
    v7 = v4[1];
  }

  else
  {
    v7 = *(this + 15);
  }

  v8 = 0x200u / *(this + 36);
  if (v7)
  {
    v9 = 0;
    do
    {
      if (v7 >= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v7;
      }

      v11 = *(this + 53);
      v12 = *(this + 44);
      v13 = *(a2 + 24);
      v14 = *(a2 + 200);
      v15 = *(this + 36);
      v23 = 0;
      *v24 = v15;
      *&v24[4] = 0x100000200;
      *&v24[12] = v10;
      *&v24[16] = 1;
      v25 = 0;
      v26 = v9;
      v27 = 0;
      (*(*v11 + 32))(v11, v12, v13, v14, &v23);
      v9 += v10;
      v7 -= v10;
    }

    while (v7);
  }

  if (*(this + 14) < v6)
  {
    v6 = *(this + 14);
  }

  if (v6)
  {
    v16 = 0;
    do
    {
      if (v6 >= v8)
      {
        v17 = v8;
      }

      else
      {
        v17 = v6;
      }

      v18 = *(this + 53);
      v19 = *(this + 44);
      v20 = *(a2 + 24);
      v21 = *(a2 + 200);
      v22 = *(this + 36) * v8;
      v23 = 0;
      *v24 = v22;
      *&v24[4] = 512;
      *&v24[8] = v17;
      *&v24[12] = 0x100000001;
      *&v24[20] = 0;
      v25 = v16;
      v26 = 0;
      v27 = 0;
      (*(*v18 + 32))(v18, v19, v20, v21, &v23);
      v16 += v17;
      v6 -= v17;
    }

    while (v6);
  }
}

uint64_t ta2::TextureAtlasPage::TextureAtlasPage(uint64_t a1, uint64_t a2, uint32x2_t *a3, int a4, char a5, char a6, void *a7)
{
  *a1 = a2;
  *(a1 + 8) = *a7;
  v12 = a7[1];
  *(a1 + 16) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a3->i32[0];
  v14 = a3->u32[1];
  *(a1 + 24) = &unk_1F2A16DD8;
  *(a1 + 44) = 0;
  *(a1 + 52) = 256;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = &unk_1F2A16E10;
  *(a1 + 96) = 0;
  *(a1 + 116) = 1;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 108) = 512;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 168) = 0;
  v24 = 0uLL;
  *(a1 + 152) = 0;
  std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100]((a1 + 144), &v24);
  geo::SkylineBin::resize(a1 + 24, v13, v14, 1, 0);
  __asm { FMOV            V2.2S, #1.0 }

  v20 = vdiv_f32(_D2, vcvt_f32_u32(*a3));
  *(a1 + 176) = *a3;
  *(a1 + 184) = v20;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 850045863;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 850045863;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  if (a4)
  {
    operator new();
  }

  *(a1 + 53) = a5;
  if (*(a1 + 80) == 1)
  {
    *(a1 + 116) = a5;
  }

  if ((a6 & 1) == 0)
  {
    *&v24 = *(a1 + 176);
    v21 = *(a1 + 8);
    DWORD2(v24) = *(*a1 + 32);
    HIDWORD(v24) = 3;
    *(a1 + 192) = (**v21)(v21, &v24);
    *(a1 + 200) = v22;
  }

  return a1;
}

void geo::SkylineBin::resize(uint64_t a1, unsigned int a2, unsigned int a3, char a4, int a5)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 56) = a4;
  *(a1 + 24) = a5;
  *(a1 + 16) = 0;
  v5 = *(a1 + 32);
  *(a1 + 40) = v5;
  v6 = *(a1 + 48);
  if (v5 >= v6)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 2);
    v8 = 2 * v7;
    if (2 * v7 <= 1)
    {
      v8 = 1;
    }

    if (v7 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v9);
  }

  *v5 = 0;
  *(v5 + 8) = a2;
  *(a1 + 40) = v5 + 12;
  if (*(a1 + 56) == 1)
  {
    v10 = *(a1 + 28);
    *(a1 + 72) = a2;
    *(a1 + 76) = a3;
    *(a1 + 84) = 769;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 144) = v10;
    *(a1 + 104) = *(a1 + 96);
    *&v12 = 0;
    *(&v12 + 1) = __PAIR64__(a3, a2);
    v11 = (a1 + 120);
    *(a1 + 128) = *(a1 + 120);
    std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100]((a1 + 120), &v12);
    v11[1] = *v11;
  }
}

BOOL geo::GuillotineBin::erase(geo::GuillotineBin *this, __int128 *a2)
{
  v4 = *(this + 4);
  v5 = *(this + 5);
  v27 = *a2;
  v6 = v4;
  if (v5 != v4)
  {
    while (!md::DaVinciGroundRenderLayer::ColorCorrectionKey::operator==(v6, &v27))
    {
      v6 += 16;
      if (v6 == v5)
      {
        return 0;
      }
    }
  }

  v7 = v6 + 16;
  if (v6 != v5 && v7 != v5)
  {
    do
    {
      if (!md::DaVinciGroundRenderLayer::ColorCorrectionKey::operator==(v7, &v27))
      {
        *v6 = *v7;
        *(v6 + 4) = *(v7 + 4);
        *(v6 + 8) = *(v7 + 8);
        *(v6 + 12) = *(v7 + 12);
        v6 += 16;
      }

      v7 += 16;
    }

    while (v7 != v5);
  }

  if (v6 == v5)
  {
    return 0;
  }

  *(this + 5) = v6;
  v9 = (v6 - v4) >> 4;
  v10 = ((v5 - v4) >> 4) - 1;
  v11 = v9 == v10;
  if (v9 == v10)
  {
    v13 = *(this + 8);
    v12 = *(this + 9);
    if (v13 >= v12)
    {
      v16 = *(this + 7);
      v17 = (v13 - v16) >> 4;
      v18 = v17 + 1;
      if ((v17 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v12 - v16;
      if (v19 >> 3 > v18)
      {
        v18 = v19 >> 3;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF0)
      {
        v20 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v20);
      }

      v21 = (16 * v17);
      *v21 = *a2;
      v14 = 16 * v17 + 16;
      v22 = *(this + 7);
      v23 = *(this + 8);
      v24 = (v21 + v22 - v23);
      if (v22 != v23)
      {
        v25 = v24;
        do
        {
          v26 = *v22;
          v22 += 16;
          *v25++ = v26;
        }

        while (v22 != v23);
        v22 = *(this + 7);
      }

      *(this + 7) = v24;
      *(this + 8) = v14;
      *(this + 9) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v13 = *a2;
      v14 = (v13 + 1);
    }

    *(this + 8) = v14;
    *(this + 4) += (*(a2 + 3) - *(a2 + 1)) * (*a2 - *(a2 + 2));
    *(this + 6) += (*(a2 + 3) - *(a2 + 1)) * (*(a2 + 2) - *a2);
    if (*(this + 28) == 1)
    {
      geo::GuillotineBin::mergeFreeList(this);
    }
  }

  return v11;
}

uint64_t geo::GuillotineBin::mergeFreeList(uint64_t this)
{
  v1 = *(this + 56);
  v2 = *(this + 64);
  if (v2 != v1)
  {
    v3 = 0;
    while (1)
    {
      v4 = v3++;
      if (v3 < (v2 - v1) >> 4)
      {
        break;
      }

      v17 = (v2 - v1) >> 4;
LABEL_33:
      if (v3 >= v17)
      {
        return this;
      }
    }

    v5 = (v1 + 16 * v4);
    v6 = v3;
    v7 = v2;
    while (1)
    {
      v8 = v5[2];
      v9 = (v1 + 16 * v6);
      v10 = v9[2];
      if (v8 == v10)
      {
        v11 = v5[1];
        if (*v5 == *v9)
        {
          v12 = v9[3];
          if (v11 == v12)
          {
            v5[1] = v9[1];
            v2 = v1 + 16 * v6;
            v13 = v2 + 16;
            if (v2 + 16 != v7)
            {
              do
              {
                *(v13 - 16) = *v13;
                *(v13 - 12) = *(v13 + 4);
                *(v13 - 4) = *(v13 + 12);
                v13 += 16;
              }

              while (v13 != v7);
              goto LABEL_28;
            }

            goto LABEL_29;
          }

          if (v5[3] == v9[1])
          {
            v5[3] = v12;
            v2 = v1 + 16 * v6;
            v13 = v2 + 16;
            if (v2 + 16 != v7)
            {
              do
              {
                *(v13 - 16) = *v13;
                *(v13 - 12) = *(v13 + 4);
                *(v13 - 4) = *(v13 + 12);
                v13 += 16;
              }

              while (v13 != v7);
              goto LABEL_28;
            }

            goto LABEL_29;
          }

          goto LABEL_30;
        }
      }

      else
      {
        v11 = v5[1];
      }

      v14 = v9[1];
      if (v11 != v14 || v5[3] - v11 != v9[3] - v14)
      {
        goto LABEL_30;
      }

      v16 = *v9;
      if (*v5 == v10)
      {
        *v5 = v16;
        v2 = v1 + 16 * v6;
        v13 = v2 + 16;
        if (v2 + 16 != v7)
        {
          do
          {
            *(v13 - 16) = *v13;
            *(v13 - 12) = *(v13 + 4);
            *(v13 - 4) = *(v13 + 12);
            v13 += 16;
          }

          while (v13 != v7);
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      if (v8 == v16)
      {
        v5[2] = v10;
        v2 = v1 + 16 * v6;
        v13 = v2 + 16;
        if (v2 + 16 != v7)
        {
          do
          {
            *(v13 - 16) = *v13;
            *(v13 - 12) = *(v13 + 4);
            *(v13 - 4) = *(v13 + 12);
            v13 += 16;
          }

          while (v13 != v7);
LABEL_28:
          v2 = v13 - 16;
        }

LABEL_29:
        *(this + 64) = v2;
        --v6;
        v7 = v2;
      }

LABEL_30:
      if (++v6 >= (v7 - v1) >> 4)
      {
        v17 = (v2 - v1) >> 4;
        goto LABEL_33;
      }
    }
  }

  return this;
}

uint64_t geo::GuillotineBin::insert(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1] - *a2;
  if (v4)
  {
    v52 = v2;
    v53 = v3;
    v5 = a2;
    v6 = a1;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = v4 >> 4;
    while (1)
    {
      v49 = *(v6 + 56);
      v11 = *(v6 + 64) - v49;
      if (!v11)
      {
        return 0;
      }

      v12 = 0;
      v46 = *v5;
      v47 = *v5 + 8;
      v13 = 0x7FFFFFFF;
      v48 = v11 >> 4;
      do
      {
        v14 = (v49 + 16 * v12);
        v15 = v14[1].i32[0] - v14->i32[0];
        v16 = v47;
        v17 = v8;
        v8 = 0;
        while (1)
        {
          v18 = *v16 - *(v16 - 2);
          v19 = v16[1] - *(v16 - 1);
          if (v18 == v15 && v19 == v14[1].i32[1] - v14->i32[1])
          {
            v9 = 0;
            goto LABEL_28;
          }

          if (v19 == v15 && v18 == v14[1].i32[1] - v14->i32[1])
          {
            break;
          }

          if (v18 <= v15 && v19 <= v14[1].i32[1] - v14->i32[1])
          {
            v22 = geo::GuillotineBin::scoreByHeuristic(*(a1 + 20), *v16 - *(v16 - 2), v19, v14);
            v21 = v22 < v13;
            if (v22 < v13)
            {
              v13 = v22;
              v9 = 0;
            }

            goto LABEL_18;
          }

          if (v19 <= v15 && v18 <= v14[1].i32[1] - v14->i32[1])
          {
            v20 = geo::GuillotineBin::scoreByHeuristic(*(a1 + 20), v16[1] - *(v16 - 1), *v16 - *(v16 - 2), v14);
            v21 = v20 < v13;
            if (v20 < v13)
            {
              v13 = v20;
              v9 = 1;
            }

LABEL_18:
            if (v21)
            {
              v17 = v8;
            }

            if (v21)
            {
              v7 = v12;
            }
          }

          v16 += 4;
          if (v10 == ++v8)
          {
            v23 = v12;
            v8 = v17;
            v24 = v48;
            goto LABEL_29;
          }
        }

        v9 = 1;
LABEL_28:
        v13 = 0x80000000;
        v24 = v48;
        v23 = v48;
        v7 = v12;
LABEL_29:
        v12 = v23 + 1;
      }

      while (v23 + 1 < v24);
      if (v13 == 0x7FFFFFFF)
      {
        return 0;
      }

      v25 = (v49 + 16 * v7);
      v26 = *v25;
      v27 = v25[1];
      *&v51 = __PAIR64__(v27, v26);
      v28 = (v46 + 16 * v8);
      v29 = v28[3];
      v30 = v28[1];
      v31 = v28[2] - *v28;
      v32 = v29 - v30;
      v33 = v26 + v31;
      v34 = v29 - v30 + v27;
      DWORD2(v51) = v26 + v31;
      HIDWORD(v51) = v34;
      if (v9)
      {
        v33 = v32 + v26;
        v34 = v31 + v27;
        DWORD2(v51) = v32 + v26;
        HIDWORD(v51) = v31 + v27;
      }

      v5 = a2;
      v6 = a1;
      geo::GuillotineBin::splitFreeRectByHeuristic(a1, v25, &v51);
      v35 = *(a1 + 64);
      v36 = *(a1 + 56) + 16 * v7;
      v37 = v36 + 16;
      if (v36 + 16 != v35)
      {
        do
        {
          *(v37 - 16) = *v37;
          *(v37 - 12) = *(v37 + 4);
          *(v37 - 4) = *(v37 + 12);
          v37 += 16;
        }

        while (v37 != v35);
        v36 = v37 - 16;
      }

      *(a1 + 64) = v36;
      v38 = *a2;
      v39 = (*a2 + 16 * v8);
      *v39 = v26;
      v39[1] = v27;
      v39[2] = v33;
      v39[3] = v34;
      v40 = (v38 + 16 * v8);
      v41 = v38 + 16 * v10;
      v42 = *v40;
      *v40 = *(v41 - 16);
      *(v40 + 1) = *(v41 - 12);
      *(v40 + 2) = *(v41 - 8);
      *(v40 + 3) = *(v41 - 4);
      *(v41 - 16) = v42;
      --v10;
      geo::GuillotineBin::mergeFreeList(a1);
      std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100]((a1 + 32), &v51);
      v43 = (v34 - v27) * (v33 - v26);
      *(a1 + 16) += v43;
      *(a1 + 24) -= v43;
      if (!v10)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t geo::GuillotineBin::scoreByHeuristic(uint64_t result, int a2, int a3, int32x2_t *a4)
{
  if (result > 2u)
  {
    if (result == 3)
    {
      return (a3 * a2 + (a4[1].i32[1] - a4->i32[1]) * (a4->i32[0] - a4[1].i32[0]));
    }

    else
    {
      if (result == 4)
      {
        v6 = a4[1].i32[0] - (a4->i32[0] + a2);
        if (v6 < 0)
        {
          v6 = a4->i32[0] + a2 - a4[1].i32[0];
        }

        v11 = a4[1].i32[1] - (a4->i32[1] + a3);
        if (v11 < 0)
        {
          v11 = a4->i32[1] + a3 - a4[1].i32[1];
        }

        if (v11 < v6)
        {
          v6 = v11;
        }
      }

      else
      {
        if (result != 5)
        {
          return result;
        }

        v6 = a4[1].i32[0] - (a4->i32[0] + a2);
        if (v6 < 0)
        {
          v6 = a4->i32[0] + a2 - a4[1].i32[0];
        }

        v7 = a4[1].i32[1] - (a4->i32[1] + a3);
        if (v7 < 0)
        {
          v7 = a4->i32[1] + a3 - a4[1].i32[1];
        }

        if (v6 <= v7)
        {
          v6 = v7;
        }
      }

      return -v6;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      v9 = a4[1].i32[0] - (a4->i32[0] + a2);
      if (v9 < 0)
      {
        v9 = a4->i32[0] + a2 - a4[1].i32[0];
      }

      v10 = a4[1].i32[1] - (a4->i32[1] + a3);
      if (v10 < 0)
      {
        v10 = a4->i32[1] + a3 - a4[1].i32[1];
      }

      if (v10 >= v9)
      {
        return v9;
      }

      else
      {
        return v10;
      }
    }

    else if (result == 2)
    {
      v4 = a4[1].i32[0] - (a4->i32[0] + a2);
      if (v4 < 0)
      {
        v4 = a4->i32[0] + a2 - a4[1].i32[0];
      }

      v5 = a4[1].i32[1] - (a4->i32[1] + a3);
      if (v5 < 0)
      {
        v5 = a4->i32[1] + a3 - a4[1].i32[1];
      }

      if (v4 <= v5)
      {
        return v5;
      }

      else
      {
        return v4;
      }
    }
  }

  else
  {
    v8 = vsub_s32(a4[1], *a4);
    return vmul_lane_s32(v8, v8, 1).u32[0] - a3 * a2;
  }

  return result;
}

void geo::GuillotineBin::splitFreeRectByHeuristic(uint64_t a1, int *a2, _DWORD *a3)
{
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = v5 - *a2;
  v10 = a3[2];
  v9 = a3[3];
  v11 = v10 - *a3;
  v12 = v8 - v11;
  v13 = v9 - a3[1];
  v14 = v4 - v7 - v13;
  v15 = *(a1 + 21);
  v16 = v14 * v11;
  v17 = v13 * v12;
  v18 = v8 > v4 - v7;
  v19 = v8 <= v4 - v7;
  v20 = v18;
  if (v15 != 5)
  {
    v20 = 0;
  }

  if (v15 != 4)
  {
    v19 = v20;
  }

  if (v15 == 3)
  {
    v19 = v16 <= v17;
  }

  v18 = v12 > v14;
  v21 = v12 <= v14;
  v22 = v18;
  v23 = v16 > v17;
  if (v15 != 2)
  {
    v23 = 0;
  }

  if (v15 == 1)
  {
    v23 = v22;
  }

  if (!*(a1 + 21))
  {
    v23 = v21;
  }

  if (*(a1 + 21) <= 2u)
  {
    v19 = v23;
  }

  LODWORD(v29) = *a2;
  DWORD1(v29) = v9;
  *&v28 = __PAIR64__(v7, v10);
  v24 = !v19;
  if (v19)
  {
    v25 = v5;
  }

  else
  {
    v25 = v10;
  }

  if (v24)
  {
    v26 = v4;
  }

  else
  {
    v26 = v9;
  }

  *(&v29 + 1) = __PAIR64__(v4, v25);
  *(&v28 + 1) = __PAIR64__(v26, v5);
  if (v25 != v6 && v4 != v9)
  {
    std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100]((a1 + 56), &v29);
  }

  if (v5 != v10 && v26 != v7)
  {
    std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100]((a1 + 56), &v28);
  }
}

unint64_t geo::GuillotineBin::insert(geo::GuillotineBin *this, unsigned int a2, unsigned int a3, int a4)
{
  v5 = *(this + 7);
  v6 = *(this + 8) - v5;
  v29 = v5;
  if (!v6)
  {
    v31 = 0;
    v32 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_28;
  }

  v31 = 0;
  v32 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v6 >> 4;
  v14 = 0x7FFFFFFF;
  while (1)
  {
    v15 = v5[1].i32[0] - v5->i32[0];
    if (v15 == a2)
    {
      v16 = v5->i32[1];
      if (v5[1].i32[1] - v16 == a3)
      {
        v32 = v16 + a3;
        v11 = v5->u32[1];
        goto LABEL_27;
      }
    }

    v17 = *(this + 80);
    if (v15 == a3 && v17 != 0)
    {
      v19 = v5->i32[1];
      if (v5[1].i32[1] - v19 == a2)
      {
        break;
      }
    }

    if (v15 < a2 || v5[1].i32[1] - v5->i32[1] < a3)
    {
      if (v15 < a3 || v17 == 0)
      {
        goto LABEL_22;
      }

      if (v5[1].i32[1] - v5->i32[1] < a2)
      {
        goto LABEL_22;
      }

      v21 = geo::GuillotineBin::scoreByHeuristic(*(this + 20), a3, a2, v5);
      if (v21 >= v14)
      {
        goto LABEL_22;
      }

      v22 = a3;
      v23 = a2;
      goto LABEL_21;
    }

    v21 = geo::GuillotineBin::scoreByHeuristic(*(this + 20), a2, a3, v5);
    if (v21 < v14)
    {
      v22 = a2;
      v23 = a3;
LABEL_21:
      v14 = v21;
      v10 = v5->i32[0];
      v11 = v5->u32[1];
      v12 = v5->i32[0] + v22;
      v31 = v9;
      v32 = v11 + v23;
    }

LABEL_22:
    ++v9;
    v5 += 2;
    if (v9 >= v13)
    {
      goto LABEL_28;
    }
  }

  v32 = v19 + a2;
  a2 = a3;
  v11 = v5->u32[1];
LABEL_27:
  v12 = v5->i32[0] + a2;
  v31 = v9;
  v10 = v5->i32[0];
LABEL_28:
  *&v33 = v10 | (v11 << 32);
  *(&v33 + 1) = v12 | (v32 << 32);
  v24 = (v32 - v11) * (v12 - v10);
  if (v24)
  {
    geo::GuillotineBin::splitFreeRectByHeuristic(this, &v29[2 * v31], &v33);
    v25 = *(this + 8);
    v26 = *(this + 7) + 16 * v31;
    v27 = v26 + 16;
    if (v26 + 16 != v25)
    {
      do
      {
        *(v27 - 16) = *v27;
        *(v27 - 12) = *(v27 + 4);
        *(v27 - 4) = *(v27 + 12);
        v27 += 16;
      }

      while (v27 != v25);
      v26 = v27 - 16;
    }

    *(this + 8) = v26;
    if (a4)
    {
      geo::GuillotineBin::mergeFreeList(this);
    }

    std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](this + 4, &v33);
    *(this + 4) += v24;
    *(this + 6) -= v24;
  }

  return v10 | (v11 << 32);
}

void geo::GuillotineBin::resize(geo::GuillotineBin *this, unsigned int a2, unsigned int a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 5) = *(this + 4);
  *&v5 = 0;
  *(&v5 + 1) = __PAIR64__(a3, a2);
  v4 = *(this + 7);
  v3 = (this + 56);
  v3[1] = v4;
  std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](v3, &v5);
}

uint64_t geo::SkylineBin::erase(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (v2 == 1)
  {
    if (geo::GuillotineBin::erase((a1 + 64), a2))
    {
      *(a1 + 16) += (*(a2 + 12) - *(a2 + 4)) * (*a2 - *(a2 + 8));
    }

    else
    {
      geo::GuillotineBin::addFreeRegion(a1 + 64, a2);
      *(a1 + 16) += (*(a2 + 12) - *(a2 + 4)) * (*a2 - *(a2 + 8));
      if (*(a1 + 29) == 1)
      {
        geo::GuillotineBin::mergeFreeList(a1 + 64);
      }
    }
  }

  return v2;
}

void geo::GuillotineBin::addFreeRegion(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v5 >= v4)
  {
    v7 = *(a1 + 56);
    v8 = (v5 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v11);
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v6 = 16 * v8 + 16;
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v15 = (v12 + v13 - v14);
    if (v13 != v14)
    {
      v16 = v15;
      do
      {
        v17 = *v13;
        v13 += 16;
        *v16++ = v17;
      }

      while (v13 != v14);
      v13 = *(a1 + 56);
    }

    *(a1 + 56) = v15;
    *(a1 + 64) = v6;
    *(a1 + 72) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 64) = v6;
  *(a1 + 24) += (*(a2 + 12) - *(a2 + 4)) * (*(a2 + 8) - *a2);
}

uint64_t geo::SkylineBin::insert(geo::SkylineBin *a1, void *a2)
{
  v8 = a2[1] - *a2;
  if (!v8)
  {
    return 1;
  }

  v42 = v5;
  v43 = v4;
  v44 = v3;
  v45 = v2;
  v46 = v6;
  v47 = v7;
  v9 = v8 >> 4;
  v35 = a1;
  v27 = a2;
  while (1)
  {
    v10 = 0;
    v28 = v9;
    v11 = v9 <= 1 ? 1 : v9;
    v12 = *(a1 + 6);
    v33 = v39;
    v34 = v40;
    v13 = (*a2 + 8);
    v32 = v41;
    v14 = -1;
    v30 = -1;
    v31 = -1;
    v15 = -1;
    do
    {
      v36 = 0;
      *v37 = 0;
      if (v12 == 1)
      {
        PositionForNewNodeMinWaste = geo::SkylineBin::findPositionForNewNodeMinWaste(v35, *v13 - *(v13 - 2), v13[1] - *(v13 - 1), v37, &v37[1], &v36);
        v5 = HIDWORD(PositionForNewNodeMinWaste);
        v4 = HIDWORD(v19);
        LODWORD(v2) = PositionForNewNodeMinWaste;
        LODWORD(v3) = v19;
      }

      else if (!v12)
      {
        PositionForNewNodeBottomLeft = geo::SkylineBin::findPositionForNewNodeBottomLeft(v35, *v13 - *(v13 - 2), v13[1] - *(v13 - 1), &v37[1], v37, &v36);
        LODWORD(v2) = PositionForNewNodeBottomLeft;
        LODWORD(v3) = v17;
        v5 = HIDWORD(PositionForNewNodeBottomLeft);
        v4 = HIDWORD(v17);
      }

      if (v4 > v5 && *v37 < __PAIR64__(v15, v14))
      {
        v32 = v4;
        v33 = v5;
        v34 = v3;
        v30 = v36;
        v31 = v10;
        v29 = v2;
        v15 = v37[1];
        v14 = v37[0];
      }

      ++v10;
      v13 += 4;
    }

    while (v11 != v10);
    v38 = v29;
    v39 = v33;
    v40 = v34;
    v41 = v32;
    if (v31 == -1)
    {
      break;
    }

    geo::SkylineBin::addSkylineLevel(v35, v30, &v38);
    a1 = v35;
    a2 = v27;
    v20 = *v27;
    v21 = v27[1];
    v22 = (*v27 + 16 * v31);
    v23 = vsub_s32(v22[1], *v22);
    *(v35 + 4) += vmul_lane_s32(v23, v23, 1).u32[0];
    v22->i32[0] = v29;
    v22->i32[1] = v33;
    v22[1].i32[0] = v34;
    v22[1].i32[1] = v32;
    v24 = (v20 + 16 * v31);
    v25 = *v24;
    *v24 = *(v21 - 16);
    *(v24 + 1) = *(v21 - 12);
    *(v24 + 2) = *(v21 - 8);
    *(v24 + 3) = *(v21 - 4);
    *(v21 - 16) = v25;
    v9 = v28 - 1;
    if (v28 == 1)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t geo::SkylineBin::findPositionForNewNodeBottomLeft(geo::SkylineBin *this, unsigned int a2, int a3, unsigned int *a4, unsigned int *a5, unint64_t *a6)
{
  *a4 = -1;
  *a6 = -1;
  *a5 = -1;
  v6 = *(this + 4);
  v7 = *(this + 5) - v6;
  if (!v7)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
  v16 = (v6 + 8);
  v17 = -1;
  do
  {
    v25 = 0;
    if (geo::SkylineBin::rectangleFits(this, v12, a2, a3, &v25))
    {
      v18 = v25;
      v19 = v25 + a3;
      if (v25 + a3 < *a4 || v19 == *a4 && *v16 < v17)
      {
        *a4 = v19;
        *a6 = v12;
        v17 = *v16;
        *a5 = *v16;
        v13 = *(v16 - 2);
        v14 = v18;
      }
    }

    if (*(this + 28) == 1 && geo::SkylineBin::rectangleFits(this, v12, a3, a2, &v25))
    {
      v20 = v25;
      v21 = v25 + a2;
      if (v25 + a2 < *a4 || v21 == *a4 && *v16 < v17)
      {
        *a4 = v21;
        *a6 = v12;
        v17 = *v16;
        *a5 = *v16;
        v13 = *(v16 - 2);
        v14 = v20;
      }
    }

    ++v12;
    v16 += 3;
  }

  while (v12 < v15);
  return v13 | (v14 << 32);
}

unint64_t geo::SkylineBin::findPositionForNewNodeMinWaste(geo::SkylineBin *this, unsigned int a2, unsigned int a3, unsigned int *a4, unsigned int *a5, unint64_t *a6)
{
  *a4 = 0x7FFFFFFF;
  *a5 = 0x7FFFFFFF;
  *a6 = -1;
  v8 = *(this + 4);
  v9 = *(this + 5) - v8;
  if (v9)
  {
    v13 = 0;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 2);
    v15 = 0x7FFFFFFF;
    while (1)
    {
      *v24 = 0;
      if (geo::SkylineBin::rectangleFits(this, v13, a2, a3, &v24[1], v24))
      {
        v16 = v24[0];
        if (v24[0] < v15)
        {
          v6 = v24[1];
          v17 = v24[1] + a3;
LABEL_6:
          *a4 = v17;
          *a5 = v16;
          *a6 = v13;
          v7 = *v8;
          v15 = v16;
          goto LABEL_10;
        }

        if (v24[0] == v15 && v24[1] + a3 < *a4)
        {
          v17 = v24[1] + a3;
          v6 = v24[1];
          goto LABEL_6;
        }
      }

LABEL_10:
      if (*(this + 28) != 1 || !geo::SkylineBin::rectangleFits(this, v13, a3, a2, &v24[1], v24))
      {
        goto LABEL_18;
      }

      v18 = v24[0];
      if (v24[0] >= v15)
      {
        if (v24[0] != v15 || v24[1] + a2 >= *a4)
        {
          goto LABEL_18;
        }

        v19 = v24[1] + a2;
        v6 = v24[1];
      }

      else
      {
        v6 = v24[1];
        v19 = v24[1] + a2;
      }

      *a4 = v19;
      *a5 = v18;
      *a6 = v13;
      v7 = *v8;
      v15 = v18;
LABEL_18:
      ++v13;
      v8 += 3;
      if (v13 >= v14)
      {
        return v7 | (v6 << 32);
      }
    }
  }

  return 0;
}

void geo::SkylineBin::addSkylineLevel(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (*(a1 + 56))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 2) > a2)
    {
      v8 = a3[1];
      v9 = *(v6 + 12 * a2);
      v10 = v9 + a3[2] - *a3;
      v11 = 12 * a2;
      v12 = a2;
      do
      {
        v13 = *(v6 + v11);
        if (v13 >= v10)
        {
          break;
        }

        v14 = *(v6 + v11 + 8) + v13;
        if (v14 <= v9)
        {
          break;
        }

        if (v14 >= v10)
        {
          v14 = v10;
        }

        v57 = *(v6 + v11);
        v58 = v14;
        v59 = v8;
        if ((v8 - HIDWORD(v57)) * (v14 - v13))
        {
          geo::GuillotineBin::addFreeRegion(a1 + 64, &v57);
          v6 = *(a1 + 32);
          v7 = *(a1 + 40);
        }

        ++v12;
        v11 += 12;
      }

      while (v12 < 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 2));
    }
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
  }

  v15 = *(a1 + 20);
  if (v15 <= a3[3])
  {
    v15 = a3[3];
  }

  *(a1 + 20) = v15;
  v17 = a3[2];
  v16 = a3[3];
  LODWORD(v57) = *a3;
  HIDWORD(v57) = v16;
  v58 = v17 - v57;
  v18 = (v6 + 12 * a2);
  v19 = *(a1 + 48);
  if (v7 >= v19)
  {
    v28 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 2) + 1;
    if (v28 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v29 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v6) >> 2);
    if (2 * v29 > v28)
    {
      v28 = 2 * v29;
    }

    if (v29 >= 0xAAAAAAAAAAAAAAALL)
    {
      v30 = 0x1555555555555555;
    }

    else
    {
      v30 = v28;
    }

    if (v30)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(v30);
    }

    v32 = 12 * a2;
    if (!a2)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<float,3,1>>>(a2 << 32 == 0);
    }

    v33 = v57;
    *(12 * a2 + 8) = v58;
    *v32 = v33;
    v34 = *(a1 + 40);
    if (v34 == v18)
    {
      v38 = v18;
    }

    else
    {
      v35 = v18;
      v36 = v32 + 12;
      do
      {
        v37 = *v35;
        *(v36 + 8) = *(v35 + 2);
        *v36 = v37;
        v36 += 12;
        v35 += 12;
      }

      while (v35 != v34);
      v38 = *(a1 + 40);
    }

    v20 = v32 + 12 + v38 - v18;
    *(a1 + 40) = v18;
    v39 = *(a1 + 32);
    v40 = v32 + v39 - v18;
    if (v39 != v18)
    {
      v41 = v32 + v39 - v18;
      do
      {
        v42 = *v39;
        *(v41 + 8) = *(v39 + 2);
        *v41 = v42;
        v41 += 12;
        v39 += 12;
      }

      while (v39 != v18);
      v39 = *(a1 + 32);
    }

    *(a1 + 32) = v40;
    *(a1 + 40) = v20;
    *(a1 + 48) = 0;
    if (v39)
    {
      operator delete(v39);
      v20 = *(a1 + 40);
    }
  }

  else if (v18 == v7)
  {
    v31 = v57;
    *(v7 + 8) = v58;
    *v7 = v31;
    v20 = v7 + 12;
    *(a1 + 40) = v7 + 12;
  }

  else
  {
    v20 = v7;
    if (v7 >= 0xC)
    {
      v20 = v7 + 12;
      v21 = *(v7 - 12);
      *(v7 + 8) = *(v7 - 4);
      *v7 = v21;
    }

    *(a1 + 40) = v20;
    if (v7 != v18 + 12)
    {
      v22 = (v7 - 24);
      v23 = v6 + 12 * a2 - v7 + 12;
      v24 = (v7 - 4);
      do
      {
        *(v24 - 2) = *v22;
        *(v24 - 1) = v22[1];
        *v24 = v22[2];
        v24 -= 3;
        v22 -= 3;
        v23 += 12;
      }

      while (v23);
    }

    v25 = 12;
    if (v18 > &v57 || v20 <= &v57)
    {
      v25 = 0;
    }

    *v18 = *(&v57 + v25);
    v26 = 4;
    if (v18 <= &v57 && v20 > &v57)
    {
      v26 = 16;
    }

    *(v18 + 1) = *(&v57 + v26);
    v27 = 8;
    if (v18 <= &v57 && v20 > &v57)
    {
      v27 = 20;
    }

    *(v18 + 2) = *(&v57 + v27);
  }

  v43 = a2 + 1;
  v44 = *(a1 + 32);
  if (a2 + 1 < 0xAAAAAAAAAAAAAAABLL * ((v20 - v44) >> 2))
  {
    v45 = (v44 + 12 * v43);
    v46 = v44 + 12 * v43;
    while (1)
    {
      v47 = *(v44 + 12 * a2 + 8) + *(v44 + 12 * a2);
      v48 = v47 - *v45;
      if (v47 <= *v45)
      {
        break;
      }

      *v45 = v47;
      v49 = v45[2];
      v50 = v49 >= v48;
      v51 = v49 - v48;
      if (v51 != 0 && v50)
      {
        v45[2] = v51;
        break;
      }

      v45[2] = 0;
      v52 = v46 + 12;
      v53 = v44 + 12 * v43;
      if (v46 + 12 != v20)
      {
        do
        {
          *(v52 - 12) = *v52;
          *(v52 - 4) = *(v52 + 8);
          v52 += 12;
        }

        while (v52 != v20);
        v53 = v52 - 12;
      }

      *(a1 + 40) = v53;
      v20 = v53;
      if (v43 >= 0xAAAAAAAAAAAAAAABLL * ((v53 - v44) >> 2))
      {
        goto LABEL_62;
      }
    }
  }

  v53 = v20;
LABEL_62:
  if (v53 - v44 != 12)
  {
    v54 = 0;
    do
    {
      v55 = (v44 + 12 * v54);
      if (v55[1] == v55[4])
      {
        v55[2] += v55[5];
        v56 = v44 + 12 * (v54 + 1) + 12;
        if (v56 == v53)
        {
          v53 = v44 + 12 * (v54 + 1);
        }

        else
        {
          do
          {
            *(v56 - 12) = *v56;
            *(v56 - 4) = *(v56 + 8);
            v56 += 12;
          }

          while (v56 != v53);
          v53 = v56 - 12;
        }

        *(a1 + 40) = v53;
      }

      else
      {
        ++v54;
      }
    }

    while (v54 < -1 - 0x5555555555555555 * ((v53 - v44) >> 2));
  }
}

BOOL geo::SkylineBin::rectangleFits(geo::SkylineBin *this, unint64_t a2, unsigned int a3, int a4, unsigned int *a5, unsigned int *a6)
{
  result = geo::SkylineBin::rectangleFits(this, a2, a3, a4, a5);
  if (result)
  {
    v12 = *(this + 4);
    v13 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 5) - v12) >> 2);
    v14 = v13 - a2;
    if (v13 <= a2)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0;
      v16 = *(v12 + 12 * a2);
      v17 = v16 + a3;
      v18 = (v12 + 12 * a2 + 4);
      do
      {
        v19 = *(v18 - 1);
        if (v19 >= v17)
        {
          break;
        }

        v20 = v18[1] + v19;
        if (v20 <= v16)
        {
          break;
        }

        if (v20 >= v17)
        {
          v20 = v16 + a3;
        }

        v21 = *v18;
        v18 += 3;
        v15 += (*a5 - v21) * (v20 - v19);
        --v14;
      }

      while (v14);
    }

    *a6 = v15;
  }

  return result;
}

BOOL geo::SkylineBin::rectangleFits(geo::SkylineBin *this, uint64_t a2, unsigned int a3, int a4, unsigned int *a5)
{
  v5 = *(this + 4);
  v6 = (v5 + 12 * a2);
  if (*v6 + a3 > *(this + 2))
  {
    return 0;
  }

  v8 = v6[1];
  *a5 = v8;
  if (!a3)
  {
    return 1;
  }

  v9 = (v5 + 12 * a2 + 8);
  while (1)
  {
    if (v8 <= *(v9 - 1))
    {
      v8 = *(v9 - 1);
    }

    *a5 = v8;
    v10 = *(this + 3);
    v7 = v8 + a4 <= v10;
    if (v8 + a4 > v10)
    {
      break;
    }

    v11 = *v9;
    v9 += 3;
    v13 = a3 - v11;
    v12 = a3 > v11;
    if (a3 >= v11)
    {
      a3 = v13;
    }

    else
    {
      a3 = 0;
    }

    if (!v12)
    {
      return 1;
    }
  }

  return v7;
}

geo::SkylineBin *geo::SkylineBin::insert(geo::SkylineBin *this, unsigned int a2, unsigned int a3)
{
  v5 = this;
  v6 = *(this + 6);
  if (v6 == 1)
  {
    v15 = 0;
    *v16 = 0;
    PositionForNewNodeMinWaste = geo::SkylineBin::findPositionForNewNodeMinWaste(this, a2, a3, &v16[1], v16, &v15);
  }

  else
  {
    if (v6)
    {
      return this;
    }

    v15 = 0;
    *v16 = 0;
    PositionForNewNodeMinWaste = geo::SkylineBin::findPositionForNewNodeBottomLeft(this, a2, a3, &v16[1], v16, &v15);
  }

  v9 = v8;
  v17 = PositionForNewNodeMinWaste;
  v18 = v8;
  if (v15 == -1)
  {
    v17 = 0;
    v18 = 0;
    if (*(v5 + 56) == 1)
    {
      v13 = geo::GuillotineBin::insert((v5 + 64), a2, a3, *(v5 + 29));
      v11 = HIDWORD(v13);
      v17 = v13;
      v12 = HIDWORD(v14);
      v18 = v14;
      v10 = v13;
      v9 = v14;
    }

    else
    {
      LODWORD(v11) = 0;
      LODWORD(v12) = 0;
      v10 = 0;
      v9 = 0;
    }
  }

  else
  {
    v10 = PositionForNewNodeMinWaste;
    v11 = HIDWORD(PositionForNewNodeMinWaste);
    v12 = HIDWORD(v8);
    geo::SkylineBin::addSkylineLevel(v5, v15, &v17);
  }

  if ((v12 - v11) * (v9 - v10))
  {
    *(v5 + 16) += a3 * a2;
  }

  return v17;
}

void std::__shared_ptr_emplace<ta2::TextureAtlasPage>::__on_zero_shared(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 384);
  v3 = *(a1 + 384);
  v4 = *(a1 + 392);
  if (v3 != v4)
  {
    if (GEOGetVectorKitTextureAtlasLog(void)::onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitTextureAtlasLog(void)::onceToken, &__block_literal_global_17126);
    }

    v5 = GEOGetVectorKitTextureAtlasLog(void)::log;
    v6 = os_log_type_enabled(GEOGetVectorKitTextureAtlasLog(void)::log, OS_LOG_TYPE_ERROR);
    v3 = *(a1 + 384);
    v4 = *(a1 + 392);
    if (v6)
    {
      *v16 = 134218754;
      *&v16[4] = (v4 - v3) >> 4;
      v17 = 2080;
      v18 = "_activeTextureRegions.empty()";
      v19 = 2080;
      v20 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/TextureAtlas2.cpp";
      v21 = 1024;
      v22 = 658;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "TextureAtlasPage: All textures should have been freed, since the atlas owns the textures. Destroyed page still has %lu active regions.: Assertion with expression - %s : Failed in file - %s line - %i", v16, 0x26u);
      v3 = *(a1 + 384);
      v4 = *(a1 + 392);
    }
  }

  while (v3 != v4)
  {
    v7 = *v3;
    v3 += 2;
    v7[3] = 0;
    v7[16].i8[1] = 0;
    v8 = vsub_s32(v7[8], v7[7]);
    v7[7] = 0;
    v7[8] = v8;
    v7[9] = 0;
    v7[10] = 0;
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
  (*(**(a1 + 32) + 56))(*(a1 + 32), *(a1 + 216), *(a1 + 224));
  v9 = *(a1 + 408);
  if (v9)
  {
    v10 = *(a1 + 416);
    v11 = *(a1 + 408);
    if (v10 != v9)
    {
      do
      {
        v10 -= 24;
        *v16 = v10;
        std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](v16);
      }

      while (v10 != v9);
      v11 = *(a1 + 408);
    }

    *(a1 + 416) = v9;
    operator delete(v11);
  }

  *v16 = v2;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](v16);
  std::mutex::~mutex((a1 + 320));
  std::mutex::~mutex((a1 + 256));
  *(a1 + 48) = &unk_1F2A16DD8;
  *(a1 + 112) = &unk_1F2A16E10;
  v12 = *(a1 + 168);
  if (v12)
  {
    *(a1 + 176) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 144);
  if (v13)
  {
    *(a1 + 152) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 80);
  if (v14)
  {
    *(a1 + 88) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }
}

void std::__shared_ptr_emplace<ta2::TextureAtlasPage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A16F38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v11 = a1[1];
  *a1 = 0;
  *(a1 + 1) = 0;
  v5 = *(a1 + 4);
  v6 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v7 = *(a1 + 1);
  *a1 = v6;
  if (v7)
  {
    v10 = v4;
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    v4 = v10;
  }

  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 4) = *(a2 + 4);
  v8 = *(a2 + 1);
  *a2 = v4;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  result = v11;
  a2[1] = v11;
  *(a2 + 4) = v5;
  return result;
}

double std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v5 = a1;
  v6 = *(*a2 + 68) - *(*a2 + 60);
  v7 = *(*a3 + 68) - *(*a3 + 60);
  if (v6 <= *(*a1 + 68) - *(*a1 + 60))
  {
    if (v7 <= v6)
    {
      return result;
    }

    *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(a2, a3).n128_u64[0];
    if (*(*a2 + 68) - *(*a2 + 60) <= (*(*v5 + 68) - *(*v5 + 60)))
    {
      return result;
    }

    a1 = v5;
    v9 = a2;
  }

  else
  {
    if (v7 <= v6)
    {
      *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(a1, a2).n128_u64[0];
      if (*(*a3 + 68) - *(*a3 + 60) <= (*(*a2 + 68) - *(*a2 + 60)))
      {
        return result;
      }

      a1 = a2;
    }

    v9 = a3;
  }

  *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(a1, v9).n128_u64[0];
  return result;
}

double std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(a1, a2, a3);
  if (*(*a4 + 68) - *(*a4 + 60) > (*(*a3 + 68) - *(*a3 + 60)))
  {
    *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(a3, a4).n128_u64[0];
    if (*(*a3 + 68) - *(*a3 + 60) > (*(*a2 + 68) - *(*a2 + 60)))
    {
      *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(a2, a3).n128_u64[0];
      if (*(*a2 + 68) - *(*a2 + 60) > (*(*a1 + 68) - *(*a1 + 60)))
      {
        *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(a1, a2).n128_u64[0];
      }
    }
  }

  if (*(*a5 + 68) - *(*a5 + 60) > (*(*a4 + 68) - *(*a4 + 60)))
  {
    *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(a4, a5).n128_u64[0];
    if (*(*a4 + 68) - *(*a4 + 60) > (*(*a3 + 68) - *(*a3 + 60)))
    {
      *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(a3, a4).n128_u64[0];
      if (*(*a3 + 68) - *(*a3 + 60) > (*(*a2 + 68) - *(*a2 + 60)))
      {
        *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(a2, a3).n128_u64[0];
        if (*(*a2 + 68) - *(*a2 + 60) > (*(*a1 + 68) - *(*a1 + 60)))
        {

          *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*>(__int128 *a1, __int128 *a2)
{
  v3 = a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(a1, (a1 + 40), (a2 - 40));
        return 1;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(a1, (a1 + 40), a1 + 5);
        v21 = *(a2 - 5);
        v20 = (a2 - 40);
        if (*(v21 + 68) - *(v21 + 60) <= (*(*(v3 + 10) + 68) - *(*(v3 + 10) + 60)))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(v3 + 5, v20);
        if (*(*(v3 + 10) + 68) - *(*(v3 + 10) + 60) <= (*(*(v3 + 5) + 68) - *(*(v3 + 5) + 60)))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>((v3 + 40), v3 + 5);
        if (*(*(v3 + 5) + 68) - *(*(v3 + 5) + 60) <= (*(*v3 + 68) - *(*v3 + 60)))
        {
          return 1;
        }

        v5 = (v3 + 40);
        a1 = v3;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(a1, (a1 + 40), a1 + 5, (a1 + 120), (a2 - 40));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (*(*(a2 - 5) + 68) - *(*(a2 - 5) + 60) > (*(*a1 + 68) - *(*a1 + 60)))
      {
        v5 = (a2 - 40);
LABEL_6:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<ta2::TextureAtlas::RegionLoadItem *&,ta2::TextureAtlas::RegionLoadItem *&>(a1, v5);
      }

      return 1;
    }
  }

  v6 = a1 + 5;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,ta2::TextureAtlas::sortRegionLoadItems(std::vector<ta2::TextureAtlas::RegionLoadItem> &)::$_0 &,ta2::TextureAtlas::RegionLoadItem*,0>(a1, (a1 + 40), a1 + 5);
  v7 = (v3 + 120);
  if ((v3 + 120) == a2)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    v10 = *v7;
    v11 = *v6;
    if (*(*v7 + 68) - *(*v7 + 60) > (*(*v6 + 68) - *(*v6 + 60)))
    {
      v12 = *(v7 + 1);
      *v7 = 0;
      *(v7 + 1) = 0;
      v23 = v7[1];
      v13 = v8;
      v14 = *(v7 + 4);
      while (1)
      {
        v15 = v3 + v13;
        v16 = *(v3 + v13 + 88);
        *(v15 + 10) = 0;
        *(v15 + 11) = 0;
        v17 = *(v3 + v13 + 128);
        *(v15 + 15) = v11;
        *(v15 + 16) = v16;
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v17);
        }

        *(v15 + 34) = *(v15 + 24);
        *(v15 + 140) = *(v15 + 100);
        *(v15 + 37) = *(v15 + 27);
        *(v15 + 19) = *(v15 + 14);
        if (v13 == -80)
        {
          break;
        }

        v11 = *(v3 + v13 + 40);
        v13 -= 40;
        if (*(v10 + 68) - *(v10 + 60) <= (*(v11 + 68) - *(v11 + 60)))
        {
          v18 = v3 + v13 + 120;
          goto LABEL_22;
        }
      }

      v18 = v3;
LABEL_22:
      v19 = *(v18 + 8);
      *v18 = v10;
      *(v18 + 8) = v12;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v19);
      }

      *(v18 + 16) = v23;
      *(v18 + 32) = v14;
      if (++v9 == 8)
      {
        return (v7 + 40) == a2;
      }
    }

    v6 = v7;
    v8 += 40;
    v7 = (v7 + 40);
    if (v7 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__tree<std::shared_ptr<ta2::TextureAtlasPage>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v7, a2);
  v8 = a2[5];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  operator delete(a2);
  return v4;
}

void std::__function::__func<ta2::TextureAtlas::prepareClearBuffer(void)::$_0,std::allocator<ta2::TextureAtlas::prepareClearBuffer(void)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<ta2::TextureAtlas::prepareClearBuffer(void)::$_0,std::allocator<ta2::TextureAtlas::prepareClearBuffer(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A16EF0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<ta2::TextureAtlas::prepareClearBuffer(void)::$_0,std::allocator<ta2::TextureAtlas::prepareClearBuffer(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A16EF0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<unsigned char *,std::shared_ptr<unsigned char []>::__shared_ptr_default_delete<unsigned char [],unsigned char>,std::allocator<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B8C62170);
  }

  return result;
}

void std::__shared_ptr_pointer<unsigned char *,std::shared_ptr<unsigned char []>::__shared_ptr_default_delete<unsigned char [],unsigned char>,std::allocator<unsigned char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ta2::TextureAtlasRegionBuffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A16E48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>> const&>,std::tuple<>>(float *a1, uint64_t a2, __int128 **a3)
{
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  v10 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v8, v9);
  v11 = v10;
  v12 = *(a1 + 1);
  if (v12)
  {
    v13 = vcnt_s8(v12);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = v13.u32[0];
    if (v13.u32[0] > 1uLL)
    {
      v3 = v10;
      if (v10 >= v12)
      {
        v3 = v10 % v12;
      }
    }

    else
    {
      v3 = (v12 - 1) & v10;
    }

    v15 = *(*a1 + 8 * v3);
    if (v15)
    {
      v16 = *v15;
      if (*v15)
      {
        do
        {
          v17 = v16[1];
          if (v17 == v11)
          {
            v10 = std::equal_to<std::string>::operator()[abi:nn200100](v16 + 2, a2);
            if (v10)
            {
              return v16;
            }
          }

          else
          {
            if (v14 > 1)
            {
              if (v17 >= v12)
              {
                v17 %= v12;
              }
            }

            else
            {
              v17 &= v12 - 1;
            }

            if (v17 != v3)
            {
              break;
            }
          }

          v16 = *v16;
        }

        while (v16);
      }
    }
  }

  v18 = mdm::zone_mallocator::instance(v10);
  v19 = pthread_rwlock_rdlock((v18 + 32));
  if (v19)
  {
    geo::read_write_lock::logFailure(v19, "read lock", v20);
  }

  v16 = malloc_type_zone_malloc(*v18, 0x40uLL, 0x1032040FED236A9uLL);
  atomic_fetch_add((v18 + 24), 1u);
  geo::read_write_lock::unlock((v18 + 32));
  *v16 = 0;
  v16[1] = v11;
  v22 = *a3;
  *(v16 + 40) = *(*a3 + 24);
  if (*(v22 + 23) < 0)
  {
    inited = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external((v16 + 2), *v22, *(v22 + 1));
  }

  else
  {
    v23 = *v22;
    v16[4] = *(v22 + 2);
    *(v16 + 1) = v23;
  }

  v16[6] = 0;
  v16[7] = 0;
  v24 = (*(a1 + 5) + 1);
  v25 = a1[12];
  if (!v12 || (v25 * v12) < v24)
  {
    v26 = 1;
    if (v12 >= 3)
    {
      v26 = (v12 & (v12 - 1)) != 0;
    }

    v27 = v26 | (2 * v12);
    v28 = vcvtps_u32_f32(v24 / v25);
    if (v27 <= v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    if (v29 == 1)
    {
      v29 = 2;
    }

    else if ((v29 & (v29 - 1)) != 0)
    {
      inited = std::__next_prime(v29);
      v29 = inited;
    }

    v12 = *(a1 + 1);
    if (v29 > v12)
    {
      goto LABEL_41;
    }

    if (v29 < v12)
    {
      inited = vcvtps_u32_f32(*(a1 + 5) / a1[12]);
      if (v12 < 3 || (v38 = vcnt_s8(v12), v38.i16[0] = vaddlv_u8(v38), v38.u32[0] > 1uLL))
      {
        inited = std::__next_prime(inited);
      }

      else
      {
        v39 = 1 << -__clz(inited - 1);
        if (inited >= 2)
        {
          inited = v39;
        }
      }

      if (v29 <= inited)
      {
        v29 = inited;
      }

      if (v29 >= v12)
      {
        v12 = *(a1 + 1);
      }

      else
      {
        if (v29)
        {
LABEL_41:
          v30 = mdm::zone_mallocator::instance(inited);
          v31 = pthread_rwlock_rdlock((v30 + 32));
          if (v31)
          {
            geo::read_write_lock::logFailure(v31, "read lock", v32);
          }

          v33 = malloc_type_zone_malloc(*v30, 8 * v29, 0x2004093837F09uLL);
          atomic_fetch_add((v30 + 24), 1u);
          geo::read_write_lock::unlock((v30 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> **,0>(a1, v33);
          v34 = 0;
          *(a1 + 1) = v29;
          do
          {
            *(*a1 + 8 * v34++) = 0;
          }

          while (v29 != v34);
          v35 = *(a1 + 3);
          if (v35)
          {
            v36 = v35[1];
            v37 = vcnt_s8(v29);
            v37.i16[0] = vaddlv_u8(v37);
            if (v37.u32[0] > 1uLL)
            {
              if (v36 >= v29)
              {
                v36 %= v29;
              }
            }

            else
            {
              v36 &= v29 - 1;
            }

            *(*a1 + 8 * v36) = a1 + 6;
            v40 = *v35;
            if (*v35)
            {
              do
              {
                v41 = v40[1];
                if (v37.u32[0] > 1uLL)
                {
                  if (v41 >= v29)
                  {
                    v41 %= v29;
                  }
                }

                else
                {
                  v41 &= v29 - 1;
                }

                if (v41 != v36)
                {
                  v42 = *a1;
                  if (!*(*a1 + 8 * v41))
                  {
                    *(v42 + 8 * v41) = v35;
                    goto LABEL_65;
                  }

                  *v35 = *v40;
                  *v40 = **(v42 + 8 * v41);
                  **(v42 + 8 * v41) = v40;
                  v40 = v35;
                }

                v41 = v36;
LABEL_65:
                v35 = v40;
                v40 = *v40;
                v36 = v41;
              }

              while (v40);
            }
          }

          v12 = v29;
          goto LABEL_69;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> **,0>(a1, 0);
        v12 = 0;
        *(a1 + 1) = 0;
      }
    }

LABEL_69:
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v3 = v11 % v12;
      }

      else
      {
        v3 = v11;
      }
    }

    else
    {
      v3 = (v12 - 1) & v11;
    }
  }

  v43 = *a1;
  v44 = *(*a1 + 8 * v3);
  if (v44)
  {
    *v16 = *v44;
LABEL_82:
    *v44 = v16;
    goto LABEL_83;
  }

  *v16 = *(a1 + 3);
  *(a1 + 3) = v16;
  *(v43 + 8 * v3) = a1 + 6;
  if (*v16)
  {
    v45 = *(*v16 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v45 >= v12)
      {
        v45 %= v12;
      }
    }

    else
    {
      v45 &= v12 - 1;
    }

    v44 = (*a1 + 8 * v45);
    goto LABEL_82;
  }

LABEL_83:
  ++*(a1 + 5);
  return v16;
}

void sub_1B2F33B0C(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v1);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = *(a2 + 56);
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
    }

    if (*(a2 + 39) < 0)
    {
      v3 = *(a2 + 16);
      v4 = mdm::zone_mallocator::instance(a1);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
    }
  }

  else if (!a2)
  {
    return;
  }

  v5 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *>>(v5, a2);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *>(v3, v2);
  }
}

void std::__shared_ptr_emplace<md::MuninRoadLabelDedupingGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A16FB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MuninRoadLabelPool::clear(md::MuninRoadLabelPool *this)
{
  v2 = *(this + 1);
  v3 = this + 16;
  if (v2 != this + 16)
  {
    do
    {
      v4 = *(v2 + 4);
      v4[37].i8[7] = 0;
      if (v4[37].i8[6])
      {
        v4[37].i8[6] = 0;
      }

      md::MuninRoadLabel::setActive(v4, 0);
      v5 = *(v2 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::clear(this + 40);
  std::__tree<std::shared_ptr<md::MuninRoadLabel>,std::less<std::shared_ptr<md::MuninRoadLabel>>,geo::allocator_adapter<std::shared_ptr<md::MuninRoadLabel>,mdm::zone_mallocator>>::destroy(*(this + 2));
  *(this + 4) = 0;
  *(this + 1) = v3;
  *(this + 2) = 0;
  *(this + 96) = 0;
}

void md::RouteLineDataRequester::requestDataKeys(md::RouteLineDataRequester *this, const gdc::SelectionContext *a2)
{
  v2 = this;
  v53[2] = *MEMORY[0x1E69E9840];
  if (*(this + 21))
  {
    v3 = 10;
  }

  else
  {
    v3 = 9;
  }

  v38 = v3;
  v4 = (*(a2 + 8) + 24);
  v36 = *(a2 + 1);
  while (1)
  {
    v5 = *v4;
    if (!v5)
    {
      break;
    }

    v40 = v5;
    v6 = 1 << *(v5 + 17);
    v7 = 1.0 / v6;
    v8 = v7 * (v6 + ~*(v5 + 20));
    *&__p = v7 * *(v5 + 24);
    v43 = v8;
    v44[0] = *&__p + v7;
    v44[1] = v8 + v7;
    md::RouteOverlayContainer::overlays(v45, *(v2 + 3));
    md::RouteOverlayContainer::persistentOverlays(v49, *(v2 + 3));
    v41 = 0;
    for (i = 0; i != 12; i += 6)
    {
      v10 = *&v45[i * 4];
      if (v10 != &v47[i])
      {
        do
        {
          v11 = v10[4];
          v12 = [v11 boundingMapRegion];
          v51 = md::rectFromGEOMapRegion<double>(v12);
          v52 = v13;
          v53[0] = v14;
          v53[1] = v15;

          v16 = 0;
          p_p = &__p;
          v18 = &v51;
          v19 = 1;
          while (v44[v16] > *v18 && *p_p < *&v53[v16])
          {
            v20 = v19;
            v19 = 0;
            v18 = &v52;
            p_p = &v43;
            v16 = 1;
            if ((v20 & 1) == 0)
            {

              v41 = 1;
              goto LABEL_19;
            }
          }

          v21 = v10[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = v10[2];
              v23 = *v22 == v10;
              v10 = v22;
            }

            while (!v23);
          }

          v10 = v22;
        }

        while (v22 != &v47[i]);
      }

LABEL_19:
      ;
    }

    for (j = 32; j != -16; j -= 24)
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*&v45[j]);
    }

    v2 = this;
    v4 = v40;
    if (v41)
    {
      *&__p = 0.0;
      v43 = 0.0;
      v44[0] = 0.0;
      v25 = (*(**(this + 1) + 32))(*(this + 1), v38);
      v26 = v25;
      v27 = *(a2 + 8);
      if ((v25 & 0x100000000) == 0)
      {
        v26 = *v27;
      }

      v28 = *(v27 + 24);
      if (v28)
      {
        do
        {
          v43 = *&__p;
          v29 = **(a2 + 8);
          v30 = *(v28 + 17);
          v31 = 1 << v30;
          v32 = (*(v28 + 5) % v31 + v31) % v31;
          v33 = *(v28 + 6) % v31 + v31;
          v45[0] = *(v28 + 16);
          v45[1] = v30;
          v46 = v32;
          v47[0] = v33 % (1 << v30);
          v48 = 0;
          v49[0] = 1;
          md::TileAdjustmentHelpers::adjustTileForSize(v29, v26, v45, &__p);
          v34 = __p;
          v35 = v43;
          while (v34 != *&v35)
          {
            v51 = COERCE_DOUBLE(vrev64_s32(*(v34 + 4)));
            LODWORD(v52) = v34[1];
            HIDWORD(v52) = *v34;
            LODWORD(v53[0]) = v38;
            gdc::LayerDataRequestKey::LayerDataRequestKey(v45, 0, 15, &v51, 5);
            gdc::LayerDataCollector::addDataKey(v36, v45, (v28 + 2));
            if (v48 != v50)
            {
              free(v48);
            }

            v34 += 32;
          }

          v28 = *v28;
        }

        while (v28);
        if (*&__p != 0.0)
        {
          v43 = *&__p;
          operator delete(__p);
        }
      }

      return;
    }
  }
}

void ggl::VSSprite::PipelineState::~PipelineState(ggl::VSSprite::PipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::VSSprite::PipelineSetup::~PipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

float md::Ribbons::RibbonWriter<md::Ribbons::SolidTrafficRibbonDescriptor>::writeVertex(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  result = 0.0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = fminf(fmaxf(*(a3 + 12), 0.0), 1.0);
    *v4 = (fminf(fmaxf(*(a3 + 8), 0.0), 1.0) * 65535.0);
    *(v4 + 2) = (v8 * 65535.0);
    v9.i64[0] = *(a3 + 16 + 8 * v3);
    v9.i64[1] = *(a3 + 40 + 8 * v3);
    v10.i64[0] = 0xBF000000BF000000;
    v10.i64[1] = 0xBF000000BF000000;
    *v9.f32 = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v10, xmmword_1B33B0C70, v9)));
    *(v4 + 4) = v9.i64[0];
    v11 = *(a1 + 8);
    v9.i8[0] = *(v11 + 96);
    *(v4 + 12) = v9.u32[0];
    LODWORD(v11) = *(v11 + 100);
    v12 = v11 == 1;
    if (v11 == 1)
    {
      v13 = 24;
    }

    else
    {
      v13 = 16;
    }

    if (v12)
    {
      v14 = a3 + 24;
    }

    else
    {
      v14 = a3 + 16;
    }

    v15 = (*(v14 + 4) * 8191.9) + -0.5;
    *(v4 + 16) = ((*(a3 + v13) * 8191.9) + -0.5);
    *(v4 + 18) = v15;
    v4 += 20;
    *a2 = v4;
    v3 = 1;
    v6 = 0;
  }

  while ((v7 & 1) != 0);
  return result;
}

void std::__shared_ptr_emplace<ggl::OptimizedTraffic::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A17350;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::TrafficGlow::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A17318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::SolidTraffic::BaseMaskedPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A172E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::SolidTraffic::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A172A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

float md::trafficSecondaryWidthForSpeedAtZ(uint64_t a1, int a2, float a3, float a4)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v4 = *(a1 + 24);
      v5 = fminf(fmaxf(a3, 0.0), 23.0);
      v17 = *v4;
      if (!*v4 || (v18 = *v17, LODWORD(v17) = *v17 == 1.0, *(v4 + 10) != 1) || (v18 != 0.0 ? (v19 = v18 == 1.0) : (v19 = 1), v19))
      {
        v9 = *(v4 + v17 + 11);
        v18 = 0.0;
        if (v9 != 2)
        {
          v10 = 69;
          goto LABEL_42;
        }
      }

      v41 = 1;
      v33 = v4;
      v22 = v5;
      v23 = v18;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 69, 0, &v41, v5);
      v25 = v34;
      v26 = &v40;
      v27 = v33;
      v28 = 69;
      goto LABEL_49;
    }

    if (a2 == 3)
    {
      v4 = *(a1 + 24);
      v5 = fminf(fmaxf(a3, 0.0), 23.0);
      v11 = *v4;
      if (!*v4 || (v12 = *v11, LODWORD(v11) = *v11 == 1.0, *(v4 + 10) != 1) || (v12 != 0.0 ? (v13 = v12 == 1.0) : (v13 = 1), v13))
      {
        v9 = *(v4 + v11 + 11);
        v12 = 0.0;
        if (v9 != 2)
        {
          v10 = 80;
          goto LABEL_42;
        }
      }

      v43 = 1;
      v29 = v4;
      v22 = v5;
      v23 = v12;
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 80, 0, &v43, v5);
      v25 = v30;
      v26 = &v42;
      v27 = v29;
      v28 = 80;
      goto LABEL_49;
    }

    return a4;
  }

  if (!a2)
  {
    v4 = *(a1 + 24);
    v5 = fminf(fmaxf(a3, 0.0), 23.0);
    v14 = *v4;
    if (!*v4 || (v15 = *v14, LODWORD(v14) = *v14 == 1.0, *(v4 + 10) != 1) || (v15 != 0.0 ? (v16 = v15 == 1.0) : (v16 = 1), v16))
    {
      v9 = *(v4 + v14 + 11);
      v15 = 0.0;
      if (v9 != 2)
      {
        v10 = 47;
        goto LABEL_42;
      }
    }

    v37 = 1;
    v31 = v4;
    v22 = v5;
    v23 = v15;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 47, 0, &v37, v5);
    v25 = v32;
    v26 = &v36;
    v27 = v31;
    v28 = 47;
    goto LABEL_49;
  }

  if (a2 != 1)
  {
    return a4;
  }

  v4 = *(a1 + 24);
  v5 = fminf(fmaxf(a3, 0.0), 23.0);
  v6 = *v4;
  if (*v4 && (v7 = *v6, LODWORD(v6) = *v6 == 1.0, *(v4 + 10) == 1) && (v7 != 0.0 ? (v8 = v7 == 1.0) : (v8 = 1), !v8) || (v9 = *(v4 + v6 + 11), v7 = 0.0, v9 == 2))
  {
    v39 = 1;
    v21 = v4;
    v22 = v5;
    v23 = v7;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, 58, 0, &v39, v5);
    v25 = v24;
    v26 = &v38;
    v27 = v21;
    v28 = 58;
LABEL_49:
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v27, v28, 1, v26, v22);
    return v25 + ((v35 - v25) * v23);
  }

  v10 = 58;
LABEL_42:

  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v4, v10, v9, 0, v5);
  return result;
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A17190;
  v5 = (a1 + 248);
  std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::PilledTrafficRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  md::FrameAllocator<ggl::RenderItem>::reset(a1 + 224);
  free(*(a1 + 224));
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 168);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  ggl::RenderItem::~RenderItem((a1 + 16));
  return a1;
}

void md::Ribbons::RibbonBatch<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  md::Ribbons::RibbonBatch<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonBatch<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A17170;
  v2 = a1[36];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RibbonBatch<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A17170;
  v2 = a1[36];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonBatch(a1);
}

void ggl::ConstantDataTyped<ggl::OptimizedTraffic::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::OptimizedTraffic::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A17388;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::PilledTrafficBatch::~PilledTrafficBatch(md::PilledTrafficBatch *this)
{
  *this = &unk_1F2A170F0;
  v2 = *(this + 39);
  *(this + 39) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A17170;
  v3 = *(this + 36);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonBatch(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A170F0;
  v2 = *(this + 39);
  *(this + 39) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_1F2A17170;
  v3 = *(this + 36);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::PilledTrafficRibbonDescriptor>::~RibbonBatch(this);
}

BOOL md::setupSharedStylingParameters(float *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, int a5)
{
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v11, a3, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a4);
  }

  v9 = md::setupSharedStylingParameters(a1, a2, &v11, a5);
  if (v14 == 1)
  {
    (*(*v11 + 56))(v11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  return v9;
}

void sub_1B2F34D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, char a14)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2F34DFC()
{
  if (!v0)
  {
    JUMPOUT(0x1B2F34DF4);
  }

  JUMPOUT(0x1B2F34DF0);
}

void md::PilledTrafficLayer::setSharedResources(void *a1, uint64_t a2)
{
  a1[20] = a2;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; v2 += 8)
  {
    v4 = *(*(*v2 + 8) + 160);
    v5 = *(*v2 + 312);
    v6 = *(v4 + 56);
    v7[0] = *(v4 + 48);
    v7[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      ggl::PipelineSetup::setState(v5, v7);
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    else
    {
      ggl::PipelineSetup::setState(v5, v7);
    }
  }
}

void md::PilledTrafficLayer::layout(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (*(a2 + 162) == 1)
  {
    v7 = 32;
    if (*(a2 + 160))
    {
      v7 = 40;
    }
  }

  else
  {
    v8 = 16;
    if (!*(a2 + 56))
    {
      v8 = 0;
    }

    v9 = 8;
    if (*(a2 + 56))
    {
      v9 = 24;
    }

    if (*(a2 + 160))
    {
      v7 = v9;
    }

    else
    {
      v7 = v8;
    }
  }

  *(a1 + 56) = *(*(a1 + 160) + 72 + v7);
  md::LayoutContext::frameState(*a2);
  v65 = v5;
  if ((*(v10 + 632) & 1) == 0)
  {
    v28 = *(a1 + 8);
    v29 = *(a1 + 16);
    goto LABEL_48;
  }

  v11 = *(*v5 + 8);
  v66 = md::LayoutContext::get<md::CameraContext>(v11);
  if (*(v66 + 3784))
  {
    v12 = *(a1 + 72);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v2 = *(gdc::Camera::cameraFrame(v66) + 16);
      do
      {
        for (i = 0; i != 4; ++i)
        {
          v16 = v13 | (4 * i);
          geo::Frustum<double>::transformed(v67, v66 + 984, v12 + 1696 + 56 * v16);
          v17 = v12 + 32 + 104 * v16;
          v18 = *(v17 + 56);
          v19 = *(v17 + 88);
          v77 = *(v17 + 72);
          v78 = v19;
          v76 = v18;
          v73 = 0uLL;
          v74 = v2;
          gm::Box<double,3>::operator+=(&v76, &v73);
          for (j = 0; j != 48; j += 8)
          {
            v21 = 0;
            v22 = *&v67[j + 4];
            v71 = *&v67[j];
            v72 = v22;
            do
            {
              v23 = &v76 + v21;
              if (*(&v71 + v21) >= 0.0)
              {
                v23 = &v77 + v21 + 8;
              }

              *(&v73 + v21) = *v23;
              v21 += 8;
            }

            while (v21 != 24);
            v24 = 0;
            v25 = 0.0;
            do
            {
              v25 = v25 + *&v67[j + v24] * *(&v73 + v24 * 4);
              v24 += 2;
            }

            while (v24 != 6);
            v26 = *&v67[j + 6] + v25;
            if (v26 < 0.0)
            {
              break;
            }
          }

          v27 = 1 << (4 * i + v13);
          if (v26 < 0.0)
          {
            v27 = 0;
          }

          v14 |= v27;
        }

        ++v13;
      }

      while (v13 != 4);
      goto LABEL_38;
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v67, *(a1 + 120), 0);
    v30 = *(&v68 + 4);
    v31 = 0.0;
  }

  else
  {
    v2 = 0.0;
    if (*md::LayoutContext::get<md::ElevationContext>(v11) == 1 && *(a1 + 112) == 1)
    {
      v2 = *(gdc::Camera::cameraFrame(v66) + 16) * 0.0000000249532021 * (1 << *(a1 + 81));
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v67, *(a1 + 120), 0);
    v30 = *(&v68 + 4);
    v31 = v2;
  }

  v14 = ggl::CullingGrid::intersectedCellsForView(v30, v31);
  ggl::BufferMemory::~BufferMemory(v67);
LABEL_38:
  v28 = *(a1 + 8);
  v29 = *(a1 + 16);
  if (v28 == v29)
  {
    v5 = v65;
  }

  else
  {
    v32 = *(a1 + 8);
    v5 = v65;
    do
    {
      v33 = *v32;
      v34 = *(*v32 + 248);
      v35 = *(*v32 + 256);
      if (v34 == v35)
      {
        v36 = 0;
      }

      else
      {
        v36 = 0;
        do
        {
          v37 = *v34++;
          v38 = (*(v37 + 96) & v14) != 0;
          v36 |= v38;
          *(v37 + 48) = v38;
        }

        while (v34 != v35);
      }

      *(v33 + 136) = v36 & 1;
      *(v33 + 272) = v36 & 1;
      ++v32;
    }

    while (v32 != v29);
  }

LABEL_48:
  while (v28 != v29)
  {
    v39 = *v28;
    if (*(*v28 + 272) == 1)
    {
      v69 = 0;
      v70 = 0;
      v40 = md::setupSharedStylingParameters(v5, v67, *(v39 + 280), *(v39 + 288), *(v39 + 300));
      *(v39 + 272) = v40;
      if (v40)
      {
        v41 = ggl::DataAccess<ggl::Tile::View>::DataAccess(&v76, **(*(v39 + 312) + 136), 0);
        v42 = *(*(&v78 + 1) + 64);
        ggl::BufferMemory::~BufferMemory(v41);
        v43 = *(*(*(v39 + 312) + 136) + 32);
        ggl::BufferMemory::BufferMemory(&v73);
        ggl::ResourceAccessor::accessConstantData(&v76, 0, v43, 1);
        ggl::BufferMemory::operator=(&v73, &v76);
        ggl::BufferMemory::~BufferMemory(&v76);
        v45 = v75;
        LOBYTE(v4) = *(v5 + 161);
        v46 = v5;
        v47 = *(v39 + 300);
        v48 = v67[0];
        *(v75 + 80) = v67[3];
        *(v45 + 68) = v48;
        v49 = *(v46 + 112);
        v50 = *(v46 + 120);
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v44, v49, v50);
        if (v50)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v50);
        }

        if (v78 == 1)
        {
          if (v47 >= 4 || ((v51 = 11 * v47, *(v65 + 12) >= 0x17u) ? (v52 = 23) : (v52 = *(v65 + 12)), (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v76 + 24), (v51 + 45), v52, 2u, 0), LODWORD(v2) = v53, *(v65 + 12) >= 0x17u) ? (v54 = 23) : (v54 = *(v65 + 12)), gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(v76 + 24), (v51 + 46), v54, 2u, 0), v3 = v55, (v78 & 1) != 0))
          {
            (*(*v76 + 56))(v76);
          }
        }

        else
        {
          if ((v47 & 0xFE) == 2)
          {
            *&v2 = 0.6;
          }

          else
          {
            *&v2 = 1.5;
          }

          if ((v47 & 0xFE) == 2)
          {
            v3 = 0.5;
          }

          else
          {
            v3 = 0.2;
          }
        }

        if (*(&v77 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v77 + 1));
        }

        v5 = v65;
        if (*(&v76 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v76 + 1));
        }

        v4 = LODWORD(v4);
        *(v45 + 16) = *&v67[5];
        *(v45 + 48) = v68;
        v56 = *&v67[1];
        v57 = *&v67[2];
        v58 = *&v67[1] + (*&v67[2] * 2.0);
        *v45 = v58 * 0.5;
        v59 = logf(v56 * v42);
        v60 = expf(floorf(v59 * 4.0) * 0.25);
        *(v45 + 72) = 0;
        *(v45 + 64) = *(v39 + 296);
        v61 = (v3 + 1.0) + *&v2;
        v62 = 0.5 / v61;
        *(v45 + 84) = v60 * v61;
        *(v45 + 88) = 0.5 / v61;
        *(v45 + 92) = ((v3 * 0.5) + 0.5) / v61;
        *(v45 + 96) = v61 / (v58 / v56);
        v63 = (v58 / v56) * (0.5 / v61);
        v64 = *(v65 + 20);
        *(v45 + 112) = v62;
        *(v45 + 116) = v63;
        *(v45 + 120) = 1065353216;
        *(v45 + 124) = v64 * v57;
        *(v45 + 76) = v4;
        ggl::BufferMemory::~BufferMemory(&v73);
        *(v39 + 56) = *(v65 + 57);
        *(v39 + 64) = *(v65 + 144);
      }
    }

    ++v28;
  }
}

void sub_1B2F354A8(_Unwind_Exception *a1)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 - 200);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  ggl::BufferMemory::~BufferMemory((v1 - 256));
  _Unwind_Resume(a1);
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A171D0;
  v6 = (a1 + 376);
  std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::SolidTrafficRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  md::FrameAllocator<ggl::RenderItem>::reset(a1 + 352);
  free(*(a1 + 352));
  v2 = *(a1 + 328);
  if (v2)
  {
    *(a1 + 336) = v2;
    operator delete(v2);
  }

  v6 = (a1 + 296);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v3 = *(a1 + 272);
  if (v3)
  {
    *(a1 + 280) = v3;
    operator delete(v3);
  }

  for (i = 144; i != -112; i -= 128)
  {
    ggl::RenderItem::~RenderItem((a1 + i));
  }

  return a1;
}

void md::Ribbons::RibbonBatch<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  md::Ribbons::RibbonBatch<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonBatch<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A171B0;
  v2 = a1[52];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RibbonBatch<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A171B0;
  v2 = a1[52];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonBatch(a1);
}

void ggl::ConstantDataTyped<ggl::TrafficGlow::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::TrafficGlow::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A17438;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::TrafficBase::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::TrafficBase::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A173E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::SolidTrafficBatch::~SolidTrafficBatch(md::SolidTrafficBatch *this)
{
  *this = &unk_1F2A17110;
  v2 = *(this + 56);
  *(this + 56) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 55);
  *(this + 55) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_1F2A171B0;
  v4 = *(this + 52);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonBatch(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A17110;
  v2 = *(this + 56);
  *(this + 56) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 55);
  *(this + 55) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_1F2A171B0;
  v4 = *(this + 52);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::SolidTrafficRibbonDescriptor>::~RibbonBatch(this);
}

void md::SolidTrafficLayer::setSharedResources(void *a1, uint64_t a2)
{
  a1[21] = a2;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    v4 = *v2;
    v5 = *(*(*v2 + 8) + 168);
    ggl::GlobeAtmosphere::BasePipelineSetup::setState(*(*v2 + 440), *v5, *(v5 + 8));
    **(*(v4 + 440) + 168) = *(*(v5 + 128) + 16);
    v6 = *(v4 + 448);
    v7 = *(v5 + 40);
    v8[0] = *(v5 + 32);
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      ggl::PipelineSetup::setState(v6, v8);
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    else
    {
      ggl::PipelineSetup::setState(v6, v8);
    }
  }
}

void md::SolidTrafficLayer::layout(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 162) == 1)
  {
    v4 = 32;
    if (*(a2 + 160))
    {
      v4 = 40;
    }
  }

  else
  {
    v5 = 16;
    if (!*(a2 + 56))
    {
      v5 = 0;
    }

    v6 = 8;
    if (*(a2 + 56))
    {
      v6 = 24;
    }

    if (*(a2 + 160))
    {
      v4 = v6;
    }

    else
    {
      v4 = v5;
    }
  }

  v7 = *(*(a1 + 168) + 72 + v4);
  *(a1 + 56) = v7;
  *(a1 + 64) = v7;
  md::LayoutContext::frameState(*a2);
  if ((*(v8 + 632) & 1) == 0)
  {
    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    goto LABEL_48;
  }

  v9 = *(*v2 + 8);
  v66 = md::LayoutContext::get<md::CameraContext>(v9);
  v65 = v2;
  if (*(v66 + 3784))
  {
    v10 = *(a1 + 80);
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      v13 = *(gdc::Camera::cameraFrame(v66) + 16);
      do
      {
        for (i = 0; i != 4; ++i)
        {
          v15 = v11 | (4 * i);
          geo::Frustum<double>::transformed(v67, v66 + 984, v10 + 1696 + 56 * v15);
          v16 = v10 + 32 + 104 * v15;
          v17 = *(v16 + 56);
          v18 = *(v16 + 88);
          v77 = *(v16 + 72);
          v78 = v18;
          v76 = v17;
          v73 = 0uLL;
          v74 = v13;
          gm::Box<double,3>::operator+=(&v76, &v73);
          for (j = 0; j != 48; j += 8)
          {
            v20 = 0;
            v21 = *&v67[j + 4];
            v71 = *&v67[j];
            v72 = v21;
            do
            {
              v22 = &v76 + v20;
              if (*(&v71 + v20) >= 0.0)
              {
                v22 = &v77 + v20 + 8;
              }

              *(&v73 + v20) = *v22;
              v20 += 8;
            }

            while (v20 != 24);
            v23 = 0;
            v24 = 0.0;
            do
            {
              v24 = v24 + *&v67[j + v23] * *(&v73 + v23 * 4);
              v23 += 2;
            }

            while (v23 != 6);
            v25 = *&v67[j + 6] + v24;
            if (v25 < 0.0)
            {
              break;
            }
          }

          v26 = 1 << (4 * i + v11);
          if (v25 < 0.0)
          {
            v26 = 0;
          }

          v12 |= v26;
        }

        ++v11;
      }

      while (v11 != 4);
      goto LABEL_38;
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v67, *(a1 + 128), 0);
    v30 = *(&v68 + 4);
    v31 = 0.0;
  }

  else
  {
    v29 = 0.0;
    if (*md::LayoutContext::get<md::ElevationContext>(v9) == 1 && *(a1 + 120) == 1)
    {
      v29 = *(gdc::Camera::cameraFrame(v66) + 16) * 0.0000000249532021 * (1 << *(a1 + 89));
    }

    ggl::DataAccess<ggl::Tile::View>::DataAccess(v67, *(a1 + 128), 0);
    v30 = *(&v68 + 4);
    v31 = v29;
  }

  v12 = ggl::CullingGrid::intersectedCellsForView(v30, v31);
  ggl::BufferMemory::~BufferMemory(v67);
LABEL_38:
  v27 = *(a1 + 8);
  v28 = *(a1 + 16);
  if (v27 == v28)
  {
    v2 = v65;
  }

  else
  {
    v32 = *(a1 + 8);
    v2 = v65;
    do
    {
      v33 = *v32;
      v34 = *(*v32 + 376);
      v35 = *(*v32 + 384);
      if (v34 == v35)
      {
        v36 = 0;
      }

      else
      {
        v36 = 0;
        do
        {
          v37 = *v34++;
          v38 = (*(v37 + 96) & v12) != 0;
          v36 |= v38;
          *(v37 + 48) = v38;
        }

        while (v34 != v35);
      }

      v33[136] = v36 & 1;
      v33[264] = v36 & 1;
      v33[400] = v36 & 1;
      ++v32;
    }

    while (v32 != v28);
  }

LABEL_48:
  while (v27 != v28)
  {
    v39 = *v27;
    if (*(*v27 + 400) == 1)
    {
      v69 = 0;
      v70 = 0;
      v40 = md::setupSharedStylingParameters(v2, v67, *(v39 + 408), *(v39 + 416), *(v39 + 428));
      *(v39 + 400) = v40;
      if (v40)
      {
        v41 = *(v39 + 440);
        v42 = *(v2 + 68);
        v43 = **(*(*(v39 + 8) + 168) + 128);
        *(v39 + 176) = v41;
        v44 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v76, *(*(v41 + 136) + 32));
        v45 = *(&v78 + 1);
        v46 = v67[3];
        v47 = v67[0];
        *(*(&v78 + 1) + 24) = v67[0];
        *(v45 + 28) = v46;
        *v45 = *&v67[5];
        v48 = *&v67[1];
        *(v45 + 16) = (*&v67[1] * 0.5) * *(*(*(*(v39 + 8) + 168) + 128) + 8);
        *(v45 + 20) = v42 * v43;
        *(v45 + 32) = 0;
        ggl::BufferMemory::~BufferMemory(v44);
        *(v39 + 136) = 0;
        if (*(v2 + 128 + 4 * *(v39 + 428)) == 2)
        {
          v50 = *(v2 + 112);
          v51 = *(v2 + 120);
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          gss::QueryableLocker<gss::PropertyID>::QueryableLocker(v49, v50, v51);
          if (v51)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v51);
          }

          if (v78 == 1)
          {
            v53 = md::trafficSecondaryWidthForSpeedAtZ(v76, *(v39 + 428), *(v2 + 12), v52);
            if (v78 == 1)
            {
              (*(*v76 + 56))(v76);
            }

            if (*(&v77 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v77 + 1));
            }

            if (*(&v76 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v76 + 1));
            }

            *(v39 + 136) = v53 > 0.0;
            if (v53 > 0.0)
            {
              v54 = *(v39 + 448);
              *(v39 + 48) = v54;
              v55 = *(*(v54 + 136) + 32);
              ggl::BufferMemory::BufferMemory(&v73);
              ggl::ResourceAccessor::accessConstantData(&v76, 0, v55, 1);
              ggl::BufferMemory::operator=(&v73, &v76);
              ggl::BufferMemory::~BufferMemory(&v76);
              v56 = v75;
              *(v75 + 36) = v47;
              *(v56 + 40) = v46;
              v57 = *&v67[2];
              *(v56 + 16) = v68;
              v58 = v48 + (v57 * 2.0);
              *v56 = v58 * 0.5;
              *(v56 + 44) = 1.0 / (1.0 - (v48 / v58));
              ggl::BufferMemory::~BufferMemory(&v73);
            }
          }

          else
          {
            if (*(&v77 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v77 + 1));
            }

            if (*(&v76 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](*(&v76 + 1));
            }

            *(v39 + 136) = 0;
          }
        }

        v59 = 0;
        v60 = *(v2 + 57);
        v61 = *(v2 + 144);
        v62 = 1;
        do
        {
          v63 = v62;
          v64 = v39 + 16 + (v59 << 7);
          if (*(v64 + 120) == 1)
          {
            *(v64 + 40) = v60;
            *(v64 + 48) = v61 | v59;
          }

          v62 = 0;
          v59 = 1;
        }

        while ((v63 & 1) != 0);
      }
    }

    ++v27;
  }
}

void sub_1B2F36110(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 184);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v1 - 200);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::Ribbons::RibbonBatch<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  *a1 = &unk_1F2A17210;
  v5 = (a1 + 248);
  std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::CasedTrafficRibbonDescriptor>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  md::FrameAllocator<ggl::RenderItem>::reset(a1 + 224);
  free(*(a1 + 224));
  v2 = *(a1 + 200);
  if (v2)
  {
    *(a1 + 208) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 168);
  std::vector<gm::MultiRange<unsigned long>,geo::allocator_adapter<gm::MultiRange<unsigned long>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  ggl::RenderItem::~RenderItem((a1 + 16));
  return a1;
}

void md::Ribbons::RibbonBatch<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  md::Ribbons::RibbonBatch<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonBatch<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A171F0;
  v2 = a1[36];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RibbonBatch<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A171F0;
  v2 = a1[36];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonBatch(a1);
}

void md::CasedTrafficBatch::~CasedTrafficBatch(md::CasedTrafficBatch *this)
{
  *this = &unk_1F2A17130;
  v2 = *(this + 40);
  *(this + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 39);
  *(this + 39) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_1F2A171F0;
  v4 = *(this + 36);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonBatch(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A17130;
  v2 = *(this + 40);
  *(this + 40) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 39);
  *(this + 39) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *this = &unk_1F2A171F0;
  v4 = *(this + 36);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::CasedTrafficRibbonDescriptor>::~RibbonBatch(this);
}

void md::Ribbons::RibbonBatch<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonBatch(uint64_t a1)
{
  md::Ribbons::RibbonBatch<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

void md::RibbonBatch<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A17230;
  v2 = a1[38];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[36];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::Ribbons::RibbonBatch<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonBatch(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::RibbonBatch<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonBatch(void *a1)
{
  *a1 = &unk_1F2A17230;
  v2 = a1[38];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[36];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return md::Ribbons::RibbonBatch<md::Ribbons::DaVinciTrafficRibbonDescriptor>::~RibbonBatch(a1);
}

void ggl::ConstantDataTyped<ggl::DaVinciTraffic::Style>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinciTraffic::Style>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A17490;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DaVinciTraffic::BasePipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A17270;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PipelineSetupToApply>(ecs2::Entity,md::ls::PipelineSetupToApply &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetupToApply>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetupToApply>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetupToApply>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetupToApply>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetupToApply>(void)::metadata) = *(a2 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetupToApply>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetupToApply>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetupToApply>();
    unk_1EB83CF00 = 0xBBB17A4464CB2E03;
    qword_1EB83CF08 = "md::ls::PipelineSetupToApply]";
    qword_1EB83CF10 = 28;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20PipelineSetupToApplyEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetupToApply>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetupToApply>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetupToApply>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetupToApply>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetupToApply>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PipelineSetupToApply,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A17530;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PipelineSetupToApply,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PipelineSetupToApply,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A17550;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::PipelineSetupToApply,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PipelineSetupToApply,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PipelineSetupToApply,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A17530;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PipelineSetupToApply,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PipelineSetupToApply>(ecs2::Entity,md::ls::PipelineSetupToApply &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A174E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13PipelineStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineState>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineState>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PipelineState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A9A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PipelineState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PipelineState,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1A9C8;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::PipelineState,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PipelineState,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PipelineState,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A9A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PipelineState,64ul>::~storage(a1);
}

uint64_t std::__function::__func<md::ita::CreatePipelineStates::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsOpaque const&,md::ls::PipelineState const*>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsTransparent const&,md::ls::PipelineState const*>)::$_1,std::allocator<md::ita::CreatePipelineStates::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsOpaque const&,md::ls::PipelineState const*>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsTransparent const&,md::ls::PipelineState const*>)::$_1>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsTransparent const&,md::ls::PipelineState const*)>::operator()(uint64_t a1, uint8x8_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 *a5, uint64_t a6, unint64_t **a7)
{
  v8 = *a7;
  v9 = *(a1 + 16);
  PipelineStateItem = md::VKMRenderResourcesStore::createPipelineStateItem(**(a1 + 8), a4, *a5, 0, a2);
  v11 = PipelineStateItem;
  if (v8)
  {
    PipelineStateItem = md::VKMRenderResourcesStore::_disconnect<geo::handle<md::PipelineStateItem>>(**(a1 + 8), *v8);
  }

  v12 = *v9;
  v13 = ecs2::ExecutionTaskContext::currentEntity(PipelineStateItem);

  return ecs2::addComponent<md::ls::PipelineState>(v12, v13, v11);
}

__n128 std::__function::__func<md::ita::CreatePipelineStates::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsOpaque const&,md::ls::PipelineState const*>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsTransparent const&,md::ls::PipelineState const*>)::$_1,std::allocator<md::ita::CreatePipelineStates::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsOpaque const&,md::ls::PipelineState const*>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsTransparent const&,md::ls::PipelineState const*>)::$_1>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsTransparent const&,md::ls::PipelineState const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A176B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::ita::CreatePipelineStates::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsOpaque const&,md::ls::PipelineState const*>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsTransparent const&,md::ls::PipelineState const*>)::$_0,std::allocator<md::ita::CreatePipelineStates::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsOpaque const&,md::ls::PipelineState const*>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsTransparent const&,md::ls::PipelineState const*>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::FunctionConstants const&,md::ls::RequiredPipelinePoolID const&,md::ls::IsOpaque const&,md::ls::PipelineState const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A17628;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::ita::TransferPipelines::operator()(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v112 = *MEMORY[0x1E69E9840];
  v93 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v102[0] = &unk_1F2A17788;
  v102[1] = &v93;
  v103 = v102;
  v6 = *(a2 + 8);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v6);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetupToApply>(v6);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::DataIDSetToUse>(v6);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineState>(v6);
  *&v108 = v7;
  *(&v108 + 1) = v8;
  v11 = 8;
  v12 = v7;
  v13 = &v108;
  *&v109 = v9;
  *(&v109 + 1) = v10;
  do
  {
    if (*(*(&v108 + v11) + 40) - *(*(&v108 + v11) + 32) < *(v12 + 40) - *(v12 + 32))
    {
      v12 = *(&v108 + v11);
      v13 = &v108 + v11;
    }

    v11 += 8;
  }

  while (v11 != 32);
  v14 = *(*v13 + 32);
  v15 = *(*v13 + 40);
  *&v108 = v14;
  *(&v108 + 1) = v15;
  *&v109 = v7;
  *(&v109 + 1) = v8;
  *&v110 = v9;
  *(&v110 + 1) = v10;
  while (v14 != v15 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v108, *v14, v14[1]))
  {
    v14 += 2;
    *&v108 = v14;
  }

  v104 = v108;
  v105 = v109;
  v106 = v110;
  v107 = v111;
  v16 = v108;
  if (v108 == v15)
  {
    v39 = _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
  }

  else
  {
    v91 = a3;
    v17 = v105;
    v18 = v106;
    v19 = _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
    v22 = *(&v104 + 1);
    do
    {
      v23 = *(v17 + 32);
      v24 = v16[1];
      v25 = v24 & 0x3F;
      v26 = (v24 >> 3) & 0x1FF8;
      v27 = *(*(*(*(&v17 + 1) + 8) + v26) + 4 * v25 + 2);
      v28 = *(*(*(&v17 + 1) + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(v17 + 8) + v26) + 4 * v25;
      v30 = *(*(*(v18 + 8) + v26) + 4 * v25 + 2);
      v31 = *(*(v18 + 56) + ((v30 >> 3) & 0x1FF8));
      v32 = *(*(*(*(&v18 + 1) + 8) + v26) + 4 * v25 + 2);
      v33 = *(*(*(&v18 + 1) + 56) + ((v32 >> 3) & 0x1FF8));
      v34 = *(v29 + 2);
      v35 = v20;
      *(v19 + 104 * *v20 + 24) = *v16;
      if (!v103)
      {
        goto LABEL_44;
      }

      (*(*v103 + 48))(v103, v23 + 4 * v34, v28 + 8 * (v27 & 0x3F), v31 + 8 * (v30 & 0x3F), v33 + 8 * (v32 & 0x3F));
      ++v21;
      v36 = v16 + 2;
      while (1)
      {
        v16 = v36;
        *&v104 = v36;
        if (v36 == v22)
        {
          break;
        }

        v37 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v104, *v36, v36[1]);
        v36 = v16 + 2;
        if (v37)
        {
          v38 = v16;
          goto LABEL_17;
        }
      }

      v38 = v22;
LABEL_17:
      v20 = v35;
    }

    while (v38 != v15);
    v39 = v19;
    a3 = v91;
  }

  *(v39 + 104 * *v20 + 24) = -65536;
  v40 = v39 + 104 * *v20;
  v41 = *(v40 + 92);
  *(v40 + 92) = v41 + 1;
  *(v40 + 4 * v41 + 28) = v21;
  v92 = v20;
  v42 = v39 + 104 * *v20;
  v44 = *(v42 + 92);
  v43 = (v42 + 92);
  if (v44 > 0xF)
  {
    *v43 = 0;
  }

  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PipelineSetupToApply const&,md::ls::DataIDSetToUse const&,md::ls::PipelineState const&)>::~__value_func[abi:nn200100](v102);
  *&v104 = &unk_1F2A177D0;
  *(&v104 + 1) = &v93;
  *&v105 = a1;
  *(&v105 + 1) = &v104;
  v45 = *(a3 + 8);
  v46 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v45);
  v47 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v45);
  v48 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetupToApply>(v45);
  v49 = ecs2::BasicRegistry<void>::storage<md::ls::RenderState>(v45);
  v50 = ecs2::BasicRegistry<void>::storage<md::ls::DataIDSetToUse>(v45);
  v51 = ecs2::BasicRegistry<void>::storage<md::ls::RenderItemID>(v45);
  v90 = v39;
  *&v108 = v46;
  *(&v108 + 1) = v47;
  *&v109 = v48;
  *(&v109 + 1) = v49;
  v52 = 8;
  v53 = v46;
  v54 = &v108;
  *&v110 = v50;
  *(&v110 + 1) = v51;
  do
  {
    if (*(*(&v108 + v52) + 40) - *(*(&v108 + v52) + 32) < *(v53 + 40) - *(v53 + 32))
    {
      v53 = *(&v108 + v52);
      v54 = &v108 + v52;
    }

    v52 += 8;
  }

  while (v52 != 48);
  v55 = *(*v54 + 32);
  v56 = *(*v54 + 40);
  v94 = v55;
  v95 = v56;
  v96 = v46;
  v97 = v47;
  v98 = v48;
  v99 = v49;
  v100 = v50;
  v101 = v51;
  while (v55 != v56 && !ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::IntendedSceneLayer const&,md::ls::VisibilityGroupID const&,md::ls::RenderableVisibilityOptions const&,md::ls::MeshLayerTypeV const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::ls::IntendedSceneLayer const,md::ls::VisibilityGroupID const,md::ls::RenderableVisibilityOptions const,md::ls::MeshLayerTypeV const,md::ls::SliceAssignmentT<(md::SliceType)8> const>(&v94, *v55, v55[1]))
  {
    v55 += 2;
    v94 = v55;
  }

  v57 = v94;
  if (v94 != v56)
  {
    v58 = 0;
    v59 = v97;
    v60 = v98;
    v61 = v99;
    v62 = v100;
    v63 = v101;
    v65 = v95;
    v64 = v96;
    while (1)
    {
      v66 = *(v64 + 32);
      v67 = v57[1];
      v68 = (v67 >> 3) & 0x1FF8;
      v69 = v67 & 0x3F;
      v70 = *(*(*(v64 + 8) + v68) + 4 * v69 + 2);
      v71 = *(v59 + 32);
      v72 = *(*(*(v60 + 8) + v68) + 4 * v69 + 2);
      v73 = *(*(v60 + 56) + ((v72 >> 3) & 0x1FF8));
      v74 = *(*(*(v61 + 8) + v68) + 4 * v69 + 2);
      v75 = *(*(v61 + 56) + ((v74 >> 3) & 0x1FF8));
      v76 = *(*(*(v62 + 8) + v68) + 4 * v69 + 2);
      v77 = *(*(v62 + 56) + ((v76 >> 3) & 0x1FF8));
      v78 = *(*(*(v63 + 8) + v68) + 4 * v69 + 2);
      v79 = *(*(v63 + 56) + ((v78 >> 3) & 0x1FF8));
      v80 = *(*(*(v59 + 8) + v68) + 4 * v69 + 2);
      *(v90 + 104 * *v92 + 24) = *v57;
      if (!*(&v105 + 1))
      {
        break;
      }

      (*(**(&v105 + 1) + 48))(*(&v105 + 1), v66 + 4 * v70, v71 + 4 * v80, v73 + 8 * (v72 & 0x3F), v75 + 8 * (v74 & 0x3F), v77 + 8 * (v76 & 0x3F), v79 + 24 * (v78 & 0x3F));
      ++v58;
      v81 = v57 + 2;
      while (1)
      {
        v57 = v81;
        v94 = v81;
        if (v81 == v65)
        {
          break;
        }

        v82 = ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::IntendedSceneLayer const&,md::ls::VisibilityGroupID const&,md::ls::RenderableVisibilityOptions const&,md::ls::MeshLayerTypeV const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::ls::IntendedSceneLayer const,md::ls::VisibilityGroupID const,md::ls::RenderableVisibilityOptions const,md::ls::MeshLayerTypeV const,md::ls::SliceAssignmentT<(md::SliceType)8> const>(&v94, *v81, v81[1]);
        v81 = v57 + 2;
        if (v82)
        {
          v83 = v57;
          goto LABEL_38;
        }
      }

      v83 = v65;
LABEL_38:
      if (v83 == v56)
      {
        goto LABEL_41;
      }
    }

LABEL_44:
    std::__throw_bad_function_call[abi:nn200100]();
  }

  v58 = 0;
LABEL_41:
  *(v90 + 104 * *v92 + 24) = -65536;
  v84 = v90 + 104 * *v92;
  v85 = *(v84 + 92);
  *(v84 + 92) = v85 + 1;
  *(v84 + 4 * v85 + 28) = v58;
  v86 = v90 + 104 * *v92;
  v88 = *(v86 + 92);
  v87 = (v86 + 92);
  if (v88 > 0xF)
  {
    *v87 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PendingRenderItemSetup const&,md::ls::PipelineSetupToApply const&,md::ls::RenderState const&,md::ls::DataIDSetToUse const&,md::ls::RenderItemID const&)>::~__value_func[abi:nn200100](&v104);
}

void sub_1B2F37E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PipelineSetupToApply const&,md::ls::DataIDSetToUse const&,md::ls::PipelineState const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PipelineSetupToApply const&,md::ls::DataIDSetToUse const&,md::ls::PipelineState const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PendingRenderItemSetup const&,md::ls::PipelineSetupToApply const&,md::ls::RenderState const&,md::ls::DataIDSetToUse const&,md::ls::RenderItemID const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<md::ita::TransferPipelines::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PipelineSetupToApply const&,md::ls::DataIDSetToUse const&,md::ls::PipelineState const&>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PendingRenderItemSetup const&,md::ls::PipelineSetupToApply const&,md::ls::RenderState const&,md::ls::DataIDSetToUse const&,md::ls::RenderItemID const&>)::$_1,std::allocator<md::ita::TransferPipelines::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PipelineSetupToApply const&,md::ls::DataIDSetToUse const&,md::ls::PipelineState const&>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PendingRenderItemSetup const&,md::ls::PipelineSetupToApply const&,md::ls::RenderState const&,md::ls::DataIDSetToUse const&,md::ls::RenderItemID const&>)::$_1>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PendingRenderItemSetup const&,md::ls::PipelineSetupToApply const&,md::ls::RenderState const&,md::ls::DataIDSetToUse const&,md::ls::RenderItemID const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t a6, unint64_t *a7)
{
  v34 = *MEMORY[0x1E69E9840];
  RenderItem = md::VKMRenderResourcesStore::getRenderItem(**(a1 + 8), *a7, a7[1]);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(**(a1 + 8), *a4);
  v12 = **(a1 + 8);
  v13 = *a5 >> 6;
  v14 = v12[98];
  if (v13 < (v12[99] - v14) >> 3 && (v15 = *(v14 + 8 * v13)) != 0 && (v16 = (v15 + 16 * (*a5 & 0x3FLL)), *v16 == HIDWORD(*a5)))
  {
    v17 = v12[101];
    v18 = v17 + 8 * v16[1];
    v19 = v12[102];
  }

  else
  {
    v19 = v12[102];
    v17 = v12[101];
    v18 = v19;
  }

  if (v18 == v19 || (v20 = (v18 - v17) >> 3, v21 = (v20 >> 3) & 0x1FFFFFFFFFFFFFF8, v22 = *(v12[110] + v21), ++*(*(v12[104] + v21) + 24 * (v20 & 0x3F)), !v22))
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v22 + 8 * (v20 & 0x3F));
  }

  RenderItem[3] = v23;
  RenderItem[4] = Pipeline;
  v24 = *a4;
  v27 = &unk_1F2A17818;
  *&v28 = v24;
  *(&v28 + 1) = ecs2::ExecutionTaskContext::currentEntity(Pipeline);
  v29 = &v27;
  v32 = &v30;
  v30 = &unk_1F2A17818;
  v31 = v28;
  HIDWORD(v31) = 0;
  v33 = 0;
  ecs2::Runtime::queueCommand();
  if (v33 != -1)
  {
    (off_1F2A175A8[v33])(&v26, &v30);
  }

  v33 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v27);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PipelineSetup>(ecs2::Entity,md::ls::PipelineSetup &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = v4 >> 16;
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
    *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
    qword_1EB83D950 = "md::ls::PipelineSetup]";
    qword_1EB83D958 = 21;
  }

  v56 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_55;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v55 = a1;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v54 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_62;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_62:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_51;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_51:
    v30 = *(v7 + 56);
    a2 = v54;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = v27 & 0x3F;
  v5 = v4 >> 16;
  *(*(v30 + 8 * v28) + 8 * v51) = *(v55 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_55:
  *(*(a2 + 41016) + (v5 << 6) + ((v56 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v56;
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
    *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
    qword_1EB83D950 = "md::ls::PipelineSetup]";
    qword_1EB83D958 = 21;
  }

  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PipelineSetup>(ecs2::Entity,md::ls::PipelineSetup &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A17818;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<md::ita::TransferPipelines::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PipelineSetupToApply const&,md::ls::DataIDSetToUse const&,md::ls::PipelineState const&>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PendingRenderItemSetup const&,md::ls::PipelineSetupToApply const&,md::ls::RenderState const&,md::ls::DataIDSetToUse const&,md::ls::RenderItemID const&>)::$_1,std::allocator<md::ita::TransferPipelines::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PipelineSetupToApply const&,md::ls::DataIDSetToUse const&,md::ls::PipelineState const&>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PendingRenderItemSetup const&,md::ls::PipelineSetupToApply const&,md::ls::RenderState const&,md::ls::DataIDSetToUse const&,md::ls::RenderItemID const&>)::$_1>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PendingRenderItemSetup const&,md::ls::PipelineSetupToApply const&,md::ls::RenderState const&,md::ls::DataIDSetToUse const&,md::ls::RenderItemID const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A177D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::ita::TransferPipelines::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PipelineSetupToApply const&,md::ls::DataIDSetToUse const&,md::ls::PipelineState const&>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PendingRenderItemSetup const&,md::ls::PipelineSetupToApply const&,md::ls::RenderState const&,md::ls::DataIDSetToUse const&,md::ls::RenderItemID const&>)::$_0,std::allocator<md::ita::TransferPipelines::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PipelineSetupToApply const&,md::ls::DataIDSetToUse const&,md::ls::PipelineState const&>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PendingRenderItemSetup const&,md::ls::PipelineSetupToApply const&,md::ls::RenderState const&,md::ls::DataIDSetToUse const&,md::ls::RenderItemID const&>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PipelineSetupToApply const&,md::ls::DataIDSetToUse const&,md::ls::PipelineState const&)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  Pipeline = md::VKMRenderResourcesStore::getPipeline(**(a1 + 8), *a3);
  v8 = **(a1 + 8);
  v9 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v8 + 71, *a5);
  if (v9 == v8[76] || (v10 = (v9 - v8[75]) >> 3, v11 = (v10 >> 3) & 0x1FFFFFFFFFFFFFF8, v12 = *(v8[84] + v11), ++*(*(v8[78] + v11) + 24 * (v10 & 0x3F)), !v12))
  {
    v15 = 0uLL;
    goto LABEL_8;
  }

  v13 = *(v12 + 16 * (v10 & 0x3F));
  v15 = v13;
  v14 = *(&v13 + 1);
  if (!*(&v13 + 1))
  {
LABEL_8:
    ggl::PipelineSetup::setState(Pipeline, &v15);
    return;
  }

  atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
  ggl::PipelineSetup::setState(Pipeline, &v15);

  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
}

uint64_t std::__function::__func<md::ita::TransferPipelines::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PipelineSetupToApply const&,md::ls::DataIDSetToUse const&,md::ls::PipelineState const&>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PendingRenderItemSetup const&,md::ls::PipelineSetupToApply const&,md::ls::RenderState const&,md::ls::DataIDSetToUse const&,md::ls::RenderItemID const&>)::$_0,std::allocator<md::ita::TransferPipelines::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PipelineSetupToApply const&,md::ls::DataIDSetToUse const&,md::ls::PipelineState const&>,ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PendingRenderItemSetup const&,md::ls::PipelineSetupToApply const&,md::ls::RenderState const&,md::ls::DataIDSetToUse const&,md::ls::RenderItemID const&>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PipelineSetupToApply const&,md::ls::DataIDSetToUse const&,md::ls::PipelineState const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A17788;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::addComponent<md::ls::DataIDSetToUse>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A17860;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A17860;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A175A8[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::DataIDSetToUse>(ecs2::Entity,md::ls::DataIDSetToUse &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::DataIDSetToUse>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::DataIDSetToUse>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::DataIDSetToUse>(ecs2::Entity,md::ls::DataIDSetToUse &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A17860;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void ggl::DaVinci::DecalPipelineState::~DecalPipelineState(ggl::DaVinci::DecalPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

uint64_t ggl::DaVinci::DecalPipelineSetup::textureIsEnabled(ggl::DaVinci::DecalPipelineSetup *this, uint64_t a2)
{
  v2 = 1;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = *(*(this + 2) + 315);
      return v2 & 1;
    }

    if (a2 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = *(*(this + 2) + 309);
      return v2 & 1;
    }

LABEL_7:
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ggl::DaVinci::DecalPipelineSetup::constantDataIsEnabled(ggl::DaVinci::DecalPipelineSetup *this, uint64_t a2)
{
  v2 = 1;
  if (a2 <= 3)
  {
    if (a2 < 2)
    {
      return v2 & 1;
    }

    if (a2 == 2)
    {
LABEL_13:
      v2 = *(*(this + 2) + 309);
      return v2 & 1;
    }

    if (a2 == 3)
    {
      v2 = *(*(this + 2) + 335);
      return v2 & 1;
    }

LABEL_14:
    v2 = 0;
    return v2 & 1;
  }

  if (a2 > 6)
  {
    if (a2 == 7)
    {
      return v2 & 1;
    }

    if (a2 == 8)
    {
      v2 = *(*(this + 2) + 315);
      return v2 & 1;
    }

    goto LABEL_14;
  }

  if ((a2 - 4) >= 2)
  {
    if (a2 != 6)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return v2 & 1;
}

void ggl::DaVinci::DecalPipelineSetup::~DecalPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::deque<std::function<void ()(void)>>::~deque[abi:nn200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 7];
    v7 = *v6 + 32 * (v5 & 0x7F);
    v8 = *(v3 + (((*(a1 + 40) + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v5) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v7 = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v7) + 32;
        if (v7 - *v6 == 4096)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 64;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 128;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::deque<std::function<void ()(void)>>::pop_front(uint64_t a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](*(*(a1 + 8) + ((*(a1 + 32) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 32) & 0x7FLL));
  v2 = vaddq_s64(*(a1 + 32), xmmword_1B33B14D0);
  *(a1 + 32) = v2;
  if (v2.i64[0] >= 0x100uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 128;
  }
}

void md::InplaceRunLoop::start(unsigned __int8 *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 8);
  std::mutex::lock((a1 + 8));
  v5 = *a1;
  std::mutex::unlock(v4);
  if (v5 == 1)
  {
    std::mutex::lock(v4);
    *a1 = 0;
    std::mutex::unlock(v4);
    v6 = *(a2 + 24);
    if (v6)
    {
      (*(*v6 + 48))(v6);
    }

    for (i = 0; ; (*(*i + 48))(i))
    {
      __lk.__m_ = v4;
      __lk.__owns_ = 1;
      std::mutex::lock(v4);
      if (*a1)
      {
        break;
      }

      while (1)
      {
        if (*(a1 + 20))
        {
          std::function<void ()(void)>::operator=(v9, *(*(a1 + 16) + ((*(a1 + 19) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 19) & 0x7FLL));
          std::deque<std::function<void ()(void)>>::pop_front((a1 + 120));
          v7 = 0;
          goto LABEL_11;
        }

        if (*a1)
        {
          break;
        }

        std::condition_variable::wait((a1 + 72), &__lk);
      }

      v7 = 1;
LABEL_11:
      if (__lk.__owns_)
      {
        goto LABEL_12;
      }

LABEL_13:
      if (v7)
      {
        std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v9);
        return;
      }

      if (!i)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }
    }

    v7 = 3;
LABEL_12:
    std::mutex::unlock(__lk.__m_);
    goto LABEL_13;
  }
}

void sub_1B2F39648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](&a13);
  _Unwind_Resume(a1);
}

BOOL md::InplaceRunLoop::isRunning(md::InplaceRunLoop *this)
{
  std::mutex::lock((this + 8));
  v2 = *this;
  std::mutex::unlock((this + 8));
  return (v2 & 1) == 0;
}

void std::__function::__func<md::InplaceRunLoop::sync(std::function<void ()(void)>)::$_0,std::allocator<md::InplaceRunLoop::sync(std::function<void ()(void)>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    v3 = *(a1 + 8);

    std::promise<void>::set_value(v3);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<md::InplaceRunLoop::sync(std::function<void ()(void)>)::$_0,std::allocator<md::InplaceRunLoop::sync(std::function<void ()(void)>)::$_0>,void ()(void)>::destroy_deallocate(v4);
  }
}

void std::__function::__func<md::InplaceRunLoop::sync(std::function<void ()(void)>)::$_0,std::allocator<md::InplaceRunLoop::sync(std::function<void ()(void)>)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<md::InplaceRunLoop::sync(std::function<void ()(void)>)::$_0,std::allocator<md::InplaceRunLoop::sync(std::function<void ()(void)>)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F2A17900;
  a2[1] = v2;
  return std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<md::InplaceRunLoop::sync(std::function<void ()(void)>)::$_0,std::allocator<md::InplaceRunLoop::sync(std::function<void ()(void)>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A17900;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 2));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::InplaceRunLoop::sync(std::function<void ()(void)>)::$_0,std::allocator<md::InplaceRunLoop::sync(std::function<void ()(void)>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A17900;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 2));
  return a1;
}

intptr_t ___ZN2md18HomeQueueScheduler8syncWaitEjNSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 88);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    atomic_fetch_add(*(v1 + 48), 1u);
    v3 = **(v1 + 56);

    return dispatch_semaphore_signal(v3);
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__func<md::HomeQueueScheduler::syncWait(unsigned int,std::function<void ()(void)>)::$_0,std::allocator<md::HomeQueueScheduler::syncWait(unsigned int,std::function<void ()(void)>)::$_0>,void ()(void)>::operator()(v5);
  }
}

intptr_t std::__function::__func<md::HomeQueueScheduler::syncWait(unsigned int,std::function<void ()(void)>)::$_0,std::allocator<md::HomeQueueScheduler::syncWait(unsigned int,std::function<void ()(void)>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(*v2 + 48))(v2);
    atomic_fetch_add(*(a1 + 8), 1u);
    v3 = **(a1 + 16);

    return dispatch_semaphore_signal(v3);
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__func<md::HomeQueueScheduler::syncWait(unsigned int,std::function<void ()(void)>)::$_0,std::allocator<md::HomeQueueScheduler::syncWait(unsigned int,std::function<void ()(void)>)::$_0>,void ()(void)>::destroy_deallocate(v5);
  }
}

void std::__function::__func<md::HomeQueueScheduler::syncWait(unsigned int,std::function<void ()(void)>)::$_0,std::allocator<md::HomeQueueScheduler::syncWait(unsigned int,std::function<void ()(void)>)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](a1 + 24);

  operator delete(a1);
}

uint64_t std::__function::__func<md::HomeQueueScheduler::syncWait(unsigned int,std::function<void ()(void)>)::$_0,std::allocator<md::HomeQueueScheduler::syncWait(unsigned int,std::function<void ()(void)>)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A17948;
  *(a2 + 8) = *(a1 + 8);
  return std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](a2 + 24, a1 + 24);
}

void std::__function::__func<md::HomeQueueScheduler::syncWait(unsigned int,std::function<void ()(void)>)::$_0,std::allocator<md::HomeQueueScheduler::syncWait(unsigned int,std::function<void ()(void)>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A17948;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 3));

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::HomeQueueScheduler::syncWait(unsigned int,std::function<void ()(void)>)::$_0,std::allocator<md::HomeQueueScheduler::syncWait(unsigned int,std::function<void ()(void)>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A17948;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100]((a1 + 3));
  return a1;
}

uint64_t std::__function::__func<md::HomeQueueScheduler::waitForSynchronization(char const*)::$_0,std::allocator<md::HomeQueueScheduler::waitForSynchronization(char const*)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A17990;
  a2[1] = v2;
  return result;
}

void md::ARGeoSessionLocationProvider::update(uint64_t a1, md::LayoutContext *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  md::LayoutContext::frameState(a2);
  v7 = *(v6 + 72);
  *(a1 + 24) = vmulq_f64(*(v6 + 56), vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
  *(a1 + 40) = v7;
  v8 = [v5 location];
  if (v8)
  {
    [v5 location];
  }

  else
  {
    [v5 rawLocation];
  }
  v9 = ;

  if (v9)
  {
    [v9 coordinate];
    v11 = v10;
    [v9 coordinate];
    v13 = v12;
    [v9 altitude];
    *(a1 + 24) = v11;
    *(a1 + 32) = v13;
    *(a1 + 40) = v14;
  }

  v15 = [v5 geoTrackingStatus];
  v16 = [v15 state];

  if (v16 == 3)
  {
    [v5 heading];
  }

  else
  {
    [v5 rawHeading];
  }

  v18 = 360.0 - v17;
  if ((*(a1 + 56) & 1) == 0)
  {
    *(a1 + 56) = 1;
  }

  *(a1 + 48) = v18;
  v19 = GEOGetVectorKitARGeoSessionLocationProviderLog();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

  if (v20)
  {
    v21 = GEOGetVectorKitARGeoSessionLocationProviderLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [v5 timestamp];
      v23 = v22;
      if (*(a1 + 56) == 1)
      {
        std::to_string(&v33, *(a1 + 48));
        v24 = v33.__r_.__value_.__r.__words[0];
        v25 = "YES";
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v33;
        }

        v26 = *(a1 + 24);
        v27 = *(a1 + 32);
        if (!v9)
        {
          v25 = "NO";
        }

        v28 = *(a1 + 40);
        *buf = 134219266;
        v35 = v23;
        v36 = 2080;
        v37 = v24;
        v38 = 2080;
        v39 = v25;
        v40 = 2048;
        v41 = v26;
        v42 = 2048;
        v43 = v27;
        v44 = 2048;
        v45 = v28;
        _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_DEBUG, "frame:%f heading:%s isCoordinateFromAR:%s coordinate:%f,%f,%f", buf, 0x3Eu);
        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v29 = "YES";
        v30 = *(a1 + 24);
        v31 = *(a1 + 32);
        v32 = *(a1 + 40);
        if (!v9)
        {
          v29 = "NO";
        }

        *buf = 134219266;
        v35 = v22;
        v36 = 2080;
        v37 = "NONE";
        v38 = 2080;
        v39 = v29;
        v40 = 2048;
        v41 = v30;
        v42 = 2048;
        v43 = v31;
        v44 = 2048;
        v45 = v32;
        _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_DEBUG, "frame:%f heading:%s isCoordinateFromAR:%s coordinate:%f,%f,%f", buf, 0x3Eu);
      }
    }
  }
}

id GEOGetVectorKitARGeoSessionLocationProviderLog(void)
{
  if (GEOGetVectorKitARGeoSessionLocationProviderLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitARGeoSessionLocationProviderLog(void)::onceToken, &__block_literal_global_17400);
  }

  v1 = GEOGetVectorKitARGeoSessionLocationProviderLog(void)::log;

  return v1;
}

void ___ZL46GEOGetVectorKitARGeoSessionLocationProviderLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "ARGeoSessionLocationProvider");
  v1 = GEOGetVectorKitARGeoSessionLocationProviderLog(void)::log;
  GEOGetVectorKitARGeoSessionLocationProviderLog(void)::log = v0;
}

void md::Logic<md::ARExternalAssetDataRequestLogic,md::ARExternalAssetDataRequestContext,md::LogicDependencies<gdc::TypeList<md::ARLogicContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::ARExternalAssetDataRequestLogic::runBeforeLayout(uint64_t a1, md::LayoutContext *a2, void *a3)
{
  v117 = *MEMORY[0x1E69E9840];
  if (*(*a3 + 64) == 2 && *(*a3 + 16) == 3)
  {
    v5 = a3[1];
    gdc::LayerDataCollector::clear(*(a1 + 128));
    v6 = *(a1 + 128);
    v7 = gdc::Registry::storage<arComponents::AssetDataReference>(*(a1 + 120));
    v8 = v7[7];
    v9 = v7[8];
    if (v8 != v9)
    {
      v10 = v7[10];
      do
      {
        v110 = *v10;
        v111 = 0;
        gdc::GenericKey::GenericKey(&v100, &v110, 2);
        gdc::LayerDataRequestKey::LayerDataRequestKey(&v105, 0, 0x37u, &v100, -1073741827);
        if (v100 != v102)
        {
          free(v100);
        }

        gdc::LayerDataCollector::addDataKey(v6, &v105);
        if (v107 != v109[0])
        {
          free(v107);
        }

        v10 += 5;
        v8 += 8;
      }

      while (v8 != v9);
    }

    v11 = 0;
    v13 = *(a1 + 120);
    v12 = *(a1 + 128);
    v110 = v114;
    v111 = v114;
    v112 = v114;
    v113 = 4;
    v14 = 0xCBF29CE484222325;
    do
    {
      v14 = 0x100000001B3 * (v14 ^ aStdStringViewG_700[v11++ + 38]);
    }

    while (v11 != 124);
    v15 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>(v13, v14);
    gdc::RegistryView<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>::RegistryViewIterator::RegistryViewIterator(&v105, (v15 + 4), v15 + 4, v15[7]);
    gdc::RegistryView<gdc::component::DataRequest<arComponents::XYPlaneMeshRequestData>::StatusTag<(gdc::component::DataRequestStatus)2>>::RegistryViewIterator::RegistryViewIterator(&v100, (v15 + 4), v15 + 4, v15[8]);
    v16 = v102;
    v17 = v107;
    while (v16 != v17)
    {
      v115 = *v17;
      geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(&v110, &v115);
      v18 = v106;
      v19 = *(v105 + 4);
      v20 = (v107 + 8);
      do
      {
        v17 = v20;
        v107 = v20;
        if (v20 == v19)
        {
          break;
        }

        Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v18, v20[1]);
        v20 = (v17 + 1);
      }

      while (v18[4] == Index);
      v16 = v102;
    }

    v22 = v110;
    v23 = v111;
    while (v22 != v23)
    {
      gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::updateRequestStatus(v13, *v22++, 3);
    }

    v96 = v5;
    v97 = a2;
    v98 = a1;
    v24 = gdc::Registry::view<arComponents::ExternalAssetRequestData,gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>(v13);
    v26 = v24;
    v27 = v25;
    v28 = v24 + 4;
    if (v24)
    {
      v29 = v24 + 4;
    }

    else
    {
      v29 = 0;
    }

    v30 = (v25 + 32);
    if (v25)
    {
      v31 = (v25 + 32);
    }

    else
    {
      v31 = 0;
    }

    if (v31[4] - v31[3] >= v29[4] - v29[3])
    {
      v32 = v29;
    }

    else
    {
      v32 = v31;
    }

    if (v29 == v32)
    {
      v34 = v24[7];
      v33 = v24[8];
      if (v34 != v33)
      {
        v35 = v24[10];
        do
        {
          if (*(v27 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v30, *(v34 + 4)))
          {
            v115 = *v35;
            v116 = 0;
            gdc::GenericKey::GenericKey(&v100, &v115, 2);
            gdc::LayerDataRequestKey::LayerDataRequestKey(&v105, 0, 0x37u, &v100, -1073741827);
            if (v100 != v102)
            {
              free(v100);
            }

            gdc::LayerDataCollector::addDataKey(v12, &v105);
            if (v107 != v109[0])
            {
              free(v107);
            }
          }

          ++v35;
          v34 += 8;
        }

        while (v34 != v33);
      }
    }

    v36 = v98;
    if (v31 == v32)
    {
      v77 = *(v27 + 56);
      v76 = *(v27 + 64);
      while (v77 != v76)
      {
        v78 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v28, *(v77 + 4));
        v79 = v26[8];
        if (v79 != v78)
        {
          v80 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v28, *(v77 + 4));
          if (v79 == v80)
          {
            v81 = v26[11];
          }

          else
          {
            v81 = (v26[10] + v80 - v26[7]);
          }

          v115 = *v81;
          v116 = 0;
          gdc::GenericKey::GenericKey(&v100, &v115, 2);
          gdc::LayerDataRequestKey::LayerDataRequestKey(&v105, 0, 0x37u, &v100, -1073741827);
          if (v100 != v102)
          {
            free(v100);
          }

          gdc::LayerDataCollector::addDataKey(v12, &v105);
          if (v107 != v109[0])
          {
            free(v107);
          }
        }

        v77 += 8;
      }
    }

    if (v110 != v112)
    {
      free(v110);
    }

    v37 = *v96;
    md::LayoutContext::frameState(v97);
    gdc::LayerDataManager::createDataRequests(v37, *(v98 + 128), (*(v38 + 88) * 1000.0));
    gdc::LayerDataManager::getData(v37, *(v98 + 128));
    v39 = *(v98 + 128);
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>>>::clear(v98 + 136);
    v40 = gdc::LayerDataCollector::cDataHolders(*(v39 + 24), *(v39 + 32), 55);
    if (v40 != v41)
    {
      v42 = v40;
      v43 = v41;
      do
      {
        if (*(v42 + 128) == 3)
        {
          v44 = *(v42 + 112);
          v45 = *(v42 + 120);
          if (v45)
          {
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
            v46 = v44[21];
            atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
            v47 = v45;
          }

          else
          {
            v47 = 0;
            v46 = v44[21];
          }

          v105 = v46;
          v106 = v44;
          v107 = v47;
          std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::shared_ptr<md::AssetData>>>((v98 + 136), v46);
          if (v107)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v107);
          }

          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v45);
          }
        }

        v42 += 144;
      }

      while (v42 != v43);
    }

    v115 = *(v98 + 120);
    v105 = v109;
    v106 = v109;
    v107 = v109;
    v108 = 4;
    v100 = v104;
    v101 = v104;
    v102 = v104;
    v103 = 4;
    v99 = 0;
    v48 = gdc::Registry::view<arComponents::ExternalAssetRequestData,gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::StatusTag<(gdc::component::DataRequestStatus)3>>(v115);
    v50 = v48;
    v51 = v49;
    v52 = v48 + 4;
    if (v48)
    {
      v53 = v48 + 4;
    }

    else
    {
      v53 = 0;
    }

    v54 = (v49 + 32);
    if (v49)
    {
      v55 = (v49 + 32);
    }

    else
    {
      v55 = 0;
    }

    if (v55[4] - v55[3] >= v53[4] - v53[3])
    {
      v56 = v53;
    }

    else
    {
      v56 = v55;
    }

    if (v53 == v56)
    {
      v110 = &v99;
      v111 = (v98 + 136);
      v112 = &v105;
      v113 = &v115;
      v114[0] = &v100;
      v57 = v48[7];
      v58 = v48[8];
      if (v57 != v58)
      {
        v59 = v48[10];
        do
        {
          if (*(v51 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v54, *(v57 + 4)))
          {
            assignDataToComponentUsingAssetMap(gdc::Registry *,std::unordered_map<unsigned long long,std::shared_ptr<md::AssetData>> &)::$_0::operator()(&v110, *v57, *v59);
          }

          ++v59;
          v57 += 8;
        }

        while (v57 != v58);
      }

      v36 = v98;
    }

    if (v55 == v56)
    {
      v110 = &v99;
      v111 = (v98 + 136);
      v112 = &v105;
      v113 = &v115;
      v114[0] = &v100;
      v82 = *(v51 + 56);
      v83 = *(v51 + 64);
      while (v82 != v83)
      {
        v84 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v52, *(v82 + 4));
        v85 = v50[8];
        if (v85 != v84)
        {
          v86 = *v82;
          v87 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v52, HIDWORD(*v82));
          if (v85 == v87)
          {
            v88 = v50[11];
          }

          else
          {
            v88 = (v50[10] + v87 - v50[7]);
          }

          assignDataToComponentUsingAssetMap(gdc::Registry *,std::unordered_map<unsigned long long,std::shared_ptr<md::AssetData>> &)::$_0::operator()(&v110, v86, *v88);
        }

        v82 += 8;
      }
    }

    v60 = v105;
    v61 = v106;
    while (v60 != v61)
    {
      gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::updateRequestStatus(v115, *v60++, 1);
    }

    v63 = v100;
    v62 = v101;
    if (v100 != v101)
    {
      do
      {
        gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::updateRequestStatus(v115, *v63++, 4);
      }

      while (v63 != v62);
      v63 = v100;
    }

    if (v63 != v102)
    {
      free(v63);
    }

    if (v105 != v107)
    {
      free(v105);
    }

    v64 = *(v36 + 120);
    v105 = v109;
    v106 = v109;
    v107 = v109;
    v108 = 4;
    v65 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>(v64);
    v66 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::DidChange>(v64);
    v67 = v66;
    v68 = (v66 + 32);
    v70 = v65[7];
    v69 = v65[8];
    if (*(v66 + 64) - *(v66 + 56) >= (v69 - v70))
    {
      v71 = v65 + 4;
    }

    else
    {
      v71 = (v66 + 32);
    }

    if (v65 + 4 == v71 && v70 != v69)
    {
      v72 = v65[10];
      do
      {
        if (*(v67 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v68, *(v70 + 4)))
        {
          v100 = *v70;
          gdc::component::DataRequestObserver::notifyObservers<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>(v64, v100, *v72);
          geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(&v105, &v100);
        }

        ++v72;
        v70 += 8;
      }

      while (v70 != v69);
    }

    if (v68 == v71)
    {
      v89 = *(v67 + 56);
      v90 = *(v67 + 64);
      while (v89 != v90)
      {
        v91 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v65 + 4, *(v89 + 4));
        v92 = v65[8];
        if (v92 != v91)
        {
          v93 = *v89;
          v94 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v65 + 4, HIDWORD(*v89));
          if (v92 == v94)
          {
            v95 = v65[11];
          }

          else
          {
            v95 = (v65[10] + ((v94 - v65[7]) >> 3));
          }

          v100 = v93;
          gdc::component::DataRequestObserver::notifyObservers<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>>(v64, v93, *v95);
          geo::small_vector_base<gdc::Entity>::emplace_back<gdc::Entity&>(&v105, &v100);
        }

        v89 += 8;
      }
    }

    v73 = v105;
    v74 = v106;
    if (v105 != v106)
    {
      do
      {
        v75 = gdc::Registry::storage<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::DidChange>(v64);
        gdc::ComponentStorageWrapper<gdc::component::DataRequest<arComponents::ExternalAssetRequestData>::DidChange>::remove(v75, *v73++);
      }

      while (v73 != v74);
      v73 = v105;
    }

    if (v73 != v107)
    {
      free(v73);
    }
  }
}