void geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A05BB8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A05BB8;

  return a1;
}

uint64_t md::Logic<md::AnchorLogic,md::AnchorContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext>,gdc::TypeList<md::NavigationContext>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x63B6FE00C0848868 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext>,gdc::TypeList<md::NavigationContext>>::resolveDependencies(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::AnchorContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::AnchorContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A05BD8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0x20C40A4A59CD2);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::AnchorContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A05BD8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x20C40A4A59CD2);
  }

  return a1;
}

void md::AnchorLogic::~AnchorLogic(md::AnchorLogic *this)
{
  md::AnchorLogic::~AnchorLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A05930;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  md::AnchorLogic::_resetExternalAnchors(*(this + 25));
  if (*(this + 26))
  {
    std::__hash_table<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,std::hash<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::equal_to<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::allocator<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>>::__deallocate_node(*(this + 25));
    *(this + 25) = 0;
    v3 = *(this + 24);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*(this + 23) + 8 * i) = 0;
      }
    }

    *(this + 26) = 0;
  }

  std::__hash_table<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,std::hash<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::equal_to<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::allocator<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>>::~__hash_table(this + 184);
  v5 = *(this + 22);
  *(this + 22) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  std::unique_ptr<md::MercatorTerrainHeightCache>::reset[abi:nn200100](this + 21, 0);
  std::unique_ptr<md::MercatorTerrainHeightCache>::reset[abi:nn200100](this + 20, 0);
  v6 = *(this + 18);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 16);
  *(this + 16) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

void sub_1B2E3B150(_Unwind_Exception *a1)
{
  std::__hash_table<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,std::hash<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::equal_to<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::allocator<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>>::~__hash_table(v1 + 184);
  v3 = *(v1 + 176);
  *(v1 + 176) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  std::unique_ptr<md::MercatorTerrainHeightCache>::reset[abi:nn200100]((v1 + 168), 0);
  std::unique_ptr<md::MercatorTerrainHeightCache>::reset[abi:nn200100]((v1 + 160), 0);
  v4 = *(v1 + 144);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 128);
  *(v1 + 128) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,std::hash<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::equal_to<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::allocator<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,std::hash<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::equal_to<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::allocator<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,std::hash<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::equal_to<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>,std::allocator<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>>>::__deallocate_node(void (***a1)(void))
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      (*v1[2])();
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__shared_ptr_pointer<md::MercatorAnchor *,std::shared_ptr<md::Anchor>::__shared_ptr_default_delete<md::Anchor,md::MercatorAnchor>,std::allocator<md::MercatorAnchor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_pointer<md::MercatorTerrainAnchor *,std::shared_ptr<md::Anchor>::__shared_ptr_default_delete<md::Anchor,md::MercatorTerrainAnchor>,std::allocator<md::MercatorTerrainAnchor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::GlobeMercatorAnchor *,std::shared_ptr<md::Anchor>::__shared_ptr_default_delete<md::Anchor,md::GlobeMercatorAnchor>,std::allocator<md::GlobeMercatorAnchor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::GlobeMercatorAnchor *,std::shared_ptr<md::Anchor>::__shared_ptr_default_delete<md::Anchor,md::GlobeMercatorAnchor>,std::allocator<md::GlobeMercatorAnchor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::GlobeMercatorTerrainAnchor *,std::shared_ptr<md::Anchor>::__shared_ptr_default_delete<md::Anchor,md::GlobeMercatorTerrainAnchor>,std::allocator<md::GlobeMercatorTerrainAnchor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::GlobeMercatorTerrainAnchor *,std::shared_ptr<md::Anchor>::__shared_ptr_default_delete<md::Anchor,md::GlobeMercatorTerrainAnchor>,std::allocator<md::GlobeMercatorTerrainAnchor>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::AnchorReleaseQueue>::__on_zero_shared(uint64_t a1)
{
  std::mutex::~mutex((a1 + 48));
  v3 = *(a1 + 24);
  v2 = (a1 + 24);
  if (v3)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](v2);
    v4 = *v2;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<md::AnchorReleaseQueue>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A05B80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::unique_ptr<std::__hash_node<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      (*v2[2])();
    }

    operator delete(v2);
  }

  return a1;
}

void *geo::_retain_ptr<VKAnchorWrapper * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,md::_equal_objc_ptr>::_retain_ptr(void *a1, void *a2)
{
  v3 = a2;
  *a1 = off_1F2A05BB8;
  a1[1] = v3;
  return a1;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture *>(uint64_t a1, void *a2)
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

void ggl::DownscaleTextureComputeShaderState::~DownscaleTextureComputeShaderState(ggl::DownscaleTextureComputeShaderState *this)
{
  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<md::mun::CollectionPoint>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::vector<md::mun::CollectionPoint>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2328A701194539)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::CollectionPoint>>(a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void md::mun::MuninMetadata::~MuninMetadata(md::mun::MuninMetadata *this)
{
  md::mun::MuninMetadata::~MuninMetadata(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A05C40;
  v2 = *(this + 41);
  if (v2)
  {
    *(this + 42) = v2;
    operator delete(v2);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 256);
  v4 = (this + 232);
  std::vector<md::mun::StorefrontBundle>::__destroy_vector::operator()[abi:nn200100](&v4);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 192);
  v4 = (this + 168);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v4);
  *this = &unk_1F2A60328;
  v3 = *(this + 4);
  if (v3 != *(this + 6))
  {
    free(v3);
  }
}

uint64_t md::mun::MuninMetadata::MuninMetadata(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = gdc::LayerData::LayerData(a1, a2);
  *v8 = &unk_1F2A05C40;
  v8[22] = 0;
  v8[23] = 0;
  v8[21] = 0;
  std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>((v8 + 21), *a3, a3[1], 0x63FB9AEB1FDCD759 * ((a3[1] - *a3) >> 3));
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1065353216;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  v9 = a4[1];
  if (v9 != *a4)
  {
    v10 = 0xCF3CF3CF3CF3CF3DLL * ((v9 - *a4) >> 3);
    if (v10 < 0x186186186186187)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::StorefrontBundle>>(v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(a1 + 256) = 0uLL;
  *(a1 + 272) = 0uLL;
  *(a1 + 288) = 1065353216;
  *(a1 + 296) = 255;
  *(a1 + 304) = 0;
  *(a1 + 300) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1 + 192, vcvtps_u32_f32((0x63FB9AEB1FDCD759 * ((*(a1 + 176) - *(a1 + 168)) >> 3)) / 1.0));
  v11 = *(a1 + 168);
  if (*(a1 + 176) != v11)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v53[0] = v11 + v12;
      *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 192), *(v11 + v12)) + 12) = v13++;
      v11 = *(a1 + 168);
      v12 += 1864;
    }

    while (v13 < 0x63FB9AEB1FDCD759 * ((*(a1 + 176) - v11) >> 3));
  }

  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1 + 256, vcvtps_u32_f32((0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 240) - *(a1 + 232)) >> 3)) / *(a1 + 288)));
  v14 = *(a1 + 232);
  if (*(a1 + 240) != v14)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v53[0] = v14 + v15;
      *(std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 256), *(v14 + v15)) + 12) = v16++;
      v14 = *(a1 + 232);
      v15 += 168;
    }

    while (v16 < 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 240) - v14) >> 3));
  }

  v17 = *(a2 + 16);
  Int32 = gdc::ResourceKey::getInt32(v17, 2u);
  v19 = gdc::ResourceKey::getInt32(v17, 1u);
  v20 = gdc::ResourceKey::getInt32(v17, 0);
  *(a1 + 296) = -1;
  *(a1 + 297) = Int32;
  *(a1 + 300) = v19;
  *(a1 + 304) = v20;
  *(a1 + 312) = 0;
  *(a1 + 320) = 1;
  bzero(v53, 0x960uLL);
  v21 = *(a1 + 168);
  v22 = *(a1 + 176);
  if (v21 == v22)
  {
    v40 = *(a1 + 168);
  }

  else
  {
    do
    {
      v23 = 1 << *(a1 + 297);
      v24 = -1.0 / v23;
      v25 = (*(v21 + 56) + v24 * *(a1 + 304)) * v23;
      v26 = (*(v21 + 64) + v24 * (v23 + ~*(a1 + 300))) * v23;
      v27 = (v25 * 10.0);
      if (v27 >= 9)
      {
        v27 = 9;
      }

      v28 = v27 & ~(v27 >> 31);
      v29 = (v26 * 10.0);
      if (v29 >= 9)
      {
        v29 = 9;
      }

      v30 = &v53[30 * (v29 & ~(v29 >> 31)) + 3 * v28];
      v32 = v30[1];
      v31 = v30[2];
      if (v32 >= v31)
      {
        v34 = *v30;
        v35 = v32 - *v30;
        v36 = (v35 >> 3) + 1;
        if (v36 >> 61)
        {
          goto LABEL_45;
        }

        v37 = v31 - v34;
        if (v37 >> 2 > v36)
        {
          v36 = v37 >> 2;
        }

        if (v37 >= 0x7FFFFFFFFFFFFFF8)
        {
          v38 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v38);
        }

        v39 = (8 * (v35 >> 3));
        *v39 = v21;
        v33 = v39 + 1;
        memcpy(0, v34, v35);
        *v30 = 0;
        v30[2] = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v32 = v21;
        v33 = v32 + 1;
      }

      v30[1] = v33;
      v21 += 1864;
    }

    while (v21 != v22);
    v21 = *(a1 + 168);
    v40 = *(a1 + 176);
  }

  v41 = 0x63FB9AEB1FDCD759 * ((v40 - v21) >> 3);
  if (v41 > (*(a1 + 344) - *(a1 + 328)) >> 3)
  {
    if (!(v41 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<md::MuninRoadEdge const*>>(v41);
    }

LABEL_45:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  for (i = 0; i != 10; ++i)
  {
    v43 = 0;
    v44 = 10 * i;
    do
    {
      *(a1 + 352 + 2 * (v43 + v44)) = (*(a1 + 336) - *(a1 + 328)) >> 3;
      v45 = &v53[3 * v43 + 3 * v44];
      v46 = *v45;
      v47 = v45[1];
      while (v46 != v47)
      {
        v48 = *v46++;
        v52 = v48;
        std::vector<md::mun::CollectionPoint const*>::push_back[abi:nn200100](a1 + 328, &v52);
      }

      ++v43;
    }

    while (v43 != 10);
  }

  v49 = 300;
  do
  {
    v50 = v53[v49 - 3];
    if (v50)
    {
      v53[v49 - 2] = v50;
      operator delete(v50);
    }

    v49 -= 3;
  }

  while (v49 * 8);
  return a1;
}

unint64_t md::mun::MuninMetadata::_searchBounds(uint64_t a1, double a2, double a3, double a4)
{
  v8 = exp(a3 * 6.28318531 + -3.14159265);
  v9 = atan(v8);
  v10 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v9 * 114.591559 + -90.0) * a4;
  v11 = 1 << *(a1 + 297);
  v12 = 1.0 / v11;
  v13 = (a2 - v10 - *(a1 + 304) * v12) * v11;
  *&v10 = (a3 - v10 - (v11 + ~*(a1 + 300)) * v12) * v11;
  return (v13 * 10.0) & ~((v13 * 10.0) >> 31) | (((*&v10 * 10.0) & ~((*&v10 * 10.0) >> 31)) << 32);
}

void md::mun::MuninMetadata::neighborsWithinRadius(uint64_t a1, float64x2_t *a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = a2->f64[1];
  v11 = md::mun::MuninMetadata::_searchBounds(a1, a2->f64[0], v10, a5);
  v13 = v12;
  v14 = exp(v10 * 6.28318531 + -3.14159265);
  v15 = atan(v14);
  v16 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v15 * 114.591559 + -90.0);
  v41 = v13;
  v42 = v11;
  if (SHIDWORD(v11) <= SHIDWORD(v13))
  {
    v17 = v16 * v16;
    v18 = a5 * a5 * v17;
    v19 = a1 + 352;
    v43 = v13 + 1;
    v45 = v11 >> 32;
    v40 = HIDWORD(v13) + 1;
    v20 = 1.0 / v17;
    v46 = a3;
    do
    {
      if (v42 <= v41)
      {
        v44 = 10 * v45;
        v21 = v42;
        do
        {
          v22 = *(v19 + 2 * (v44 + v21));
          v24 = v45 == 9 && v21 == 9;
          if (v24)
          {
LABEL_12:
            v25 = (*(a1 + 336) - *(a1 + 328)) >> 3;
            goto LABEL_14;
          }

          while (1)
          {
            v25 = *(v19 + 2 * (v44 + v21 + 1));
LABEL_14:
            if (v22 >= v25)
            {
              break;
            }

            v26 = *(a1 + 328);
            if (v22 >= (*(a1 + 336) - v26) >> 3)
            {
              break;
            }

            v47 = *(v26 + 8 * v22);
            v27 = vsubq_f64(*(v47 + 56), *a2);
            v28 = vaddvq_f64(vmulq_f64(v27, v27));
            if (v28 <= v18)
            {
              std::vector<md::mun::CollectionPoint const*>::push_back[abi:nn200100](a3, &v47);
              if (a4)
              {
                v29 = v28 * v20;
                v31 = *(a4 + 8);
                v30 = *(a4 + 16);
                if (v31 >= v30)
                {
                  v33 = *a4;
                  v34 = v31 - *a4;
                  v35 = v34 >> 3;
                  v36 = (v34 >> 3) + 1;
                  if (v36 >> 61)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v37 = v30 - v33;
                  if (v37 >> 2 > v36)
                  {
                    v36 = v37 >> 2;
                  }

                  if (v37 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v38 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  if (v38)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v38);
                  }

                  *(8 * v35) = v29;
                  v32 = 8 * v35 + 8;
                  memcpy(0, v33, v34);
                  v39 = *a4;
                  *a4 = 0;
                  *(a4 + 8) = v32;
                  *(a4 + 16) = 0;
                  if (v39)
                  {
                    operator delete(v39);
                  }

                  v19 = a1 + 352;
                  a3 = v46;
                }

                else
                {
                  *v31 = v29;
                  v32 = (v31 + 1);
                }

                *(a4 + 8) = v32;
              }
            }

            ++v22;
            if (v24)
            {
              goto LABEL_12;
            }
          }

          ++v21;
        }

        while (v43 != v21);
      }

      ++v45;
    }

    while (v40 != v45);
  }
}

void md::mun::MuninMetadata::neighborsWithinRadius(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, double a5)
{
  v48 = 0.0;
  v49 = 0uLL;
  geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(a2, &v48);
  v46 = *&v49;
  v10 = tan(v48 * 0.5 + 0.785398163);
  v11 = log(v10);
  v12.f64[0] = v46;
  v12.f64[1] = v11;
  __asm { FMOV            V0.2D, #0.5 }

  v17 = vmlaq_f64(_Q0, vdupq_n_s64(0x3FC45F306DC9C883uLL), v12);
  v18 = md::mun::MuninMetadata::_searchBounds(a1, v17.f64[0], v17.f64[1], a5);
  v41 = v19;
  v42 = v18;
  if (SHIDWORD(v18) <= SHIDWORD(v19))
  {
    v20 = a1 + 352;
    v21 = a5 * a5;
    v43 = v19 + 1;
    v45 = v18 >> 32;
    v40 = HIDWORD(v19) + 1;
    v47 = a3;
    do
    {
      if (v42 <= v41)
      {
        v44 = 10 * v45;
        v22 = v42;
        do
        {
          v23 = *(v20 + 2 * (v44 + v22));
          v25 = v45 == 9 && v22 == 9;
          if (v25)
          {
LABEL_12:
            v26 = (*(a1 + 336) - *(a1 + 328)) >> 3;
            goto LABEL_14;
          }

          while (1)
          {
            v26 = *(v20 + 2 * (v44 + v22 + 1));
LABEL_14:
            if (v23 >= v26)
            {
              break;
            }

            v27 = *(a1 + 328);
            if (v23 >= (*(a1 + 336) - v27) >> 3)
            {
              break;
            }

            v48 = *(v27 + 8 * v23);
            v28 = gm::Matrix<double,3,1>::distanceSquaredToPoint<int,void>(*&v48 + 8, a2);
            if (v28 <= v21)
            {
              v29 = v28;
              std::vector<md::mun::CollectionPoint const*>::push_back[abi:nn200100](a3, &v48);
              if (a4)
              {
                v31 = *(a4 + 8);
                v30 = *(a4 + 16);
                if (v31 >= v30)
                {
                  v33 = *a4;
                  v34 = v31 - *a4;
                  v35 = v34 >> 3;
                  v36 = (v34 >> 3) + 1;
                  if (v36 >> 61)
                  {
                    std::__throw_bad_array_new_length[abi:nn200100]();
                  }

                  v37 = v30 - v33;
                  if (v37 >> 2 > v36)
                  {
                    v36 = v37 >> 2;
                  }

                  if (v37 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v38 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  if (v38)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v38);
                  }

                  *(8 * v35) = v29;
                  v32 = 8 * v35 + 8;
                  memcpy(0, v33, v34);
                  v39 = *a4;
                  *a4 = 0;
                  *(a4 + 8) = v32;
                  *(a4 + 16) = 0;
                  if (v39)
                  {
                    operator delete(v39);
                  }

                  v20 = a1 + 352;
                  a3 = v47;
                }

                else
                {
                  *v31 = v29;
                  v32 = (v31 + 1);
                }

                *(a4 + 8) = v32;
              }
            }

            ++v23;
            if (v25)
            {
              goto LABEL_12;
            }
          }

          ++v22;
        }

        while (v43 != v22);
      }

      ++v45;
    }

    while (v40 != v45);
  }
}

uint64_t md::ARArrivalExternalMeshLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 576);
  if (v3)
  {
    v4 = 37;
  }

  else
  {
    v4 = 26;
  }

  if (v3)
  {
    *(v3 + 120) = *(a1 + 608);
    *(v3 + 168) = *(*(a1 + 16) + 1144);
    md::ARArrivalExternalMeshLabelPart::collisionInfoFromTransform(v3, a2 + 432, (v3 + 32), a1 + 632, (a1 + 616));
    v5 = 0;
    v6 = *(a1 + 576);
    v7 = (a1 + 688);
    do
    {
      *(v7 + v5) = *(v6 + 8 + v5);
      v5 += 4;
    }

    while (v5 != 12);
    v8 = 0;
    v9 = (a1 + 700);
    do
    {
      *(v9 + v8) = *(v6 + 20 + v8);
      v8 += 4;
    }

    while (v8 != 12);
    geo::Transform<double>::toMatrix(v18, (v6 + 32));
    v10 = v18[5];
    *(a1 + 776) = v18[4];
    *(a1 + 792) = v10;
    v11 = v18[7];
    *(a1 + 808) = v18[6];
    *(a1 + 824) = v11;
    v12 = v18[1];
    *(a1 + 712) = v18[0];
    *(a1 + 728) = v12;
    v13 = v18[3];
    *(a1 + 744) = v18[2];
    *(a1 + 760) = v13;
    md::CollisionObject::resetWithRects((a1 + 312), 1u);
    md::CollisionObject::addRect(a1 + 312, (a1 + 632));
    v14 = *(a1 + 616);
    *(a1 + 520) = v14;
    v15 = *(a1 + 620);
    *(a1 + 524) = v15;
    *(a1 + 344) = v14;
    *(a1 + 348) = v15;
    md::CollisionObject::setupShapeData(a1 + 312);
    v16 = (a1 + 440);
    if (*(a1 + 464) == 1)
    {
      *v16 = *v7;
      *(a1 + 448) = *(a1 + 696);
      *(a1 + 452) = *v9;
      *(a1 + 460) = *(a1 + 708);
    }

    else
    {
      *v16 = *v7;
      *(a1 + 456) = *(a1 + 704);
      *(a1 + 464) = 1;
    }

    *(a1 + 424) = a1 + 712;
    return 37;
  }

  return v4;
}

void md::ARArrivalExternalMeshLabelPart::collisionInfoFromTransform(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = 0;
  v21[4] = *MEMORY[0x1E69E9840];
  do
  {
    *(v17 + v8 + 2) = *(a1 + 8 + 4 * v8);
    ++v8;
  }

  while (v8 != 3);
  v9 = (a1 + 20);
  for (i = 24; i != 48; i += 8)
  {
    v11 = *v9++;
    *(v17 + i + 16) = v11;
  }

  geo::Transform<double>::toMatrix(&v18, a3);
  v17[0] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v17[1] = xmmword_1B33B0520;
  v17[2] = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v21[0] = &unk_1F2A61070;
  v21[1] = v17;
  v21[2] = &v18;
  v21[3] = v21;
  gm::Box<double,3>::forEachCorner(&v16, v21);
  std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](v21);
  v16 = xmmword_1B33B0730;
  v18.i64[0] = &unk_1F29E3380;
  v18.i64[1] = a2;
  v19 = &v16;
  v20 = &v18;
  gm::Box<double,3>::forEachCorner(v17, &v18);
  std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](&v18);
  v12.i64[1] = *(&v16 + 1);
  v18 = v16;
  *v12.f32 = vmla_f32(*&v16, 0x3F0000003F000000, vsub_f32(*&vextq_s8(v18, v18, 8uLL), *&v16));
  *a5 = v12.i64[0];
  *a4 = gm::Box<float,2>::operator-(&v18, v12);
  *(a4 + 4) = v13;
  *(a4 + 8) = v14;
  *(a4 + 12) = v15;
}

double md::ARArrivalExternalMeshLabelPart::updateForDisplay(md::ARArrivalExternalMeshLabelPart *this)
{
  *(this + 78) = *(this + 77);
  *(this + 648) = *(this + 632);
  *(this + 83) = *(this + 86);
  *(this + 168) = *(this + 174);
  *(this + 171) = *(this + 177);
  *(this + 676) = *(this + 700);
  v1 = (this + 840);
  v2 = 16;
  do
  {
    *v1 = *(v1 - 8);
    ++v1;
    v2 -= 2;
  }

  while (v2);
  result = *(*(this + 2) + 792);
  *(this + 76) = result;
  return result;
}

uint64_t md::ARArrivalExternalMeshLabelPart::layoutForStaging(uint64_t a1, uint64_t a2)
{
  result = md::ExternalMeshLabelPart::layoutForStaging(a1);
  if (result == 37)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(a1 + 656 + 4 * v6);
      v8 = *(a1 + 648 + 4 * v6);
      if (v5)
      {
        break;
      }

      v5 = 1;
      v6 = 1;
    }

    while (v7 >= v8);
    if (v7 < v8)
    {
      md::ARArrivalExternalMeshLabelPart::collisionInfoFromTransform(*(a1 + 576), *(a2 + 424), (*(a1 + 592) + 16), a1 + 648, (a1 + 624));
    }

    md::CollisionObject::resetWithRects((a1 + 72), 1u);
    md::CollisionObject::addRect(a1 + 72, (a1 + 648));
    v9 = *(a1 + 624);
    *(a1 + 280) = v9;
    v10 = *(a1 + 628);
    *(a1 + 284) = v10;
    *(a1 + 104) = v9;
    *(a1 + 108) = v10;
    md::CollisionObject::setupShapeData(a1 + 72);
    v11 = (a1 + 664);
    if (*(a1 + 224) == 1)
    {
      *(a1 + 200) = *v11;
      *(a1 + 208) = *(a1 + 672);
      *(a1 + 220) = *(a1 + 684);
      *(a1 + 212) = *(a1 + 676);
    }

    else
    {
      *(a1 + 200) = *v11;
      *(a1 + 216) = *(a1 + 680);
      *(a1 + 224) = 1;
    }

    *(a1 + 184) = a1 + 840;
    return 37;
  }

  return result;
}

