void *std::__hash_table<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::__unordered_map_hasher<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,md::DashTextureCache::KeyHasher,std::equal_to<md::DashTextureCache::Key>,true>,std::__unordered_map_equal<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::equal_to<md::DashTextureCache::Key>,md::DashTextureCache::KeyHasher,true>,std::allocator<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>>>::__emplace_unique_key_args<md::DashTextureCache::Key,std::piecewise_construct_t const&,std::tuple<md::DashTextureCache::Key const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v4 = std::hash<gss::DashPattern>::operator()(a2) ^ *(a2 + 40);
  v5 = *(a2 + 42) ^ *(a2 + 43);
  v6 = v4 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4 ^ v5;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<md::DashTextureCache::Key>::operator()[abi:nn200100]((v12 + 2), a2))
  {
    goto LABEL_17;
  }

  return v12;
}

BOOL std::equal_to<md::DashTextureCache::Key>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  result = gss::DashPattern::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 40) == *(a2 + 40) && *(a1 + 42) == *(a2 + 42) && *(a1 + 43) == *(a2 + 43);
  }

  return result;
}

void std::__shared_ptr_emplace<md::DashTexture>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 24));
}

void std::__shared_ptr_emplace<md::DashTexture>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A069C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E4CE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VKPolylineGroupOverlay;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t md::ModelTileDebugData::sharedPolygonLineMesh(md::ModelTileDebugData *this)
{
  result = *(this + 18);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ggl::PolygonStroke::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__node_insert_unique(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4 == 1)
  {
    geo::QuadTile::computeHash((a2 + 16));
    LOBYTE(v4) = 0;
    *(a2 + 40) = 0;
  }

  v5 = *(a2 + 32);
  *(a2 + 8) = v5;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v5;
      if (v6 <= v5)
      {
        v9 = v5 % v6;
      }
    }

    else
    {
      v9 = (v6 - 1) & v5;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = *(i + 1);
        if (v12 == v5)
        {
          if (i[40] == 1)
          {
            geo::QuadTile::computeHash(i + 16);
            i[40] = 0;
            LOBYTE(v4) = *(a2 + 40);
          }

          v13 = *(i + 4);
          if (v4)
          {
            LOBYTE(v4) = 0;
            v15 = (*(a2 + 17) + ((*(a2 + 16) - 0x61C8864680B583EBLL) << 6) + ((*(a2 + 16) - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*(a2 + 16) - 0x61C8864680B583EBLL);
            v16 = (*(a2 + 20) + (v15 << 6) + (v15 >> 2) - 0x61C8864680B583EBLL) ^ v15;
            v14 = (*(a2 + 24) + (v16 << 6) + (v16 >> 2) - 0x61C8864680B583EBLL) ^ v16;
            *(a2 + 32) = v14;
            *(a2 + 40) = 0;
          }

          else
          {
            v14 = *(a2 + 32);
          }

          if (v13 == v14 && i[16] == *(a2 + 16) && i[17] == *(a2 + 17) && *(i + 5) == *(a2 + 20) && *(i + 6) == *(a2 + 24))
          {
            return 0;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v6)
            {
              v12 %= v6;
            }
          }

          else
          {
            v12 &= v6 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v6 || (v18 * v6) < v17)
  {
    v19 = 1;
    if (v6 >= 3)
    {
      v19 = (v6 & (v6 - 1)) != 0;
    }

    v20 = v19 | (2 * v6);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, v22);
  }

  v23 = *(a1 + 8);
  v24 = *(a2 + 8);
  v25 = vcnt_s8(v23);
  v25.i16[0] = vaddlv_u8(v25);
  if (v25.u32[0] > 1uLL)
  {
    if (v24 >= *&v23)
    {
      v24 %= *&v23;
    }
  }

  else
  {
    v24 &= *&v23 - 1;
  }

  v26 = *a1;
  v27 = *(*a1 + 8 * v24);
  if (v27)
  {
    *a2 = *v27;
LABEL_49:
    *v27 = a2;
    goto LABEL_50;
  }

  *a2 = *(a1 + 16);
  *(a1 + 16) = a2;
  *(v26 + 8 * v24) = a1 + 16;
  if (*a2)
  {
    v28 = *(*a2 + 8);
    if (v25.u32[0] > 1uLL)
    {
      if (v28 >= *&v23)
      {
        v28 %= *&v23;
      }
    }

    else
    {
      v28 &= *&v23 - 1;
    }

    v27 = (*a1 + 8 * v28);
    goto LABEL_49;
  }

LABEL_50:
  ++*(a1 + 24);
  return 1;
}

md::mun::MuninNavigationGraph *std::unique_ptr<md::mun::MuninNavigationGraph>::reset[abi:nn200100](md::mun::MuninNavigationGraph **a1, md::mun::MuninNavigationGraph *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    md::mun::MuninNavigationGraph::~MuninNavigationGraph(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__list_imp<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry,std::allocator<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base((v2 + 14));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void md::mun::MuninMetadataContainer::~MuninMetadataContainer(md::mun::MuninMetadataContainer *this)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 600);
  std::__list_imp<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry,std::allocator<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry>>::clear(this + 72);
  std::mutex::~mutex(this + 8);
  std::unique_ptr<md::mun::MuninNavigationGraph>::reset[abi:nn200100](this + 62, 0);
  geo::read_write_lock::~read_write_lock((this + 296));
  geo::read_write_lock::~read_write_lock((this + 96));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 10));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 7));
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void md::mun::MuninMetadataContainer::addActiveMetadataPoint(std::mutex *this, const CollectionPoint *a2)
{
  std::mutex::lock(this + 8);
  *&v6 = a2->pointId;
  *(&v6 + 1) = v6;
  v7 = *a2->frame._translation._e;
  v4 = *a2->frame._rotation._imaginary._e;
  v8 = a2->frame._translation._e[2];
  v9 = v4;
  v10 = a2->frame._rotation._imaginary._e[2];
  v11 = *&a2->frame._rotation._scalar;
  v5 = *&a2->mercatorPosition._e[2];
  v12 = *a2->mercatorPosition._e;
  v13 = v5;
  v14 = v18;
  v15 = v18;
  v16 = v18;
  v17 = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(&v14, a2->photos._begin, a2->photos._end);
  *(v19 + 5) = *&a2[6].photos.storage[2].__data[5];
  v19[0] = *a2[6].photos.storage[2].__data;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28[0] = v29;
  v28[1] = v29;
  v28[2] = v29;
  v28[3] = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(v28, v14, v15);
  *(v30 + 5) = *(v19 + 5);
  v30[0] = v19[0];
  v30[2] = 0;
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(&this[9].__m_.__opaque[16], v20))
  {
    std::__list_imp<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry,std::allocator<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry const&>();
  }

  std::__list_imp<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry,std::allocator<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry const&>();
}

void sub_1B2E4D818(_Unwind_Exception *a1)
{
  operator delete(v2);
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v4 + 96);
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v3 + 96);
  std::mutex::unlock(v1 + 8);
  _Unwind_Resume(a1);
}

void md::mun::MuninMetadataContainer::nearestMetadataTiles(uint64_t a1, uint64_t a2, double *a3, double a4)
{
  v5 = atomic_load((a2 + 24));
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (v5)
  {
    v7 = *a3;
    v8 = cos(v7 + v7) * -559.82 + 111132.92;
    v9 = v8 + cos(v7 * 4.0) * 1.175;
    v10 = v9 + cos(v7 * 6.0) * -0.0023;
    v11 = v7 * 0.5;
    v12 = tan(v7 * 0.5 + 0.78103484);
    v13 = log(v12);
    v14 = tan(v11 + 0.789761487);
    v15 = fabs((log(v14) - v13) * 0.159154943) * a4 / v10;
    v16 = a3[1];
    v17 = tan(v11 + 0.785398163);
    v18 = log(v17) * 0.159154943 + 0.5;
    v19 = 1 << v5;
    v20 = (1 << v5);
    v21 = v19 + ~vcvtmd_s64_f64((v15 + v18) * v19);
    v22 = vcvtmd_s64_f64((v18 - v15) * v20);
    if (v21 <= ((1 << v5) + ~v22))
    {
      v23 = v16 * 0.159154943 + 0.5;
      v24 = vcvtmd_s64_f64((v23 - v15) * v20);
      v25 = vcvtmd_s64_f64((v15 + v23) * v20);
      do
      {
        if (v24 <= v25)
        {
          operator new();
        }

        ++v21;
      }

      while (v21 != v19 - v22);
    }
  }
}

void sub_1B2E4DB4C(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0,std::allocator<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(a1 + 8))
      {
        operator new();
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }
}

void std::__function::__func<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0,std::allocator<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0,std::allocator<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0>,void ()(void)>::destroy[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__alloc_func<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0,std::allocator<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0>,void ()(void)>::destroy[abi:nn200100](uint64_t a1)
{
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void *std::__function::__func<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0,std::allocator<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_1F2A06A80;
  a2[1] = v4;
  a2[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  a2[4] = 0;
  a2[3] = a2 + 4;
  v5 = a2 + 3;
  a2[5] = 0;
  result = std::set<std::shared_ptr<md::mun::MuninMetadata>>::insert[abi:nn200100]<std::__tree_const_iterator<std::shared_ptr<md::mun::MuninMetadata>,std::__tree_node<std::shared_ptr<md::mun::MuninMetadata>,void *> *,long>>(a2 + 3, *(a1 + 24), (a1 + 32));
  v5[3] = *(a1 + 48);
  return result;
}

void std::__function::__func<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0,std::allocator<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A06A80;
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 32));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0,std::allocator<md::mun::MuninMetadataContainer::updateCurrentMetadata(gdc::LayerDataCollector const*)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2A06A80;
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 32));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

__int128 *std::__copy_impl::operator()[abi:nn200100]<std::__tree_const_iterator<std::shared_ptr<md::mun::MuninMetadata>,std::__tree_node<std::shared_ptr<md::mun::MuninMetadata>,void *> *,long>,std::__tree_const_iterator<std::shared_ptr<md::mun::MuninMetadata>,std::__tree_node<std::shared_ptr<md::mun::MuninMetadata>,void *> *,long>,std::back_insert_iterator<std::vector<std::shared_ptr<md::mun::MuninMetadata>>>>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      std::vector<std::shared_ptr<md::LabelExternalRoadFeature>>::push_back[abi:nn200100](a3, v5 + 2);
      v6 = *(v5 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a2;
}

void std::__optional_storage_base<md::mun::CollectionPoint,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<md::mun::CollectionPoint,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1864) == *(a2 + 1864))
  {
    if (*(a1 + 1864))
    {
      *a1 = *a2;
      for (i = 32; i != 44; i += 4)
      {
        *(a1 + i) = *(a2 + i);
      }

      *(a1 + 44) = *(a2 + 44);
      for (j = 8; j != 32; j += 8)
      {
        *(a1 + j) = *(a2 + j);
      }

      *(a1 + 48) = *(a2 + 48);
      for (k = 56; k != 80; k += 8)
      {
        *(a1 + k) = *(a2 + k);
      }

      *(a1 + 80) = *(a2 + 80);
      if (a1 != a2)
      {
        geo::small_vector_base<md::mun::PhotoInfo>::copy((a1 + 88), (a2 + 88), (a1 + 120));
      }

      v7 = *(a2 + 1848);
      *(a1 + 1853) = *(a2 + 1853);
      *(a1 + 1848) = v7;
    }
  }

  else if (*(a1 + 1864))
  {
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(a1 + 88);
    *(a1 + 1864) = 0;
  }

  else
  {
    std::__construct_at[abi:nn200100]<md::mun::CollectionPoint,md::mun::CollectionPoint const&,md::mun::CollectionPoint*>(a1, a2);
    *(a1 + 1864) = 1;
  }
}

uint64_t std::__construct_at[abi:nn200100]<md::mun::CollectionPoint,md::mun::CollectionPoint const&,md::mun::CollectionPoint*>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  v5 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 44) = *(a2 + 44);
  v6 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v6;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = a1 + 120;
  *(a1 + 112) = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>((a1 + 88), *(a2 + 88), *(a2 + 96));
  v7 = *(a2 + 1848);
  *(a1 + 1853) = *(a2 + 1853);
  *(a1 + 1848) = v7;
  return a1;
}

void md::mun::MuninMetadataContainer::activePoint(md::mun::MuninMetadataContainer *this, uint64_t a2, unint64_t a3)
{
  std::mutex::lock((a2 + 512));
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a2 + 600), a3))
  {
    std::__list_imp<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry,std::allocator<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<unsigned long long,md::mun::CollectionPoint,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::CacheEntry const&>();
  }

  *this = 0;
  *(this + 1864) = 0;
  std::mutex::unlock((a2 + 512));
}

uint64_t std::vector<md::mun::CollectionPoint>::__emplace_back_slow_path<md::mun::CollectionPoint const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x63FB9AEB1FDCD759 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2328A701194538)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0xC7F735D63FB9AEB2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xC7F735D63FB9AEB2 * ((a1[2] - *a1) >> 3);
  }

  if ((0x63FB9AEB1FDCD759 * ((a1[2] - *a1) >> 3)) >= 0x119453808CA29CLL)
  {
    v5 = 0x2328A701194538;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::CollectionPoint>>(v5);
  }

  v12 = 0;
  v13 = 1864 * v2;
  std::__construct_at[abi:nn200100]<md::mun::CollectionPoint,md::mun::CollectionPoint const&,md::mun::CollectionPoint*>(1864 * v2, a2);
  v14 = (1864 * v2 + 1864);
  v6 = a1[1];
  v7 = 1864 * v2 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::CollectionPoint>,md::mun::CollectionPoint*>(*a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<md::mun::CollectionPoint>::~__split_buffer(&v12);
  return v11;
}

void sub_1B2E4E400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<md::mun::CollectionPoint>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void md::mun::MuninMetadataContainer::navigationGraphAccessor(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 296));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (*(a1 + 496))
  {
    v8 = *(a1 + 496);
    v6 = *(a2 + 24);
    if (!v6)
    {
      v7 = std::__throw_bad_function_call[abi:nn200100]();
      geo::read_write_lock::unlock((a1 + 296));
      _Unwind_Resume(v7);
    }

    (*(*v6 + 48))(v6, &v8);
  }

  geo::read_write_lock::unlock((a1 + 296));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::LabelBase *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelBase *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

uint64_t md::Label::collisionPriorityCmp(unint64_t a1, unint64_t a2)
{
  v2 = atomic_load((a1 + 1328));
  v3 = atomic_load((a2 + 1328));
  if ((v3 ^ v2))
  {
    LOBYTE(v4) = atomic_load((a1 + 1328));
    return v4 & 1;
  }

  v7 = 744;
  if (*(a1 + 1336))
  {
    v8 = 748;
  }

  else
  {
    v8 = 744;
  }

  v9 = *(a1 + v8);
  if (*(a2 + 1336))
  {
    v7 = 748;
  }

  v10 = *(a2 + v7);
  v11 = v9 < v10;
  if (v9 != v10)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 752);
  v13 = *(a2 + 752);
  v11 = v12 < v13;
  if (v12 != v13)
  {
    goto LABEL_14;
  }

  v14 = *(a1 + 764);
  v15 = *(a2 + 764);
  v11 = v14 < v15;
  if (v14 != v15)
  {
    goto LABEL_14;
  }

  v16 = *(a1 + 60);
  v17 = *(a2 + 60);
  v11 = v16 < v17;
  if (v16 != v17)
  {
    goto LABEL_14;
  }

  v4 = *(a1 + 1303);
  v18 = *(a2 + 1303);
  if (v4 != v18)
  {
    LOBYTE(v4) = v4 > v18;
    return v4 & 1;
  }

  v19 = *(a1 + 196);
  v20 = *(a2 + 196);
  v11 = v19 < v20;
  if (v19 != v20)
  {
LABEL_14:
    LOBYTE(v4) = v11;
    return v4 & 1;
  }

  v22 = (*(**(a1 + 8) + 480))(*(a1 + 8), 0);
  v23 = (*(**(a2 + 8) + 480))();
  LOBYTE(v4) = v22 != 0;
  if (!(v22 | v23))
  {
LABEL_42:
    LOBYTE(v4) = a1 < a2;
    return v4 & 1;
  }

  if (v22)
  {
    v24 = v23 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    v25 = *(v23 + 23);
    v26 = *(v22 + 23);
    if ((v26 & 0x8000000000000000) != 0)
    {
      v27 = v22;
      v22 = *v22;
      v26 = *(v27 + 8);
    }

    if (v25 >= 0)
    {
      v28 = *(v23 + 23);
    }

    else
    {
      v28 = *(v23 + 8);
    }

    if (v25 >= 0)
    {
      v29 = v23;
    }

    else
    {
      v29 = *v23;
    }

    if (v28 >= v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = v28;
    }

    v31 = memcmp(v22, v29, v30);
    if (v26 < v28)
    {
      v32 = -1;
    }

    else
    {
      v32 = v28 < v26;
    }

    if (v31)
    {
      v32 = v31;
    }

    if (v32)
    {
      v4 = v32 >> 31;
      return v4 & 1;
    }

    goto LABEL_42;
  }

  return v4 & 1;
}

uint64_t *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 844);
  v7 = *(*result + 844);
  if ((v6 == 2) != (v7 == 2))
  {
    if (v6 != 2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = v6 == 2;
    v9 = *a3;
    if ((v8 ^ (*(*a3 + 844) == 2)))
    {
      if (*(*a3 + 844) != 2)
      {
LABEL_9:
        *result = v4;
        *a2 = v5;
        v4 = *a3;
        if ((v7 == 2) != (*(*a3 + 844) == 2))
        {
          if (*(*a3 + 844) != 2)
          {
            goto LABEL_22;
          }
        }

        else if (*(v4 + 692) >= *(v5 + 692))
        {
          goto LABEL_22;
        }

        *a2 = v4;
        goto LABEL_20;
      }
    }

    else if (*(v9 + 692) >= *(v4 + 692))
    {
      goto LABEL_9;
    }

    *result = v9;
LABEL_20:
    *a3 = v5;
    goto LABEL_21;
  }

  if (*(v4 + 692) < *(v5 + 692))
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = *a3;
  if ((v6 == 2) != (*(*a3 + 844) == 2))
  {
    if (*(*a3 + 844) != 2)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (*(v5 + 692) >= *(v4 + 692))
  {
LABEL_21:
    v4 = v5;
    goto LABEL_22;
  }

LABEL_13:
  *a2 = v5;
  *a3 = v4;
  v10 = *a2;
  v11 = *result;
  v12 = *(*a2 + 844);
  if ((v12 == 2) != (*(*result + 844) == 2))
  {
    if (v12 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (*(v10 + 692) >= *(v11 + 692))
  {
    goto LABEL_22;
  }

  *result = v10;
  *a2 = v11;
  v4 = *a3;
LABEL_22:
  v13 = *a4;
  v14 = *(*a4 + 844);
  if ((v14 == 2) != (*(v4 + 844) == 2))
  {
    if (v14 != 2)
    {
      return result;
    }
  }

  else if (*(v13 + 692) >= *(v4 + 692))
  {
    return result;
  }

  *a3 = v13;
  *a4 = v4;
  v15 = *a3;
  v16 = *a2;
  v17 = *(*a3 + 844);
  if ((v17 == 2) != (*(*a2 + 844) == 2))
  {
    if (v17 != 2)
    {
      return result;
    }
  }

  else if (*(v15 + 692) >= *(v16 + 692))
  {
    return result;
  }

  *a2 = v15;
  *a3 = v16;
  v18 = *a2;
  v19 = *result;
  v20 = *(*a2 + 844);
  if ((v20 == 2) != (*(*result + 844) == 2))
  {
    if (v20 == 2)
    {
      goto LABEL_36;
    }
  }

  else if (*(v18 + 692) < *(v19 + 692))
  {
LABEL_36:
    *result = v18;
    *a2 = v19;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_18;
      }

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelSpacingDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(a1, a1 + 1, a1 + 2, a1 + 3);
      v8 = *(a2 - 1);
      v9 = a1[3];
      v10 = *(v8 + 844);
      if ((v10 == 2) != (*(v9 + 844) == 2))
      {
        if (v10 != 2)
        {
          return 1;
        }
      }

      else if (*(v8 + 692) >= *(v9 + 692))
      {
        return 1;
      }

      a1[3] = v8;
      *(a2 - 1) = v9;
      v36 = a1[2];
      v35 = a1[3];
      v37 = *(v35 + 844);
      if ((v37 == 2) != (*(v36 + 844) == 2))
      {
        if (v37 != 2)
        {
          return 1;
        }

        a1[2] = v35;
        a1[3] = v36;
        v38 = a1[1];
        if (*(v38 + 844) == 2)
        {
          v39 = *(v35 + 692);
LABEL_92:
          if (v39 >= *(v38 + 692))
          {
            return 1;
          }

          a1[1] = v35;
          a1[2] = v38;
          v43 = *a1;
          if ((v37 == 2) != (*(*a1 + 844) == 2))
          {
            if (v37 == 2)
            {
              goto LABEL_97;
            }

            return 1;
          }

          goto LABEL_96;
        }
      }

      else
      {
        v39 = *(v35 + 692);
        if (v39 >= *(v36 + 692))
        {
          return 1;
        }

        a1[2] = v35;
        a1[3] = v36;
        v38 = a1[1];
        if ((v37 == 2) == (*(v38 + 844) == 2))
        {
          goto LABEL_92;
        }

        if (v37 != 2)
        {
          return 1;
        }
      }

      a1[1] = v35;
      a1[2] = v38;
      v43 = *a1;
      if (*(*a1 + 844) != 2)
      {
        goto LABEL_97;
      }

      v39 = *(v35 + 692);
LABEL_96:
      if (v39 >= *(v43 + 692))
      {
        return 1;
      }

LABEL_97:
      *a1 = v35;
      a1[1] = v43;
      return 1;
    }

    v6 = *a1;
    v11 = a1[1];
    v12 = *(v11 + 844);
    v13 = *(*a1 + 844);
    if ((v12 == 2) != (v13 == 2))
    {
      if (v12 != 2)
      {
        goto LABEL_15;
      }
    }

    else if (*(v11 + 692) >= *(v6 + 692))
    {
LABEL_15:
      v14 = *(a2 - 1);
      v15 = *(v14 + 844);
      if ((v12 == 2) != (v15 == 2))
      {
        if (v15 != 2)
        {
          return 1;
        }
      }

      else if (*(v14 + 692) >= *(v11 + 692))
      {
        return 1;
      }

      a1[1] = v14;
      *(a2 - 1) = v11;
      v41 = *a1;
      v40 = a1[1];
      v42 = *(v40 + 844);
      if ((v42 == 2) != (*(*a1 + 844) == 2))
      {
        if (v42 != 2)
        {
          return 1;
        }
      }

      else if (*(v40 + 692) >= *(v41 + 692))
      {
        return 1;
      }

      *a1 = v40;
      a1[1] = v41;
      return 1;
    }

    v26 = v12 == 2;
    v27 = *(a2 - 1);
    if ((v26 ^ (*(v27 + 844) == 2)))
    {
      if (*(v27 + 844) != 2)
      {
LABEL_28:
        v28 = v13 == 2;
        *a1 = v11;
        a1[1] = v6;
        v29 = *(a2 - 1);
        v30 = *(v29 + 844);
        if ((v28 ^ (v30 == 2)))
        {
          if (v30 != 2)
          {
            return 1;
          }
        }

        else if (*(v29 + 692) >= *(v6 + 692))
        {
          return 1;
        }

        a1[1] = v29;
        goto LABEL_62;
      }
    }

    else if (*(v27 + 692) >= *(v11 + 692))
    {
      goto LABEL_28;
    }

    *a1 = v27;
    goto LABEL_62;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = *(v5 + 844);
    if ((v7 == 2) != (*(*a1 + 844) == 2))
    {
      if (v7 != 2)
      {
        return 1;
      }
    }

    else if (*(v5 + 692) >= *(v6 + 692))
    {
      return 1;
    }

    *a1 = v5;
LABEL_62:
    *(a2 - 1) = v6;
    return 1;
  }

LABEL_18:
  v16 = (a1 + 2);
  v17 = *a1;
  v18 = a1 + 1;
  v19 = a1[1];
  v20 = *(v19 + 844);
  v21 = *(*a1 + 844);
  if ((v20 == 2) == (v21 == 2))
  {
    if (*(v19 + 692) >= *(v17 + 692))
    {
      goto LABEL_20;
    }

LABEL_32:
    v31 = v20 == 2;
    v32 = *v16;
    v33 = *(*v16 + 844);
    if ((v31 ^ (v33 == 2)))
    {
      if (v33 != 2)
      {
        *a1 = v19;
        a1[1] = v17;
        if (v21 == 2)
        {
          goto LABEL_74;
        }

        v34 = *(v32 + 692);
        goto LABEL_70;
      }
    }

    else
    {
      v34 = *(v32 + 692);
      if (v34 >= *(v19 + 692))
      {
        *a1 = v19;
        a1[1] = v17;
        if ((v21 == 2) != (v33 == 2))
        {
          if (v33 != 2)
          {
            goto LABEL_74;
          }

          goto LABEL_71;
        }

LABEL_70:
        if (v34 >= *(v17 + 692))
        {
          goto LABEL_74;
        }

LABEL_71:
        *v18 = v32;
        goto LABEL_72;
      }
    }

    *a1 = v32;
LABEL_72:
    v18 = a1 + 2;
    goto LABEL_73;
  }

  if (v20 == 2)
  {
    goto LABEL_32;
  }

LABEL_20:
  v22 = v20 == 2;
  v23 = *v16;
  v24 = *(*v16 + 844);
  if ((v22 ^ (v24 == 2)))
  {
    if (v24 != 2)
    {
      goto LABEL_74;
    }

    *v18 = v23;
    *v16 = v19;
    if (v21 == 2)
    {
      v25 = *(v23 + 692);
      goto LABEL_65;
    }

    goto LABEL_66;
  }

  v25 = *(v23 + 692);
  if (v25 >= *(v19 + 692))
  {
    goto LABEL_74;
  }

  *v18 = v23;
  *v16 = v19;
  if ((v21 == 2) == (v24 == 2))
  {
LABEL_65:
    if (v25 >= *(v17 + 692))
    {
      goto LABEL_74;
    }

    goto LABEL_66;
  }

  if (v24 == 2)
  {
LABEL_66:
    *a1 = v23;
LABEL_73:
    *v18 = v17;
  }

LABEL_74:
  v44 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v45 = 0;
  v46 = 0;
  while (2)
  {
    v47 = *v44;
    v48 = *v16;
    v49 = *(*v44 + 844);
    if ((v49 == 2) != (*(*v16 + 844) == 2))
    {
      if (v49 != 2)
      {
        goto LABEL_89;
      }
    }

    else if (*(v47 + 692) >= *(v48 + 692))
    {
      goto LABEL_89;
    }

    *v44 = v48;
    v50 = v45;
    while (1)
    {
      v51 = *(a1 + v50 + 8);
      if ((v49 == 2) != (*(v51 + 844) == 2))
      {
        if (v49 != 2)
        {
          goto LABEL_88;
        }

        goto LABEL_85;
      }

      if (*(v47 + 692) >= *(v51 + 692))
      {
        break;
      }

LABEL_85:
      v16 -= 8;
      *(a1 + v50 + 16) = v51;
      v50 -= 8;
      if (v50 == -16)
      {
        v16 = a1;
        goto LABEL_88;
      }
    }

    v16 = a1 + v50 + 16;
LABEL_88:
    *v16 = v47;
    if (++v46 != 8)
    {
LABEL_89:
      v16 = v44;
      v45 += 8;
      if (++v44 == a2)
      {
        return 1;
      }

      continue;
    }

    return v44 + 1 == a2;
  }
}

void md::LabelSpacingDedupingGroup::~LabelSpacingDedupingGroup(md::LabelSpacingDedupingGroup *this)
{
  *this = &unk_1F2A06AC8;
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = off_1F2A55B58;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A06AC8;
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *this = off_1F2A55B58;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));
}

void sub_1B2E4F5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VKNotificationObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B2E4F8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v18 = v16;

  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

char *std::vector<geo::Color<unsigned char,4,(geo::ColorSpace)2>>::__assign_with_size[abi:nn200100]<geo::Color<unsigned char,4,(geo::ColorSpace)2>*,geo::Color<unsigned char,4,(geo::ColorSpace)2>*>(char **a1, int *a2, int *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned int>::__vallocate[abi:nn200100](a1, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 2)
  {
    while (v5 != a3)
    {
      for (i = 0; i != 4; ++i)
      {
        result[i] = *(v5 + i);
      }

      ++v5;
      result += 4;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        for (j = 0; j != 4; ++j)
        {
          result[j] = *(v5 + j);
        }

        ++v5;
        result += 4;
      }

      while (v5 != v12);
      v11 = a1[1];
    }

    v14 = v11;
    if (v12 != a3)
    {
      v14 = v11;
      do
      {
        v15 = *v12++;
        *v14 = v15;
        v14 += 4;
      }

      while (v12 != a3);
    }

    a1[1] = v14;
  }

  return result;
}