void md::ARArrivalExternalMeshLabelPart::~ARArrivalExternalMeshLabelPart(md::ARArrivalExternalMeshLabelPart *this)
{
  md::ExternalMeshLabelPart::~ExternalMeshLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void non-virtual thunk toggl::VertexDataTyped<ggl::FlyoverCommon::PolarVertex>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::FlyoverCommon::PolarVertex>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::FlyoverCommon::PolarVertex>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::FlyoverCommon::PolarVertex>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::FlyoverCommon::PolarVertex>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::FlyoverCommon::PolarVertex>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A06128;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::FlyoverCommon::PolarMesh::~PolarMesh(ggl::FlyoverCommon::PolarMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::FlyoverCommon::PolarMesh::~PolarMesh(ggl::FlyoverCommon::PolarMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::FlyoverCommon::PolarVertex>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::FlyoverCommon::PolarVertex>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void md::NavContext::worldPoint(md::NavContext *this, const md::LabelPoint *a2, double a3, float a4)
{
  v5 = *(a2 + 10);
  if (v5 == 3.4028e38)
  {
    v5 = 0.0;
  }

  v6 = v5 * (a3 * a4);
  if (this)
  {
    md::LabelPoint::mercatorPoint(a2);
  }

  else
  {
    v7 = md::LabelPoint::geocentricPoint(a2);
    md::LabelPoint::geocentricPoint(v7);
    for (i = 0; i != 3; ++i)
    {
      *(&v17 + i * 8) = *&md::GeocentricNormal(geo::Geocentric<double> const&)::oneOverRadiiSquared[i] * *(a2 + i * 8);
    }

    v9 = gm::Matrix<double,3,1>::normalized<int,void>(&v17);
    v10 = 0;
    *v14 = v9;
    v14[1] = v11;
    v14[2] = v12;
    do
    {
      *(&v17 + v10 * 8) = *&v14[v10] * v6;
      ++v10;
    }

    while (v10 != 3);
    v13 = 0;
    v15 = v17;
    v16 = v18;
    do
    {
      *(&v17 + v13) = *(&v15 + v13) + *(a2 + v13);
      v13 += 8;
    }

    while (v13 != 24);
  }
}

void md::LineLabelFeature::debugString(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, unsigned int a4@<W3>, _BYTE *a5@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 4;
  strcpy(v8, "Road");
  v5 = md::LineLabelFeature::debugRoadString(a5, a1, a2, a3, a4, v8);
  if (v9 < 0)
  {
    v6 = *v8;
    v7 = mdm::zone_mallocator::instance(v5);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v7, v6);
  }
}

void sub_1B2E3D158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    v16 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v16, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::LineLabelFeature::debugRoadString(_BYTE *a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int a5, uint64_t a6)
{
  v198[19] = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v174);
  v11 = *(a3 + 464);
  v12 = *a4;
  *(v186.__r_.__value_.__r.__words + 4) = -1;
  LODWORD(v186.__r_.__value_.__l.__data_) = v12;
  HIDWORD(v186.__r_.__value_.__r.__words[1]) = -1;
  v186.__r_.__value_.__r.__words[2] = 0;
  v168 = a3;
  v166 = a5;
  md::LabelFeature::debugString(a2, a3, &v186, a5, __p);
  if (SHIBYTE(v188.__locale_) >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (SHIBYTE(v188.__locale_) >= 0)
  {
    locale_high = HIBYTE(v188.__locale_);
  }

  else
  {
    locale_high = __p[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, v13, locale_high);
  v167 = a4;
  if (SHIBYTE(v188.__locale_) < 0)
  {
    operator delete(__p[0]);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "  Style MinVisibleZoom=", 23);
  v15 = MEMORY[0x1B8C61C80](&v174, *(a2 + 137));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "  ", 2);
  v16 = *(a6 + 23);
  if (v16 >= 0)
  {
    v17 = a6;
  }

  else
  {
    v17 = *a6;
  }

  if (v16 >= 0)
  {
    v18 = *(a6 + 23);
  }

  else
  {
    v18 = *(a6 + 8);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, v17, v18);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, ":\n", 2);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "    layoutZ=", 12);
  v19 = MEMORY[0x1B8C61C80](&v174, v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, " pathZ=", 7);
  v20 = *(a2 + 192);
  v170 = (a2 + 192);
  v21 = md::LabelLineStore::lineSetIndexForZoom(v20, v11);
  if ((v21 & 0x80000000) != 0 || (v22 = *(v20 + 12)) == 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v22 + 112 * v21);
  }

  v24 = MEMORY[0x1B8C61C90](v19, v23);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, "\n", 1);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, " travelDir=", 11);
  v25 = *v170;
  v26 = md::LabelLineStore::lineCountForZoom(*v170, v11);
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v29 = 4;
    do
    {
      md::LabelLineStore::lineStartForZoom(__p, v25, v11, v28);
      while (md::LabelLinePosition::pointExists(__p))
      {
        v30 = md::LabelLinePosition::travelDirection(__p);
        v31 = v30;
        if (v29 != 4)
        {
          v31 = v29;
          if (v30 != v29)
          {
            v29 = 3;
            break;
          }
        }

        md::LabelLinePosition::moveToNextPoint(__p);
        v29 = v31;
      }

      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](__p[1]);
      }

      ++v28;
    }

    while (v28 != v27);
    v32 = off_1E7B35F28[v29];
  }

  else
  {
    v32 = "Invalid";
  }

  std::string::basic_string[abi:nn200100]<0>(&v186, v32);
  if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v186;
  }

  else
  {
    v33 = v186.__r_.__value_.__r.__words[0];
  }

  if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v186.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v186.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, v33, size);
  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v186.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "\n", 1);
  __val = *a4;
  std::ostringstream::basic_ostringstream[abi:nn200100](__p);
  v35 = *(v168 + 464);
  v36 = *(a2 + 224);
  v37 = (a2 + 232);
  if (v36 == (a2 + 232))
  {
    v38 = 0;
  }

  else
  {
    v38 = 0;
    do
    {
      v39 = v36[1];
      v40 = v36;
      if (v39)
      {
        do
        {
          v41 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        do
        {
          v41 = v40[2];
          v42 = *v41 == v40;
          v40 = v41;
        }

        while (!v42);
      }

      v38 += (*(v36[5] + 16) >> v35) & 1;
      v36 = v41;
    }

    while (v41 != v37);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "    Placements:count=", 21);
  v43 = MEMORY[0x1B8C61CB0](__p, *(a2 + 248));
  v44 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, " zCount=", 8);
  MEMORY[0x1B8C61CB0](v44, v38);
  if ((*(a2 + 212) >> v35))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, " [PositionsLimited]", 19);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "\n", 1);
  if (a5)
  {
    if (!*(a2 + 248))
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "No Line Placements\n", 19);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "Placements:\n", 12);
    v45 = *(a2 + 224);
    if (v45 != v37)
    {
      do
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "    [", 5);
        v46 = *(v45 + 8);
        if (v46)
        {
          std::to_string(&v186, v46);
          v47 = HIBYTE(v186.__r_.__value_.__r.__words[2]);
        }

        else
        {
          *(&v186.__r_.__value_.__s + 23) = 7;
          strcpy(&v186, "UNKNOWN");
          v47 = 7;
        }

        if ((v47 & 0x80u) == 0)
        {
          v48 = &v186;
        }

        else
        {
          v48 = v186.__r_.__value_.__r.__words[0];
        }

        if ((v47 & 0x80u) == 0)
        {
          v49 = v47;
        }

        else
        {
          v49 = v186.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, v48, v49);
        (*(*v45[5] + 216))(&v183);
        v50 = std::string::insert(&v183, 0, "]: ", 3uLL);
        v51 = *&v50->__r_.__value_.__l.__data_;
        v185 = v50->__r_.__value_.__r.__words[2];
        v184 = v51;
        v50->__r_.__value_.__l.__size_ = 0;
        v50->__r_.__value_.__r.__words[2] = 0;
        v50->__r_.__value_.__r.__words[0] = 0;
        if (v185 >= 0)
        {
          v52 = &v184;
        }

        else
        {
          v52 = v184;
        }

        if (v185 >= 0)
        {
          v53 = HIBYTE(v185);
        }

        else
        {
          v53 = *(&v184 + 1);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, v52, v53);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "\n", 1);
        if (SHIBYTE(v185) < 0)
        {
          operator delete(v184);
        }

        if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v183.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v186.__r_.__value_.__l.__data_);
        }

        v54 = v45[1];
        if (v54)
        {
          do
          {
            v55 = v54;
            v54 = *v54;
          }

          while (v54);
        }

        else
        {
          do
          {
            v55 = v45[2];
            v42 = *v55 == v45;
            v45 = v55;
          }

          while (!v42);
        }

        v45 = v55;
      }

      while (v55 != v37);
    }
  }

  md::LineLabelPlacer::positionForIdentifier(&v184, v170, __val);
  v56 = v184;
  v57 = v168;
  if (v184)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "Placement:", 10);
    if (__val)
    {
      std::to_string(&v186, __val);
      v58 = HIBYTE(v186.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v58 = 7;
      *(&v186.__r_.__value_.__s + 23) = 7;
      strcpy(&v186, "UNKNOWN");
    }

    if ((v58 & 0x80u) == 0)
    {
      v59 = &v186;
    }

    else
    {
      v59 = v186.__r_.__value_.__r.__words[0];
    }

    if ((v58 & 0x80u) == 0)
    {
      v60 = v58;
    }

    else
    {
      v60 = v186.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, v59, v60);
    if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v186.__r_.__value_.__l.__data_);
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, ":\n    ", 6);
    (*(*v56 + 216))(&v186, v56, v166);
    if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = &v186;
    }

    else
    {
      v61 = v186.__r_.__value_.__r.__words[0];
    }

    if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = HIBYTE(v186.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v62 = v186.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, v61, v62);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(__p, "\n", 1);
    if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v186.__r_.__value_.__l.__data_);
    }
  }

  if ((v197 & 0x10) != 0)
  {
    v64 = v196;
    if (v196 < v193)
    {
      v196 = v193;
      v64 = v193;
    }

    v65 = __src;
  }

  else
  {
    if ((v197 & 8) == 0)
    {
      v63 = 0;
      v173 = 0;
      goto LABEL_116;
    }

    v65 = v189;
    v64 = v191;
  }

  v63 = v64 - v65;
  if (v64 - v65 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_230;
  }

  if (v63 >= 0x17)
  {
    operator new();
  }

  v173 = v64 - v65;
  if (v63)
  {
    memmove(__dst, v65, v63);
  }

LABEL_116:
  *(__dst + v63) = 0;
  if (*(&v184 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v184 + 1));
  }

  v66 = *MEMORY[0x1E69E54E8];
  __p[0] = *MEMORY[0x1E69E54E8];
  v67 = *(MEMORY[0x1E69E54E8] + 24);
  *(__p + *(__p[0] - 3)) = v67;
  __p[1] = (MEMORY[0x1E69E5548] + 16);
  if (v195 < 0)
  {
    operator delete(v194);
  }

  __p[1] = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(&v188);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](v198);
  if ((v173 & 0x80u) == 0)
  {
    v68 = __dst;
  }

  else
  {
    v68 = __dst[0];
  }

  if ((v173 & 0x80u) == 0)
  {
    v69 = v173;
  }

  else
  {
    v69 = __dst[1];
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, v68, v69);
  if (v173 < 0)
  {
    operator delete(__dst[0]);
  }

  v70 = md::LineLabelFeature::roadMetricsForZ(a2, v11, *(v168 + 424));
  if (v70)
  {
    v71 = ldexp(1.0, v11);
    v72 = v174;
    *(&v174 + *(v174 - 24) + 8) = *(&v174 + *(v174 - 24) + 8) & 0xFFFFFEFB | 4;
    *(&v176[0].__locale_ + *(v72 - 24)) = 0;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "   ", 3);
    if (((*(*a2 + 344))(a2) & 1) == 0)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, " vis=", 5);
      MEMORY[0x1B8C61C50](&v174, *(v70 + 89));
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, " spacing(vis,rnk)=pts:", 22);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "text(", 5);
    v73 = MEMORY[0x1B8C61C50](&v174, *(v70 + 84));
    v74 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v73, ",", 1);
    v75 = MEMORY[0x1B8C61C80](v74, *(v70 + 90));
    v76 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v75, ")=", 2);
    v77 = v71 * 512.0;
    MEMORY[0x1B8C61C60](v76, *v70 * v77);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, " shield(", 8);
    v78 = MEMORY[0x1B8C61C50](&v174, *(v70 + 86));
    v79 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v78, ",", 1);
    v80 = MEMORY[0x1B8C61C80](v79, *(v70 + 91));
    v81 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v80, ")=", 2);
    MEMORY[0x1B8C61C60](v81, *(v70 + 2) * v77);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, " arrow(", 7);
    v82 = MEMORY[0x1B8C61C50](&v174, *(v70 + 87));
    v83 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v82, ")=", 2);
    MEMORY[0x1B8C61C60](v83, *(v70 + 1) * v77);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "\n", 1);
  }

  if (*(a2 + 360) != *(a2 + 352))
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "    Shields:", 12);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "cnt=", 4);
    MEMORY[0x1B8C61CB0](&v174, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 360) - *(a2 + 352)) >> 4));
    v84 = *(a2 + 352);
    for (i = *(a2 + 360); v84 != i; v84 += 3)
    {
      LOBYTE(v189) = *(v84 + 24);
      if (*(v84 + 23) < 0)
      {
        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(__p, *v84, *(v84 + 1));
      }

      else
      {
        v86 = *v84;
        v188.__locale_ = *(v84 + 2);
        *__p = v86;
      }

      v190 = *(v84 + 4);
      LODWORD(v191) = *(v84 + 10);
      BYTE4(v191) = *(v84 + 44);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, " ", 1);
      if (SHIBYTE(v188.__locale_) >= 0)
      {
        v87 = __p;
      }

      else
      {
        v87 = __p[0];
      }

      if (SHIBYTE(v188.__locale_) >= 0)
      {
        v88 = HIBYTE(v188.__locale_);
      }

      else
      {
        v88 = __p[1];
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, v87, v88);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "(", 1);
      v89 = MEMORY[0x1B8C61CE0](&v174, v190);
      v90 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v89, ")", 1);
      if (SHIBYTE(v188.__locale_) < 0)
      {
        v91 = __p[0];
        v92 = mdm::zone_mallocator::instance(v90);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v92, v91);
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, "\n", 1);
    v57 = v168;
  }

  v159 = v66;
  v160 = v67;
  v162 = *v170;
  v93 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"SSLPM:\n"];
  v94 = md::LabelLineStore::lineSetIndexForZoom(v162, *(v57 + 464));
  v95 = v167;
  if ((v94 & 0x80000000) == 0)
  {
    v96 = *(v162 + 12) + 112 * v94;
    v97 = *(v96 + 80);
    v98 = *(v96 + 88);
    v99 = (v96 + 80);
    [v93 appendFormat:@" LabelLineCount=%i\n", (v98 - v97) >> 3];
    v100 = v166 ? 100 : 4;
    v101 = *v99;
    if (v99[1] != *v99)
    {
      v102 = 0;
      v103 = 0;
      v158 = v100 | 1;
      v163 = v100;
      *__vala = v99;
      do
      {
        v104 = v95[1];
        v169 = v103;
        if ((v166 & 1) != 0 || v103 == v104)
        {
          [v93 appendFormat:@" LabelLine[%i] segments=%i", v103, (*(*(v101 + 8 * v103) + 16) - *(*(v101 + 8 * v103) + 8)) >> 4];
          if (v103 == v104)
          {
            [v93 appendFormat:@" (SELECTED) segment[%i]\n", v95[2]];
            v105 = *(v101 + 8 * v103);
            started = md::LabelLine::startCoordinate(*(v105 + 8), *(v105 + 16));
            md::LabelLine::pointAtCoordinate(__p, *(v105 + 8), *(v105 + 16), started, SHIWORD(started));
            v107 = *(v101 + 8 * v103);
            v108 = md::LabelLine::endCoordinate(*(v107 + 8), *(v107 + 16));
            md::LabelLine::pointAtCoordinate(&v186, *(v107 + 8), *(v107 + 16), v108, SHIWORD(v108));
            if (*(v162 + 159) == 1)
            {
              md::LabelPoint::geocentricPoint(__p);
              md::LabelPoint::geocentricPoint(&v186);
              v109 = __p[0];
              v110 = __p[1];
              locale = v188.__locale_;
              v112 = *&v186.__r_.__value_.__l.__data_;
              v113 = v186.__r_.__value_.__r.__words[2];
              v114 = *(*(v101 + 8 * v103) + 8);
              v115 = 0.0;
              if (*(*(v101 + 8 * v103) + 16) != v114 && v114)
              {
                v115 = md::LabelLineSegment::coincidentPointTolerance(*v114);
              }

              [v93 appendFormat:@"Start=(%.10f, %.10f, %.10f) End=(%.10f, %.10f, %.10f) Eps=%.10f\n", v109, v110, locale, v112, v113, *&v115];
            }

            else
            {
              v131 = md::LabelPoint::mercatorPoint(__p);
              v132 = md::LabelPoint::mercatorPoint(&v186);
              v133 = *v131;
              v134 = v131[1];
              v135 = *v132;
              v136 = v132[1];
              v137 = *(*(v101 + 8 * v103) + 8);
              v138 = 0.0;
              if (*(*(v101 + 8 * v103) + 16) == v137)
              {
                v95 = v167;
              }

              else
              {
                v95 = v167;
                if (v137)
                {
                  v138 = md::LabelLineSegment::coincidentPointTolerance(*v137);
                }
              }

              [v93 appendFormat:@"Start=(%.10f, %.10f) End=(%.10f, %.10f) Eps=%.10f\n", v133, v134, v135, v136, *&v138];
            }

            v139 = *(v101 + 8 * v103);
            v140 = *(v139 + 8);
            if (v140)
            {
              v141 = v95[2];
              if ((*(v139 + 16) - v140) >> 4 > v141)
              {
                v142 = (v140 + 16 * v141);
                v143 = "rev";
                if (v142[8])
                {
                  v143 = "fwd";
                }

                [v93 appendFormat:@"Segment: dir=%s section=%i\n", v143, *(*v142 + 44)];
                v144 = *(v101 + 8 * v103);
                if (*(v144 + 1) == 4)
                {
                  v145 = *(v144 + 8);
                  if (v145)
                  {
                    v146 = v95[2];
                    if ((*(v144 + 16) - v145) >> 4 > v146)
                    {
                      v147 = *(*(*(*(*(v145 + 16 * v146) + 16) + 48) + 48) + 8 * *(*(v145 + 16 * v146) + 44) + 4);
                      v148 = 8 * v147;
                      if (v147)
                      {
                        operator new();
                      }

                      v149 = 0;
                      if (v148)
                      {
                        do
                        {
                          [v93 appendFormat:@" ExclRange=(%.2f, %.2f)\n", *v149, v149[1]];
                          v149 += 2;
                        }

                        while (v149 != v148);
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            [v93 appendString:@"\n"];
          }

          if (v102 >= v100)
          {
            [v93 appendString:@"...\n"];
            break;
          }

          v116 = *(v101 + 8 * v103);
          v117 = *(v116 + 40);
          v118 = *(v116 + 48);
          if (v117 != v118)
          {
            v171 = 0;
            while (v102 != v100)
            {
              v119 = *v117;
              v120 = (*v117)[1];
              if (v120)
              {
                v121 = std::__shared_weak_count::lock(v120);
                if (v121)
                {
                  v122 = *v119;
                  std::__shared_weak_count::__release_shared[abi:nn200100](v121);
                  if (v122)
                  {
                    if (v122 != v171)
                    {
                      [v93 appendFormat:@" Tile=(%i.%i.%i)\n", *(v122 + 5) >> 6, *(v122 + 9) & 0x3FFFFFF, *(v122 + 5) & 0x3F];
                      v171 = v122;
                    }

                    v123 = v119[2];
                    if (v123)
                    {
                      v124 = *(v122 + 1848);
                      v125 = *(v122 + 1864);
                      [v93 appendFormat:@"  Line ID=%llu rng=(%.2f:%.2f)\n", *(v123 + 24), *(v123 + 8), *(v123 + 16)];
                      if (*(v123 + 42))
                      {
                        v126 = 0;
                        v127 = v124 + 32;
                        do
                        {
                          v128 = *(v123 + 32);
                          [v93 appendFormat:@"   Section fidx=%i rng=(%.2f:%.2f) rev=%i", *(v127 + 40 * v128 - 32), *(v127 + 40 * v128 - 24), *(v127 + 40 * v128 - 16), *(v127 + 40 * v128 - 2)];
                          if (*(v127 + 40 * v128) == 1)
                          {
                            [v93 appendFormat:@" sub=(%u:%u)\n", *(v127 + 40 * v128 - 6), *(v127 + 40 * v128 - 6) + *(v127 + 40 * v128 - 4) - 1];
                          }

                          else
                          {
                            [v93 appendString:@"\n"];
                          }

                          ++v126;
                          v127 += 40;
                        }

                        while (v126 < *(v123 + 42));
                      }

                      if (*(v123 + 40))
                      {
                        v129 = 0;
                        v100 = v163;
                        v99 = *__vala;
                        do
                        {
                          v130 = (v125 + 24 * *(v123 + 36));
                          [v93 appendFormat:@"   Attr type=%i rsn=%i rng=(%.2f:%.2f)\n", *v130, v130[1], *(v130 + 1), *(v130 + 2)];
                          ++v129;
                          v125 += 24;
                        }

                        while (v129 < *(v123 + 40));
                      }

                      else
                      {
                        v100 = v163;
                        v99 = *__vala;
                      }
                    }
                  }
                }
              }

              ++v102;
              if (++v117 == v118)
              {
                goto LABEL_186;
              }
            }

            [v93 appendString:@"...\n"];
            v102 = v158;
          }
        }

LABEL_186:
        v95 = v167;
        v103 = v169 + 1;
        v101 = *v99;
      }

      while (v169 + 1 < ((v99[1] - *v99) >> 3));
    }
  }

  v150 = v93;
  std::string::basic_string[abi:nn200100]<0>(&v184, [v93 UTF8String]);
  if (v185 >= 0)
  {
    v151 = &v184;
  }

  else
  {
    v151 = v184;
  }

  if (v185 >= 0)
  {
    v152 = HIBYTE(v185);
  }

  else
  {
    v152 = *(&v184 + 1);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v174, v151, v152);
  if (SHIBYTE(v185) < 0)
  {
    operator delete(v184);
  }

  if ((v181 & 0x10) != 0)
  {
    v155 = v180;
    if (v180 < v177)
    {
      v180 = v177;
      v155 = v177;
    }

    v156 = v176[4].__locale_;
  }

  else
  {
    if ((v181 & 8) == 0)
    {
      v153 = 0;
      v154 = a1;
      a1[23] = 0;
      goto LABEL_227;
    }

    v156 = v176[1].__locale_;
    v155 = v176[3].__locale_;
  }

  v154 = a1;
  v153 = v155 - v156;
  if ((v155 - v156) > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_230:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v153 >= 0x17)
  {
    operator new();
  }

  a1[23] = v153;
  if (v153)
  {
    memmove(a1, v156, v153);
  }

LABEL_227:
  v154[v153] = 0;
  v174 = v159;
  *(&v174 + *(v159 - 24)) = v160;
  v175 = MEMORY[0x1E69E5548] + 16;
  if (v179 < 0)
  {
    operator delete(v178);
  }

  v175 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v176);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v182);
}

void sub_1B2E3E5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::locale a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  a31 = *MEMORY[0x1E69E54E8];
  *(&a31 + *(a31 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a32 = MEMORY[0x1E69E5548] + 16;
  if (a45 < 0)
  {
    operator delete(__p);
  }

  a32 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a33);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a48);
  _Unwind_Resume(a1);
}

uint64_t md::LabelLineStore::lineCountForZoom(md::LabelLineStore *this, unsigned int a2)
{
  v3 = md::LabelLineStore::lineSetIndexForZoom(this, a2);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = *(this + 12);
  if (!v4)
  {
    return 0;
  }

  else
  {
    return (*(v4 + 112 * v3 + 88) - *(v4 + 112 * v3 + 80)) >> 3;
  }
}

uint64_t md::LabelLinePosition::travelDirection(md::LabelLinePosition *this)
{
  if (*(*this + 152) == 7)
  {
    if (*(this + 10) == *(*this + 16))
    {
      v4 = *(this + 3);
      if (v4)
      {
        if ((*(this + 17) & 0x80000000) == 0)
        {
          v5 = *v4;
          if (v5)
          {
            if (*(v5 + 32) == 1)
            {
              v6 = *(v5 + 24);
              if (v6)
              {
                v7 = *v6;
                if (v7)
                {
                  return *(v7 + 304);
                }
              }
            }
          }
        }
      }
    }

    return 4;
  }

  if (*(*this + 152))
  {
    return 4;
  }

  v1 = md::LabelLinePosition::geoFeature(this);
  result = 4;
  if (v1)
  {
    v3 = *(v1 + 153);
    if (v3 >= 3)
    {
      return 4;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

void md::LineLabelFeature::debugPopulateAttributeStrings(md::LineLabelFeature *this, NSMutableSet *a2, const md::LabelManager *a3, const md::LabelIdentifier *a4)
{
  v14 = a2;
  md::LineLabelPlacer::positionForIdentifier(&v15, this + 192, *a4);
  if (v15)
  {
    v6 = (*(*v15 + 200))(v15);
    md::LabelLineResolvedPosition::ensureValidLinePosition(v6, v7);
  }

  if (*(this + 34) != *(this + 35))
  {
    md::LineLabelFeature::resolvedStyleAttributes();
  }

  if (*(this + 52))
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = md::HighlightHelper::debugAttributesToString(this + 416);
    v10 = [v8 stringWithFormat:@"{%@}[SINGLE]", v9];
    [(NSMutableSet *)v14 addObject:v10];
  }

  v11 = md::LabelFeature::debugClientAttributesToString(this + 52, *(a3 + 42));
  if (v11)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%@}[CLIENT]", v11];
    [(NSMutableSet *)v14 addObject:v12];
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }
}

void sub_1B2E3ECE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(a1);
}

void md::LineLabelFeature::debugDraw(md::LineLabelFeature *a1, uint64_t a2, float32x2_t *a3, unsigned int *a4)
{
  v7 = a1;
  v257 = *MEMORY[0x1E69E9840];
  v209 = md::LineLabelFeature::roadMetricsForZ(a1, *(a2 + 464), *(a2 + 424));
  if (v209)
  {
    v8 = *(v7 + 24);
    v213 = (v7 + 192);
    v9 = atomic_load(v8 + 155);
    if (v9)
    {
      md::LabelLineStore::consumeWorkUnits(v8);
    }

    v10 = *(*(a2 + 232) + 64) * *(a2 + 484);
    v11 = *(a2 + 464);
    v226 = a2;
    if ((*(*v7 + 264))(v7) == 3 || (v56 = *v213, v57 = md::LabelLineStore::lineSetIndexForZoom(*v213, v11), (v57 & 0x80000000) == 0) && (v58 = *(v56 + 12)) != 0 && *(v58 + 112 * v57) >= 8u)
    {
      v12 = *v213;
      v13 = md::LabelLineStore::lineSetIndexForZoom(*v213, v11);
      if ((v13 & 0x80000000) == 0)
      {
        v14 = *(v12 + 12);
        if (v14)
        {
          v15 = v14 + 112 * v13;
          v16 = *(v15 + 80);
          v17 = *(a2 + 176);
          a3[13].f32[0] = fabsf(v17 + v17) * 0.5;
          v214 = (v15 + 80);
          if (*(v15 + 88) != v16)
          {
            v211 = v7;
            v18 = 0;
            v19 = a2 + 1296;
            __asm { FMOV            V0.2D, #1.0 }

            v219 = _Q0;
            do
            {
              v25 = a4[1];
              std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v242, **v213, *(*v213 + 1));
              v216 = v242;
              v242 = 0uLL;
              v26 = *(v16 + 8 * v18);
              started = md::LabelLine::startCoordinate(*(v26 + 8), *(v26 + 16));
              v245 = v216;
              if (*&v216.f64[1])
              {
                atomic_fetch_add_explicit((*&v216.f64[1] + 8), 1uLL, memory_order_relaxed);
              }

              *&v246 = v26;
              v247 = started;
              v248 = *(*&v216.f64[0] + 16);
              v28 = started;
              v29 = *(v26 + 8);
              v30 = v29 + 16 * started;
              if (v28 >= (*(v26 + 16) - v29) >> 4)
              {
                v30 = 0;
              }

              *(&v246 + 1) = v30;
              if (*&v216.f64[1])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*&v216.f64[1]);
              }

              if (*&v242.f64[1])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*&v242.f64[1]);
              }

              v31 = (*(***(&v246 + 1) + 24))(**(&v246 + 1), SWORD1(v247));
              labelPointToWorldPoint(v31, *(a2 + 440), v10);
              v236.f64[0] = v32;
              v236.f64[1] = v33;
              *&v237 = v34;
              isDistanceClipped = md::LabelLayoutContext::isDistanceClipped(a2 + 432, &v236);
              if (!isDistanceClipped)
              {
                v36 = 0;
                v37 = (a2 + 1296);
                do
                {
                  v38 = 0;
                  v39 = 0.0;
                  v40 = v37;
                  do
                  {
                    v41 = *v40;
                    v40 += 4;
                    v39 = v39 + v236.f64[v38++] * v41;
                  }

                  while (v38 != 3);
                  v242.f64[v36] = *(v19 + 8 * v36 + 96) + v39;
                  ++v36;
                  ++v37;
                }

                while (v36 != 4);
                v4 = vcvt_f32_f64(vmulq_f64(v242, vdivq_f64(v219, vdupq_lane_s64(*(&v243 + 1), 0))));
                a3[1] = v4;
                ggl::DebugConsole::drawSymbol(a3, 3);
              }

              while (1)
              {
                v55 = md::LabelLinePosition::pointAtOffset(&v245, 1);
                if (!v55)
                {
                  break;
                }

                labelPointToWorldPoint(v55, *(a2 + 440), v10);
                v229.f64[0] = v42;
                v229.f64[1] = v43;
                *&v230 = v44;
                v45 = md::LabelLayoutContext::isDistanceClipped(a2 + 432, &v229);
                if (v45)
                {
                  v46 = v4;
                }

                else
                {
                  v47 = 0;
                  v48 = (a2 + 1296);
                  do
                  {
                    v49 = 0;
                    v50 = 0.0;
                    v51 = v48;
                    do
                    {
                      v52 = *v51;
                      v51 += 4;
                      v50 = v50 + v229.f64[v49++] * v52;
                    }

                    while (v49 != 3);
                    v242.f64[v47] = *(v19 + 8 * v47 + 96) + v50;
                    ++v47;
                    ++v48;
                  }

                  while (v47 != 4);
                  v53 = vmulq_f64(v242, vdivq_f64(v219, vdupq_lane_s64(*(&v243 + 1), 0)));
                  v46 = vcvt_f32_f64(v53);
                  *&v254.f64[0] = v46;
                  if (!isDistanceClipped)
                  {
                    if (a4[2] == v247)
                    {
                      v54 = -16776961;
                    }

                    else
                    {
                      v54 = -65536;
                    }

                    if (v18 != v25)
                    {
                      v54 = -16711936;
                    }

                    a3[12].i32[0] = v54;
                    a3[1] = v4;
                    ggl::DebugConsole::drawLine(a3, &v254, *v53.f64);
                  }
                }

                md::LabelLinePosition::moveToNextPoint(&v245);
                v4 = v46;
                isDistanceClipped = v45;
              }

              if (!isDistanceClipped)
              {
                a3[1] = v4;
                ggl::DebugConsole::drawSymbol(a3, 4);
              }

              if (*&v245.f64[1])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*&v245.f64[1]);
              }

              ++v18;
              v16 = *v214;
            }

            while (v18 < (v214[1] - *v214) >> 3);
            v17 = *(a2 + 176);
            v7 = v211;
          }

          a3[13].f32[0] = fabsf(v17) * 0.5;
        }
      }
    }

    v59 = *(v7 + 28);
    v215 = (v7 + 232);
    if (v59 != (v7 + 232))
    {
      v60 = 1 << *(a2 + 464);
      __asm { FMOV            V0.2D, #1.0 }

      v220 = _Q0;
      do
      {
        (*(*v59[5] + 184))(v59[5], v226, a3);
        v62 = 0;
        v63 = *(v59 + 8);
        if (v63 == *a4)
        {
          v64 = OverlayColorSelected;
        }

        else
        {
          v64 = &OverlayColorStandard;
        }

        do
        {
          a3[12].i8[v62] = v64[v62];
          ++v62;
        }

        while (v62 != 4);
        v65 = (*(*v59[5] + 56))(v59[5]);
        labelPointToWorldPoint(v65, *(v226 + 440), v10);
        v66 = 0;
        v242.f64[0] = v67;
        v242.f64[1] = v68;
        *&v243 = v69;
        v70 = (v226 + 1296);
        do
        {
          v71 = 0;
          v72 = 0.0;
          v73 = v70;
          do
          {
            v74 = *v73;
            v73 += 4;
            v72 = v72 + v242.f64[v71++] * v74;
          }

          while (v71 != 3);
          v245.f64[v66] = *(v226 + 1296 + 8 * v66 + 96) + v72;
          ++v66;
          ++v70;
        }

        while (v66 != 4);
        v75 = vcvt_f32_f64(vmulq_f64(v245, vdivq_f64(v220, vdupq_lane_s64(*(&v246 + 1), 0))));
        if (v63 == *a4)
        {
          v76 = 4.0;
        }

        else
        {
          v76 = 2.0;
        }

        a3[13].f32[0] = fabsf(v76 * *(v226 + 176)) * 0.5;
        a3[1] = v75;
        if (*(v59[5] + 9) == 4)
        {
          v77 = 1;
        }

        else
        {
          v77 = 3;
        }

        ggl::DebugConsole::drawSymbol(a3, v77);
        if ((v60 & *(v59[5] + 12)) != 0)
        {
          ggl::DebugConsole::drawSymbol(a3, 0);
        }

        v78 = v59[1];
        if (v78)
        {
          do
          {
            v79 = v78;
            v78 = *v78;
          }

          while (v78);
        }

        else
        {
          do
          {
            v79 = v59[2];
            _ZF = *v79 == v59;
            v59 = v79;
          }

          while (!_ZF);
        }

        v59 = v79;
      }

      while (v79 != v215);
    }

    std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v245, **v213, *(*v213 + 1));
    v221 = v245;
    v232 = v245;
    v80 = *v213;
    v212 = *(v226 + 464);
    v81 = md::LabelLineStore::lineSetIndexForZoom(*v213, v212);
    v82 = *&v221.f64[1];
    if ((v81 & 0x80000000) == 0)
    {
      v83 = *(v80 + 12);
      if (v83)
      {
        v84 = v83 + 112 * v81;
        v85 = *(v84 + 80);
        v210 = (v84 + 80);
        if (*(v84 + 88) != v85)
        {
          v86 = 0;
          v87 = v221.f64[0];
          v88 = v226 + 1296;
          __asm { FMOV            V0.2D, #1.0 }

          v217 = _Q0;
          v225 = a3;
          do
          {
            md::LabelLine::attributes(&v251, *(v85 + 8 * v86), &v232, v212);
            v91 = v251;
            v90 = v252;
            for (i = v252; v91 != v90; v91 += 48)
            {
              v92 = &kAttributeDrawOptions + 12 * *v91;
              v93 = *v92;
              if ((v93 - 1) <= 1)
              {
                a3[12].i32[0] = *(v92 + 1);
                v94 = v85;
                v95 = *(v85 + 8 * v86);
                v245.f64[0] = v87;
                *&v245.f64[1] = v82;
                if (v82)
                {
                  atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v96 = *(v91 + 3);
                *&v246 = v95;
                v247 = v96;
                v248 = *(*&v87 + 16);
                v98 = v95 + 8;
                v97 = *(v95 + 8);
                v99 = *(v98 + 8) - v97;
                v100 = v97 + 16 * v96;
                if (v96 >= (v99 >> 4))
                {
                  v100 = 0;
                }

                *(&v246 + 1) = v100;
                v243 = 0u;
                v244 = 0u;
                v242 = 0u;
                DWORD2(v244) = 2139095039;
                LabelPoint = md::LabelLinePosition::getLabelPoint(&v245, &v242);
                v102 = 0;
                if (LabelPoint)
                {
                  labelPointToWorldPoint(&v242, *(v226 + 440), v10);
                  v103 = 0;
                  v229.f64[0] = v104;
                  v229.f64[1] = v105;
                  *&v230 = v106;
                  v107 = (v226 + 1296);
                  do
                  {
                    v108 = 0;
                    v109 = 0.0;
                    v110 = v107;
                    do
                    {
                      v111 = *v110;
                      v110 += 4;
                      v109 = v109 + v229.f64[v108++] * v111;
                    }

                    while (v108 != 3);
                    v236.f64[v103] = *(v88 + 8 * v103 + 96) + v109;
                    ++v103;
                    ++v107;
                  }

                  while (v103 != 4);
                  v102 = vcvt_f32_f64(vmulq_f64(v236, vdivq_f64(v217, vdupq_lane_s64(*(&v237 + 1), 0))));
                }

                v113 = *(v91 + 1);
                v112 = *(v91 + 2);
                v114 = v86;
                v115 = *(v94 + 8 * v86);
                v116 = 24;
                if (v91[2])
                {
                  v116 = 32;
                }

                v82 = *&v232.f64[1];
                v236.f64[0] = v87;
                v236.f64[1] = v232.f64[1];
                if (*&v232.f64[1])
                {
                  atomic_fetch_add_explicit((*&v232.f64[1] + 8), 1uLL, memory_order_relaxed);
                }

                *&v237 = v115;
                v238 = *&v91[v116];
                v239 = *(*&v87 + 16);
                v118 = v115 + 8;
                v117 = *(v115 + 8);
                v119 = *(v118 + 8) - v117;
                v120 = v117 + 16 * v238;
                if (v238 >= (v119 >> 4))
                {
                  v120 = 0;
                }

                *(&v237 + 1) = v120;
                v230 = 0u;
                v231 = 0u;
                v229 = 0u;
                DWORD2(v231) = 2139095039;
                v228 = 0;
                v121 = md::LabelLinePosition::getLabelPoint(&v236, &v229);
                v122 = 0;
                if (v121)
                {
                  labelPointToWorldPoint(&v229, *(v226 + 440), v10);
                  v123 = 0;
                  v233 = v124;
                  v234 = v125;
                  v235 = v126;
                  v127 = (v226 + 1296);
                  do
                  {
                    v128 = 0;
                    v129 = 0.0;
                    v130 = v127;
                    do
                    {
                      v131 = *v130;
                      v130 += 4;
                      v129 = v129 + *(&v233 + v128) * v131;
                      v128 += 8;
                    }

                    while (v128 != 24);
                    v254.f64[v123] = *(v88 + 8 * v123 + 96) + v129;
                    ++v123;
                    ++v127;
                  }

                  while (v123 != 4);
                  v122 = vcvt_f32_f64(vmulq_f64(v254, vdivq_f64(v217, vdupq_lane_s64(v256, 0))));
                  v228 = v122;
                }

                if (v93 == 2)
                {
                  if (LabelPoint)
                  {
                    v225[1] = v102;
                    ggl::DebugConsole::drawSymbol(v225, *(v92 + 2));
                  }

                  if ((v121 & (v112 != v113)) == 1)
                  {
                    v225[1] = v122;
                    ggl::DebugConsole::drawSymbol(v225, *(v92 + 2));
                  }
                }

                else if ((LabelPoint & v121) == 1)
                {
                  v132 = fabsf(*(v226 + 176) * 5.0) * 0.5;
                  v225[13].f32[0] = v132;
                  v225[1] = v102;
                  ggl::DebugConsole::drawLine(v225, &v228, v132);
                  v225[13].f32[0] = fabsf(*(v226 + 176)) * 0.5;
                }

                v86 = v114;
                v85 = v94;
                if (v82)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v82);
                }

                a3 = v225;
                if (*&v245.f64[1])
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](*&v245.f64[1]);
                }

                v90 = i;
              }
            }

            std::vector<md::LabelLineAttribute,geo::allocator_adapter<md::LabelLineAttribute,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v251);
            ++v86;
            v85 = *v210;
          }

          while (v86 < (v210[1] - *v210) >> 3);
        }
      }
    }

    if (v82)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v82);
    }

    std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v245, **v213, *(*v213 + 1));
    v133 = v245.f64[1];
    v134 = *v213;
    v135 = v226;
    v136 = *(v226 + 464);
    v137 = md::LabelLineStore::lineSetIndexForZoom(*v213, v136);
    if ((v137 & 0x80000000) == 0)
    {
      v138 = *(v134 + 12);
      if (v138)
      {
        v139 = v138 + 112 * v137;
        v140 = a4[1];
        v142 = v139 + 80;
        v141 = *(v139 + 80);
        if (v140 < (*(v142 + 8) - v141) >> 3)
        {
          v254 = 0uLL;
          v255 = 0;
          v251 = 0;
          v252 = 0;
          v253 = 0;
          md::LineLabelPlacer::populateBlocks(v213, v136, *(v141 + 8 * v140), &v254, &v251);
          a3[12].i32[0] = -16777216;
          a3[4] = vmul_n_f32(0x41A0000041800000, *(v226 + 176));
          v144 = v254.f64[1];
          v143 = v254.f64[0];
          if (*&v254.f64[0] != *&v254.f64[1])
          {
            v145 = v226 + 1296;
            __asm { FMOV            V0.2D, #1.0 }

            v223 = _Q0;
            do
            {
              md::LabelLineResolvedPosition::ensureValidLinePosition((*&v143 + 8), _Q0.f64[0]);
              v147 = *(*&v143 + 16);
              v245.f64[0] = *(*&v143 + 8);
              v245.f64[1] = v147;
              if (v147 != 0.0)
              {
                atomic_fetch_add_explicit((*&v147 + 8), 1uLL, memory_order_relaxed);
              }

              v246 = *(*&v143 + 24);
              v247 = *(*&v143 + 40);
              v248 = *(*&v143 + 48);
              *&v244 = 0;
              v242 = 0u;
              v243 = 0u;
              DWORD2(v244) = 2139095039;
              WORD6(v244) = 0;
              BYTE14(v244) = 0;
              if (md::LabelLinePosition::getLabelPoint(&v245, &v242))
              {
                labelPointToWorldPoint(&v242, *(v226 + 440), v10);
                v148 = 0;
                v229.f64[0] = v149;
                v229.f64[1] = v150;
                *&v230 = v151;
                v152 = (v226 + 1296);
                do
                {
                  v153 = 0;
                  v154 = 0.0;
                  v155 = v152;
                  do
                  {
                    v156 = *v155;
                    v155 += 4;
                    v154 = v154 + v229.f64[v153++] * v156;
                  }

                  while (v153 != 3);
                  v236.f64[v148] = *(v145 + 8 * v148 + 96) + v154;
                  ++v148;
                  ++v152;
                }

                while (v148 != 4);
                a3[1] = vcvt_f32_f64(vmulq_f64(v236, vdivq_f64(v223, vdupq_lane_s64(*(&v237 + 1), 0))));
                ggl::DebugConsole::drawSymbol(a3, 1);
              }

              md::LabelLinePosition::offsetDistance(&v245, 0, *(*&v143 + 184) - *(*&v143 + 176));
              v238 = 0;
              v236 = 0u;
              v237 = 0u;
              v239 = 2139095039;
              v240 = 0;
              v241 = 0;
              if (md::LabelLinePosition::getLabelPoint(&v245, &v236))
              {
                labelPointToWorldPoint(&v236, *(v226 + 440), v10);
                v157 = 0;
                v233 = v158;
                v234 = v159;
                v235 = v160;
                v161 = (v226 + 1296);
                do
                {
                  v162 = 0;
                  v163 = 0.0;
                  v164 = v161;
                  do
                  {
                    v165 = *v164;
                    v164 += 4;
                    v163 = v163 + *(&v233 + v162) * v165;
                    v162 += 8;
                  }

                  while (v162 != 24);
                  v229.f64[v157] = *(v145 + 8 * v157 + 96) + v163;
                  ++v157;
                  ++v161;
                }

                while (v157 != 4);
                a3[1] = vcvt_f32_f64(vmulq_f64(v229, vdivq_f64(v223, vdupq_lane_s64(*(&v230 + 1), 0))));
                ggl::DebugConsole::drawSymbol(a3, 1);
              }

              if (*&v245.f64[1])
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](*&v245.f64[1]);
              }

              *&v143 += 216;
            }

            while (*&v143 != *&v144);
          }

          v135 = v226;
          a3[4] = vmul_n_f32(0x4120000041000000, *(v226 + 176));
          std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v251);
          *&v245.f64[0] = &v254;
          std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v245);
        }
      }
    }

    if (v133 != 0.0)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v133);
    }

    v166 = *v215;
    if (*v215)
    {
      v167 = *a4;
      v168 = v215;
      do
      {
        v169 = *(v166 + 32);
        _CF = v169 >= v167;
        v170 = v169 < v167;
        if (_CF)
        {
          v168 = v166;
        }

        v166 = *(v166 + 8 * v170);
      }

      while (v166);
      if (v168 != v215 && v167 >= *(v168 + 8))
      {
        for (j = 0; j != 4; ++j)
        {
          a3[12].i8[j] = OverlayColorSelected[j];
        }

        a3[13].f32[0] = fabsf(*(v135 + 176) * 4.0) * 0.5;
        v172 = (*(*v168[5] + 56))(v168[5]);
        labelPointToWorldPoint(v172, *(v135 + 440), v10);
        v173 = 0;
        v236.f64[0] = v174;
        v236.f64[1] = v175;
        *&v237 = v176;
        v177 = v135 + 1296;
        v178 = (v135 + 1296);
        do
        {
          v179 = 0;
          v180 = 0.0;
          v181 = v178;
          do
          {
            v182 = *v181;
            v181 += 4;
            v180 = v180 + v236.f64[v179++] * v182;
          }

          while (v179 != 3);
          v245.f64[v173] = *(v177 + 8 * v173 + 96) + v180;
          ++v173;
          ++v178;
        }

        while (v173 != 4);
        __asm { FMOV            V1.2D, #1.0 }

        v224 = _Q1;
        v227 = vmulq_f64(v245, vdivq_f64(_Q1, vdupq_lane_s64(*(&v246 + 1), 0)));
        v184 = md::LabelPoint::mercatorPoint(v172);
        v185 = *v184;
        v186 = *(v184 + 8);
        v187 = 40075017.0;
        if (!*(*v213 + 159))
        {
          v187 = 1.0;
        }

        v188 = *v209 / v187;
        v189 = *(v172 + 10);
        *&v246 = 0;
        v245 = 0uLL;
        *(&v246 + 1) = v188 + v185;
        v247 = v186;
        v248 = v189;
        v249 = 256;
        v250 = 1;
        labelPointToWorldPoint(&v245, *(v135 + 440), v10);
        v190 = 0;
        v229.f64[0] = v191;
        v229.f64[1] = v192;
        *&v230 = v193;
        v194 = (v135 + 1296);
        do
        {
          v195 = 0;
          v196 = 0.0;
          v197 = v194;
          do
          {
            v198 = *v197;
            v197 += 4;
            v196 = v196 + v229.f64[v195++] * v198;
          }

          while (v195 != 3);
          v242.f64[v190] = *(v177 + 8 * v190 + 96) + v196;
          ++v190;
          ++v194;
        }

        while (v190 != 4);
        v199 = vcvt_f32_f64(v227);
        v200 = *(v135 + 176);
        v201 = vsub_f32(vcvt_f32_f64(vmulq_f64(v242, vdivq_f64(v224, vdupq_lane_s64(*(&v243 + 1), 0)))), v199);
        v201.f32[0] = sqrtf(vaddv_f32(vmul_f32(v201, v201)));
        *&v202 = v199.f32[0] + (v200 * 50.0);
        v203 = v199.f32[1] + (v200 * 50.0);
        *&v204 = v201.f32[0] + *&v202;
        *v242.f64 = v201.f32[0] + *&v202;
        *(v242.f64 + 1) = v203;
        a3[1].i32[0] = v202;
        a3[1].f32[1] = v203;
        ggl::DebugConsole::drawLine(a3, &v242, v201.f32[0]);
        v205 = v200 * 10.0;
        *&v206 = v203 - (v200 * 10.0);
        *&v254.f64[0] = __PAIR64__(v206, v202);
        v207 = v203 + v205;
        a3[1].i32[0] = v202;
        a3[1].f32[1] = v207;
        v208 = ggl::DebugConsole::drawLine(a3, &v254, v205);
        v251 = __PAIR64__(v206, v204);
        a3[1].i32[0] = v204;
        a3[1].f32[1] = v207;
        ggl::DebugConsole::drawLine(a3, &v251, v208);
      }
    }
  }
}

void sub_1B2E3FDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v52 - 240));
  a51 = v52 - 208;
  std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a51);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v51);
  }

  _Unwind_Resume(a1);
}

void labelPointToWorldPoint(const md::LabelPoint *a1, const LabelLayoutContext *a2, double a3)
{
  if (a2)
  {
    md::LabelPoint::mercatorPoint(a1);
  }

  else
  {
    v5 = md::LabelPoint::geocentricPoint(a1);
    md::LabelPoint::geocentricPoint(v5);
    for (i = 0; i != 3; ++i)
    {
      *(&v20 + i * 8) = *&md::GeocentricNormal(geo::Geocentric<double> const&)::oneOverRadiiSquared[i] * *(a1 + i * 8);
    }

    v7 = gm::Matrix<double,3,1>::normalized<int,void>(&v20);
    v8 = 0;
    *v15 = v7;
    v15[1] = v9;
    v15[2] = v10;
    v11 = *(a1 + 10);
    if (v11 == 3.4028e38)
    {
      v11 = 0.0;
    }

    v12 = v11;
    do
    {
      *(&v20 + v8 * 8) = *&v15[v8] * v12;
      ++v8;
    }

    while (v8 != 3);
    v13 = 0;
    v16 = v20;
    v17 = v21;
    do
    {
      *(&v20 + v13) = *(&v16 + v13) * a3;
      v13 += 8;
    }

    while (v13 != 24);
    v14 = 0;
    v18 = v20;
    v19 = v21;
    do
    {
      *(&v20 + v14) = *(&v18 + v14) + *(a1 + v14);
      v14 += 8;
    }

    while (v14 != 24);
  }
}

void std::vector<md::LabelLineBlockGroup,geo::allocator_adapter<md::LabelLineBlockGroup,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineBlockGroup>(v2, v1);
  }
}

void std::vector<md::LabelLineBlock,geo::allocator_adapter<md::LabelLineBlock,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
{
  v1 = a1->__vftable;
  v2 = a1->~__shared_weak_count;
  if (v2)
  {
    v3 = v1->~__shared_weak_count_0;
    v4 = a1->~__shared_weak_count;
    if (v3 != v2)
    {
      v5 = a1;
      do
      {
        a1 = *(v3 - 25);
        if (a1)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](a1);
        }

        v3 = (v3 - 216);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineBlock>(v6, v4);
  }
}