void std::__tree<std::__value_type<unsigned short,std::string>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,std::string>,std::less<unsigned short>,true>,geo::allocator_adapter<std::__value_type<unsigned short,std::string>,grl::zone_mallocator>>::__construct_node<std::pair<unsigned short const,std::string> const&>(grl::zone_mallocator *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16;
  v6 = grl::zone_mallocator::instance(a1);
  v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned short,std::string>,void *>>(v6);
  *a1 = v7;
  *(a1 + 1) = v5;
  *(a1 + 2) = 0;
  *(v7 + 16) = *a3;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 40), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v8 = *(a3 + 8);
    *(v7 + 7) = *(a3 + 24);
    *(v7 + 40) = v8;
  }

  *(a1 + 16) = 1;
}

void sub_1B2E50648(grl::zone_mallocator *a1)
{
  *v1 = 0;
  v4 = grl::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<unsigned short,std::string>,void *>>(v4, v2);
  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned short,std::string>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x40uLL, 0x10320406A6885EAuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void sub_1B2E50928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E50A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E50AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E50BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E50CB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E50D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t geo::_byteColor<float,4,(geo::ColorSpace)2>(_DWORD *a1, float32x4_t a2)
{
  v2 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(a2, vdupq_n_s32(0x437F0000u))));
  result = vuzp1_s8(v2, v2);
  *a1 = result.i32[0];
  return result;
}

void sub_1B2E51AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E51CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VKIconManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

float VKShieldColorsFromHexString(void *a1)
{
  v1 = [a1 copy];
  if ([(NSString *)v1 hasPrefix:@"#"])
  {
    v2 = [(NSString *)v1 substringFromIndex:1];

    v1 = v2;
  }

  if ([(NSString *)v1 length]== 8)
  {
    colorFromStringInRange(v1, 6, 2);
    v3 = [(NSString *)v1 substringWithRange:0, 6];

    v1 = v3;
  }

  v4 = 0.0;
  if ([(NSString *)v1 length]== 6)
  {
    v4 = colorFromStringInRange(v1, 0, 2);
    colorFromStringInRange(v1, 2, 2);
    colorFromStringInRange(v1, 4, 2);
  }

  return v4;
}

double colorFromStringInRange(NSString *a1, const _NSRange *a2, uint64_t a3)
{
  v8 = 0;
  v3 = MEMORY[0x1E696AE88];
  v4 = [(NSString *)a1 substringWithRange:a2, a3];
  v5 = [v3 scannerWithString:v4];

  [v5 scanHexInt:&v8];
  v6 = (v8 * 0.0039216);

  return v6;
}

__CFString *VKSizeGroupToString(uint64_t a1)
{
  if ((a1 - 1) > 8)
  {
    return @"ExtraExtraExtraSmall";
  }

  else
  {
    return *(&off_1E7B34AC8 + a1 - 1);
  }
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TrafficUtilities::enumerateTrafficRoadPiecesForTile(geo::codec::VectorTile &,zilch::TrafficSkeletonTile const&,std::shared_ptr<md::TrafficDynamicTileResource> const&,std::function<void ()(md::RoadPiece const&)> const&)::$_0 &,zilch::TrafficDynamicTile::Flow const**,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 8);
  v8 = *(*result + 8);
  v9 = *a3;
  v10 = *(*a3 + 8);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 8) < *(*result + 8))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 8) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 8) < *(v5 + 8))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 8) < *(*a2 + 8))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 8) < *(*result + 8))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 8) < *(*a4 + 8))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 8) < *(*a3 + 8))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 8) < *(*a2 + 8))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 8) < *(*result + 8))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TrafficUtilities::enumerateTrafficRoadPiecesForTile(geo::codec::VectorTile &,zilch::TrafficSkeletonTile const&,std::shared_ptr<md::TrafficDynamicTileResource> const&,std::function<void ()(md::RoadPiece const&)> const&)::$_0 &,zilch::TrafficDynamicTile::Flow const**>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 8);
      v8 = *(*a1 + 8);
      v9 = *(a2 - 1);
      v10 = *(v9 + 8);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 8) < *(*a1 + 8))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 8) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TrafficUtilities::enumerateTrafficRoadPiecesForTile(geo::codec::VectorTile &,zilch::TrafficSkeletonTile const&,std::shared_ptr<md::TrafficDynamicTileResource> const&,std::function<void ()(md::RoadPiece const&)> const&)::$_0 &,zilch::TrafficDynamicTile::Flow const**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 8);
    v26 = *(*a1 + 8);
    v27 = *(v23 + 8);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 8) < *(v21 + 8))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 8);
          if (v45 < *(v44 + 8))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 8))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 8) < *(*a1 + 8))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 8);
  v16 = *(*a1 + 8);
  v17 = *(v11 + 8);
  if (v15 < v16)
  {
    v18 = a1;
    v19 = a1 + 2;
    if (v17 >= v15)
    {
      *a1 = v13;
      a1[1] = v14;
      v18 = a1 + 1;
      v19 = a1 + 2;
      if (v17 >= v16)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v18 = v11;
    *v19 = v14;
    goto LABEL_27;
  }

  if (v17 < v15)
  {
    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
    if (v17 < v16)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 8);
    if (v38 < *(v37 + 8))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 8))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

uint64_t (***md::LabelClusterTree::labelMarkerForClusterNode@<X0>(uint64_t a1@<X0>, void *a2@<X8>))(void)
{
  result = *(a1 + 8);
  if (result)
  {
    return (**result)(result);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void md::LabelClusterTree::~LabelClusterTree(md::LabelClusterTree *this)
{
  *this = &unk_1F2A43720;
  v1 = this + 16;
  v2 = this + 48;
  std::vector<std::unique_ptr<md::ClusterTreeClusterNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeClusterNode>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::unique_ptr<md::ClusterTreeFeatureNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeFeatureNode>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A43720;
  v1 = this + 16;
  v2 = this + 48;
  std::vector<std::unique_ptr<md::ClusterTreeClusterNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeClusterNode>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::unique_ptr<md::ClusterTreeFeatureNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeFeatureNode>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void std::vector<std::unique_ptr<md::ClusterTreeClusterNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeClusterNode>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      v5 = a1;
      do
      {
        v6 = *--v3;
        a1 = v6;
        *v3 = 0;
        if (v6)
        {
          a1 = (*(*a1 + 8))(a1);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::ClusterTreeClusterNode>>(v7, v4);
  }
}

void std::vector<std::unique_ptr<md::ClusterTreeFeatureNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeFeatureNode>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      v5 = a1;
      do
      {
        v6 = *--v3;
        a1 = v6;
        *v3 = 0;
        if (v6)
        {
          a1 = (*(*a1 + 8))(a1);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::ClusterTreeFeatureNode>>(v7, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::ClusterTreeFeatureNode>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::ClusterTreeClusterNode>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

mdm::zone_mallocator *std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::reserve(mdm::zone_mallocator *result, unint64_t a2)
{
  if (a2 > (*(result + 2) - *result) >> 3)
  {
    if (a2 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v3 = result;
    v4 = *(result + 1) - *result;
    v13[4] = result + 24;
    v5 = mdm::zone_mallocator::instance(result);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::ClusterNode *>(v5, a2);
    v7 = &v6[v4];
    v8 = &v6[8 * a2];
    v9 = *(v3 + 1) - *v3;
    v10 = &v7[-v9];
    memcpy(&v7[-v9], *v3, v9);
    v11 = *v3;
    *v3 = v10;
    *(v3 + 1) = v7;
    v12 = *(v3 + 2);
    *(v3 + 2) = v8;
    v13[2] = v11;
    v13[3] = v12;
    v13[0] = v11;
    v13[1] = v11;
    return std::__split_buffer<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator> &>::~__split_buffer(v13);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::ClusterTreeFeatureNode>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::ClusterTreeFeatureNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeFeatureNode>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  while (v2 != v3)
  {
    v4 = *--v2;
    a1 = v4;
    *(v1 + 2) = v2;
    *v2 = 0;
    if (v4)
    {
      a1 = (*(*a1 + 8))(a1);
      v2 = *(v1 + 2);
    }
  }

  v5 = *v1;
  if (*v1)
  {
    v6 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::ClusterTreeFeatureNode>>(v6, v5);
  }

  return v1;
}

mdm::zone_mallocator *std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::ClusterNode *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

uint64_t std::__function::__value_func<md::ClusterNode * ()(std::pair<md::ClusterNode *,md::ClusterNode *> &,double)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::ClusterNode *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::ClusterNode *>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::unique_ptr<md::ClusterTreeClusterNode>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<std::unique_ptr<md::ClusterTreeClusterNode>,geo::allocator_adapter<std::unique_ptr<md::ClusterTreeClusterNode>,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v1 = a1;
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  while (v2 != v3)
  {
    v4 = *--v2;
    a1 = v4;
    *(v1 + 2) = v2;
    *v2 = 0;
    if (v4)
    {
      a1 = (*(*a1 + 8))(a1);
      v2 = *(v1 + 2);
    }
  }

  v5 = *v1;
  if (*v1)
  {
    v6 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<md::ClusterTreeClusterNode>>(v6, v5);
  }

  return v1;
}

void geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A567C0;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A567C0;

  return a1;
}

uint64_t md::ClusterTreeClusterNode::setupClusterNode(md::ClusterTreeClusterNode *this, char a2, float a3)
{
  *(this + 80) = 1;
  *(this + 180) = a2;
  if ((a2 & 1) == 0)
  {
    *(this + 3) = a3;
  }

  md::ClusterTreeClusterNode::updateDescendantNode(this, *(this + 18));
  v4 = *(this + 19);

  return md::ClusterTreeClusterNode::updateDescendantNode(this, v4);
}

uint64_t md::ClusterTreeClusterNode::updateDescendantNode(md::ClusterTreeClusterNode *this, md::ClusterTreeNode *a2)
{
  *(a2 + 2) = *(this + 3);
  *(a2 + 9) = this;
  if (*(a2 + 80) == 1)
  {
    if (((*(*a2 + 32))(a2) & 1) == 0)
    {
      *(this + 44) += *(a2 + 44);
      *(this + 181) |= *(a2 + 181);
    }
  }

  else if (!*(a2 + 80))
  {
    if ((*(*a2 + 32))(a2))
    {
      ++*(this + 44);
      if (*(this + 180))
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }

      *(a2 + 80) = v4;
    }

    else
    {
      *(a2 + 80) = 2;
      md::ClusterTreeClusterNode::updateDescendantNode(this, *(a2 + 18));
      md::ClusterTreeClusterNode::updateDescendantNode(this, *(a2 + 19));
    }
  }

  v5 = *(a2 + 21);
  if (v5 != -1)
  {
    v6 = *(this + 21);
    if (v6 == -1)
    {
      *(this + 21) = v5;
    }

    else
    {
      *(this + 181) |= v6 != v5;
    }
  }

  v7 = *(a2 + 22);
  if (v7 != -1 && *(this + 22) == -1)
  {
    *(this + 22) = v7;
  }

  result = (*(*a2 + 32))(a2);
  if (result)
  {
    v11 = *(this + 20);
    if (!v11 || *(v11 + 96) > *(a2 + 24))
    {
      *(this + 20) = a2;
    }
  }

  else
  {
    v9 = *(a2 + 20);
    v10 = *(this + 20);
    if (!v10 || v9 && *(v10 + 96) > *(v9 + 96))
    {
      *(this + 20) = v9;
    }
  }

  return result;
}

uint64_t md::ClusterTreeClusterNode::nodeTypeMask(md::ClusterTreeClusterNode *this)
{
  if (*(this + 80) == 2)
  {
    return 20;
  }

  if (*(this + 180))
  {
    return 12;
  }

  return 4;
}

uint64_t md::ClusterTreeClusterNode::populateNodes(void **a1, mdm::zone_mallocator *a2, uint64_t a3, uint64_t a4)
{
  v8 = ((*a1)[4])(a1);
  if ((v8 & a3) != 0 && (v8 & a4) == 0)
  {
    v12 = a1;
    std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v12);
  }

  (*(*a1[18] + 24))(a1[18], a2, a3, a4);
  v10 = *(*a1[19] + 24);

  return v10();
}

uint64_t md::ClusterTreeClusterNode::populateChildNodes(uint64_t a1)
{
  (*(**(a1 + 144) + 24))(*(a1 + 144));
  v2 = *(**(a1 + 152) + 24);

  return v2();
}

void md::ClusterTreeClusterNode::~ClusterTreeClusterNode(md::ClusterTreeClusterNode *this)
{
  *this = &unk_1F2A06BC0;
  *(this + 15) = &unk_1F2A567C0;

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A06BC0;
  *(this + 15) = &unk_1F2A567C0;
}

uint64_t std::__function::__func<md::LabelClusterTree::generateClusters(std::shared_ptr<md::LabelClusterTree> const&,NSArray *,md::LabelManager *)::$_0,std::allocator<md::LabelClusterTree::generateClusters(std::shared_ptr<md::LabelClusterTree> const&,NSArray *,md::LabelManager *)::$_0>,md::ClusterNode * ()(std::pair<md::ClusterNode *,md::ClusterNode *> &,double)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A06C30;
  a2[1] = v2;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::ClusterNode *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::ClusterNode *>(v5, v4);
  }

  return a1;
}

void *geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = &unk_1F2A567C0;
  a1[1] = v3;
  return a1;
}

uint64_t md::ClusterTreeFeatureNode::nodeTypeMask(md::ClusterTreeFeatureNode *this)
{
  if (*(this + 80) == 2)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

mdm::zone_mallocator *md::ClusterTreeFeatureNode::populateNodes(uint64_t a1, mdm::zone_mallocator *a2, int a3, int a4)
{
  result = (*(*a1 + 32))(a1);
  if ((result & a3) != 0 && (result & a4) == 0)
  {
    v10 = a1;
    return std::vector<md::ClusterNode *,geo::allocator_adapter<md::ClusterNode *,mdm::zone_mallocator>>::push_back[abi:nn200100](a2, &v10);
  }

  return result;
}

void md::ClusterTreeFeatureNode::~ClusterTreeFeatureNode(md::ClusterTreeFeatureNode *this)
{
  *this = &unk_1F2A06B50;
  *(this + 15) = &unk_1F2A567C0;

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A06B50;
  *(this + 15) = &unk_1F2A567C0;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,md::ClusterTreeClusterNode::populateClusterFeatureAnnotations(std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v75 = *v9;
        if (*(*v8 + 96) < *(*v9 + 96))
        {
          *v9 = *v8;
          *v8 = v75;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v82 = v9 + 1;
      v83 = v9[1];
      v84 = v9 + 2;
      v85 = v9[2];
      v86 = *v9;
      v87 = *(v83 + 24);
      v88 = *(*v9 + 96);
      v89 = *(v85 + 96);
      if (v87 >= v88)
      {
        if (v89 >= v87)
        {
          goto LABEL_175;
        }

        *v82 = v85;
        *v84 = v83;
        v90 = v9;
        v91 = (v9 + 1);
        result = v83;
        if (v89 < v88)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v90 = v9;
        v91 = (v9 + 2);
        result = *v9;
        if (v89 >= v87)
        {
          *v9 = v83;
          v9[1] = v86;
          v90 = v9 + 1;
          v91 = (v9 + 2);
          result = v86;
          if (v89 >= v88)
          {
LABEL_175:
            v83 = v85;
            goto LABEL_176;
          }
        }

LABEL_167:
        *v90 = v85;
        *v91 = v86;
        v83 = result;
      }

LABEL_176:
      if (*(*v8 + 96) < *(v83 + 24))
      {
        *v84 = *v8;
        *v8 = v83;
        v139 = *v84;
        v140 = *v82;
        v141 = *(v139 + 96);
        if (v141 < *(v140 + 96))
        {
          v9[1] = v139;
          v9[2] = v140;
          v142 = *v9;
          if (v141 < *(*v9 + 96))
          {
            *v9 = v139;
            v9[1] = v142;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::ClusterTreeClusterNode::populateClusterFeatureAnnotations(std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v92 = v9 + 1;
      v94 = v9 == a2 || v92 == a2;
      if (a4)
      {
        if (!v94)
        {
          v95 = 8;
          v96 = v9;
          do
          {
            v98 = *v96;
            v97 = v96[1];
            v96 = v92;
            v99 = *(v97 + 96);
            if (v99 < *(v98 + 96))
            {
              v100 = v95;
              while (1)
              {
                *(v9 + v100) = v98;
                v101 = v100 - 8;
                if (v100 == 8)
                {
                  break;
                }

                v98 = *(v9 + v100 - 16);
                v100 -= 8;
                if (v99 >= *(v98 + 96))
                {
                  v102 = (v9 + v101);
                  goto LABEL_128;
                }
              }

              v102 = v9;
LABEL_128:
              *v102 = v97;
            }

            v92 = v96 + 1;
            v95 += 8;
          }

          while (v96 + 1 != a2);
        }
      }

      else if (!v94)
      {
        do
        {
          v136 = *v7;
          v135 = v7[1];
          v7 = v92;
          v137 = *(v135 + 96);
          if (v137 < *(v136 + 96))
          {
            v138 = v7;
            do
            {
              *v138 = v136;
              v136 = *(v138 - 2);
              --v138;
            }

            while (v137 < *(v136 + 96));
            *v138 = v135;
          }

          v92 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v103 = (v10 - 2) >> 1;
        v104 = v103;
        do
        {
          v105 = v104;
          if (v103 >= v104)
          {
            v106 = (2 * v104) | 1;
            v107 = &v9[v106];
            v108 = *v107;
            if (2 * v105 + 2 < v10 && *(v108 + 96) < *(v107[1] + 96))
            {
              v108 = v107[1];
              ++v107;
              v106 = 2 * v105 + 2;
            }

            result = &v9[v105];
            v109 = *result;
            v110 = *(*result + 96);
            if (*(v108 + 96) >= v110)
            {
              do
              {
                v111 = v107;
                *result = v108;
                if (v103 < v106)
                {
                  break;
                }

                v112 = (2 * v106) | 1;
                v107 = &v9[v112];
                v113 = 2 * v106 + 2;
                v108 = *v107;
                if (v113 < v10 && *(v108 + 96) < *(v107[1] + 96))
                {
                  v108 = v107[1];
                  ++v107;
                  v112 = v113;
                }

                result = v111;
                v106 = v112;
              }

              while (*(v108 + 96) >= v110);
              *v111 = v109;
            }
          }

          v104 = v105 - 1;
        }

        while (v105);
        do
        {
          v114 = 0;
          v115 = *v9;
          v116 = v9;
          do
          {
            v117 = &v116[v114];
            v118 = v117 + 1;
            v119 = v117[1];
            v120 = (2 * v114) | 1;
            v114 = 2 * v114 + 2;
            if (v114 >= v10)
            {
              v114 = v120;
            }

            else
            {
              v123 = v117[2];
              v121 = v117 + 2;
              v122 = v123;
              result = *(v119 + 96);
              if (result >= *(v123 + 96))
              {
                v114 = v120;
              }

              else
              {
                v119 = v122;
                v118 = v121;
              }
            }

            *v116 = v119;
            v116 = v118;
          }

          while (v114 <= ((v10 - 2) >> 1));
          if (v118 == --a2)
          {
            *v118 = v115;
          }

          else
          {
            *v118 = *a2;
            *a2 = v115;
            v124 = (v118 - v9 + 8) >> 3;
            v125 = v124 < 2;
            v126 = v124 - 2;
            if (!v125)
            {
              v127 = v126 >> 1;
              v128 = &v9[v127];
              v129 = *v128;
              v130 = *v118;
              v131 = *(*v118 + 96);
              if (*(*v128 + 96) < v131)
              {
                do
                {
                  v132 = v128;
                  *v118 = v129;
                  if (!v127)
                  {
                    break;
                  }

                  v127 = (v127 - 1) >> 1;
                  v128 = &v9[v127];
                  v129 = *v128;
                  v118 = v132;
                }

                while (*(*v128 + 96) < v131);
                *v132 = v130;
              }
            }
          }

          v125 = v10-- <= 2;
        }

        while (!v125);
      }

      return result;
    }

    v11 = &v9[v10 >> 1];
    v12 = v11;
    v13 = *v8;
    v14 = *(*v8 + 96);
    if (v10 >= 0x81)
    {
      v15 = *v11;
      v16 = *v9;
      v17 = *(*v11 + 96);
      v18 = *(*v9 + 96);
      if (v17 >= v18)
      {
        if (v14 < v17)
        {
          *v11 = v13;
          *v8 = v15;
          v23 = *v9;
          if (*(*v11 + 96) < *(*v9 + 96))
          {
            *v9 = *v11;
            *v11 = v23;
          }
        }
      }

      else
      {
        if (v14 < v17)
        {
          *v9 = v13;
          goto LABEL_27;
        }

        *v9 = v15;
        *v11 = v16;
        if (*(*v8 + 96) < v18)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v16;
        }
      }

      v25 = v11 - 1;
      v26 = *(v11 - 1);
      v27 = v9[1];
      v28 = *(v26 + 96);
      v29 = *(v27 + 96);
      v30 = *(a2 - 2);
      v31 = *(v30 + 96);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v9[1];
          if (*(*v25 + 96) < *(v32 + 96))
          {
            v9[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v9[1] = v30;
          goto LABEL_39;
        }

        v9[1] = v26;
        *v25 = v27;
        v33 = *(a2 - 2);
        if (*(v33 + 96) < v29)
        {
          *v25 = v33;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v36 = v11[1];
      v34 = v11 + 1;
      v35 = v36;
      v37 = v9[2];
      v38 = *(v36 + 96);
      v39 = *(v37 + 96);
      v40 = *(a2 - 3);
      v41 = *(v40 + 96);
      if (v38 >= v39)
      {
        if (v41 < v38)
        {
          *v34 = v40;
          *(a2 - 3) = v35;
          v42 = v9[2];
          if (*(*v34 + 96) < *(v42 + 96))
          {
            v9[2] = *v34;
            *v34 = v42;
          }
        }
      }

      else
      {
        if (v41 < v38)
        {
          v9[2] = v40;
          goto LABEL_48;
        }

        v9[2] = v35;
        *v34 = v37;
        v43 = *(a2 - 3);
        if (*(v43 + 96) < v39)
        {
          *v34 = v43;
LABEL_48:
          *(a2 - 3) = v37;
        }
      }

      v44 = *v12;
      v45 = *v25;
      v46 = *(*v12 + 96);
      v47 = *(*v25 + 96);
      v48 = *v34;
      v49 = *(*v34 + 96);
      if (v46 >= v47)
      {
        if (v49 >= v46)
        {
          goto LABEL_56;
        }

        *v12 = v48;
        *v34 = v44;
        v34 = v12;
        v44 = v45;
        if (v49 >= v47)
        {
          v44 = v48;
          goto LABEL_56;
        }
      }

      else if (v49 >= v46)
      {
        *v25 = v44;
        *v12 = v45;
        v25 = v12;
        v44 = v48;
        if (v49 >= v47)
        {
          v44 = v45;
LABEL_56:
          v50 = *v9;
          *v9 = v44;
          *v12 = v50;
          goto LABEL_57;
        }
      }

      *v25 = v48;
      *v34 = v45;
      goto LABEL_56;
    }

    v19 = *v9;
    v20 = *v12;
    v21 = *(*v9 + 96);
    v22 = *(*v12 + 96);
    if (v21 >= v22)
    {
      if (v14 < v21)
      {
        *v9 = v13;
        *v8 = v19;
        v24 = *v12;
        if (*(*v9 + 96) < *(*v12 + 96))
        {
          *v12 = *v9;
          *v9 = v24;
        }
      }

      goto LABEL_57;
    }

    if (v14 < v21)
    {
      *v12 = v13;
LABEL_36:
      *v8 = v20;
      goto LABEL_57;
    }

    *v12 = v19;
    *v9 = v20;
    if (*(*v8 + 96) < v22)
    {
      *v9 = *v8;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v51 = *v9;
    if (a4)
    {
      v52 = *(v51 + 96);
LABEL_60:
      v53 = v9;
      do
      {
        v54 = v53;
        v56 = v53[1];
        ++v53;
        v55 = v56;
      }

      while (*(v56 + 96) < v52);
      v57 = a2;
      if (v54 == v9)
      {
        v57 = a2;
        do
        {
          if (v53 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 96) >= v52);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 96) >= v52);
      }

      if (v53 < v57)
      {
        v60 = *v57;
        v61 = v53;
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v54 = v61;
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 96) < v52);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 96) >= v52);
        }

        while (v61 < v62);
      }

      if (v54 != v9)
      {
        *v9 = *v54;
      }

      *v54 = v51;
      if (v53 < v57)
      {
        goto LABEL_79;
      }

      v65 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ClusterTreeClusterNode::populateClusterFeatureAnnotations(std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **>(v9, v54);
      v9 = v54 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ClusterTreeClusterNode::populateClusterFeatureAnnotations(std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **>(v54 + 1, a2);
      if (result)
      {
        a2 = v54;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,md::ClusterTreeClusterNode::populateClusterFeatureAnnotations(std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **,false>(v7, v54, a3, a4 & 1);
        a4 = 0;
        v9 = v54 + 1;
      }
    }

    else
    {
      v52 = *(v51 + 96);
      if (*(*(v9 - 1) + 96) < v52)
      {
        goto LABEL_60;
      }

      if (v52 >= *(*v8 + 96))
      {
        v67 = v9 + 1;
        do
        {
          v9 = v67;
          if (v67 >= a2)
          {
            break;
          }

          ++v67;
        }

        while (v52 >= *(*v9 + 96));
      }

      else
      {
        do
        {
          v66 = v9[1];
          ++v9;
        }

        while (v52 >= *(v66 + 96));
      }

      v68 = a2;
      if (v9 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v52 < *(v69 + 96));
      }

      if (v9 < v68)
      {
        v70 = *v9;
        v71 = *v68;
        do
        {
          *v9 = v71;
          *v68 = v70;
          do
          {
            v72 = v9[1];
            ++v9;
            v70 = v72;
          }

          while (v52 >= *(v72 + 96));
          do
          {
            v73 = *--v68;
            v71 = v73;
          }

          while (v52 < *(v73 + 96));
        }

        while (v9 < v68);
      }

      v74 = v9 - 1;
      if (v9 - 1 != v7)
      {
        *v7 = *v74;
      }

      a4 = 0;
      *v74 = v51;
    }
  }

  v76 = *v9;
  v77 = v9[1];
  v78 = *(v77 + 96);
  v79 = *(*v9 + 96);
  v80 = *v8;
  v81 = *(*v8 + 96);
  if (v78 >= v79)
  {
    if (v81 < v78)
    {
      v9[1] = v80;
      *v8 = v77;
      v134 = *v9;
      v133 = v9[1];
      if (*(v133 + 96) < *(*v9 + 96))
      {
        *v9 = v133;
        v9[1] = v134;
      }
    }
  }

  else
  {
    if (v81 >= v78)
    {
      *v9 = v77;
      v9[1] = v76;
      if (*(*v8 + 96) >= v79)
      {
        return result;
      }

      v9[1] = *v8;
    }

    else
    {
      *v9 = v80;
    }

    *v8 = v76;
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong}>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x80040B8603338uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 8;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong}>(v5, v4);
  }

  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong}>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::ClusterTreeClusterNode::populateClusterFeatureAnnotations(std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 96);
  v8 = *(*result + 96);
  v9 = *a3;
  v10 = *(*a3 + 96);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 96) < *(*result + 96))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 96) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 96) < *(v5 + 96))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 96) < *(*a2 + 96))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 96) < *(*result + 96))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 96) < *(*a4 + 96))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 96) < *(*a3 + 96))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 96) < *(*a2 + 96))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 96) < *(*result + 96))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ClusterTreeClusterNode::populateClusterFeatureAnnotations(std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 96);
      v8 = *(*a1 + 96);
      v9 = *(a2 - 1);
      v10 = *(v9 + 96);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 96) < *(*a1 + 96))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 96) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::ClusterTreeClusterNode::populateClusterFeatureAnnotations(std::vector<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::allocator_adapter<objc_object  {objcproto25VKCustomFeatureAnnotation}*,mdm::zone_mallocator>> &)::$_0 &,md::ClusterNode **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 96);
    v26 = *(*a1 + 96);
    v27 = *(v23 + 96);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 96) < *(v21 + 96))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 96);
          if (v45 < *(v44 + 96))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 96))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 96) < *(*a1 + 96))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 96);
  v16 = *(*a1 + 96);
  v17 = *(v11 + 96);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 96);
    if (v38 < *(v37 + 96))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 96))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

void ggl::PolygonStrokeMask::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

unint64_t md::FlyoverGroundTileResourceFetcher::downloadZoomRange(md::FlyoverGroundTileResourceFetcher *this)
{
  v1 = *(this + 94);
  if (*(this + 190))
  {
    if (v1 <= 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = *(this + 94);
    }

    if (*(this + 178) == 66)
    {
      LODWORD(v3) = v2;
    }

    else
    {
      LODWORD(v3) = *(this + 94);
    }
  }

  else
  {
    v3 = *(this + 94);
  }

  return v1 & 0xFFFFFFFF00000000 | v3;
}