uint64_t md::LineLabelFeature::containsPixel(uint64_t a1, uint64_t a2, float32x2_t *a3, float *a4, uint64_t a5)
{
  v10 = *(*(a2 + 232) + 64);
  v11 = *(a2 + 484);
  v12 = *(a2 + 464);
  v13 = *(a1 + 192);
  v14 = atomic_load(v13 + 155);
  if (v14)
  {
    md::LabelLineStore::consumeWorkUnits(v13);
  }

  v15 = *(a1 + 192);
  v16 = md::LabelLineStore::lineSetIndexForZoom(v15, v12);
  if ((v16 & 0x80000000) != 0)
  {
    return 0;
  }

  v17 = *(v15 + 12);
  if (!v17)
  {
    return 0;
  }

  v18 = v17 + 112 * v16;
  v20 = *(v18 + 80);
  v19 = *(v18 + 88);
  v21 = (v18 + 80);
  if (v19 == v20)
  {
    return 0;
  }

  v87 = 0;
  v89 = 0;
  v86 = 0;
  v22 = 0;
  v23 = v10 * v11;
  v24 = *a4 * *a4;
  v25 = a2 + 1296;
  __asm { FMOV            V0.2D, #1.0 }

  v90 = _Q0;
  do
  {
    std::shared_ptr<gss::StylesheetManager<gss::PropertyID>>::shared_ptr[abi:nn200100]<gss::StylesheetManager<gss::PropertyID>,0>(&v98, **(a1 + 192), *(*(a1 + 192) + 8));
    v88 = v98;
    v98 = 0uLL;
    v31 = *(v20 + 8 * v22);
    started = md::LabelLine::startCoordinate(*(v31 + 8), *(v31 + 16));
    v93 = v88;
    if (*&v88.f64[1])
    {
      atomic_fetch_add_explicit((*&v88.f64[1] + 8), 1uLL, memory_order_relaxed);
    }

    v94 = v31;
    v96 = started;
    v97 = *(*&v88.f64[0] + 16);
    v33 = started;
    v34 = *(v31 + 8);
    v35 = (v34 + 16 * started);
    if (v33 >= (*(v31 + 16) - v34) >> 4)
    {
      v35 = 0;
    }

    v95 = v35;
    if (*&v88.f64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v88.f64[1]);
    }

    if (*&v98.f64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v98.f64[1]);
    }

    v36 = (*(**v95 + 24))(*v95, SWORD1(v96));
    labelPointToWorldPoint(v36, *(a2 + 440), v23);
    v92[0] = v37;
    v92[1] = v38;
    v92[2] = v39;
    isDistanceClipped = md::LabelLayoutContext::isDistanceClipped(a2 + 432, v92);
    if (!isDistanceClipped)
    {
      v41 = 0;
      v42 = (a2 + 1296);
      do
      {
        v43 = 0;
        v44 = 0.0;
        v45 = v42;
        do
        {
          v46 = *v45;
          v45 += 4;
          v44 = v44 + *&v92[v43++] * v46;
        }

        while (v43 != 3);
        v98.f64[v41] = *(v25 + 8 * v41 + 96) + v44;
        ++v41;
        ++v42;
      }

      while (v41 != 4);
      v5 = vcvt_f32_f64(vmulq_f64(v98, vdivq_f64(v90, vdupq_lane_s64(v100, 0))));
    }

    while (1)
    {
      v63 = md::LabelLinePosition::pointAtOffset(&v93, 1);
      if (!v63)
      {
        break;
      }

      labelPointToWorldPoint(v63, *(a2 + 440), v23);
      v91[0] = v47;
      v91[1] = v48;
      v91[2] = v49;
      v50 = md::LabelLayoutContext::isDistanceClipped(a2 + 432, v91);
      if (v50)
      {
        v51 = v5;
      }

      else
      {
        v52 = 0;
        v53 = (a2 + 1296);
        do
        {
          v54 = 0;
          v55 = 0.0;
          v56 = v53;
          do
          {
            v57 = *v56;
            v56 += 4;
            v55 = v55 + *&v91[v54++] * v57;
          }

          while (v54 != 3);
          v98.f64[v52] = *(v25 + 8 * v52 + 96) + v55;
          ++v52;
          ++v53;
        }

        while (v52 != 4);
        v51 = vcvt_f32_f64(vmulq_f64(v98, vdivq_f64(v90, vdupq_lane_s64(v100, 0))));
        if (!isDistanceClipped)
        {
          v58 = vsub_f32(v51, v5);
          v59 = vmul_f32(v58, v58);
          if (vaddv_f32(v59) > 0.00000011921)
          {
            v60 = vmul_f32(vsub_f32(*a3, v5), v58);
            v61 = vsub_f32(*a3, vmla_n_f32(v5, v58, fminf(fmaxf(vdiv_f32(vadd_f32(vdup_lane_s32(v60, 1), v60), vadd_f32(vdup_lane_s32(v59, 1), v59)).f32[0], 0.0), 1.0)));
            v62 = vaddv_f32(vmul_f32(v61, v61));
            if (v62 < v24)
            {
              v86 = v96;
              v87 = 1;
              v89 = v22;
              goto LABEL_32;
            }
          }
        }
      }

      v62 = v24;
LABEL_32:
      md::LabelLinePosition::moveToNextPoint(&v93);
      v5 = v51;
      isDistanceClipped = v50;
      v24 = v62;
    }

    if (*&v93.f64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v93.f64[1]);
    }

    ++v22;
    v20 = *v21;
  }

  while (v22 < (v21[1] - *v21) >> 3);
  if ((v87 & 1) == 0)
  {
    return 0;
  }

  *(a5 + 8) = v86;
  v64 = *(*(*(v20 + 8 * v89) + 8) + 16 * v86);
  if (*(v64 + 32))
  {
    v65 = 0;
  }

  else
  {
    v65 = *(v64 + 16);
  }

  *(a5 + 16) = v65;
  *a5 = 0;
  *(a5 + 4) = v89;
  v67 = *(a1 + 224);
  if (v67 != (a1 + 232))
  {
    v68 = *a4 * *a4;
    do
    {
      v69 = (*(*v67[5] + 200))(v67[5]);
      md::LabelLineResolvedPosition::ensureValidLinePosition(v69, v70);
      if (*(v69 + 2) == *(v20 + 8 * v89))
      {
        v71 = (*(*v67[5] + 56))(v67[5]);
        labelPointToWorldPoint(v71, *(a2 + 440), v23);
        v98.f64[0] = v72;
        v98.f64[1] = v73;
        v99 = v74;
        if (!md::LabelLayoutContext::isDistanceClipped(a2 + 432, &v98))
        {
          v75 = 0;
          v76 = (a2 + 1296);
          do
          {
            v77 = 0;
            v78 = 0.0;
            v79 = v76;
            do
            {
              v80 = *v79;
              v79 += 4;
              v78 = v78 + v98.f64[v77++] * v80;
            }

            while (v77 != 3);
            v93.f64[v75] = *(v25 + 8 * v75 + 96) + v78;
            ++v75;
            ++v76;
          }

          while (v75 != 4);
          v81 = vsub_f32(*a3, vcvt_f32_f64(vmulq_f64(v93, vdivq_f64(v90, vdupq_lane_s64(v95, 0)))));
          v82 = vaddv_f32(vmul_f32(v81, v81));
          if (v82 < v68)
          {
            *a5 = *(v67 + 8);
            v68 = v82;
          }
        }
      }

      v83 = v67[1];
      if (v83)
      {
        do
        {
          v84 = v83;
          v83 = *v83;
        }

        while (v83);
      }

      else
      {
        do
        {
          v84 = v67[2];
          _ZF = *v84 == v67;
          v67 = v84;
        }

        while (!_ZF);
      }

      v67 = v84;
    }

    while (v84 != (a1 + 232));
  }

  *a4 = sqrtf(v24);
  return 1;
}

void sub_1B2E40674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33)
{
  if (*(&a15 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&a15 + 1));
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E40778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(ggl::DiffuseLandmark::BuildingPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::DiffuseLandmark::BuildingPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup * ()(void)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::vector<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::__split_buffer<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *>(v5, v4);
  }

  return a1;
}

void sub_1B2E4192C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_5,std::allocator<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_5>,ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A066A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::vector<ggl::DiffuseLandmark::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseLandmark::BuildingPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseLandmark::BuildingPipelineSetup *>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseLandmark::BuildingPipelineSetup *>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::DiffuseLandmark::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseLandmark::BuildingPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseLandmark::BuildingPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::DiffuseLandmark::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseLandmark::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseLandmark::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
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

ggl::zone_mallocator *std::__split_buffer<ggl::DiffuseLandmark::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseLandmark::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
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
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DiffuseLandmark::BuildingPipelineSetup *>(v5, v4);
  }

  return a1;
}

void sub_1B2E41ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_4,std::allocator<md::LandmarkRenderResources::LandmarkRenderResources(VKSharedResources *,ggl::RenderTargetFormat const&,std::shared_ptr<ggl::ConstantDataTyped<ggl::Building::Fade>> &)::$_4>,ggl::DiffuseLandmark::BuildingPipelineSetup * ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A06618;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void sub_1B2E42300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::SpecularLandmark::LandmarkPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SpecularLandmark::LandmarkPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void sub_1B2E42718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::LandmarkFlat::LandmarkPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::LandmarkFlat::LandmarkPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void sub_1B2E42AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::LandmarkDepth::BuildingPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::LandmarkDepth::BuildingPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_emplace<ggl::FoggedDiffuseLandmark::LandmarkPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A062B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::DiffuseLandmark::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A06280;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::FoggedSpecularLandmark::LandmarkPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A06248;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::SpecularLandmark::LandmarkPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A06210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::LandmarkFlat::LandmarkPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A061D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::LandmarkDepth::BuildingPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A061A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::VenueLayerLayoutCharacteristics::getOverridePolygonDepthType(md::VenueLayerLayoutCharacteristics *this, VKPolygonGroup *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(this + 9) == 1 && *(*(this + 7) + 288) == 1)
  {
    if (!v3 || (-[VKPolygonGroup styleAttributes](v3, "styleAttributes"), std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v12), v5 = v12, v12 == v13))
    {
      v10 = 1;
      v9 = 3;
    }

    else
    {
      v6 = 0;
      do
      {
        v8 = *v5 == 3 && *(v5 + 4) == 113;
        v6 |= v8;
        v5 += 8;
      }

      while (v5 != v13);
      if (v6)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      v10 = 1;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return v9 | (v10 << 8);
}

uint64_t md::VenueLayerLayoutCharacteristics::focusState(md::VenueLayerLayoutCharacteristics *this, VKPolygonGroup *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(*(this + 7) + 272);
  if (v5)
  {
    v6 = v3;
    v7 = *(this + 7);
    v8 = [(VKPolygonGroup *)v6 buildingId];
    v9 = (v7 + 16);
    do
    {
      v9 = *v9;
      if (!v9)
      {
        goto LABEL_12;
      }

      v10 = v9[3];
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v11 != v12)
      {
        while (*(v11 + 24) != v8)
        {
          v11 += 120;
          if (v11 == v12)
          {
            v11 = v12;
            break;
          }
        }
      }
    }

    while (v11 == v12);
    if (!v11)
    {
LABEL_12:
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v14 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = 134217984;
        v17 = [(VKPolygonGroup *)v6 buildingId];
        _os_log_impl(&dword_1B2754000, v14, OS_LOG_TYPE_ERROR, "building is null, venueGroups is null or there is no corresponding building for this venue group, and the venueGourp.building ID is : %llu .", &v16, 0xCu);
      }

      goto LABEL_17;
    }

    if (*(v11 + 40) == *v5)
    {
      v13 = 1;
      goto LABEL_18;
    }

LABEL_17:
    v13 = 0;
LABEL_18:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t md::VenueLayerLayoutCharacteristics::shouldLayoutPolygonGroup(md::VenueLogicContext **this, VKPolygonGroup *a2, unsigned int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = md::VenueLogicContext::displayedFloorOrdinalForVenueBuildingId(this[7], [(VKPolygonGroup *)v5 buildingId]);
  v7 = [(VKPolygonGroup *)v5 layer];
  v8 = v6;
  if (v7 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3;
  }

  if (a3 && v7 != v8)
  {
    v9 = [(VKPolygonGroup *)v5 layer]!= v8;
  }

  if (*(this + 9) == 1)
  {
    v10 = [(VKPolygonGroup *)v5 layer];
    if (v5)
    {
      [(VKPolygonGroup *)v5 styleAttributes];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v15);
    for (i = *&v15[0]; i != *(&v15[0] + 1); i += 8)
    {
      v12 = *(i + 4);
      if (*i == 3 && v12 == 113)
      {
        v9 = v8 >= v10;
        break;
      }

      if (*i == 3 && v12 == 31)
      {
        v9 = 0;
        break;
      }
    }
  }

  return v9;
}

BOOL md::VenueLayerLayoutCharacteristics::shouldCullPolygonGroup(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    shouldCullPolygonGroup = md::VenueLayerLayoutCharacteristics::shouldCullPolygonGroup(a1, a2, [v7 buildingId], objc_msgSend(v7, "layer"), objc_msgSend(v7, "cullingMask"), a4);
  }

  else
  {
    shouldCullPolygonGroup = 0;
  }

  return shouldCullPolygonGroup;
}

BOOL md::VenueLayerLayoutCharacteristics::shouldCullPolygonGroup(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, int a5, int a6)
{
  if (*(a1 + 9) == 1)
  {
    ggl::ConstantDataTyped<ggl::Tile::Transform>::read(v22, *(a2 + 240));
    ggl::BufferMemory::~BufferMemory(v22);
    v11 = *(a1 + 56);
    v12 = (v11 + 16);
    while (1)
    {
      v12 = *v12;
      if (!v12)
      {
        break;
      }

      v13 = v12[3];
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v14 != v15)
      {
        while (v14[3] != a3)
        {
          v14 += 15;
          if (v14 == v15)
          {
            v14 = v15;
            break;
          }
        }
      }

      if (v14 != v15)
      {
        goto LABEL_11;
      }
    }

    v14 = 0;
LABEL_11:
    v16 = a4;
    v17 = v22;
    md::VenueLayerLayoutCharacteristics::offsetLevel(v22, a1, (v11 + 144), a2 + 96, v14, v16);
    for (i = 0; i != 64; i += 16)
    {
      v20 = *v17;
      v19 = v17[1];
      v17 += 2;
      *&v23[i] = vcvt_hight_f32_f64(vcvt_f32_f64(v20), v19);
    }

    a6 = ggl::CullingGrid::intersectedCellsForView(v23, 0.0);
  }

  return (a6 & a5) == 0;
}

void md::VenueLayerLayoutCharacteristics::offsetLevel(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t *a5, unsigned __int16 a6)
{
  if (!a5)
  {
    return;
  }

  *&v12 = COERCE_DOUBLE(md::VenueLogicContext::buildingElevation(*(a2 + 56), a5[3], 1));
  v14 = v13;
  v15 = *&v12;
  v16 = *(a2 + 56);
  md::FloorInfo::FloorInfo(v47, v16, a5);
  v17 = a5[3];
  v18 = *(v16 + 312);
  if (!*&v18)
  {
    goto LABEL_18;
  }

  v19 = vcnt_s8(v18);
  v19.i16[0] = vaddlv_u8(v19);
  if (v19.u32[0] > 1uLL)
  {
    v20 = a5[3];
    if (v17 >= *&v18)
    {
      v20 = v17 % *&v18;
    }
  }

  else
  {
    v20 = (*&v18 - 1) & v17;
  }

  v21 = *(*(v16 + 38) + 8 * v20);
  if (!v21 || (v22 = *v21) == 0)
  {
LABEL_18:
    v24 = 0;
    goto LABEL_19;
  }

  while (1)
  {
    v23 = v22[1];
    if (v17 == v23)
    {
      break;
    }

    if (v19.u32[0] > 1uLL)
    {
      if (v23 >= *&v18)
      {
        v23 %= *&v18;
      }
    }

    else
    {
      v23 &= *&v18 - 1;
    }

    if (v23 != v20)
    {
      goto LABEL_18;
    }

LABEL_17:
    v22 = *v22;
    if (!v22)
    {
      goto LABEL_18;
    }
  }

  if (v22[2] != v17)
  {
    goto LABEL_17;
  }

  v45 = v22[3];
  v46 = v22[4];
  if (v45 == v46)
  {
    goto LABEL_18;
  }

  while (*(v45 + 32) != a6)
  {
    v24 = 0;
    v45 += 56;
    if (v45 == v46)
    {
      goto LABEL_19;
    }
  }

  v24 = v45;
LABEL_19:
  if ((v14 & 1) == 0)
  {
    v15 = 0.0;
  }

  md::VenueLogicContext::getVenueLevelElevation(v16, v17, a6, 1);
  v26 = v25;
  if ((v27 & 1) == 0)
  {
    v26 = v15;
  }

  v28 = v26 + 0.100000001;
  if (v24 && (*(a2 + 54) & 1) != 0)
  {
    v28 = *(v24 + 16) + v15;
  }

  v52 = *(a4 + 96);
  v53 = *(a4 + 112);
  geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(v51, &v52);
  v29 = v51[1];
  v30 = __sincos_stret(v51[0]);
  v31 = 6378137.0 / sqrt(v30.__sinval * v30.__sinval * -0.00669437999 + 1.0);
  v32 = (v31 + v28) * v30.__cosval;
  v33 = __sincos_stret(v29);
  v34 = 0;
  v35 = *(a4 + 112);
  v49 = *(a4 + 96);
  *v50 = v35;
  v36 = *(a4 + 80);
  v48[4] = *(a4 + 64);
  v48[5] = v36;
  v37 = *(a4 + 16);
  v48[0] = *a4;
  v48[1] = v37;
  v38 = *(a4 + 48);
  v48[2] = *(a4 + 32);
  v48[3] = v38;
  *&v49 = v32 * v33.__cosval;
  *(&v49 + 1) = v32 * v33.__sinval;
  v50[0] = (v28 + v31 * 0.99330562) * v30.__sinval;
  do
  {
    v39 = 0;
    v40 = v48;
    do
    {
      v41 = 0;
      v42 = 0.0;
      v43 = a3;
      do
      {
        v44 = *v43;
        v43 += 4;
        v42 = v42 + *(v40 + v41) * v44;
        v41 += 8;
      }

      while (v41 != 32);
      *(a1 + 8 * (4 * v39++ + v34)) = v42;
      v40 += 2;
    }

    while (v39 != 4);
    ++v34;
    ++a3;
  }

  while (v34 != 4);
}

uint64_t md::FloorInfo::FloorInfo(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a2 + 40), a3[3]);
  v6 = (v5 + 3);
  if (!v5)
  {
    v6 = (a3 + 7);
  }

  v7 = *v6;
  *a1 = v7;
  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    while (*(v8 + 8) != v7)
    {
      v8 += 184;
      if (v8 == v9)
      {
        v8 = a3[1];
        break;
      }
    }
  }

  *(a1 + 2) = v8 != v9;
  v10 = *(a3 + 28);
  if (v8 != v9)
  {
    v10 = v7;
  }

  *(a1 + 4) = v10;
  return a1;
}

void md::VenueLayerLayoutCharacteristics::modifyMVCForPolygonGroup(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, _OWORD *a6@<X8>)
{
  v11 = a5;
  v12 = v11;
  if (*(a1 + 9) == 1 && *(*(a1 + 56) + 288) == 1)
  {
    v13 = v11;
    v14 = [v13 buildingId];
    v15 = (*(a1 + 56) + 16);
    do
    {
      v15 = *v15;
      if (!v15)
      {
        goto LABEL_15;
      }

      v16 = v15[3];
      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      if (v18 != v17)
      {
        while (v18[3] != v14)
        {
          v18 += 15;
          if (v18 == v17)
          {
            v18 = v17;
            break;
          }
        }
      }
    }

    while (v18 == v17);
    if (!v18)
    {
LABEL_15:
      v23 = a3[1];
      *a6 = *a3;
      a6[1] = v23;
      v24 = a3[3];
      a6[2] = a3[2];
      a6[3] = v24;
      goto LABEL_16;
    }

    v19 = [v13 layer];
    ggl::ConstantDataTyped<ggl::Tile::Transform>::read(v25, *a2);
    ggl::BufferMemory::~BufferMemory(v25);
    md::VenueLayerLayoutCharacteristics::offsetLevel(v25, a1, (*(a1 + 56) + 144), a4, v18, v19);
    for (i = 0; i != 16; i += 4)
    {
      *a6++ = vcvt_hight_f32_f64(vcvt_f32_f64(*&v25[i]), *&v25[i + 2]);
    }

LABEL_16:
  }

  else
  {
    v21 = a3[1];
    *a6 = *a3;
    a6[1] = v21;
    v22 = a3[3];
    a6[2] = a3[2];
    a6[3] = v22;
  }
}

unint64_t md::VenueLayerLayoutCharacteristics::renderOrderForAttributes(uint64_t a1, int a2, uint64_t a3, int a4, unint64_t a5, unsigned int a6, int a7, void *a8, void *a9)
{
  v16 = *(a1 + 9);
  v17 = a5 >> 4;
  v18 = (20 * [a9 layer]) | 2;
  if (!v16)
  {
    v18 = 2;
  }

  v19 = 0x800000000;
  if (!a4)
  {
    v19 = 0;
  }

  v20 = 0x2000000;
  if (a2)
  {
    v20 = 0;
  }

  v21 = 0x20000;
  if (!a7)
  {
    v21 = 0;
  }

  return (v20 & 0xFFFFFFFFFFFE01FFLL | (a3 << 26) | v19 & 0xFFFFFFFFFFFE01FFLL | (a6 << 18) | v21 & 0xFFFFFFFFFFFE01FFLL | (v17 << 9) | (*(a5 + 1) << 20) | (*a8 >> 3) & 0x1FELL) + v18;
}

uint64_t md::VenueLayerLayoutCharacteristics::shouldStencil(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 9) != 1 || *(a1 + 55) != 1)
  {
    return 0;
  }

  *a3 = -1;
  return 1;
}

void md::VenueLayerLayoutCharacteristics::~VenueLayerLayoutCharacteristics(md::VenueLayerLayoutCharacteristics *this)
{
  *this = &unk_1F2A4E720;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4E720;
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

void *geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = off_1F2A4E798;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

void geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A4E798;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKPolygonGroup * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A4E798;

  return a1;
}

void *md::VenueRenderLayer::_layoutDimmingOverlay(md::VenueRenderLayer *this, const md::LayoutContext *a2)
{
  result = md::LayoutContext::get<md::VenueLogicContext>(a2);
  if (result)
  {
    v5 = result;
    if (*(result + 70) >= 0.00000011921)
    {
      result = gdc::Context::get<md::GeometryContext>(a2);
      if (result)
      {
        md::VenueRenderLayer::_venuesCommandBuffer(this, a2);
        v19 = 0u;
        v20 = 0u;
        v21 = 0;
        v18 = 0u;
        v17 = 0x40000000;
        LODWORD(v19) = 0x40000000;
        v22 = 1065353216;
        DWORD1(v20) = 1065353216;
        memset(v15, 0, sizeof(v15));
        v14 = 0u;
        v13 = 1065353216;
        v15[0] = 1065353216;
        v16 = xmmword_1B33B0B00;
        v15[5] = 1065353216;
        gm::operator*<float,4,4,4>(v12, &v13, &v17);
        ggl::DataAccess<ggl::Tile::View>::DataAccess(&v10, **(this + 47), 1);
        v6 = 0;
        v7 = v11;
        do
        {
          *(v7 + v6) = *&v12[v6];
          v6 += 16;
        }

        while (v6 != 64);
        ggl::BufferMemory::~BufferMemory(&v10);
        v8 = *(v5 + 70);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v10, *(*(this + 47) + 16));
        v9 = v11;
        *(v11 + 64) = 0;
        *(v9 + 72) = 0;
        *(v9 + 76) = v8;
        ggl::BufferMemory::~BufferMemory(&v10);
        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(*(*(this + 47) + 64) + 136), *(*(*(this + 47) + 64) + 232), **(this + 47), *(*(this + 47) + 8));
        md::GeometryLogic::createUnitTransformConstantData(&v10);
      }
    }
  }

  return result;
}

void md::VenueRenderLayer::_layoutVenueWalls(md::VenueRenderLayer *this, const md::LayoutContext *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = md::VenueRenderLayer::_venuesCommandBuffer(this, *(a2 + 1));
  operator new();
}

void sub_1B2E44180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKVenueGroup const*,md::VenueRenderLayer::VenueGroupLayoutData const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::VenueRenderLayer::_layoutOpenToBelowAreas(md::VenueRenderLayer *this, const md::LayoutContext *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = md::VenueRenderLayer::_venuesCommandBuffer(this, *(a2 + 1));
  operator new();
}

void sub_1B2E44250(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(VKVenueGroup const*,md::VenueRenderLayer::VenueGroupLayoutData const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::VenueRenderLayer::_layoutVenueFootprints(md::VenueRenderLayer *this, const md::LayoutContext *a2)
{
  md::VenueRenderLayer::_venuesCommandBuffer(this, a2);
  v4 = md::LayoutContext::get<md::VenueLogicContext>(a2);
  if (v4)
  {
    v5 = v4;
    if (gdc::Context::get<md::GeometryContext>(a2))
    {
      v41 = md::LayoutContext::get<md::CameraContext>(a2);
      md::LayoutContext::zoomAtCentrePoint(a2);
      v6 = *(this + 34);
      v42 = *(this + 35);
      if (v6 != v42)
      {
        do
        {
          v43 = v6;
          v7 = *v6;
          v8 = *(*v6 + 392);
          v9 = *(*v6 + 224);
          v10 = *(*v6 + 232);
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v44 = v10;
          ggl::DataAccess<ggl::Tile::View>::DataAccess(&v60, v9, 0);
          v11 = v61[1];
          v56 = *v61;
          v57 = v11;
          v12 = v61[3];
          v58 = v61[2];
          v59 = v12;
          ggl::BufferMemory::~BufferMemory(&v60);
          v13 = ggl::CullingGrid::intersectedCellsForView(&v56, 0.0);
          v14 = *(v8 + 784);
          v48 = *(v8 + 792);
          if (v14 != v48)
          {
            v15 = v13;
            v16 = *(v41 + 3768) * 10.0 * (1 << *(v8 + 169)) / *(v41 + 1368);
            v45 = v7;
            do
            {
              if ((*(this + 393) & 1) != 0 || !md::VenueLayerLayoutCharacteristics::shouldCullPolygonGroup(this + 384, v7, *(v14 + 64), *(v14 + 60), *(v14 + 56), v15))
              {
                v17 = (v5 + 16);
                while (1)
                {
                  v17 = *v17;
                  if (!v17)
                  {
                    break;
                  }

                  v18 = v17[3];
                  v19 = *(v18 + 16);
                  v20 = *(v18 + 24);
                  if (v19 != v20)
                  {
                    while (*(v19 + 24) != *(v14 + 64))
                    {
                      v19 += 120;
                      if (v19 == v20)
                      {
                        v19 = v20;
                        break;
                      }
                    }
                  }

                  if (v19 != v20)
                  {
                    if (v19)
                    {
                      v21 = *(v19 + 56);
                      md::FloorInfo::FloorInfo(v54, v5, v19);
                      v22 = *(v14 + 60);
                      if (((*(this + 438) & 1) != 0 || v22 == v55) && v22 >= v21 && v22 <= v55)
                      {
                        v23 = md::PolygonViewConstantsFrameCache::pop((*(this + 46) + 240));
                        ggl::DataAccess<ggl::Tile::View>::DataAccess(&v60, *v23, 1);
                        v24 = v61;
                        v25 = v57;
                        *v61 = v56;
                        v24[1] = v25;
                        v26 = v59;
                        v24[2] = v58;
                        v24[3] = v26;
                        ggl::BufferMemory::~BufferMemory(&v60);
                        v27 = *(v7 + 376);
                        ggl::DataAccess<ggl::Tile::View>::DataAccess(&v60, *v23, 1);
                        *(v61 + 16) = v27;
                        ggl::BufferMemory::~BufferMemory(&v60);
                        v28 = ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::pop(*(*(this + 47) + 2728));
                        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v28[17], v28[29], *(v7 + 240), *(v7 + 248));
                        v29 = md::PolygonViewConstantsFrameCache::pop((*(this + 46) + 240));
                        v31 = *v29;
                        v30 = v29[1];
                        if (v30)
                        {
                          atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
                        }

                        v47 = v30;
                        v32 = ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::pop(*(*(this + 47) + 3448));
                        v33 = md::PolygonViewConstantsFrameCache::pop((*(this + 46) + 240));
                        v35 = *v33;
                        v34 = v33[1];
                        if (v34)
                        {
                          atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
                        }

                        v46 = v34;
                        *v51 = v56;
                        *&v51[16] = v57;
                        *&v51[32] = v58;
                        v52 = v59;
                        memset(&v49[2] + 4, 0, 28);
                        *(v49 + 4) = 0u;
                        LODWORD(v49[0]) = 1065353216;
                        HIDWORD(v49[2]) = 1065353216;
                        LODWORD(v49[5]) = 1065353216;
                        v50 = xmmword_1B33B0710;
                        gm::operator*<float,4,4,4>(&v60, v51, v49);
                        ggl::DataAccess<ggl::Tile::View>::DataAccess(v53, v35, 1);
                        v36 = 0;
                        v37 = v53[5];
                        do
                        {
                          *(v37 + v36) = *(&v60 + v36);
                          v36 += 16;
                        }

                        while (v36 != 64);
                        ggl::BufferMemory::~BufferMemory(v53);
                        v38 = *(v45 + 376);
                        ggl::DataAccess<ggl::Tile::View>::DataAccess(&v60, v35, 1);
                        *(v61 + 16) = v38;
                        ggl::BufferMemory::~BufferMemory(&v60);
                        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v28[17], v28[29], v35, v46);
                        memset(&v51[20], 0, 28);
                        *&v51[4] = 0u;
                        *v51 = 1065353216;
                        *&v51[20] = 1065353216;
                        *&v52 = 0;
                        *&v51[40] = 1065353216;
                        *(&v52 + 1) = LODWORD(v16) | 0x3F80000000000000;
                        gm::operator*<float,4,4,4>(&v60, &v56, v51);
                        ggl::DataAccess<ggl::Tile::View>::DataAccess(v49, v31, 1);
                        v39 = 0;
                        v40 = v49[5];
                        do
                        {
                          *(v40 + v39) = *(&v60 + v39);
                          v39 += 16;
                        }

                        while (v39 != 64);
                        ggl::BufferMemory::~BufferMemory(v49);
                        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v32[17], v32[29], v31, v47);
                        md::GeometryLogic::createUnitTransformConstantData(&v60);
                      }
                    }

                    break;
                  }
                }
              }

              v14 += 72;
            }

            while (v14 != v48);
          }

          if (v44)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v44);
          }

          v6 = v43 + 1;
        }

        while (v43 + 1 != v42);
      }
    }
  }
}