void md::FlyoverGroundTileResourceFetcher::~FlyoverGroundTileResourceFetcher(md::FlyoverGroundTileResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

double md::LabelPoint::geocentricNormal(md::LabelPoint *this)
{
  v1 = md::LabelPoint::geocentricPoint(this);
  for (i = 0; i != 3; ++i)
  {
    *(&v4 + i * 8) = *&md::GeocentricNormal(geo::Geocentric<double> const&)::oneOverRadiiSquared[i] * *(v1 + i * 8);
  }

  return gm::Matrix<double,3,1>::normalized<int,void>(&v4);
}

void md::HillshadeTileData::~HillshadeTileData(md::HillshadeTileData *this)
{
  *this = &unk_1F2A06D88;
  *(this + 80) = &unk_1F2A06DC8;
  v2 = *(this + 94);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 92);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::MapTileData::~MapTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A06D88;
  *(this + 80) = &unk_1F2A06DC8;
  v2 = *(this + 94);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 92);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::MapTileData::~MapTileData(this);
}

void *md::HillshadeTileData::HillshadeTileData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t *a6)
{
  result = md::MapTileData::MapTileData(a1, a2, a3, a6, 0);
  *result = &unk_1F2A06D88;
  result[80] = &unk_1F2A06DC8;
  v9 = a5[1];
  result[91] = *a5;
  result[92] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a4[1];
  result[93] = *a4;
  result[94] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t md::SelectedPolygonLayerDataSource::deselectFeatureId(md::SelectedPolygonLayerDataSource *this)
{
  memset(v2, 0, sizeof(v2));
  v3 = 1065353216;
  md::SelectedPolygonLayerDataSource::setSelectedPolygons(this, v2);
  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2);
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t md::SelectedPolygonLayerDataSource::setSelectedFeatureId(md::SelectedPolygonLayerDataSource *this, unint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  std::unordered_set<unsigned long long>::unordered_set(v4, v5, 1);
  md::SelectedPolygonLayerDataSource::setSelectedPolygons(this, v4);
  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v4);
}

void sub_1B2E55120(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<unsigned long long>::unordered_set(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a1, *a2++);
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

void md::SelectedPolygonLayerDataSource::constructRequests(uint64_t a1, void **a2, void **a3)
{
  if (*(a1 + 840))
  {
    v7 = a2 == a3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v22 = v6;
    v23 = v5;
    v24 = v3;
    v25 = v4;
    v9 = a2;
    do
    {
      gdc::Tiled::tileFromLayerDataKey(v20, (*v9)[2]);
      v11 = *(a1 + 832);
      if (v11)
      {
        v12 = vrev64_s32(v21);
        v13 = v20[1];
        do
        {
          v14 = v11[2];
          v19[0] = v12;
          v19[2] = v14;
          v19[1] = v13;
          if (((*v9)[12] & 0x100000000) != 0)
          {
            v15 = (*v9)[12];
          }

          else
          {
            v15 = 2147483646;
          }

          gdc::ResourceKey::ResourceKey(v16, *(a1 + 592), v19, 24, (*v9)[14], v15);
          gdc::LayerDataRequest::request(*v9, v16, 0);
          if (v17 != v18)
          {
            free(v17);
          }

          v11 = *v11;
        }

        while (v11);
      }

      v9 += 2;
    }

    while (v9 != a3);
  }
}

void md::SelectedPolygonLayerDataSource::~SelectedPolygonLayerDataSource(md::SelectedPolygonLayerDataSource *this)
{
  *this = &unk_1F2A06DE0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 816);
  md::PolygonLayerDataSource::~PolygonLayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A06DE0;
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 816);

  md::PolygonLayerDataSource::~PolygonLayerDataSource(this);
}

void std::__tree<unsigned long long>::__assign_multi<std::__tree_const_iterator<unsigned long long,std::__tree_node<unsigned long long,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_30:
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v12);
    goto LABEL_31;
  }

  v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v14 = v13[4];
      v9[4] = v14;
      v15 = *v8;
      v16 = (a1 + 8);
      v17 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v16 = v15;
            if (v14 >= v15[4])
            {
              break;
            }

            v15 = *v15;
            v17 = v16;
            if (!*v16)
            {
              goto LABEL_16;
            }
          }

          v15 = v15[1];
        }

        while (v15);
        v17 = v16 + 1;
      }

LABEL_16:
      std::__tree<unsigned short>::__insert_node_at(a1, v16, v17, v9);
      if (v10)
      {
        v10 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v10);
      }

      else
      {
        v10 = 0;
      }

      v18 = v13[1];
      if (v18)
      {
        do
        {
          a2 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v19 = *a2 == v13;
          v13 = a2;
        }

        while (!v19);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_30;
  }

LABEL_31:
  if (a2 != a3)
  {
    operator new();
  }
}

uint64_t md::getRoadWidths(uint64_t a1, float *a2, float *a3, float *a4, _BYTE *a5, float a6)
{
  v12 = *(*a1 + 24);
  if (a6 >= 0x17)
  {
    v13 = 23;
  }

  else
  {
    v13 = a6;
  }

  v14 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v12, 105, v13, 0, 0);
  result = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(*(*a1 + 24), 105, v13, 1u, 0);
  *a5 = v14 & result;
  v16 = *(*a1 + 24);
  v17 = *v16;
  if (!*v16)
  {
    if (v14)
    {
LABEL_12:
      *a2 = 1.0;
      *a3 = 0.0;
      v23 = 0.0;
      goto LABEL_52;
    }

    v21 = 0;
    v22 = fminf(fmaxf(a6, 0.0), 23.0);
LABEL_19:
    v26 = *(v16 + v21 + 11);
    if (v26 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 94, v26, 0, v22);
      goto LABEL_21;
    }

    v24 = 0.0;
LABEL_57:
    v64 = 1;
    v44 = v24;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 94, 0, &v64, v22);
    v46 = v45;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 94, 1, &v63, v22);
    v27 = v46 + ((v47 - v46) * v44);
LABEL_21:
    *a2 = v27;
    if (v17)
    {
      v28 = *v17;
      v29 = *v17 == 1.0;
      if (*(v16 + 10) == 1 && v28 != 0.0 && v28 != 1.0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v29 = 0;
    }

    v31 = *(v16 + v29 + 11);
    if (v31 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 97, v31, 0, v22);
      goto LABEL_30;
    }

    v28 = 0.0;
LABEL_59:
    v64 = 1;
    v48 = v28;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 97, 0, &v64, v22);
    v50 = v49;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 97, 1, &v63, v22);
    v32 = v50 + ((v51 - v50) * v48);
LABEL_30:
    *a3 = v32;
    if (v17)
    {
      v33 = *v17;
      v34 = *v17 == 1.0;
      if (*(v16 + 10) == 1 && v33 != 0.0 && v33 != 1.0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v34 = 0;
    }

    v36 = *(v16 + v34 + 11);
    if (v36 != 2)
    {
      result = gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 404, v36, 0, v22);
LABEL_39:
      *a4 = v37;
      v38 = *a3;
      if (*a3 > 0.0)
      {
        v38 = *a2 + (v38 * 2.0);
        *a3 = v38;
        v37 = *a4;
      }

      if (v37 <= 0.0)
      {
        return result;
      }

      v23 = fmaxf(v38, *a2) + (v37 * 2.0);
LABEL_52:
      *a4 = v23;
      return result;
    }

    v33 = 0.0;
LABEL_61:
    v64 = 1;
    v52 = v33;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 404, 0, &v64, v22);
    v54 = v53;
    result = gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 404, 1, &v63, v22);
    v37 = v54 + ((v55 - v54) * v52);
    goto LABEL_39;
  }

  if (*(v16 + 9) != 1 || ((v14 ^ result) & 1) == 0)
  {
    if (v14)
    {
      goto LABEL_12;
    }

    v22 = fminf(fmaxf(a6, 0.0), 23.0);
    v24 = *v17;
    v21 = *v17 == 1.0;
    if (*(v16 + 10) == 1 && v24 != 0.0 && v24 != 1.0)
    {
      goto LABEL_57;
    }

    goto LABEL_19;
  }

  v18 = *v17;
  if (v14)
  {
    v19 = fminf(fmaxf(a6, 0.0), 23.0);
    v20 = *(v16 + 12);
  }

  else
  {
    if ((result & 1) == 0)
    {
      goto LABEL_48;
    }

    v18 = 1.0 - v18;
    v19 = fminf(fmaxf(a6, 0.0), 23.0);
    v20 = *(v16 + 11);
  }

  if (v20 == 2)
  {
    v64 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 94, 0, &v64, v19);
    v62 = v18;
    v57 = v56;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 94, 1, &v63, v19);
    *a2 = v57;
    v64 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 97, 0, &v64, v19);
    v59 = v58;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 97, 1, &v63, v19);
    *a3 = v59;
    v64 = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 404, 0, &v64, v19);
    v61 = v60;
    result = gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 404, 1, &v63, v19);
    v41 = v61;
    v18 = v62;
  }

  else
  {
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 94, v20, 0, v19);
    *a2 = v39;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 97, v20, 0, v19);
    *a3 = v40;
    result = gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v16, 404, v20, 0, v19);
  }

  *a4 = v41;
LABEL_48:
  v42 = ((fmaxf(*a2, 1.0) + -1.0) * v18) + 1.0;
  *a2 = v42;
  v43 = *a3;
  if (*a3 > 0.0)
  {
    v43 = v42 + ((fmaxf(v42 + (v43 * 2.0), 0.0) - v42) * v18);
    *a3 = v43;
  }

  if (*a4 > 0.0)
  {
    v23 = *a2 + ((fmaxf(fmaxf(v43, *a2) + (*a4 * 2.0), 0.0) - *a2) * v18);
    goto LABEL_52;
  }

  return result;
}

void md::Logic<md::SettingsLogic,md::SettingsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

uint64_t md::Logic<md::SettingsLogic,md::SettingsContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0xC97B9E962ADF4AD4 && *(a3 + 32))
  {
    *&v6[2] = v4;
    v7 = v5;
    return (*(*result + 160))(result, a2, v6);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::SettingsContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::SettingsContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::SettingsContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::SettingsContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A07018;
  v2 = a1[4];
  if (v2)
  {
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v2 + 32));
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x1B8C62190](v2, 0x1060C404B397072);
  }

  return a1;
}

void md::SettingsLogic::~SettingsLogic(md::SettingsLogic *this)
{
  md::SettingsLogic::~SettingsLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A06E90;
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(this + 1976);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(this + 1896);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(this + 1816);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(this + 1736);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 1656);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(this + 1576);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 1496);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 1416);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 1336);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(this + 1256);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(this + 1176);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(this + 1096);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 1016);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(this + 936);
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::~Monitorable(this + 856);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 776);
  md::Monitorable<md::ConfigValue<GEOConfigKeyInteger,int>>::~Monitorable(this + 696);
  md::Monitorable<md::ConfigValue<GEOConfigKeyInteger,int>>::~Monitorable(this + 616);
  md::Monitorable<md::ConfigValue<GEOConfigKeyInteger,int>>::~Monitorable(this + 536);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 456);
  md::Monitorable<md::ConfigValue<GEOConfigKeyInteger,int>>::~Monitorable(this + 376);
  md::Monitorable<md::ConfigValue<GEOConfigKeyInteger,int>>::~Monitorable(this + 296);
  md::Monitorable<md::ConfigValue<GEOConfigKeyInteger,int>>::~Monitorable(this + 216);
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::~Monitorable(this + 136);
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

uint64_t md::Monitorable<md::ConfigValue<GEOConfigKeyInteger,int>>::~Monitorable(uint64_t a1)
{
  if (*(a1 + 24))
  {
    GEOConfigRemoveBlockListener();
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  atomic_store(0, *(a1 + 32));
  std::__function::__value_func<void ()(int)>::~__value_func[abi:nn200100](a1 + 48);
  v3 = *(a1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void sub_1B2E55E64(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(int)>::~__value_func[abi:nn200100](v1 + 48);
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<md::SettingsLogic::SettingsLogic(md::MapEngineSettings *,md::DaVinciGroundSettings const*,NSObject  {objcproto17OS_dispatch_queue}*)::$_1,std::allocator<md::SettingsLogic::SettingsLogic(md::MapEngineSettings *,md::DaVinciGroundSettings const*,NSObject  {objcproto17OS_dispatch_queue}*)::$_1>,void ()(double)>::operator()(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 1592);
  v3 = +[VKDebugSettings sharedSettings];
  *&v2 = v1;
  [v3 setDaVinciNormalsSharpnessBias:v2];

  v4 = [MEMORY[0x1E69A2610] modernLoader];
  [v4 shrinkDiskCacheToSize:0 callbackQ:MEMORY[0x1E69E96A0] finished:&__block_literal_global_46];
}

void ___ZZN2md13SettingsLogicC1EPNS_17MapEngineSettingsEPKNS_21DaVinciGroundSettingsEPU28objcproto17OS_dispatch_queue8NSObjectENK3__1clEb_block_invoke()
{
  v0 = [MEMORY[0x1E69A2610] modernLoader];
  [v0 clearAllCaches];

  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:@"VKShouldFlushTileCachesNotification" object:0];
}

uint64_t std::__function::__func<md::SettingsLogic::SettingsLogic(md::MapEngineSettings *,md::DaVinciGroundSettings const*,NSObject  {objcproto17OS_dispatch_queue}*)::$_1,std::allocator<md::SettingsLogic::SettingsLogic(md::MapEngineSettings *,md::DaVinciGroundSettings const*,NSObject  {objcproto17OS_dispatch_queue}*)::$_1>,void ()(double)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A06FB0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::SettingsLogic::SettingsLogic(md::MapEngineSettings *,md::DaVinciGroundSettings const*,NSObject  {objcproto17OS_dispatch_queue}*)::$_0,std::allocator<md::SettingsLogic::SettingsLogic(md::MapEngineSettings *,md::DaVinciGroundSettings const*,NSObject  {objcproto17OS_dispatch_queue}*)::$_0>,void ()(BOOL)>::operator()(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 1512);
  v2 = +[VKDebugSettings sharedSettings];
  [v2 setDaVinciOverrideNormalsSharpness:v1];

  v3 = [MEMORY[0x1E69A2610] modernLoader];
  [v3 shrinkDiskCacheToSize:0 callbackQ:MEMORY[0x1E69E96A0] finished:&__block_literal_global_12068];
}

void ___ZZN2md13SettingsLogicC1EPNS_17MapEngineSettingsEPKNS_21DaVinciGroundSettingsEPU28objcproto17OS_dispatch_queue8NSObjectENK3__0clEb_block_invoke()
{
  v0 = [MEMORY[0x1E69A2610] modernLoader];
  [v0 clearAllCaches];

  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:@"VKShouldFlushTileCachesNotification" object:0];
}

void *___ZN2md11MonitorableINS_11ConfigValueI19GEOConfigKeyIntegeriEEE16setCallbackQueueEPU28objcproto17OS_dispatch_queue8NSObjectNSt3__18functionIFviEEE_block_invoke(void *result)
{
  v1 = result[5];
  if (v1)
  {
    v2 = result[4];
    if (*v1)
    {
      v3 = *(v2 + 16);
      if (*v2)
      {
        v4 = *(v2 + 8) == 0;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        *(v2 + 16) = GEOConfigGetInteger();
      }

      result = *(v2 + 72);
      if (result)
      {
        v5 = v3;
        return (*(*result + 48))(result, &v5);
      }
    }
  }

  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::_retain_ptr<VKRouteContext * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void sub_1B2E56764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  geo::read_write_lock::unlock((v12 + 32));

  _Unwind_Resume(a1);
}

unint64_t std::__unordered_map_hasher<std::pair<_GEOTileKey,void *>,std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,md::UniqueKeyHasher,std::equal_to<std::pair<_GEOTileKey,void *>>,true>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = GEOTileKeyHash();
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*(a1 + 16) & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*(a1 + 16)));
  return ((v2 << 6) + (v2 >> 2) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (HIDWORD(*(a1 + 16)) ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(*(a1 + 16)) ^ (v3 >> 47) ^ v3)) >> 47)) - 0x61C8864680B583EBLL) ^ v2;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::pair<_GEOTileKey,void *>,gdc::ResourceKey>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[6];
    if (v3 != __p[8])
    {
      free(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::__unordered_map_hasher<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::hash<md::DaVinciGroundSettings::Property>,std::equal_to<md::DaVinciGroundSettings::Property>,true>,std::__unordered_map_equal<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::equal_to<md::DaVinciGroundSettings::Property>,std::hash<md::DaVinciGroundSettings::Property>,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 8);
      if (v4 != -1)
      {
        (off_1F2A070A0[v4])(&v7, v2 + 3);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::__unordered_map_hasher<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::hash<md::DaVinciGroundSettings::Property>,std::equal_to<md::DaVinciGroundSettings::Property>,true>,std::__unordered_map_equal<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::equal_to<md::DaVinciGroundSettings::Property>,std::hash<md::DaVinciGroundSettings::Property>,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>>>::find<md::DaVinciGroundSettings::Property>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<md::DaVinciGroundSettings::_parsePropertyValue(NSString *,objc_object *)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<gms::PropertyStore<float>>,std::__variant_detail::_Trait<gms<gm::Matrix<float,3,1>>,gms::PropertyStore<float><gm::Matrix<float,3,1>>>> &>(void ***a1, uint64_t *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v10 = v4;
  v11 = BYTE4(v4);
  if ((v4 & 0x100000000) != 0)
  {
    v7 = *a2;
    buf[0] = 0;
    v8 = 0;
    (*(*v7 + 8))(v7, buf, &v8, &v9);
  }

  else
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v5 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v3[1];
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "DaVinciGroundSettings: Type mismatch for key: %@", buf, 0xCu);
    }
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:nn200100]<std::__variant_detail::__visitation::__variant::__value_visitor<md::DaVinciGroundSettings::_parsePropertyValue(NSString *,objc_object *)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::unique_ptr<gms::PropertyStore<float>>,std::__variant_detail::_Trait<gms<gm::Matrix<float,3,1>>,gms::PropertyStore<float><gm::Matrix<float,3,1>>>> &>(void ***a1, uint64_t *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v9 = PropertyValueFrom;
  v10 = BYTE4(PropertyValueFrom);
  if (HIDWORD(PropertyValueFrom))
  {
    v7 = *a2;
    buf[0] = 0;
    v8 = 0;
    (*(*v7 + 8))(v7, buf, &v8, &v9);
  }

  else
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v5 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v3[1];
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "DaVinciGroundSettings: Type mismatch for key: %@", buf, 0xCu);
    }
  }
}

void gms::ZoomableUncachedPropertyStore<gm::Matrix<float,3,1>>::~ZoomableUncachedPropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A07078;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<gm::Matrix<float,3,1> ()(float,gm::Matrix<float,3,1> const&,gm::Matrix<float,3,1> const&)>::~__value_func[abi:nn200100](a1 + 8);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::ZoomableUncachedPropertyStore<gm::Matrix<float,3,1>>::~ZoomableUncachedPropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A07078;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<gm::Matrix<float,3,1> ()(float,gm::Matrix<float,3,1> const&,gm::Matrix<float,3,1> const&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

void *gms::ZoomableUncachedPropertyStore<gm::Matrix<float,3,1>>::addProperty(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  *v5 = *a2 | (*a3 << 8);
  v6 = *a4;
  v7 = *(a4 + 2);
  return geo::range_map<unsigned char,gm::Matrix<float,3,1>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,gm::Matrix<float,3,1>>>>::insert((a1 + 40), v5);
}

unint64_t gms::ZoomableUncachedPropertyStore<gm::Matrix<float,3,1>>::getProperty(void *a1, float a2)
{
  v4 = vcvtms_s32_f32(a2);
  if (v4 >= 0x17)
  {
    v5 = 23;
  }

  else
  {
    v5 = v4;
  }

  v6 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(a1 + 5, v5);
  if (a1 + 6 == v6)
  {
    LOBYTE(v18) = 0;
    v20 = 0;
  }

  else
  {
    v8 = v6;
    v9 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(a1 + 5, v5 + 1);
    v10 = a1[4];
    if (!v10 || ((v11 = a2 - v5, v11 >= 0.0) ? (v12 = v11 <= 1.0) : (v12 = 0), v12 ? (v13 = a1 + 6 == v9) : (v13 = 1), v13))
    {
      v18 = v8[8];
      v7 = *(v8 + 9);
      v20 = LODWORD(v18) & 0xFFFFFF00;
    }

    else
    {
      v14 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(a1 + 5, v5);
      v24 = v14[4];
      v25 = *(v14 + 10);
      v15 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(a1 + 5, v5 + 1);
      v22 = v15[4];
      v16 = *(v15 + 10);
      v23 = *(v15 + 10);
      if (v24 == v22 && v25 == v16)
      {
        v18 = *&v24;
        v7 = HIDWORD(v24);
      }

      else
      {
        v26 = v11;
        v18 = (*(*v10 + 48))(v10, &v26, &v24, &v22);
        v7 = v19;
      }

      v20 = LODWORD(v18) & 0xFFFFFF00;
    }
  }

  return v20 | LOBYTE(v18) | (v7 << 32);
}

void gms::ZoomableUncachedPropertyStore<float>::~ZoomableUncachedPropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A07040;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<float ()(float,float const&,float const&)>::~__value_func[abi:nn200100](a1 + 8);

  JUMPOUT(0x1B8C62190);
}

uint64_t gms::ZoomableUncachedPropertyStore<float>::~ZoomableUncachedPropertyStore(uint64_t a1)
{
  *a1 = &unk_1F2A07040;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 48));
  std::__function::__value_func<float ()(float,float const&,float const&)>::~__value_func[abi:nn200100](a1 + 8);
  return a1;
}

void *gms::ZoomableUncachedPropertyStore<float>::addProperty(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int *a4)
{
  *v5 = *a2 | (*a3 << 8);
  v6 = *a4;
  return geo::range_map<unsigned char,float,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,float>>>::insert((a1 + 40), v5);
}

uint64_t gms::ZoomableUncachedPropertyStore<float>::getProperty(uint64_t *a1, float a2)
{
  v4 = vcvtms_s32_f32(a2);
  if (v4 >= 0x17)
  {
    v5 = 23;
  }

  else
  {
    v5 = v4;
  }

  v6 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(a1 + 5, v5);
  if (a1 + 6 == v6)
  {
    v15 = 0;
    v13 = 0.0;
  }

  else
  {
    v7 = v6;
    v8 = geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(a1 + 5, v5 + 1);
    v9 = a1[4];
    if (!v9 || ((v10 = a2 - v5, v10 >= 0.0) ? (v11 = v10 <= 1.0) : (v11 = 0), v11 ? (v12 = a1 + 6 == v8) : (v12 = 1), v12))
    {
      v13 = v7[8];
    }

    else
    {
      v13 = *(geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(a1 + 5, v5) + 8);
      v18 = v13;
      v17 = *(geo::range_map<unsigned char,geo::Color<float,4,(geo::ColorSpace)0>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Color<float,4,(geo::ColorSpace)0>>>>::find(a1 + 5, v5 + 1) + 8);
      if (v13 != v17)
      {
        std::function<float ()(float,float const&,float const&)>::operator()(v9, &v18, &v17, v10);
        v13 = v14;
      }
    }

    v15 = 0x100000000;
  }

  return v15 | LODWORD(v13);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,md::DaVinciGroundSettings::Property>,void *>>>::operator()[abi:nn200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t md::ElevatedOverlayLogic::debugConsoleString@<X0>(_BYTE *a1@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v6);
  if ((v13 & 0x10) != 0)
  {
    v3 = v12;
    if (v12 < v9)
    {
      v12 = v9;
      v3 = v9;
    }

    locale = v8[4].__locale_;
  }

  else
  {
    if ((v13 & 8) == 0)
    {
      v2 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    locale = v8[1].__locale_;
    v3 = v8[3].__locale_;
  }

  v2 = v3 - locale;
  if ((v3 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  a1[23] = v2;
  if (v2)
  {
    memmove(a1, locale, v2);
  }

LABEL_14:
  a1[v2] = 0;
  v6 = *MEMORY[0x1E69E54E8];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v7 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(__p);
  }

  v7 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v14);
}

void sub_1B2E57330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  a10 = *MEMORY[0x1E69E54E8];
  *(&a10 + *(a10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a11 = MEMORY[0x1E69E5548] + 16;
  if (a24 < 0)
  {
    operator delete(__p);
  }

  a11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a12);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a27);
  _Unwind_Resume(a1);
}

uint64_t md::Logic<md::ElevatedOverlayLogic,md::ElevatedOverlayContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1DCE255EA309B4ADLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8[0] = md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::SceneContext>(*(a2 + 8));
    v8[1] = v7;
    return (*(*v6 + 160))(v6, a2, v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ElevatedOverlayContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void *gdc::ManagedObjectHolder<md::ElevatedOverlayContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A07260;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::ElevatedOverlayLogic::~ElevatedOverlayLogic(md::ElevatedOverlayLogic *this)
{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void md::Logic<md::ElevatedOverlayLogic,md::ElevatedOverlayContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::SceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

double __copy_helper_block_ea8_40c40_ZTSN3gdc11CameraFrameIN3geo7RadiansEdEE104c43_ZTSKN3geo5ColorIhLi4ELNS_10ColorSpaceE0EEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  *(a1 + 104) = *(a2 + 104);
  return result;
}

void sub_1B2E57C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, std::__shared_weak_count *a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E58254(_Unwind_Exception *a1)
{
  if (*(v2 - 49) < 0)
  {
    operator delete(*(v2 - 72));
  }

  *(v2 - 72) = v1 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v2 - 72));
  *(v2 - 72) = v1 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v2 - 72));
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_1B2E59414(_Unwind_Exception *a1)
{
  v4 = 0;
  while (1)
  {
    if (*(v1 + v4 + 247) < 0)
    {
      operator delete(*(v1 + v4 + 224));
    }

    v4 -= 64;
    if (v4 == -256)
    {
      if (SLOBYTE(STACK[0x547]) < 0)
      {
        operator delete(STACK[0x530]);
      }

      STACK[0x498] = &STACK[0x420];
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&STACK[0x498]);
      STACK[0x498] = &STACK[0x408];
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&STACK[0x498]);
      if (SLOBYTE(STACK[0x407]) < 0)
      {
        operator delete(STACK[0x3F0]);
      }

      if (SLOBYTE(STACK[0x3EF]) < 0)
      {
        operator delete(STACK[0x3D8]);
      }

      STACK[0x3D8] = &STACK[0x480];
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&STACK[0x3D8]);
      STACK[0x3D8] = &STACK[0x468];
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&STACK[0x3D8]);
      if (SLOBYTE(STACK[0x467]) < 0)
      {
        operator delete(STACK[0x450]);
      }

      if (SLOBYTE(STACK[0x44F]) < 0)
      {
        operator delete(STACK[0x438]);
      }

      STACK[0x438] = v2 + 72;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&STACK[0x438]);
      STACK[0x438] = v2 + 48;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&STACK[0x438]);
      if (*(v2 + 47) < 0)
      {
        operator delete(*(v2 + 24));
      }

      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      _Unwind_Resume(a1);
    }
  }
}

void anonymous namespace::createSpringDebugNodeScalar<double,1,(gdc::SpringType)0>(uint64_t *a1, char *a2, double *a3)
{
  std::string::basic_string[abi:nn200100]<0>(&v14, a2);
  gdc::DebugTreeNode::DebugTreeNode(a1, &v14);
  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "Position");
  gdc::DebugTreeValue::DebugTreeValue(v11, *a3);
  gdc::DebugTreeNode::addProperty(a1, &v14, v11);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "Resting Position");
  gdc::DebugTreeValue::DebugTreeValue(v8, a3[2]);
  gdc::DebugTreeNode::addProperty(a1, &v14, v8);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  std::string::basic_string[abi:nn200100]<0>(&v14, "Velocity");
  gdc::DebugTreeValue::DebugTreeValue(v5, a3[1]);
  gdc::DebugTreeNode::addProperty(a1, &v14, v5);
  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }
}

void sub_1B2E598A0(_Unwind_Exception *a1)
{
  *(v2 - 56) = v1 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v2 - 56));
  *(v2 - 56) = v1 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v2 - 56));
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void anonymous namespace::addPropertyVector<double,2>(uint64_t *a1, char *a2, uint64_t a3)
{
  std::vector<gdc::DebugTreeValue>::vector[abi:nn200100](v16, 2uLL);
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    gdc::DebugTreeValue::DebugTreeValue(v12, *(a3 + 8 * v6));
    v9 = v16[0] + (v6 << 6);
    v10 = *v12;
    *(v9 + 9) = *&v12[9];
    *v9 = v10;
    if (*(v9 + 55) < 0)
    {
      operator delete(*(v9 + 32));
    }

    v11 = __p;
    *(v9 + 48) = v14;
    *(v9 + 32) = v11;
    HIBYTE(v14) = 0;
    LOBYTE(__p) = 0;
    *(v9 + 56) = v15;
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  std::string::basic_string[abi:nn200100]<0>(v12, a2);
  gdc::DebugTreeNode::addProperty(a1, v12, v16);
  if ((v12[23] & 0x80000000) != 0)
  {
    operator delete(*v12);
  }

  *v12 = v16;
  std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](v12);
}

void sub_1B2E599FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  a10 = &a18;
  std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](&a10);
  _Unwind_Resume(a1);
}

void *std::vector<gdc::DebugTreeValue>::vector[abi:nn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<gdc::DebugTreeValue>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}

void md::LabelDedupingGroup::~LabelDedupingGroup(md::LabelDedupingGroup *this)
{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A55B58;
  v1 = (this + 8);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 40));
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v1);
}

void geo::small_vector_base<md::Label *>::push_back(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = ((v4 - *a1) >> 3) + 1;
  if (a1[3] < v5)
  {
    geo::small_vector_base<md::Label *>::grow(a1, v5);
    v4 = a1[1];
  }

  *v4 = *a2;
  a1[1] += 8;
}