void sub_1B2E44AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, std::__shared_weak_count *a21)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void *ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,geo::allocator_adapter<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonSolidFill::CompressedMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void md::VenueRenderLayer::_forEachVisibleVenueGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = *(*(a1 + 40) + 104);
  v5 = *(a2 + 8);
  v84 = md::LayoutContext::get<md::CameraContext>(v5);
  v6 = md::LayoutContext::get<md::VenueLogicContext>(v5);
  v83 = md::LayoutContext::get<md::SharedResourcesContext>(v5);
  md::LayoutContext::zoomAtCentrePoint(v5);
  v8 = *(a1 + 272);
  v82 = *(a1 + 280);
  if (v8 != v82)
  {
    v9 = v7;
    v10 = v6 + 2;
    v11 = ceilf(v7);
    v89 = v6;
    v91 = v6 + 2;
    while (1)
    {
      v12 = *(*v8 + 392);
      v13 = *(v12 + 169);
      v14 = *(v84 + 3768);
      v15 = *(v84 + 1368);
      v16 = *(*v8 + 224);
      v17 = *(*v8 + 232);
      v93 = *v8;
      v116 = v16;
      v117 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v94, v16, 0);
      v18 = v96[1];
      v112 = *v96;
      v113 = v18;
      v19 = v96[3];
      v114 = v96[2];
      v115 = v19;
      ggl::BufferMemory::~BufferMemory(&v94);
      v20 = ggl::CullingGrid::intersectedCellsForView(&v112, 0.0);
      v21 = *(v12 + 752);
      v103[0] = &v116;
      [v85 size];
      v103[1] = v22;
      v103[2] = v23;
      v24 = *(v12 + 169);
      v104 = *(v12 + 169);
      v105 = v9;
      v106 = 1065353216;
      v107 = *(v6 + 71);
      v108 = v14 * (1 << v13) / v15;
      v109 = v20;
      v25 = v21;
      if (v25)
      {
        if (v25 < 513)
        {
          v26 = 0;
          i = 512;
        }

        else
        {
          v26 = 0;
          for (i = 512; i < v25; i *= 2)
          {
            ++v26;
          }
        }

        if (i > v25)
        {
          do
          {
            --v26;
            v78 = i <= 2 * v25;
            v25 *= 2;
          }

          while (!v78);
        }
      }

      else
      {
        v26 = 0;
      }

      v110 = exp2f(v11 - (v26 + v24)) * v21;
      v28 = *v83;
      [v28 textureManager];
      v87 = v8;
      v111 = *v94;
      if (v95)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v95);
      }

      v29 = *(v12 + 760);
      v30 = *(v12 + 768);
      if (v29 != v30)
      {
        break;
      }

LABEL_65:
      if (v117)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v117);
      }

      v8 = v87 + 1;
      if (v87 + 1 == v82)
      {
        goto LABEL_68;
      }
    }

    v90 = *(v12 + 768);
    while ((*(a1 + 393) & 1) == 0)
    {
      v31 = *(v29 + 8);
      shouldCullPolygonGroup = md::VenueLayerLayoutCharacteristics::shouldCullPolygonGroup(a1 + 384, v93, v31, v20);

      if (!shouldCullPolygonGroup)
      {
        break;
      }

LABEL_64:
      v29 += 24;
      if (v29 == v30)
      {
        goto LABEL_65;
      }
    }

    v33 = *(v29 + 8);
    v34 = [v33 buildingId];

    v35 = v10;
    do
    {
      v35 = *v35;
      if (!v35)
      {
        goto LABEL_64;
      }

      v36 = v35[3];
      v38 = *(v36 + 16);
      v37 = *(v36 + 24);
      if (v38 != v37)
      {
        while (*(v38 + 24) != v34)
        {
          v38 += 120;
          if (v38 == v37)
          {
            v38 = v37;
            break;
          }
        }
      }
    }

    while (v38 == v37);
    if (!v38)
    {
      goto LABEL_64;
    }

    md::FloorInfo::FloorInfo(v101, v6, v38);
    v39 = *(v29 + 8);
    v40 = [v39 layer];

    v92 = *(v38 + 56);
    v41 = md::VenueLogicContext::displayedFloorOrdinalForVenueBuildingId(v6, v34);
    v42 = v41;
    v43 = v40;
    if (*(a1 + 438) == 1)
    {
      v88 = v41;
      ggl::ConstantDataTyped<ggl::Tile::Transform>::read(&v94, *(v93 + 240));
      ggl::BufferMemory::~BufferMemory(&v94);
      v44 = *(v29 + 8);
      v45 = &v94;
      md::VenueLayerLayoutCharacteristics::offsetLevel(&v94, a1 + 384, v6 + 18, v93 + 96, v38, v43);
      for (j = 0; j != 64; j += 16)
      {
        v48 = *v45;
        v47 = v45[1];
        v45 += 2;
        *(&v97 + j) = vcvt_hight_f32_f64(vcvt_f32_f64(v48), v47);
      }

      v112 = v97;
      v113 = v98;
      v114 = v99;
      v115 = v100;

      v49 = md::PolygonViewConstantsFrameCache::pop((*(a1 + 368) + 240));
      v50 = v103[0];
      v52 = *v49;
      v51 = v49[1];
      if (v51)
      {
        atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
      }

      v53 = v50[1];
      *v50 = v52;
      v50[1] = v51;
      v42 = v88;
      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v53);
      }

      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v94, *v103[0], 1);
      v54 = v96;
      v55 = v113;
      *v96 = v112;
      v54[1] = v55;
      v56 = v115;
      v54[2] = v114;
      v54[3] = v56;
      ggl::BufferMemory::~BufferMemory(&v94);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v94, v116, 0);
      v57 = *(v96 + 16);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v97, *v103[0], 1);
      *(*(&v99 + 1) + 64) = v57;
      ggl::BufferMemory::~BufferMemory(&v97);
      ggl::BufferMemory::~BufferMemory(&v94);
    }

    else if (v40 == v41 && v102 == 1 && *(a1 + 393) == 1)
    {
      v58 = v41;
      ggl::ConstantDataTyped<ggl::Tile::Transform>::read(&v94, *(v93 + 240));
      ggl::BufferMemory::~BufferMemory(&v94);
      if (!*(a1 + 438))
      {
        v40 = v92;
      }

      v59 = *(v29 + 8);
      v60 = v40;
      v61 = &v94;
      md::VenueLayerLayoutCharacteristics::offsetLevel(&v94, a1 + 384, v89 + 18, v93 + 96, v38, v60);
      for (k = 0; k != 64; k += 16)
      {
        v64 = *v61;
        v63 = v61[1];
        v61 += 2;
        *(&v97 + k) = vcvt_hight_f32_f64(vcvt_f32_f64(v64), v63);
      }

      v112 = v97;
      v113 = v98;
      v114 = v99;
      v115 = v100;

      v65 = md::PolygonViewConstantsFrameCache::pop((*(a1 + 368) + 240));
      v66 = v103[0];
      v68 = *v65;
      v67 = v65[1];
      if (v67)
      {
        atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
      }

      v69 = v66[1];
      *v66 = v68;
      v66[1] = v67;
      v42 = v58;
      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v69);
      }

      v109 = ggl::CullingGrid::intersectedCellsForView(&v112, 0.0);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v94, *v103[0], 1);
      v70 = v96;
      v71 = v113;
      *v96 = v112;
      v70[1] = v71;
      v72 = v115;
      v70[2] = v114;
      v70[3] = v72;
      ggl::BufferMemory::~BufferMemory(&v94);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v94, v116, 0);
      v73 = *(v96 + 16);
      ggl::DataAccess<ggl::Tile::View>::DataAccess(&v97, *v103[0], 1);
      *(*(&v99 + 1) + 64) = v73;
      ggl::BufferMemory::~BufferMemory(&v97);
      ggl::BufferMemory::~BufferMemory(&v94);
    }

    v74 = *(v29 + 8);
    if (md::VenueLayerLayoutCharacteristics::shouldCullPolygonGroup(a1 + 384, v93, v74, v20))
    {

      v10 = v91;
      if (*(a1 + 438) != 1)
      {
        goto LABEL_63;
      }

      LOBYTE(v75) = 0;
    }

    else
    {
      v76 = *(v29 + 8);
      shouldLayoutPolygonGroup = md::VenueLayerLayoutCharacteristics::shouldLayoutPolygonGroup((a1 + 384), v76, 0);
      v75 = (shouldLayoutPolygonGroup & v102);

      if ((*(a1 + 438) & 1) == 0)
      {
        v10 = v91;
        if (v75)
        {
LABEL_61:
          v79 = *(v29 + 8);
          v94 = v79;
          v80 = *(a3 + 24);
          if (!v80)
          {
            v81 = std::__throw_bad_function_call[abi:nn200100]();
            if (v117)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v117);
            }

            _Unwind_Resume(v81);
          }

          (*(*v80 + 48))(v80, &v94, v103);

          v10 = v91;
        }

LABEL_63:
        v6 = v89;
        v30 = v90;
        goto LABEL_64;
      }

      v10 = v91;
    }

    v78 = v43 >= v92 && v43 < v42;
    if (v78 || (v75 & 1) != 0)
    {
      goto LABEL_61;
    }

    goto LABEL_63;
  }

LABEL_68:
}

uint64_t std::__function::__value_func<void ()(VKVenueGroup const*,md::VenueRenderLayer::VenueGroupLayoutData const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::VenueRenderLayer::_layoutOpenToBelowAreas(md::LayoutContext const&)::$_0,std::allocator<md::VenueRenderLayer::_layoutOpenToBelowAreas(md::LayoutContext const&)::$_0>,void ()(VKVenueGroup const*,md::VenueRenderLayer::VenueGroupLayoutData const&)>::operator()(uint64_t a1, id *a2, uint64_t a3)
{
  v264 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = v4;
  v231 = v7;
  LOBYTE(v248) = 0;
  BYTE1(v248) = md::VenueLayerLayoutCharacteristics::focusState((v6 + 384), v7);
  v8 = [(VKPolygonalItemGroup *)v7 styleQueries:&v248];
  v9 = *v8;
  v240 = v6;
  if (*(v8 + 8) == *v8)
  {
    goto LABEL_74;
  }

  v10 = *v9;
  v11 = v9[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v248, v10, v11);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  if (BYTE8(v250) != 1)
  {
    goto LABEL_70;
  }

  v12 = *(a3 + 28);
  v13 = v248;
  v14 = v248[3];
  if (v12 >= 0x17)
  {
    v15 = 23;
  }

  else
  {
    v15 = v12;
  }

  v16 = *v14;
  v234 = a1;
  if (!*v14)
  {
    v18 = 0;
    goto LABEL_17;
  }

  v17 = *v16;
  v18 = *v16 == 1.0;
  if (*(v14 + 10) != 1 || (v17 != 0.0 ? (v19 = v17 == 1.0) : (v19 = 1), v19))
  {
LABEL_17:
    v20 = *(v14 + v18 + 11);
    if (v20 != 2)
    {
      goto LABEL_28;
    }
  }

  v21 = *(v14 + 16);
  if (v21)
  {
    v22 = *(v21 + 72);
    if (v22)
    {
      v23 = *v22 + 120 * *(v22 + v15 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v23, 0x93u) != *(v23 + 12))
      {
        goto LABEL_31;
      }
    }

    if (*(v14 + 56))
    {
      v24 = *(v14 + 48);
      v25 = 8 * *(v14 + 56);
      while (1)
      {
        v26 = *(*v24 + 72);
        if (v26)
        {
          v27 = *v26 + 120 * *(v26 + v15 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v27, 0x93u) != *(v27 + 12))
          {
            break;
          }
        }

        v24 += 8;
        v20 = 1;
        v25 -= 8;
        if (!v25)
        {
          goto LABEL_28;
        }
      }

LABEL_31:
      if (v16)
      {
        v31 = *v16;
        v32 = *v16 == 1.0;
        if (*(v14 + 10) == 1 && v31 != 0.0 && v31 != 1.0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v32 = 0;
      }

      v34 = *(v14 + v32 + 11);
      if (v34 != 2)
      {
LABEL_55:
        v47 = *(v14 + 16 * v34 + 16);
        if (v47)
        {
          v48 = *(v47 + 72);
          if (v48)
          {
            v49 = *v48 + 120 * *(v48 + v15 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v49, 0x92u) != *(v49 + 12))
            {
LABEL_58:
              (*(*v13 + 56))(v13);
              v7 = v231;
              v6 = v240;
              a1 = v234;
              if (v250)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v250);
              }

              if (v249)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v249);
              }

              if (gdc::Context::get<md::GeometryContext>(*(v5 + 8)))
              {
                v50 = ggl::FragmentedPool<ggl::PolygonSolidFill::CompressedMeshPipelineSetup>::pop(*(*(v240 + 376) + 2008));
                ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v50[17], v50[29], **a3, *(*a3 + 8));
                md::GeometryLogic::createUnitTransformConstantData(&v248);
              }

              goto LABEL_74;
            }
          }

          v51 = v14 + 16 * v34;
          if (*(v51 + 56))
          {
            v52 = *(v51 + 48);
            v53 = 8 * *(v51 + 56);
            while (1)
            {
              v54 = *(*v52 + 72);
              if (v54)
              {
                v55 = *v54 + 120 * *(v54 + v15 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v55, 0x92u) != *(v55 + 12))
                {
                  goto LABEL_58;
                }
              }

              v52 += 8;
              v53 -= 8;
              if (!v53)
              {
                goto LABEL_69;
              }
            }
          }
        }

        goto LABEL_69;
      }

LABEL_39:
      v35 = *(v14 + 16);
      if (v35)
      {
        v36 = *(v35 + 72);
        if (v36)
        {
          v37 = *v36 + 120 * *(v36 + v15 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v37, 0x92u) != *(v37 + 12))
          {
            goto LABEL_58;
          }
        }

        if (*(v14 + 56))
        {
          v38 = *(v14 + 48);
          v39 = 8 * *(v14 + 56);
          while (1)
          {
            v40 = *(*v38 + 72);
            if (v40)
            {
              v41 = *v40 + 120 * *(v40 + v15 + 16);
              if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v41, 0x92u) != *(v41 + 12))
              {
                goto LABEL_58;
              }
            }

            v38 += 8;
            v34 = 1;
            v39 -= 8;
            if (!v39)
            {
              goto LABEL_55;
            }
          }
        }
      }

      v34 = 1;
      goto LABEL_55;
    }
  }

  v20 = 1;
LABEL_28:
  v28 = *(v14 + 16 * v20 + 16);
  if (v28)
  {
    v29 = *(v28 + 72);
    if (v29)
    {
      v30 = *v29 + 120 * *(v29 + v15 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v30, 0x93u) != *(v30 + 12))
      {
        goto LABEL_31;
      }
    }

    v42 = v14 + 16 * v20;
    if (*(v42 + 56))
    {
      v43 = *(v42 + 48);
      v44 = 8 * *(v42 + 56);
      do
      {
        v45 = *(*v43 + 72);
        if (v45)
        {
          v46 = *v45 + 120 * *(v45 + v15 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v46, 0x93u) != *(v46 + 12))
          {
            goto LABEL_31;
          }
        }

        v43 += 8;
        v44 -= 8;
      }

      while (v44);
    }
  }

LABEL_69:
  v7 = v231;
  (*(*v248 + 56))(v248);
  v6 = v240;
  a1 = v234;
LABEL_70:
  if (v250)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v250);
  }

  if (v249)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v249);
  }

LABEL_74:

  v56 = *(a1 + 16);
  v237 = **(a1 + 24);
  v239 = v7;
  v57 = md::VenueLayerLayoutCharacteristics::focusState((v6 + 384), v239);
  LOBYTE(v248) = 0;
  BYTE1(v248) = v57;
  v58 = [(VKPolygonalItemGroup *)v239 styleQueries:&v248];
  v59 = *v58;
  if (*(v58 + 8) == *v58)
  {
    goto LABEL_165;
  }

  v60 = *v59;
  v61 = v59[1];
  if (v61)
  {
    atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v248, v60, v61);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v61);
  }

  if (BYTE8(v250) != 1)
  {
    goto LABEL_161;
  }

  v62 = *(a3 + 28);
  v63 = v248[3];
  if (v62 >= 0x17)
  {
    v64 = 23;
  }

  else
  {
    v64 = v62;
  }

  v65 = *v63;
  if (!*v63)
  {
    v67 = 0;
    goto LABEL_90;
  }

  v66 = *v65;
  v67 = *v65 == 1.0;
  if (*(v63 + 10) != 1 || (v66 != 0.0 ? (v68 = v66 == 1.0) : (v68 = 1), v68))
  {
LABEL_90:
    v69 = *(v63 + v67 + 11);
    if (v69 != 2)
    {
      goto LABEL_101;
    }
  }

  v70 = *(v63 + 16);
  if (v70)
  {
    v71 = *(v70 + 72);
    if (v71)
    {
      v72 = *v71 + 120 * *(v71 + v64 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v72, 0x93u) != *(v72 + 12))
      {
        goto LABEL_104;
      }
    }

    if (*(v63 + 56))
    {
      v73 = *(v63 + 48);
      v74 = 8 * *(v63 + 56);
      while (1)
      {
        v75 = *(*v73 + 72);
        if (v75)
        {
          v76 = *v75 + 120 * *(v75 + v64 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v76, 0x93u) != *(v76 + 12))
          {
            goto LABEL_104;
          }
        }

        v73 += 8;
        v69 = 1;
        v74 -= 8;
        if (!v74)
        {
          goto LABEL_101;
        }
      }
    }
  }

  v69 = 1;
LABEL_101:
  v77 = *(v63 + 16 * v69 + 16);
  if (!v77)
  {
    goto LABEL_160;
  }

  v78 = *(v77 + 72);
  if (!v78 || (v79 = *v78 + 120 * *(v78 + v64 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v79, 0x93u) == *(v79 + 12)))
  {
    v91 = v63 + 16 * v69;
    if (!*(v91 + 56))
    {
      goto LABEL_160;
    }

    v92 = *(v91 + 48);
    v93 = 8 * *(v91 + 56);
    while (1)
    {
      v94 = *(*v92 + 72);
      if (v94)
      {
        v95 = *v94 + 120 * *(v94 + v64 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v95, 0x93u) != *(v95 + 12))
        {
          break;
        }
      }

      v92 += 8;
      v93 -= 8;
      if (!v93)
      {
        goto LABEL_160;
      }
    }
  }

LABEL_104:
  if (!v65)
  {
    v81 = 0;
    goto LABEL_111;
  }

  v80 = *v65;
  v81 = *v65 == 1.0;
  if (*(v63 + 10) != 1 || (v80 != 0.0 ? (v82 = v80 == 1.0) : (v82 = 1), v82))
  {
LABEL_111:
    v83 = *(v63 + v81 + 11);
    if (v83 != 2)
    {
      goto LABEL_128;
    }
  }

  v84 = *(v63 + 16);
  if (v84)
  {
    v85 = *(v84 + 72);
    if (v85)
    {
      v86 = *v85 + 120 * *(v85 + v64 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v86, 0x92u) != *(v86 + 12))
      {
        goto LABEL_131;
      }
    }

    if (*(v63 + 56))
    {
      v87 = *(v63 + 48);
      v88 = 8 * *(v63 + 56);
      while (1)
      {
        v89 = *(*v87 + 72);
        if (v89)
        {
          v90 = *v89 + 120 * *(v89 + v64 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v90, 0x92u) != *(v90 + 12))
          {
            goto LABEL_131;
          }
        }

        v87 += 8;
        v83 = 1;
        v88 -= 8;
        if (!v88)
        {
          goto LABEL_128;
        }
      }
    }
  }

  v83 = 1;
LABEL_128:
  v96 = *(v63 + 16 * v83 + 16);
  if (!v96)
  {
    goto LABEL_160;
  }

  v97 = *(v96 + 72);
  if (!v97 || (v98 = *v97 + 120 * *(v97 + v64 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v98, 0x92u) == *(v98 + 12)))
  {
    v110 = v63 + 16 * v83;
    if (!*(v110 + 56))
    {
      goto LABEL_160;
    }

    v111 = *(v110 + 48);
    v112 = 8 * *(v110 + 56);
    while (1)
    {
      v113 = *(*v111 + 72);
      if (v113)
      {
        v114 = *v113 + 120 * *(v113 + v64 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v114, 0x92u) != *(v114 + 12))
        {
          break;
        }
      }

      v111 += 8;
      v112 -= 8;
      if (!v112)
      {
        goto LABEL_160;
      }
    }
  }

LABEL_131:
  if (!v65)
  {
    v100 = 0;
    goto LABEL_138;
  }

  v99 = *v65;
  v100 = *v65 == 1.0;
  if (*(v63 + 10) != 1 || (v99 != 0.0 ? (v101 = v99 == 1.0) : (v101 = 1), v101))
  {
LABEL_138:
    v102 = *(v63 + v100 + 11);
    if (v102 != 2)
    {
      goto LABEL_155;
    }
  }

  v103 = *(v63 + 16);
  if (v103)
  {
    v104 = *(v103 + 72);
    if (v104)
    {
      v105 = *v104 + 120 * *(v104 + v64 + 16);
      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v105, 0x5Bu) != *(v105 + 12))
      {
        goto LABEL_158;
      }
    }

    if (*(v63 + 56))
    {
      v106 = *(v63 + 48);
      v107 = 8 * *(v63 + 56);
      while (1)
      {
        v108 = *(*v106 + 72);
        if (v108)
        {
          v109 = *v108 + 120 * *(v108 + v64 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v109, 0x5Bu) != *(v109 + 12))
          {
            goto LABEL_158;
          }
        }

        v106 += 8;
        v102 = 1;
        v107 -= 8;
        if (!v107)
        {
          goto LABEL_155;
        }
      }
    }
  }

  v102 = 1;
LABEL_155:
  v115 = *(v63 + 16 * v102 + 16);
  if (!v115)
  {
    goto LABEL_173;
  }

  v116 = *(v115 + 72);
  if (!v116 || (v117 = *v116 + 120 * *(v116 + v64 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v117, 0x5Bu) == *(v117 + 12)))
  {
    v118 = v63 + 16 * v102;
    if (!*(v118 + 56))
    {
      goto LABEL_173;
    }

    v119 = *(v118 + 48);
    v120 = 8 * *(v118 + 56);
    while (1)
    {
      v121 = *(*v119 + 72);
      if (v121)
      {
        v122 = *v121 + 120 * *(v121 + v64 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v122, 0x5Bu) != *(v122 + 12))
        {
          break;
        }
      }

      v119 += 8;
      v120 -= 8;
      if (!v120)
      {
        goto LABEL_173;
      }
    }
  }

LABEL_158:
  if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v63, 91, v62 == 0.0, 2u, 0))
  {
    if ((BYTE8(v250) & 1) == 0)
    {
LABEL_161:
      if (v250)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v250);
      }

      if (v249)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v249);
      }

      goto LABEL_165;
    }

LABEL_160:
    (*(*v248 + 56))(v248);
    goto LABEL_161;
  }