void std::__introsort<std::_ClassicAlgPolicy,md::NamedLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,false>(int8x16_t *a1, md::Label **a2, float32x2_t *a3, uint64_t a4, char a5)
{
  v7 = a3 + 1;
LABEL_2:
  v1635 = a2 - 1;
  v1638 = a2;
  v8 = a1;
  while (1)
  {
    v9 = v8;
    v10 = v1638;
    v11 = v1638 - v9;
    a1 = v9;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          v1026 = v9;
          v1027 = v9[1];
          v1028 = *v1026;
          v1029 = *(v1027 + 1297);
          v1030 = *(v1028 + 1297);
          if (v1029 == v1030)
          {
            v1031 = 0;
            v1032 = 0;
            do
            {
              v1033 = *(v1027 + v1032 + 172);
              if (v1033 < a3->f32[v1032])
              {
                v1036 = 0;
                goto LABEL_1242;
              }

              v1034 = v7->f32[v1032];
              v1032 = 1;
              v1035 = (v1033 < v1034) & ~v1031;
              v1031 = 1;
            }

            while ((v1035 & 1) != 0);
            v1036 = v1033 < v1034;
LABEL_1242:
            v1429 = 0;
            v1430 = 0;
            do
            {
              v1431 = *(v1028 + v1430 + 172);
              if (v1431 < a3->f32[v1430])
              {
                v1434 = 0;
                goto LABEL_1247;
              }

              v1432 = v7->f32[v1430];
              v1430 = 1;
              v1433 = (v1431 < v1432) & ~v1429;
              v1429 = 1;
            }

            while ((v1433 & 1) != 0);
            v1434 = v1431 < v1432;
LABEL_1247:
            if (*(v1027 + 844) == 2)
            {
              v1347 = v1036;
            }

            else
            {
              v1347 = 0;
            }

            if (*(v1028 + 844) == 2)
            {
              v1435 = v1434;
            }

            else
            {
              v1435 = 0;
            }

            if (((v1347 | v1435) & 1) == 0 || ((v1347 ^ v1435) & 1) == 0)
            {
              if (v1036 == v1434)
              {
                v1480.f32[0] = md::Label::boundsForStaging(v1027);
                v1482.i32[1] = v1481;
                v1480.i32[1] = v1483;
                v1484 = vmla_f32(vsub_f32(a3[2], v1480), 0xBF000000BF000000, vsub_f32(v1482, v1480));
                v1485 = vmul_f32(v1484, v1484);
                v1486.f32[0] = md::Label::boundsForStaging(v1028);
                v1488.i32[1] = v1487;
                v1486.i32[1] = v1489;
                v1490 = vmla_f32(vsub_f32(a3[2], v1486), 0xBF000000BF000000, vsub_f32(v1488, v1486));
                v1491 = vmul_f32(v1490, v1490);
                v1492 = vadd_f32(vzip2_s32(v1485, v1491), vzip1_s32(v1485, v1491));
                LOBYTE(v1347) = vcgt_f32(vdup_lane_s32(v1492, 1), v1492).u8[0];
                v1027 = a1->i64[1];
                v1029 = *(v1027 + 1297);
              }

              else
              {
                LOBYTE(v1347) = v1036;
              }
            }
          }

          else
          {
            LOBYTE(v1347) = v1029 < v1030;
          }

          v1493 = *v1635;
          v1494 = *(*v1635 + 1297);
          if (v1494 == v1029)
          {
            v1495 = 0;
            v1496 = 0;
            do
            {
              v1497 = *(v1493 + v1496 + 172);
              if (v1497 < a3->f32[v1496])
              {
                v1500 = 0;
                goto LABEL_1295;
              }

              v1498 = v7->f32[v1496];
              v1496 = 1;
              v1499 = (v1497 < v1498) & ~v1495;
              v1495 = 1;
            }

            while ((v1499 & 1) != 0);
            v1500 = v1497 < v1498;
LABEL_1295:
            v1501 = 0;
            v1502 = 0;
            do
            {
              v1503 = *(v1027 + v1502 + 172);
              if (v1503 < a3->f32[v1502])
              {
                v1506 = 0;
                goto LABEL_1300;
              }

              v1504 = v7->f32[v1502];
              v1502 = 1;
              v1505 = (v1503 < v1504) & ~v1501;
              v1501 = 1;
            }

            while ((v1505 & 1) != 0);
            v1506 = v1503 < v1504;
LABEL_1300:
            if (*(v1493 + 844) == 2)
            {
              v1494 = v1500;
            }

            else
            {
              v1494 = 0;
            }

            if (*(v1027 + 844) == 2)
            {
              v1507 = v1506;
            }

            else
            {
              v1507 = 0;
            }

            if (((v1494 | v1507) & 1) == 0 || ((v1494 ^ v1507) & 1) == 0)
            {
              LOBYTE(v1494) = v1500;
              if (v1500 == v1506)
              {
                v1508.f32[0] = md::Label::boundsForStaging(v1493);
                v1510.i32[1] = v1509;
                v1508.i32[1] = v1511;
                v1512 = vmla_f32(vsub_f32(a3[2], v1508), 0xBF000000BF000000, vsub_f32(v1510, v1508));
                v1513 = vmul_f32(v1512, v1512);
                v1514.f32[0] = md::Label::boundsForStaging(v1027);
                v1516.i32[1] = v1515;
                v1514.i32[1] = v1517;
                v1518 = vmla_f32(vsub_f32(a3[2], v1514), 0xBF000000BF000000, vsub_f32(v1516, v1514));
                v1519 = vmul_f32(v1518, v1518);
                v1520 = vadd_f32(vzip2_s32(v1513, v1519), vzip1_s32(v1513, v1519));
                LOBYTE(v1494) = vcgt_f32(vdup_lane_s32(v1520, 1), v1520).u8[0];
              }
            }
          }

          else
          {
            LOBYTE(v1494) = v1494 < v1029;
          }

          if ((v1347 & 1) == 0)
          {
            if ((v1494 & 1) == 0)
            {
              return;
            }

            v1521 = a1->i64[1];
            a1->i64[1] = *v1635;
            *v1635 = v1521;
            v1522 = a1->i64[0];
            v1449 = a1->i64[1];
            LODWORD(v1521) = *(v1449 + 1297);
            v1523 = *(a1->i64[0] + 1297);
            v1524 = v1521 >= v1523;
            if (v1521 != v1523)
            {
              goto LABEL_1381;
            }

            v1525 = 0;
            v1526 = 0;
            do
            {
              v1527 = *(v1449 + v1526 + 172);
              if (v1527 < a3->f32[v1526])
              {
                v1530 = 0;
                goto LABEL_1327;
              }

              v1528 = v7->f32[v1526];
              v1526 = 1;
              v1529 = (v1527 < v1528) & ~v1525;
              v1525 = 1;
            }

            while ((v1529 & 1) != 0);
            v1530 = v1527 < v1528;
LABEL_1327:
            v1540 = 0;
            v1541 = 0;
            do
            {
              v1542 = *(v1522 + v1541 + 172);
              if (v1542 < a3->f32[v1541])
              {
                goto LABEL_1389;
              }

              v1543 = v7->f32[v1541];
              v1541 = 1;
              v1544 = (v1542 < v1543) & ~v1540;
              v1540 = 1;
            }

            while ((v1544 & 1) != 0);
LABEL_1388:
            v1604 = v1542 < v1543;
LABEL_1390:
            if (*(v1449 + 844) == 2)
            {
              v1605 = v1530;
            }

            else
            {
              v1605 = 0;
            }

            if (*(v1522 + 844) == 2)
            {
              v1606 = v1604;
            }

            else
            {
              v1606 = 0;
            }

            if (((v1605 | v1606) & 1) != 0 && ((v1605 ^ v1606) & 1) != 0 || (v1605 = v1530, v1530 != v1604))
            {
              if (!v1605)
              {
                return;
              }
            }

            else
            {
              v1607.f32[0] = md::Label::boundsForStaging(v1449);
              v1609.i32[1] = v1608;
              v1607.i32[1] = v1610;
              v1611 = vmla_f32(vsub_f32(a3[2], v1607), 0xBF000000BF000000, vsub_f32(v1609, v1607));
              v1612 = vmul_f32(v1611, v1611);
              v1613.f32[0] = md::Label::boundsForStaging(v1522);
              v1615.i32[1] = v1614;
              v1613.i32[1] = v1616;
              v1617 = vmla_f32(vsub_f32(a3[2], v1613), 0xBF000000BF000000, vsub_f32(v1615, v1613));
              v1618 = vmul_f32(v1617, v1617);
              v1619 = vadd_f32(vzip2_s32(v1612, v1618), vzip1_s32(v1612, v1618));
              if ((vcgt_f32(vdup_lane_s32(v1619, 1), v1619).u32[0] & 1) == 0)
              {
                return;
              }
            }

LABEL_1402:
            *a1 = vextq_s8(*a1, *a1, 8uLL);
            return;
          }

          v1017 = a1->i64[0];
          if (v1494)
          {
            a1->i64[0] = *v1635;
            *v1635 = v1017;
            return;
          }

          a1->i64[0] = a1->i64[1];
          a1->i64[1] = v1017;
          v1531 = *v1635;
          v1532 = *(*v1635 + 1297);
          v1533 = *(v1017 + 1297);
          if (v1532 == v1533)
          {
            v1534 = 0;
            v1535 = 0;
            do
            {
              v1536 = *(v1531 + v1535 + 172);
              if (v1536 < a3->f32[v1535])
              {
                v1539 = 0;
                goto LABEL_1332;
              }

              v1537 = v7->f32[v1535];
              v1535 = 1;
              v1538 = (v1536 < v1537) & ~v1534;
              v1534 = 1;
            }

            while ((v1538 & 1) != 0);
            v1539 = v1536 < v1537;
LABEL_1332:
            v1545 = 0;
            v1546 = 0;
            do
            {
              v1547 = *(v1017 + v1546 + 172);
              if (v1547 < a3->f32[v1546])
              {
                v1550 = 0;
                goto LABEL_1337;
              }

              v1548 = v7->f32[v1546];
              v1546 = 1;
              v1549 = (v1547 < v1548) & ~v1545;
              v1545 = 1;
            }

            while ((v1549 & 1) != 0);
            v1550 = v1547 < v1548;
LABEL_1337:
            if (*(v1531 + 844) == 2)
            {
              v1551 = v1539;
            }

            else
            {
              v1551 = 0;
            }

            if (*(v1017 + 844) == 2)
            {
              v1552 = v1550;
            }

            else
            {
              v1552 = 0;
            }

            if (((v1551 | v1552) & 1) != 0 && ((v1551 ^ v1552) & 1) != 0 || (v1551 = v1539, v1539 != v1550))
            {
              if (!v1551)
              {
                return;
              }
            }

            else
            {
              v1620.f32[0] = md::Label::boundsForStaging(v1531);
              v1622.i32[1] = v1621;
              v1620.i32[1] = v1623;
              v1624 = vmla_f32(vsub_f32(a3[2], v1620), 0xBF000000BF000000, vsub_f32(v1622, v1620));
              v1625 = vmul_f32(v1624, v1624);
              v1626.f32[0] = md::Label::boundsForStaging(v1017);
              v1628.i32[1] = v1627;
              v1626.i32[1] = v1629;
              v1630 = vmla_f32(vsub_f32(a3[2], v1626), 0xBF000000BF000000, vsub_f32(v1628, v1626));
              v1631 = vmul_f32(v1630, v1630);
              v1632 = vadd_f32(vzip2_s32(v1625, v1631), vzip1_s32(v1625, v1631));
              if ((vcgt_f32(vdup_lane_s32(v1632, 1), v1632).u32[0] & 1) == 0)
              {
                return;
              }

              v1017 = a1->i64[1];
              v1531 = *v1635;
            }
          }

          else if (v1532 >= v1533)
          {
            return;
          }

          a1->i64[1] = v1531;
LABEL_1286:
          *v1635 = v1017;
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::NamedLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,0>(v9, v9 + 1, v9 + 2, v1635, a3);
          return;
        case 5:
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::NamedLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,0>(v9, v9 + 1, v9 + 2, v9 + 3, a3);
          v1006 = *v1635;
          v1007 = v9[3];
          v1008 = *(*v1635 + 1297);
          v1009 = *(v1007 + 1297);
          if (v1008 == v1009)
          {
            v1010 = 0;
            v1011 = 0;
            do
            {
              v1012 = *(v1006 + v1011 + 172);
              if (v1012 < a3->f32[v1011])
              {
                v1015 = 0;
                goto LABEL_1208;
              }

              v1013 = v7->f32[v1011];
              v1011 = 1;
              v1014 = (v1012 < v1013) & ~v1010;
              v1010 = 1;
            }

            while ((v1014 & 1) != 0);
            v1015 = v1012 < v1013;
LABEL_1208:
            v1413 = 0;
            v1414 = 0;
            do
            {
              v1415 = *(v1007 + v1414 + 172);
              if (v1415 < a3->f32[v1414])
              {
                v1418 = 0;
                goto LABEL_1213;
              }

              v1416 = v7->f32[v1414];
              v1414 = 1;
              v1417 = (v1415 < v1416) & ~v1413;
              v1413 = 1;
            }

            while ((v1417 & 1) != 0);
            v1418 = v1415 < v1416;
LABEL_1213:
            if (*(v1006 + 844) == 2)
            {
              v1419 = v1015;
            }

            else
            {
              v1419 = 0;
            }

            if (*(v1007 + 844) == 2)
            {
              v1420 = v1418;
            }

            else
            {
              v1420 = 0;
            }

            if (((v1419 | v1420) & 1) != 0 && ((v1419 ^ v1420) & 1) != 0 || (v1419 = v1015, v1015 != v1418))
            {
              if (!v1419)
              {
                return;
              }
            }

            else
            {
              v1436.f32[0] = md::Label::boundsForStaging(v1006);
              v1438.i32[1] = v1437;
              v1436.i32[1] = v1439;
              v1440 = vmla_f32(vsub_f32(a3[2], v1436), 0xBF000000BF000000, vsub_f32(v1438, v1436));
              v1441 = vmul_f32(v1440, v1440);
              v1442.f32[0] = md::Label::boundsForStaging(v1007);
              v1444.i32[1] = v1443;
              v1442.i32[1] = v1445;
              v1446 = vmla_f32(vsub_f32(a3[2], v1442), 0xBF000000BF000000, vsub_f32(v1444, v1442));
              v1447 = vmul_f32(v1446, v1446);
              v1448 = vadd_f32(vzip2_s32(v1441, v1447), vzip1_s32(v1441, v1447));
              if ((vcgt_f32(vdup_lane_s32(v1448, 1), v1448).u32[0] & 1) == 0)
              {
                return;
              }

              v1007 = a1[1].i64[1];
              v1006 = *v1635;
            }
          }

          else if (v1008 >= v1009)
          {
            return;
          }

          a1[1].i64[1] = v1006;
          *v1635 = v1007;
          v1450 = a1[1].i64[0];
          v1449 = a1[1].i64[1];
          v1451 = *(v1449 + 1297);
          v1452 = *(v1450 + 1297);
          if (v1451 == v1452)
          {
            v1453 = 0;
            v1454 = 0;
            do
            {
              v1455 = *(v1449 + v1454 + 172);
              if (v1455 < a3->f32[v1454])
              {
                v1458 = 0;
                goto LABEL_1267;
              }

              v1456 = v7->f32[v1454];
              v1454 = 1;
              v1457 = (v1455 < v1456) & ~v1453;
              v1453 = 1;
            }

            while ((v1457 & 1) != 0);
            v1458 = v1455 < v1456;
LABEL_1267:
            v1459 = 0;
            v1460 = 0;
            do
            {
              v1461 = *(v1450 + v1460 + 172);
              if (v1461 < a3->f32[v1460])
              {
                v1464 = 0;
                goto LABEL_1272;
              }

              v1462 = v7->f32[v1460];
              v1460 = 1;
              v1463 = (v1461 < v1462) & ~v1459;
              v1459 = 1;
            }

            while ((v1463 & 1) != 0);
            v1464 = v1461 < v1462;
LABEL_1272:
            if (*(v1449 + 844) == 2)
            {
              v1465 = v1458;
            }

            else
            {
              v1465 = 0;
            }

            if (*(v1450 + 844) == 2)
            {
              v1466 = v1464;
            }

            else
            {
              v1466 = 0;
            }

            if (((v1465 | v1466) & 1) != 0 && ((v1465 ^ v1466) & 1) != 0 || (v1465 = v1458, v1458 != v1464))
            {
              if (!v1465)
              {
                return;
              }
            }

            else
            {
              v1553.f32[0] = md::Label::boundsForStaging(v1449);
              v1555.i32[1] = v1554;
              v1553.i32[1] = v1556;
              v1557 = vmla_f32(vsub_f32(a3[2], v1553), 0xBF000000BF000000, vsub_f32(v1555, v1553));
              v1558 = vmul_f32(v1557, v1557);
              v1559.f32[0] = md::Label::boundsForStaging(v1450);
              v1561.i32[1] = v1560;
              v1559.i32[1] = v1562;
              v1563 = vmla_f32(vsub_f32(a3[2], v1559), 0xBF000000BF000000, vsub_f32(v1561, v1559));
              v1564 = vmul_f32(v1563, v1563);
              v1565 = vadd_f32(vzip2_s32(v1558, v1564), vzip1_s32(v1558, v1564));
              if ((vcgt_f32(vdup_lane_s32(v1565, 1), v1565).u32[0] & 1) == 0)
              {
                return;
              }

              v1450 = a1[1].i64[0];
              v1449 = a1[1].i64[1];
              v1451 = *(v1449 + 1297);
            }
          }

          else if (v1451 >= v1452)
          {
            return;
          }

          a1[1].i64[0] = v1449;
          a1[1].i64[1] = v1450;
          v1566 = a1->i64[1];
          v1567 = *(v1566 + 1297);
          if (v1451 == v1567)
          {
            v1568 = 0;
            v1569 = 0;
            do
            {
              v1570 = *(v1449 + v1569 + 172);
              if (v1570 < a3->f32[v1569])
              {
                v1573 = 0;
                goto LABEL_1358;
              }

              v1571 = v7->f32[v1569];
              v1569 = 1;
              v1572 = (v1570 < v1571) & ~v1568;
              v1568 = 1;
            }

            while ((v1572 & 1) != 0);
            v1573 = v1570 < v1571;
LABEL_1358:
            v1574 = 0;
            v1575 = 0;
            do
            {
              v1576 = *(v1566 + v1575 + 172);
              if (v1576 < a3->f32[v1575])
              {
                v1579 = 0;
                goto LABEL_1363;
              }

              v1577 = v7->f32[v1575];
              v1575 = 1;
              v1578 = (v1576 < v1577) & ~v1574;
              v1574 = 1;
            }

            while ((v1578 & 1) != 0);
            v1579 = v1576 < v1577;
LABEL_1363:
            if (*(v1449 + 844) == 2)
            {
              v1580 = v1573;
            }

            else
            {
              v1580 = 0;
            }

            if (*(v1566 + 844) == 2)
            {
              v1581 = v1579;
            }

            else
            {
              v1581 = 0;
            }

            if (((v1580 | v1581) & 1) != 0 && ((v1580 ^ v1581) & 1) != 0 || (v1580 = v1573, v1573 != v1579))
            {
              if (!v1580)
              {
                return;
              }
            }

            else
            {
              v1582.f32[0] = md::Label::boundsForStaging(v1449);
              v1584.i32[1] = v1583;
              v1582.i32[1] = v1585;
              v1586 = vmla_f32(vsub_f32(a3[2], v1582), 0xBF000000BF000000, vsub_f32(v1584, v1582));
              v1587 = vmul_f32(v1586, v1586);
              v1588.f32[0] = md::Label::boundsForStaging(v1566);
              v1590.i32[1] = v1589;
              v1588.i32[1] = v1591;
              v1592 = vmla_f32(vsub_f32(a3[2], v1588), 0xBF000000BF000000, vsub_f32(v1590, v1588));
              v1593 = vmul_f32(v1592, v1592);
              v1594 = vadd_f32(vzip2_s32(v1587, v1593), vzip1_s32(v1587, v1593));
              if ((vcgt_f32(vdup_lane_s32(v1594, 1), v1594).u32[0] & 1) == 0)
              {
                return;
              }

              v1566 = a1->i64[1];
              v1449 = a1[1].i64[0];
              v1451 = *(v1449 + 1297);
            }
          }

          else if (v1451 >= v1567)
          {
            return;
          }

          a1->i64[1] = v1449;
          a1[1].i64[0] = v1566;
          v1522 = a1->i64[0];
          v1595 = *(a1->i64[0] + 1297);
          v1524 = v1451 >= v1595;
          if (v1451 == v1595)
          {
            v1596 = 0;
            v1597 = 0;
            do
            {
              v1598 = *(v1449 + v1597 + 172);
              if (v1598 < a3->f32[v1597])
              {
                v1530 = 0;
                goto LABEL_1385;
              }

              v1599 = v7->f32[v1597];
              v1597 = 1;
              v1600 = (v1598 < v1599) & ~v1596;
              v1596 = 1;
            }

            while ((v1600 & 1) != 0);
            v1530 = v1598 < v1599;
LABEL_1385:
            v1601 = 0;
            v1602 = 0;
            while (1)
            {
              v1542 = *(v1522 + v1602 + 172);
              if (v1542 < a3->f32[v1602])
              {
                break;
              }

              v1543 = v7->f32[v1602];
              v1602 = 1;
              v1603 = (v1542 < v1543) & ~v1601;
              v1601 = 1;
              if ((v1603 & 1) == 0)
              {
                goto LABEL_1388;
              }
            }

LABEL_1389:
            v1604 = 0;
            goto LABEL_1390;
          }

LABEL_1381:
          if (v1524)
          {
            return;
          }

          goto LABEL_1402;
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
        v1016 = *v1635;
        v1017 = *v9;
        v1018 = *(*v1635 + 1297);
        v1019 = *(a1->i64[0] + 1297);
        if (v1018 == v1019)
        {
          v1020 = 0;
          v1021 = 0;
          while (1)
          {
            v1022 = *(v1016 + v1021 + 172);
            if (v1022 < a3->f32[v1021])
            {
              break;
            }

            v1023 = v7->f32[v1021];
            v1021 = 1;
            v1024 = (v1022 < v1023) & ~v1020;
            v1020 = 1;
            if ((v1024 & 1) == 0)
            {
              v1025 = v1022 < v1023;
              goto LABEL_1225;
            }
          }

          v1025 = 0;
LABEL_1225:
          v1421 = 0;
          v1422 = 0;
          while (1)
          {
            v1423 = *(v1017 + v1422 + 172);
            if (v1423 < a3->f32[v1422])
            {
              break;
            }

            v1424 = v7->f32[v1422];
            v1422 = 1;
            v1425 = (v1423 < v1424) & ~v1421;
            v1421 = 1;
            if ((v1425 & 1) == 0)
            {
              v1426 = v1423 < v1424;
              goto LABEL_1230;
            }
          }

          v1426 = 0;
LABEL_1230:
          if (*(v1016 + 844) == 2)
          {
            v1427 = v1025;
          }

          else
          {
            v1427 = 0;
          }

          if (*(v1017 + 844) == 2)
          {
            v1428 = v1426;
          }

          else
          {
            v1428 = 0;
          }

          if (((v1427 | v1428) & 1) != 0 && ((v1427 ^ v1428) & 1) != 0 || (v1427 = v1025, v1025 != v1426))
          {
            if (!v1427)
            {
              return;
            }
          }

          else
          {
            v1467.f32[0] = md::Label::boundsForStaging(v1016);
            v1469.i32[1] = v1468;
            v1467.i32[1] = v1470;
            v1471 = vmla_f32(vsub_f32(a3[2], v1467), 0xBF000000BF000000, vsub_f32(v1469, v1467));
            v1472 = vmul_f32(v1471, v1471);
            v1473.f32[0] = md::Label::boundsForStaging(v1017);
            v1475.i32[1] = v1474;
            v1473.i32[1] = v1476;
            v1477 = vmla_f32(vsub_f32(a3[2], v1473), 0xBF000000BF000000, vsub_f32(v1475, v1473));
            v1478 = vmul_f32(v1477, v1477);
            v1479 = vadd_f32(vzip2_s32(v1472, v1478), vzip1_s32(v1472, v1478));
            if ((vcgt_f32(vdup_lane_s32(v1479, 1), v1479).u32[0] & 1) == 0)
            {
              return;
            }

            v1017 = a1->i64[0];
            v1016 = *v1635;
          }
        }

        else if (v1018 >= v1019)
        {
          return;
        }

        a1->i64[0] = v1016;
        goto LABEL_1286;
      }
    }

    if (v11 <= 23)
    {
      v1037 = v9 + 1;
      v1039 = v9 == v1638 || v1037 == v1638;
      if ((a5 & 1) == 0)
      {
        if (v1039)
        {
          return;
        }

        while (1)
        {
          v1348 = a1;
          v1349 = v1037;
          v1351 = a1->i64[0];
          v1350 = a1->i64[1];
          v1352 = *(v1350 + 1297);
          v1353 = *(a1->i64[0] + 1297);
          a1 = v1349;
          if (v1352 == v1353)
          {
            v1354 = 0;
            v1355 = 0;
            do
            {
              v1356 = *(v1350 + v1355 + 172);
              if (v1356 < a3->f32[v1355])
              {
                v1359 = 0;
                goto LABEL_1161;
              }

              v1357 = v7->f32[v1355];
              v1355 = 1;
              v1358 = (v1356 < v1357) & ~v1354;
              v1354 = 1;
            }

            while ((v1358 & 1) != 0);
            v1359 = v1356 < v1357;
LABEL_1161:
            v1360 = 0;
            v1361 = 0;
            do
            {
              v1362 = *(v1351 + v1361 + 172);
              if (v1362 < a3->f32[v1361])
              {
                v1365 = 0;
                goto LABEL_1166;
              }

              v1363 = v7->f32[v1361];
              v1361 = 1;
              v1364 = (v1362 < v1363) & ~v1360;
              v1360 = 1;
            }

            while ((v1364 & 1) != 0);
            v1365 = v1362 < v1363;
LABEL_1166:
            if (*(v1350 + 844) == 2)
            {
              v1366 = v1359;
            }

            else
            {
              v1366 = 0;
            }

            if (*(v1351 + 844) == 2)
            {
              v1367 = v1365;
            }

            else
            {
              v1367 = 0;
            }

            if (((v1366 | v1367) & 1) != 0 && ((v1366 ^ v1367) & 1) != 0 || (v1366 = v1359, v1359 != v1365))
            {
              if (v1366)
              {
                goto LABEL_1179;
              }
            }

            else
            {
              v1368.f32[0] = md::Label::boundsForStaging(v1350);
              v1370.i32[1] = v1369;
              v1368.i32[1] = v1371;
              v1372 = vmla_f32(vsub_f32(a3[2], v1368), 0xBF000000BF000000, vsub_f32(v1370, v1368));
              v1373 = vmul_f32(v1372, v1372);
              v1374.f32[0] = md::Label::boundsForStaging(v1351);
              v1376.i32[1] = v1375;
              v1374.i32[1] = v1377;
              v1378 = vmla_f32(vsub_f32(a3[2], v1374), 0xBF000000BF000000, vsub_f32(v1376, v1374));
              v1379 = vmul_f32(v1378, v1378);
              v1380 = vadd_f32(vzip2_s32(v1373, v1379), vzip1_s32(v1373, v1379));
              if (vcgt_f32(vdup_lane_s32(v1380, 1), v1380).u32[0])
              {
                v1350 = v1349->i64[0];
                do
                {
                  while (1)
                  {
LABEL_1179:
                    while (1)
                    {
                      v1381 = v1349;
                      v1349 = v1348;
                      *v1381 = *v1348;
                      v1383 = *--v1348;
                      v1382 = v1383;
                      v1384 = *(v1350 + 1297);
                      v1385 = *(v1383 + 1297);
                      if (v1384 == v1385)
                      {
                        break;
                      }

                      if (v1384 >= v1385)
                      {
                        goto LABEL_1204;
                      }
                    }

                    v1386 = 0;
                    v1387 = 0;
                    do
                    {
                      v1388 = *(v1350 + v1387 + 172);
                      if (v1388 < a3->f32[v1387])
                      {
                        v1391 = 0;
                        goto LABEL_1187;
                      }

                      v1389 = v7->f32[v1387];
                      v1387 = 1;
                      v1390 = (v1388 < v1389) & ~v1386;
                      v1386 = 1;
                    }

                    while ((v1390 & 1) != 0);
                    v1391 = v1388 < v1389;
LABEL_1187:
                    v1392 = 0;
                    v1393 = 0;
                    while (1)
                    {
                      v1394 = *(v1382 + v1393 + 172);
                      if (v1394 < a3->f32[v1393])
                      {
                        break;
                      }

                      v1395 = v7->f32[v1393];
                      v1393 = 1;
                      v1396 = (v1394 < v1395) & ~v1392;
                      v1392 = 1;
                      if ((v1396 & 1) == 0)
                      {
                        v1397 = v1394 < v1395;
                        goto LABEL_1192;
                      }
                    }

                    v1397 = 0;
LABEL_1192:
                    v1398 = *(v1350 + 844) == 2 ? v1391 : 0;
                    v1399 = *(v1382 + 844) == 2 ? v1397 : 0;
                    if (((v1398 | v1399) & 1) == 0 || ((v1398 ^ v1399) & 1) == 0)
                    {
                      LOBYTE(v1398) = v1391;
                      if (v1391 == v1397)
                      {
                        break;
                      }
                    }

                    if ((v1398 & 1) == 0)
                    {
                      goto LABEL_1204;
                    }
                  }

                  v1400.f32[0] = md::Label::boundsForStaging(v1350);
                  v1402.i32[1] = v1401;
                  v1400.i32[1] = v1403;
                  v1404 = vmla_f32(vsub_f32(a3[2], v1400), 0xBF000000BF000000, vsub_f32(v1402, v1400));
                  v1405 = vmul_f32(v1404, v1404);
                  v1406.f32[0] = md::Label::boundsForStaging(v1382);
                  v1408.i32[1] = v1407;
                  v1406.i32[1] = v1409;
                  v1410 = vmla_f32(vsub_f32(a3[2], v1406), 0xBF000000BF000000, vsub_f32(v1408, v1406));
                  v1411 = vmul_f32(v1410, v1410);
                  v1412 = vadd_f32(vzip2_s32(v1405, v1411), vzip1_s32(v1405, v1411));
                }

                while ((vcgt_f32(vdup_lane_s32(v1412, 1), v1412).u32[0] & 1) != 0);
LABEL_1204:
                v1349->i64[0] = v1350;
                v1349 = a1;
              }
            }
          }

          else if (v1352 < v1353)
          {
            goto LABEL_1179;
          }

          v1037 = &v1349->i64[1];
          if (&v1349->u64[1] == v1638)
          {
            return;
          }
        }
      }

      if (v1039)
      {
        return;
      }

      v1040 = v9;
      while (2)
      {
        v1041 = v1040;
        v1040 = v1037;
        v1043 = *v1041;
        v1042 = v1041[1];
        v1044 = *(v1042 + 1297);
        v1045 = *(*v1041 + 1297);
        if (v1044 == v1045)
        {
          v1046 = 0;
          v1047 = 0;
          do
          {
            v1048 = *(v1042 + v1047 + 172);
            if (v1048 < a3->f32[v1047])
            {
              v1051 = 0;
              goto LABEL_898;
            }

            v1049 = v7->f32[v1047];
            v1047 = 1;
            v1050 = (v1048 < v1049) & ~v1046;
            v1046 = 1;
          }

          while ((v1050 & 1) != 0);
          v1051 = v1048 < v1049;
LABEL_898:
          v1052 = 0;
          v1053 = 0;
          while (1)
          {
            v1054 = *(v1043 + v1053 + 172);
            if (v1054 < a3->f32[v1053])
            {
              break;
            }

            v1055 = v7->f32[v1053];
            v1053 = 1;
            v1056 = (v1054 < v1055) & ~v1052;
            v1052 = 1;
            if ((v1056 & 1) == 0)
            {
              v1057 = v1054 < v1055;
              goto LABEL_903;
            }
          }

          v1057 = 0;
LABEL_903:
          if (*(v1042 + 844) == 2)
          {
            v1058 = v1051;
          }

          else
          {
            v1058 = 0;
          }

          if (*(v1043 + 844) == 2)
          {
            v1059 = v1057;
          }

          else
          {
            v1059 = 0;
          }

          if (((v1058 | v1059) & 1) != 0 && ((v1058 ^ v1059) & 1) != 0 || (v1058 = v1051, v1051 != v1057))
          {
            if (!v1058)
            {
LABEL_946:
              v1037 = v1040 + 1;
              if (v1040 + 1 == v1638)
              {
                return;
              }

              continue;
            }
          }

          else
          {
            v1060.f32[0] = md::Label::boundsForStaging(v1041[1]);
            v1062.i32[1] = v1061;
            v1060.i32[1] = v1063;
            v1064 = vmla_f32(vsub_f32(a3[2], v1060), 0xBF000000BF000000, vsub_f32(v1062, v1060));
            v1065 = vmul_f32(v1064, v1064);
            v1066.f32[0] = md::Label::boundsForStaging(v1043);
            v1068.i32[1] = v1067;
            v1066.i32[1] = v1069;
            v1070 = vmla_f32(vsub_f32(a3[2], v1066), 0xBF000000BF000000, vsub_f32(v1068, v1066));
            v1071 = vmul_f32(v1070, v1070);
            v1072 = vadd_f32(vzip2_s32(v1065, v1071), vzip1_s32(v1065, v1071));
            if ((vcgt_f32(vdup_lane_s32(v1072, 1), v1072).u32[0] & 1) == 0)
            {
              goto LABEL_946;
            }

            v1042 = *v1040;
          }
        }

        else if (v1044 >= v1045)
        {
          goto LABEL_946;
        }

        break;
      }

      v1073 = v1040;
      while (1)
      {
        *v1073 = *v1041;
        if (v1041 == v9)
        {
          break;
        }

        v1073 = v1041;
        v1075 = *--v1041;
        v1074 = v1075;
        v1076 = *(v1042 + 1297);
        v1077 = *(v1075 + 1297);
        if (v1076 == v1077)
        {
          v1078 = 0;
          v1079 = 0;
          do
          {
            v1080 = *(v1042 + v1079 + 172);
            if (v1080 < a3->f32[v1079])
            {
              v1083 = 0;
              goto LABEL_926;
            }

            v1081 = v7->f32[v1079];
            v1079 = 1;
            v1082 = (v1080 < v1081) & ~v1078;
            v1078 = 1;
          }

          while ((v1082 & 1) != 0);
          v1083 = v1080 < v1081;
LABEL_926:
          v1084 = 0;
          v1085 = 0;
          while (1)
          {
            v1086 = *(v1074 + v1085 + 172);
            if (v1086 < a3->f32[v1085])
            {
              break;
            }

            v1087 = v7->f32[v1085];
            v1085 = 1;
            v1088 = (v1086 < v1087) & ~v1084;
            v1084 = 1;
            if ((v1088 & 1) == 0)
            {
              v1089 = v1086 < v1087;
              goto LABEL_931;
            }
          }

          v1089 = 0;
LABEL_931:
          if (*(v1042 + 844) == 2)
          {
            v1090 = v1083;
          }

          else
          {
            v1090 = 0;
          }

          if (*(v1074 + 844) == 2)
          {
            v1091 = v1089;
          }

          else
          {
            v1091 = 0;
          }

          if (((v1090 | v1091) & 1) != 0 && ((v1090 ^ v1091) & 1) != 0 || (LOBYTE(v1090) = v1083, v1083 != v1089))
          {
            if ((v1090 & 1) == 0)
            {
              goto LABEL_945;
            }
          }

          else
          {
            v1092.f32[0] = md::Label::boundsForStaging(v1042);
            v1094.i32[1] = v1093;
            v1092.i32[1] = v1095;
            v1096 = vmla_f32(vsub_f32(a3[2], v1092), 0xBF000000BF000000, vsub_f32(v1094, v1092));
            v1097 = vmul_f32(v1096, v1096);
            v1098.f32[0] = md::Label::boundsForStaging(v1074);
            v1100.i32[1] = v1099;
            v1098.i32[1] = v1101;
            v1102 = vmla_f32(vsub_f32(a3[2], v1098), 0xBF000000BF000000, vsub_f32(v1100, v1098));
            v1103 = vmul_f32(v1102, v1102);
            v1104 = vadd_f32(vzip2_s32(v1097, v1103), vzip1_s32(v1097, v1103));
            if ((vcgt_f32(vdup_lane_s32(v1104, 1), v1104).u32[0] & 1) == 0)
            {
              goto LABEL_945;
            }
          }
        }

        else if (v1076 >= v1077)
        {
          goto LABEL_945;
        }
      }

      v1073 = v9;
LABEL_945:
      *v1073 = v1042;
      goto LABEL_946;
    }

    if (!a4)
    {
      break;
    }

    v12 = v11 >> 1;
    if (v11 >= 0x81)
    {
      v13 = v9[v12];
      v14 = *v9;
      v15 = *(v13 + 1297);
      v16 = *(*v9 + 1297);
      if (v15 == v16)
      {
        v17 = 0;
        v18 = 0;
        while (1)
        {
          v19 = *(v13 + v18 + 172);
          if (v19 < a3->f32[v18])
          {
            break;
          }

          v20 = v7->f32[v18];
          v18 = 1;
          v21 = (v19 < v20) & ~v17;
          v17 = 1;
          if ((v21 & 1) == 0)
          {
            v22 = v19 < v20;
            goto LABEL_26;
          }
        }

        v22 = 0;
LABEL_26:
        v35 = 0;
        v36 = 0;
        while (1)
        {
          v37 = *(v14 + v36 + 172);
          if (v37 < a3->f32[v36])
          {
            break;
          }

          v38 = v7->f32[v36];
          v36 = 1;
          v39 = (v37 < v38) & ~v35;
          v35 = 1;
          if ((v39 & 1) == 0)
          {
            v40 = v37 < v38;
            goto LABEL_36;
          }
        }

        v40 = 0;
LABEL_36:
        if (*(v13 + 844) == 2)
        {
          v33 = v22;
        }

        else
        {
          v33 = 0;
        }

        if (*(v14 + 844) == 2)
        {
          v47 = v40;
        }

        else
        {
          v47 = 0;
        }

        if (((v33 | v47) & 1) == 0 || ((v33 ^ v47) & 1) == 0)
        {
          if (v22 == v40)
          {
            v49.f32[0] = md::Label::boundsForStaging(v9[v12]);
            v51.i32[1] = v50;
            v49.i32[1] = v52;
            v53 = vmla_f32(vsub_f32(a3[2], v49), 0xBF000000BF000000, vsub_f32(v51, v49));
            v54 = vmul_f32(v53, v53);
            v55.f32[0] = md::Label::boundsForStaging(v14);
            v57.i32[1] = v56;
            v55.i32[1] = v58;
            v59 = vmla_f32(vsub_f32(a3[2], v55), 0xBF000000BF000000, vsub_f32(v57, v55));
            v60 = vmul_f32(v59, v59);
            v61 = vadd_f32(vzip2_s32(v54, v60), vzip1_s32(v54, v60));
            LOBYTE(v33) = vcgt_f32(vdup_lane_s32(v61, 1), v61).u8[0];
            v13 = v9[v12];
            v15 = *(v13 + 1297);
          }

          else
          {
            LOBYTE(v33) = v22;
          }
        }
      }

      else
      {
        LOBYTE(v33) = v15 < v16;
      }

      v62 = *v1635;
      v63 = *(*v1635 + 1297);
      if (v63 == v15)
      {
        v64 = 0;
        v65 = 0;
        while (1)
        {
          v66 = *(v62 + v65 + 172);
          if (v66 < a3->f32[v65])
          {
            break;
          }

          v67 = v7->f32[v65];
          v65 = 1;
          v68 = (v66 < v67) & ~v64;
          v64 = 1;
          if ((v68 & 1) == 0)
          {
            v69 = v66 < v67;
            goto LABEL_65;
          }
        }

        v69 = 0;
LABEL_65:
        v70 = 0;
        v71 = 0;
        while (1)
        {
          v72 = *(v13 + v71 + 172);
          if (v72 < a3->f32[v71])
          {
            break;
          }

          v73 = v7->f32[v71];
          v71 = 1;
          v74 = (v72 < v73) & ~v70;
          v70 = 1;
          if ((v74 & 1) == 0)
          {
            v75 = v72 < v73;
            goto LABEL_70;
          }
        }

        v75 = 0;
LABEL_70:
        if (*(v62 + 844) == 2)
        {
          v63 = v69;
        }

        else
        {
          v63 = 0;
        }

        if (*(v13 + 844) == 2)
        {
          v76 = v75;
        }

        else
        {
          v76 = 0;
        }

        if (((v63 | v76) & 1) == 0 || ((v63 ^ v76) & 1) == 0)
        {
          LOBYTE(v63) = v69;
          if (v69 == v75)
          {
            v77.f32[0] = md::Label::boundsForStaging(v62);
            v79.i32[1] = v78;
            v77.i32[1] = v80;
            v81 = vmla_f32(vsub_f32(a3[2], v77), 0xBF000000BF000000, vsub_f32(v79, v77));
            v82 = vmul_f32(v81, v81);
            v83.f32[0] = md::Label::boundsForStaging(v13);
            v85.i32[1] = v84;
            v83.i32[1] = v86;
            v87 = vmla_f32(vsub_f32(a3[2], v83), 0xBF000000BF000000, vsub_f32(v85, v83));
            v88 = vmul_f32(v87, v87);
            v89 = vadd_f32(vzip2_s32(v82, v88), vzip1_s32(v82, v88));
            LOBYTE(v63) = vcgt_f32(vdup_lane_s32(v89, 1), v89).u8[0];
          }
        }
      }

      else
      {
        LOBYTE(v63) = v63 < v15;
      }

      if ((v33 & 1) == 0)
      {
        if ((v63 & 1) == 0)
        {
          goto LABEL_213;
        }

        v91 = v9[v12];
        v9[v12] = *v1635;
        *v1635 = v91;
        v92 = v9[v12];
        v93 = *v9;
        v94 = *(v92 + 1297);
        v95 = *(*v9 + 1297);
        if (v94 == v95)
        {
          v96 = 0;
          v97 = 0;
          while (1)
          {
            v98 = *(v92 + v97 + 172);
            if (v98 < a3->f32[v97])
            {
              break;
            }

            v99 = v7->f32[v97];
            v97 = 1;
            v100 = (v98 < v99) & ~v96;
            v96 = 1;
            if ((v100 & 1) == 0)
            {
              v101 = v98 < v99;
              goto LABEL_140;
            }
          }

          v101 = 0;
LABEL_140:
          v174 = 0;
          v175 = 0;
          while (1)
          {
            v176 = *(v93 + v175 + 172);
            if (v176 < a3->f32[v175])
            {
              break;
            }

            v177 = v7->f32[v175];
            v175 = 1;
            v178 = (v176 < v177) & ~v174;
            v174 = 1;
            if ((v178 & 1) == 0)
            {
              v179 = v176 < v177;
              goto LABEL_160;
            }
          }

          v179 = 0;
LABEL_160:
          if (*(v92 + 844) == 2)
          {
            v198 = v101;
          }

          else
          {
            v198 = 0;
          }

          if (*(v93 + 844) == 2)
          {
            v199 = v179;
          }

          else
          {
            v199 = 0;
          }

          if (((v198 | v199) & 1) != 0 && ((v198 ^ v199) & 1) != 0 || (v198 = v101, v101 != v179))
          {
            if (!v198)
            {
              goto LABEL_213;
            }
          }

          else
          {
            v206.f32[0] = md::Label::boundsForStaging(v92);
            v208.i32[1] = v207;
            v206.i32[1] = v209;
            v210 = vmla_f32(vsub_f32(a3[2], v206), 0xBF000000BF000000, vsub_f32(v208, v206));
            v211 = vmul_f32(v210, v210);
            v212.f32[0] = md::Label::boundsForStaging(v93);
            v214.i32[1] = v213;
            v212.i32[1] = v215;
            v216 = vmla_f32(vsub_f32(a3[2], v212), 0xBF000000BF000000, vsub_f32(v214, v212));
            v217 = vmul_f32(v216, v216);
            v218 = vadd_f32(vzip2_s32(v211, v217), vzip1_s32(v211, v217));
            if ((vcgt_f32(vdup_lane_s32(v218, 1), v218).u32[0] & 1) == 0)
            {
              goto LABEL_213;
            }

            v93 = *v9;
            v92 = v9[v12];
          }
        }

        else if (v94 >= v95)
        {
          goto LABEL_213;
        }

        *v9 = v92;
        v9[v12] = v93;
        goto LABEL_213;
      }

      v90 = *v9;
      if (v63)
      {
        *v9 = *v1635;
        *v1635 = v90;
        goto LABEL_213;
      }

      *v9 = v9[v12];
      v9[v12] = v90;
      v102 = *v1635;
      v103 = *(*v1635 + 1297);
      v104 = *(v90 + 1297);
      if (v103 == v104)
      {
        v105 = 0;
        v106 = 0;
        while (1)
        {
          v107 = *(v102 + v106 + 172);
          if (v107 < a3->f32[v106])
          {
            break;
          }

          v108 = v7->f32[v106];
          v106 = 1;
          v109 = (v107 < v108) & ~v105;
          v105 = 1;
          if ((v109 & 1) == 0)
          {
            v110 = v107 < v108;
            goto LABEL_145;
          }
        }

        v110 = 0;
LABEL_145:
        v180 = 0;
        v181 = 0;
        while (1)
        {
          v182 = *(v90 + v181 + 172);
          if (v182 < a3->f32[v181])
          {
            break;
          }

          v183 = v7->f32[v181];
          v181 = 1;
          v184 = (v182 < v183) & ~v180;
          v180 = 1;
          if ((v184 & 1) == 0)
          {
            v185 = v182 < v183;
            goto LABEL_172;
          }
        }

        v185 = 0;
LABEL_172:
        if (*(v102 + 844) == 2)
        {
          v200 = v110;
        }

        else
        {
          v200 = 0;
        }

        if (*(v90 + 844) == 2)
        {
          v201 = v185;
        }

        else
        {
          v201 = 0;
        }

        if (((v200 | v201) & 1) != 0 && ((v200 ^ v201) & 1) != 0 || (v200 = v110, v110 != v185))
        {
          if (!v200)
          {
LABEL_213:
            v232 = v12 - 1;
            v233 = v9[v12 - 1];
            v234 = v9[1];
            v235 = *(v233 + 1297);
            v236 = *(v234 + 1297);
            if (v235 == v236)
            {
              v237 = 0;
              v238 = 0;
              while (1)
              {
                v239 = *(v233 + v238 + 172);
                if (v239 < a3->f32[v238])
                {
                  break;
                }

                v240 = v7->f32[v238];
                v238 = 1;
                v241 = (v239 < v240) & ~v237;
                v237 = 1;
                if ((v241 & 1) == 0)
                {
                  v242 = v239 < v240;
                  goto LABEL_220;
                }
              }

              v242 = 0;
LABEL_220:
              v244 = 0;
              v245 = 0;
              while (1)
              {
                v246 = *(v234 + v245 + 172);
                if (v246 < a3->f32[v245])
                {
                  break;
                }

                v247 = v7->f32[v245];
                v245 = 1;
                v248 = (v246 < v247) & ~v244;
                v244 = 1;
                if ((v248 & 1) == 0)
                {
                  v249 = v246 < v247;
                  goto LABEL_225;
                }
              }

              v249 = 0;
LABEL_225:
              if (*(v233 + 844) == 2)
              {
                v243 = v242;
              }

              else
              {
                v243 = 0;
              }

              if (*(v234 + 844) == 2)
              {
                v250 = v249;
              }

              else
              {
                v250 = 0;
              }

              if (((v243 | v250) & 1) == 0 || ((v243 ^ v250) & 1) == 0)
              {
                if (v242 == v249)
                {
                  v251.f32[0] = md::Label::boundsForStaging(v9[v12 - 1]);
                  v253.i32[1] = v252;
                  v251.i32[1] = v254;
                  v255 = vmla_f32(vsub_f32(a3[2], v251), 0xBF000000BF000000, vsub_f32(v253, v251));
                  v256 = vmul_f32(v255, v255);
                  v257.f32[0] = md::Label::boundsForStaging(v234);
                  v259.i32[1] = v258;
                  v257.i32[1] = v260;
                  v261 = vmla_f32(vsub_f32(a3[2], v257), 0xBF000000BF000000, vsub_f32(v259, v257));
                  v262 = vmul_f32(v261, v261);
                  v263 = vadd_f32(vzip2_s32(v256, v262), vzip1_s32(v256, v262));
                  LOBYTE(v243) = vcgt_f32(vdup_lane_s32(v263, 1), v263).u8[0];
                  v233 = v9[v232];
                  v235 = *(v233 + 1297);
                }

                else
                {
                  LOBYTE(v243) = v242;
                }
              }
            }

            else
            {
              LOBYTE(v243) = v235 < v236;
            }

            v264 = *(v1638 - 2);
            v265 = *(v264 + 1297);
            if (v265 == v235)
            {
              v266 = 0;
              v267 = 0;
              while (1)
              {
                v268 = *(v264 + v267 + 172);
                if (v268 < a3->f32[v267])
                {
                  break;
                }

                v269 = v7->f32[v267];
                v267 = 1;
                v270 = (v268 < v269) & ~v266;
                v266 = 1;
                if ((v270 & 1) == 0)
                {
                  v271 = v268 < v269;
                  goto LABEL_243;
                }
              }

              v271 = 0;
LABEL_243:
              v272 = 0;
              v273 = 0;
              while (1)
              {
                v274 = *(v233 + v273 + 172);
                if (v274 < a3->f32[v273])
                {
                  break;
                }

                v275 = v7->f32[v273];
                v273 = 1;
                v276 = (v274 < v275) & ~v272;
                v272 = 1;
                if ((v276 & 1) == 0)
                {
                  v277 = v274 < v275;
                  goto LABEL_248;
                }
              }

              v277 = 0;
LABEL_248:
              if (*(v264 + 844) == 2)
              {
                v265 = v271;
              }

              else
              {
                v265 = 0;
              }

              if (*(v233 + 844) == 2)
              {
                v278 = v277;
              }

              else
              {
                v278 = 0;
              }

              if (((v265 | v278) & 1) == 0 || ((v265 ^ v278) & 1) == 0)
              {
                LOBYTE(v265) = v271;
                if (v271 == v277)
                {
                  v279.f32[0] = md::Label::boundsForStaging(v264);
                  v281.i32[1] = v280;
                  v279.i32[1] = v282;
                  v283 = vmla_f32(vsub_f32(a3[2], v279), 0xBF000000BF000000, vsub_f32(v281, v279));
                  v284 = vmul_f32(v283, v283);
                  v285.f32[0] = md::Label::boundsForStaging(v233);
                  v287.i32[1] = v286;
                  v285.i32[1] = v288;
                  v289 = vmla_f32(vsub_f32(a3[2], v285), 0xBF000000BF000000, vsub_f32(v287, v285));
                  v290 = vmul_f32(v289, v289);
                  v291 = vadd_f32(vzip2_s32(v284, v290), vzip1_s32(v284, v290));
                  LOBYTE(v265) = vcgt_f32(vdup_lane_s32(v291, 1), v291).u8[0];
                }
              }
            }

            else
            {
              LOBYTE(v265) = v265 < v235;
            }

            if ((v243 & 1) == 0)
            {
              if ((v265 & 1) == 0)
              {
                goto LABEL_323;
              }

              v293 = v9[v232];
              v9[v232] = *(v1638 - 2);
              *(v1638 - 2) = v293;
              v294 = v9[v232];
              v295 = v9[1];
              v296 = *(v294 + 1297);
              v297 = *(v295 + 1297);
              if (v296 == v297)
              {
                v298 = 0;
                v299 = 0;
                while (1)
                {
                  v300 = *(v294 + v299 + 172);
                  if (v300 < a3->f32[v299])
                  {
                    break;
                  }

                  v301 = v7->f32[v299];
                  v299 = 1;
                  v302 = (v300 < v301) & ~v298;
                  v298 = 1;
                  if ((v302 & 1) == 0)
                  {
                    v303 = v300 < v301;
                    goto LABEL_277;
                  }
                }

                v303 = 0;
LABEL_277:
                v313 = 0;
                v314 = 0;
                while (1)
                {
                  v315 = *(v295 + v314 + 172);
                  if (v315 < a3->f32[v314])
                  {
                    break;
                  }

                  v316 = v7->f32[v314];
                  v314 = 1;
                  v317 = (v315 < v316) & ~v313;
                  v313 = 1;
                  if ((v317 & 1) == 0)
                  {
                    v318 = v315 < v316;
                    goto LABEL_287;
                  }
                }

                v318 = 0;
LABEL_287:
                if (*(v294 + 844) == 2)
                {
                  v325 = v303;
                }

                else
                {
                  v325 = 0;
                }

                if (*(v295 + 844) == 2)
                {
                  v326 = v318;
                }

                else
                {
                  v326 = 0;
                }

                if (((v325 | v326) & 1) != 0 && ((v325 ^ v326) & 1) != 0 || (v325 = v303, v303 != v318))
                {
                  if (!v325)
                  {
                    goto LABEL_323;
                  }
                }

                else
                {
                  v355.f32[0] = md::Label::boundsForStaging(v294);
                  v357.i32[1] = v356;
                  v355.i32[1] = v358;
                  v359 = vmla_f32(vsub_f32(a3[2], v355), 0xBF000000BF000000, vsub_f32(v357, v355));
                  v360 = vmul_f32(v359, v359);
                  v361.f32[0] = md::Label::boundsForStaging(v295);
                  v363.i32[1] = v362;
                  v361.i32[1] = v364;
                  v365 = vmla_f32(vsub_f32(a3[2], v361), 0xBF000000BF000000, vsub_f32(v363, v361));
                  v366 = vmul_f32(v365, v365);
                  v367 = vadd_f32(vzip2_s32(v360, v366), vzip1_s32(v360, v366));
                  if ((vcgt_f32(vdup_lane_s32(v367, 1), v367).u32[0] & 1) == 0)
                  {
                    goto LABEL_323;
                  }

                  v295 = v9[1];
                  v294 = v9[v232];
                }
              }

              else if (v296 >= v297)
              {
                goto LABEL_323;
              }

              v9[1] = v294;
              v9[v232] = v295;
              goto LABEL_323;
            }

            v292 = v9[1];
            if (v265)
            {
              v9[1] = *(v1638 - 2);
              goto LABEL_322;
            }

            v9[1] = v9[v232];
            v9[v232] = v292;
            v304 = *(v1638 - 2);
            v305 = *(v304 + 1297);
            v306 = *(v292 + 1297);
            if (v305 == v306)
            {
              v307 = 0;
              v308 = 0;
              while (1)
              {
                v309 = *(v304 + v308 + 172);
                if (v309 < a3->f32[v308])
                {
                  break;
                }

                v310 = v7->f32[v308];
                v308 = 1;
                v311 = (v309 < v310) & ~v307;
                v307 = 1;
                if ((v311 & 1) == 0)
                {
                  v312 = v309 < v310;
                  goto LABEL_282;
                }
              }

              v312 = 0;
LABEL_282:
              v319 = 0;
              v320 = 0;
              while (1)
              {
                v321 = *(v292 + v320 + 172);
                if (v321 < a3->f32[v320])
                {
                  break;
                }

                v322 = v7->f32[v320];
                v320 = 1;
                v323 = (v321 < v322) & ~v319;
                v319 = 1;
                if ((v323 & 1) == 0)
                {
                  v324 = v321 < v322;
                  goto LABEL_299;
                }
              }

              v324 = 0;
LABEL_299:
              if (*(v304 + 844) == 2)
              {
                v327 = v312;
              }

              else
              {
                v327 = 0;
              }

              if (*(v292 + 844) == 2)
              {
                v328 = v324;
              }

              else
              {
                v328 = 0;
              }

              if (((v327 | v328) & 1) != 0 && ((v327 ^ v328) & 1) != 0 || (v327 = v312, v312 != v324))
              {
                if (!v327)
                {
                  goto LABEL_323;
                }
              }

              else
              {
                v368.f32[0] = md::Label::boundsForStaging(v304);
                v370.i32[1] = v369;
                v368.i32[1] = v371;
                v372 = vmla_f32(vsub_f32(a3[2], v368), 0xBF000000BF000000, vsub_f32(v370, v368));
                v373 = vmul_f32(v372, v372);
                v374.f32[0] = md::Label::boundsForStaging(v292);
                v376.i32[1] = v375;
                v374.i32[1] = v377;
                v378 = vmla_f32(vsub_f32(a3[2], v374), 0xBF000000BF000000, vsub_f32(v376, v374));
                v379 = vmul_f32(v378, v378);
                v380 = vadd_f32(vzip2_s32(v373, v379), vzip1_s32(v373, v379));
                if ((vcgt_f32(vdup_lane_s32(v380, 1), v380).u32[0] & 1) == 0)
                {
                  goto LABEL_323;
                }

                v292 = v9[v232];
                v304 = *(v1638 - 2);
              }
            }

            else if (v305 >= v306)
            {
              goto LABEL_323;
            }

            v9[v232] = v304;
LABEL_322:
            *(v1638 - 2) = v292;
LABEL_323:
            v381 = v12 + 1;
            v382 = v9[v12 + 1];
            v383 = v9[2];
            v384 = *(v382 + 1297);
            v385 = *(v383 + 1297);
            if (v384 == v385)
            {
              v386 = 0;
              v387 = 0;
              while (1)
              {
                v388 = *(v382 + v387 + 172);
                if (v388 < a3->f32[v387])
                {
                  break;
                }

                v389 = v7->f32[v387];
                v387 = 1;
                v390 = (v388 < v389) & ~v386;
                v386 = 1;
                if ((v390 & 1) == 0)
                {
                  v391 = v388 < v389;
                  goto LABEL_330;
                }
              }

              v391 = 0;
LABEL_330:
              v393 = 0;
              v394 = 0;
              while (1)
              {
                v395 = *(v383 + v394 + 172);
                if (v395 < a3->f32[v394])
                {
                  break;
                }

                v396 = v7->f32[v394];
                v394 = 1;
                v397 = (v395 < v396) & ~v393;
                v393 = 1;
                if ((v397 & 1) == 0)
                {
                  v398 = v395 < v396;
                  goto LABEL_335;
                }
              }

              v398 = 0;
LABEL_335:
              if (*(v382 + 844) == 2)
              {
                v392 = v391;
              }

              else
              {
                v392 = 0;
              }

              if (*(v383 + 844) == 2)
              {
                v399 = v398;
              }

              else
              {
                v399 = 0;
              }

              if (((v392 | v399) & 1) == 0 || ((v392 ^ v399) & 1) == 0)
              {
                if (v391 == v398)
                {
                  v400.f32[0] = md::Label::boundsForStaging(v9[v12 + 1]);
                  v402.i32[1] = v401;
                  v400.i32[1] = v403;
                  v404 = vmla_f32(vsub_f32(a3[2], v400), 0xBF000000BF000000, vsub_f32(v402, v400));
                  v405 = vmul_f32(v404, v404);
                  v406.f32[0] = md::Label::boundsForStaging(v383);
                  v408.i32[1] = v407;
                  v406.i32[1] = v409;
                  v410 = vmla_f32(vsub_f32(a3[2], v406), 0xBF000000BF000000, vsub_f32(v408, v406));
                  v411 = vmul_f32(v410, v410);
                  v412 = vadd_f32(vzip2_s32(v405, v411), vzip1_s32(v405, v411));
                  LOBYTE(v392) = vcgt_f32(vdup_lane_s32(v412, 1), v412).u8[0];
                  v382 = v9[v381];
                  v384 = *(v382 + 1297);
                }

                else
                {
                  LOBYTE(v392) = v391;
                }
              }
            }

            else
            {
              LOBYTE(v392) = v384 < v385;
            }

            v413 = *(v1638 - 3);
            v414 = *(v413 + 1297);
            if (v414 == v384)
            {
              v415 = 0;
              v416 = 0;
              while (1)
              {
                v417 = *(v413 + v416 + 172);
                if (v417 < a3->f32[v416])
                {
                  break;
                }

                v418 = v7->f32[v416];
                v416 = 1;
                v419 = (v417 < v418) & ~v415;
                v415 = 1;
                if ((v419 & 1) == 0)
                {
                  v420 = v417 < v418;
                  goto LABEL_353;
                }
              }

              v420 = 0;
LABEL_353:
              v421 = 0;
              v422 = 0;
              while (1)
              {
                v423 = *(v382 + v422 + 172);
                if (v423 < a3->f32[v422])
                {
                  break;
                }

                v424 = v7->f32[v422];
                v422 = 1;
                v425 = (v423 < v424) & ~v421;
                v421 = 1;
                if ((v425 & 1) == 0)
                {
                  v426 = v423 < v424;
                  goto LABEL_358;
                }
              }

              v426 = 0;
LABEL_358:
              if (*(v413 + 844) == 2)
              {
                v414 = v420;
              }

              else
              {
                v414 = 0;
              }

              if (*(v382 + 844) == 2)
              {
                v427 = v426;
              }

              else
              {
                v427 = 0;
              }

              if (((v414 | v427) & 1) == 0 || ((v414 ^ v427) & 1) == 0)
              {
                LOBYTE(v414) = v420;
                if (v420 == v426)
                {
                  v428.f32[0] = md::Label::boundsForStaging(v413);
                  v430.i32[1] = v429;
                  v428.i32[1] = v431;
                  v432 = vmla_f32(vsub_f32(a3[2], v428), 0xBF000000BF000000, vsub_f32(v430, v428));
                  v433 = vmul_f32(v432, v432);
                  v434.f32[0] = md::Label::boundsForStaging(v382);
                  v436.i32[1] = v435;
                  v434.i32[1] = v437;
                  v438 = vmla_f32(vsub_f32(a3[2], v434), 0xBF000000BF000000, vsub_f32(v436, v434));
                  v439 = vmul_f32(v438, v438);
                  v440 = vadd_f32(vzip2_s32(v433, v439), vzip1_s32(v433, v439));
                  LOBYTE(v414) = vcgt_f32(vdup_lane_s32(v440, 1), v440).u8[0];
                }
              }
            }

            else
            {
              LOBYTE(v414) = v414 < v384;
            }

            if ((v392 & 1) == 0)
            {
              if ((v414 & 1) == 0)
              {
                goto LABEL_427;
              }

              v442 = v9[v381];
              v9[v381] = *(v1638 - 3);
              *(v1638 - 3) = v442;
              v443 = v9[v381];
              v444 = v9[2];
              v445 = *(v443 + 1297);
              v446 = *(v444 + 1297);
              if (v445 == v446)
              {
                v447 = 0;
                v448 = 0;
                while (1)
                {
                  v449 = *(v443 + v448 + 172);
                  if (v449 < a3->f32[v448])
                  {
                    break;
                  }

                  v450 = v7->f32[v448];
                  v448 = 1;
                  v451 = (v449 < v450) & ~v447;
                  v447 = 1;
                  if ((v451 & 1) == 0)
                  {
                    v452 = v449 < v450;
                    goto LABEL_387;
                  }
                }

                v452 = 0;
LABEL_387:
                v462 = 0;
                v463 = 0;
                while (1)
                {
                  v464 = *(v444 + v463 + 172);
                  if (v464 < a3->f32[v463])
                  {
                    break;
                  }

                  v465 = v7->f32[v463];
                  v463 = 1;
                  v466 = (v464 < v465) & ~v462;
                  v462 = 1;
                  if ((v466 & 1) == 0)
                  {
                    v467 = v464 < v465;
                    goto LABEL_397;
                  }
                }

                v467 = 0;
LABEL_397:
                if (*(v443 + 844) == 2)
                {
                  v474 = v452;
                }

                else
                {
                  v474 = 0;
                }

                if (*(v444 + 844) == 2)
                {
                  v475 = v467;
                }

                else
                {
                  v475 = 0;
                }

                if (((v474 | v475) & 1) != 0 && ((v474 ^ v475) & 1) != 0 || (v474 = v452, v452 != v467))
                {
                  if (!v474)
                  {
                    goto LABEL_427;
                  }
                }

                else
                {
                  v478.f32[0] = md::Label::boundsForStaging(v443);
                  v480.i32[1] = v479;
                  v478.i32[1] = v481;
                  v482 = vmla_f32(vsub_f32(a3[2], v478), 0xBF000000BF000000, vsub_f32(v480, v478));
                  v483 = vmul_f32(v482, v482);
                  v484.f32[0] = md::Label::boundsForStaging(v444);
                  v486.i32[1] = v485;
                  v484.i32[1] = v487;
                  v488 = vmla_f32(vsub_f32(a3[2], v484), 0xBF000000BF000000, vsub_f32(v486, v484));
                  v489 = vmul_f32(v488, v488);
                  v490 = vadd_f32(vzip2_s32(v483, v489), vzip1_s32(v483, v489));
                  if ((vcgt_f32(vdup_lane_s32(v490, 1), v490).u32[0] & 1) == 0)
                  {
                    goto LABEL_427;
                  }

                  v444 = v9[2];
                  v443 = v9[v381];
                }
              }

              else if (v445 >= v446)
              {
                goto LABEL_427;
              }

              v9[2] = v443;
              v9[v381] = v444;
              goto LABEL_427;
            }

            v441 = v9[2];
            if (v414)
            {
              v9[2] = *(v1638 - 3);
              goto LABEL_426;
            }

            v9[2] = v9[v381];
            v9[v381] = v441;
            v453 = *(v1638 - 3);
            v454 = *(v453 + 1297);
            v455 = *(v441 + 1297);
            if (v454 == v455)
            {
              v456 = 0;
              v457 = 0;
              while (1)
              {
                v458 = *(v453 + v457 + 172);
                if (v458 < a3->f32[v457])
                {
                  break;
                }

                v459 = v7->f32[v457];
                v457 = 1;
                v460 = (v458 < v459) & ~v456;
                v456 = 1;
                if ((v460 & 1) == 0)
                {
                  v461 = v458 < v459;
                  goto LABEL_392;
                }
              }

              v461 = 0;
LABEL_392:
              v468 = 0;
              v469 = 0;
              while (1)
              {
                v470 = *(v441 + v469 + 172);
                if (v470 < a3->f32[v469])
                {
                  break;
                }

                v471 = v7->f32[v469];
                v469 = 1;
                v472 = (v470 < v471) & ~v468;
                v468 = 1;
                if ((v472 & 1) == 0)
                {
                  v473 = v470 < v471;
                  goto LABEL_409;
                }
              }

              v473 = 0;
LABEL_409:
              if (*(v453 + 844) == 2)
              {
                v476 = v461;
              }

              else
              {
                v476 = 0;
              }

              if (*(v441 + 844) == 2)
              {
                v477 = v473;
              }

              else
              {
                v477 = 0;
              }

              if (((v476 | v477) & 1) != 0 && ((v476 ^ v477) & 1) != 0 || (v476 = v461, v461 != v473))
              {
                if (!v476)
                {
                  goto LABEL_427;
                }
              }

              else
              {
                v491.f32[0] = md::Label::boundsForStaging(v453);
                v493.i32[1] = v492;
                v491.i32[1] = v494;
                v495 = vmla_f32(vsub_f32(a3[2], v491), 0xBF000000BF000000, vsub_f32(v493, v491));
                v496 = vmul_f32(v495, v495);
                v497.f32[0] = md::Label::boundsForStaging(v441);
                v499.i32[1] = v498;
                v497.i32[1] = v500;
                v501 = vmla_f32(vsub_f32(a3[2], v497), 0xBF000000BF000000, vsub_f32(v499, v497));
                v502 = vmul_f32(v501, v501);
                v503 = vadd_f32(vzip2_s32(v496, v502), vzip1_s32(v496, v502));
                if ((vcgt_f32(vdup_lane_s32(v503, 1), v503).u32[0] & 1) == 0)
                {
                  goto LABEL_427;
                }

                v441 = v9[v381];
                v453 = *(v1638 - 3);
              }
            }

            else if (v454 >= v455)
            {
              goto LABEL_427;
            }

            v9[v381] = v453;
LABEL_426:
            *(v1638 - 3) = v441;
LABEL_427:
            v504 = v9[v12];
            v505 = v9[v232];
            v506 = *(v504 + 1297);
            v507 = *(v505 + 1297);
            if (v506 == v507)
            {
              v508 = 0;
              v509 = 0;
              while (1)
              {
                v510 = *(v504 + v509 + 172);
                if (v510 < a3->f32[v509])
                {
                  break;
                }

                v511 = v7->f32[v509];
                v509 = 1;
                v512 = (v510 < v511) & ~v508;
                v508 = 1;
                if ((v512 & 1) == 0)
                {
                  v513 = v510 < v511;
                  goto LABEL_434;
                }
              }

              v513 = 0;
LABEL_434:
              v515 = 0;
              v516 = 0;
              while (1)
              {
                v517 = *(v505 + v516 + 172);
                if (v517 < a3->f32[v516])
                {
                  break;
                }

                v518 = v7->f32[v516];
                v516 = 1;
                v519 = (v517 < v518) & ~v515;
                v515 = 1;
                if ((v519 & 1) == 0)
                {
                  v520 = v517 < v518;
                  goto LABEL_439;
                }
              }

              v520 = 0;
LABEL_439:
              if (*(v504 + 844) == 2)
              {
                v514 = v513;
              }

              else
              {
                v514 = 0;
              }

              if (*(v505 + 844) == 2)
              {
                v521 = v520;
              }

              else
              {
                v521 = 0;
              }

              if (((v514 | v521) & 1) == 0 || ((v514 ^ v521) & 1) == 0)
              {
                if (v513 == v520)
                {
                  v522.f32[0] = md::Label::boundsForStaging(v9[v12]);
                  v524.i32[1] = v523;
                  v522.i32[1] = v525;
                  v526 = vmla_f32(vsub_f32(a3[2], v522), 0xBF000000BF000000, vsub_f32(v524, v522));
                  v527 = vmul_f32(v526, v526);
                  v528.f32[0] = md::Label::boundsForStaging(v505);
                  v530.i32[1] = v529;
                  v528.i32[1] = v531;
                  v532 = vmla_f32(vsub_f32(a3[2], v528), 0xBF000000BF000000, vsub_f32(v530, v528));
                  v533 = vmul_f32(v532, v532);
                  v534 = vadd_f32(vzip2_s32(v527, v533), vzip1_s32(v527, v533));
                  LOBYTE(v514) = vcgt_f32(vdup_lane_s32(v534, 1), v534).u8[0];
                  v504 = v9[v12];
                  v506 = *(v504 + 1297);
                }

                else
                {
                  LOBYTE(v514) = v513;
                }
              }
            }

            else
            {
              LOBYTE(v514) = v506 < v507;
            }

            v535 = v9[v381];
            v536 = *(v535 + 1297);
            if (v536 == v506)
            {
              v537 = 0;
              v538 = 0;
              while (1)
              {
                v539 = *(v535 + v538 + 172);
                if (v539 < a3->f32[v538])
                {
                  break;
                }

                v540 = v7->f32[v538];
                v538 = 1;
                v541 = (v539 < v540) & ~v537;
                v537 = 1;
                if ((v541 & 1) == 0)
                {
                  v542 = v539 < v540;
                  goto LABEL_457;
                }
              }

              v542 = 0;
LABEL_457:
              v543 = 0;
              v544 = 0;
              while (1)
              {
                v545 = *(v504 + v544 + 172);
                if (v545 < a3->f32[v544])
                {
                  break;
                }

                v546 = v7->f32[v544];
                v544 = 1;
                v547 = (v545 < v546) & ~v543;
                v543 = 1;
                if ((v547 & 1) == 0)
                {
                  v548 = v545 < v546;
                  goto LABEL_462;
                }
              }

              v548 = 0;
LABEL_462:
              if (*(v535 + 844) == 2)
              {
                v536 = v542;
              }

              else
              {
                v536 = 0;
              }

              if (*(v504 + 844) == 2)
              {
                v549 = v548;
              }

              else
              {
                v549 = 0;
              }

              if (((v536 | v549) & 1) == 0 || ((v536 ^ v549) & 1) == 0)
              {
                LOBYTE(v536) = v542;
                if (v542 == v548)
                {
                  v550.f32[0] = md::Label::boundsForStaging(v535);
                  v552.i32[1] = v551;
                  v550.i32[1] = v553;
                  v554 = vmla_f32(vsub_f32(a3[2], v550), 0xBF000000BF000000, vsub_f32(v552, v550));
                  v555 = vmul_f32(v554, v554);
                  v556.f32[0] = md::Label::boundsForStaging(v504);
                  v558.i32[1] = v557;
                  v556.i32[1] = v559;
                  v560 = vmla_f32(vsub_f32(a3[2], v556), 0xBF000000BF000000, vsub_f32(v558, v556));
                  v561 = vmul_f32(v560, v560);
                  v562 = vadd_f32(vzip2_s32(v555, v561), vzip1_s32(v555, v561));
                  LOBYTE(v536) = vcgt_f32(vdup_lane_s32(v562, 1), v562).u8[0];
                }
              }
            }

            else
            {
              LOBYTE(v536) = v536 < v506;
            }

            if (v514)
            {
              v563 = v9[v232];
              if ((v536 & 1) == 0)
              {
                v9[v232] = v9[v12];
                v9[v12] = v563;
                v574 = v9[v381];
                v575 = *(v574 + 1297);
                v576 = *(v563 + 1297);
                if (v575 == v576)
                {
                  v577 = 0;
                  v578 = 0;
                  while (1)
                  {
                    v579 = *(v574 + v578 + 172);
                    if (v579 < a3->f32[v578])
                    {
                      break;
                    }

                    v580 = v7->f32[v578];
                    v578 = 1;
                    v581 = (v579 < v580) & ~v577;
                    v577 = 1;
                    if ((v581 & 1) == 0)
                    {
                      v582 = v579 < v580;
                      goto LABEL_497;
                    }
                  }

                  v582 = 0;
LABEL_497:
                  v589 = 0;
                  v590 = 0;
                  while (1)
                  {
                    v591 = *(v563 + v590 + 172);
                    if (v591 < a3->f32[v590])
                    {
                      break;
                    }

                    v592 = v7->f32[v590];
                    v590 = 1;
                    v593 = (v591 < v592) & ~v589;
                    v589 = 1;
                    if ((v593 & 1) == 0)
                    {
                      v594 = v591 < v592;
                      goto LABEL_514;
                    }
                  }

                  v594 = 0;
LABEL_514:
                  if (*(v574 + 844) == 2)
                  {
                    v597 = v582;
                  }

                  else
                  {
                    v597 = 0;
                  }

                  if (*(v563 + 844) == 2)
                  {
                    v598 = v594;
                  }

                  else
                  {
                    v598 = 0;
                  }

                  if (((v597 | v598) & 1) != 0 && ((v597 ^ v598) & 1) != 0 || (v597 = v582, v582 != v594))
                  {
                    if (!v597)
                    {
                      goto LABEL_531;
                    }
                  }

                  else
                  {
                    v612.f32[0] = md::Label::boundsForStaging(v574);
                    v614.i32[1] = v613;
                    v612.i32[1] = v615;
                    v616 = vmla_f32(vsub_f32(a3[2], v612), 0xBF000000BF000000, vsub_f32(v614, v612));
                    v617 = vmul_f32(v616, v616);
                    v618.f32[0] = md::Label::boundsForStaging(v563);
                    v620.i32[1] = v619;
                    v618.i32[1] = v621;
                    v622 = vmla_f32(vsub_f32(a3[2], v618), 0xBF000000BF000000, vsub_f32(v620, v618));
                    v623 = vmul_f32(v622, v622);
                    v624 = vadd_f32(vzip2_s32(v617, v623), vzip1_s32(v617, v623));
                    v563 = v9[v12];
                    if ((vcgt_f32(vdup_lane_s32(v624, 1), v624).u32[0] & 1) == 0)
                    {
                      goto LABEL_531;
                    }

                    v574 = v9[v381];
                  }
                }

                else if (v575 >= v576)
                {
                  goto LABEL_531;
                }

                v9[v12] = v574;
                v9[v381] = v563;
                v563 = v574;
                goto LABEL_531;
              }

              v9[v232] = v9[v381];
              v9[v381] = v563;
              v563 = v9[v12];
            }

            else
            {
              v564 = v9[v12];
              if (v536)
              {
                v563 = v9[v381];
                v9[v12] = v563;
                v9[v381] = v564;
                v565 = v9[v232];
                v566 = *(v563 + 1297);
                v567 = *(v565 + 1297);
                if (v566 == v567)
                {
                  v568 = 0;
                  v569 = 0;
                  while (1)
                  {
                    v570 = *(v563 + v569 + 172);
                    if (v570 < a3->f32[v569])
                    {
                      break;
                    }

                    v571 = v7->f32[v569];
                    v569 = 1;
                    v572 = (v570 < v571) & ~v568;
                    v568 = 1;
                    if ((v572 & 1) == 0)
                    {
                      v573 = v570 < v571;
                      goto LABEL_492;
                    }
                  }

                  v573 = 0;
LABEL_492:
                  v583 = 0;
                  v584 = 0;
                  while (1)
                  {
                    v585 = *(v565 + v584 + 172);
                    if (v585 < a3->f32[v584])
                    {
                      break;
                    }

                    v586 = v7->f32[v584];
                    v584 = 1;
                    v587 = (v585 < v586) & ~v583;
                    v583 = 1;
                    if ((v587 & 1) == 0)
                    {
                      v588 = v585 < v586;
                      goto LABEL_502;
                    }
                  }

                  v588 = 0;
LABEL_502:
                  if (*(v563 + 844) == 2)
                  {
                    v595 = v573;
                  }

                  else
                  {
                    v595 = 0;
                  }

                  if (*(v565 + 844) == 2)
                  {
                    v596 = v588;
                  }

                  else
                  {
                    v596 = 0;
                  }

                  if (((v595 | v596) & 1) != 0 && ((v595 ^ v596) & 1) != 0 || (v595 = v573, v573 != v588))
                  {
                    if (!v595)
                    {
                      goto LABEL_531;
                    }
                  }

                  else
                  {
                    v599.f32[0] = md::Label::boundsForStaging(v563);
                    v601.i32[1] = v600;
                    v599.i32[1] = v602;
                    v603 = vmla_f32(vsub_f32(a3[2], v599), 0xBF000000BF000000, vsub_f32(v601, v599));
                    v604 = vmul_f32(v603, v603);
                    v605.f32[0] = md::Label::boundsForStaging(v565);
                    v607.i32[1] = v606;
                    v605.i32[1] = v608;
                    v609 = vmla_f32(vsub_f32(a3[2], v605), 0xBF000000BF000000, vsub_f32(v607, v605));
                    v610 = vmul_f32(v609, v609);
                    v611 = vadd_f32(vzip2_s32(v604, v610), vzip1_s32(v604, v610));
                    v563 = v9[v12];
                    if ((vcgt_f32(vdup_lane_s32(v611, 1), v611).u32[0] & 1) == 0)
                    {
                      goto LABEL_531;
                    }

                    v565 = v9[v232];
                  }
                }

                else if (v566 >= v567)
                {
                  goto LABEL_531;
                }

                v9[v232] = v563;
                v9[v12] = v565;
                v563 = v565;
                goto LABEL_531;
              }

              v563 = v9[v12];
            }

LABEL_531:
            v625 = *v9;
            *v9 = v563;
            v9[v12] = v625;
            v124 = v1638;
            goto LABEL_532;
          }
        }

        else
        {
          v219.f32[0] = md::Label::boundsForStaging(v102);
          v221.i32[1] = v220;
          v219.i32[1] = v222;
          v223 = vmla_f32(vsub_f32(a3[2], v219), 0xBF000000BF000000, vsub_f32(v221, v219));
          v224 = vmul_f32(v223, v223);
          v225.f32[0] = md::Label::boundsForStaging(v90);
          v227.i32[1] = v226;
          v225.i32[1] = v228;
          v229 = vmla_f32(vsub_f32(a3[2], v225), 0xBF000000BF000000, vsub_f32(v227, v225));
          v230 = vmul_f32(v229, v229);
          v231 = vadd_f32(vzip2_s32(v224, v230), vzip1_s32(v224, v230));
          if ((vcgt_f32(vdup_lane_s32(v231, 1), v231).u32[0] & 1) == 0)
          {
            goto LABEL_213;
          }

          v90 = v9[v12];
          v102 = *v1635;
        }
      }

      else if (v103 >= v104)
      {
        goto LABEL_213;
      }

      v9[v12] = v102;
      *v1635 = v90;
      goto LABEL_213;
    }

    v23 = *v9;
    v24 = v9[v12];
    v25 = *(*v9 + 1297);
    v26 = *(v24 + 1297);
    if (v25 == v26)
    {
      v27 = 0;
      v28 = 0;
      while (1)
      {
        v29 = *(v23 + v28 + 172);
        if (v29 < a3->f32[v28])
        {
          break;
        }

        v30 = v7->f32[v28];
        v28 = 1;
        v31 = (v29 < v30) & ~v27;
        v27 = 1;
        if ((v31 & 1) == 0)
        {
          v32 = v29 < v30;
          goto LABEL_31;
        }
      }

      v32 = 0;
LABEL_31:
      v41 = 0;
      v42 = 0;
      while (1)
      {
        v43 = *(v24 + v42 + 172);
        if (v43 < a3->f32[v42])
        {
          break;
        }

        v44 = v7->f32[v42];
        v42 = 1;
        v45 = (v43 < v44) & ~v41;
        v41 = 1;
        if ((v45 & 1) == 0)
        {
          v46 = v43 < v44;
          goto LABEL_47;
        }
      }

      v46 = 0;
LABEL_47:
      if (*(v23 + 844) == 2)
      {
        v34 = v32;
      }

      else
      {
        v34 = 0;
      }

      if (*(v24 + 844) == 2)
      {
        v48 = v46;
      }

      else
      {
        v48 = 0;
      }

      if (((v34 | v48) & 1) == 0 || ((v34 ^ v48) & 1) == 0)
      {
        if (v32 == v46)
        {
          v111.f32[0] = md::Label::boundsForStaging(*v9);
          v113.i32[1] = v112;
          v111.i32[1] = v114;
          v115 = vmla_f32(vsub_f32(a3[2], v111), 0xBF000000BF000000, vsub_f32(v113, v111));
          v116 = vmul_f32(v115, v115);
          v117.f32[0] = md::Label::boundsForStaging(v24);
          v119.i32[1] = v118;
          v117.i32[1] = v120;
          v121 = vmla_f32(vsub_f32(a3[2], v117), 0xBF000000BF000000, vsub_f32(v119, v117));
          v122 = vmul_f32(v121, v121);
          v123 = vadd_f32(vzip2_s32(v116, v122), vzip1_s32(v116, v122));
          LOBYTE(v34) = vcgt_f32(vdup_lane_s32(v123, 1), v123).u8[0];
          v23 = *v9;
          v25 = *(*v9 + 1297);
        }

        else
        {
          LOBYTE(v34) = v32;
        }
      }
    }

    else
    {
      LOBYTE(v34) = v25 < v26;
    }

    v124 = v1638;
    v125 = *v1635;
    v126 = *(*v1635 + 1297);
    if (v126 == v25)
    {
      v127 = 0;
      v128 = 0;
      while (1)
      {
        v129 = *(v125 + v128 + 172);
        if (v129 < a3->f32[v128])
        {
          break;
        }

        v130 = v7->f32[v128];
        v128 = 1;
        v131 = (v129 < v130) & ~v127;
        v127 = 1;
        if ((v131 & 1) == 0)
        {
          v132 = v129 < v130;
          goto LABEL_102;
        }
      }

      v132 = 0;
LABEL_102:
      v133 = 0;
      v134 = 0;
      while (1)
      {
        v135 = *(v23 + v134 + 172);
        if (v135 < a3->f32[v134])
        {
          break;
        }

        v136 = v7->f32[v134];
        v134 = 1;
        v137 = (v135 < v136) & ~v133;
        v133 = 1;
        if ((v137 & 1) == 0)
        {
          v138 = v135 < v136;
          goto LABEL_107;
        }
      }

      v138 = 0;
LABEL_107:
      if (*(v125 + 844) == 2)
      {
        v126 = v132;
      }

      else
      {
        v126 = 0;
      }

      if (*(v23 + 844) == 2)
      {
        v139 = v138;
      }

      else
      {
        v139 = 0;
      }

      if (((v126 | v139) & 1) == 0 || ((v126 ^ v139) & 1) == 0)
      {
        LOBYTE(v126) = v132;
        if (v132 == v138)
        {
          v140.f32[0] = md::Label::boundsForStaging(v125);
          v142.i32[1] = v141;
          v140.i32[1] = v143;
          v144 = vmla_f32(vsub_f32(a3[2], v140), 0xBF000000BF000000, vsub_f32(v142, v140));
          v145 = vmul_f32(v144, v144);
          v146.f32[0] = md::Label::boundsForStaging(v23);
          v148.i32[1] = v147;
          v146.i32[1] = v149;
          v150 = vmla_f32(vsub_f32(a3[2], v146), 0xBF000000BF000000, vsub_f32(v148, v146));
          v151 = vmul_f32(v150, v150);
          v152 = vadd_f32(vzip2_s32(v145, v151), vzip1_s32(v145, v151));
          LOBYTE(v126) = vcgt_f32(vdup_lane_s32(v152, 1), v152).u8[0];
        }
      }
    }

    else
    {
      LOBYTE(v126) = v126 < v25;
    }

    if (v34)
    {
      v153 = v9[v12];
      if (v126)
      {
        v9[v12] = *v1635;
        *v1635 = v153;
      }

      else
      {
        v9[v12] = *v9;
        *v9 = v153;
        v165 = *v1635;
        v166 = *(*v1635 + 1297);
        v167 = *(v153 + 1297);
        if (v166 != v167)
        {
          if (v166 >= v167)
          {
            goto LABEL_532;
          }

          goto LABEL_315;
        }

        v168 = 0;
        v169 = 0;
        while (1)
        {
          v170 = *(v165 + v169 + 172);
          if (v170 < a3->f32[v169])
          {
            break;
          }

          v171 = v7->f32[v169];
          v169 = 1;
          v172 = (v170 < v171) & ~v168;
          v168 = 1;
          if ((v172 & 1) == 0)
          {
            v173 = v170 < v171;
            goto LABEL_155;
          }
        }

        v173 = 0;
LABEL_155:
        v192 = 0;
        v193 = 0;
        while (1)
        {
          v194 = *(v153 + v193 + 172);
          if (v194 < a3->f32[v193])
          {
            break;
          }

          v195 = v7->f32[v193];
          v193 = 1;
          v196 = (v194 < v195) & ~v192;
          v192 = 1;
          if ((v196 & 1) == 0)
          {
            v197 = v194 < v195;
            goto LABEL_196;
          }
        }

        v197 = 0;
LABEL_196:
        if (*(v165 + 844) == 2)
        {
          v204 = v173;
        }

        else
        {
          v204 = 0;
        }

        if (*(v153 + 844) == 2)
        {
          v205 = v197;
        }

        else
        {
          v205 = 0;
        }

        if (((v204 | v205) & 1) != 0 && ((v204 ^ v205) & 1) != 0 || (v204 = v173, v173 != v197))
        {
          if (!v204)
          {
            goto LABEL_532;
          }

          goto LABEL_315;
        }

        v342.f32[0] = md::Label::boundsForStaging(v165);
        v344.i32[1] = v343;
        v342.i32[1] = v345;
        v346 = vmla_f32(vsub_f32(a3[2], v342), 0xBF000000BF000000, vsub_f32(v344, v342));
        v347 = vmul_f32(v346, v346);
        v348.f32[0] = md::Label::boundsForStaging(v153);
        v350.i32[1] = v349;
        v348.i32[1] = v351;
        v352 = vmla_f32(vsub_f32(a3[2], v348), 0xBF000000BF000000, vsub_f32(v350, v348));
        v353 = vmul_f32(v352, v352);
        v354 = vadd_f32(vzip2_s32(v347, v353), vzip1_s32(v347, v353));
        if (vcgt_f32(vdup_lane_s32(v354, 1), v354).u32[0])
        {
          v153 = *v9;
          v165 = *v1635;
LABEL_315:
          *v9 = v165;
          *v1635 = v153;
        }
      }
    }

    else if (v126)
    {
      v154 = *v9;
      *v9 = *v1635;
      *v1635 = v154;
      v155 = *v9;
      v156 = v9[v12];
      v157 = *(*v9 + 1297);
      v158 = *(v156 + 1297);
      if (v157 != v158)
      {
        if (v157 >= v158)
        {
          goto LABEL_532;
        }

        goto LABEL_312;
      }

      v159 = 0;
      v160 = 0;
      while (1)
      {
        v161 = *(v155 + v160 + 172);
        if (v161 < a3->f32[v160])
        {
          break;
        }

        v162 = v7->f32[v160];
        v160 = 1;
        v163 = (v161 < v162) & ~v159;
        v159 = 1;
        if ((v163 & 1) == 0)
        {
          v164 = v161 < v162;
          goto LABEL_150;
        }
      }

      v164 = 0;
LABEL_150:
      v186 = 0;
      v187 = 0;
      while (1)
      {
        v188 = *(v156 + v187 + 172);
        if (v188 < a3->f32[v187])
        {
          break;
        }

        v189 = v7->f32[v187];
        v187 = 1;
        v190 = (v188 < v189) & ~v186;
        v186 = 1;
        if ((v190 & 1) == 0)
        {
          v191 = v188 < v189;
          goto LABEL_184;
        }
      }

      v191 = 0;
LABEL_184:
      if (*(v155 + 844) == 2)
      {
        v202 = v164;
      }

      else
      {
        v202 = 0;
      }

      if (*(v156 + 844) == 2)
      {
        v203 = v191;
      }

      else
      {
        v203 = 0;
      }

      if (((v202 | v203) & 1) != 0 && ((v202 ^ v203) & 1) != 0 || (v202 = v164, v164 != v191))
      {
        if (!v202)
        {
          goto LABEL_532;
        }

        goto LABEL_312;
      }

      v329.f32[0] = md::Label::boundsForStaging(v155);
      v331.i32[1] = v330;
      v329.i32[1] = v332;
      v333 = vmla_f32(vsub_f32(a3[2], v329), 0xBF000000BF000000, vsub_f32(v331, v329));
      v334 = vmul_f32(v333, v333);
      v335.f32[0] = md::Label::boundsForStaging(v156);
      v337.i32[1] = v336;
      v335.i32[1] = v338;
      v339 = vmla_f32(vsub_f32(a3[2], v335), 0xBF000000BF000000, vsub_f32(v337, v335));
      v340 = vmul_f32(v339, v339);
      v341 = vadd_f32(vzip2_s32(v334, v340), vzip1_s32(v334, v340));
      if (vcgt_f32(vdup_lane_s32(v341, 1), v341).u32[0])
      {
        v156 = v9[v12];
        v155 = *v9;
LABEL_312:
        v9[v12] = v155;
        *v9 = v156;
      }
    }