LABEL_173:
  v123 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(v56 + 16), *(*(v56 + 16) + 8));
  if (*(a3 + 28) >= 0x17)
  {
    v124 = 23;
  }

  else
  {
    v124 = *(a3 + 28);
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(v257, v248[3], 147, v124, 2u, 0);
  *v241 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v257)), vdupq_n_s32(0x37800080u));
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v248[3], 493, v124, 2u, 0);
  md::AccessibilityHelper::luminanceAdjustedColor(v257, *v123, v241, v125);
  v235 = *v257;
  if (*(a3 + 28) >= 0x17)
  {
    v126 = 23;
  }

  else
  {
    v126 = *(a3 + 28);
  }

  v232 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<gm::Matrix<float,2,1>>(v248[3], v126, 2).u32[0];
  v230 = v127;
  if (BYTE8(v250) == 1)
  {
    (*(*v248 + 56))(v248);
  }

  if (v250)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v250);
  }

  v128 = v249;
  if (v249)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v249);
  }

  v229 = *(a3 + 8);
  v129 = *(*(v6 + 376) + 2248);
  v130 = v129[1];
  if (v130 == *v129)
  {
    v132 = v129[11];
    if (!v132)
    {
      goto LABEL_250;
    }

    v128 = (*(*v132 + 48))(v132);
    v131 = v128;
  }

  else
  {
    v131 = *(v130 - 8);
    v129[1] = v130 - 8;
  }

  v134 = v129[5];
  v133 = v129[6];
  if (v134 >= v133)
  {
    v136 = v129[4];
    v137 = (v134 - v136) >> 3;
    if ((v137 + 1) >> 61)
    {
      goto LABEL_251;
    }

    v138 = v133 - v136;
    v139 = v138 >> 2;
    if (v138 >> 2 <= (v137 + 1))
    {
      v139 = v137 + 1;
    }

    if (v138 >= 0x7FFFFFFFFFFFFFF8)
    {
      v140 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v140 = v139;
    }

    *(&v250 + 1) = v129 + 7;
    if (v140)
    {
      v141 = ggl::zone_mallocator::instance(v128);
      v142 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *>(v141, v140);
    }

    else
    {
      v142 = 0;
    }

    v144 = &v142[8 * v140];
    v143 = &v142[8 * v137];
    *v143 = v131;
    v135 = v143 + 1;
    v145 = v129[4];
    v146 = v129[5] - v145;
    v147 = v143 - v146;
    memcpy(v143 - v146, v145, v146);
    v148 = v129[4];
    v129[4] = v147;
    v129[5] = v135;
    v149 = v129[6];
    v129[6] = v144;
    *(&v249 + 1) = v148;
    *&v250 = v149;
    v248 = v148;
    *&v249 = v148;
    std::__split_buffer<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v248);
  }

  else
  {
    *v134 = v131;
    v135 = v134 + 1;
  }

  v129[5] = v135;
  v248 = v131;
  v150 = v129[15];
  if (!v150)
  {
    goto LABEL_250;
  }

  (*(*v150 + 48))(v150, &v248);
  v151 = *a3;
  v152 = v131[17];
  v152[1] = 0;
  v153 = *v151;
  *v152 = *v151;
  v154 = v131[29];
  v155 = v151[1];
  if (v155)
  {
    atomic_fetch_add_explicit((v155 + 8), 1uLL, memory_order_relaxed);
  }

  v156 = v154[1];
  *v154 = v153;
  v154[1] = v155;
  if (v156)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v156);
  }

  v157 = *(*(v6 + 376) + 2488);
  v158 = v157[1];
  if (v158 != *v157)
  {
    v159 = *(v158 - 8);
    v157[1] = v158 - 8;
    goto LABEL_210;
  }

  v160 = v157[11];
  if (!v160)
  {
LABEL_250:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_251:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v156 = (*(*v160 + 48))(v160);
  v159 = v156;
LABEL_210:
  v162 = v157[5];
  v161 = v157[6];
  if (v162 >= v161)
  {
    v164 = v157[4];
    v165 = (v162 - v164) >> 3;
    if ((v165 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v166 = v161 - v164;
    v167 = v166 >> 2;
    if (v166 >> 2 <= (v165 + 1))
    {
      v167 = v165 + 1;
    }

    if (v166 >= 0x7FFFFFFFFFFFFFF8)
    {
      v168 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v168 = v167;
    }

    *(&v250 + 1) = v157 + 7;
    if (v168)
    {
      v169 = ggl::zone_mallocator::instance(v156);
      v170 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *>(v169, v168);
    }

    else
    {
      v170 = 0;
    }

    v172 = &v170[8 * v168];
    v171 = &v170[8 * v165];
    *v171 = v159;
    v163 = v171 + 1;
    v173 = v157[4];
    v174 = v157[5] - v173;
    v175 = v171 - v174;
    memcpy(v171 - v174, v173, v174);
    v176 = v157[4];
    v157[4] = v175;
    v157[5] = v163;
    v177 = v157[6];
    v157[6] = v172;
    *(&v249 + 1) = v176;
    *&v250 = v177;
    v248 = v176;
    *&v249 = v176;
    std::__split_buffer<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v248);
  }

  else
  {
    *v162 = v159;
    v163 = v162 + 1;
  }

  v157[5] = v163;
  v248 = v159;
  v178 = v157[15];
  if (!v178)
  {
    goto LABEL_250;
  }

  (*(*v178 + 48))(v178, &v248);
  v179 = vcvtq_f64_f32(__PAIR64__(v230, v232));
  v180 = *a3;
  v181 = v159[17];
  v181[1] = 0;
  v182 = *v180;
  *v181 = *v180;
  v183 = v159[29];
  v184 = v180[1];
  if (v184)
  {
    atomic_fetch_add_explicit((v184 + 8), 1uLL, memory_order_relaxed);
  }

  v185 = vdivq_f64(v179, v229);
  v186 = v183[1];
  *v183 = v182;
  v183[1] = v184;
  if (v186)
  {
    v233 = v185;
    std::__shared_weak_count::__release_shared[abi:nn200100](v186);
    v185 = v233;
  }

  v187 = vcvt_f32_f64(v185);
  v188 = v159[17];
  *(v188 + 16) = *(v131[17] + 16);
  *(v188 + 24) = 0;
  v189 = v159[29];
  v190 = *(v189 + 24);
  *(v189 + 16) = 0;
  *(v189 + 24) = 0;
  if (v190)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v190);
  }

  v191 = *(v131[17] + 16);
  ggl::BufferMemory::BufferMemory(v241);
  ggl::ResourceAccessor::accessConstantData(&v248, 0, v191, 1);
  ggl::BufferMemory::operator=(v241, &v248);
  ggl::BufferMemory::~BufferMemory(&v248);
  v192 = v243;
  *v243 = v235;
  v192[2] = v187;
  ggl::BufferMemory::~BufferMemory(v241);
  *&v193 = ggl::RenderItem::RenderItem(v241, "").u64[0];
  v194 = *(v6 + 376);
  *&v242 = v194 + 2256;
  *(&v242 + 1) = v131;
  LODWORD(v243) = *(v194 + 3673);
  v195 = *(v6 + 393);
  v196 = 20 * [(VKPolygonGroup *)v239 layer]+ 0x800000004;
  if (!v195)
  {
    v196 = 0x800000004;
  }

  *(&v243 + 1) = v196;
  *&v197 = ggl::RenderItem::RenderItem(v257, "").u64[0];
  v198 = *(v6 + 376);
  *&v258 = v198 + 2496;
  *(&v258 + 1) = v159;
  LODWORD(v259) = *(v198 + 3673);
  v199 = *(v6 + 393);
  v200 = 20 * [(VKPolygonGroup *)v239 layer]+ 0x800000005;
  if (!v199)
  {
    v200 = 0x800000005;
  }

  *(&v259 + 1) = v200;
  v201 = [(VKPolygonGroup *)v239 strokeMeshes];
  v202 = *v201;
  v236 = *(v201 + 8);
  if (*v201 != v236)
  {
    v203 = 0;
    do
    {
      v204 = *(v6 + 376);
      v205 = *(a3 + 48);
      v256[0] = &unk_1F2A4E800;
      v256[3] = v256;
      v206 = [(VKPolygonalItemGroup *)v239 commitRangesToStrokeRenderItemBatcher:v204 + 3712 forMeshAtIndex:v203 cullingMask:v205 featureIdPredicate:v256];
      std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v256);
      v207 = *(v6 + 376);
      v208 = *v202;
      v248 = &off_1F2A5D8B8;
      v251 = v243;
      v250 = v242;
      v249 = *&v241[8];
      v255 = v247;
      v254 = v246;
      v253 = v245;
      v252 = v244;
      v209 = *(v207 + 3800);
      v210 = v209[1];
      if (v210 == *(v207 + 3808))
      {
        v209 = *v209;
        if (!v209)
        {
          v209 = malloc_type_malloc(120 * v210 + 16, 0x1020040EDED9539uLL);
          *v209 = 0;
          v209[1] = 0;
          **(v207 + 3800) = v209;
        }

        *(v207 + 3800) = v209;
        v210 = v209[1];
      }

      v211 = &v209[15 * v210];
      v209[1] = v210 + 1;
      v211[2] = &off_1F2A5D8B8;
      v212 = v249;
      v213 = v250;
      *(v211 + 7) = v251;
      *(v211 + 5) = v213;
      *(v211 + 3) = v212;
      v214 = v252;
      v215 = v253;
      v216 = v254;
      *(v211 + 15) = v255;
      *(v211 + 13) = v216;
      *(v211 + 11) = v215;
      *(v211 + 9) = v214;
      ggl::RenderItem::~RenderItem(&v248);
      v211[10] = v208;
      v217 = *v206;
      v211[13] = *v206;
      v211[14] = (v206[1] - v217) >> 4;
      ggl::CommandBuffer::pushRenderItem(v237, (v211 + 2));
      v218 = *(v240 + 376);
      v219 = *v202;
      v248 = &off_1F2A5D8B8;
      v249 = *&v257[8];
      v250 = v258;
      v251 = v259;
      v255 = v263;
      v254 = v262;
      v253 = v261;
      v252 = v260;
      v220 = *(v218 + 3800);
      v221 = v220[1];
      if (v221 == *(v218 + 3808))
      {
        v220 = *v220;
        if (!v220)
        {
          v220 = malloc_type_malloc(120 * v221 + 16, 0x1020040EDED9539uLL);
          *v220 = 0;
          v220[1] = 0;
          **(v218 + 3800) = v220;
        }

        *(v218 + 3800) = v220;
        v221 = v220[1];
      }

      v222 = &v220[15 * v221];
      v220[1] = v221 + 1;
      v222[2] = &off_1F2A5D8B8;
      v223 = v249;
      v224 = v250;
      *(v222 + 7) = v251;
      *(v222 + 5) = v224;
      *(v222 + 3) = v223;
      v225 = v252;
      v226 = v253;
      v227 = v254;
      *(v222 + 15) = v255;
      *(v222 + 13) = v227;
      *(v222 + 11) = v226;
      *(v222 + 9) = v225;
      ggl::RenderItem::~RenderItem(&v248);
      v222[10] = v219;
      v228 = *v206;
      v222[13] = *v206;
      v222[14] = (v206[1] - v228) >> 4;
      ggl::CommandBuffer::pushRenderItem(v237, (v222 + 2));
      ++v203;
      v202 += 2;
      v6 = v240;
    }

    while (v202 != v236);
  }

LABEL_165:
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueOpenToBelowShadow::MeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueOpenToBelowShadowAlpha::MeshPipelineSetup *>(uint64_t a1, void *a2)
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

__n128 std::__function::__func<md::VenueRenderLayer::_layoutOpenToBelowAreas(md::LayoutContext const&)::$_0,std::allocator<md::VenueRenderLayer::_layoutOpenToBelowAreas(md::LayoutContext const&)::$_0>,void ()(VKVenueGroup const*,md::VenueRenderLayer::VenueGroupLayoutData const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A06978;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::VenueRenderLayer::_layoutVenueWalls(md::LayoutContext const&)::$_0,std::allocator<md::VenueRenderLayer::_layoutVenueWalls(md::LayoutContext const&)::$_0>,void ()(VKVenueGroup const*,md::VenueRenderLayer::VenueGroupLayoutData const&)>::operator()(uint64_t a1, id *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v559 = *(a1 + 16);
  v575 = **(a1 + 24);
  v7 = v5;
  v568 = v7;
  v551 = ggl::FragmentedPool<ggl::VenueWall::MeshPipelineSetup>::pop(*(*(v6 + 376) + 536));
  v8 = ggl::FragmentedPool<ggl::VenueWall::MeshPipelineSetup>::pop(*(*(v6 + 376) + 536));
  v550 = v8;
  v9 = *(*(v6 + 376) + 992);
  v10 = v9[1];
  if (v10 == *v9)
  {
    v12 = v9[11];
    if (!v12)
    {
      goto LABEL_443;
    }

    v8 = (*(*v12 + 48))(v12);
    v11 = v8;
  }

  else
  {
    v11 = *(v10 - 8);
    v9[1] = v10 - 8;
  }

  v14 = v9[5];
  v13 = v9[6];
  v577 = a3;
  if (v14 >= v13)
  {
    v16 = v9[4];
    v17 = (v14 - v16) >> 3;
    if ((v17 + 1) >> 61)
    {
      goto LABEL_444;
    }

    v18 = v13 - v16;
    v19 = v18 >> 2;
    if (v18 >> 2 <= (v17 + 1))
    {
      v19 = v17 + 1;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v19;
    }

    *(&v637 + 1) = v9 + 7;
    if (v20)
    {
      v21 = ggl::zone_mallocator::instance(v8);
      v22 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::WallTopMeshPipelineSetup *>(v21, v20);
    }

    else
    {
      v22 = 0;
    }

    v24 = &v22[8 * v20];
    v23 = &v22[8 * v17];
    *v23 = v11;
    v15 = v23 + 1;
    v25 = v9[4];
    v26 = v9[5] - v25;
    v27 = v23 - v26;
    memcpy(v23 - v26, v25, v26);
    v28 = v9[4];
    v9[4] = v27;
    v9[5] = v15;
    v29 = v9[6];
    v9[6] = v24;
    *(&v636 + 1) = v28;
    *&v637 = v29;
    *&v636 = v28;
    v635 = v28;
    std::__split_buffer<ggl::VenueWall::WallTopMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallTopMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v635);
    a3 = v577;
  }

  else
  {
    *v14 = v11;
    v15 = v14 + 1;
  }

  v9[5] = v15;
  v635 = v11;
  v30 = v9[15];
  if (!v30)
  {
    goto LABEL_443;
  }

  v31 = (*(*v30 + 48))(v30, &v635);
  v32 = *(*(v6 + 376) + 1232);
  v33 = v32[1];
  v552 = v11;
  if (v33 == *v32)
  {
    v35 = v32[11];
    if (!v35)
    {
      goto LABEL_443;
    }

    v31 = (*(*v35 + 48))(v35);
    v34 = v31;
  }

  else
  {
    v34 = *(v33 - 8);
    v32[1] = v33 - 8;
  }

  v37 = v32[5];
  v36 = v32[6];
  if (v37 >= v36)
  {
    v39 = v32[4];
    v40 = (v37 - v39) >> 3;
    if ((v40 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v41 = v36 - v39;
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

    *(&v637 + 1) = v32 + 7;
    if (v43)
    {
      v44 = ggl::zone_mallocator::instance(v31);
      v45 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::WallEndCapMeshPipelineSetup *>(v44, v43);
    }

    else
    {
      v45 = 0;
    }

    v47 = &v45[8 * v43];
    v46 = &v45[8 * v40];
    *v46 = v34;
    v38 = v46 + 1;
    v48 = v32[4];
    v49 = v32[5] - v48;
    v50 = v46 - v49;
    memcpy(v46 - v49, v48, v49);
    v51 = v32[4];
    v32[4] = v50;
    v32[5] = v38;
    v52 = v32[6];
    v32[6] = v47;
    *(&v636 + 1) = v51;
    *&v637 = v52;
    *&v636 = v51;
    v635 = v51;
    std::__split_buffer<ggl::VenueWall::WallEndCapMeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::WallEndCapMeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v635);
    a3 = v577;
  }

  else
  {
    *v37 = v34;
    v38 = v37 + 1;
  }

  v32[5] = v38;
  v635 = v34;
  v53 = v32[15];
  if (!v53)
  {
    goto LABEL_443;
  }

  (*(*v53 + 48))(v53, &v635);
  v549 = ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>::pop(*(*(v6 + 376) + 1520));
  v54 = ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>::pop(*(*(v6 + 376) + 1760));
  v548 = v54;
  v55 = *(*(v6 + 376) + 1984);
  v56 = v55[1];
  if (v56 == *v55)
  {
    v58 = v55[11];
    if (!v58)
    {
      goto LABEL_443;
    }

    v54 = (*(*v58 + 48))(v58);
    v57 = v54;
  }

  else
  {
    v57 = *(v56 - 8);
    v55[1] = v56 - 8;
  }

  v60 = v55[5];
  v59 = v55[6];
  if (v60 >= v59)
  {
    v62 = v55[4];
    v63 = (v60 - v62) >> 3;
    if ((v63 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v64 = v59 - v62;
    v65 = v64 >> 2;
    if (v64 >> 2 <= (v63 + 1))
    {
      v65 = v63 + 1;
    }

    if (v64 >= 0x7FFFFFFFFFFFFFF8)
    {
      v66 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v66 = v65;
    }

    *(&v637 + 1) = v55 + 7;
    if (v66)
    {
      v67 = ggl::zone_mallocator::instance(v54);
      v68 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Building::Gradient> *>(v67, v66);
    }

    else
    {
      v68 = 0;
    }

    v70 = &v68[8 * v66];
    v69 = &v68[8 * v63];
    *v69 = v57;
    v61 = v69 + 1;
    v71 = v55[4];
    v72 = v55[5] - v71;
    v73 = v69 - v72;
    memcpy(v69 - v72, v71, v72);
    v74 = v55[4];
    v55[4] = v73;
    v55[5] = v61;
    v75 = v55[6];
    v55[6] = v70;
    *(&v636 + 1) = v74;
    *&v637 = v75;
    *&v636 = v74;
    v635 = v74;
    std::__split_buffer<ggl::ConstantDataTyped<ggl::Building::Gradient> *,geo::allocator_adapter<ggl::ConstantDataTyped<ggl::Building::Gradient> *,ggl::zone_mallocator> &>::~__split_buffer(&v635);
    a3 = v577;
  }

  else
  {
    *v60 = v57;
    v61 = v60 + 1;
  }

  v55[5] = v61;
  v635 = v57;
  v76 = v55[15];
  if (!v76)
  {
    goto LABEL_443;
  }

  (*(*v76 + 48))(v76, &v635);
  v77 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(v559 + 8), 0x41E8D6E445F4145uLL);
  if (v77 && (v78 = v77[5], *(v78 + 8) == 0x41E8D6E445F4145))
  {
    v79 = *(v78 + 32);
  }

  else
  {
    v79 = 0;
  }

  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v551[17], v551[29], **a3, *(*a3 + 8));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(v551[17], v551[29], *v79, *(v79 + 8));
  v80 = v551[17];
  *(v80 + 32) = v57;
  *(v80 + 40) = 0;
  v81 = v551[29];
  v82 = *(v81 + 40);
  *(v81 + 32) = 0;
  *(v81 + 40) = 0;
  if (v82)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v82);
  }

  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v550 + 17), *(v550 + 29), **a3, *(*a3 + 8));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setLabelOptionsConstantData(*(v550 + 17), *(v550 + 29), *v79, *(v79 + 8));
  v83 = *(v550 + 17);
  *(v83 + 32) = v57;
  *(v83 + 40) = 0;
  v84 = *(v550 + 29);
  v85 = *(v84 + 40);
  *(v84 + 32) = 0;
  *(v84 + 40) = 0;
  if (v85)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v85);
  }

  v86 = *a3;
  v87 = v552[17];
  v87[1] = 0;
  v88 = *v86;
  *v87 = *v86;
  v89 = v552[29];
  v90 = v86[1];
  if (v90)
  {
    atomic_fetch_add_explicit((v90 + 8), 1uLL, memory_order_relaxed);
  }

  v91 = v89[1];
  *v89 = v88;
  v89[1] = v90;
  if (v91)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v91);
  }

  v92 = v552[17];
  *(v92 + 3) = 0;
  v93 = *v79;
  *(v92 + 2) = *v79;
  v94 = v552[29];
  v95 = *(v79 + 8);
  if (v95)
  {
    atomic_fetch_add_explicit((v95 + 8), 1uLL, memory_order_relaxed);
  }

  v96 = *(v94 + 3);
  *(v94 + 2) = v93;
  *(v94 + 3) = v95;
  if (v96)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v96);
  }

  v97 = *a3;
  v98 = *(v34 + 17);
  v98[1] = 0;
  v99 = *v97;
  *v98 = *v97;
  v100 = *(v34 + 29);
  v101 = v97[1];
  if (v101)
  {
    atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
  }

  v102 = v100[1];
  *v100 = v99;
  v100[1] = v101;
  if (v102)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v102);
  }

  v103 = *(v34 + 17);
  *(v103 + 24) = 0;
  v104 = *v79;
  *(v103 + 16) = *v79;
  v105 = *(v34 + 29);
  v106 = *(v79 + 8);
  if (v106)
  {
    atomic_fetch_add_explicit((v106 + 8), 1uLL, memory_order_relaxed);
  }

  v107 = *(v105 + 24);
  *(v105 + 16) = v104;
  *(v105 + 24) = v106;
  if (v107)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v107);
  }

  v108 = *(v34 + 17);
  *(v108 + 32) = v57;
  *(v108 + 40) = 0;
  v109 = *(v34 + 29);
  v110 = *(v109 + 40);
  *(v109 + 32) = 0;
  *(v109 + 40) = 0;
  if (v110)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v110);
  }

  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(v549[17], v549[29], **a3, *(*a3 + 8));
  ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v548 + 17), *(v548 + 29), **a3, *(*a3 + 8));
  *v572 = *(v79 + 80);
  v111 = md::VenueLayerLayoutCharacteristics::focusState((v6 + 384), v7);
  v547 = v34;
  v578 = v6;
  LOBYTE(v635) = 0;
  BYTE1(v635) = v111;
  v112 = [(VKPolygonalItemGroup *)v7 styleQueries:&v635];
  v113 = v112;
  if (((v112[2] - *v112) >> 4))
  {
    v557 = ((v112[2] - *v112) >> 4);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v627, *(v551[17] + 48));
    v114 = *(*(v34 + 17) + 48);
    ggl::BufferMemory::BufferMemory(&v611);
    ggl::ResourceAccessor::accessConstantData(&v635, 0, v114, 1);
    ggl::BufferMemory::operator=(&v611, &v635);
    ggl::BufferMemory::~BufferMemory(&v635);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v603, v57);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v595, *(*(v550 + 17) + 48));
    v115 = *(v552[17] + 4);
    ggl::BufferMemory::BufferMemory(&v587);
    ggl::ResourceAccessor::accessConstantData(&v635, 0, v115, 1);
    ggl::BufferMemory::operator=(&v587, &v635);
    ggl::BufferMemory::~BufferMemory(&v635);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v635, *(v549[17] + 16));
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v579, *(*(v548 + 17) + 16));
    v116 = [(VKPolygonGroup *)v7 wallTexture];
    v546 = a1;
    if (v116)
    {
      v117 = v116;
    }

    else
    {
      v117 = *(a3 + 56);
    }

    v118 = *(a3 + 52);
    v119 = *(v117 + 80);
    [(VKPolygonGroup *)v7 maximumSectionLength];
    v120 = 0;
    v121 = 0;
    v554 = vcvt_f32_f64(*v572);
    v122 = v118 / v119;
    *v551[21] = v117;
    **(v550 + 21) = v117;
    *v552[21] = v117;
    **(v34 + 21) = *(a3 + 56);
    v123 = v630;
    *(v630 + 448) = -1082130432;
    *(v123 + 456) = v124;
    *(v123 + 452) = v122;
    v125 = v598;
    *(v598 + 448) = 1065353216;
    *(v125 + 456) = v124;
    *(v125 + 452) = v122;
    v126 = v590;
    *(v590 + 456) = v124;
    *(v126 + 452) = v122;
    v127 = 1.0;
    v553 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v554, v554)));
    v128 = 23.0;
    v573 = vdupq_n_s32(0x37800080u);
    v129 = 1;
    v130 = v557;
    v555 = v113;
    while (1)
    {
      v131 = *(*v113 + 16 * v120);
      v132 = *(*v113 + 16 * v120 + 8);
      if (v132)
      {
        atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v621, v131, v132);
      if (v132)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v132);
      }

      if (v624 == 1)
      {
        if (v120 || (*(a3 + 28) >= 0x17 ? (v133 = 23) : (v133 = *(a3 + 28)), (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v621[3], 91, v133, 2u, 0) & 1) != 0))
        {
          v569 = v121;
          v134 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(v559 + 16), *(*(v559 + 16) + 8));
          v135 = fminf(fmaxf(*(a3 + 28), 0.0), v128);
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v620, v621[3], 161, 2u, v135);
          v625 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v620)), v573);
          v136 = v621[3];
          v137 = *v136;
          if (*v136 && (v138 = *v137, LODWORD(v137) = *v137 == v127, *(v136 + 10) == 1) && (v138 != 0.0 ? (v139 = v138 == v127) : (v139 = 1), !v139))
          {
LABEL_204:
            LOBYTE(v620) = 1;
            LOBYTE(v619) = 1;
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v136, 489, 0, &v620, v135);
            v247 = v246;
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v136, 489, 1, &v619, v135);
            v141 = v247 + ((v248 - v247) * v138);
            v127 = 1.0;
          }

          else
          {
            v140 = *(v136 + v137 + 11);
            if (v140 == 2)
            {
              v138 = 0.0;
              goto LABEL_204;
            }

            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v621[3], 489, v140, 0, v135);
          }

          md::AccessibilityHelper::luminanceAdjustedColor(&v620, *v134, &v625, v141);
          v142 = fminf(fmaxf(*(a3 + 28), 0.0), v128);
          gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v619, v136, 160, 2u, v142);
          v625 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&v619)), v573);
          v143 = v621[3];
          v144 = *v143;
          if (*v143 && (v145 = *v144, LODWORD(v144) = *v144 == v127, *(v143 + 10) == 1) && (v145 != 0.0 ? (v146 = v145 == v127) : (v146 = 1), !v146))
          {
LABEL_206:
            LOBYTE(v619) = 1;
            v626 = 1;
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v143, 495, 0, &v619, v142);
            v250 = v249;
            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v143, 495, 1, &v626, v142);
            v148 = v250 + ((v251 - v250) * v145);
            v127 = 1.0;
          }

          else
          {
            v147 = *(v143 + v144 + 11);
            if (v147 == 2)
            {
              v145 = 0.0;
              goto LABEL_206;
            }

            gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v621[3], 495, v147, 0, v142);
          }

          md::AccessibilityHelper::luminanceAdjustedColor(&v619, *v134, &v625, v148);
          v149 = fabsf(*(&v620 + 3) + -1.0) > 0.00000011921;
          if (*(a3 + 28) >= 0x17)
          {
            v150 = 23;
          }

          else
          {
            v150 = *(a3 + 28);
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v625, v143, 141, v150, 2u, 0);
          v566 = *v625.f32;
          if (*(a3 + 28) >= 0x17)
          {
            v151 = 23;
          }

          else
          {
            v151 = *(a3 + 28);
          }

          gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v621[3], 139, v151, 2u, 0);
          v564 = v152;
          v153 = *(a3 + 32);
          if (*(a3 + 28) >= 0x17)
          {
            v154 = 23;
          }

          else
          {
            v154 = *(a3 + 28);
          }

          if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v621[3], 325, v154, 2u, 0))
          {
            v155 = 1.0;
          }

          else
          {
            v155 = *(a3 + 36);
          }

          v156 = *(a3 + 40);
          v157 = *(a3 + 28);
          v158 = v621[3];
          v159 = fminf(fmaxf(v157, 0.0), v128);
          v160 = *v158;
          if (!*v158)
          {
            v162 = 0;
            goto LABEL_126;
          }

          v161 = *v160;
          v162 = *v160 == v127;
          if (*(v158 + 10) != 1 || v161 == 0.0 || v161 == v127)
          {
LABEL_126:
            v163 = *(v158 + v162 + 11);
            if (v163 != 2)
            {
              gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v621[3], 321, v163, 0, v159);
              v165 = v164;
              if (v160)
              {
LABEL_128:
                v166 = *v160;
                v167 = *v160 == v127;
                if (*(v158 + 10) != 1 || v166 == 0.0 || v166 == v127)
                {
LABEL_131:
                  v168 = 1.0;
                  v169 = *(v158 + v167 + 11);
                  if (v169 != 2)
                  {
                    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v158, 335, v169, 0, v159);
                    goto LABEL_133;
                  }

                  v166 = 0.0;
                }

                v168 = 1.0;
                v625.i8[0] = 1;
                v626 = 1;
                gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v158, 335, 0, &v625, v159);
                v562 = v255;
                gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v158, 335, 1, &v626, v159);
                v170 = v562 + ((v256 - v562) * v166);