LABEL_532:
    --a4;
    v626 = *v9;
    if (a5)
    {
      goto LABEL_558;
    }

    v627 = *(v9 - 1);
    v628 = *(v627 + 1297);
    v629 = *(v626 + 1297);
    if (v628 == v629)
    {
      v630 = 0;
      v631 = 0;
      while (1)
      {
        v632 = *(v627 + v631 + 172);
        if (v632 < a3->f32[v631])
        {
          break;
        }

        v633 = v7->f32[v631];
        v631 = 1;
        v634 = (v632 < v633) & ~v630;
        v630 = 1;
        if ((v634 & 1) == 0)
        {
          v635 = v632 < v633;
          goto LABEL_541;
        }
      }

      v635 = 0;
LABEL_541:
      v636 = 0;
      v637 = 0;
      while (1)
      {
        v638 = *(v626 + v637 + 172);
        if (v638 < a3->f32[v637])
        {
          break;
        }

        v639 = v7->f32[v637];
        v637 = 1;
        v640 = (v638 < v639) & ~v636;
        v636 = 1;
        if ((v640 & 1) == 0)
        {
          v641 = v638 < v639;
          goto LABEL_546;
        }
      }

      v641 = 0;
LABEL_546:
      if (*(v627 + 844) == 2)
      {
        v642 = v635;
      }

      else
      {
        v642 = 0;
      }

      if (*(v626 + 844) == 2)
      {
        v643 = v641;
      }

      else
      {
        v643 = 0;
      }

      if (((v642 | v643) & 1) == 0 || ((v642 ^ v643) & 1) == 0)
      {
        LOBYTE(v642) = v635;
        if (v635 == v641)
        {
          v644.f32[0] = md::Label::boundsForStaging(v627);
          v646.i32[1] = v645;
          v644.i32[1] = v647;
          v648 = vmla_f32(vsub_f32(a3[2], v644), 0xBF000000BF000000, vsub_f32(v646, v644));
          v649 = vmul_f32(v648, v648);
          v650.f32[0] = md::Label::boundsForStaging(v626);
          v652.i32[1] = v651;
          v650.i32[1] = v653;
          v654 = vmla_f32(vsub_f32(a3[2], v650), 0xBF000000BF000000, vsub_f32(v652, v650));
          v655 = vmul_f32(v654, v654);
          v656 = vadd_f32(vzip2_s32(v649, v655), vzip1_s32(v649, v655));
          v626 = *v9;
          if ((vcgt_f32(vdup_lane_s32(v656, 1), v656).u32[0] & 1) == 0)
          {
            v629 = *(v626 + 1297);
            goto LABEL_699;
          }

          goto LABEL_558;
        }
      }

      if (v642)
      {
        goto LABEL_558;
      }

LABEL_699:
      v819 = *v1635;
      v820 = *(*v1635 + 1297);
      if (v629 == v820)
      {
        v821 = 0;
        v822 = 0;
        while (1)
        {
          v823 = *(v626 + v822 + 172);
          if (v823 < a3->f32[v822])
          {
            break;
          }

          v824 = v7->f32[v822];
          v822 = 1;
          v825 = (v823 < v824) & ~v821;
          v821 = 1;
          if ((v825 & 1) == 0)
          {
            v826 = v823 < v824;
            goto LABEL_733;
          }
        }

        v826 = 0;
LABEL_733:
        v858 = 0;
        v859 = 0;
        while (1)
        {
          v860 = *(v819 + v859 + 172);
          if (v860 < a3->f32[v859])
          {
            break;
          }

          v861 = v7->f32[v859];
          v859 = 1;
          v862 = (v860 < v861) & ~v858;
          v858 = 1;
          if ((v862 & 1) == 0)
          {
            v863 = v860 < v861;
            goto LABEL_738;
          }
        }

        v863 = 0;
LABEL_738:
        if (*(v626 + 844) == 2)
        {
          v864 = v826;
        }

        else
        {
          v864 = 0;
        }

        if (*(v819 + 844) == 2)
        {
          v865 = v863;
        }

        else
        {
          v865 = 0;
        }

        if (((v864 | v865) & 1) != 0 && ((v864 ^ v865) & 1) != 0 || (v864 = v826, v826 != v863))
        {
          if (!v864)
          {
            goto LABEL_748;
          }
        }

        else
        {
          v993.f32[0] = md::Label::boundsForStaging(v626);
          v995.i32[1] = v994;
          v993.i32[1] = v996;
          v997 = vmla_f32(vsub_f32(a3[2], v993), 0xBF000000BF000000, vsub_f32(v995, v993));
          v998 = vmul_f32(v997, v997);
          v999.f32[0] = md::Label::boundsForStaging(v819);
          v1001.i32[1] = v1000;
          v999.i32[1] = v1002;
          v1003 = vmla_f32(vsub_f32(a3[2], v999), 0xBF000000BF000000, vsub_f32(v1001, v999));
          v1004 = vmul_f32(v1003, v1003);
          v1005 = vadd_f32(vzip2_s32(v998, v1004), vzip1_s32(v998, v1004));
          if ((vcgt_f32(vdup_lane_s32(v1005, 1), v1005).u32[0] & 1) == 0)
          {
LABEL_748:
            v8 = v9;
            while (1)
            {
              if (++v8 >= v1638)
              {
                goto LABEL_775;
              }

              v866 = *v8;
              v867 = *(v626 + 1297);
              v868 = *(*v8 + 1297);
              if (v867 == v868)
              {
                v869 = 0;
                v870 = 0;
                while (1)
                {
                  v871 = *(v626 + v870 + 172);
                  if (v871 < a3->f32[v870])
                  {
                    break;
                  }

                  v872 = v7->f32[v870];
                  v870 = 1;
                  v873 = (v871 < v872) & ~v869;
                  v869 = 1;
                  if ((v873 & 1) == 0)
                  {
                    v874 = v871 < v872;
                    goto LABEL_758;
                  }
                }

                v874 = 0;
LABEL_758:
                v875 = 0;
                v876 = 0;
                while (1)
                {
                  v877 = *(v866 + v876 + 172);
                  if (v877 < a3->f32[v876])
                  {
                    break;
                  }

                  v878 = v7->f32[v876];
                  v876 = 1;
                  v879 = (v877 < v878) & ~v875;
                  v875 = 1;
                  if ((v879 & 1) == 0)
                  {
                    v880 = v877 < v878;
                    goto LABEL_763;
                  }
                }

                v880 = 0;
LABEL_763:
                if (*(v626 + 844) == 2)
                {
                  v881 = v874;
                }

                else
                {
                  v881 = 0;
                }

                if (*(v866 + 844) == 2)
                {
                  v882 = v880;
                }

                else
                {
                  v882 = 0;
                }

                if (((v881 | v882) & 1) != 0 && ((v881 ^ v882) & 1) != 0 || (v881 = v874, v874 != v880))
                {
                  if (v881)
                  {
                    goto LABEL_775;
                  }
                }

                else
                {
                  v883.f32[0] = md::Label::boundsForStaging(v626);
                  v885.i32[1] = v884;
                  v883.i32[1] = v886;
                  v887 = vmla_f32(vsub_f32(a3[2], v883), 0xBF000000BF000000, vsub_f32(v885, v883));
                  v888 = vmul_f32(v887, v887);
                  v889.f32[0] = md::Label::boundsForStaging(v866);
                  v891.i32[1] = v890;
                  v889.i32[1] = v892;
                  v893 = vmla_f32(vsub_f32(a3[2], v889), 0xBF000000BF000000, vsub_f32(v891, v889));
                  v894 = vmul_f32(v893, v893);
                  v895 = vadd_f32(vzip2_s32(v888, v894), vzip1_s32(v888, v894));
                  if (vcgt_f32(vdup_lane_s32(v895, 1), v895).u32[0])
                  {
                    goto LABEL_775;
                  }
                }
              }

              else if (v867 < v868)
              {
                goto LABEL_775;
              }
            }
          }
        }
      }

      else if (v629 >= v820)
      {
        goto LABEL_748;
      }

      v8 = v9;
      do
      {
        while (1)
        {
          while (1)
          {
            v828 = v8[1];
            ++v8;
            v827 = v828;
            v829 = *(v626 + 1297);
            v830 = *(v828 + 1297);
            if (v829 == v830)
            {
              break;
            }

            if (v829 < v830)
            {
              goto LABEL_775;
            }
          }

          v831 = 0;
          v832 = 0;
          while (1)
          {
            v833 = *(v626 + v832 + 172);
            if (v833 < a3->f32[v832])
            {
              break;
            }

            v834 = v7->f32[v832];
            v832 = 1;
            v835 = (v833 < v834) & ~v831;
            v831 = 1;
            if ((v835 & 1) == 0)
            {
              v836 = v833 < v834;
              goto LABEL_714;
            }
          }

          v836 = 0;
LABEL_714:
          v837 = 0;
          v838 = 0;
          while (1)
          {
            v839 = *(v827 + v838 + 172);
            if (v839 < a3->f32[v838])
            {
              break;
            }

            v840 = v7->f32[v838];
            v838 = 1;
            v841 = (v839 < v840) & ~v837;
            v837 = 1;
            if ((v841 & 1) == 0)
            {
              v842 = v839 < v840;
              goto LABEL_719;
            }
          }

          v842 = 0;
LABEL_719:
          v843 = *(v626 + 844) == 2 ? v836 : 0;
          v844 = *(v827 + 844) == 2 ? v842 : 0;
          if (((v843 | v844) & 1) == 0 || ((v843 ^ v844) & 1) == 0)
          {
            LOBYTE(v843) = v836;
            if (v836 == v842)
            {
              break;
            }
          }

          if (v843)
          {
            goto LABEL_775;
          }
        }

        v845.f32[0] = md::Label::boundsForStaging(v626);
        v847.i32[1] = v846;
        v845.i32[1] = v848;
        v849 = vmla_f32(vsub_f32(a3[2], v845), 0xBF000000BF000000, vsub_f32(v847, v845));
        v850 = vmul_f32(v849, v849);
        v851.f32[0] = md::Label::boundsForStaging(v827);
        v853.i32[1] = v852;
        v851.i32[1] = v854;
        v855 = vmla_f32(vsub_f32(a3[2], v851), 0xBF000000BF000000, vsub_f32(v853, v851));
        v856 = vmul_f32(v855, v855);
        v857 = vadd_f32(vzip2_s32(v850, v856), vzip1_s32(v850, v856));
      }

      while ((vcgt_f32(vdup_lane_s32(v857, 1), v857).u32[0] & 1) == 0);
LABEL_775:
      v896 = v1638;
      if (v8 < v1638)
      {
        v896 = v1638;
        do
        {
          while (1)
          {
            while (1)
            {
              v898 = *--v896;
              v897 = v898;
              v899 = *(v626 + 1297);
              v900 = *(v898 + 1297);
              if (v899 == v900)
              {
                break;
              }

              if (v899 >= v900)
              {
                goto LABEL_802;
              }
            }

            v901 = 0;
            v902 = 0;
            while (1)
            {
              v903 = *(v626 + v902 + 172);
              if (v903 < a3->f32[v902])
              {
                break;
              }

              v904 = v7->f32[v902];
              v902 = 1;
              v905 = (v903 < v904) & ~v901;
              v901 = 1;
              if ((v905 & 1) == 0)
              {
                v906 = v903 < v904;
                goto LABEL_785;
              }
            }

            v906 = 0;
LABEL_785:
            v907 = 0;
            v908 = 0;
            while (1)
            {
              v909 = *(v897 + v908 + 172);
              if (v909 < a3->f32[v908])
              {
                break;
              }

              v910 = v7->f32[v908];
              v908 = 1;
              v911 = (v909 < v910) & ~v907;
              v907 = 1;
              if ((v911 & 1) == 0)
              {
                v912 = v909 < v910;
                goto LABEL_790;
              }
            }

            v912 = 0;
LABEL_790:
            v913 = *(v626 + 844) == 2 ? v906 : 0;
            v914 = *(v897 + 844) == 2 ? v912 : 0;
            if (((v913 | v914) & 1) == 0 || ((v913 ^ v914) & 1) == 0)
            {
              LOBYTE(v913) = v906;
              if (v906 == v912)
              {
                break;
              }
            }

            if ((v913 & 1) == 0)
            {
              goto LABEL_802;
            }
          }

          v915.f32[0] = md::Label::boundsForStaging(v626);
          v917.i32[1] = v916;
          v915.i32[1] = v918;
          v919 = vmla_f32(vsub_f32(a3[2], v915), 0xBF000000BF000000, vsub_f32(v917, v915));
          v920 = vmul_f32(v919, v919);
          v921.f32[0] = md::Label::boundsForStaging(v897);
          v923.i32[1] = v922;
          v921.i32[1] = v924;
          v925 = vmla_f32(vsub_f32(a3[2], v921), 0xBF000000BF000000, vsub_f32(v923, v921));
          v926 = vmul_f32(v925, v925);
          v927 = vadd_f32(vzip2_s32(v920, v926), vzip1_s32(v920, v926));
        }

        while ((vcgt_f32(vdup_lane_s32(v927, 1), v927).u32[0] & 1) != 0);
      }

LABEL_802:
      if (v8 < v896)
      {
        v928 = v626 + 688;
        do
        {
          v929 = *v8;
          *v8 = *v896;
          *v896 = v929;
          do
          {
            while (1)
            {
              while (1)
              {
                v931 = v8[1];
                ++v8;
                v930 = v931;
                v932 = *(v626 + 1297);
                v933 = *(v931 + 1297);
                if (v932 == v933)
                {
                  break;
                }

                if (v932 < v933)
                {
                  goto LABEL_832;
                }
              }

              v934 = 0;
              v935 = 0;
              while (1)
              {
                v936 = *&v928[4 * v935];
                if (v936 < a3->f32[v935])
                {
                  break;
                }

                v937 = v7->f32[v935];
                v935 = 1;
                v938 = (v936 < v937) & ~v934;
                v934 = 1;
                if ((v938 & 1) == 0)
                {
                  v939 = v936 < v937;
                  goto LABEL_813;
                }
              }

              v939 = 0;
LABEL_813:
              v940 = 0;
              v941 = 0;
              while (1)
              {
                v942 = *(v930 + v941 + 172);
                if (v942 < a3->f32[v941])
                {
                  break;
                }

                v943 = v7->f32[v941];
                v941 = 1;
                v944 = (v942 < v943) & ~v940;
                v940 = 1;
                if ((v944 & 1) == 0)
                {
                  v945 = v942 < v943;
                  goto LABEL_818;
                }
              }

              v945 = 0;
LABEL_818:
              v946 = *(v626 + 844) == 2 ? v939 : 0;
              v947 = *(v930 + 844) == 2 ? v945 : 0;
              if (((v946 | v947) & 1) == 0 || ((v946 ^ v947) & 1) == 0)
              {
                v946 = v939;
                if (v939 == v945)
                {
                  break;
                }
              }

              if (v946)
              {
                goto LABEL_832;
              }
            }

            v948.f32[0] = md::Label::boundsForStaging(v626);
            v950.i32[1] = v949;
            v948.i32[1] = v951;
            v952 = vmla_f32(vsub_f32(a3[2], v948), 0xBF000000BF000000, vsub_f32(v950, v948));
            v953 = vmul_f32(v952, v952);
            v954.f32[0] = md::Label::boundsForStaging(v930);
            v956.i32[1] = v955;
            v954.i32[1] = v957;
            v958 = vmla_f32(vsub_f32(a3[2], v954), 0xBF000000BF000000, vsub_f32(v956, v954));
            v959 = vmul_f32(v958, v958);
            v960 = vadd_f32(vzip2_s32(v953, v959), vzip1_s32(v953, v959));
          }

          while ((vcgt_f32(vdup_lane_s32(v960, 1), v960).u32[0] & 1) == 0);
          do
          {
            while (1)
            {
LABEL_832:
              while (1)
              {
                v975 = *--v896;
                v974 = v975;
                v976 = *(v626 + 1297);
                v977 = *(v975 + 1297);
                if (v976 == v977)
                {
                  break;
                }

                if (v976 >= v977)
                {
                  goto LABEL_855;
                }
              }

              v978 = 0;
              v979 = 0;
              while (1)
              {
                v980 = *&v928[4 * v979];
                if (v980 < a3->f32[v979])
                {
                  break;
                }

                v981 = v7->f32[v979];
                v979 = 1;
                v982 = (v980 < v981) & ~v978;
                v978 = 1;
                if ((v982 & 1) == 0)
                {
                  v983 = v980 < v981;
                  goto LABEL_840;
                }
              }

              v983 = 0;
LABEL_840:
              v984 = 0;
              v985 = 0;
              while (1)
              {
                v986 = *(v974 + v985 + 172);
                if (v986 < a3->f32[v985])
                {
                  break;
                }

                v987 = v7->f32[v985];
                v985 = 1;
                v988 = (v986 < v987) & ~v984;
                v984 = 1;
                if ((v988 & 1) == 0)
                {
                  v989 = v986 < v987;
                  goto LABEL_845;
                }
              }

              v989 = 0;
LABEL_845:
              v990 = *(v626 + 844) == 2 ? v983 : 0;
              v991 = *(v974 + 844) == 2 ? v989 : 0;
              if ((v990 | v991) & 1) != 0 && ((v990 ^ v991))
              {
                break;
              }

              LOBYTE(v990) = v983;
              if (v983 != v989)
              {
                break;
              }

              v961.f32[0] = md::Label::boundsForStaging(v626);
              v963.i32[1] = v962;
              v961.i32[1] = v964;
              v965 = vmla_f32(vsub_f32(a3[2], v961), 0xBF000000BF000000, vsub_f32(v963, v961));
              v966 = vmul_f32(v965, v965);
              v967.f32[0] = md::Label::boundsForStaging(v974);
              v969.i32[1] = v968;
              v967.i32[1] = v970;
              v971 = vmla_f32(vsub_f32(a3[2], v967), 0xBF000000BF000000, vsub_f32(v969, v967));
              v972 = vmul_f32(v971, v971);
              v973 = vadd_f32(vzip2_s32(v966, v972), vzip1_s32(v966, v972));
              if ((vcgt_f32(vdup_lane_s32(v973, 1), v973).u32[0] & 1) == 0)
              {
                goto LABEL_855;
              }
            }
          }

          while ((v990 & 1) != 0);
LABEL_855:
          ;
        }

        while (v8 < v896);
      }

      v992 = v8 - 1;
      if (v8 - 1 != v9)
      {
        *v9 = *v992;
      }

      a5 = 0;
      *v992 = v626;
    }

    else
    {
      if (v628 >= v629)
      {
        goto LABEL_699;
      }

LABEL_558:
      v657 = v626 + 688;
      v658 = v9;
      do
      {
        while (1)
        {
          while (1)
          {
            v659 = v658;
            v661 = v658[1];
            ++v658;
            v660 = v661;
            v662 = *(v661 + 1297);
            v663 = *(v626 + 1297);
            if (v662 == v663)
            {
              break;
            }

            if (v662 >= v663)
            {
              goto LABEL_584;
            }
          }

          v664 = 0;
          v665 = 0;
          while (1)
          {
            v666 = *(v660 + v665 + 172);
            if (v666 < a3->f32[v665])
            {
              break;
            }

            v667 = v7->f32[v665];
            v665 = 1;
            v668 = (v666 < v667) & ~v664;
            v664 = 1;
            if ((v668 & 1) == 0)
            {
              v669 = v666 < v667;
              goto LABEL_567;
            }
          }

          v669 = 0;
LABEL_567:
          v670 = 0;
          v671 = 0;
          while (1)
          {
            v672 = *&v657[4 * v671];
            if (v672 < a3->f32[v671])
            {
              break;
            }

            v673 = v7->f32[v671];
            v671 = 1;
            v674 = (v672 < v673) & ~v670;
            v670 = 1;
            if ((v674 & 1) == 0)
            {
              v675 = v672 < v673;
              goto LABEL_572;
            }
          }

          v675 = 0;
LABEL_572:
          v676 = *(v660 + 844) == 2 ? v669 : 0;
          v677 = *(v626 + 844) == 2 ? v675 : 0;
          if (((v676 | v677) & 1) == 0 || ((v676 ^ v677) & 1) == 0)
          {
            LOBYTE(v676) = v669;
            if (v669 == v675)
            {
              break;
            }
          }

          if ((v676 & 1) == 0)
          {
            goto LABEL_584;
          }
        }

        v678.f32[0] = md::Label::boundsForStaging(v660);
        v680.i32[1] = v679;
        v678.i32[1] = v681;
        v682 = vmla_f32(vsub_f32(a3[2], v678), 0xBF000000BF000000, vsub_f32(v680, v678));
        v683 = vmul_f32(v682, v682);
        v684.f32[0] = md::Label::boundsForStaging(v626);
        v686.i32[1] = v685;
        v684.i32[1] = v687;
        v688 = vmla_f32(vsub_f32(a3[2], v684), 0xBF000000BF000000, vsub_f32(v686, v684));
        v689 = vmul_f32(v688, v688);
        v690 = vadd_f32(vzip2_s32(v683, v689), vzip1_s32(v683, v689));
      }

      while ((vcgt_f32(vdup_lane_s32(v690, 1), v690).u32[0] & 1) != 0);
LABEL_584:
      if (v659 == v9)
      {
        v124 = v1638;
        while (v658 < v124)
        {
          v723 = *--v124;
          v722 = v723;
          v724 = *(v723 + 1297);
          v725 = *(v626 + 1297);
          if (v724 == v725)
          {
            v726 = 0;
            v727 = 0;
            while (1)
            {
              v728 = *(v722 + v727 + 172);
              if (v728 < a3->f32[v727])
              {
                break;
              }

              v729 = v7->f32[v727];
              v727 = 1;
              v730 = (v728 < v729) & ~v726;
              v726 = 1;
              if ((v730 & 1) == 0)
              {
                v731 = v728 < v729;
                goto LABEL_621;
              }
            }

            v731 = 0;
LABEL_621:
            v732 = 0;
            v733 = 0;
            while (1)
            {
              v734 = *&v657[4 * v733];
              if (v734 < a3->f32[v733])
              {
                break;
              }

              v735 = v7->f32[v733];
              v733 = 1;
              v736 = (v734 < v735) & ~v732;
              v732 = 1;
              if ((v736 & 1) == 0)
              {
                v737 = v734 < v735;
                goto LABEL_626;
              }
            }

            v737 = 0;
LABEL_626:
            if (*(v722 + 844) == 2)
            {
              v738 = v731;
            }

            else
            {
              v738 = 0;
            }

            if (*(v626 + 844) == 2)
            {
              v739 = v737;
            }

            else
            {
              v739 = 0;
            }

            if (((v738 | v739) & 1) != 0 && ((v738 ^ v739) & 1) != 0 || (LOBYTE(v738) = v731, v731 != v737))
            {
              if (v738)
              {
                break;
              }
            }

            else
            {
              v740.f32[0] = md::Label::boundsForStaging(v722);
              v742.i32[1] = v741;
              v740.i32[1] = v743;
              v744 = vmla_f32(vsub_f32(a3[2], v740), 0xBF000000BF000000, vsub_f32(v742, v740));
              v745 = vmul_f32(v744, v744);
              v746.f32[0] = md::Label::boundsForStaging(v626);
              v748.i32[1] = v747;
              v746.i32[1] = v749;
              v750 = vmla_f32(vsub_f32(a3[2], v746), 0xBF000000BF000000, vsub_f32(v748, v746));
              v751 = vmul_f32(v750, v750);
              v752 = vadd_f32(vzip2_s32(v745, v751), vzip1_s32(v745, v751));
              if (vcgt_f32(vdup_lane_s32(v752, 1), v752).u32[0])
              {
                break;
              }
            }
          }

          else if (v724 < v725)
          {
            break;
          }
        }
      }

      else
      {
        do
        {
          while (1)
          {
            while (1)
            {
              v692 = *--v124;
              v691 = v692;
              v693 = *(v692 + 1297);
              v694 = *(v626 + 1297);
              if (v693 == v694)
              {
                break;
              }

              if (v693 < v694)
              {
                goto LABEL_638;
              }
            }

            v695 = 0;
            v696 = 0;
            while (1)
            {
              v697 = *(v691 + v696 + 172);
              if (v697 < a3->f32[v696])
              {
                break;
              }

              v698 = v7->f32[v696];
              v696 = 1;
              v699 = (v697 < v698) & ~v695;
              v695 = 1;
              if ((v699 & 1) == 0)
              {
                v700 = v697 < v698;
                goto LABEL_593;
              }
            }

            v700 = 0;
LABEL_593:
            v701 = 0;
            v702 = 0;
            while (1)
            {
              v703 = *&v657[4 * v702];
              if (v703 < a3->f32[v702])
              {
                break;
              }

              v704 = v7->f32[v702];
              v702 = 1;
              v705 = (v703 < v704) & ~v701;
              v701 = 1;
              if ((v705 & 1) == 0)
              {
                v706 = v703 < v704;
                goto LABEL_598;
              }
            }

            v706 = 0;
LABEL_598:
            v707 = *(v691 + 844) == 2 ? v700 : 0;
            v708 = *(v626 + 844) == 2 ? v706 : 0;
            if (((v707 | v708) & 1) == 0 || ((v707 ^ v708) & 1) == 0)
            {
              v707 = v700;
              if (v700 == v706)
              {
                break;
              }
            }

            if (v707)
            {
              goto LABEL_638;
            }
          }

          v709.f32[0] = md::Label::boundsForStaging(v691);
          v711.i32[1] = v710;
          v709.i32[1] = v712;
          v713 = vmla_f32(vsub_f32(a3[2], v709), 0xBF000000BF000000, vsub_f32(v711, v709));
          v714 = vmul_f32(v713, v713);
          v715.f32[0] = md::Label::boundsForStaging(v626);
          v717.i32[1] = v716;
          v715.i32[1] = v718;
          v719 = vmla_f32(vsub_f32(a3[2], v715), 0xBF000000BF000000, vsub_f32(v717, v715));
          v720 = vmul_f32(v719, v719);
          v721 = vadd_f32(vzip2_s32(v714, v720), vzip1_s32(v714, v720));
        }

        while ((vcgt_f32(vdup_lane_s32(v721, 1), v721).u32[0] & 1) == 0);
      }

LABEL_638:
      if (v658 < v124)
      {
        v753 = v658;
        v754 = v124;
        do
        {
          v755 = *v753;
          *v753 = *v754;
          *v754 = v755;
          do
          {
            while (1)
            {
              while (1)
              {
                v659 = v753;
                v757 = v753[1];
                ++v753;
                v756 = v757;
                v758 = *(v757 + 1297);
                v759 = *(v626 + 1297);
                if (v758 == v759)
                {
                  break;
                }

                if (v758 >= v759)
                {
                  goto LABEL_668;
                }
              }

              v760 = 0;
              v761 = 0;
              while (1)
              {
                v762 = *(v756 + v761 + 172);
                if (v762 < a3->f32[v761])
                {
                  break;
                }

                v763 = v7->f32[v761];
                v761 = 1;
                v764 = (v762 < v763) & ~v760;
                v760 = 1;
                if ((v764 & 1) == 0)
                {
                  v765 = v762 < v763;
                  goto LABEL_649;
                }
              }

              v765 = 0;
LABEL_649:
              v766 = 0;
              v767 = 0;
              while (1)
              {
                v768 = *&v657[4 * v767];
                if (v768 < a3->f32[v767])
                {
                  break;
                }

                v769 = v7->f32[v767];
                v767 = 1;
                v770 = (v768 < v769) & ~v766;
                v766 = 1;
                if ((v770 & 1) == 0)
                {
                  v771 = v768 < v769;
                  goto LABEL_654;
                }
              }

              v771 = 0;
LABEL_654:
              v772 = *(v756 + 844) == 2 ? v765 : 0;
              v773 = *(v626 + 844) == 2 ? v771 : 0;
              if (((v772 | v773) & 1) == 0 || ((v772 ^ v773) & 1) == 0)
              {
                LOBYTE(v772) = v765;
                if (v765 == v771)
                {
                  break;
                }
              }

              if ((v772 & 1) == 0)
              {
                goto LABEL_668;
              }
            }

            v774.f32[0] = md::Label::boundsForStaging(v756);
            v776.i32[1] = v775;
            v774.i32[1] = v777;
            v778 = vmla_f32(vsub_f32(a3[2], v774), 0xBF000000BF000000, vsub_f32(v776, v774));
            v779 = vmul_f32(v778, v778);
            v780.f32[0] = md::Label::boundsForStaging(v626);
            v782.i32[1] = v781;
            v780.i32[1] = v783;
            v784 = vmla_f32(vsub_f32(a3[2], v780), 0xBF000000BF000000, vsub_f32(v782, v780));
            v785 = vmul_f32(v784, v784);
            v786 = vadd_f32(vzip2_s32(v779, v785), vzip1_s32(v779, v785));
          }

          while ((vcgt_f32(vdup_lane_s32(v786, 1), v786).u32[0] & 1) != 0);
          do
          {
            while (1)
            {
LABEL_668:
              while (1)
              {
                v801 = *--v754;
                v800 = v801;
                v802 = *(v801 + 1297);
                v803 = *(v626 + 1297);
                if (v802 == v803)
                {
                  break;
                }

                if (v802 < v803)
                {
                  goto LABEL_691;
                }
              }

              v804 = 0;
              v805 = 0;
              while (1)
              {
                v806 = *(v800 + v805 + 172);
                if (v806 < a3->f32[v805])
                {
                  break;
                }

                v807 = v7->f32[v805];
                v805 = 1;
                v808 = (v806 < v807) & ~v804;
                v804 = 1;
                if ((v808 & 1) == 0)
                {
                  v809 = v806 < v807;
                  goto LABEL_676;
                }
              }

              v809 = 0;
LABEL_676:
              v810 = 0;
              v811 = 0;
              while (1)
              {
                v812 = *&v657[4 * v811];
                if (v812 < a3->f32[v811])
                {
                  break;
                }

                v813 = v7->f32[v811];
                v811 = 1;
                v814 = (v812 < v813) & ~v810;
                v810 = 1;
                if ((v814 & 1) == 0)
                {
                  v815 = v812 < v813;
                  goto LABEL_681;
                }
              }

              v815 = 0;
LABEL_681:
              v816 = *(v800 + 844) == 2 ? v809 : 0;
              v817 = *(v626 + 844) == 2 ? v815 : 0;
              if ((v816 | v817) & 1) != 0 && ((v816 ^ v817))
              {
                break;
              }

              v816 = v809;
              if (v809 != v815)
              {
                break;
              }

              v787.f32[0] = md::Label::boundsForStaging(v800);
              v789.i32[1] = v788;
              v787.i32[1] = v790;
              v791 = vmla_f32(vsub_f32(a3[2], v787), 0xBF000000BF000000, vsub_f32(v789, v787));
              v792 = vmul_f32(v791, v791);
              v793.f32[0] = md::Label::boundsForStaging(v626);
              v795.i32[1] = v794;
              v793.i32[1] = v796;
              v797 = vmla_f32(vsub_f32(a3[2], v793), 0xBF000000BF000000, vsub_f32(v795, v793));
              v798 = vmul_f32(v797, v797);
              v799 = vadd_f32(vzip2_s32(v792, v798), vzip1_s32(v792, v798));
              if (vcgt_f32(vdup_lane_s32(v799, 1), v799).u32[0])
              {
                goto LABEL_691;
              }
            }
          }

          while (!v816);
LABEL_691:
          ;
        }

        while (v753 < v754);
      }

      if (v659 != a1)
      {
        a1->i64[0] = *v659;
      }

      *v659 = v626;
      if (v658 < v124)
      {
        goto LABEL_697;
      }

      v818 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::NamedLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **>(a1, v659, a3);
      v8 = v659 + 1;
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::NamedLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **>(v659 + 1, v1638, a3))
      {
        a2 = v659;
        if (v818)
        {
          return;
        }

        goto LABEL_2;
      }

      if (!v818)
      {
LABEL_697:
        std::__introsort<std::_ClassicAlgPolicy,md::NamedLabelDedupingGroup::prepareForCollision(md::LabelManager *)::$_0 &,md::Label **,false>(a1, v659, a3, a4, a5 & 1);
        a5 = 0;
        v8 = v659 + 1;
      }
    }
  }

  if (v9 == v1638)
  {
    return;
  }

  v1105 = (v11 - 2) >> 1;
  v1106 = v1105;
  while (2)
  {
    v1107 = v1106;
    if (v1105 >= v1106)
    {
      v1636 = v1106;
      v1108 = (2 * v1106) | 1;
      v1109 = &v9[v1108];
      v1110 = 2 * v1106 + 2;
      if (v1110 < v11)
      {
        v1111 = *v1109;
        v1112 = v1109[1];
        v1113 = *(*v1109 + 1297);
        v1114 = *(v1112 + 1297);
        if (v1113 == v1114)
        {
          v1115 = 0;
          v1116 = 0;
          while (1)
          {
            v1117 = *(v1111 + v1116 + 172);
            if (v1117 < a3->f32[v1116])
            {
              break;
            }

            v1118 = v7->f32[v1116];
            v1116 = 1;
            v1119 = (v1117 < v1118) & ~v1115;
            v1115 = 1;
            if ((v1119 & 1) == 0)
            {
              v1120 = v1117 < v1118;
              goto LABEL_959;
            }
          }

          v1120 = 0;
LABEL_959:
          v1122 = 0;
          v1123 = 0;
          while (1)
          {
            v1124 = *(v1112 + v1123 + 172);
            if (v1124 < a3->f32[v1123])
            {
              break;
            }

            v1125 = v7->f32[v1123];
            v1123 = 1;
            v1126 = (v1124 < v1125) & ~v1122;
            v1122 = 1;
            if ((v1126 & 1) == 0)
            {
              v1127 = v1124 < v1125;
              goto LABEL_964;
            }
          }

          v1127 = 0;
LABEL_964:
          if (*(v1111 + 844) == 2)
          {
            v1121 = v1120;
          }

          else
          {
            v1121 = 0;
          }

          if (*(v1112 + 844) == 2)
          {
            v1128 = v1127;
          }

          else
          {
            v1128 = 0;
          }

          if (((v1121 | v1128) & 1) == 0 || ((v1121 ^ v1128) & 1) == 0)
          {
            LOBYTE(v1121) = v1120;
            if (v1120 == v1127)
            {
              v1129.f32[0] = md::Label::boundsForStaging(v1111);
              v1131.i32[1] = v1130;
              v1129.i32[1] = v1132;
              v1133 = vmla_f32(vsub_f32(a3[2], v1129), 0xBF000000BF000000, vsub_f32(v1131, v1129));
              v1134 = vmul_f32(v1133, v1133);
              v1135.f32[0] = md::Label::boundsForStaging(v1112);
              v1105 = (v11 - 2) >> 1;
              v1137.i32[1] = v1136;
              v1135.i32[1] = v1138;
              v1139 = vmla_f32(vsub_f32(a3[2], v1135), 0xBF000000BF000000, vsub_f32(v1137, v1135));
              v1140 = vmul_f32(v1139, v1139);
              v1141 = vadd_f32(vzip2_s32(v1134, v1140), vzip1_s32(v1134, v1140));
              LOBYTE(v1121) = vcgt_f32(vdup_lane_s32(v1141, 1), v1141).u8[0];
            }
          }
        }

        else
        {
          LOBYTE(v1121) = v1113 < v1114;
        }

        if (v1121)
        {
          ++v1109;
          v1108 = v1110;
        }

        v9 = a1;
      }

      v1107 = v1636;
      v1142 = &v9[v1636];
      v1143 = *v1109;
      v1144 = *v1142;
      v1145 = *(*v1109 + 1297);
      v1146 = *(*v1142 + 1297);
      if (v1145 == v1146)
      {
        v1147 = 0;
        v1148 = 0;
        while (1)
        {
          v1149 = *(v1143 + v1148 + 172);
          if (v1149 < a3->f32[v1148])
          {
            break;
          }

          v1150 = v7->f32[v1148];
          v1148 = 1;
          v1151 = (v1149 < v1150) & ~v1147;
          v1147 = 1;
          if ((v1151 & 1) == 0)
          {
            v1152 = v1149 < v1150;
            goto LABEL_985;
          }
        }

        v1152 = 0;
LABEL_985:
        v1153 = 0;
        v1154 = 0;
        while (1)
        {
          v1155 = *(v1144 + v1154 + 172);
          if (v1155 < a3->f32[v1154])
          {
            break;
          }

          v1156 = v7->f32[v1154];
          v1154 = 1;
          v1157 = (v1155 < v1156) & ~v1153;
          v1153 = 1;
          if ((v1157 & 1) == 0)
          {
            v1158 = v1155 < v1156;
            goto LABEL_990;
          }
        }

        v1158 = 0;
LABEL_990:
        if (*(v1143 + 844) == 2)
        {
          v1159 = v1152;
        }

        else
        {
          v1159 = 0;
        }

        if (*(v1144 + 844) == 2)
        {
          v1160 = v1158;
        }

        else
        {
          v1160 = 0;
        }

        if (((v1159 | v1160) & 1) != 0 && ((v1159 ^ v1160) & 1) != 0 || (LOBYTE(v1159) = v1152, v1152 != v1158))
        {
          if (v1159)
          {
            goto LABEL_1058;
          }
        }

        else
        {
          v1161 = *v1142;
          v1162.f32[0] = md::Label::boundsForStaging(v1143);
          v1164.i32[1] = v1163;
          v1162.i32[1] = v1165;
          v1166 = vmla_f32(vsub_f32(a3[2], v1162), 0xBF000000BF000000, vsub_f32(v1164, v1162));
          v1167 = vmul_f32(v1166, v1166);
          v1168.f32[0] = md::Label::boundsForStaging(v1161);
          v1105 = (v11 - 2) >> 1;
          v1170.i32[1] = v1169;
          v1168.i32[1] = v1171;
          v1172 = vmla_f32(vsub_f32(a3[2], v1168), 0xBF000000BF000000, vsub_f32(v1170, v1168));
          v1173 = vmul_f32(v1172, v1172);
          v1174 = vadd_f32(vzip2_s32(v1167, v1173), vzip1_s32(v1167, v1173));
          if (vcgt_f32(vdup_lane_s32(v1174, 1), v1174).u32[0])
          {
            goto LABEL_1058;
          }

          v1144 = *v1142;
        }
      }

      else if (v1145 < v1146)
      {
        goto LABEL_1058;
      }

      v1175 = v1144 + 688;
      while (1)
      {
        v1176 = v1109;
        *v1142 = *v1109;
        if (v1105 < v1108)
        {
          break;
        }

        v1177 = (2 * v1108) | 1;
        v1109 = &a1->i64[v1177];
        v1178 = 2 * v1108 + 2;
        if (v1178 >= v11)
        {
          v1108 = (2 * v1108) | 1;
        }

        else
        {
          v1179 = *v1109;
          v1180 = v1109[1];
          v1181 = *(*v1109 + 1297);
          v1182 = *(v1180 + 1297);
          if (v1181 == v1182)
          {
            v1183 = 0;
            v1184 = 0;
            while (1)
            {
              v1185 = *(v1179 + v1184 + 172);
              if (v1185 < a3->f32[v1184])
              {
                break;
              }

              v1186 = v7->f32[v1184];
              v1184 = 1;
              v1187 = (v1185 < v1186) & ~v1183;
              v1183 = 1;
              if ((v1187 & 1) == 0)
              {
                v1188 = v1185 < v1186;
                goto LABEL_1014;
              }
            }

            v1188 = 0;
LABEL_1014:
            v1190 = 0;
            v1191 = 0;
            while (1)
            {
              v1192 = *(v1180 + v1191 + 172);
              if (v1192 < a3->f32[v1191])
              {
                break;
              }

              v1193 = v7->f32[v1191];
              v1191 = 1;
              v1194 = (v1192 < v1193) & ~v1190;
              v1190 = 1;
              if ((v1194 & 1) == 0)
              {
                v1195 = v1192 < v1193;
                goto LABEL_1019;
              }
            }

            v1195 = 0;
LABEL_1019:
            if (*(v1179 + 844) == 2)
            {
              v1189 = v1188;
            }

            else
            {
              v1189 = 0;
            }

            if (*(v1180 + 844) == 2)
            {
              v1196 = v1195;
            }

            else
            {
              v1196 = 0;
            }

            if (((v1189 | v1196) & 1) == 0 || ((v1189 ^ v1196) & 1) == 0)
            {
              LOBYTE(v1189) = v1188;
              if (v1188 == v1195)
              {
                v1633 = v1144;
                v1197.f32[0] = md::Label::boundsForStaging(v1179);
                v1199.i32[1] = v1198;
                v1197.i32[1] = v1200;
                v1201 = vmla_f32(vsub_f32(a3[2], v1197), 0xBF000000BF000000, vsub_f32(v1199, v1197));
                v1202 = vmul_f32(v1201, v1201);
                v1203.f32[0] = md::Label::boundsForStaging(v1180);
                v1144 = v1633;
                v1105 = (v11 - 2) >> 1;
                v1205.i32[1] = v1204;
                v1203.i32[1] = v1206;
                v1207 = vmla_f32(vsub_f32(a3[2], v1203), 0xBF000000BF000000, vsub_f32(v1205, v1203));
                v1208 = vmul_f32(v1207, v1207);
                v1209 = vadd_f32(vzip2_s32(v1202, v1208), vzip1_s32(v1202, v1208));
                LOBYTE(v1189) = vcgt_f32(vdup_lane_s32(v1209, 1), v1209).u8[0];
              }
            }
          }

          else
          {
            LOBYTE(v1189) = v1181 < v1182;
          }

          if (v1189)
          {
            ++v1109;
            v1108 = v1178;
          }

          else
          {
            v1108 = v1177;
          }
        }

        v1210 = *v1109;
        v1211 = *(*v1109 + 1297);
        v1212 = *(v1144 + 1297);
        if (v1211 == v1212)
        {
          v1213 = 0;
          v1214 = 0;
          while (1)
          {
            v1215 = *(v1210 + v1214 + 172);
            if (v1215 < a3->f32[v1214])
            {
              break;
            }

            v1216 = v7->f32[v1214];
            v1214 = 1;
            v1217 = (v1215 < v1216) & ~v1213;
            v1213 = 1;
            if ((v1217 & 1) == 0)
            {
              v1218 = v1215 < v1216;
              goto LABEL_1040;
            }
          }

          v1218 = 0;
LABEL_1040:
          v1219 = 0;
          v1220 = 0;
          while (1)
          {
            v1221 = *&v1175[4 * v1220];
            if (v1221 < a3->f32[v1220])
            {
              break;
            }

            v1222 = v7->f32[v1220];
            v1220 = 1;
            v1223 = (v1221 < v1222) & ~v1219;
            v1219 = 1;
            if ((v1223 & 1) == 0)
            {
              v1224 = v1221 < v1222;
              goto LABEL_1045;
            }
          }

          v1224 = 0;
LABEL_1045:
          if (*(v1210 + 844) == 2)
          {
            v1225 = v1218;
          }

          else
          {
            v1225 = 0;
          }

          if (*(v1144 + 844) == 2)
          {
            v1226 = v1224;
          }

          else
          {
            v1226 = 0;
          }

          if (((v1225 | v1226) & 1) != 0 && ((v1225 ^ v1226) & 1) != 0 || (v1225 = v1218, v1218 != v1224))
          {
            v1142 = v1176;
            if (v1225)
            {
              break;
            }
          }

          else
          {
            v1227 = v1144;
            v1228.f32[0] = md::Label::boundsForStaging(v1210);
            v1230.i32[1] = v1229;
            v1228.i32[1] = v1231;
            v1232 = vmla_f32(vsub_f32(a3[2], v1228), 0xBF000000BF000000, vsub_f32(v1230, v1228));
            v1233 = vmul_f32(v1232, v1232);
            v1234.f32[0] = md::Label::boundsForStaging(v1227);
            v1144 = v1227;
            v1105 = (v11 - 2) >> 1;
            v1236.i32[1] = v1235;
            v1234.i32[1] = v1237;
            v1238 = vmla_f32(vsub_f32(a3[2], v1234), 0xBF000000BF000000, vsub_f32(v1236, v1234));
            v1239 = vmul_f32(v1238, v1238);
            v1240 = vadd_f32(vzip2_s32(v1233, v1239), vzip1_s32(v1233, v1239));
            v1142 = v1176;
            if (vcgt_f32(vdup_lane_s32(v1240, 1), v1240).u32[0])
            {
              break;
            }
          }
        }

        else
        {
          v1142 = v1176;
          if (v1211 < v1212)
          {
            break;
          }
        }
      }

      *v1176 = v1144;
      v10 = v1638;
      v9 = a1;
      v1107 = v1636;
    }

LABEL_1058:
    v1106 = v1107 - 1;
    if (v1107)
    {
      continue;
    }

    break;
  }

  do
  {
    v1241 = 0;
    v1242 = a1;
    v1637 = a1->i64[0];
    v1639 = v10;
    do
    {
      v1243 = &v1242[v1241];
      v1244 = v1243 + 1;
      v1245 = (2 * v1241) | 1;
      v1246 = 2 * v1241 + 2;
      if (v1246 >= v11)
      {
        v1241 = (2 * v1241) | 1;
      }

      else
      {
        v1249 = v1243[2];
        v1248 = v1243 + 2;
        v1247 = v1249;
        v1250 = *(v1248 - 1);
        v1251 = *(v1250 + 1297);
        v1252 = *(v1249 + 1297);
        if (v1251 == v1252)
        {
          v1253 = 0;
          v1254 = 0;
          while (1)
          {
            v1255 = *(v1250 + v1254 + 172);
            if (v1255 < a3->f32[v1254])
            {
              break;
            }

            v1256 = v7->f32[v1254];
            v1254 = 1;
            v1257 = (v1255 < v1256) & ~v1253;
            v1253 = 1;
            if ((v1257 & 1) == 0)
            {
              v1258 = v1255 < v1256;
              goto LABEL_1069;
            }
          }

          v1258 = 0;
LABEL_1069:
          v1260 = 0;
          v1261 = 0;
          while (1)
          {
            v1262 = *(v1247 + v1261 + 172);
            if (v1262 < a3->f32[v1261])
            {
              break;
            }

            v1263 = v7->f32[v1261];
            v1261 = 1;
            v1264 = (v1262 < v1263) & ~v1260;
            v1260 = 1;
            if ((v1264 & 1) == 0)
            {
              v1265 = v1262 < v1263;
              goto LABEL_1074;
            }
          }

          v1265 = 0;
LABEL_1074:
          if (*(v1250 + 844) == 2)
          {
            v1259 = v1258;
          }

          else
          {
            v1259 = 0;
          }

          if (*(v1247 + 844) == 2)
          {
            v1266 = v1265;
          }

          else
          {
            v1266 = 0;
          }

          if (((v1259 | v1266) & 1) == 0 || ((v1259 ^ v1266) & 1) == 0)
          {
            LOBYTE(v1259) = v1258;
            if (v1258 == v1265)
            {
              v1267.f32[0] = md::Label::boundsForStaging(v1250);
              v1269.i32[1] = v1268;
              v1267.i32[1] = v1270;
              v1271 = vmla_f32(vsub_f32(a3[2], v1267), 0xBF000000BF000000, vsub_f32(v1269, v1267));
              v1272 = vmul_f32(v1271, v1271);
              v1273.f32[0] = md::Label::boundsForStaging(v1247);
              v1275.i32[1] = v1274;
              v1273.i32[1] = v1276;
              v1277 = vmla_f32(vsub_f32(a3[2], v1273), 0xBF000000BF000000, vsub_f32(v1275, v1273));
              v1278 = vmul_f32(v1277, v1277);
              v1279 = vadd_f32(vzip2_s32(v1272, v1278), vzip1_s32(v1272, v1278));
              LOBYTE(v1259) = vcgt_f32(vdup_lane_s32(v1279, 1), v1279).u8[0];
            }
          }
        }

        else
        {
          LOBYTE(v1259) = v1251 < v1252;
        }

        if (v1259)
        {
          v1244 = v1248;
          v1241 = v1246;
        }

        else
        {
          v1241 = v1245;
        }
      }

      *v1242 = *v1244;
      v1242 = v1244;
    }

    while (v1241 <= ((v11 - 2) >> 1));
    v10 = v1639 - 1;
    if (v1244 == (v1639 - 1))
    {
      *v1244 = v1637;
    }

    else
    {
      *v1244 = *v10;
      *v10 = v1637;
      v1280 = (v1244 - a1 + 8) >> 3;
      v1281 = v1280 < 2;
      v1282 = v1280 - 2;
      if (!v1281)
      {
        v1283 = v1282 >> 1;
        v1284 = &a1->i8[8 * (v1282 >> 1)];
        v1285 = *v1284;
        v1286 = *v1244;
        v1287 = *(*v1284 + 1297);
        v1288 = *(*v1244 + 1297);
        if (v1287 == v1288)
        {
          v1289 = 0;
          v1290 = 0;
          while (1)
          {
            v1291 = *(v1285 + v1290 + 172);
            if (v1291 < a3->f32[v1290])
            {
              break;
            }

            v1292 = v7->f32[v1290];
            v1290 = 1;
            v1293 = (v1291 < v1292) & ~v1289;
            v1289 = 1;
            if ((v1293 & 1) == 0)
            {
              v1294 = v1291 < v1292;
              goto LABEL_1099;
            }
          }

          v1294 = 0;
LABEL_1099:
          v1295 = 0;
          v1296 = 0;
          while (1)
          {
            v1297 = *(v1286 + v1296 + 172);
            if (v1297 < a3->f32[v1296])
            {
              break;
            }

            v1298 = v7->f32[v1296];
            v1296 = 1;
            v1299 = (v1297 < v1298) & ~v1295;
            v1295 = 1;
            if ((v1299 & 1) == 0)
            {
              v1300 = v1297 < v1298;
              goto LABEL_1104;
            }
          }

          v1300 = 0;
LABEL_1104:
          if (*(v1285 + 844) == 2)
          {
            v1301 = v1294;
          }

          else
          {
            v1301 = 0;
          }

          if (*(v1286 + 844) == 2)
          {
            v1302 = v1300;
          }

          else
          {
            v1302 = 0;
          }

          if (((v1301 | v1302) & 1) != 0 && ((v1301 ^ v1302) & 1) != 0 || (v1301 = v1294, v1294 != v1300))
          {
            if (v1301)
            {
              goto LABEL_1117;
            }
          }

          else
          {
            v1303.f32[0] = md::Label::boundsForStaging(v1285);
            v1305.i32[1] = v1304;
            v1303.i32[1] = v1306;
            v1307 = vmla_f32(vsub_f32(a3[2], v1303), 0xBF000000BF000000, vsub_f32(v1305, v1303));
            v1308 = vmul_f32(v1307, v1307);
            v1309.f32[0] = md::Label::boundsForStaging(v1286);
            v1311.i32[1] = v1310;
            v1309.i32[1] = v1312;
            v1313 = vmla_f32(vsub_f32(a3[2], v1309), 0xBF000000BF000000, vsub_f32(v1311, v1309));
            v1314 = vmul_f32(v1313, v1313);
            v1315 = vadd_f32(vzip2_s32(v1308, v1314), vzip1_s32(v1308, v1314));
            if (vcgt_f32(vdup_lane_s32(v1315, 1), v1315).u32[0])
            {
              v1286 = *v1244;
LABEL_1117:
              while (1)
              {
                v1316 = v1284;
                *v1244 = *v1284;
                if (!v1283)
                {
                  break;
                }

                v1283 = (v1283 - 1) >> 1;
                v1284 = &a1->i8[8 * v1283];
                v1317 = *v1284;
                v1318 = *(*v1284 + 1297);
                v1319 = *(v1286 + 1297);
                if (v1318 == v1319)
                {
                  v1320 = 0;
                  v1321 = 0;
                  while (1)
                  {
                    v1322 = *(v1317 + v1321 + 172);
                    if (v1322 < a3->f32[v1321])
                    {
                      break;
                    }

                    v1323 = v7->f32[v1321];
                    v1321 = 1;
                    v1324 = (v1322 < v1323) & ~v1320;
                    v1320 = 1;
                    if ((v1324 & 1) == 0)
                    {
                      v1325 = v1322 < v1323;
                      goto LABEL_1126;
                    }
                  }

                  v1325 = 0;
LABEL_1126:
                  v1326 = 0;
                  v1327 = 0;
                  while (1)
                  {
                    v1328 = *(v1286 + v1327 + 172);
                    if (v1328 < a3->f32[v1327])
                    {
                      break;
                    }

                    v1329 = v7->f32[v1327];
                    v1327 = 1;
                    v1330 = (v1328 < v1329) & ~v1326;
                    v1326 = 1;
                    if ((v1330 & 1) == 0)
                    {
                      v1331 = v1328 < v1329;
                      goto LABEL_1131;
                    }
                  }

                  v1331 = 0;
LABEL_1131:
                  if (*(v1317 + 844) == 2)
                  {
                    v1332 = v1325;
                  }

                  else
                  {
                    v1332 = 0;
                  }

                  if (*(v1286 + 844) == 2)
                  {
                    v1333 = v1331;
                  }

                  else
                  {
                    v1333 = 0;
                  }

                  if (((v1332 | v1333) & 1) != 0 && ((v1332 ^ v1333) & 1) != 0 || (LOBYTE(v1332) = v1325, v1325 != v1331))
                  {
                    v1244 = v1316;
                    if ((v1332 & 1) == 0)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v1334.f32[0] = md::Label::boundsForStaging(v1317);
                    v1336.i32[1] = v1335;
                    v1334.i32[1] = v1337;
                    v1338 = vmla_f32(vsub_f32(a3[2], v1334), 0xBF000000BF000000, vsub_f32(v1336, v1334));
                    v1339 = vmul_f32(v1338, v1338);
                    v1340.f32[0] = md::Label::boundsForStaging(v1286);
                    v1342.i32[1] = v1341;
                    v1340.i32[1] = v1343;
                    v1344 = vmla_f32(vsub_f32(a3[2], v1340), 0xBF000000BF000000, vsub_f32(v1342, v1340));
                    v1345 = vmul_f32(v1344, v1344);
                    v1346 = vadd_f32(vzip2_s32(v1339, v1345), vzip1_s32(v1339, v1345));
                    v1244 = v1316;
                    if ((vcgt_f32(vdup_lane_s32(v1346, 1), v1346).u32[0] & 1) == 0)
                    {
                      break;
                    }
                  }
                }

                else
                {
                  v1244 = v1316;
                  if (v1318 >= v1319)
                  {
                    break;
                  }
                }
              }

              *v1316 = v1286;
              v10 = v1639 - 1;
            }
          }
        }

        else if (v1287 < v1288)
        {
          goto LABEL_1117;
        }
      }
    }

    v1281 = v11-- <= 2;
  }

  while (!v1281);
}