LABEL_133:
                v561 = v170;
                v171 = v155 * v153;
                v172 = v165 * v156 * v171;
                v173 = 0.0;
                if (v172 >= 0.00000011921)
                {
                  if (!v160)
                  {
                    v175 = 0;
                    goto LABEL_138;
                  }

                  v174 = *v160;
                  v175 = *v160 == v168;
                  if (*(v158 + 10) != 1 || v174 == 0.0 || v174 == v168)
                  {
LABEL_138:
                    v176 = *(v158 + v175 + 11);
                    if (v176 != 2)
                    {
                      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v158, 320, v176, 0, v159);
                      goto LABEL_140;
                    }

                    v174 = 0.0;
                  }

                  v625.i8[0] = 1;
                  v626 = 1;
                  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v158, 320, 0, &v625, v159);
                  v545 = v257;
                  gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v158, 320, 1, &v626, v159);
                  v177 = v545 + ((v258 - v545) * v174);
LABEL_140:
                  v173 = v156 * v177;
                }

                if (v157 >= 0x17)
                {
                  v178 = 23;
                }

                else
                {
                  v178 = v157;
                }

                if (!v160)
                {
                  v180 = 0;
                  goto LABEL_148;
                }

                v179 = *v160;
                v180 = *v160 == v168;
                if (*(v158 + 10) != 1 || v179 == 0.0 || v179 == v168)
                {
LABEL_148:
                  v181 = *(v158 + v180 + 11);
                  if (v181 == 2)
                  {
                    goto LABEL_149;
                  }

LABEL_161:
                  v205 = *(v158 + 16 * v181 + 16);
                  if (v205)
                  {
                    v206 = *(v205 + 72);
                    if (v206)
                    {
                      v207 = *v206 + 120 * *(v206 + v178 + 16);
                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v207, 0x13Fu) != *(v207 + 12))
                      {
                        goto LABEL_164;
                      }
                    }

                    v209 = v158 + 16 * v181;
                    if (*(v209 + 56))
                    {
                      v210 = *(v209 + 48);
                      v211 = 8 * *(v209 + 56);
                      while (1)
                      {
                        v212 = *(*v210 + 72);
                        if (v212)
                        {
                          v213 = *v212 + 120 * *(v212 + v178 + 16);
                          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v213, 0x13Fu) != *(v213 + 12))
                          {
                            goto LABEL_164;
                          }
                        }

                        v210 += 8;
                        v208 = 1;
                        v211 -= 8;
                        if (!v211)
                        {
                          goto LABEL_174;
                        }
                      }
                    }
                  }

                  v208 = 1;
LABEL_174:
                  a3 = v577;
                }

                else
                {
LABEL_149:
                  v182 = *(v158 + 16);
                  if (!v182)
                  {
                    goto LABEL_160;
                  }

                  v183 = *(v182 + 72);
                  if (v183)
                  {
                    v184 = *v183 + 120 * *(v183 + v178 + 16);
                    if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v184, 0x13Fu) != *(v184 + 12))
                    {
                      goto LABEL_164;
                    }
                  }

                  if (!*(v158 + 56))
                  {
LABEL_160:
                    v181 = 1;
                    goto LABEL_161;
                  }

                  v185 = *(v158 + 48);
                  v186 = 8 * *(v158 + 56);
                  while (1)
                  {
                    v187 = *(*v185 + 72);
                    if (v187)
                    {
                      v188 = *v187 + 120 * *(v187 + v178 + 16);
                      if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v188, 0x13Fu) != *(v188 + 12))
                      {
                        break;
                      }
                    }

                    v185 += 8;
                    v181 = 1;
                    v186 -= 8;
                    if (!v186)
                    {
                      goto LABEL_161;
                    }
                  }

LABEL_164:
                  v208 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v158, 319, v178, 2, 0);
                  a3 = v577;
                  v158 = v621[3];
                  if (*(v577 + 28) >= 0x17)
                  {
                    LODWORD(v178) = 23;
                  }

                  else
                  {
                    LODWORD(v178) = *(v577 + 28);
                  }
                }

                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v158, 330, v178, 2u, 0);
                v215 = v214;
                if (*(a3 + 28) >= 0x17)
                {
                  v216 = 23;
                }

                else
                {
                  v216 = *(a3 + 28);
                }

                gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v621[3], 331, v216, 2u, 0);
                if (v208 == 2)
                {
                  v218 = -0.5;
                  v219 = 0.5;
                  v113 = v555;
                  v220 = v569;
                }

                else
                {
                  v218 = 0.0;
                  v219 = 1.0;
                  v113 = v555;
                  v220 = v569;
                  if (!v208)
                  {
                    v218 = -1.0;
                    v219 = 0.0;
                  }
                }

                v121 = v220 | v149;
                v221 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v566)), v573);
                v222 = v156;
                v223 = vmul_n_f32(v554, ((v564 * v222) * v553) * v171);
                v225 = v215 * 40075017.0 / ((1 << *(a3 + 24)) * v217);
                v226 = v630;
                v227 = v620;
                *(v630 + 16 * v120) = v620;
                v228 = v225;
                v229 = v219 * v173;
                if (v173 >= 0.00000011921)
                {
                  v230 = v172;
                }

                else
                {
                  v230 = 0.0;
                }

                if (v173 >= 0.00000011921)
                {
                  v231 = v561 * v156 * v171;
                }

                else
                {
                  v231 = 0.0;
                }

                v232 = (v226 + 4 * v120);
                v232[64] = v229;
                v232[96] = v230;
                v232[80] = v231;
                v233 = v614;
                *(v614 + 16 * v120) = v227;
                v234 = v218 * v173;
                v235 = (v233 + 4 * v120);
                v235[64] = v234;
                v235[80] = v229;
                v235[112] = v230;
                v235[96] = v231;
                v236 = (v606 + 8 * v120);
                *v236 = v228;
                v236[1] = 1.0 - v215;
                v237 = v598;
                *(v598 + 16 * v120) = v227;
                v238 = *(a3 + 40) * 0.200000003;
                if (v173 >= 0.00000011921)
                {
                  v238 = v234;
                }

                v239 = (v237 + 4 * v120);
                v239[64] = v238;
                v239[96] = v172;
                v224 = v561 * v156 * v171;
                v239[80] = v224;
                v240 = v590;
                *(v590 + 16 * v120) = v619;
                v241 = (v240 + 4 * v120);
                v241[64] = v234;
                v241[80] = v229;
                v241[96] = v230;
                v127 = 1.0;
                v242 = v638;
                v243 = v638 + 16 * v120;
                *v243 = 0;
                *(v243 + 8) = 0;
                *(v243 + 12) = 1.0 - v221.f32[3];
                *(v242 + 8 * v120 + 256) = v223;
                v244 = v582;
                v245 = v582 + 16 * v120;
                *v245 = v221.i64[0];
                *(v245 + 8) = v221.i32[2];
                *(v245 + 12) = 1065353216;
                *(v244 + 8 * v120 + 256) = v223;
                v204 = 1;
                v130 = v557;
                v128 = 23.0;
                goto LABEL_191;
              }

LABEL_209:
              v167 = 0;
              goto LABEL_131;
            }

            v161 = 0.0;
          }

          v625.i8[0] = 1;
          v626 = 1;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v158, 321, 0, &v625, v159);
          v253 = v252;
          gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v158, 321, 1, &v626, v159);
          v165 = v253 + ((v254 - v253) * v161);
          v127 = 1.0;
          if (v160)
          {
            goto LABEL_128;
          }

          goto LABEL_209;
        }

        v204 = 0;
      }

      else
      {
        v189 = v630;
        v190 = (v630 + 16 * v120);
        *v190 = 0;
        v190[1] = 0;
        v191 = (v189 + 4 * v120);
        v191[64] = 0;
        v191[96] = 0;
        v191[80] = 0;
        v192 = v614;
        v193 = (v614 + 16 * v120);
        *v193 = 0;
        v193[1] = 0;
        v194 = (v192 + 4 * v120);
        v194[64] = 0;
        v194[80] = 0;
        v194[112] = 0;
        v194[96] = 0;
        *(v606 + 8 * v120) = 0x3F8000007FC00000;
        v195 = v598;
        v196 = (v598 + 16 * v120);
        *v196 = 0;
        v196[1] = 0;
        v197 = (v195 + 4 * v120);
        v197[64] = 0;
        v197[96] = 0;
        v197[80] = 0;
        v198 = v590;
        v199 = (v590 + 16 * v120);
        *v199 = 0;
        v199[1] = 0;
        v200 = (v198 + 4 * v120);
        v200[64] = 0;
        v200[80] = 0;
        v200[96] = 0;
        v201 = (v638 + 16 * v120);
        v202 = v638 + 8 * v120;
        *v201 = 0;
        v201[1] = 0;
        *(v202 + 256) = 0;
        v203 = v582;
        *(v582 + 16 * v120) = xmmword_1B33B0710;
        *(v203 + 8 * v120 + 256) = 0;
        v204 = 1;
      }

LABEL_191:
      if (v624 == 1)
      {
        (*(*v621 + 56))(v621);
      }

      if (v623)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v623);
      }

      if (v622)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v622);
      }

      if (v204)
      {
        v129 = ++v120 < v130;
        if (v120 != v130)
        {
          continue;
        }
      }

      ggl::BufferMemory::~BufferMemory(&v579);
      ggl::BufferMemory::~BufferMemory(&v635);
      ggl::BufferMemory::~BufferMemory(&v587);
      ggl::BufferMemory::~BufferMemory(&v595);
      ggl::BufferMemory::~BufferMemory(&v603);
      ggl::BufferMemory::~BufferMemory(&v611);
      ggl::BufferMemory::~BufferMemory(&v627);
      a1 = v546;
      if (!v129)
      {
        *&v259 = ggl::RenderItem::RenderItem(&v627, "").u64[0];
        v260 = v578;
        v261 = *(v578 + 393);
        if (v261 == 1 && (*(v578 + 439) & 1) != 0)
        {
          v262 = 760;
        }

        else
        {
          v262 = 544;
        }

        v263 = *(v578 + 376) + v262;
        LODWORD(v630) = 100;
        *&v629 = v263;
        *(&v629 + 1) = v551;
        v264 = [(VKPolygonGroup *)v7 layer];
        v265 = 2;
        if ((v121 & 1) == 0)
        {
          v265 = -1;
        }

        v266 = 20 * v264;
        if (!v261)
        {
          v266 = 0;
        }

        *(&v630 + 1) = v265 + 0x800000007 + v266;
        v616 = v632;
        v617 = v633;
        v618 = v634;
        v612 = v628;
        *&v613 = v629;
        v614 = v630;
        v615 = v631;
        v611 = &off_1F2A5D8B8;
        *(&v613 + 1) = v550;
        v605 = v629;
        v607 = v631;
        v608 = v632;
        v609 = v633;
        v610 = v634;
        v604 = v628;
        v606 = v630;
        v267 = *(v578 + 376);
        v603 = &off_1F2A5D8B8;
        *&v605 = v267 + 1000;
        *(&v605 + 1) = v552;
        *&v268 = ggl::RenderItem::RenderItem(&v595, "").u64[0];
        *&v597 = v267 + 1528;
        LODWORD(v267) = *(v578 + 393);
        v269 = 20 * [(VKPolygonGroup *)v7 layer]+ 0x800000007;
        if (!v267)
        {
          v269 = 0x800000007;
        }

        *(&v598 + 1) = v269;
        *(&v597 + 1) = v549;
        *&v270 = ggl::RenderItem::RenderItem(&v587, "").u64[0];
        *&v589 = *(v578 + 376) + 1768;
        v271 = *(v578 + 393);
        v272 = 20 * [(VKPolygonGroup *)v7 layer]+ 0x800000008;
        if (!v271)
        {
          v272 = 0x800000008;
        }

        *(&v590 + 1) = v272;
        *(&v589 + 1) = v548;
        v273 = [(VKPolygonGroup *)v7 venueWallMeshes];
        v274 = *v273;
        v570 = *(v273 + 8);
        if (*v273 != v570)
        {
          v275 = 0;
          do
          {
            v276 = [(VKPolygonalItemGroup *)v7 commitRangesToVenueWallRenderItemBatcher:*(v260 + 376) + 3712 forMeshAtIndex:v275 cullingMask:*(v577 + 48)];
            v277 = *(v260 + 376);
            v278 = *v274;
            v635 = &off_1F2A5D8B8;
            v636 = v628;
            v637 = v629;
            v638 = v630;
            v642 = v634;
            v641 = v633;
            v640 = v632;
            v639 = v631;
            v279 = *(v277 + 3800);
            v280 = v279[1];
            if (v280 == *(v277 + 3808))
            {
              v279 = *v279;
              if (!v279)
              {
                v279 = malloc_type_malloc(120 * v280 + 16, 0x1020040EDED9539uLL);
                *v279 = 0;
                v279[1] = 0;
                **(v277 + 3800) = v279;
              }

              *(v277 + 3800) = v279;
              v280 = v279[1];
            }

            v281 = &v279[15 * v280];
            v279[1] = v280 + 1;
            v281[2] = &off_1F2A5D8B8;
            v282 = v636;
            v283 = v637;
            *(v281 + 7) = v638;
            *(v281 + 5) = v283;
            *(v281 + 3) = v282;
            v284 = v639;
            v285 = v640;
            v286 = v641;
            *(v281 + 15) = v642;
            *(v281 + 13) = v286;
            *(v281 + 11) = v285;
            *(v281 + 9) = v284;
            ggl::RenderItem::~RenderItem(&v635);
            v281[10] = v278;
            v287 = *v276;
            v281[13] = *v276;
            v281[14] = (v276[1] - v287) >> 4;
            ggl::CommandBuffer::pushRenderItem(v575, (v281 + 2));
            v288 = *(v578 + 376);
            v289 = *v274;
            v635 = &off_1F2A5D8B8;
            v636 = v612;
            v637 = v613;
            v638 = v614;
            v642 = v618;
            v641 = v617;
            v640 = v616;
            v639 = v615;
            v290 = *(v288 + 3800);
            v291 = v290[1];
            if (v291 == *(v288 + 3808))
            {
              v290 = *v290;
              if (!v290)
              {
                v290 = malloc_type_malloc(120 * v291 + 16, 0x1020040EDED9539uLL);
                *v290 = 0;
                v290[1] = 0;
                **(v288 + 3800) = v290;
              }

              *(v288 + 3800) = v290;
              v291 = v290[1];
            }

            v292 = &v290[15 * v291];
            v290[1] = v291 + 1;
            v292[2] = &off_1F2A5D8B8;
            v293 = v636;
            v294 = v637;
            *(v292 + 7) = v638;
            *(v292 + 5) = v294;
            *(v292 + 3) = v293;
            v295 = v639;
            v296 = v640;
            v297 = v641;
            *(v292 + 15) = v642;
            *(v292 + 13) = v297;
            *(v292 + 11) = v296;
            *(v292 + 9) = v295;
            ggl::RenderItem::~RenderItem(&v635);
            v292[10] = v289;
            v298 = *v276;
            v292[13] = *v276;
            v292[14] = (v276[1] - v298) >> 4;
            ggl::CommandBuffer::pushRenderItem(v575, (v292 + 2));
            v299 = *(v578 + 376);
            v300 = *v274;
            v635 = &off_1F2A5D8B8;
            v636 = v604;
            v637 = v605;
            v638 = v606;
            v642 = v610;
            v641 = v609;
            v640 = v608;
            v639 = v607;
            v301 = *(v299 + 3800);
            v302 = v301[1];
            if (v302 == *(v299 + 3808))
            {
              v301 = *v301;
              if (!v301)
              {
                v301 = malloc_type_malloc(120 * v302 + 16, 0x1020040EDED9539uLL);
                *v301 = 0;
                v301[1] = 0;
                **(v299 + 3800) = v301;
              }

              *(v299 + 3800) = v301;
              v302 = v301[1];
            }

            v303 = &v301[15 * v302];
            v301[1] = v302 + 1;
            v303[2] = &off_1F2A5D8B8;
            v304 = v636;
            v305 = v637;
            *(v303 + 7) = v638;
            *(v303 + 5) = v305;
            *(v303 + 3) = v304;
            v306 = v639;
            v307 = v640;
            v308 = v641;
            *(v303 + 15) = v642;
            *(v303 + 13) = v308;
            *(v303 + 11) = v307;
            *(v303 + 9) = v306;
            ggl::RenderItem::~RenderItem(&v635);
            v303[10] = v300;
            v309 = *v276;
            v303[13] = *v276;
            v303[14] = (v276[1] - v309) >> 4;
            ggl::CommandBuffer::pushRenderItem(v575, (v303 + 2));
            v310 = *(v578 + 376);
            v311 = *v274;
            v635 = &off_1F2A5D8B8;
            v636 = v596;
            v637 = v597;
            v638 = v598;
            v642 = v602;
            v641 = v601;
            v640 = v600;
            v639 = v599;
            v312 = *(v310 + 3800);
            v313 = v312[1];
            if (v313 == *(v310 + 3808))
            {
              v312 = *v312;
              if (!v312)
              {
                v312 = malloc_type_malloc(120 * v313 + 16, 0x1020040EDED9539uLL);
                *v312 = 0;
                v312[1] = 0;
                **(v310 + 3800) = v312;
              }

              *(v310 + 3800) = v312;
              v313 = v312[1];
            }

            v314 = &v312[15 * v313];
            v312[1] = v313 + 1;
            v314[2] = &off_1F2A5D8B8;
            v315 = v636;
            v316 = v637;
            *(v314 + 7) = v638;
            *(v314 + 5) = v316;
            *(v314 + 3) = v315;
            v317 = v639;
            v318 = v640;
            v319 = v641;
            *(v314 + 15) = v642;
            *(v314 + 13) = v319;
            *(v314 + 11) = v318;
            *(v314 + 9) = v317;
            ggl::RenderItem::~RenderItem(&v635);
            v314[10] = v311;
            v320 = *v276;
            v314[13] = *v276;
            v314[14] = (v276[1] - v320) >> 4;
            ggl::CommandBuffer::pushRenderItem(v575, (v314 + 2));
            v321 = *(v578 + 376);
            v322 = *v274;
            v635 = &off_1F2A5D8B8;
            v636 = v588;
            v637 = v589;
            v638 = v590;
            v642 = v594;
            v641 = v593;
            v640 = v592;
            v639 = v591;
            v323 = *(v321 + 3800);
            v324 = v323[1];
            if (v324 == *(v321 + 3808))
            {
              v323 = *v323;
              if (!v323)
              {
                v323 = malloc_type_malloc(120 * v324 + 16, 0x1020040EDED9539uLL);
                *v323 = 0;
                v323[1] = 0;
                **(v321 + 3800) = v323;
              }

              *(v321 + 3800) = v323;
              v324 = v323[1];
            }

            v325 = &v323[15 * v324];
            v323[1] = v324 + 1;
            v325[2] = &off_1F2A5D8B8;
            v326 = v636;
            v327 = v637;
            *(v325 + 7) = v638;
            *(v325 + 5) = v327;
            *(v325 + 3) = v326;
            v328 = v639;
            v329 = v640;
            v330 = v641;
            *(v325 + 15) = v642;
            *(v325 + 13) = v330;
            *(v325 + 11) = v329;
            *(v325 + 9) = v328;
            ggl::RenderItem::~RenderItem(&v635);
            v325[10] = v322;
            v331 = *v276;
            v325[13] = *v276;
            v325[14] = (v276[1] - v331) >> 4;
            ggl::CommandBuffer::pushRenderItem(v575, (v325 + 2));
            v260 = v578;
            ++v275;
            v274 += 2;
            v7 = v568;
          }

          while (v274 != v570);
        }

        v579 = &off_1F2A5D8B8;
        v583 = v631;
        v584 = v632;
        v585 = v633;
        v586 = v634;
        v580 = v628;
        *&v581 = v629;
        v582 = v630;
        *(&v581 + 1) = v547;
        v332 = [(VKPolygonGroup *)v7 venueWallEndMeshes];
        v333 = *v332;
        v334 = *(v332 + 8);
        if (*v332 != v334)
        {
          v335 = 0;
          do
          {
            v336 = [(VKPolygonalItemGroup *)v7 commitRangesToVenueWallEndCapRenderItemBatcher:*(v578 + 376) + 3712 forMeshAtIndex:v335 cullingMask:*(v577 + 48)];
            v337 = *(v578 + 376);
            v338 = *v333;
            v635 = &off_1F2A5D8B8;
            v636 = v580;
            v637 = v581;
            v638 = v582;
            v642 = v586;
            v641 = v585;
            v640 = v584;
            v639 = v583;
            v339 = *(v337 + 3800);
            v340 = v339[1];
            if (v340 == *(v337 + 3808))
            {
              v339 = *v339;
              if (!v339)
              {
                v339 = malloc_type_malloc(120 * v340 + 16, 0x1020040EDED9539uLL);
                *v339 = 0;
                v339[1] = 0;
                **(v337 + 3800) = v339;
              }

              *(v337 + 3800) = v339;
              v340 = v339[1];
            }

            v341 = &v339[15 * v340];
            v339[1] = v340 + 1;
            v341[2] = &off_1F2A5D8B8;
            v342 = v636;
            v343 = v637;
            *(v341 + 7) = v638;
            *(v341 + 5) = v343;
            *(v341 + 3) = v342;
            v344 = v639;
            v345 = v640;
            v346 = v641;
            *(v341 + 15) = v642;
            *(v341 + 13) = v346;
            *(v341 + 11) = v345;
            *(v341 + 9) = v344;
            ggl::RenderItem::~RenderItem(&v635);
            v341[10] = v338;
            v347 = *v336;
            v341[13] = *v336;
            v341[14] = (v336[1] - v347) >> 4;
            ggl::CommandBuffer::pushRenderItem(v575, (v341 + 2));
            ++v335;
            v333 += 2;
            v7 = v568;
          }

          while (v333 != v334);
        }

        a3 = v577;
        a1 = v546;
      }

      break;
    }
  }

  v348 = *(a1 + 16);
  v574 = **(a1 + 24);
  v576 = v7;
  v565 = *(*(v578 + 40) + 104);
  v349 = [v565 sizeInPixels];
  v351 = v350;
  v353 = v352;
  v354 = *(*(v578 + 376) + 1256);
  v355 = v354[1];
  if (v355 == *v354)
  {
    v356 = v354[11];
    if (!v356)
    {
      goto LABEL_443;
    }

    v349 = (*(*v356 + 48))(v356);
    v567 = v349;
  }

  else
  {
    v567 = *(v355 - 8);
    v354[1] = v355 - 8;
  }

  v358 = v354[5];
  v357 = v354[6];
  if (v358 >= v357)
  {
    v361 = v354[4];
    v362 = (v358 - v361) >> 3;
    if ((v362 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v363 = v357 - v361;
    v364 = v363 >> 2;
    if (v363 >> 2 <= (v362 + 1))
    {
      v364 = v362 + 1;
    }

    if (v363 >= 0x7FFFFFFFFFFFFFF8)
    {
      v365 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v365 = v364;
    }

    *(&v637 + 1) = v354 + 7;
    if (v365)
    {
      v366 = ggl::zone_mallocator::instance(v349);
      v367 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *>(v366, v365);
    }

    else
    {
      v367 = 0;
    }

    v369 = &v367[8 * v365];
    v368 = &v367[8 * v362];
    v359 = v567;
    *v368 = v567;
    v360 = v368 + 1;
    v370 = v354[4];
    v371 = v354[5] - v370;
    v372 = v368 - v371;
    memcpy(v368 - v371, v370, v371);
    v373 = v354[4];
    v354[4] = v372;
    v354[5] = v360;
    v374 = v354[6];
    v354[6] = v369;
    *(&v636 + 1) = v373;
    *&v637 = v374;
    *&v636 = v373;
    v635 = v373;
    std::__split_buffer<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v635);
    a3 = v577;
  }

  else
  {
    v359 = v567;
    *v358 = v567;
    v360 = v358 + 1;
  }

  v354[5] = v360;
  v635 = v359;
  v375 = v354[15];
  if (!v375)
  {
    goto LABEL_443;
  }

  v376 = (*(*v375 + 48))(v375, &v635);
  v377 = *(*(v578 + 376) + 1280);
  v378 = v377[1];
  if (v378 != *v377)
  {
    v379 = *(v378 - 8);
    v377[1] = v378 - 8;
    v380 = v567;
    goto LABEL_279;
  }

  v381 = v377[11];
  v380 = v567;
  if (!v381)
  {
LABEL_443:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_444:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v376 = (*(*v381 + 48))(v381);
  v379 = v376;
LABEL_279:
  v383 = v377[5];
  v382 = v377[6];
  if (v383 >= v382)
  {
    v385 = v377[4];
    v386 = (v383 - v385) >> 3;
    if ((v386 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v387 = v382 - v385;
    v388 = v387 >> 2;
    if (v387 >> 2 <= (v386 + 1))
    {
      v388 = v386 + 1;
    }

    if (v387 >= 0x7FFFFFFFFFFFFFF8)
    {
      v389 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v389 = v388;
    }

    *(&v637 + 1) = v377 + 7;
    if (v389)
    {
      v390 = ggl::zone_mallocator::instance(v376);
      v391 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *>(v390, v389);
    }

    else
    {
      v391 = 0;
    }

    v393 = &v391[8 * v389];
    v392 = &v391[8 * v386];
    *v392 = v379;
    v384 = v392 + 1;
    v394 = v377[4];
    v395 = v377[5] - v394;
    v396 = v392 - v395;
    memcpy(v392 - v395, v394, v395);
    v397 = v377[4];
    v377[4] = v396;
    v377[5] = v384;
    v398 = v377[6];
    v377[6] = v393;
    *(&v636 + 1) = v397;
    *&v637 = v398;
    *&v636 = v397;
    v635 = v397;
    std::__split_buffer<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,geo::allocator_adapter<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v635);
    a3 = v577;
  }

  else
  {
    *v383 = v379;
    v384 = v383 + 1;
  }

  v377[5] = v384;
  v635 = v379;
  v399 = v377[15];
  if (!v399)
  {
    goto LABEL_443;
  }

  (*(*v399 + 48))(v399, &v635);
  v400 = md::LayoutContext::get<md::SharedResourcesContext>(*(v348 + 8));
  v401 = *a3;
  v402 = *(v380 + 17);
  v402[1] = 0;
  v403 = *v401;
  *v402 = *v401;
  v404 = *(v380 + 29);
  v405 = v401[1];
  if (v405)
  {
    atomic_fetch_add_explicit((v405 + 8), 1uLL, memory_order_relaxed);
  }

  v406 = v404[1];
  *v404 = v403;
  v404[1] = v405;
  if (v406)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v406);
  }

  v407 = *v400;
  **(v380 + 21) = *([v407 alphaAtlas] + 24);

  v408 = *a3;
  v409 = *(v379 + 17);
  v409[1] = 0;
  v410 = *v408;
  *v409 = *v408;
  v411 = *(v379 + 29);
  v412 = v408[1];
  if (v412)
  {
    atomic_fetch_add_explicit((v412 + 8), 1uLL, memory_order_relaxed);
  }

  v413 = v411[1];
  *v411 = v410;
  v411[1] = v412;
  if (v413)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v413);
  }

  v414 = *v400;
  **(v379 + 21) = *([v414 alphaAtlas] + 24);

  v415 = md::VenueLayerLayoutCharacteristics::focusState((v578 + 384), v576);
  LOBYTE(v635) = 0;
  BYTE1(v635) = v415;
  v416 = [(VKPolygonalItemGroup *)v576 styleQueries:&v635];
  v417 = v416[2] - *v416;
  v418 = (v417 >> 4);
  if ((v417 >> 4))
  {
    v560 = v353;
    v563 = v351;
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v635, *(*(v380 + 17) + 16));
    v558 = v379;
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v627, *(*(v379 + 17) + 16));
    v419 = 0;
    while (1)
    {
      v420 = *(*v416 + 16 * v419);
      v421 = *(*v416 + 16 * v419 + 8);
      if (v421)
      {
        atomic_fetch_add_explicit(&v421->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v611, v420, v421);
      if (v421)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v421);
      }

      if (BYTE8(v613) == 1)
      {
        break;
      }

      v448 = v638;
      v449 = (v638 + 16 * v419);
      *v449 = 0;
      v449[1] = 0;
      v450 = (v448 + 4 * v419);
      v450[32] = 0;
      v450[40] = 0;
      v450[48] = 0;
      v450[56] = 0;
      v451 = v630;
      v452 = (v630 + 16 * v419);
      *v452 = 0;
      v452[1] = 0;
      v453 = (v451 + 4 * v419);
      v453[32] = 0;
      v453[40] = 0;
      v453[48] = 0;
      v453[56] = 0;
LABEL_390:
      if (v613)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v613);
      }

      if (v612)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v612);
      }

      if (++v419 == v418)
      {
        v504 = v563;
        v505 = v560;
        v506 = v638;
        *(v638 + 256) = v504;
        *(v506 + 260) = v505;
        v507 = v630;
        *(v630 + 256) = v504;
        *(v507 + 260) = v505;
        ggl::BufferMemory::~BufferMemory(&v627);
        ggl::BufferMemory::~BufferMemory(&v635);
        *&v508 = ggl::RenderItem::RenderItem(&v627, "").u64[0];
        v509 = v578;
        *&v629 = *(v578 + 376) + 1288;
        *(&v629 + 1) = v567;
        v510 = *(v578 + 393);
        v511 = [(VKPolygonGroup *)v576 layer];
        v512 = 20 * v511 + 0x80000000ALL;
        if (!v510)
        {
          v512 = 0x80000000ALL;
        }

        *(&v630 + 1) = v512;
        v513 = [(VKPolygonGroup *)v576 venueWallHorizontalStrokeMeshes];
        v514 = *v513;
        v515 = *(v513 + 8);
        if (*v513 != v515)
        {
          v516 = 0;
          do
          {
            v517 = [(VKPolygonalItemGroup *)v576 commitRangesToHorizontalVenueWallStrokeRenderItemBatcher:*(v509 + 376) + 3712 forMeshAtIndex:v516 cullingMask:*(a3 + 48)];
            v518 = *(v578 + 376);
            v519 = *v514;
            v635 = &off_1F2A5D8B8;
            v636 = v628;
            v637 = v629;
            v638 = v630;
            v642 = v634;
            v641 = v633;
            v640 = v632;
            v639 = v631;
            v520 = *(v518 + 3800);
            v521 = v520[1];
            if (v521 == *(v518 + 3808))
            {
              v520 = *v520;
              if (!v520)
              {
                v520 = malloc_type_malloc(120 * v521 + 16, 0x1020040EDED9539uLL);
                *v520 = 0;
                v520[1] = 0;
                **(v518 + 3800) = v520;
              }

              *(v518 + 3800) = v520;
              v521 = v520[1];
            }

            v522 = &v520[15 * v521];
            v520[1] = v521 + 1;
            v522[2] = &off_1F2A5D8B8;
            v523 = v636;
            v524 = v637;
            *(v522 + 7) = v638;
            *(v522 + 5) = v524;
            *(v522 + 3) = v523;
            v525 = v639;
            v526 = v640;
            v527 = v641;
            *(v522 + 15) = v642;
            *(v522 + 13) = v527;
            *(v522 + 11) = v526;
            *(v522 + 9) = v525;
            ggl::RenderItem::~RenderItem(&v635);
            v522[10] = v519;
            v528 = *v517;
            v522[13] = *v517;
            v522[14] = (v517[1] - v528) >> 4;
            ggl::CommandBuffer::pushRenderItem(v574, (v522 + 2));
            ++v516;
            v514 += 2;
            a3 = v577;
            v509 = v578;
          }

          while (v514 != v515);
        }

        *(&v629 + 1) = v558;
        v529 = [(VKPolygonGroup *)v576 venueWallVerticalStrokeMeshes];
        v530 = *v529;
        v531 = *(v529 + 8);
        if (*v529 != v531)
        {
          v532 = 0;
          do
          {
            v533 = [(VKPolygonalItemGroup *)v576 commitRangesToVerticalVenueWallStrokeRenderItemBatcher:*(v509 + 376) + 3712 forMeshAtIndex:v532 cullingMask:*(a3 + 48)];
            v534 = *(v509 + 376);
            v535 = *v530;
            v635 = &off_1F2A5D8B8;
            v636 = v628;
            v637 = v629;
            v638 = v630;
            v642 = v634;
            v641 = v633;
            v640 = v632;
            v639 = v631;
            v536 = *(v534 + 3800);
            v537 = v536[1];
            if (v537 == *(v534 + 3808))
            {
              v536 = *v536;
              if (!v536)
              {
                v536 = malloc_type_malloc(120 * v537 + 16, 0x1020040EDED9539uLL);
                *v536 = 0;
                v536[1] = 0;
                **(v534 + 3800) = v536;
              }

              *(v534 + 3800) = v536;
              v537 = v536[1];
            }

            v538 = &v536[15 * v537];
            v536[1] = v537 + 1;
            v538[2] = &off_1F2A5D8B8;
            v539 = v636;
            v540 = v637;
            *(v538 + 7) = v638;
            *(v538 + 5) = v540;
            *(v538 + 3) = v539;
            v541 = v639;
            v542 = v640;
            v543 = v641;
            *(v538 + 15) = v642;
            *(v538 + 13) = v543;
            *(v538 + 11) = v542;
            *(v538 + 9) = v541;
            ggl::RenderItem::~RenderItem(&v635);
            v538[10] = v535;
            v544 = *v533;
            v538[13] = *v533;
            v538[14] = (v533[1] - v544) >> 4;
            ggl::CommandBuffer::pushRenderItem(v574, (v538 + 2));
            v509 = v578;
            ++v532;
            v530 += 2;
            a3 = v577;
          }

          while (v530 != v531);
        }

        goto LABEL_439;
      }
    }

    if (!v419)
    {
      v422 = *(a3 + 28) >= 0x17 ? 23 : *(a3 + 28);
      if ((gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v611[3], 91, v422, 2u, 0) & 1) == 0)
      {
        if (BYTE8(v613) == 1)
        {
          (*(*v611 + 56))(v611);
        }

        if (v613)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v613);
        }

        if (v612)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v612);
        }

        ggl::BufferMemory::~BufferMemory(&v627);
        ggl::BufferMemory::~BufferMemory(&v635);
        goto LABEL_439;
      }
    }

    v423 = *(a3 + 32);
    if (*(a3 + 28) >= 0x17)
    {
      v424 = 23;
    }

    else
    {
      v424 = *(a3 + 28);
    }

    if (gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<BOOL>(v611[3], 325, v424, 2u, 0))
    {
      v425 = 1.0;
    }

    else
    {
      v425 = *(a3 + 36);
    }

    v426 = *(a3 + 28);
    v427 = v611[3];
    v428 = fminf(fmaxf(v426, 0.0), 23.0);
    v429 = *v427;
    if (*v427)
    {
      v430 = *v429;
      v431 = *v429 == 1.0;
      if (*(v427 + 10) == 1 && v430 != 0.0 && v430 != 1.0)
      {
        goto LABEL_408;
      }
    }

    else
    {
      v431 = 0;
    }

    v433 = *(v427 + v431 + 11);
    if (v433 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v611[3], 321, v433, 0, v428);
      v435 = v434;
      goto LABEL_327;
    }

    v430 = 0.0;
LABEL_408:
    LOBYTE(v603) = 1;
    LOBYTE(v595) = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v427, 321, 0, &v603, v428);
    v494 = v493;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v427, 321, 1, &v595, v428);
    v435 = v494 + ((v495 - v494) * v430);
LABEL_327:
    v436 = *(a3 + 40);
    if (v429)
    {
      v437 = *v429;
      v438 = *v429 == 1.0;
      if (*(v427 + 10) == 1 && v437 != 0.0 && v437 != 1.0)
      {
        goto LABEL_410;
      }
    }

    else
    {
      v438 = 0;
    }

    v440 = *(v427 + v438 + 11);
    if (v440 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v427, 335, v440, 0, v428);
      v442 = v441;
      goto LABEL_336;
    }

    v437 = 0.0;
LABEL_410:
    LOBYTE(v603) = 1;
    LOBYTE(v595) = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v427, 335, 0, &v603, v428);
    v497 = v496;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v427, 335, 1, &v595, v428);
    v442 = v497 + ((v498 - v497) * v437);
LABEL_336:
    v443 = v425 * v423;
    v444 = v443;
    v445 = v435 * v436 * v443;
    v571 = 0u;
    v446 = 0.0;
    if (v445 < 0.00000011921)
    {
      v447 = 0.0;
      goto LABEL_359;
    }

    if (v429)
    {
      v454 = *v429;
      v455 = *v429 == 1.0;
      if (*(v427 + 10) == 1 && v454 != 0.0 && v454 != 1.0)
      {
        goto LABEL_412;
      }
    }

    else
    {
      v455 = 0;
    }

    v457 = *(v427 + v455 + 11);
    if (v457 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v427, 2, v457, 0, v428);
      v447 = v458;
      goto LABEL_348;
    }

    v454 = 0.0;
LABEL_412:
    LOBYTE(v603) = 1;
    LOBYTE(v595) = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v427, 2, 0, &v603, v428);
    v500 = v499;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v427, 2, 1, &v595, v428);
    v447 = v500 + ((v501 - v500) * v454);
LABEL_348:
    if (v429)
    {
      v459 = *v429;
      v460 = *v429 == 1.0;
      if (*(v427 + 10) == 1 && v459 != 0.0 && v459 != 1.0)
      {
        goto LABEL_414;
      }
    }

    else
    {
      v460 = 0;
    }

    v462 = *(v427 + v460 + 11);
    if (v462 != 2)
    {
      gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v427, 320, v462, 0, v428);
      goto LABEL_357;
    }

    v459 = 0.0;
LABEL_414:
    LOBYTE(v603) = 1;
    LOBYTE(v595) = 1;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v427, 320, 0, &v603, v428);
    v556 = v502;
    gss::RenderStyle<gss::PropertyID>::styleSampledValueForKeyAtZ<float>(v427, 320, 1, &v595, v428);
    v463 = v556 + ((v503 - v556) * v459);
LABEL_357:
    v446 = v436 * v463;
    if (v447 > 0.0)
    {
      gss::RenderStyle<gss::PropertyID>::sampledValueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v603, v427, 3, 2u, v428);
      v571 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v603)), vdupq_n_s32(0x37800080u));
      v426 = *(a3 + 28);
      v427 = v611[3];
      v429 = *v427;
    }

LABEL_359:
    if (v426 >= 0x17)
    {
      v464 = 23;
    }

    else
    {
      v464 = v426;
    }

    if (v429)
    {
      v465 = *v429;
      v466 = *v429 == 1.0;
      if (*(v427 + 10) == 1 && v465 != 0.0 && v465 != 1.0)
      {
LABEL_370:
        v469 = *(v427 + 16);
        if (v469)
        {
          v470 = 1.0;
          v471 = *(v469 + 72);
          if (v471)
          {
            v472 = *v471 + 120 * *(v471 + v464 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v472, 0x13Fu) != *(v472 + 12))
            {
              goto LABEL_383;
            }
          }

          if (*(v427 + 56))
          {
            v473 = *(v427 + 48);
            v474 = 8 * *(v427 + 56);
            while (1)
            {
              v470 = 1.0;
              v475 = *(*v473 + 72);
              if (v475)
              {
                v476 = *v475 + 120 * *(v475 + v464 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v476, 0x13Fu) != *(v476 + 12))
                {
                  goto LABEL_383;
                }
              }

              v473 += 8;
              v468 = 1;
              v474 -= 8;
              if (!v474)
              {
                goto LABEL_380;
              }
            }
          }
        }

        v468 = 1;
LABEL_380:
        v470 = 1.0;
        v477 = *(v427 + 16 * v468 + 16);
        v478 = 1.0;
        if (v477)
        {
          v479 = *(v477 + 72);
          if (v479)
          {
            v480 = *v479 + 120 * *(v479 + v464 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v480, 0x13Fu) != *(v480 + 12))
            {
LABEL_383:
              v481 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(v427, 319, v464, 2, 0);
              v482 = 0.0;
              if (v481)
              {
                v482 = v470;
              }

              if (v481 == 2)
              {
                v478 = 0.5;
              }

              else
              {
                v478 = v482;
              }

              goto LABEL_388;
            }
          }

          v488 = v427 + 16 * v468;
          if (*(v488 + 56))
          {
            v489 = *(v488 + 48);
            v490 = 8 * *(v488 + 56);
            do
            {
              v491 = *(*v489 + 72);
              if (v491)
              {
                v492 = *v491 + 120 * *(v491 + v464 + 16);
                if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v492, 0x13Fu) != *(v492 + 12))
                {
                  goto LABEL_383;
                }
              }

              v489 += 8;
              v490 -= 8;
            }

            while (v490);
          }
        }

LABEL_388:
        v483 = v442 * v436 * v444;
        v484 = v638;
        *(v638 + 16 * v419) = v571;
        v485 = (v484 + 4 * v419);
        v485[32] = v447;
        v485[40] = v445;
        v485[48] = v483;
        v485[56] = v478 * v446;
        v486 = v630;
        *(v630 + 16 * v419) = v571;
        v487 = (v486 + 4 * v419);
        v487[32] = v447;
        v487[40] = v445;
        v487[48] = v483;
        v487[56] = v478 * v446;
        a3 = v577;
        if (BYTE8(v613))
        {
          (*(*v611 + 56))(v611);
        }

        goto LABEL_390;
      }
    }

    else
    {
      v466 = 0;
    }

    v468 = *(v427 + v466 + 11);
    if (v468 != 2)
    {
      goto LABEL_380;
    }

    goto LABEL_370;
  }

LABEL_439:
}

void sub_1B2E49D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  if (STACK[0x2C0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2C0]);
  }

  if (STACK[0x2B0])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x2B0]);
  }

  _Unwind_Resume(a1);
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Venue3DStroke::VerticalVenue3DStrokePipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Venue3DStroke::HorizontalVenue3DStrokePipelineSetup *>(uint64_t a1, void *a2)
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

void *ggl::FragmentedPool<ggl::VenueWall::MeshPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::MeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::VenueWall::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWall::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *ggl::FragmentedPool<ggl::VenueWallShadow::MeshPipelineSetup>::pop(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_19;
    }

    a1 = (*(*v4 + 48))(v4);
    v3 = a1;
  }

  else
  {
    v3 = *(v2 - 8);
    a1[1] = v2 - 8;
  }

  v6 = v1[5];
  v5 = v1[6];
  if (v6 >= v5)
  {
    v8 = v1[4];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      goto LABEL_20;
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v24[4] = v1 + 7;
    if (v12)
    {
      v13 = ggl::zone_mallocator::instance(a1);
      v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWallShadow::MeshPipelineSetup *>(v13, v12);
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[8 * v12];
    v15 = &v14[8 * v9];
    *v15 = v3;
    v7 = v15 + 8;
    v17 = v1[4];
    v18 = v1[5] - v17;
    v19 = &v15[-v18];
    memcpy(&v15[-v18], v17, v18);
    v20 = v1[4];
    v1[4] = v19;
    v1[5] = v7;
    v21 = v1[6];
    v1[6] = v16;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v20;
    v24[1] = v20;
    std::__split_buffer<ggl::VenueWallShadow::MeshPipelineSetup *,geo::allocator_adapter<ggl::VenueWallShadow::MeshPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v24);
  }

  else
  {
    *v6 = v3;
    v7 = v6 + 1;
  }

  v1[5] = v7;
  v24[0] = v3;
  v22 = v1[15];
  if (!v22)
  {
LABEL_19:
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_20:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  (*(*v22 + 48))(v22, v24);
  return v3;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::ConstantDataTyped<ggl::Building::Gradient> *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ConstantDataTyped<ggl::Building::Gradient> *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWallShadow::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWallShadow::MeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::WallEndCapMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWall::WallEndCapMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::WallTopMeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWall::WallTopMeshPipelineSetup *>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::VenueWall::MeshPipelineSetup *>(uint64_t a1, uint64_t a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::VenueWall::MeshPipelineSetup *>(uint64_t a1, void *a2)
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

__n128 std::__function::__func<md::VenueRenderLayer::_layoutVenueWalls(md::LayoutContext const&)::$_0,std::allocator<md::VenueRenderLayer::_layoutVenueWalls(md::LayoutContext const&)::$_0>,void ()(VKVenueGroup const*,md::VenueRenderLayer::VenueGroupLayoutData const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A06930;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::VenueRenderLayer::layout(md::LayoutContext const&)::$_0,std::allocator<md::VenueRenderLayer::layout(md::LayoutContext const&)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A068E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t gss::QueryableLocker<gss::PropertyID>::hasSourceValueForKeyAtZ(uint64_t a1, unsigned __int16 a2, unsigned int a3)
{
  if (a3 >= 0x17)
  {
    v5 = 23;
  }

  else
  {
    v5 = a3;
  }

  v6 = *(a1 + 11);
  if (v6 == 2)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = *(v7 + 72);
      if (v8)
      {
        v9 = *v8 + 120 * *(v8 + v5 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v9, a2) != *(v9 + 12))
        {
          return 1;
        }
      }

      if (*(a1 + 56))
      {
        v10 = *(a1 + 48);
        v11 = 8 * *(a1 + 56);
        while (1)
        {
          v12 = *(*v10 + 72);
          if (v12)
          {
            v13 = *v12 + 120 * *(v12 + v5 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v13, a2) != *(v13 + 12))
            {
              return 1;
            }
          }

          v10 += 8;
          v6 = 1;
          v11 -= 8;
          if (!v11)
          {
            goto LABEL_15;
          }
        }
      }
    }

    v6 = 1;
  }

LABEL_15:
  v14 = *(a1 + 16 * v6 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = *(v14 + 72);
  if (!v15 || (v16 = *v15 + 120 * *(v15 + v5 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v16, a2) == *(v16 + 12)))
  {
    v18 = a1 + 16 * v6;
    if (*(v18 + 56))
    {
      v19 = *(v18 + 48);
      v20 = 8 * *(v18 + 56);
      while (1)
      {
        v21 = *(*v19 + 72);
        if (v21)
        {
          v22 = *v21 + 120 * *(v21 + v5 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v22, a2) != *(v22 + 12))
          {
            break;
          }
        }

        result = 0;
        v19 += 8;
        v20 -= 8;
        if (!v20)
        {
          return result;
        }
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

void std::vector<md::DashTexture::DashTexture(gss::DashPattern,unsigned short,BOOL,BOOL)::DashGap,std::allocator<md::DashTexture::DashTexture(gss::DashPattern,unsigned short,BOOL,BOOL)::DashGap>>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 4 * ((v3 - *a1) >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = 12 * v8 + 12;
    v13 = (v12 - (v3 - v7));
    memcpy(v13, v7, v3 - v7);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 12;
  }

  *(a1 + 8) = v6;
}

void md::DashTextureCache::textureForPattern(void *a1, void *a2, uint64_t a3, unsigned __int8 a4, float a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = (a5 + 0.5);
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::vector[abi:nn200100](&v25, a3);
  v9 = *(a3 + 32);
  v28 = v9;
  __dst = 0;
  v31 = 0;
  v29 = 0;
  v32 = v27;
  v10 = v25;
  v11 = v26 - v25;
  if (v26 != v25)
  {
    std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__vallocate[abi:nn200100](&v29, v11 >> 2);
    v12 = __dst;
    memmove(__dst, v10, v11);
    __dst = &v12[v11];
    v9 = v28;
  }

  v33 = v9;
  v34 = v8;
  v35 = 0;
  v36 = a4;
  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v25);
  v13 = std::hash<gss::DashPattern>::operator()(&v29);
  v14 = a2[1];
  if (!*&v14)
  {
    goto LABEL_19;
  }

  v15 = v13 ^ v34 ^ v35 ^ v36;
  v16 = vcnt_s8(v14);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v13 ^ v34 ^ v35 ^ v36;
    if (v15 >= *&v14)
    {
      v18 = v15 % *&v14;
    }
  }

  else
  {
    v18 = (*&v14 - 1) & v15;
  }

  v19 = *(*a2 + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v21 = v20[1];
    if (v15 == v21)
    {
      break;
    }

    if (v17 > 1)
    {
      if (v21 >= *&v14)
      {
        v21 %= *&v14;
      }
    }

    else
    {
      v21 &= *&v14 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_19;
    }

LABEL_18:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_19;
    }
  }

  if (!std::equal_to<md::DashTextureCache::Key>::operator()[abi:nn200100]((v20 + 2), &v29))
  {
    goto LABEL_18;
  }

  v37 = &v29;
  v22 = std::__hash_table<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::__unordered_map_hasher<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,md::DashTextureCache::KeyHasher,std::equal_to<md::DashTextureCache::Key>,true>,std::__unordered_map_equal<md::DashTextureCache::Key,std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>,std::equal_to<md::DashTextureCache::Key>,md::DashTextureCache::KeyHasher,true>,std::allocator<std::__hash_value_type<md::DashTextureCache::Key,std::shared_ptr<md::DashTexture>>>>::__emplace_unique_key_args<md::DashTextureCache::Key,std::piecewise_construct_t const&,std::tuple<md::DashTextureCache::Key const&>,std::tuple<>>(a2, &v29);
  v23 = v22[9];
  *a1 = v22[8];
  a1[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  std::vector<float,geo::allocator_adapter<float,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v29);
}