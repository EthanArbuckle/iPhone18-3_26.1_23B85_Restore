uint64_t md::ARWalkingManeuverLabelFeature::skewOffsettingVector(uint64_t a1, unsigned int *a2)
{
  v3 = md::ARWalkingManeuverLabelFeature::layoutTypeForLabelIdentifier(a1, *a2);
  if (v3 < 0x100u || v3 == 1)
  {
    return 0;
  }

  else
  {
    return *(a1 + 784);
  }
}

BOOL md::ARWalkingManeuverLabelFeature::updateDynamicStyling(md::ARWalkingManeuverLabelFeature *this, md::LabelManager *a2, md::Label *a3)
{
  v3 = *(a3 + 12);
  v4 = *(this + 108);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = this + 864;
  do
  {
    v6 = *(v4 + 7);
    v7 = v6 >= v3;
    v8 = v6 < v3;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * v8];
  }

  while (v4);
  if (v5 != this + 864 && v3 >= *(v5 + 7))
  {
    v9 = v5[32] != *(this + 849);
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  v10 = *(this + 849);
  *(std::__tree<std::__value_type<md::LabelIdentifier,BOOL>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,BOOL>,std::less<md::LabelIdentifier>,true>,std::allocator<std::__value_type<md::LabelIdentifier,BOOL>>>::__emplace_unique_key_args<md::LabelIdentifier,std::piecewise_construct_t const&,std::tuple<md::LabelIdentifier const&>,std::tuple<>>(this + 856, v3) + 32) = v10;
  return v9;
}

uint64_t md::ARWalkingManeuverLabelFeature::newRootPart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = md::ARWalkingManeuverLabelFeature::layoutTypeForLabelIdentifier(a1, *(a3 + 48));
  if (v8 <= 0x100)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = (*(*a1 + 488))(a1, 0);

  return md::ARWalkingManeuverLabelFeature::createLabelPart(a2, a3, a4, v9, a1 + 736, v10);
}

uint64_t md::ARWalkingManeuverLabelFeature::createLabelPart(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a4 == 1)
  {
    v18 = 3;
    LODWORD(v17[0]) = 9602786;
    v16 = *(a2 + 392);
    getTextDataString(&v14, a3, a5, a6);
    getTextDataString(&v12, a3, v17, a6);
    if (v12)
    {
      _ZNSt3__115allocate_sharedB8nn200100IN3ggl12SamplerStateENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    v18 = 3;
    LODWORD(v17[0]) = 9602786;
    v16 = *(a2 + 392);
    getTextDataString(&v14, a3, a5, a6);
    getTextDataString(&v12, a3, v17, a6);
    if (v12)
    {
      _ZNSt3__115allocate_sharedB8nn200100IN3ggl12SamplerStateENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v8 = v15;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (v18 < 0)
  {
    v9 = v17[0];
    v10 = mdm::zone_mallocator::instance(v8);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v10, v9);
  }

  return 0;
}

void sub_1B32BB4C8(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  v35 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v35, v32);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
  }

  md::CompositeLabelPart::~CompositeLabelPart(v29);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  v36 = a15;
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  v37 = mdm::zone_mallocator::instance(v36);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v37, v29);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  v38 = a21;
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  if (*(v33 - 121) < 0)
  {
    v39 = mdm::zone_mallocator::instance(v38);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v39, a29);
  }

  _Unwind_Resume(a1);
}

void md::ARWalkingManeuverLabelFeature::~ARWalkingManeuverLabelFeature(md::ARWalkingManeuverLabelFeature *this)
{
  *this = &unk_1F2A53F18;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 108));
  v2 = *(this + 105);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (*(this + 816) == 1)
  {
    v2 = *(this + 101);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }
  }

  if (*(this + 759) < 0)
  {
    v3 = *(this + 92);
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  *(this + 89) = &unk_1F2A54380;

  md::PointLabelFeature::~PointLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A53F18;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 108));
  v2 = *(this + 105);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (*(this + 816) == 1)
  {
    v2 = *(this + 101);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }
  }

  if (*(this + 759) < 0)
  {
    v3 = *(this + 92);
    v4 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  *(this + 89) = &unk_1F2A54380;

  md::PointLabelFeature::~PointLabelFeature(this);
}

void geo::_retain_ptr<VKARWalkingManeuverFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A54380;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKARWalkingManeuverFeature * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A54380;

  return a1;
}

uint64_t std::__shared_ptr_pointer<ARWalkingManeuverFeatureDedupingGroup *,std::shared_ptr<md::LabelDedupingGroup>::__shared_ptr_default_delete<md::LabelDedupingGroup,ARWalkingManeuverFeatureDedupingGroup>,std::allocator<ARWalkingManeuverFeatureDedupingGroup>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ARWalkingManeuverFeatureDedupingGroup *,std::shared_ptr<md::LabelDedupingGroup>::__shared_ptr_default_delete<md::LabelDedupingGroup,ARWalkingManeuverFeatureDedupingGroup>,std::allocator<ARWalkingManeuverFeatureDedupingGroup>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t ARWalkingManeuverFeatureDedupingGroup::getAlternateLayout(ARWalkingManeuverFeatureDedupingGroup *this, md::LabelBase *a2)
{
  v2 = *(this + 1);
  if (*(this + 2) - v2 == 16)
  {
    return v2[*v2 == a2];
  }

  else
  {
    return 0;
  }
}

void *ARWalkingManeuverFeatureDedupingGroup::prepareForCollision(ARWalkingManeuverFeatureDedupingGroup *this, const LabelLayoutContext **a2)
{
  *(this + 6) = *(this + 5);
  *(this + 9) = 0;
  result = md::ARWalkingLabelLayoutDedupingGroup::prepareLayoutGroups(this, a2[53]);
  v4 = *(this + 1);
  v5 = *(this + 2);
  while (v4 != v5)
  {
    v6 = *v4;
    if ((*(*v4 + 1378) & 1) != 0 && (result = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(this + 26, *v4)) != 0)
    {
      ++v4;
    }

    else
    {
      if (v4 == --v5)
      {
        break;
      }

      while (1)
      {
        v7 = *v5;
        if (*(*v5 + 1378) == 1)
        {
          result = std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(this + 26, *v5);
          if (result)
          {
            break;
          }
        }

        if (--v5 == v4)
        {
          goto LABEL_12;
        }
      }

      *v4++ = v7;
      *v5 = v6;
    }
  }

LABEL_12:
  v8 = *(this + 2);
  v9 = *(this + 1);
  if (v9 != v8)
  {
    v10 = 0;
    v11 = *(this + 1);
    do
    {
      v12 = *v11++;
      *(v12 + 32) = v10++;
    }

    while (v11 != v8);
    *(this + 9) = *v9;
  }

  return result;
}

void ARWalkingManeuverFeatureDedupingGroup::~ARWalkingManeuverFeatureDedupingGroup(ARWalkingManeuverFeatureDedupingGroup *this)
{
  *this = &unk_1F2A54330;
  v2 = (this + 40);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 208);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 168);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 88);
  *this = off_1F2A55B58;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A54330;
  v2 = (this + 40);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 208);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 168);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 88);
  *this = off_1F2A55B58;
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  std::vector<md::LabelBase *,geo::allocator_adapter<md::LabelBase *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 8));
}

void md::ARWalkingManeuverLabelFeature::updateWithHighPrecisionAltitude(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 816) == 1)
  {
    if (a4)
    {
      atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
    }

    a1[100] = a3;
    v6 = a1[101];
    a1[101] = a4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  else
  {
    a1[100] = a3;
    a1[101] = a4;
    if (a4)
    {
      atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 816) = 1;
  }

  if (*(a2 + 8) == 1)
  {
    v7 = a1[54];
    if (v7 != a1 + 55)
    {
      while (1)
      {
        v8 = (*(*a1 + 112))(a1, v7 + 4);
        v9 = *v8;
        v19 = *(v8 + 16);
        v18 = v9;
        v20 = *(v8 + 24);
        v10 = *(v8 + 43);
        v21[0] = *(v8 + 40);
        *(v21 + 3) = v10;
        if ((*(a2 + 8) & 1) == 0)
        {
          break;
        }

        v11 = *a2;
        v21[0] = v11;
        (*(*a1 + 104))(a1, v7 + 4, &v18);
        v12 = v7[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v7[2];
            v14 = *v13 == v7;
            v7 = v13;
          }

          while (!v14);
        }

        v7 = v13;
        if (v13 == a1 + 55)
        {
          return;
        }
      }

      v15 = std::__throw_bad_optional_access[abi:nn200100]();
      md::S2RasterTileResourceFetcher::tileKey(v15, v16, v17);
    }
  }
}

uint64_t md::S2RasterTileResourceFetcher::tileKey(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a3 + 8);
  gdc::ResourceKey::getInt32(v5, 3u);
  gdc::ResourceKey::getInt32(v5, 0);
  gdc::ResourceKey::getInt32(v5, 1u);
  gdc::ResourceKey::getInt32(v5, 2u);
  [v4 size];
  [v4 scale];
  [v4 style];
  v6 = GEOS2TileKeyMake();

  return v6;
}

void md::S2RasterTileResourceFetcher::~S2RasterTileResourceFetcher(md::S2RasterTileResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FrameGraphRenderTarget,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54770;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FrameGraphRenderTarget,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FrameGraphRenderTarget,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A54790;
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

void ecs2::storage<ecs2::Entity,md::ls::FrameGraphRenderTarget,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FrameGraphRenderTarget,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FrameGraphRenderTarget,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54770;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FrameGraphRenderTarget,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FrameGraphBuilder,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A546A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FrameGraphBuilder,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FrameGraphBuilder,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A546C0;
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

void ecs2::storage<ecs2::Entity,md::ls::FrameGraphBuilder,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FrameGraphBuilder,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FrameGraphBuilder,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A546A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FrameGraphBuilder,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassCount,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54EC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PassCount,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PassCount,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A54EE0;
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

void ecs2::storage<ecs2::Entity,md::ls::PassCount,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PassCount,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassCount,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54EC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PassCount,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PreviousResourceStamp,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A545A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PreviousResourceStamp,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PreviousResourceStamp,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A545C8;
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

void ecs2::storage<ecs2::Entity,md::ls::PreviousResourceStamp,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PreviousResourceStamp,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PreviousResourceStamp,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A545A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PreviousResourceStamp,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::EndFrameGraphPreparation>,std::allocator<ecs2::ForwardToExecute<md::ita::EndFrameGraphPreparation>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A55668;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassRouteLineDescriptor,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A55450;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassRouteLineDescriptor,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A55450;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassDeviceCapabilities,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54C50;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PassDeviceCapabilities,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PassDeviceCapabilities,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A54C70;
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

void ecs2::storage<ecs2::Entity,md::ls::PassDeviceCapabilities,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PassDeviceCapabilities,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassDeviceCapabilities,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54C50;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PassDeviceCapabilities,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassRoutelineMaskConfiguration,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54B80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PassRoutelineMaskConfiguration,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PassRoutelineMaskConfiguration,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A54BA0;
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

void ecs2::storage<ecs2::Entity,md::ls::PassRoutelineMaskConfiguration,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PassRoutelineMaskConfiguration,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassRoutelineMaskConfiguration,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54B80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PassRoutelineMaskConfiguration,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FrameBufferDesc,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54DF0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FrameBufferDesc,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FrameBufferDesc,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A54E10;
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

void ecs2::storage<ecs2::Entity,md::ls::FrameBufferDesc,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FrameBufferDesc,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FrameBufferDesc,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54DF0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FrameBufferDesc,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassShadowDescriptor,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A55310;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassShadowDescriptor,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A55310;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18PassSSAODescriptorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAODescriptor>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAODescriptor>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassSSAODescriptor>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAODescriptor>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAODescriptor>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassSSAODescriptor,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A55188;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassSSAODescriptor,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A55188;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassShadowConfiguration,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54AB0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PassShadowConfiguration,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PassShadowConfiguration,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A54AD0;
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

void ecs2::storage<ecs2::Entity,md::ls::PassShadowConfiguration,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PassShadowConfiguration,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassShadowConfiguration,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54AB0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PassShadowConfiguration,64ul>::~storage(a1);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PassSSAODescriptor>(ecs2::Entity,md::ls::PassSSAODescriptor &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAODescriptor>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAODescriptor>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PassSSAODescriptor>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAODescriptor>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassSSAODescriptor>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PassSSAODescriptor>(ecs2::Entity,md::ls::PassSSAODescriptor &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A55140;
  a2[1] = *(result + 8);
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassMapEngineCapabilities,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54D20;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PassMapEngineCapabilities,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PassMapEngineCapabilities,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A54D40;
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

void ecs2::storage<ecs2::Entity,md::ls::PassMapEngineCapabilities,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PassMapEngineCapabilities,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassMapEngineCapabilities,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54D20;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PassMapEngineCapabilities,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassSSAOConfiguration,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54910;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PassSSAOConfiguration,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PassSSAOConfiguration,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A54930;
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

void ecs2::storage<ecs2::Entity,md::ls::PassSSAOConfiguration,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PassSSAOConfiguration,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassSSAOConfiguration,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54910;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PassSSAOConfiguration,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassDOFConfiguration,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A549E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PassDOFConfiguration,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PassDOFConfiguration,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A54A00;
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

void ecs2::storage<ecs2::Entity,md::ls::PassDOFConfiguration,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PassDOFConfiguration,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PassDOFConfiguration,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A549E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PassDOFConfiguration,64ul>::~storage(a1);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FrameGraphRenderResourcesRegistry,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54840;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FrameGraphRenderResourcesRegistry,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FrameGraphRenderResourcesRegistry,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A54860;
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

void ecs2::storage<ecs2::Entity,md::ls::FrameGraphRenderResourcesRegistry,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FrameGraphRenderResourcesRegistry,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FrameGraphRenderResourcesRegistry,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A54840;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FrameGraphRenderResourcesRegistry,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareBuildFrameGraph>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareBuildFrameGraph>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A54490;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<md::GEOVectorTileResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A559A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::GEOVectorTileResourceDecoder::~GEOVectorTileResourceDecoder(md::GEOVectorTileResourceDecoder *this)
{
  *this = &unk_1F2A55958;
  *(this + 1) = &unk_1F2A55980;

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A55958;
  *(this + 1) = &unk_1F2A55980;
}

void geo::_retain_ptr<GEOVectorTileDecoder * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A55980;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<GEOVectorTileDecoder * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A55980;

  return a1;
}

unint64_t md::TrafficDynamicResourceFetcher::tileKey(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a3 + 8);
  gdc::ResourceKey::getInt32(v6, 0);
  gdc::ResourceKey::getInt32(v6, 1u);
  gdc::ResourceKey::getInt32(v6, 2u);
  [v5 size];
  [v5 scale];
  v7 = *(a1 + 712);
  v8 = GEOTileKeyMake();
  if (v7 <= 0x19 && ((1 << v7) & 0x200101C) != 0)
  {
    v9 = 128;
  }

  else
  {
    v9 = (v7 == 26) << 7;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFF7FLL;

  return v9 | v10;
}

void md::TrafficDynamicResourceFetcher::~TrafficDynamicResourceFetcher(md::TrafficDynamicResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::TrafficDynamicTileDecoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A55AB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

int8x16_t *std::__stable_partition_impl<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,std::__wrap_iter<md::LabelBase **>,long,std::pair<md::LabelBase **,long>>(int8x16_t *a1, unint64_t *a2, void **a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  v8 = a1;
  if (a4 == 3)
  {
    v11 = &a1->u64[1];
    v12 = a1->u64[1];
    if (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(*a3, v12))
    {
      v20 = *v8;
      *v8 = vextq_s8(*v8, *v8, 8uLL);
      v8->i64[1] = *a2;
      *a2 = v20.i64[0];
      return a2;
    }

    v8->i64[1] = *a2;
    *a2 = v12;
    *v8 = vextq_s8(*v8, *v8, 8uLL);
  }

  else
  {
    if (a4 == 2)
    {
      v10 = a1->i64[0];
      a1->i64[0] = *a2;
      *a2 = v10;
      return a2;
    }

    v13 = a5;
    if (a6 >= a4)
    {
      v11 = &a1->u64[1];
      *a5 = a1->i64[0];
      v18 = a5 + 1;
      if (&a1->u64[1] == a2)
      {
        a1->i64[0] = a1->i64[1];
      }

      else
      {
        do
        {
          v19 = *v11;
          if (std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(*a3, *v11))
          {
            *v18++ = v19;
          }

          else
          {
            v8->i64[0] = v19;
            v8 = (v8 + 8);
          }

          ++v11;
        }

        while (v11 != a2);
        v8->i64[0] = *v11;
        v11 = &v8->u64[1];
        if (v18 <= v13)
        {
          return v11;
        }
      }

      v27 = v11;
      do
      {
        v28 = *v13++;
        *v27++ = v28;
      }

      while (v13 < v18);
      return v11;
    }

    v14 = a4 / 2;
    v11 = a1 + a4 / 2;
    v15 = *a3;
    v16 = v11 - 1;
    v17 = 8 - 8 * (a4 / 2);
    v49 = a4 / 2;
    while (1)
    {
      if (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(v15, *v16))
      {
        v22 = a6;
        v8 = std::__stable_partition_impl<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,std::__wrap_iter<md::LabelBase **>,long,std::pair<md::LabelBase **,long>>(v8, v16, a3, v14, v13, a6);
        v15 = *a3;
        goto LABEL_23;
      }

      if (!v17)
      {
        break;
      }

      --v14;
      --v16;
      v17 += 8;
    }

    v22 = a6;
LABEL_23:
    v23 = (a2 + 1);
    v24 = a4 - v49;
    v25 = v11;
    while (!std::__hash_table<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::unordered_map<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,std::allocator<std::pair<gdc::Entity const,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>>>>::find<gdc::Registry *>(v15, *v25))
    {
      if (++v25 == a2)
      {
        goto LABEL_28;
      }

      --v24;
    }

    v23 = std::__stable_partition_impl<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_4 &,std::__wrap_iter<md::LabelBase **>,long,std::pair<md::LabelBase **,long>>(v25, a2, a3, v24, v13, v22);
LABEL_28:
    if (v8 == v11)
    {
      return v23;
    }

    else
    {
      v26 = v23 - v11;
      if (v23 == v11)
      {
        return v8;
      }

      else if (&v8->u64[1] == v11)
      {
        v29 = v8->i64[0];
        memmove(v8, v11, v23 - v11);
        v11 = (v8->u64 + v26);
        *(v8->i64 + v26) = v29;
      }

      else if (v11 + 1 == v23)
      {
        v30 = *(v23 - 8);
        v11 = &v8->u64[1];
        if ((v23 - 8) != v8)
        {
          memmove(&v8->u64[1], v8, v23 - 8 - v8);
        }

        v8->i64[0] = v30;
      }

      else
      {
        v31 = (v11 - v8) >> 3;
        if (v31 == v26 >> 3)
        {
          v32 = &v8->u64[1];
          v33 = v11 + 1;
          do
          {
            v34 = *(v32 - 1);
            *(v32 - 1) = *(v33 - 1);
            *(v33 - 1) = v34;
            if (v32 == v11)
            {
              break;
            }

            ++v32;
          }

          while (v33++ != v23);
        }

        else
        {
          v36 = v26 >> 3;
          v37 = (v11 - v8) >> 3;
          do
          {
            v38 = v37;
            v37 = v36;
            v36 = v38 % v36;
          }

          while (v36);
          v39 = (v8 + 8 * v37);
          do
          {
            v41 = v39[-1].i64[1];
            v39 = (v39 - 8);
            v40 = v41;
            v42 = (v39->i64 + v11 - v8);
            v43 = v39;
            do
            {
              v44 = v42;
              *v43 = *v42;
              v45 = &v42[v31];
              v46 = __OFSUB__(v31, (v23 - v42) >> 3);
              v48 = v31 - ((v23 - v42) >> 3);
              v47 = (v48 < 0) ^ v46;
              v42 = &v8->i64[v48];
              if (v47)
              {
                v42 = v45;
              }

              v43 = v44;
            }

            while (v42 != v39);
            *v44 = v40;
          }

          while (v39 != v8);
          return (v8 + v26);
        }
      }
    }
  }

  return v11;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,false>(uint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v5 = result;
LABEL_2:
  v6 = a2;
  v7 = a2 - 1;
  while (1)
  {
    v8 = v5;
    v9 = v6 - v5;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(v5, v5 + 1, v7);
        case 4:

          return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(v5, v5 + 1, v5 + 2, v7);
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(v5, v5 + 1, v5 + 2, v5 + 3, v7);
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      v6 = a2;
      if (v9 == 2)
      {
        v90 = *v7;
        v91 = *v5;
        v92 = *(*v7 + 8);
        v93 = *(*v5 + 8);
        if (v92 == v93 || (v94 = (*(*v92 + 656))(*(*v7 + 8)), v94 != (*(*v93 + 656))(v93)))
        {
          v202 = (*(*v92 + 656))(v92);
          result = (*(*v93 + 656))(v93);
          if (v202 <= result)
          {
            return result;
          }
        }

        else
        {
          result = md::Label::collisionPriorityCmp(v90, v91);
          if ((result & 1) == 0)
          {
            return result;
          }
        }

        v203 = *v5;
        *v5 = *v7;
        *v7 = v203;
        return result;
      }
    }

    v207 = v5;
    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v5 == v6)
      {
        return result;
      }

      v116 = (v9 - 2) >> 1;
      v117 = v116;
      v208 = v9;
      v204 = v116;
      while (1)
      {
        v118 = v117;
        if (v116 < v117)
        {
          goto LABEL_194;
        }

        v119 = (2 * v117) | 1;
        v120 = &v207[v119];
        v121 = 2 * v117 + 2;
        v211 = v117;
        if (v121 < v9)
        {
          v122 = *v120;
          v123 = v120[1];
          v124 = *(*v120 + 8);
          v125 = *(v123 + 8);
          if (v124 == v125)
          {
            goto LABEL_165;
          }

          v126 = (*(*v124 + 656))(*(*v120 + 8));
          if (v126 != (*(*v125 + 656))(v125))
          {
            v9 = v208;
LABEL_165:
            v128 = (*(*v124 + 656))(v124);
            v129 = (*(*v125 + 656))(v125);
            v118 = v211;
            if (v128 <= v129)
            {
              goto LABEL_167;
            }

LABEL_166:
            ++v120;
            v119 = v121;
            goto LABEL_167;
          }

          v127 = md::Label::collisionPriorityCmp(v122, v123);
          v9 = v208;
          v118 = v211;
          if (v127)
          {
            goto LABEL_166;
          }
        }

LABEL_167:
        v130 = v207[v118];
        v131 = *v120;
        v132 = *(*v120 + 8);
        v133 = *(v130 + 8);
        if (v132 == v133)
        {
          v116 = v204;
        }

        else
        {
          v134 = (*(*v132 + 656))(*(*v120 + 8));
          v116 = v204;
          if (v134 == (*(*v133 + 656))(v133))
          {
            result = md::Label::collisionPriorityCmp(v131, v130);
            v9 = v208;
            v118 = v211;
            if ((result & 1) == 0)
            {
              goto LABEL_174;
            }

            goto LABEL_194;
          }

          v9 = v208;
        }

        v135 = (*(*v132 + 656))(v132);
        result = (*(*v133 + 656))(v133);
        v118 = v211;
        if (v135 <= result)
        {
LABEL_174:
          v215 = v207[v118];
          v207[v118] = *v120;
          if (v116 < v119)
          {
LABEL_175:
            v136 = v120;
LABEL_193:
            v118 = v211;
            *v136 = v215;
            goto LABEL_194;
          }

          while (2)
          {
            v137 = 2 * v119;
            v119 = (2 * v119) | 1;
            v136 = &v207[v119];
            v138 = v137 + 2;
            if (v137 + 2 < v9)
            {
              v139 = *v136;
              v140 = v136[1];
              v141 = *(*v136 + 8);
              v142 = *(v140 + 8);
              if (v141 != v142)
              {
                v143 = (*(*v141 + 656))(*(*v136 + 8));
                if (v143 == (*(*v142 + 656))(v142))
                {
                  v144 = md::Label::collisionPriorityCmp(v139, v140);
                  v9 = v208;
                  v116 = v204;
                  if ((v144 & 1) == 0)
                  {
                    goto LABEL_185;
                  }

LABEL_184:
                  ++v136;
                  v119 = v138;
                  goto LABEL_185;
                }

                v116 = v204;
              }

              v145 = (*(*v141 + 656))(v141);
              v9 = v208;
              if (v145 <= (*(*v142 + 656))(v142))
              {
                goto LABEL_185;
              }

              goto LABEL_184;
            }

LABEL_185:
            v146 = *v136;
            v147 = *(*v136 + 8);
            v148 = *(v215 + 8);
            if (v147 != v148)
            {
              v149 = (*(*v147 + 656))(*(*v136 + 8));
              if (v149 == (*(*v148 + 656))(v148))
              {
                result = md::Label::collisionPriorityCmp(v146, v215);
                v9 = v208;
                if (result)
                {
                  goto LABEL_175;
                }

                goto LABEL_192;
              }

              v9 = v208;
            }

            v150 = (*(*v147 + 656))(v147);
            result = (*(*v148 + 656))(v148);
            if (v150 > result)
            {
              goto LABEL_175;
            }

LABEL_192:
            *v120 = *v136;
            v120 = v136;
            if (v116 < v119)
            {
              goto LABEL_193;
            }

            continue;
          }
        }

LABEL_194:
        v117 = v118 - 1;
        if (!v118)
        {
          v151 = v207;
          while (1)
          {
            v152 = 0;
            v205 = *v151;
            v153 = (v9 - 2) >> 1;
            v154 = v151;
            v209 = v9;
            v212 = v153;
            do
            {
              v155 = v154;
              v156 = &v154[v152];
              v154 = v156 + 1;
              v157 = 2 * v152;
              v152 = (2 * v152) | 1;
              v158 = v157 + 2;
              if (v157 + 2 >= v9)
              {
                goto LABEL_206;
              }

              v216 = v156 + 1;
              v161 = v156[2];
              v159 = v156 + 2;
              v160 = v161;
              v162 = *(v159 - 1);
              v163 = *(v162 + 8);
              v164 = *(v161 + 8);
              if (v163 == v164)
              {
                goto LABEL_204;
              }

              v165 = (*(*v163 + 656))(*(v162 + 8));
              if (v165 != (*(*v164 + 656))(v164))
              {
                v9 = v209;
LABEL_204:
                v166 = (*(*v163 + 656))(v163);
                result = (*(*v164 + 656))(v164);
                v153 = v212;
                v154 = v216;
                if (v166 <= result)
                {
                  goto LABEL_206;
                }

LABEL_205:
                v154 = v159;
                v152 = v158;
                goto LABEL_206;
              }

              result = md::Label::collisionPriorityCmp(v162, v160);
              v9 = v209;
              v153 = v212;
              v154 = v216;
              if (result)
              {
                goto LABEL_205;
              }

LABEL_206:
              *v155 = *v154;
            }

            while (v152 <= v153);
            v167 = a2 - 1;
            v96 = v154 == --a2;
            if (v96)
            {
              *v154 = v205;
              v151 = v207;
              goto LABEL_230;
            }

            *v154 = *v167;
            *v167 = v205;
            v151 = v207;
            v168 = (v154 - v207 + 8) >> 3;
            v169 = v168 - 2;
            if (v168 < 2)
            {
              goto LABEL_230;
            }

            v170 = v169 >> 1;
            v171 = &v207[v169 >> 1];
            v172 = *v171;
            v173 = *v154;
            v174 = *(*v171 + 8);
            v175 = *(*v154 + 8);
            if (v174 == v175)
            {
              goto LABEL_216;
            }

            v176 = (*(*v174 + 656))(*(*v171 + 8));
            if (v176 != (*(*v175 + 656))(v175))
            {
              v9 = v209;
LABEL_216:
              v177 = (*(*v174 + 656))(v174);
              result = (*(*v175 + 656))(v175);
              if (v177 <= result)
              {
                goto LABEL_230;
              }

              goto LABEL_217;
            }

            result = md::Label::collisionPriorityCmp(v172, v173);
            v9 = v209;
            if ((result & 1) == 0)
            {
              goto LABEL_230;
            }

LABEL_217:
            v178 = *v154;
            *v154 = *v171;
            if (v169 < 2)
            {
              v179 = &v207[v169 >> 1];
              goto LABEL_229;
            }

            while (2)
            {
              v180 = v170 - 1;
              v170 = (v170 - 1) >> 1;
              v179 = &v151[v170];
              v181 = *v179;
              v182 = *(*v179 + 8);
              v183 = *(v178 + 8);
              if (v182 != v183)
              {
                v184 = (*(*v182 + 656))(*(*v179 + 8));
                if (v184 == (*(*v183 + 656))(v183))
                {
                  result = md::Label::collisionPriorityCmp(v181, v178);
                  v9 = v209;
                  if ((result & 1) == 0)
                  {
                    break;
                  }

                  goto LABEL_226;
                }

                v9 = v209;
              }

              v185 = (*(*v182 + 656))(v182);
              result = (*(*v183 + 656))(v183);
              if (v185 > result)
              {
LABEL_226:
                *v171 = *v179;
                v171 = &v151[v170];
                v151 = v207;
                if (v180 <= 1)
                {
                  goto LABEL_229;
                }

                continue;
              }

              break;
            }

            v179 = v171;
            v151 = v207;
LABEL_229:
            *v179 = v178;
LABEL_230:
            if (v9-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v10 = &v5[v9 >> 1];
    if (v9 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(&v5[v9 >> 1], v5, v7);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(v5, &v5[v9 >> 1], v7);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(v5 + 1, v10 - 1, a2 - 2);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(v5 + 2, &v5[(v9 >> 1) + 1], a2 - 3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(v10 - 1, &v5[v9 >> 1], &v5[(v9 >> 1) + 1]);
      v11 = *v5;
      *v5 = *v10;
      *v10 = v11;
    }

    --a3;
    if (a4)
    {
      goto LABEL_33;
    }

    v12 = *(v5 - 1);
    v13 = *v5;
    v14 = *(v12 + 8);
    v15 = *(*v8 + 8);
    if (v14 != v15)
    {
      v16 = (*(*v14 + 656))(*(v12 + 8));
      if (v16 == (*(*v15 + 656))(v15))
      {
        v8 = v207;
        if ((md::Label::collisionPriorityCmp(v12, v13) & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_33;
      }

      v8 = v207;
    }

    v28 = (*(*v14 + 656))(v14);
    if (v28 > (*(*v15 + 656))(v15))
    {
LABEL_33:
      v29 = v8 + 1;
      v30 = *v8;
      v213 = a3;
      while (1)
      {
        v31 = *v29;
        v32 = *(*v29 + 8);
        v33 = *(v30 + 8);
        if (v32 == v33)
        {
          break;
        }

        v34 = (*(*v32 + 656))(*(*v29 + 8));
        if (v34 != (*(*v33 + 656))(v33))
        {
          break;
        }

        if ((md::Label::collisionPriorityCmp(v31, v30) & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_39:
        ++v29;
      }

      v35 = (*(*v32 + 656))(v32);
      if (v35 > (*(*v33 + 656))(v33))
      {
        goto LABEL_39;
      }

LABEL_40:
      v36 = v29 - 1;
      i = v7;
      if (v29 - 1 != v207)
      {
        while (1)
        {
          v38 = *i;
          v39 = *(*i + 8);
          v40 = *(v30 + 8);
          if (v39 == v40 || (v41 = (*(*v39 + 656))(*(*i + 8)), v41 != (*(*v40 + 656))(v40)))
          {
            v42 = (*(*v39 + 656))(v39);
            if (v42 > (*(*v40 + 656))(v40))
            {
              goto LABEL_57;
            }
          }

          else if (md::Label::collisionPriorityCmp(v38, v30))
          {
            goto LABEL_57;
          }

          --i;
        }
      }

      i = a2;
      if (v29 < a2)
      {
        for (i = v7; ; --i)
        {
          v43 = *i;
          v44 = *(*i + 8);
          v45 = *(v30 + 8);
          if (v44 == v45 || (v46 = (*(*v44 + 656))(*(*i + 8)), v46 != (*(*v45 + 656))(v45)))
          {
            v48 = (*(*v44 + 656))(v44);
            v49 = (*(*v45 + 656))(v45);
            if (v29 >= i || v48 > v49)
            {
              break;
            }
          }

          else
          {
            v47 = md::Label::collisionPriorityCmp(v43, v30);
            if (v29 >= i || (v47 & 1) != 0)
            {
              break;
            }
          }
        }
      }

LABEL_57:
      if (v29 >= i)
      {
        goto LABEL_73;
      }

      v50 = v29;
      v51 = i;
      while (2)
      {
        v52 = *v50;
        *v50++ = *v51;
        *v51 = v52;
        while (2)
        {
          v53 = *v50;
          v54 = *(*v50 + 8);
          v55 = *(v30 + 8);
          if (v54 != v55)
          {
            v56 = (*(*v54 + 656))(*(*v50 + 8));
            if (v56 == (*(*v55 + 656))(v55))
            {
              if ((md::Label::collisionPriorityCmp(v53, v30) & 1) == 0)
              {
                break;
              }

              goto LABEL_65;
            }
          }

          v57 = (*(*v54 + 656))(v54);
          if (v57 > (*(*v55 + 656))(v55))
          {
LABEL_65:
            ++v50;
            continue;
          }

          break;
        }

        v36 = v50 - 1;
        do
        {
          while (1)
          {
            v59 = *--v51;
            v58 = v59;
            v60 = *(v59 + 8);
            v61 = *(v30 + 8);
            if (v60 == v61)
            {
              break;
            }

            v62 = (*(*v60 + 656))(v60);
            if (v62 != (*(*v61 + 656))(v61))
            {
              break;
            }

            if (md::Label::collisionPriorityCmp(v58, v30))
            {
              goto LABEL_72;
            }
          }

          v63 = (*(*v60 + 656))(v60);
        }

        while (v63 <= (*(*v61 + 656))(v61));
LABEL_72:
        if (v50 < v51)
        {
          continue;
        }

        break;
      }

LABEL_73:
      if (v36 != v207)
      {
        *v207 = *v36;
      }

      *v36 = v30;
      v64 = v29 >= i;
      v6 = a2;
      v7 = a2 - 1;
      a3 = v213;
      if (v64)
      {
        v65 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **>(v207, v36);
        v5 = v36 + 1;
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **>(v36 + 1, a2);
        if (result)
        {
          a2 = v36;
          v5 = v207;
          if (v65)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v65)
        {
          goto LABEL_79;
        }
      }

      else
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,false>(v207, v36, v213, a4 & 1);
        a4 = 0;
        v5 = v36 + 1;
      }
    }

    else
    {
LABEL_19:
      v17 = *v8;
      v18 = *v7;
      v19 = *(*v8 + 8);
      v20 = *(*v7 + 8);
      if (v19 == v20 || (v21 = (*(*v19 + 656))(*(*v8 + 8)), v21 != (*(*v20 + 656))(v20)))
      {
        v66 = (*(*v19 + 656))(v19);
        result = (*(*v20 + 656))(v20);
        if (v66 > result)
        {
LABEL_81:
          v5 = v8 + 1;
          j = a2;
          while (1)
          {
            v67 = *v5;
            v68 = *(v17 + 8);
            v69 = *(*v5 + 8);
            if (v68 == v69 || (v70 = (*(*v68 + 656))(*(v17 + 8)), v70 != (*(*v69 + 656))(v69)))
            {
              v71 = (*(*v68 + 656))(v68);
              result = (*(*v69 + 656))(v69);
              j = a2;
              if (v71 > result)
              {
                goto LABEL_88;
              }
            }

            else
            {
              result = md::Label::collisionPriorityCmp(v17, v67);
              if (result)
              {
                goto LABEL_88;
              }
            }

            ++v5;
          }
        }
      }

      else
      {
        result = md::Label::collisionPriorityCmp(v17, v18);
        if (result)
        {
          goto LABEL_81;
        }
      }

      v5 = v8 + 1;
      j = a2;
      while (v5 < j)
      {
        v23 = *v5;
        v24 = *(v17 + 8);
        v25 = *(*v5 + 8);
        if (v24 == v25 || (v26 = (*(*v24 + 656))(*(v17 + 8)), v26 != (*(*v25 + 656))(v25)))
        {
          v27 = (*(*v24 + 656))(v24);
          result = (*(*v25 + 656))(v25);
          j = a2;
          if (v27 > result)
          {
            break;
          }
        }

        else
        {
          result = md::Label::collisionPriorityCmp(v17, v23);
          if (result)
          {
            break;
          }
        }

        ++v5;
      }

LABEL_88:
      if (v5 >= j)
      {
        goto LABEL_108;
      }

      for (j = v7; ; --j)
      {
        v72 = *j;
        v73 = *(v17 + 8);
        v74 = *(*j + 8);
        if (v73 != v74)
        {
          v75 = (*(*v73 + 656))(*(v17 + 8));
          if (v75 == (*(*v74 + 656))(v74))
          {
            break;
          }
        }

        v76 = (*(*v73 + 656))(v73);
        result = (*(*v74 + 656))(v74);
        if (v76 <= result)
        {
          goto LABEL_108;
        }

LABEL_95:
        ;
      }

      result = md::Label::collisionPriorityCmp(v17, v72);
      if (result)
      {
        goto LABEL_95;
      }

LABEL_108:
      while (v5 < j)
      {
        v77 = *v5;
        *v5++ = *j;
        *j = v77;
        while (1)
        {
          v78 = *v5;
          v79 = *(v17 + 8);
          v80 = *(*v5 + 8);
          if (v79 == v80)
          {
            break;
          }

          v81 = (*(*v79 + 656))(*(v17 + 8));
          if (v81 != (*(*v80 + 656))(v80))
          {
            break;
          }

          if (md::Label::collisionPriorityCmp(v17, v78))
          {
            goto LABEL_103;
          }

LABEL_102:
          ++v5;
        }

        v82 = (*(*v79 + 656))(v79);
        if (v82 <= (*(*v80 + 656))(v80))
        {
          goto LABEL_102;
        }

        do
        {
LABEL_103:
          while (1)
          {
            v84 = *--j;
            v83 = v84;
            v85 = *(v17 + 8);
            v86 = *(v84 + 8);
            if (v85 == v86)
            {
              break;
            }

            v87 = (*(*v85 + 656))(*(v17 + 8));
            if (v87 != (*(*v86 + 656))(v86))
            {
              break;
            }

            result = md::Label::collisionPriorityCmp(v17, v83);
            if ((result & 1) == 0)
            {
              goto LABEL_108;
            }
          }

          v88 = (*(*v85 + 656))(v85);
          result = (*(*v86 + 656))(v86);
        }

        while (v88 > result);
      }

      v89 = v5 - 1;
      if (v5 - 1 != v207)
      {
        *v207 = *v89;
      }

      a4 = 0;
      *v89 = v17;
      v6 = a2;
    }
  }

  v95 = v5 + 1;
  v96 = v5 == v6 || v95 == v6;
  v97 = v96;
  if ((a4 & 1) == 0)
  {
    if (v97)
    {
      return result;
    }

    while (1)
    {
      v187 = v8;
      v8 = v95;
      v189 = *v187;
      v188 = v187[1];
      v190 = *(v188 + 8);
      v191 = *(*v187 + 8);
      if (v190 == v191 || (v192 = (*(*v190 + 656))(*(v188 + 8)), v192 != (*(*v191 + 656))(v191)))
      {
        v193 = (*(*v190 + 656))(v190);
        result = (*(*v191 + 656))(v191);
        if (v193 <= result)
        {
          goto LABEL_246;
        }
      }

      else
      {
        result = md::Label::collisionPriorityCmp(v188, v189);
        if ((result & 1) == 0)
        {
          goto LABEL_246;
        }
      }

      v194 = *v8;
      do
      {
        while (1)
        {
          v195 = v187;
          v187[1] = *v187;
          v197 = *--v187;
          v196 = v197;
          v198 = *(v194 + 8);
          v199 = *(v197 + 8);
          if (v198 == v199)
          {
            break;
          }

          v200 = (*(*v198 + 656))(*(v194 + 8));
          if (v200 != (*(*v199 + 656))(v199))
          {
            break;
          }

          result = md::Label::collisionPriorityCmp(v194, v196);
          if ((result & 1) == 0)
          {
            goto LABEL_245;
          }
        }

        v201 = (*(*v198 + 656))(v198);
        result = (*(*v199 + 656))(v199);
      }

      while (v201 > result);
LABEL_245:
      *v195 = v194;
LABEL_246:
      v95 = v8 + 1;
      if (v8 + 1 == a2)
      {
        return result;
      }
    }
  }

  if (v97)
  {
    return result;
  }

  v98 = 0;
  v99 = v5;
  while (2)
  {
    v100 = v99;
    v99 = v95;
    v102 = *v100;
    v101 = v100[1];
    v103 = *(v101 + 8);
    v104 = *(*v100 + 8);
    if (v103 == v104 || (v105 = (*(*v103 + 656))(*(v101 + 8)), v105 != (*(*v104 + 656))(v104)))
    {
      v106 = (*(*v103 + 656))(v103);
      result = (*(*v104 + 656))(v104);
      if (v106 <= result)
      {
        goto LABEL_153;
      }
    }

    else
    {
      result = md::Label::collisionPriorityCmp(v101, v102);
      if ((result & 1) == 0)
      {
        goto LABEL_153;
      }
    }

    v107 = v100[1];
    v100[1] = *v100;
    v108 = v8;
    if (v100 == v8)
    {
      goto LABEL_152;
    }

    v214 = v99;
    v109 = v98;
    while (2)
    {
      v110 = (v8 + v109);
      v111 = *(v110 - 1);
      v112 = *(v107 + 8);
      v113 = *(v111 + 8);
      if (v112 != v113)
      {
        v114 = (*(*v112 + 656))(*(v107 + 8));
        if (v114 == (*(*v113 + 656))(v113))
        {
          result = md::Label::collisionPriorityCmp(v107, v111);
          if ((result & 1) == 0)
          {
            v8 = v207;
            v108 = (v207 + v109);
            goto LABEL_151;
          }

LABEL_148:
          --v100;
          *v110 = *(v110 - 1);
          v109 -= 8;
          v8 = v207;
          if (!v109)
          {
            v108 = v207;
            goto LABEL_151;
          }

          continue;
        }
      }

      break;
    }

    v115 = (*(*v112 + 656))(v112);
    result = (*(*v113 + 656))(v113);
    if (v115 > result)
    {
      goto LABEL_148;
    }

    v108 = v100;
    v8 = v207;
LABEL_151:
    v99 = v214;
LABEL_152:
    *v108 = v107;
LABEL_153:
    v95 = v99 + 1;
    v98 += 8;
    if (v99 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *a2;
  v7 = *a1;
  v8 = *(*a2 + 8);
  v9 = *(*a1 + 8);
  if (v8 == v9 || (v10 = (*(*v8 + 656))(*(*a2 + 8)), v10 != (*(*v9 + 656))(v9)))
  {
    v17 = (*(*v8 + 656))(v8);
    if (v17 <= (*(*v9 + 656))(v9))
    {
      goto LABEL_4;
    }

LABEL_9:
    v18 = *a3;
    v19 = *v4;
    v20 = *(*a3 + 8);
    v21 = *(*v4 + 8);
    if (v20 == v21 || (v22 = (*(*v20 + 656))(*(*a3 + 8)), v22 != (*(*v21 + 656))(v21)))
    {
      v35 = (*(*v20 + 656))(v20);
      result = (*(*v21 + 656))(v21);
      if (v35 <= result)
      {
LABEL_12:
        v23 = *v5;
        *v5 = *v4;
        *v4 = v23;
        v24 = *a3;
        v25 = *(*a3 + 8);
        v26 = *(v23 + 8);
        if (v25 != v26)
        {
          v27 = (*(*v25 + 656))(*(*a3 + 8));
          if (v27 == (*(*v26 + 656))(v26))
          {
            result = md::Label::collisionPriorityCmp(v24, v23);
            v5 = v4;
            v4 = a3;
            if ((result & 1) == 0)
            {
              return result;
            }

LABEL_30:
            v37 = *v5;
            *v5 = *v4;
            *v4 = v37;
            return result;
          }
        }

        v36 = (*(*v25 + 656))(v25);
        result = (*(*v26 + 656))(v26);
        v5 = v4;
        v4 = a3;
LABEL_29:
        if (v36 <= result)
        {
          return result;
        }

        goto LABEL_30;
      }
    }

    else
    {
      result = md::Label::collisionPriorityCmp(v18, v19);
      if ((result & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v4 = a3;
    goto LABEL_30;
  }

  if (md::Label::collisionPriorityCmp(v6, v7))
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = *a3;
  v12 = *v4;
  v13 = *(*a3 + 8);
  v14 = *(*v4 + 8);
  if (v13 == v14 || (v15 = (*(*v13 + 656))(*(*a3 + 8)), v15 != (*(*v14 + 656))(v14)))
  {
    v28 = (*(*v13 + 656))(v13);
    result = (*(*v14 + 656))(v14);
    if (v28 <= result)
    {
      return result;
    }
  }

  else
  {
    result = md::Label::collisionPriorityCmp(v11, v12);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v29 = *v4;
  *v4 = *a3;
  *a3 = v29;
  v30 = *v4;
  v31 = *v5;
  v32 = *(*v4 + 8);
  v33 = *(*v5 + 8);
  if (v32 == v33 || (v34 = (*(*v32 + 656))(*(*v4 + 8)), v34 != (*(*v33 + 656))(v33)))
  {
    v36 = (*(*v32 + 656))(v32);
    result = (*(*v33 + 656))(v33);
    goto LABEL_29;
  }

  result = md::Label::collisionPriorityCmp(v30, v31);
  if (result)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(a1, a2, a3);
  v8 = *a4;
  v9 = *a3;
  v10 = *(*a4 + 8);
  v11 = *(*a3 + 8);
  if (v10 == v11 || (v12 = (*(*v10 + 656))(*(*a4 + 8)), v12 != (*(*v11 + 656))(v11)))
  {
    v14 = (*(*v10 + 656))(v10);
    result = (*(*v11 + 656))(v11);
    if (v14 <= result)
    {
      return result;
    }
  }

  else
  {
    result = md::Label::collisionPriorityCmp(v8, v9);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v15 = *a3;
  *a3 = *a4;
  *a4 = v15;
  v16 = *a3;
  v17 = *a2;
  v18 = *(*a3 + 8);
  v19 = *(*a2 + 8);
  if (v18 == v19 || (v20 = (*(*v18 + 656))(*(*a3 + 8)), v20 != (*(*v19 + 656))(v19)))
  {
    v21 = (*(*v18 + 656))(v18);
    result = (*(*v19 + 656))(v19);
    if (v21 <= result)
    {
      return result;
    }
  }

  else
  {
    result = md::Label::collisionPriorityCmp(v16, v17);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v22 = *a2;
  *a2 = *a3;
  *a3 = v22;
  v23 = *a2;
  v24 = *a1;
  v25 = *(*a2 + 8);
  v26 = *(*a1 + 8);
  if (v25 == v26 || (v27 = (*(*v25 + 656))(*(*a2 + 8)), v27 != (*(*v26 + 656))(v26)))
  {
    v28 = (*(*v25 + 656))(v25);
    result = (*(*v26 + 656))(v26);
    if (v28 <= result)
    {
      return result;
    }

    goto LABEL_16;
  }

  result = md::Label::collisionPriorityCmp(v23, v24);
  if (result)
  {
LABEL_16:
    v29 = *a1;
    *a1 = *a2;
    *a2 = v29;
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *a4;
  v12 = *(*a5 + 8);
  v13 = *(*a4 + 8);
  if (v12 == v13 || (v14 = (*(*v12 + 656))(*(*a5 + 8)), v14 != (*(*v13 + 656))(v13)))
  {
    v16 = (*(*v12 + 656))(v12);
    result = (*(*v13 + 656))(v13);
    if (v16 <= result)
    {
      return result;
    }
  }

  else
  {
    result = md::Label::collisionPriorityCmp(v10, v11);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v17 = *a4;
  *a4 = *a5;
  *a5 = v17;
  v18 = *a4;
  v19 = *a3;
  v20 = *(*a4 + 8);
  v21 = *(*a3 + 8);
  if (v20 == v21 || (v22 = (*(*v20 + 656))(*(*a4 + 8)), v22 != (*(*v21 + 656))(v21)))
  {
    v23 = (*(*v20 + 656))(v20);
    result = (*(*v21 + 656))(v21);
    if (v23 <= result)
    {
      return result;
    }
  }

  else
  {
    result = md::Label::collisionPriorityCmp(v18, v19);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v24 = *a3;
  *a3 = *a4;
  *a4 = v24;
  v25 = *a3;
  v26 = *a2;
  v27 = *(*a3 + 8);
  v28 = *(*a2 + 8);
  if (v27 == v28 || (v29 = (*(*v27 + 656))(*(*a3 + 8)), v29 != (*(*v28 + 656))(v28)))
  {
    v30 = (*(*v27 + 656))(v27);
    result = (*(*v28 + 656))(v28);
    if (v30 <= result)
    {
      return result;
    }
  }

  else
  {
    result = md::Label::collisionPriorityCmp(v25, v26);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v31 = *a2;
  *a2 = *a3;
  *a3 = v31;
  v32 = *a2;
  v33 = *a1;
  v34 = *(*a2 + 8);
  v35 = *(*a1 + 8);
  if (v34 == v35 || (v36 = (*(*v34 + 656))(*(*a2 + 8)), v36 != (*(*v35 + 656))(v35)))
  {
    v37 = (*(*v34 + 656))(v34);
    result = (*(*v35 + 656))(v35);
    if (v37 <= result)
    {
      return result;
    }

    goto LABEL_21;
  }

  result = md::Label::collisionPriorityCmp(v32, v33);
  if (result)
  {
LABEL_21:
    v38 = *a1;
    *a1 = *a2;
    *a2 = v38;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2;
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v4 = *(a2 - 1);
      v5 = *a1;
      v6 = *(v4 + 8);
      v7 = *(*a1 + 8);
      if (v6 != v7)
      {
        v8 = (*(*v6 + 656))(*(v4 + 8));
        if (v8 == (*(*v7 + 656))(v7))
        {
          if ((md::Label::collisionPriorityCmp(v4, v5) & 1) == 0)
          {
            return 1;
          }

          goto LABEL_33;
        }
      }

      v25 = (*(*v6 + 656))(v6);
      if (v25 > (*(*v7 + 656))(v7))
      {
LABEL_33:
        v26 = *a1;
        *a1 = *(v2 - 1);
        *(v2 - 1) = v26;
      }

      return 1;
    }
  }

  v9 = (a1 + 2);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_3 &,md::LabelBase **,0>(a1, a1 + 1, a1 + 2);
  v10 = a1 + 3;
  if (a1 + 3 == v2)
  {
    return 1;
  }

  v11 = 0;
  v30 = 0;
  v28 = v2;
  while (1)
  {
    v12 = *v10;
    v13 = *v9;
    v14 = *(*v10 + 8);
    v15 = *(*v9 + 8);
    if (v14 == v15)
    {
      break;
    }

    v16 = (*(*v14 + 656))(*(*v10 + 8));
    if (v16 != (*(*v15 + 656))(v15))
    {
      break;
    }

    if (md::Label::collisionPriorityCmp(v12, v13))
    {
      goto LABEL_20;
    }

LABEL_29:
    v9 = v10;
    v11 += 8;
    if (++v10 == v2)
    {
      return 1;
    }
  }

  v17 = (*(*v14 + 656))(v14);
  if (v17 <= (*(*v15 + 656))(v15))
  {
    goto LABEL_29;
  }

LABEL_20:
  v18 = *v10;
  *v10 = *v9;
  v29 = v11;
  v19 = v11;
  do
  {
    v20 = *(a1 + v19 + 8);
    v21 = *(v18 + 8);
    v22 = *(v20 + 8);
    if (v21 == v22 || (v23 = (*(*v21 + 656))(*(v18 + 8)), v23 != (*(*v22 + 656))(v22)))
    {
      v24 = (*(*v21 + 656))(v21);
      if (v24 <= (*(*v22 + 656))(v22))
      {
        goto LABEL_28;
      }
    }

    else if ((md::Label::collisionPriorityCmp(v18, v20) & 1) == 0)
    {
      v9 = a1 + v19 + 16;
      goto LABEL_28;
    }

    v9 -= 8;
    *(a1 + v19 + 16) = *(a1 + v19 + 8);
    v19 -= 8;
  }

  while (v19 != -16);
  v9 = a1;
LABEL_28:
  v2 = v28;
  v11 = v29;
  *v9 = v18;
  if (++v30 != 8)
  {
    goto LABEL_29;
  }

  return v10 + 1 == v28;
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(a1, a2, a3, a5);
  v10 = *(*a4 + 8);
  v11 = *(*a3 + 8);
  v12 = *(*(*a5 + 168) + 32);
  v13 = (*(*v12 + 72))(v12);
  LODWORD(v10) = vabdd_f64(v13, (*(*v10 + 648))(v10));
  v14 = *(*(*a5 + 168) + 32);
  v15 = (*(*v14 + 72))(v14);
  if (v10 < vabdd_f64(v15, (*(*v11 + 648))(v11)))
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = *(*a3 + 8);
    v18 = *(*a2 + 8);
    v19 = *(*(*a5 + 168) + 32);
    v20 = (*(*v19 + 72))(v19);
    LODWORD(v17) = vabdd_f64(v20, (*(*v17 + 648))(v17));
    v21 = *(*(*a5 + 168) + 32);
    v22 = (*(*v21 + 72))(v21);
    if (v17 < vabdd_f64(v22, (*(*v18 + 648))(v18)))
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = *(*a2 + 8);
      v25 = *(*a1 + 8);
      v26 = *(*(*a5 + 168) + 32);
      v27 = (*(*v26 + 72))(v26);
      LODWORD(v24) = vabdd_f64(v27, (*(*v24 + 648))(v24));
      v28 = *(*(*a5 + 168) + 32);
      v29 = (*(*v28 + 72))(v28);
      if (v24 < vabdd_f64(v29, (*(*v25 + 648))(v25)))
      {
        v30 = *a1;
        *a1 = *a2;
        *a2 = v30;
      }
    }
  }
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(a1, a2, a3, a4, a6);
  v12 = *(*a5 + 8);
  v13 = *(*a4 + 8);
  v14 = *(*(*a6 + 168) + 32);
  v15 = (*(*v14 + 72))(v14);
  LODWORD(v12) = vabdd_f64(v15, (*(*v12 + 648))(v12));
  v16 = *(*(*a6 + 168) + 32);
  v17 = (*(*v16 + 72))(v16);
  if (v12 < vabdd_f64(v17, (*(*v13 + 648))(v13)))
  {
    v18 = *a4;
    *a4 = *a5;
    *a5 = v18;
    v19 = *(*a4 + 8);
    v20 = *(*a3 + 8);
    v21 = *(*(*a6 + 168) + 32);
    v22 = (*(*v21 + 72))(v21);
    LODWORD(v19) = vabdd_f64(v22, (*(*v19 + 648))(v19));
    v23 = *(*(*a6 + 168) + 32);
    v24 = (*(*v23 + 72))(v23);
    if (v19 < vabdd_f64(v24, (*(*v20 + 648))(v20)))
    {
      v25 = *a3;
      *a3 = *a4;
      *a4 = v25;
      v26 = *(*a3 + 8);
      v27 = *(*a2 + 8);
      v28 = *(*(*a6 + 168) + 32);
      v29 = (*(*v28 + 72))(v28);
      LODWORD(v26) = vabdd_f64(v29, (*(*v26 + 648))(v26));
      v30 = *(*(*a6 + 168) + 32);
      v31 = (*(*v30 + 72))(v30);
      if (v26 < vabdd_f64(v31, (*(*v27 + 648))(v27)))
      {
        v32 = *a2;
        *a2 = *a3;
        *a3 = v32;
        v33 = *(*a2 + 8);
        v34 = *(*a1 + 8);
        v35 = *(*(*a6 + 168) + 32);
        v36 = (*(*v35 + 72))(v35);
        LODWORD(v33) = vabdd_f64(v36, (*(*v33 + 648))(v33));
        v37 = *(*(*a6 + 168) + 32);
        v38 = (*(*v37 + 72))(v37);
        if (v33 < vabdd_f64(v38, (*(*v34 + 648))(v34)))
        {
          v39 = *a1;
          *a1 = *a2;
          *a2 = v39;
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *(*(a2 - 1) + 8);
        v8 = *(*a1 + 8);
        v9 = *(*(*a3 + 168) + 32);
        v10 = (*(*v9 + 72))(v9);
        LODWORD(v7) = vabdd_f64(v10, (*(*v7 + 648))(v7));
        v11 = *(*(*a3 + 168) + 32);
        v12 = (*(*v11 + 72))(v11);
        if (v7 < vabdd_f64(v12, (*(*v8 + 648))(v8)))
        {
          v13 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v13;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v14 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_2 &,md::LabelBase **,0>(a1, a1 + 1, a1 + 2, a3);
  v15 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = *v14;
    v19 = *(*v15 + 8);
    v20 = *(v18 + 8);
    v21 = *(*(*a3 + 168) + 32);
    v22 = (*(*v21 + 72))(v21);
    LODWORD(v19) = vabdd_f64(v22, (*(*v19 + 648))(v19));
    v23 = *(*(*a3 + 168) + 32);
    v24 = (*(*v23 + 72))(v23);
    if (v19 < vabdd_f64(v24, (*(*v20 + 648))(v20)))
    {
      v25 = *v15;
      v26 = v16;
      while (1)
      {
        *(a1 + v26 + 24) = *(a1 + v26 + 16);
        if (v26 == -16)
        {
          break;
        }

        v27 = *(v25 + 8);
        v28 = *(*(a1 + v26 + 8) + 8);
        v29 = *(*(*a3 + 168) + 32);
        v30 = (*(*v29 + 72))(v29);
        LODWORD(v27) = vabdd_f64(v30, (*(*v27 + 648))(v27));
        v31 = *(*(*a3 + 168) + 32);
        v32 = (*(*v31 + 72))(v31);
        v26 -= 8;
        if (v27 >= vabdd_f64(v32, (*(*v28 + 648))(v28)))
        {
          v33 = (a1 + v26 + 24);
          goto LABEL_19;
        }
      }

      v33 = a1;
LABEL_19:
      *v33 = v25;
      if (++v17 == 8)
      {
        return v15 + 1 == a2;
      }
    }

    v14 = v15;
    v16 += 8;
    if (++v15 == a2)
    {
      return 1;
    }
  }
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(a1, a2, a3, a5);
  v10 = *(*a4 + 8);
  v11 = *(*a3 + 8);
  v12 = (*(*v10 + 656))(v10);
  if (v12 == (*(*v11 + 656))(v11))
  {
    v13 = *(*(*a5 + 168) + 32);
    v14 = (*(*v13 + 72))(v13);
    v15 = vabdd_f64(v14, (*(*v10 + 648))(v10));
    v16 = *(*(*a5 + 168) + 32);
    v17 = (*(*v16 + 72))(v16);
    if (v15 >= vabdd_f64(v17, (*(*v11 + 648))(v11)))
    {
      return;
    }
  }

  else
  {
    v18 = (*(*v10 + 656))(v10);
    if (v18 <= (*(*v11 + 656))(v11))
    {
      return;
    }
  }

  v19 = *a3;
  *a3 = *a4;
  *a4 = v19;
  v20 = *(*a3 + 8);
  v21 = *(*a2 + 8);
  v22 = (*(*v20 + 656))(v20);
  if (v22 == (*(*v21 + 656))(v21))
  {
    v23 = *(*(*a5 + 168) + 32);
    v24 = (*(*v23 + 72))(v23);
    v25 = vabdd_f64(v24, (*(*v20 + 648))(v20));
    v26 = *(*(*a5 + 168) + 32);
    v27 = (*(*v26 + 72))(v26);
    if (v25 >= vabdd_f64(v27, (*(*v21 + 648))(v21)))
    {
      return;
    }
  }

  else
  {
    v28 = (*(*v20 + 656))(v20);
    if (v28 <= (*(*v21 + 656))(v21))
    {
      return;
    }
  }

  v29 = *a2;
  *a2 = *a3;
  *a3 = v29;
  v30 = *(*a2 + 8);
  v31 = *(*a1 + 8);
  v32 = (*(*v30 + 656))(v30);
  if (v32 != (*(*v31 + 656))(v31))
  {
    v38 = (*(*v30 + 656))(v30);
    if (v38 <= (*(*v31 + 656))(v31))
    {
      return;
    }

    goto LABEL_13;
  }

  v33 = *(*(*a5 + 168) + 32);
  v34 = (*(*v33 + 72))(v33);
  v35 = vabdd_f64(v34, (*(*v30 + 648))(v30));
  v36 = *(*(*a5 + 168) + 32);
  v37 = (*(*v36 + 72))(v36);
  if (v35 < vabdd_f64(v37, (*(*v31 + 648))(v31)))
  {
LABEL_13:
    v39 = *a1;
    *a1 = *a2;
    *a2 = v39;
  }
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(a1, a2, a3, a4, a6);
  v12 = *(*a5 + 8);
  v13 = *(*a4 + 8);
  v14 = (*(*v12 + 656))(v12);
  if (v14 == (*(*v13 + 656))(v13))
  {
    v15 = *(*(*a6 + 168) + 32);
    v16 = (*(*v15 + 72))(v15);
    v17 = vabdd_f64(v16, (*(*v12 + 648))(v12));
    v18 = *(*(*a6 + 168) + 32);
    v19 = (*(*v18 + 72))(v18);
    if (v17 >= vabdd_f64(v19, (*(*v13 + 648))(v13)))
    {
      return;
    }
  }

  else
  {
    v20 = (*(*v12 + 656))(v12);
    if (v20 <= (*(*v13 + 656))(v13))
    {
      return;
    }
  }

  v21 = *a4;
  *a4 = *a5;
  *a5 = v21;
  v22 = *(*a4 + 8);
  v23 = *(*a3 + 8);
  v24 = (*(*v22 + 656))(v22);
  if (v24 == (*(*v23 + 656))(v23))
  {
    v25 = *(*(*a6 + 168) + 32);
    v26 = (*(*v25 + 72))(v25);
    v27 = vabdd_f64(v26, (*(*v22 + 648))(v22));
    v28 = *(*(*a6 + 168) + 32);
    v29 = (*(*v28 + 72))(v28);
    if (v27 >= vabdd_f64(v29, (*(*v23 + 648))(v23)))
    {
      return;
    }
  }

  else
  {
    v30 = (*(*v22 + 656))(v22);
    if (v30 <= (*(*v23 + 656))(v23))
    {
      return;
    }
  }

  v31 = *a3;
  *a3 = *a4;
  *a4 = v31;
  v32 = *(*a3 + 8);
  v33 = *(*a2 + 8);
  v34 = (*(*v32 + 656))(v32);
  if (v34 == (*(*v33 + 656))(v33))
  {
    v35 = *(*(*a6 + 168) + 32);
    v36 = (*(*v35 + 72))(v35);
    v37 = vabdd_f64(v36, (*(*v32 + 648))(v32));
    v38 = *(*(*a6 + 168) + 32);
    v39 = (*(*v38 + 72))(v38);
    if (v37 >= vabdd_f64(v39, (*(*v33 + 648))(v33)))
    {
      return;
    }
  }

  else
  {
    v40 = (*(*v32 + 656))(v32);
    if (v40 <= (*(*v33 + 656))(v33))
    {
      return;
    }
  }

  v41 = *a2;
  *a2 = *a3;
  *a3 = v41;
  v42 = *(*a2 + 8);
  v43 = *(*a1 + 8);
  v44 = (*(*v42 + 656))(v42);
  if (v44 != (*(*v43 + 656))(v43))
  {
    v50 = (*(*v42 + 656))(v42);
    if (v50 <= (*(*v43 + 656))(v43))
    {
      return;
    }

    goto LABEL_17;
  }

  v45 = *(*(*a6 + 168) + 32);
  v46 = (*(*v45 + 72))(v45);
  v47 = vabdd_f64(v46, (*(*v42 + 648))(v42));
  v48 = *(*(*a6 + 168) + 32);
  v49 = (*(*v48 + 72))(v48);
  if (v47 < vabdd_f64(v49, (*(*v43 + 648))(v43)))
  {
LABEL_17:
    v51 = *a1;
    *a1 = *a2;
    *a2 = v51;
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(*(a2 - 1) + 8);
      v8 = *(*a1 + 8);
      v9 = (*(*v7 + 656))(v7);
      if (v9 == (*(*v8 + 656))(v8))
      {
        v10 = *(*(*a3 + 168) + 32);
        v11 = (*(*v10 + 72))(v10);
        v12 = vabdd_f64(v11, (*(*v7 + 648))(v7));
        v13 = *(*(*a3 + 168) + 32);
        v14 = (*(*v13 + 72))(v13);
        if (v12 >= vabdd_f64(v14, (*(*v8 + 648))(v8)))
        {
          return 1;
        }

        goto LABEL_30;
      }

      v38 = (*(*v7 + 656))(v7);
      if (v38 > (*(*v8 + 656))(v8))
      {
LABEL_30:
        v39 = *a1;
        *a1 = *(v4 - 1);
        *(v4 - 1) = v39;
      }

      return 1;
    }
  }

  v15 = (a1 + 2);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteAnnotationDedupingGroup::prepareForCollision(md::LabelManager *)::$_1 &,md::LabelBase **,0>(a1, a1 + 1, a1 + 2, a3);
  v16 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v17 = 0;
  v42 = 0;
  v41 = v4;
  while (1)
  {
    v18 = *(*v16 + 8);
    v19 = *(*v15 + 8);
    v20 = (*(*v18 + 656))(v18);
    if (v20 != (*(*v19 + 656))(v19))
    {
      break;
    }

    v21 = *(*(*a3 + 168) + 32);
    v22 = (*(*v21 + 72))(v21);
    v23 = vabdd_f64(v22, (*(*v18 + 648))(v18));
    v24 = *(*(*a3 + 168) + 32);
    v25 = (*(*v24 + 72))(v24);
    if (v23 < vabdd_f64(v25, (*(*v19 + 648))(v19)))
    {
      goto LABEL_18;
    }

LABEL_26:
    v15 = v16;
    v17 += 8;
    if (++v16 == v4)
    {
      return 1;
    }
  }

  v26 = (*(*v18 + 656))(v18);
  if (v26 <= (*(*v19 + 656))(v19))
  {
    goto LABEL_26;
  }

LABEL_18:
  v27 = *v16;
  *v16 = *v15;
  v28 = v17;
  do
  {
    v29 = *(v27 + 8);
    v30 = *(*(a1 + v28 + 8) + 8);
    v31 = (*(*v29 + 656))(v29);
    if (v31 == (*(*v30 + 656))(v30))
    {
      v32 = *(*(*a3 + 168) + 32);
      v33 = (*(*v32 + 72))(v32);
      v34 = vabdd_f64(v33, (*(*v29 + 648))(v29));
      v35 = *(*(*a3 + 168) + 32);
      v36 = (*(*v35 + 72))(v35);
      if (v34 >= vabdd_f64(v36, (*(*v30 + 648))(v30)))
      {
        v15 = a1 + v28 + 16;
        goto LABEL_25;
      }
    }

    else
    {
      v37 = (*(*v29 + 656))(v29);
      if (v37 <= (*(*v30 + 656))(v30))
      {
        goto LABEL_25;
      }
    }

    v15 -= 8;
    *(a1 + v28 + 16) = *(a1 + v28 + 8);
    v28 -= 8;
  }

  while (v28 != -16);
  v15 = a1;
LABEL_25:
  v4 = v41;
  *v15 = v27;
  if (++v42 != 8)
  {
    goto LABEL_26;
  }

  return v16 + 1 == v41;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::Landmark::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::Landmark::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Landmark::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Landmark::DefaultVbo>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::Landmark::DefaultVbo>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::Landmark::DefaultVbo>,ggl::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A55C20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::Landmark::LandmarkMesh::~LandmarkMesh(ggl::Landmark::LandmarkMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::Landmark::LandmarkMesh::~LandmarkMesh(ggl::Landmark::LandmarkMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::Landmark::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::Landmark::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LogicManager::~LogicManager(md::LogicManager *this)
{
  md::LogicManager::~LogicManager(this);

  JUMPOUT(0x1B8C62190);
}

{
  v11 = *MEMORY[0x1E69E9840];
  *this = &unk_1F2A55C98;
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v2 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v10 = 134217984;
    *&v10[4] = this;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "Destroy LogicManager:%p", v10, 0xCu);
  }

  if (*(this + 136) == 1)
  {
    *v10 = this + 112;
    std::vector<md::LogicExecutionData>::__destroy_vector::operator()[abi:nn200100](v10);
  }

  v3 = *(this + 9);
  if (v3)
  {
    do
    {
      v4 = *v3;
      ecs2::Flow::~Flow((v3 + 3));
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    do
    {
      v7 = *v6;
      v8 = v6[5];
      v6[5] = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v9 = *(this + 2);
  *(this + 2) = 0;
  if (v9)
  {
    operator delete(v9);
  }
}

uint64_t std::__function::__func<md::LogicManager::runLogicBefore(md::LayoutContext const&,gdc::Context &,BOOL)::$_0,std::allocator<md::LogicManager::runLogicBefore(md::LayoutContext const&,gdc::Context &,BOOL)::$_0>,void ()(md::LogicBase *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A55CD8;
  a2[1] = v2;
  return result;
}

id GEOGetVectorKitVLRLog()
{
  if (GEOGetVectorKitVLRLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVLRLog(void)::onceToken, &__block_literal_global_46395);
  }

  v1 = GEOGetVectorKitVLRLog(void)::log;

  return v1;
}

void ___ZL21GEOGetVectorKitVLRLogv_block_invoke_46399()
{
  v0 = os_log_create("com.apple.VectorKit", "VLR");
  v1 = GEOGetVectorKitVLRLog(void)::log;
  GEOGetVectorKitVLRLog(void)::log = v0;
}

uint64_t std::__function::__func<md::LogicManager::pruneAllLogics(md::PruneLevel)::$_0,std::allocator<md::LogicManager::pruneAllLogics(md::PruneLevel)::$_0>,void ()(md::LogicBase *)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F2A55D20;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(md::LogicBase const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::LogicManager::createDebugNode(std::bitset<8ul> const&)::$_0,std::allocator<md::LogicManager::createDebugNode(std::bitset<8ul> const&)::$_0>,void ()(md::LogicBase const*)>::operator()(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    (*(*v2 + 56))(v19, v2, *(a1 + 8));
    v18 = a1;
    std::vector<gdc::DebugTreeValue>::clear[abi:nn200100](*(a1 + 16));
    v4 = v2[9];
    if (v4 != v2 + 10)
    {
      v5 = *(v18 + 16);
      while (1)
      {
        v6 = v4[6];
        if (v6 > 0x7FFFFFFFFFFFFFF7)
        {
          break;
        }

        v7 = v4[5];
        if (v6 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v4[6];
        if (v6)
        {
          memmove(&__dst, v7, v6);
        }

        __dst.__r_.__value_.__s.__data_[v6] = 0;
        gdc::DebugTreeValue::DebugTreeValue(v25, &__dst);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        std::vector<gdc::DebugTreeValue>::push_back[abi:nn200100](v5, v25);
        if (v28 < 0)
        {
          operator delete(__p);
        }

        v8 = v4[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v4[2];
            v10 = *v9 == v4;
            v4 = v9;
          }

          while (!v10);
        }

        v4 = v9;
        if (v9 == v2 + 10)
        {
          goto LABEL_20;
        }
      }

LABEL_47:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

LABEL_20:
    std::string::basic_string[abi:nn200100]<0>(v25, "RequiredDependencies");
    gdc::DebugTreeNode::addProperty(v19, v25, *(v18 + 16));
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    std::vector<gdc::DebugTreeValue>::clear[abi:nn200100](*(v18 + 16));
    v11 = v2[12];
    v12 = v2 + 13;
    if (v11 != v2 + 13)
    {
      v13 = *(v18 + 16);
      do
      {
        v14 = v11[6];
        if (v14 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_47;
        }

        v15 = v11[5];
        if (v14 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v11[6];
        if (v14)
        {
          memmove(&__dst, v15, v14);
        }

        __dst.__r_.__value_.__s.__data_[v14] = 0;
        gdc::DebugTreeValue::DebugTreeValue(v25, &__dst);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        std::vector<gdc::DebugTreeValue>::push_back[abi:nn200100](v13, v25);
        if (v28 < 0)
        {
          operator delete(__p);
        }

        v16 = v11[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v11[2];
            v10 = *v17 == v11;
            v11 = v17;
          }

          while (!v10);
        }

        v11 = v17;
      }

      while (v17 != v12);
    }

    std::string::basic_string[abi:nn200100]<0>(v25, "OptionalDependencies");
    gdc::DebugTreeNode::addProperty(v19, v25, *(v18 + 16));
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    gdc::DebugTreeNode::addChildNode(*(v18 + 24), v19);
    v25[0] = &v24;
    std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](v25);
    v25[0] = &v23;
    std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](v25);
    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }
}

void sub_1B32C5B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  *(v38 - 112) = &a26;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v38 - 112));
  *(v38 - 112) = &a23;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v38 - 112));
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<md::LogicManager::createDebugNode(std::bitset<8ul> const&)::$_0,std::allocator<md::LogicManager::createDebugNode(std::bitset<8ul> const&)::$_0>,void ()(md::LogicBase const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A55DB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::ElevatedStrokeTileData::~ElevatedStrokeTileData(md::ElevatedStrokeTileData *this)
{
  md::ElevatedStrokeTileData::~ElevatedStrokeTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A55DF8;
  *(this + 80) = &unk_1F2A55E38;
  if (*(this + 91))
  {
    md::ElevatedStrokeTileData::clearEntities(this);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 784);
  v3 = (this + 760);
  std::vector<md::ElevatedStrokeGroup>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(this + 92);
  if (v2)
  {
    *(this + 93) = v2;
    operator delete(v2);
  }

  md::MapTileData::~MapTileData(this);
}

void sub_1B32C5D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v10 + 784);
  a10 = (v10 + 760);
  std::vector<md::ElevatedStrokeGroup>::__destroy_vector::operator()[abi:nn200100](&a10);
  v12 = *(v10 + 736);
  if (v12)
  {
    *(v10 + 744) = v12;
    operator delete(v12);
  }

  md::MapTileData::~MapTileData(v10);
  _Unwind_Resume(a1);
}

BOOL md::ElevatedStrokeTileData::clearEntities(md::ElevatedStrokeTileData *this)
{
  md::components::QueuedForDestruction<>::addDestructionTagToEntities<md::DrapingLogic,std::__wrap_iter<gdc::Entity *>>(*(this + 91), *(this + 92), *(this + 93));
  result = gdc::Registry::remove<md::overlayComponents::VectorOverlay,std::__wrap_iter<gdc::Entity *>>(*(this + 91), *(this + 92), *(this + 93));
  *(this + 93) = *(this + 92);
  return result;
}

void md::ElevatedStrokeGroup::~ElevatedStrokeGroup(md::ElevatedStrokeGroup *this)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(this + 120);
  v2 = *(this + 14);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v7 = (this + 64);
  std::vector<md::PolygonOverlayMeshBuilder::MeshInfo>::__destroy_vector::operator()[abi:nn200100](&v7);
  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    std::default_delete<md::Mesh>::operator()[abi:nn200100](v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](this);
}

md::ElevatedStrokeTileData *md::ElevatedStrokeTileData::groupContainingFeature(md::ElevatedStrokeTileData *this, md::ElevatedStrokeTileData *a2, unint64_t a3)
{
  if (this == a2)
  {
    return 0;
  }

  v5 = this;
  while (!std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(v5 + 15, a3))
  {
    v5 = (v5 + 160);
    if (v5 == a2)
    {
      return 0;
    }
  }

  return v5;
}

id GEOGetVectorKitVKMapViewMuninLog(void)
{
  if (GEOGetVectorKitVKMapViewMuninLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKMapViewMuninLog(void)::onceToken, &__block_literal_global_46481);
  }

  v1 = GEOGetVectorKitVKMapViewMuninLog(void)::log;

  return v1;
}

void ___ZL32GEOGetVectorKitVKMapViewMuninLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "VKMapViewMunin");
  v1 = GEOGetVectorKitVKMapViewMuninLog(void)::log;
  GEOGetVectorKitVKMapViewMuninLog(void)::log = v0;
}

void sub_1B32C62F0(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 208));

  _Unwind_Resume(a1);
}

void sub_1B32C68CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, id location, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  objc_destroyWeak((v31 + 40));

  objc_destroyWeak(&location);
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(va);

  _Unwind_Resume(a1);
}

void anonymous namespace::collectionPointFromStorefrontImagery(uint64_t a1, void *a2)
{
  v111[13] = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(a1 + 88) = a1 + 120;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0x3F80000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = a1 + 120;
  *(a1 + 112) = 6;
  v72 = (a1 + 88);
  *(a1 + 1860) = 0;
  *a1 = [v3 identifier];
  v74 = v3;
  if (v3)
  {
    [v3 position];
    v6 = *(&v110 + 1);
    v5 = *&v110;
    v7 = *(&v110 + 2);
    v8 = *&v109[16];
    v9 = *v109;
  }

  else
  {
    v7 = 0.0;
    v8 = 0;
    v6 = 0.0;
    v5 = 0.0;
    v9 = 0uLL;
  }

  v79 = v9;
  gm::quaternionFromEulerAnglesZYX<float>(&v87, v5, v6, v7);
  v105 = v79;
  v106 = v8;
  v107 = v87;
  v102 = xmmword_1B33B0930;
  gm::Quaternion<float>::operator*(&v87, &v107, &v102);
  v10 = v105;
  v11 = v105;
  v12 = v106;
  v13 = v106;
  *&v110 = v87;
  *(a1 + 32) = v87;
  v14 = (a1 + 32);
  v15 = DWORD2(v87);
  DWORD2(v110) = DWORD2(v87);
  *v4 = v10;
  v16 = *(&v87 + 3);
  *(a1 + 40) = v15;
  *(a1 + 44) = v16;
  *(a1 + 24) = v12;
  v87 = v11;
  *&v88[0] = v13;
  memset(v109, 0, sizeof(v109));
  geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(&v87, v109);
  v80 = *&v109[8];
  v17 = tan(*v109 * 0.5 + 0.785398163);
  v18 = log(v17);
  *&v19.f64[0] = v80;
  v19.f64[1] = v18;
  __asm { FMOV            V0.2D, #0.5 }

  v75 = _Q0;
  v77 = vdupq_n_s64(0x3FC45F306DC9C883uLL);
  *(a1 + 72) = *(&v80 + 1);
  *(a1 + 56) = vmlaq_f64(_Q0, v77, v19);
  v102 = v105;
  v103 = v106;
  for (i = 24; i != 48; i += 8)
  {
    v26 = *v14++;
    *(&v102 + i) = v26;
  }

  v104 = v16;
  gdc::CameraFrame<geo::Radians,double>::fromRigidTransformEcefNoOffset(v100, &v102);
  v27 = v101 * 0.318309886;
  *(a1 + 48) = v27 * 3.1416;
  *(a1 + 80) = [v3 timestamp];
  *(a1 + 1856) = [v3 bucketId];
  *(a1 + 1852) = [v3 buildId];
  v87 = *v4;
  *&v88[0] = *(a1 + 24);
  memset(v109, 0, sizeof(v109));
  geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(&v87, v109);
  v81 = *&v109[8];
  v28 = tan(*v109 * 0.5 + 0.785398163);
  v29 = log(v28);
  *&v30.f64[0] = v81;
  v30.f64[1] = v29;
  *(a1 + 56) = vmlaq_f64(v75, v77, v30);
  *(a1 + 72) = *(&v81 + 1);
  *(a1 + 1848) = 1077936128;
  *(a1 + 1858) = 1;
  *(a1 + 1859) = [v3 dataFormatVersion] != 0;
  v31 = [v3 cameras];
  geo::small_vector_base<md::mun::PhotoInfo>::resize(v72, [v31 count]);

  v32 = 0;
  v33 = 0;
  v34 = 24;
  v78 = 44;
  for (j = 140; ; j = v76 + 288)
  {
    v76 = j;
    v36 = [v74 cameras];
    v37 = v33 < [v36 count];

    if (!v37)
    {
      break;
    }

    v38 = *v72;
    v39 = [v74 cameras];
    v82 = [v39 objectAtIndex:v33];

    v40 = v38 + 288 * v33;
    *(v40 + 240) = [v82 cameraNumber];
    if (v82)
    {
      [v82 position];
      v42 = *(&v110 + 1);
      v41 = *&v110;
      v43 = *(&v110 + 2);
      v44 = *&v109[16];
      v73 = *v109;
    }

    else
    {
      v43 = 0.0;
      v44 = 0;
      v73 = 0u;
      v42 = 0.0;
      v41 = 0.0;
    }

    gm::quaternionFromEulerAnglesZYX<float>(&v87, v41, v42, v43);
    v97 = v73;
    v98 = v44;
    v99 = v87;
    geo::RigidTransform<double,float>::operator*(&v87, &v105, &v97);
    v92[0] = xmmword_1B33B0930;
    gm::Quaternion<float>::operator*(&v94, v88 + 8, v92);
    *v109 = v87;
    *&v109[16] = *&v88[0];
    v110 = v94;
    v45 = *(&v94 + 3);
    for (k = 24; k != 36; k += 4)
    {
      *(v38 + v32 + k) = *&v109[k];
    }

    v47 = 0;
    *(v40 + 36) = v45;
    do
    {
      *(v38 + v32 + v47) = *&v109[v47];
      v47 += 8;
    }

    while (v47 != 24);
    v94 = *v40;
    v95 = *(v40 + 16);
    v48 = (v38 + v34);
    for (m = 24; m != 48; m += 8)
    {
      v50 = *v48++;
      *(&v94 + m) = v50;
    }

    v96 = v45;
    gdc::CameraFrame<geo::Radians,double>::fromRigidTransformEcefNoOffset(v92, &v94);
    v51 = v93 * 0.318309886;
    *(v40 + 40) = v51 * 3.1416;
    if (v82)
    {
      [v82 projection];
      *(v40 + 236) = *v109;
      [v82 projection];
      LODWORD(v89) = *v109;
      [v82 projection];
      DWORD1(v89) = *&v109[4];
      [v82 projection];
      DWORD2(v89) = *&v109[8];
      [v82 projection];
      HIDWORD(v89) = *&v109[12];
      [v82 projection];
      LODWORD(v90) = *&v109[16];
      [v82 projection];
      DWORD1(v90) = *&v109[20];
      [v82 projection];
      DWORD2(v90) = v110;
      [v82 projection];
      HIDWORD(v90) = DWORD1(v110);
      [v82 projection];
      v52 = DWORD2(v110);
      v53 = 0uLL;
    }

    else
    {
      *(v40 + 236) = 0;
      v52 = 0;
      v53 = 0uLL;
      v89 = 0u;
      v90 = 0u;
    }

    v91 = v52;
    v88[3] = v53;
    v88[4] = v53;
    v88[1] = v53;
    v88[2] = v53;
    v87 = v53;
    v88[0] = v53;
    [v82 lensType];
    GEOMuninFrustumFromLensModel();
    v54 = v109;
    md::mun::frustumFromGEOFrustumCorners(v109, &v87);
    v55 = 0;
    v56 = v38 + v78;
    do
    {
      for (n = 0; n != 12; n += 4)
      {
        *(v56 + n) = *&v54[n];
      }

      *(v40 + 44 + 16 * v55 + 12) = *&v109[16 * v55 + 12];
      ++v55;
      v56 += 16;
      v54 += 16;
    }

    while (v55 != 6);
    v58 = 0;
    v59 = v38 + v76;
    v60 = v111;
    do
    {
      for (ii = 0; ii != 12; ii += 4)
      {
        *(v59 + ii) = *(v60 + ii);
      }

      ++v58;
      v59 += 12;
      v60 = (v60 + 12);
    }

    while (v58 != 8);
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v62 = [v82 textureIds];
    v63 = v33;
    v64 = v32;
    v65 = [v62 countByEnumeratingWithState:&v83 objects:v108 count:16];
    if (v65)
    {
      v66 = *v84;
      do
      {
        for (jj = 0; jj != v65; ++jj)
        {
          if (*v84 != v66)
          {
            objc_enumerationMutation(v62);
          }

          v68 = [*(*(&v83 + 1) + 8 * jj) unsignedIntegerValue];
          v69 = *(v40 + 256);
          v70 = &v69[-*(v40 + 248) + 1];
          if (*(v40 + 272) < v70)
          {
            geo::small_vector_base<unsigned char>::grow(v40 + 248, v70);
            v69 = *(v40 + 256);
          }

          *v69 = v68;
          ++*(v40 + 256);
        }

        v65 = [v62 countByEnumeratingWithState:&v83 objects:v108 count:16];
      }

      while (v65);
    }

    v71 = v64;
    v33 = v63 + 1;
    v32 = v71 + 288;
    v34 += 288;
    v78 += 288;
  }
}

void sub_1B32C712C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(a14);

  _Unwind_Resume(a1);
}

void geo::small_vector_base<md::mun::PhotoInfo>::resize(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 5);
  if (v6 <= a2)
  {
    if (v6 >= a2)
    {
      return;
    }

    if (a1[3] < a2)
    {
      geo::small_vector_base<md::mun::PhotoInfo>::grow(a1, a2);
      v4 = *a1;
      v5 = a1[1];
    }

    for (i = v4 + 288 * a2; v5 != i; v5 += 288)
    {
      *(v5 + 256) = 0uLL;
      *(v5 + 272) = 0uLL;
      *(v5 + 224) = 0uLL;
      *(v5 + 240) = 0uLL;
      *(v5 + 192) = 0uLL;
      *(v5 + 208) = 0uLL;
      *(v5 + 160) = 0uLL;
      *(v5 + 176) = 0uLL;
      *(v5 + 128) = 0uLL;
      *(v5 + 144) = 0uLL;
      *(v5 + 96) = 0uLL;
      *(v5 + 112) = 0uLL;
      *(v5 + 64) = 0uLL;
      *(v5 + 80) = 0uLL;
      *(v5 + 32) = 0uLL;
      *(v5 + 48) = 0uLL;
      *v5 = 0uLL;
      *(v5 + 16) = 0uLL;
      *(v5 + 36) = 1065353216;
      *(v5 + 248) = v5 + 280;
      *(v5 + 256) = v5 + 280;
      *(v5 + 264) = v5 + 280;
      *(v5 + 272) = 2;
    }
  }

  else
  {
    i = v4 + 288 * a2;
    if (i != v5)
    {
      v8 = v4 + 288 * a2;
      do
      {
        v9 = *(v8 + 248);
        if (v9 != *(v8 + 264))
        {
          free(v9);
        }

        v8 += 288;
      }

      while (v8 != v5);
    }
  }

  a1[1] = i;
}

float geo::RigidTransform<double,float>::operator*(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 + 24;
  gm::Quaternion<float>::operator*(&v16, a2 + 24, a3 + 24);
  for (i = 0; i != 3; ++i)
  {
    *&v14[i] = *(v6 + 4 * i);
  }

  *&v14[3] = *(a2 + 36);
  v8 = gm::Quaternion<double>::operator*(v14, a3);
  v9 = 0;
  *v15 = v8;
  v15[1] = v10;
  v15[2] = v11;
  do
  {
    *(&v19 + v9 * 8) = *&v15[v9] + *(a2 + v9 * 8);
    ++v9;
  }

  while (v9 != 3);
  v12 = v20;
  *a1 = v19;
  *(a1 + 16) = v12;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  result = v18;
  *(a1 + 36) = v18;
  return result;
}

void sub_1B32C7854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::findNearestPointForPIP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = (a2 - a1) >> 3;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  do
  {
    if (*(a3 + 8 * v4) < *(a3 + 8 * v3))
    {
      v3 = v4;
    }

    ++v4;
  }

  while (v5 != v4);
  v6 = 0;
  v7 = fmax(sqrt(*(a3 + 8 * v3)) * 1.2, 1.0);
  v8 = v7 * v7;
  v9 = v3;
  do
  {
    if (*(a3 + 8 * v6) <= v8)
    {
      v10 = *(*(a1 + 8 * v6) + 80);
      if (v10 > *(*(a1 + 8 * v9) + 80) && (v10 - *(*(a1 + 8 * v3) + 80)) > 0x240C8400)
      {
        v9 = v6;
      }
    }

    ++v6;
  }

  while (v5 != v6);
  return *(a1 + 8 * v9);
}

void sub_1B32C7CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, void *a29)
{
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(a29);
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v33 - 160);

  _Unwind_Resume(a1);
}

void sub_1B32C80B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(v30 - 112));
  _Unwind_Resume(a1);
}

void sub_1B32C884C(_Unwind_Exception *a1)
{
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&STACK[0xF38]);

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::UnitsPerMeter const&,md::ls::InView const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::ita::ProcessRenderableForStyleGroundOcclusion::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::UnitsPerMeter const&,md::ls::InView const&>)::$_0,std::allocator<md::ita::ProcessRenderableForStyleGroundOcclusion::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::UnitsPerMeter const&,md::ls::InView const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::UnitsPerMeter const&,md::ls::InView const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v5 = (fmaxf((**(a1 + 24) * 0.125) + -0.875, 0.0) * (**(a1 + 16) * *(a3 + 8)));
  result = gdc::Camera::cameraFrame(**(a1 + 8));
  v7 = fmax(*(result + 24) * 0.5, 250.0) * v5;
  if (v7 < 0.001)
  {
    return result;
  }

  v128 = v7;
  v8.f32[0] = v7;
  v8.i32[1] = **(a1 + 32);
  v9 = vcvt_s32_f32(vmul_f32(v8, vdup_n_s32(0x447A0000u)));
  v10 = **(a1 + 40);
  v11 = v9.i32[0];
  v129 = v9;
  v12 = v9.i32[1];
  v13 = std::__hash_table<std::__hash_value_type<md::StyleGroundOcclusionCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>>,std::__unordered_map_hasher<md::StyleGroundOcclusionCacheKey,std::__hash_value_type<md::StyleGroundOcclusionCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>>,md::StyleGroundOcclusionCacheKeyHasher,std::equal_to<md::StyleGroundOcclusionCacheKey>,true>,std::__unordered_map_equal<md::StyleGroundOcclusionCacheKey,std::__hash_value_type<md::StyleGroundOcclusionCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>>,std::equal_to<md::StyleGroundOcclusionCacheKey>,md::StyleGroundOcclusionCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleGroundOcclusionCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleGroundOcclusion>>>>>::find<md::StyleGroundOcclusionCacheKey>((v10 + 11496), v9.i32[0], v9.i32[1]);
  if (v13)
  {
    v14 = v13[3];
    if (v14)
    {
      v15 = *v4;
      v16 = ecs2::ExecutionTaskContext::currentEntity(v13);

      return ecs2::addComponent<md::ls::StyleGroundOcclusionConstantDataHandle>(v15, v16, v14);
    }
  }

  v127 = v4;
  v130 = 0uLL;
  v131 = 0;
  v133 = 0;
  v17 = *(v10 + 11360);
  v18 = *(v10 + 11376);
  if (*(v10 + 11352) == v17)
  {
    v19 = ((*(v10 + 11384) - v18) >> 3) | 0x100000000;
    v134 = v19;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v10 + 11376, &v134);
  }

  else
  {
    v19 = *(v18 + 8 * *(v17 - 8));
    *(v10 + 11360) = v17 - 8;
  }

  v134 = v19;
  v20 = v19 >> 6;
  v21 = *(v10 + 11160);
  v22 = *(v10 + 11152);
  if (v20 >= (v21 - v22) >> 3)
  {
    v23 = v20 + 1;
    v24 = v20 + 1 - ((v21 - v22) >> 3);
    v25 = *(v10 + 11168);
    if (v24 > (v25 - v21) >> 3)
    {
      v26 = v25 - v22;
      if (v26 >> 2 > v23)
      {
        v23 = v26 >> 2;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        v27 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v23;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v27);
    }

    bzero(*(v10 + 11160), 8 * v24);
    *(v10 + 11160) = v21 + 8 * v24;
    v22 = *(v10 + 11152);
  }

  v28 = *(v22 + 8 * v20);
  if (!v28)
  {
    operator new();
  }

  v29 = (v28 + 16 * (v19 & 0x3F));
  if (*v29 == -1 && v29[1] == 0)
  {
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](v10 + 11176, &v134);
    v31 = ((*(v10 + 11184) - *(v10 + 11176)) >> 3) - 1;
    *v29 = HIDWORD(v19);
    v29[1] = v31;
    v32 = v31 & 0x3F;
    v33 = (*(*(v10 + 11200) + 8 * ecs2::pool<md::Counter,64ul>::page_at_index((v10 + 11200), v31)) + 24 * v32);
    *v33 = vdupq_n_s64(1uLL);
    v33[1].i16[0] = 1;
    v34 = v31 >> 6;
    v35 = *(v10 + 11256);
    v36 = *(v10 + 11248);
    v125 = v32;
    v126 = v31 >> 6;
    if (v31 >> 6 >= (v35 - v36) >> 3)
    {
      v123 = v35 - v36;
      v37 = v34 + 1;
      v38 = v34 + 1 - ((v35 - v36) >> 3);
      v39 = *(v10 + 11264);
      if (v38 > (v39 - v35) >> 3)
      {
        v40 = v39 - v36;
        v41 = (v39 - v36) >> 2;
        if (v41 <= v37)
        {
          v41 = v34 + 1;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFF8)
        {
          v42 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v41;
        }

        if (!(v42 >> 61))
        {
          operator new();
        }

        goto LABEL_153;
      }

      v43 = 0;
      v44 = (v38 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v45 = vdupq_n_s64(v44);
      do
      {
        v46 = vmovn_s64(vcgeq_u64(v45, vorrq_s8(vdupq_n_s64(v43), xmmword_1B33B0560)));
        if (v46.i8[0])
        {
          *(v35 + 8 * v43) = 0;
        }

        if (v46.i8[4])
        {
          *(v35 + 8 * v43 + 8) = 0;
        }

        v43 += 2;
      }

      while (v44 - ((v38 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v43);
      *(v10 + 11256) = v35 + 8 * v38;
      v47 = *(v10 + 11280);
      v48 = *(v10 + 11272);
      v49 = (v47 - v48) >> 4;
      if (v49 <= v34)
      {
        v50 = v37 - v49;
        v51 = *(v10 + 11288);
        if (v50 > (v51 - v47) >> 4)
        {
          v52 = v51 - v48;
          v53 = v52 >> 3;
          if (v52 >> 3 <= v37)
          {
            v53 = v37;
          }

          if (v52 >= 0x7FFFFFFFFFFFFFF0)
          {
            v54 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v54 = v53;
          }

          if (!(v54 >> 60))
          {
            operator new();
          }

          goto LABEL_153;
        }

        bzero(*(v10 + 11280), 16 * v50);
        *(v10 + 11280) = v47 + 16 * v50;
        v34 = v126;
      }

      else if (v37 < v49)
      {
        *(v10 + 11280) = v48 + 16 * v37;
      }

      v36 = *(v10 + 11248);
      v32 = v125;
      if (v123 < *(v10 + 11256) - v36)
      {
        operator new();
      }
    }

    v55 = *(v36 + 8 * v34) + 24 * v32;
    *v55 = v130;
    *(v55 + 16) = v131;
    *(&v130 + 1) = 0;
    v131 = 0;
    v56 = *(v10 + 11304);
    v57 = *(v10 + 11296);
    if (v34 < (v56 - v57) >> 3)
    {
LABEL_84:
      *(*(v57 + 8 * v34) + 8 * v32) = v133;
      goto LABEL_85;
    }

    v124 = v56 - v57;
    v58 = v34 + 1;
    v59 = v34 + 1 - ((v56 - v57) >> 3);
    v60 = *(v10 + 11312);
    if (v59 > (v60 - v56) >> 3)
    {
      v61 = v60 - v57;
      v62 = (v60 - v57) >> 2;
      if (v62 <= v58)
      {
        v62 = v34 + 1;
      }

      if (v61 >= 0x7FFFFFFFFFFFFFF8)
      {
        v63 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v63 = v62;
      }

      if (!(v63 >> 61))
      {
        operator new();
      }

      goto LABEL_153;
    }

    v64 = 0;
    v65 = (v59 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v66 = vdupq_n_s64(v65);
    do
    {
      v67 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(vdupq_n_s64(v64), xmmword_1B33B0560)));
      if (v67.i8[0])
      {
        *(v56 + 8 * v64) = 0;
      }

      if (v67.i8[4])
      {
        *(v56 + 8 * v64 + 8) = 0;
      }

      v64 += 2;
    }

    while (v65 - ((v59 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v64);
    *(v10 + 11304) = v56 + 8 * v59;
    v68 = *(v10 + 11328);
    v69 = *(v10 + 11320);
    v70 = (v68 - v69) >> 4;
    if (v70 > v34)
    {
      if (v58 < v70)
      {
        *(v10 + 11328) = v69 + 16 * v58;
      }

      goto LABEL_82;
    }

    v71 = v58 - v70;
    v72 = *(v10 + 11336);
    if (v71 <= (v72 - v68) >> 4)
    {
      bzero(*(v10 + 11328), 16 * v71);
      *(v10 + 11328) = v68 + 16 * v71;
      v34 = v126;
LABEL_82:
      v57 = *(v10 + 11296);
      v32 = v125;
      if (v124 < *(v10 + 11304) - v57)
      {
        operator new();
      }

      goto LABEL_84;
    }

    v73 = v72 - v69;
    v74 = v73 >> 3;
    if (v73 >> 3 <= v58)
    {
      v74 = v58;
    }

    if (v73 >= 0x7FFFFFFFFFFFFFF0)
    {
      v75 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v75 = v74;
    }

    if (!(v75 >> 60))
    {
      operator new();
    }

LABEL_153:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_85:
  v76 = v11 - 0x61C8864680B583EBLL;
  v77 = (v76 << 6) + v12 + (v76 >> 2);
  v78 = (v77 - 0x61C8864680B583EBLL) ^ v76;
  v79 = *(v10 + 11504);
  if (!*&v79)
  {
    goto LABEL_106;
  }

  v80 = vcnt_s8(v79);
  v80.i16[0] = vaddlv_u8(v80);
  if (v80.u32[0] > 1uLL)
  {
    v81 = (v77 - 0x61C8864680B583EBLL) ^ v76;
    if (v78 >= *&v79)
    {
      v81 = v78 % *&v79;
    }
  }

  else
  {
    v81 = v78 & (*&v79 - 1);
  }

  v82 = *(*(v10 + 11496) + 8 * v81);
  if (!v82 || (v83 = *v82) == 0)
  {
LABEL_106:
    operator new();
  }

  while (1)
  {
    v84 = v83[1];
    if (v84 == v78)
    {
      break;
    }

    if (v80.u32[0] > 1uLL)
    {
      if (v84 >= *&v79)
      {
        v84 %= *&v79;
      }
    }

    else
    {
      v84 &= *&v79 - 1;
    }

    if (v84 != v81)
    {
      goto LABEL_106;
    }

LABEL_105:
    v83 = *v83;
    if (!v83)
    {
      goto LABEL_106;
    }
  }

  if (*(v83 + 4) != v11 || *(v83 + 5) != v12)
  {
    goto LABEL_105;
  }

  v83[3] = v19;
  v86 = *(v10 + 11544);
  if (!*&v86)
  {
    goto LABEL_124;
  }

  v87 = vcnt_s8(v86);
  v87.i16[0] = vaddlv_u8(v87);
  if (v87.u32[0] > 1uLL)
  {
    v88 = v19;
    if (v19 >= *&v86)
    {
      v88 = v19 % *&v86;
    }
  }

  else
  {
    v88 = (*&v86 - 1) & v19;
  }

  v89 = *(*(v10 + 11536) + 8 * v88);
  if (!v89 || (v90 = *v89) == 0)
  {
LABEL_124:
    operator new();
  }

  while (2)
  {
    v91 = v90[1];
    if (v91 != v19)
    {
      if (v87.u32[0] > 1uLL)
      {
        if (v91 >= *&v86)
        {
          v91 %= *&v86;
        }
      }

      else
      {
        v91 &= *&v86 - 1;
      }

      if (v91 != v88)
      {
        goto LABEL_124;
      }

      goto LABEL_123;
    }

    if (v90[2] != v19)
    {
LABEL_123:
      v90 = *v90;
      if (!v90)
      {
        goto LABEL_124;
      }

      continue;
    }

    break;
  }

  v90[3] = v129;
  if (v131)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v131);
  }

  v92 = **(a1 + 40);
  v93 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v92 + 1393, v19);
  if (v93 == v92[1398])
  {
    v94 = 0;
    goto LABEL_151;
  }

  v95 = v93;
  v96 = v92[1397];
  v97 = v92[1431];
  if (v92[1430] == v97)
  {
    v98 = v92[1436];
    if (!v98)
    {
      v122 = std::__throw_bad_function_call[abi:nn200100]();
      operator delete(*&v86);
      _Unwind_Resume(v122);
    }

    v94 = (*(*v98 + 48))(v98);
  }

  else
  {
    v94 = *(v97 - 8);
    v92[1431] = v97 - 8;
  }

  v99 = 0x9DDFEA08EB382D69 * ((8 * (v94 & 0x1FFFFFFF) + 8) ^ HIDWORD(v94));
  v100 = 0x9DDFEA08EB382D69 * (HIDWORD(v94) ^ (v99 >> 47) ^ v99);
  v101 = 0x9DDFEA08EB382D69 * (v100 ^ (v100 >> 47));
  v102 = v92[1426];
  if (!*&v102)
  {
    goto LABEL_150;
  }

  v103 = vcnt_s8(v102);
  v103.i16[0] = vaddlv_u8(v103);
  if (v103.u32[0] > 1uLL)
  {
    v104 = 0x9DDFEA08EB382D69 * (v100 ^ (v100 >> 47));
    if (v101 >= *&v102)
    {
      v104 = v101 % *&v102;
    }
  }

  else
  {
    v104 = v101 & (*&v102 - 1);
  }

  v105 = *(v92[1425] + 8 * v104);
  if (!v105 || (v106 = *v105) == 0)
  {
LABEL_150:
    operator new();
  }

  while (2)
  {
    v107 = v106[1];
    if (v107 != v101)
    {
      if (v103.u32[0] > 1uLL)
      {
        if (v107 >= *&v102)
        {
          v107 %= *&v102;
        }
      }

      else
      {
        v107 &= *&v102 - 1;
      }

      if (v107 != v104)
      {
        goto LABEL_150;
      }

      goto LABEL_149;
    }

    if (v106[2] != v94)
    {
LABEL_149:
      v106 = *v106;
      if (!v106)
      {
        goto LABEL_150;
      }

      continue;
    }

    break;
  }

  v108 = (((v95 - v96) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v109 = *(v92[1400] + v108);
  v110 = ((v95 - v96) >> 3) & 0x3F;
  v111 = *(v92[1406] + v108);
  v112 = *(v92[1412] + v108);
  *(v111 + 24 * v110) = v94;
  ++*(v109 + 24 * v110);
  *(v112 + 8 * v110) = v94;
LABEL_151:
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v130, v94);
  _S0 = v128;
  __asm { FCVT            H0, S0 }

  _S1 = **(a1 + 32);
  __asm { FCVT            H1, S1 }

  v118 = v132;
  *v132 = LOWORD(_S0);
  v118[1] = _S1;
  ggl::BufferMemory::~BufferMemory(&v130);
  v119 = *v127;
  v121 = ecs2::ExecutionTaskContext::currentEntity(v120);
  return ecs2::addComponent<md::ls::StyleGroundOcclusionConstantDataHandle>(v119, v121, v19);
}

__n128 std::__function::__func<md::ita::ProcessRenderableForStyleGroundOcclusion::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::UnitsPerMeter const&,md::ls::InView const&>)::$_0,std::allocator<md::ita::ProcessRenderableForStyleGroundOcclusion::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::UnitsPerMeter const&,md::ls::InView const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::UnitsPerMeter const&,md::ls::InView const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A56170;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::ARBuildingTileData *,double>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

double *std::__introsort<std::_ClassicAlgPolicy,md::ARWorldIntersector::intersectBuildings(gm::LineSegment<double,3> const&)::$_0 &,std::pair<md::ARBuildingTileData *,double> *,false>(double *result, double *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v81 = *(a2 - 1);
        v82 = v8[1];
        if (v81 < v82)
        {
          v83 = *v8;
          *v8 = *(a2 - 2);
          *(a2 - 2) = v83;
          v8[1] = v81;
          *(a2 - 1) = v82;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v88 = v8 + 3;
      v89 = v8[3];
      v90 = v8 + 1;
      v91 = v8[1];
      v92 = v8[5];
      if (v89 >= v91)
      {
        if (v92 < v89)
        {
          v139 = *(v8 + 2);
          v140 = *(v8 + 4);
          *(v8 + 2) = v140;
          *(v8 + 4) = v139;
          v8[3] = v92;
          v8[5] = v89;
          if (v92 < v91)
          {
            v141 = *v8;
            *v8 = v140;
            *(v8 + 2) = v141;
            goto LABEL_188;
          }

LABEL_189:
          v92 = v89;
        }
      }

      else
      {
        v93 = *v8;
        if (v92 < v89)
        {
          *v8 = v8[4];
          *(v8 + 4) = v93;
          goto LABEL_187;
        }

        *v8 = v8[2];
        *(v8 + 2) = v93;
        v8[1] = v89;
        v8[3] = v91;
        if (v92 < v91)
        {
          v8[2] = v8[4];
          *(v8 + 4) = v93;
          v90 = v8 + 3;
LABEL_187:
          v88 = v8 + 5;
          v89 = v91;
LABEL_188:
          *v90 = v92;
          *v88 = v91;
          goto LABEL_189;
        }
      }

      v149 = *(a2 - 1);
      if (v149 >= v92)
      {
        return result;
      }

      v150 = *(v8 + 4);
      v8[4] = *(a2 - 2);
      *(a2 - 2) = v150;
      v8[5] = v149;
      *(a2 - 1) = v92;
      v136 = v8[5];
      v151 = v8[3];
      if (v136 >= v151)
      {
        return result;
      }

      v152 = *(v8 + 2);
      v153 = *(v8 + 4);
      *(v8 + 2) = v153;
      *(v8 + 4) = v152;
      v8[3] = v136;
      v8[5] = v151;
      v137 = v8[1];
      if (v136 >= v137)
      {
        return result;
      }

      v154 = *v8;
      *v8 = v153;
      *(v8 + 2) = v154;
LABEL_194:
      v8[1] = v136;
      v8[3] = v137;
      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWorldIntersector::intersectBuildings(gm::LineSegment<double,3> const&)::$_0 &,std::pair<md::ARBuildingTileData *,double> *,0>(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 2;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v99 = v98[3];
            v100 = v98[1];
            v98 = v94;
            if (v99 < v100)
            {
              v101 = *v94;
              v102 = v97;
              while (1)
              {
                v103 = (v8 + v102);
                v103[2] = *(v8 + v102);
                v103[3] = *(v8 + v102 + 8);
                if (!v102)
                {
                  break;
                }

                v102 -= 16;
                if (v99 >= *(v103 - 1))
                {
                  v104 = v8 + v102 + 16;
                  goto LABEL_131;
                }
              }

              v104 = v8;
LABEL_131:
              *v104 = v101;
              *(v104 + 8) = v99;
            }

            v94 = v98 + 2;
            v97 += 16;
          }

          while (v98 + 2 != a2);
        }
      }

      else if (!v96)
      {
        v142 = v8 + 1;
        do
        {
          v143 = v7[3];
          v144 = v7[1];
          v7 = v94;
          if (v143 < v144)
          {
            v145 = *v94;
            v146 = v142;
            do
            {
              v146[1] = *(v146 - 1);
              v146[2] = *v146;
              v147 = *(v146 - 2);
              v146 -= 2;
            }

            while (v143 < v147);
            v146[1] = v145;
            v146[2] = v143;
          }

          v94 = v7 + 2;
          v142 += 2;
        }

        while (v7 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v105 = (v9 - 2) >> 1;
      v106 = v105;
      do
      {
        v107 = v106;
        if (v105 >= v106)
        {
          v108 = (2 * v106) | 1;
          v109 = &v8[2 * v108];
          if (2 * v107 + 2 < v9 && v109[1] < v109[3])
          {
            v109 += 2;
            v108 = 2 * v107 + 2;
          }

          v110 = &v8[2 * v107];
          v111 = v109[1];
          v112 = v110[1];
          if (v111 >= v112)
          {
            v113 = *v110;
            do
            {
              v114 = v110;
              v110 = v109;
              *v114 = *v109;
              v114[1] = v111;
              if (v105 < v108)
              {
                break;
              }

              v115 = 2 * v108;
              v108 = (2 * v108) | 1;
              v109 = &v8[2 * v108];
              v116 = v115 + 2;
              if (v116 < v9 && v109[1] < v109[3])
              {
                v109 += 2;
                v108 = v116;
              }

              v111 = v109[1];
            }

            while (v111 >= v112);
            *v110 = v113;
            v110[1] = v112;
          }
        }

        v106 = v107 - 1;
      }

      while (v107);
      while (2)
      {
        v117 = 0;
        v118 = *v8;
        v119 = v8[1];
        v120 = v8;
        do
        {
          v121 = &v120[2 * v117];
          v122 = v121 + 2;
          v123 = (2 * v117) | 1;
          v117 = 2 * v117 + 2;
          if (v117 >= v9)
          {
            v117 = v123;
          }

          else
          {
            v124 = v121[3];
            v125 = v121[5];
            v126 = v121 + 4;
            if (v124 >= v125)
            {
              v117 = v123;
            }

            else
            {
              v122 = v126;
            }
          }

          *v120 = *v122;
          v120[1] = v122[1];
          v120 = v122;
        }

        while (v117 <= ((v9 - 2) >> 1));
        if (v122 != a2 - 2)
        {
          *v122 = *(a2 - 2);
          v122[1] = *(a2 - 1);
          *(a2 - 2) = v118;
          *(a2 - 1) = v119;
          v127 = (v122 - v8 + 16) >> 4;
          v128 = v127 < 2;
          v129 = v127 - 2;
          if (!v128)
          {
            v130 = v129 >> 1;
            v131 = &v8[2 * v130];
            v132 = v131[1];
            v119 = v122[1];
            if (v132 < v119)
            {
              v133 = *v122;
              do
              {
                v134 = v122;
                v122 = v131;
                *v134 = *v131;
                v134[1] = v132;
                if (!v130)
                {
                  break;
                }

                v130 = (v130 - 1) >> 1;
                v131 = &v8[2 * v130];
                v132 = v131[1];
              }

              while (v132 < v119);
              *v122 = v133;
LABEL_164:
              v122[1] = v119;
            }
          }

          a2 -= 2;
          v128 = v9-- <= 2;
          if (v128)
          {
            return result;
          }

          continue;
        }

        break;
      }

      *v122 = v118;
      goto LABEL_164;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = v10[1];
      v13 = v8[1];
      if (v12 >= v13)
      {
        if (v11 < v12)
        {
          v18 = *v10;
          *v10 = *(a2 - 2);
          *(a2 - 2) = v18;
          v10[1] = v11;
          *(a2 - 1) = v12;
          v19 = v10[1];
          v20 = v8[1];
          if (v19 < v20)
          {
            v21 = *v8;
            *v8 = *v10;
            *v10 = v21;
            v8[1] = v19;
            v10[1] = v20;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v11 < v12)
        {
          *v8 = *(a2 - 2);
          *(a2 - 2) = v14;
          v8[1] = v11;
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        v8[1] = v12;
        v10[1] = v13;
        v26 = *(a2 - 1);
        if (v26 < v13)
        {
          *v10 = *(a2 - 2);
          *(a2 - 2) = v14;
          v10[1] = v26;
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v27 = v10 - 2;
      v28 = *(v10 - 1);
      v29 = v8[3];
      v30 = *(a2 - 3);
      if (v28 >= v29)
      {
        if (v30 < v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 4);
          *(a2 - 4) = v32;
          *(v10 - 1) = v30;
          *(a2 - 3) = v28;
          v33 = *(v10 - 1);
          v34 = v8[3];
          if (v33 < v34)
          {
            v35 = *(v8 + 2);
            v8[2] = *v27;
            *v27 = v35;
            v8[3] = v33;
            *(v10 - 1) = v34;
          }
        }
      }

      else
      {
        v31 = *(v8 + 2);
        if (v30 < v28)
        {
          v8[2] = *(a2 - 4);
          *(a2 - 4) = v31;
          v8[3] = v30;
          goto LABEL_39;
        }

        v8[2] = *v27;
        *v27 = v31;
        v8[3] = v28;
        *(v10 - 1) = v29;
        v37 = *(a2 - 3);
        if (v37 < v29)
        {
          *v27 = *(a2 - 4);
          *(a2 - 4) = v31;
          *(v10 - 1) = v37;
LABEL_39:
          *(a2 - 3) = v29;
        }
      }

      v38 = v10[3];
      v39 = v8[5];
      v40 = *(a2 - 5);
      if (v38 >= v39)
      {
        if (v40 < v38)
        {
          v42 = *(v10 + 2);
          v10[2] = *(a2 - 6);
          *(a2 - 6) = v42;
          v10[3] = v40;
          *(a2 - 5) = v38;
          v43 = v10[3];
          v44 = v8[5];
          if (v43 < v44)
          {
            v45 = *(v8 + 4);
            v8[4] = v10[2];
            *(v10 + 2) = v45;
            v8[5] = v43;
            v10[3] = v44;
          }
        }
      }

      else
      {
        v41 = *(v8 + 4);
        if (v40 < v38)
        {
          v8[4] = *(a2 - 6);
          *(a2 - 6) = v41;
          v8[5] = v40;
          goto LABEL_48;
        }

        v8[4] = v10[2];
        *(v10 + 2) = v41;
        v8[5] = v38;
        v10[3] = v39;
        v46 = *(a2 - 5);
        if (v46 < v39)
        {
          v10[2] = *(a2 - 6);
          *(a2 - 6) = v41;
          v10[3] = v46;
LABEL_48:
          *(a2 - 5) = v39;
        }
      }

      v47 = v10[1];
      v48 = *(v10 - 1);
      v49 = v10[3];
      if (v47 >= v48)
      {
        v50 = *v10;
        if (v49 >= v47)
        {
LABEL_55:
          v48 = v47;
        }

        else
        {
          v51 = v10[2];
          *v10 = v51;
          v10[2] = v50;
          v10[1] = v49;
          v10[3] = v47;
          if (v49 >= v48)
          {
            v48 = v49;
            v50 = v51;
          }

          else
          {
            v50 = *v27;
            *v27 = v51;
            *v10 = v50;
            *(v10 - 1) = v49;
            v10[1] = v48;
          }
        }
      }

      else
      {
        v50 = *v27;
        if (v49 < v47)
        {
          *v27 = v10[2];
          v10[2] = v50;
          *(v10 - 1) = v49;
          v10[3] = v48;
          v50 = *v10;
          goto LABEL_55;
        }

        *v27 = *v10;
        *v10 = v50;
        *(v10 - 1) = v47;
        v10[1] = v48;
        if (v49 < v48)
        {
          v69 = v10[2];
          *v10 = v69;
          v10[2] = v50;
          v10[1] = v49;
          v10[3] = v48;
          v48 = v49;
          v50 = v69;
        }
      }

      v52 = *v8;
      *v8 = v50;
      *v10 = v52;
      v53 = *(v8 + 1);
      v8[1] = v48;
      *(v10 + 1) = v53;
      goto LABEL_57;
    }

    v15 = v8[1];
    v16 = v10[1];
    if (v15 >= v16)
    {
      if (v11 < v15)
      {
        v22 = *v8;
        *v8 = *(a2 - 2);
        *(a2 - 2) = v22;
        v8[1] = v11;
        *(a2 - 1) = v15;
        v23 = v8[1];
        v24 = v10[1];
        if (v23 < v24)
        {
          v25 = *v10;
          *v10 = *v8;
          *v8 = v25;
          v10[1] = v23;
          v8[1] = v24;
        }
      }

      goto LABEL_57;
    }

    v17 = *v10;
    if (v11 < v15)
    {
      *v10 = *(a2 - 2);
      *(a2 - 2) = v17;
      v10[1] = v11;
LABEL_36:
      *(a2 - 1) = v16;
      goto LABEL_57;
    }

    *v10 = *v8;
    *v8 = v17;
    v10[1] = v15;
    v8[1] = v16;
    v36 = *(a2 - 1);
    if (v36 < v16)
    {
      *v8 = *(a2 - 2);
      *(a2 - 2) = v17;
      v8[1] = v36;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    if (a4)
    {
      v54 = *v8;
      v55 = v8[1];
LABEL_60:
      v56 = v8;
      do
      {
        v57 = v56;
        v56 += 2;
      }

      while (v57[3] < v55);
      v58 = a2;
      if (v57 == v8)
      {
        v61 = a2;
        while (v56 < v61)
        {
          v59 = v61 - 2;
          v62 = *(v61 - 1);
          v61 -= 2;
          if (v62 < v55)
          {
            goto LABEL_70;
          }
        }

        v59 = v61;
      }

      else
      {
        do
        {
          v59 = v58 - 2;
          v60 = *(v58 - 1);
          v58 -= 2;
        }

        while (v60 >= v55);
      }

LABEL_70:
      v8 = v56;
      if (v56 < v59)
      {
        v63 = v59;
        do
        {
          v64 = *v8;
          *v8 = *v63;
          *v63 = v64;
          v65 = *(v8 + 1);
          v8[1] = v63[1];
          *(v63 + 1) = v65;
          do
          {
            v66 = v8[3];
            v8 += 2;
          }

          while (v66 < v55);
          do
          {
            v67 = *(v63 - 1);
            v63 -= 2;
          }

          while (v67 >= v55);
        }

        while (v8 < v63);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      *(v8 - 2) = v54;
      *(v8 - 1) = v55;
      if (v56 < v59)
      {
        goto LABEL_81;
      }

      v68 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWorldIntersector::intersectBuildings(gm::LineSegment<double,3> const&)::$_0 &,std::pair<md::ARBuildingTileData *,double> *>(v7, v8 - 2);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWorldIntersector::intersectBuildings(gm::LineSegment<double,3> const&)::$_0 &,std::pair<md::ARBuildingTileData *,double> *>(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (v68)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v68)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,md::ARWorldIntersector::intersectBuildings(gm::LineSegment<double,3> const&)::$_0 &,std::pair<md::ARBuildingTileData *,double> *,false>(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v55 = v8[1];
      v54 = *v8;
      if (*(v8 - 1) < v55)
      {
        goto LABEL_60;
      }

      if (v55 >= *(a2 - 1))
      {
        v72 = v8 + 2;
        do
        {
          v8 = v72;
          if (v72 >= a2)
          {
            break;
          }

          v73 = v72[1];
          v72 += 2;
        }

        while (v55 >= v73);
      }

      else
      {
        v70 = v8;
        do
        {
          v8 = v70 + 2;
          v71 = v70[3];
          v70 += 2;
        }

        while (v55 >= v71);
      }

      v74 = a2;
      if (v8 < a2)
      {
        v75 = a2;
        do
        {
          v74 = v75 - 2;
          v76 = *(v75 - 1);
          v75 -= 2;
        }

        while (v55 < v76);
      }

      while (v8 < v74)
      {
        v77 = *v8;
        *v8 = *v74;
        *v74 = v77;
        v78 = *(v8 + 1);
        v8[1] = v74[1];
        *(v74 + 1) = v78;
        do
        {
          v79 = v8[3];
          v8 += 2;
        }

        while (v55 >= v79);
        do
        {
          v80 = *(v74 - 1);
          v74 -= 2;
        }

        while (v55 < v80);
      }

      if (v8 - 2 != v7)
      {
        *v7 = *(v8 - 2);
        v7[1] = *(v8 - 1);
      }

      a4 = 0;
      *(v8 - 2) = v54;
      *(v8 - 1) = v55;
    }
  }

  v84 = v8[3];
  v85 = v8[1];
  v86 = *(a2 - 1);
  if (v84 >= v85)
  {
    if (v86 >= v84)
    {
      return result;
    }

    v135 = *(v8 + 2);
    v8[2] = *(a2 - 2);
    *(a2 - 2) = v135;
    v8[3] = v86;
    *(a2 - 1) = v84;
    v136 = v8[3];
    v137 = v8[1];
    if (v136 >= v137)
    {
      return result;
    }

    v138 = *v8;
    *v8 = v8[2];
    v8[2] = v138;
    goto LABEL_194;
  }

  v87 = *v8;
  if (v86 >= v84)
  {
    *v8 = v8[2];
    v8[2] = v87;
    v8[1] = v84;
    v8[3] = v85;
    v148 = *(a2 - 1);
    if (v148 >= v85)
    {
      return result;
    }

    v8[2] = *(a2 - 2);
    *(a2 - 2) = v87;
    v8[3] = v148;
  }

  else
  {
    *v8 = *(a2 - 2);
    *(a2 - 2) = v87;
    v8[1] = v86;
  }

  *(a2 - 1) = v85;
  return result;
}

uint64_t md::ARWorldIntersector::visitReferencedAssetOcclusionVolumes(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!*(a4 + 24))
  {
    return result;
  }

  v5 = result;
  v6 = *(a2 + 792);
  v7 = gdc::Registry::storage<arComponents::AssetDataReference>(v6);
  v8 = gdc::Registry::storage<arComponents::LocalTransform>(v6);
  v9 = v8;
  v10 = v8 + 32;
  v11 = *(v8 + 64) - *(v8 + 56) >= *(v7 + 64) - *(v7 + 56) ? v7 + 32 : v8 + 32;
  gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::RegistryViewIterator(v88, v11, v7 + 32, v10, *(v11 + 24));
  v12 = *(v9 + 64) - *(v9 + 56) >= *(v7 + 64) - *(v7 + 56) ? v7 + 32 : v10;
  result = gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::RegistryViewIterator(v86, v12, v7 + 32, v10, *(v12 + 32));
  v13 = v89;
  if (v87 == v89)
  {
    return result;
  }

  v14 = v5 + 4;
  v70 = a4;
  while (2)
  {
    v15 = *v13;
    v16 = gdc::Registry::storage<arComponents::AssetDataReference>(v6);
    result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v16 + 4, HIDWORD(v15));
    if (v16[8] == result)
    {
      goto LABEL_92;
    }

    v17 = v16[10];
    v18 = (v17 + 40 * ((result - v16[7]) >> 3));
    if (v18 == v16[11] || v17 == 0)
    {
      goto LABEL_92;
    }

    v20 = *v14;
    if (!*v14)
    {
      goto LABEL_92;
    }

    v21 = *v18;
    v22 = v5 + 4;
    do
    {
      v23 = v20[4];
      v24 = v23 >= v21;
      v25 = v23 < v21;
      if (v24)
      {
        v22 = v20;
      }

      v20 = v20[v25];
    }

    while (v20);
    if (v22 == v14)
    {
      goto LABEL_92;
    }

    if (v21 < *&v22[4])
    {
      goto LABEL_92;
    }

    v72 = v22[5];
    if (*(v18 + 32) == 1)
    {
      result = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a3, v18[3]);
      if ((result & 1) == 0)
      {
        goto LABEL_92;
      }
    }

    v26 = gdc::Registry::storage<arComponents::LocalTransform>(v6);
    v27 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v26 + 4, HIDWORD(v15));
    if (v26[8] == v27)
    {
      v28 = v26[11];
    }

    else
    {
      v28 = v26[10] + 48 * ((v27 - v26[7]) >> 3);
    }

    v29 = 0;
    if (v28 == v26[11])
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    v31 = v81;
    do
    {
      v32 = 0;
      v33 = v31;
      do
      {
        *v33 = *(v30 + v32);
        v33 += 4;
        v32 += 12;
      }

      while (v32 != 48);
      ++v29;
      v31 += 4;
      v30 += 4;
    }

    while (v29 != 3);
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 1065353216;
    v34 = v5[7];
    if (!*&v34)
    {
      goto LABEL_68;
    }

    v35 = vcnt_s8(v34);
    v35.i16[0] = vaddlv_u8(v35);
    if (v35.u32[0] > 1uLL)
    {
      v36 = v15;
      if (v15 >= *&v34)
      {
        v36 = v15 % *&v34;
      }
    }

    else
    {
      v36 = (*&v34 - 1) & v15;
    }

    v37 = *(*&v5[6] + 8 * v36);
    if (v37)
    {
      for (i = *v37; i; i = *i)
      {
        v39 = i[1];
        if (v39 == v15)
        {
          if (__PAIR64__(*(i + 9), *(i + 8)) == __PAIR64__(WORD1(v15), v15) && *(i + 5) == HIDWORD(v15))
          {
            v69 = i + 3;
            goto LABEL_90;
          }
        }

        else
        {
          if (v35.u32[0] > 1uLL)
          {
            if (v39 >= *&v34)
            {
              v39 %= *&v34;
            }
          }

          else
          {
            v39 &= *&v34 - 1;
          }

          if (v39 != v36)
          {
            break;
          }
        }
      }
    }

    if (v35.u32[0] > 1uLL)
    {
      v40 = v15;
      if (v15 >= *&v34)
      {
        v40 = v15 % *&v34;
      }
    }

    else
    {
      v40 = (*&v34 - 1) & v15;
    }

    v41 = *(*&v5[6] + 8 * v40);
    if (!v41 || (v42 = *v41) == 0)
    {
LABEL_68:
      operator new();
    }

    while (1)
    {
      v43 = v42[1];
      if (v43 == v15)
      {
        break;
      }

      if (v35.u32[0] > 1uLL)
      {
        if (v43 >= *&v34)
        {
          v43 %= *&v34;
        }
      }

      else
      {
        v43 &= *&v34 - 1;
      }

      if (v43 != v40)
      {
        goto LABEL_68;
      }

LABEL_67:
      v42 = *v42;
      if (!v42)
      {
        goto LABEL_68;
      }
    }

    if (__PAIR64__(*(v42 + 9), *(v42 + 8)) != __PAIR64__(WORD1(v15), v15) || *(v42 + 5) != HIDWORD(v15))
    {
      goto LABEL_67;
    }

    v69 = v42 + 3;
    v45 = *(*&v72 + 176);
    v44 = *(*&v72 + 184);
    v46 = 0xAAAAAAAAAAAAAAABLL * (v44 - v45);
    if (0xCF3CF3CF3CF3CF3DLL * ((v42[5] - v42[3]) >> 3) < v46)
    {
      if (v46 <= 0x186186186186186)
      {
        *&v76 = v42 + 3;
        std::__allocate_at_least[abi:nn200100]<std::allocator<arComponents::LocalBounds>>(v46);
      }

LABEL_97:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    while (v45 != v44)
    {
      for (j = 0; j != 104; j += 8)
      {
        *(&v74 + j) = 0xFF7FFFFF7F7FFFFFLL;
      }

      v49 = *v45;
      v48 = v45[1];
      while (v49 != v48)
      {
        v50 = gm::Matrix<float,4,4>::multiplyHomogeneous<int,void>(v81, v49);
        v90 = __PAIR64__(v51, LODWORD(v50));
        LODWORD(v91) = v52;
        geo::DiscreteOrientedPolytope<arComponents::XY26DOPTraits<float>>::enclose(&v74, &v90);
        v49 += 12;
      }

      v53 = v42[4];
      v54 = v42[5];
      if (v53 >= v54)
      {
        v56 = 0xCF3CF3CF3CF3CF3DLL * ((v53 - *v69) >> 3);
        v57 = v56 + 1;
        if (v56 + 1 > 0x186186186186186)
        {
          goto LABEL_97;
        }

        v58 = 0xCF3CF3CF3CF3CF3DLL * ((v54 - *v69) >> 3);
        if (2 * v58 > v57)
        {
          v57 = 2 * v58;
        }

        if (v58 >= 0xC30C30C30C30C3)
        {
          v59 = 0x186186186186186;
        }

        else
        {
          v59 = v57;
        }

        v93 = v42 + 3;
        if (v59)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<arComponents::LocalBounds>>(v59);
        }

        v60 = 168 * v56;
        v90 = 0;
        v91 = v60;
        *(&v92 + 1) = 0;
        *(v60 + 32) = v76;
        *(v60 + 96) = v80;
        *(v60 + 80) = v79;
        *(v60 + 64) = v78;
        *(v60 + 48) = v77;
        *(v60 + 16) = v75;
        *v60 = v74;
        *(v60 + 104) = 0;
        *(v60 + 128) = 0;
        *(v60 + 136) = 0;
        *(v60 + 160) = 0;
        *&v92 = 168 * v56 + 168;
        v61 = v42[3];
        v62 = v42[4];
        v63 = 168 * v56 + v61 - v62;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<arComponents::LocalBounds>,arComponents::LocalBounds*>(v61, v62, v63);
        v64 = v42[3];
        v42[3] = v63;
        v65 = v42[5];
        v73 = v92;
        *(v42 + 2) = v92;
        *&v92 = v64;
        *(&v92 + 1) = v65;
        v90 = v64;
        v91 = v64;
        std::__split_buffer<arComponents::LocalBounds>::~__split_buffer(&v90);
        v55 = v73;
      }

      else
      {
        *(v53 + 48) = v77;
        *(v53 + 64) = v78;
        *(v53 + 80) = v79;
        *(v53 + 96) = v80;
        *v53 = v74;
        *(v53 + 16) = v75;
        *(v53 + 32) = v76;
        *(v53 + 104) = 0;
        *(v53 + 128) = 0;
        *(v53 + 136) = 0;
        *(v53 + 160) = 0;
        v55 = v53 + 168;
      }

      v42[4] = v55;
      v45 += 3;
    }

LABEL_90:
    *&v74 = v72;
    v66 = *(v70 + 24);
    if (!v66)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    result = (*(*v66 + 48))(v66, &v74, v69);
    if (result)
    {
LABEL_92:
      v67 = *(v88[0] + 32);
      v68 = v89 + 1;
      do
      {
        v13 = v68;
        v89 = v68;
        if (v68 == v67)
        {
          break;
        }

        result = gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::isValid(v88);
        v68 = v13 + 1;
      }

      while (!result);
      if (v87 == v13)
      {
        return result;
      }

      continue;
    }

    return result;
  }
}

void sub_1B32CB6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<arComponents::LocalBounds>::__destroy_vector::operator()[abi:nn200100](va);
  operator delete(v8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(md::ARAssetOcclusionMeshData const*,std::vector<arComponents::LocalBounds> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

BOOL std::__function::__func<md::ARWorldIntersector::intersectBuildings(gm::LineSegment<double,3> const&)::$_1,std::allocator<md::ARWorldIntersector::intersectBuildings(gm::LineSegment<double,3> const&)::$_1>,BOOL ()(md::ARAssetOcclusionMeshData const*,std::vector<arComponents::LocalBounds> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    v6 = *(a1 + 8);
    while (1)
    {
      v7 = 0;
      v16 = 0;
      do
      {
        *(&v17 + v7) = *(v6 + v7 + 12) + *(v6 + v7);
        v7 += 4;
      }

      while (v7 != 12);
      v8 = 0;
      v10 = v17;
      v11 = v18;
      do
      {
        *(&v17 + v8) = *(&v10 + v8) - *(v6 + v8);
        v8 += 4;
      }

      while (v8 != 12);
      v12 = *v6;
      v13 = *(v6 + 2);
      v14 = v17;
      v15 = v18;
      geo::DiscreteOrientedPolytope<arComponents::XY26DOPTraits<float>>::planes(&v17, v4);
      if (geo::Intersect::internal::intersection<float,std::array<gm::Plane3<float>,26ul>>(&v17, &v12, 2, &v16 + 1, &v16))
      {
        break;
      }

      v4 += 168;
      if (v4 == v5)
      {
        return (**(a1 + 16) & 1) == 0;
      }
    }

    **(a1 + 16) = 1;
  }

  return (**(a1 + 16) & 1) == 0;
}

__n128 std::__function::__func<md::ARWorldIntersector::intersectBuildings(gm::LineSegment<double,3> const&)::$_1,std::allocator<md::ARWorldIntersector::intersectBuildings(gm::LineSegment<double,3> const&)::$_1>,BOOL ()(md::ARAssetOcclusionMeshData const*,std::vector<arComponents::LocalBounds> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A56360;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWorldIntersector::intersectBuildings(gm::LineSegment<double,3> const&)::$_0 &,std::pair<md::ARBuildingTileData *,double> *,0>(double *result, double *a2, double *a3, double *a4, double *a5)
{
  v5 = a2[1];
  v6 = result[1];
  v7 = a3[1];
  if (v5 >= v6)
  {
    if (v7 >= v5)
    {
      v5 = a3[1];
    }

    else
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      a2[1] = v7;
      a3[1] = v5;
      v10 = a2[1];
      v11 = result[1];
      if (v10 < v11)
      {
        v12 = *result;
        *result = *a2;
        *a2 = v12;
        result[1] = v10;
        a2[1] = v11;
        v5 = a3[1];
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 < v5)
    {
      *result = *a3;
      *a3 = v8;
      result[1] = v7;
LABEL_9:
      a3[1] = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v8;
    result[1] = v5;
    a2[1] = v6;
    v5 = a3[1];
    if (v5 < v6)
    {
      *a2 = *a3;
      *a3 = v8;
      a2[1] = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v13 = a4[1];
  if (v13 < v5)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    a3[1] = v13;
    a4[1] = v5;
    v15 = a3[1];
    v16 = a2[1];
    if (v15 < v16)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      a2[1] = v15;
      a3[1] = v16;
      v18 = a2[1];
      v19 = result[1];
      if (v18 < v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        result[1] = v18;
        a2[1] = v19;
      }
    }
  }

  v21 = a5[1];
  v22 = a4[1];
  if (v21 < v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    a4[1] = v21;
    a5[1] = v22;
    v24 = a4[1];
    v25 = a3[1];
    if (v24 < v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      a3[1] = v24;
      a4[1] = v25;
      v27 = a3[1];
      v28 = a2[1];
      if (v27 < v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        a2[1] = v27;
        a3[1] = v28;
        v30 = a2[1];
        v31 = result[1];
        if (v30 < v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          result[1] = v30;
          a2[1] = v31;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWorldIntersector::intersectBuildings(gm::LineSegment<double,3> const&)::$_0 &,std::pair<md::ARBuildingTileData *,double> *>(double *a1, double *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[3];
      v7 = a1[1];
      v8 = *(a2 - 1);
      if (v6 < v7)
      {
        v9 = *a1;
        if (v8 >= v6)
        {
          *a1 = a1[2];
          a1[2] = v9;
          a1[1] = v6;
          a1[3] = v7;
          v32 = *(a2 - 1);
          if (v32 >= v7)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[3] = v32;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v9;
          a1[1] = v8;
        }

        *(a2 - 1) = v7;
        return 1;
      }

      if (v8 >= v6)
      {
        return 1;
      }

      v22 = *(a1 + 2);
      a1[2] = *(a2 - 2);
      *(a2 - 2) = v22;
      a1[3] = v8;
      *(a2 - 1) = v6;
      v23 = a1[3];
      v24 = a1[1];
      if (v23 >= v24)
      {
        return 1;
      }

      v25 = *a1;
      *a1 = a1[2];
      *(a1 + 2) = v25;
LABEL_54:
      a1[1] = v23;
      a1[3] = v24;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::ARWorldIntersector::intersectBuildings(gm::LineSegment<double,3> const&)::$_0 &,std::pair<md::ARBuildingTileData *,double> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v16 = a1 + 3;
    v17 = a1[3];
    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1[5];
    if (v17 >= v19)
    {
      if (v20 >= v17)
      {
        goto LABEL_50;
      }

      v29 = *(a1 + 2);
      v30 = *(a1 + 4);
      *(a1 + 2) = v30;
      *(a1 + 4) = v29;
      a1[3] = v20;
      a1[5] = v17;
      if (v20 >= v19)
      {
        goto LABEL_49;
      }

      v31 = *a1;
      *a1 = v30;
      a1[2] = v31;
    }

    else
    {
      v21 = *a1;
      if (v20 >= v17)
      {
        *a1 = a1[2];
        a1[2] = v21;
        a1[1] = v17;
        a1[3] = v19;
        if (v20 >= v19)
        {
          goto LABEL_50;
        }

        a1[2] = a1[4];
        a1[4] = v21;
        v18 = a1 + 3;
      }

      else
      {
        *a1 = a1[4];
        a1[4] = v21;
      }

      v16 = a1 + 5;
      v17 = v19;
    }

    *v18 = v20;
    *v16 = v19;
LABEL_49:
    v20 = v17;
LABEL_50:
    v42 = *(a2 - 1);
    if (v42 >= v20)
    {
      return 1;
    }

    v43 = *(a1 + 4);
    a1[4] = *(a2 - 2);
    *(a2 - 2) = v43;
    a1[5] = v42;
    *(a2 - 1) = v20;
    v23 = a1[5];
    v44 = a1[3];
    if (v23 >= v44)
    {
      return 1;
    }

    v45 = *(a1 + 2);
    v46 = *(a1 + 4);
    *(a1 + 2) = v46;
    *(a1 + 4) = v45;
    a1[3] = v23;
    a1[5] = v44;
    v24 = a1[1];
    if (v23 >= v24)
    {
      return 1;
    }

    v47 = *a1;
    *a1 = v46;
    a1[2] = v47;
    goto LABEL_54;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = a1[1];
    if (v3 < v4)
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      a1[1] = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1[3];
  v11 = a1 + 1;
  v12 = a1[1];
  v13 = a1 + 5;
  v14 = a1[5];
  if (v10 < v12)
  {
    v15 = *a1;
    if (v14 >= v10)
    {
      *a1 = a1[2];
      a1[2] = v15;
      a1[1] = v10;
      a1[3] = v12;
      if (v14 >= v12)
      {
        goto LABEL_34;
      }

      a1[2] = a1[4];
      a1[4] = v15;
      v11 = a1 + 3;
    }

    else
    {
      *a1 = a1[4];
      a1[4] = v15;
    }

    goto LABEL_33;
  }

  if (v14 < v10)
  {
    v26 = *(a1 + 2);
    v27 = *(a1 + 4);
    *(a1 + 2) = v27;
    *(a1 + 4) = v26;
    a1[3] = v14;
    a1[5] = v10;
    if (v14 < v12)
    {
      v28 = *a1;
      *a1 = v27;
      a1[2] = v28;
      v13 = a1 + 3;
LABEL_33:
      *v11 = v14;
      *v13 = v12;
    }
  }

LABEL_34:
  v33 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v34 = 0;
  v35 = 0;
  v36 = a1 + 4;
  while (1)
  {
    v37 = v33[1];
    if (v37 < v36[1])
    {
      v38 = *v33;
      v39 = v34;
      while (1)
      {
        v40 = (a1 + v39);
        v40[6] = *(a1 + v39 + 32);
        v40[7] = *(a1 + v39 + 40);
        if (v39 == -32)
        {
          break;
        }

        v39 -= 16;
        if (v37 >= v40[3])
        {
          v41 = a1 + v39 + 48;
          goto LABEL_42;
        }
      }

      v41 = a1;
LABEL_42:
      *v41 = v38;
      *(v41 + 8) = v37;
      if (++v35 == 8)
      {
        return v33 + 2 == a2;
      }
    }

    v36 = v33;
    v34 += 16;
    v33 += 2;
    if (v33 == a2)
    {
      return 1;
    }
  }
}

void md::ARWorldIntersector::resolveWorldPoint(gm::Matrix<double,3,1> const&)const::$_1::operator()(uint64_t **a1, uint64_t a2)
{
  v5 = *a1;
  v53 = **a1;
  v54 = *(v5 + 2);
  if (geo::DiscreteOrientedPolytope<arComponents::XY26DOPTraits<float>>::contains(a2, &v53))
  {
    geo::DiscreteOrientedPolytope<arComponents::XY26DOPTraits<float>>::planes(&v45, a2);
    v6 = 0;
    v7 = 3.4028e38;
    do
    {
      v8 = &v45 + v6;
      v39[0] = *(&v45 + v6);
      v9 = gm::Matrix<float,3,1>::normalized<int,void>(v39);
      v10 = 0;
      v42 = v9;
      v43 = v11;
      v44 = v12;
      v40 = 0;
      v13 = 0.0;
      v41 = 1065353216;
      do
      {
        v13 = v13 + (*(&v40 + v10) * *(&v42 + v10));
        v10 += 4;
      }

      while (v10 != 12);
      if (fabsf(fabsf(v13) + -1.0) >= 0.01)
      {
        v14 = 0;
        v15 = 0.0;
        do
        {
          v15 = v15 + (*(v39 + v14) * *(&v53 + v14));
          v14 += 4;
        }

        while (v14 != 12);
        v16 = 0;
        v17 = 0.0;
        do
        {
          v17 = v17 + (*(v39 + v16) * *(v39 + v16));
          v16 += 4;
        }

        while (v16 != 12);
        v18 = (*(v39 + 3) + v15) / sqrtf(v17);
        if (v18 < v7)
        {
          v50 = *v8;
          v51 = *(v8 + 2);
          v2 = *(v39 + 3);
          v7 = v18;
        }
      }

      v6 += 16;
    }

    while (v6 != 416);
    v52 = v2;
    if (v7 != 3.4028e38)
    {
      *&v39[0] = v50;
      DWORD2(v39[0]) = 0;
      v19 = gm::Matrix<float,3,1>::normalized<int,void>(v39);
      v45 = *v5;
      v46 = *(v5 + 2);
      v47 = v19;
      v48 = v20;
      v49 = v21;
      v22 = 0.0;
      v23 = &v50;
      for (i = 3; i != 6; ++i)
      {
        v25 = *v23++;
        v22 = v22 + (*(&v45 + i) * v25);
      }

      v26 = 0.0;
      if (fabsf(v22) > 0.00000011921)
      {
        for (j = 0; j != 12; j += 4)
        {
          v26 = v26 + (*(&v45 + j) * *(&v50 + j));
        }

        v26 = -(v26 + v2) / v22;
      }

      v28 = a1[1];
      v29 = *v28;
      if (v26 <= 0.0)
      {
        v29 = -*v28;
      }

      v30 = gm::Ray<float,3>::at(&v45, v29 + v26);
      v31 = 0;
      v42 = v30;
      v43 = v32;
      v44 = v33;
      v34 = *a1[3];
      do
      {
        *(v39 + v31) = *(&v42 + v31);
        ++v31;
      }

      while (v31 != 3);
      v35 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>((v34 + 312), v39);
      v36 = a1[2];
      *v36 = v35;
      v36[1] = v37;
      v36[2] = v38;
    }
  }
}

uint64_t std::__function::__func<md::ARWorldIntersector::resolveWorldPoint(gm::Matrix<double,3,1> const&)::$_0,std::allocator<md::ARWorldIntersector::resolveWorldPoint(gm::Matrix<double,3,1> const&)::$_0>,BOOL ()(md::ARAssetOcclusionMeshData const*,std::vector<arComponents::LocalBounds> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      md::ARWorldIntersector::resolveWorldPoint(gm::Matrix<double,3,1> const&)const::$_1::operator()(*(a1 + 8), v3);
      v3 += 168;
    }

    while (v3 != v4);
  }

  return 1;
}

uint64_t std::__function::__func<md::ARWorldIntersector::resolveWorldPoint(gm::Matrix<double,3,1> const&)::$_0,std::allocator<md::ARWorldIntersector::resolveWorldPoint(gm::Matrix<double,3,1> const&)::$_0>,BOOL ()(md::ARAssetOcclusionMeshData const*,std::vector<arComponents::LocalBounds> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A56318;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::ARWorldIntersector::visitBuildingBoundingVolumes(std::function<BOOL ()(gm::Box<double,3> const&)>,std::function<void ()(gm::Matrix<double,4,4> const&,arComponents::LocalBounds const&)>)::$_0,std::allocator<md::ARWorldIntersector::visitBuildingBoundingVolumes(std::function<BOOL ()(gm::Box<double,3> const&)>,std::function<void ()(gm::Matrix<double,4,4> const&,arComponents::LocalBounds const&)>)::$_0>,BOOL ()(md::ARAssetOcclusionMeshData const*,std::vector<arComponents::LocalBounds> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    while (1)
    {
      v6 = *(*(a1 + 8) + 24);
      if (!v6)
      {
        break;
      }

      (*(*v6 + 48))(v6, *(a1 + 16), v3);
      v3 += 168;
      if (v3 == v4)
      {
        return;
      }
    }

    v7 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<md::ARWorldIntersector::visitBuildingBoundingVolumes(std::function<BOOL ()(gm::Box<double,3> const&)>,std::function<void ()(gm::Matrix<double,4,4> const&,arComponents::LocalBounds const&)>)::$_0,std::allocator<md::ARWorldIntersector::visitBuildingBoundingVolumes(std::function<BOOL ()(gm::Box<double,3> const&)>,std::function<void ()(gm::Matrix<double,4,4> const&,arComponents::LocalBounds const&)>)::$_0>,BOOL ()(md::ARAssetOcclusionMeshData const*,std::vector<arComponents::LocalBounds> const&)>::destroy_deallocate(v7);
  }
}

__n128 std::__function::__func<md::ARWorldIntersector::visitBuildingBoundingVolumes(std::function<BOOL ()(gm::Box<double,3> const&)>,std::function<void ()(gm::Matrix<double,4,4> const&,arComponents::LocalBounds const&)>)::$_0,std::allocator<md::ARWorldIntersector::visitBuildingBoundingVolumes(std::function<BOOL ()(gm::Box<double,3> const&)>,std::function<void ()(gm::Matrix<double,4,4> const&,arComponents::LocalBounds const&)>)::$_0>,BOOL ()(md::ARAssetOcclusionMeshData const*,std::vector<arComponents::LocalBounds> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A563A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1B32CC618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  os_unfair_lock_unlock(v9 + 40);

  _Unwind_Resume(a1);
}

void sub_1B32CC6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);

  _Unwind_Resume(a1);
}

void sub_1B32CC788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  os_unfair_lock_unlock(v9 + 40);

  _Unwind_Resume(a1);
}

void sub_1B32CC8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);

  _Unwind_Resume(a1);
}

void sub_1B32CC97C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  os_unfair_lock_unlock(v9 + 32);

  _Unwind_Resume(a1);
}

void sub_1B32CCB08(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  os_unfair_lock_unlock(v1 + 28);
  _Unwind_Resume(a1);
}

void sub_1B32CCD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, id a11)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v15);

  _Unwind_Resume(a1);
}

void sub_1B32CD9C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);

  std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  _Unwind_Resume(a1);
}

void sub_1B32CDC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VKOverlay;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::RasterTileOverlayStyle>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A56410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B32CE154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VKRasterTileOverlayProviderData;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void md::DaVinciMetaTileData::~DaVinciMetaTileData(md::DaVinciMetaTileData *this)
{
  md::DaVinciMetaTileData::~DaVinciMetaTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A56448;
  *(this + 80) = &unk_1F2A56488;
  v2 = *(this + 98);
  if (v2)
  {
    *(this + 99) = v2;
    operator delete(v2);
  }

  v3 = *(this + 95);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 92);
  if (v4)
  {
    operator delete(v4);
  }

  md::MapTileData::~MapTileData(this);
}

void std::__tree<std::__value_type<md::LabelIdentifier,md::PointPosition>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,md::PointPosition>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,md::PointPosition>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<md::LabelIdentifier,md::PointPosition>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,md::PointPosition>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,md::PointPosition>,mdm::zone_mallocator>>::destroy(*a1);
    std::__tree<std::__value_type<md::LabelIdentifier,md::PointPosition>,std::__map_value_compare<md::LabelIdentifier,std::__value_type<md::LabelIdentifier,md::PointPosition>,std::less<md::LabelIdentifier>,true>,geo::allocator_adapter<std::__value_type<md::LabelIdentifier,md::PointPosition>,mdm::zone_mallocator>>::destroy(a1[1]);
    v4 = a1 + 5;
    std::vector<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,geo::allocator_adapter<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
    v3 = mdm::zone_mallocator::instance(v2);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__tree_node<std::__value_type<md::LabelIdentifier,md::PointPosition>,void *>>(v3, a1);
  }
}

uint64_t md::PointPosition::setLabelPoint(uint64_t this, const md::LabelPoint *a2)
{
  v2 = this + 32;
  if (*(this + 106) == 1)
  {
    for (i = 0; i != 24; i += 8)
    {
      *(v2 + i) = *(a2 + i);
    }

    *(this + 56) = *(a2 + 3);
    *(this + 64) = *(a2 + 4);
    v4 = *(a2 + 10);
    *(this + 75) = *(a2 + 43);
    *(this + 72) = v4;
  }

  else
  {
    v5 = 0;
    v6 = *(this + 72);
    do
    {
      *(v2 + v5) = *(a2 + v5);
      v5 += 8;
    }

    while (v5 != 24);
    *(this + 56) = *(a2 + 3);
    *(this + 64) = *(a2 + 4);
    v7 = *(a2 + 10);
    *(this + 75) = *(a2 + 43);
    *(this + 72) = v7;
    *(this + 72) = v6;
  }

  return this;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeaturePlacementInfo>(uint64_t a1, void *a2)
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

char *std::__construct_at[abi:nn200100]<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>> const&,md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>*>(char *__dst, __int128 *a2)
{
  __dst[24] = *(a2 + 24);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  __dst[56] = *(a2 + 56);
  if (*(a2 + 55) < 0)
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external((__dst + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = a2[2];
    *(__dst + 6) = *(a2 + 6);
    *(__dst + 2) = v5;
  }

  return __dst;
}

void sub_1B32CE864(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    v3 = *v1;
    v4 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  _Unwind_Resume(exception_object);
}

void geo::small_vector_base<md::PointLabelStyleEntry>::runDestructors(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      v5 = *(v3 + 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      v3 += 32;
    }

    while (v3 != a2);
  }
}

void **std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(void **a1, void *a2)
{
  v4 = *a1;
  *a1 = 0;
  geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(a1, a2);
  geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(a2, &v4);
  return geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(&v4);
}

void sub_1B32CE928(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(va);
  _Unwind_Resume(a1);
}

void **std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>(void **result, void *a2, void *a3)
{
  v5 = result;
  if (*a2)
  {
    v6 = *a2 + 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 72);
  if (*result)
  {
    v8 = (*result + 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v8 + 72);
  if (v7 != v9)
  {
    if (v7 <= v9)
    {
      goto LABEL_9;
    }

LABEL_16:
    if (*a3)
    {
      v12 = *a3 + 8;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v12 + 72);
    if (v13 == v7)
    {
      if (*(v12 + 129) >= *(v6 + 129))
      {
LABEL_21:
        result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(result, a2);
        if (*a3)
        {
          v14 = *a3 + 8;
        }

        else
        {
          v14 = 0;
        }

        v15 = *(v14 + 72);
        if (*a2)
        {
          v16 = *a2 + 8;
        }

        else
        {
          v16 = 0;
        }

        v17 = *(v16 + 72);
        if (v15 == v17)
        {
          if (*(v14 + 129) >= *(v16 + 129))
          {
            return result;
          }
        }

        else if (v15 <= v17)
        {
          return result;
        }

        result = a2;
      }
    }

    else if (v13 <= v7)
    {
      goto LABEL_21;
    }

    v22 = a3;
    goto LABEL_47;
  }

  if (*(v6 + 129) < *(v8 + 129))
  {
    goto LABEL_16;
  }

LABEL_9:
  if (*a3)
  {
    v10 = *a3 + 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v10 + 72);
  if (v11 == v7)
  {
    if (*(v10 + 129) >= *(v6 + 129))
    {
      return result;
    }
  }

  else if (v11 <= v7)
  {
    return result;
  }

  result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(a2, a3);
  if (*a2)
  {
    v18 = *a2 + 8;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v18 + 72);
  if (*v5)
  {
    v20 = *v5 + 8;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v20 + 72);
  if (v19 == v21)
  {
    if (*(v18 + 129) >= *(v20 + 129))
    {
      return result;
    }
  }

  else if (v19 <= v21)
  {
    return result;
  }

  result = v5;
  v22 = a2;
LABEL_47:

  return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(result, v22);
}

void **std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>(void **a1, void *a2, void *a3, void *a4)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>(a1, a2, a3);
  if (*a4)
  {
    v9 = *a4 + 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v9 + 72);
  if (*a3)
  {
    v11 = *a3 + 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v11 + 72);
  if (v10 == v12)
  {
    if (*(v9 + 129) >= *(v11 + 129))
    {
      return result;
    }
  }

  else if (v10 <= v12)
  {
    return result;
  }

  result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(a3, a4);
  if (*a3)
  {
    v13 = *a3 + 8;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v13 + 72);
  if (*a2)
  {
    v15 = *a2 + 8;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v15 + 72);
  if (v14 == v16)
  {
    if (*(v13 + 129) >= *(v15 + 129))
    {
      return result;
    }
  }

  else if (v14 <= v16)
  {
    return result;
  }

  result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(a2, a3);
  if (*a2)
  {
    v17 = *a2 + 8;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v17 + 72);
  if (*a1)
  {
    v19 = (*a1 + 1);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v19 + 72);
  if (v18 == v20)
  {
    if (*(v17 + 129) >= *(v19 + 129))
    {
      return result;
    }
  }

  else if (v18 <= v20)
  {
    return result;
  }

  return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(a1, a2);
}

void **std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>(void **a1, void *a2, void *a3, void *a4, void *a5)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>(a1, a2, a3, a4);
  if (*a5)
  {
    v11 = *a5 + 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v11 + 72);
  if (*a4)
  {
    v13 = *a4 + 8;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v13 + 72);
  if (v12 == v14)
  {
    if (*(v11 + 129) >= *(v13 + 129))
    {
      return result;
    }
  }

  else if (v12 <= v14)
  {
    return result;
  }

  result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(a4, a5);
  if (*a4)
  {
    v15 = *a4 + 8;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v15 + 72);
  if (*a3)
  {
    v17 = *a3 + 8;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v17 + 72);
  if (v16 == v18)
  {
    if (*(v15 + 129) >= *(v17 + 129))
    {
      return result;
    }
  }

  else if (v16 <= v18)
  {
    return result;
  }

  result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(a3, a4);
  if (*a3)
  {
    v19 = *a3 + 8;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v19 + 72);
  if (*a2)
  {
    v21 = *a2 + 8;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v21 + 72);
  if (v20 == v22)
  {
    if (*(v19 + 129) >= *(v21 + 129))
    {
      return result;
    }
  }

  else if (v20 <= v22)
  {
    return result;
  }

  result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(a2, a3);
  if (*a2)
  {
    v23 = *a2 + 8;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v23 + 72);
  if (*a1)
  {
    v25 = (*a1 + 1);
  }

  else
  {
    v25 = 0;
  }

  v26 = *(v25 + 72);
  if (v24 == v26)
  {
    if (*(v23 + 129) >= *(v25 + 129))
    {
      return result;
    }
  }

  else if (v24 <= v26)
  {
    return result;
  }

  return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(a1, a2);
}

void **geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(void **a1, void *a2)
{
  v4 = *a1;
  if (*a1)
  {
    if ((*v4)-- == 1)
    {
      v6 = v4[3];
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        v4 = *a1;
      }

      v7 = mdm::zone_mallocator::instance(v6);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::_fast_shared_ptr_control>(v7, v4);
      *a1 = 0;
    }
  }

  *a1 = *a2;
  *a2 = 0;
  return a1;
}

uint64_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*>(uint64_t a1, void *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>(a1, (a1 + 8), a2 - 1);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>(a1, (a1 + 8), (a1 + 16), a2 - 1);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), a2 - 1);
        return 1;
    }

LABEL_18:
    v10 = (a1 + 16);
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::PointPosition::addElement(geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> const&)::$_1 &,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>*,0>(a1, (a1 + 8), (a1 + 16));
    v11 = (a1 + 24);
    if ((a1 + 24) == a2)
    {
      return 1;
    }

    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *v11 + 8;
      if (!*v11)
      {
        v14 = 0;
      }

      v15 = *(v14 + 72);
      if (*v10)
      {
        v16 = (*v10 + 1);
      }

      else
      {
        v16 = 0;
      }

      v17 = *(v16 + 72);
      if (v15 == v17)
      {
        if (*(v14 + 129) >= *(v16 + 129))
        {
          goto LABEL_45;
        }
      }

      else if (v15 <= v17)
      {
        goto LABEL_45;
      }

      v26 = *v11;
      *v11 = 0;
      for (i = v12; ; i -= 8)
      {
        geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=((a1 + i + 24), (a1 + i + 16));
        if (i == -16)
        {
          break;
        }

        if (v26)
        {
          v19 = v26 + 1;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19[9];
        v21 = *(a1 + i + 8);
        if (v21)
        {
          v22 = v21 + 8;
        }

        else
        {
          v22 = 0;
        }

        v23 = *(v22 + 72);
        if (v20 == v23)
        {
          if (*(v19 + 129) >= *(v22 + 129))
          {
            v10 = (a1 + i + 16);
            goto LABEL_43;
          }
        }

        else if (v20 <= v23)
        {
          goto LABEL_43;
        }

        --v10;
      }

      v10 = a1;
LABEL_43:
      geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::operator=(v10, &v26);
      if (++v13 == 8)
      {
        v24 = v11 + 1 == a2;
        geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(&v26);
        return v24;
      }

      geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(&v26);
LABEL_45:
      v10 = v11;
      v12 += 8;
      if (++v11 == a2)
      {
        return 1;
      }
    }
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_18;
  }

  v5 = *(a2 - 1);
  if (v5)
  {
    v6 = v5 + 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 72);
  if (*a1)
  {
    v8 = *a1 + 8;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v8 + 72);
  if (v7 == v9)
  {
    if (*(v6 + 129) >= *(v8 + 129))
    {
      return 1;
    }

    goto LABEL_49;
  }

  if (v7 > v9)
  {
LABEL_49:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&,geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator> *&>(a1, a2 - 1);
  }

  return 1;
}

void sub_1B32CF0D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  geo::fast_shared_ptr<md::PointLabelFeatureElement,mdm::allocator>::~fast_shared_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t md::PointLabelFeature::newLabeledImageAnnotationPart(void *a1, uint64_t *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2[8];
  v5 = atomic_load((*a2 + 3426));
  md::PointLabelFeatureElement::getSummaryIconInfos(&v21, v4, 1, v5 & 1);
  if (v23 != 1)
  {
    return 0;
  }

  if (v21 == v22)
  {
    v12 = 0;
LABEL_18:
    v19 = &v21;
    std::vector<md::PointLabelSummaryIconInfo,geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v19);
    return v12;
  }

  v7 = mdm::zone_mallocator::instance(v6);
  v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v7, 0x2B8uLL);
  md::StackLabelPart::StackLabelPart(v8, 0, 5, 0, 0);
  v18 = v9;
  (*(*v9 + 176))(v9, 8);
  *(v18 + 630) = 1;
  v17 = &v18;
  md::PointLabelFeature::textColor(&v16, a1, a2, 1);
  md::LabelStyle::textStyleGroup(a2[2], 0);
  for (i = v21; i != v22; i += 56)
  {
    if ((*(i + 31) & 0x8000000000000000) != 0)
    {
      if (*(i + 16))
      {
LABEL_8:
        v11 = a2[2];
        if (!*(v11 + 296))
        {
          *(v11 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
        }

        md::PointLabelFeature::annotationIconColor(&v15, a1, a2);
        md::PointLabelFeature::customImageData(&v20, a1);
        md::LabelStyle::createIcon();
      }
    }

    else if (*(i + 31))
    {
      goto LABEL_8;
    }
  }

  v13 = v18;
  v18 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v12 = v18;
  if (v23)
  {
    goto LABEL_18;
  }

  return v12;
}

void sub_1B32CF77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v33);
  }

  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  if (a32)
  {
    (*(*a32 + 8))(a32);
  }

  if (*(v35 - 104) == 1)
  {
    a33 = v35 - 136;
    std::vector<md::PointLabelSummaryIconInfo,geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a33);
  }

  _Unwind_Resume(a1);
}

void md::PointLabelFeatureElement::getSummaryIconInfos(uint64_t a1, uint64_t **a2, int a3, int a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (!*a2)
  {
    *a1 = 0;
    *(a1 + 32) = 0;
    return;
  }

  if (a3)
  {
    if (a3 == 2)
    {
      v6 = *(v5 + 208) != 0;
    }

    else
    {
      v6 = *(v5 + 208);
    }

    v7 = 1;
    v8 = 196;
  }

  else
  {
    v7 = 0;
    v6 = *(v5 + 207);
    v8 = 192;
  }

  v9 = *(v5 + v8);
  memset(v45, 0, sizeof(v45));
  if (v6)
  {
    v39[1].__r_.__value_.__r.__words[0] = &v46;
    v10 = mdm::zone_mallocator::instance(a1);
    v11 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::PointLabelSummaryIconInfo>(v10, v6);
    std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator>,md::PointLabelSummaryIconInfo*>(*v45, *&v45[8], &v11[*v45 - *&v45[8]]);
    v12 = *v45;
    v13 = *&v45[16];
    *v45 = &v11[*v45 - *&v45[8]];
    *&v45[8] = v11;
    *&v45[16] = &v11[56 * v6];
    v39[0].__r_.__value_.__l.__size_ = v12;
    v39[0].__r_.__value_.__r.__words[2] = v13;
    v38 = v12;
    v39[0].__r_.__value_.__r.__words[0] = v12;
    std::__split_buffer<md::PointLabelSummaryIconInfo,geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator> &>::~__split_buffer(&v38);
  }

  NativeLabel = v5[1];
  if (NativeLabel)
  {
    NativeLabel = std::__shared_weak_count::lock(NativeLabel);
    if (NativeLabel)
    {
      v34 = NativeLabel;
      v15 = *v5;
      if (!v6)
      {
        goto LABEL_54;
      }

LABEL_16:
      v16 = (*(v15 + 1896) + 12 * v9 + 8);
      do
      {
        memset(v39, 0, sizeof(v39));
        v38 = *(v16 - 1);
        if (v7)
        {
          v17 = *v16;
          if (v17 != -1)
          {
            if ((v40 = 0, __s = 0, a4) && (geo::codec::tileGetLocalizedLabel(a2[1], v17, &__s, &v40), (v18 = __s) != 0) && *__s || (NativeLabel = geo::codec::tileGetNativeLabel(a2[1], *v16, &__s, &v40), (v18 = __s) != 0) && *__s)
            {
              std::string::__assign_external(v39, v18);
              NativeLabel = std::string::__assign_external(&v39[1], v40);
            }
          }
        }

        v19 = *&v45[8];
        if (*&v45[8] >= *&v45[16])
        {
          v21 = 0x6DB6DB6DB6DB6DB7 * ((*&v45[8] - *v45) >> 3);
          v22 = v21 + 1;
          if ((v21 + 1) > 0x492492492492492)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((*&v45[16] - *v45) >> 3) > v22)
          {
            v22 = 0xDB6DB6DB6DB6DB6ELL * ((*&v45[16] - *v45) >> 3);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((*&v45[16] - *v45) >> 3)) >= 0x249249249249249)
          {
            v23 = 0x492492492492492;
          }

          else
          {
            v23 = v22;
          }

          v44 = &v46;
          if (v23)
          {
            v24 = mdm::zone_mallocator::instance(NativeLabel);
            v25 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::PointLabelSummaryIconInfo>(v24, v23);
          }

          else
          {
            v25 = 0;
          }

          v28 = &v25[56 * v21];
          __s = v25;
          v42 = v28;
          *&v43 = v28;
          *(&v43 + 1) = &v25[56 * v23];
          *v28 = v38;
          if (SHIBYTE(v39[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external((v28 + 8), v39[0].__r_.__value_.__l.__data_, v39[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v29 = *&v39[0].__r_.__value_.__l.__data_;
            *(v28 + 3) = *(&v39[0].__r_.__value_.__l + 2);
            *(v28 + 8) = v29;
          }

          if (SHIBYTE(v39[1].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external((v28 + 32), v39[1].__r_.__value_.__l.__data_, v39[1].__r_.__value_.__l.__size_);
          }

          else
          {
            v30 = *&v39[1].__r_.__value_.__l.__data_;
            *(v28 + 6) = *(&v39[1].__r_.__value_.__l + 2);
            *(v28 + 2) = v30;
          }

          *&v43 = v43 + 56;
          v31 = &v42[*v45 - *&v45[8]];
          std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator>,md::PointLabelSummaryIconInfo*>(*v45, *&v45[8], v31);
          v32 = *v45;
          v33 = *&v45[16];
          *v45 = v31;
          v37 = v43;
          *&v45[8] = v43;
          *&v43 = v32;
          *(&v43 + 1) = v33;
          __s = v32;
          v42 = v32;
          NativeLabel = std::__split_buffer<md::PointLabelSummaryIconInfo,geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator> &>::~__split_buffer(&__s);
          v27 = v37;
        }

        else
        {
          **&v45[8] = v38;
          if (SHIBYTE(v39[0].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external((v19 + 8), v39[0].__r_.__value_.__l.__data_, v39[0].__r_.__value_.__l.__size_);
          }

          else
          {
            v20 = *&v39[0].__r_.__value_.__l.__data_;
            *(v19 + 24) = *(&v39[0].__r_.__value_.__l + 2);
            *(v19 + 8) = v20;
          }

          if (SHIBYTE(v39[1].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external((v19 + 32), v39[1].__r_.__value_.__l.__data_, v39[1].__r_.__value_.__l.__size_);
          }

          else
          {
            v26 = *&v39[1].__r_.__value_.__l.__data_;
            *(v19 + 48) = *(&v39[1].__r_.__value_.__l + 2);
            *(v19 + 32) = v26;
          }

          v27 = v19 + 56;
        }

        *&v45[8] = v27;
        if (SHIBYTE(v39[1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39[1].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v39[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39[0].__r_.__value_.__l.__data_);
        }

        v16 += 3;
        --v6;
      }

      while (v6);
      goto LABEL_54;
    }
  }

  v15 = 0;
  v34 = 0;
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_54:
  *(a1 + 24) = v46;
  *a1 = *v45;
  *(a1 + 16) = *&v45[16];
  memset(v45, 0, sizeof(v45));
  *(a1 + 32) = 1;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  v38 = v45;
  std::vector<md::PointLabelSummaryIconInfo,geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v38);
}

void sub_1B32CFDD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  a29 = v30 - 128;
  std::vector<md::PointLabelSummaryIconInfo,geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a29);
  _Unwind_Resume(a1);
}

void *md::PointLabelFeature::annotationIconColor(void *result, void *a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 16);
  v7 = *(v6 + 312);
  if (!v7)
  {
    result = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(*(a3 + 16));
    v7 = *result;
    *(v6 + 312) = *result;
  }

  v8 = *(v7 + 45);
  if ((v8 - 5) <= 1u && (result = md::PointLabelFeature::iconPackColor(&v9, a2, a3, v8), v11 == 1))
  {
    *v5 = 0;
    v5[4] = 0;
    if (v10 == 1)
    {
      *v5 = v9;
      v5[4] = 1;
    }
  }

  else
  {
    *v5 = 0;
    v5[4] = 0;
  }

  return result;
}

mdm::zone_mallocator *md::PointLabelFeature::newLabeledImageAnnotationPart(md::PartCreationContext const&,md::AnnotationID)::$_0::operator()(mdm::zone_mallocator ***a1, md::LabelPart **a2, void *a3, int *a4)
{
  v8 = (*(**a2 + 176))(*a2, 10);
  v9 = mdm::zone_mallocator::instance(v8);
  v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v9, 0x4F8uLL);
  v11 = v10;
  LOBYTE(v20) = 0;
  v24 = 0;
  if (*(a4 + 10) == 1)
  {
    v21 = 0;
    if (*(a4 + 4) == 1)
    {
      v20 = *a4;
      v21 = 1;
    }

    LOBYTE(v22) = 0;
    v23 = 0;
    if (*(a4 + 9) == 1)
    {
      v22 = *(a4 + 5);
      v23 = 1;
    }

    v24 = 1;
  }

  v12 = md::HorizontalTextLabelPart::HorizontalTextLabelPart(v10, a3, &v20, 1);
  v13 = (*(*v11 + 176))(v12, 11);
  v14 = mdm::zone_mallocator::instance(v13);
  v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v14, 0x2B8uLL);
  md::StackLabelPart::StackLabelPart(v15, 1, 0, 1, 0);
  (*(*v16 + 176))(v16, 12);
  *(v15 + 630) = 1;
  v17 = *a2;
  *a2 = 0;
  md::CompositeLabelPart::addLabelPart(v15, v17);
  md::CompositeLabelPart::addLabelPart(v15, v11);
  v18 = **a1;

  return md::CompositeLabelPart::addLabelPart(v18, v15);
}

uint64_t md::PointLabelFeature::createGraphicAnnotationPart(void *a1, uint64_t a2, int a3, int a4)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v6 = *(a2 + 16);
    v7 = *(v6 + 312);
    if (a4 == 1)
    {
      if (!v7)
      {
        v8 = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(*(a2 + 16));
        v7 = *v8;
        *(v6 + 312) = *v8;
      }

      v9 = (v7 + 48);
    }

    else
    {
      if (!v7)
      {
        v13 = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(*(a2 + 16));
        v7 = *v13;
        *(v6 + 312) = *v13;
      }

      v9 = (v7 + 50);
    }
  }

  else
  {
    v10 = *(a2 + 16);
    v11 = *(v10 + 312);
    if (!v11)
    {
      v12 = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(*(a2 + 16));
      v11 = *v12;
      *(v10 + 312) = *v12;
    }

    v9 = (v11 + 53);
  }

  v14 = *v9;
  if (v14 > 3)
  {
    if (v14 > 5)
    {
      if (v14 != 7)
      {
        return 0;
      }

      v29 = *(a2 + 16);
      v30 = *(v29 + 272);
      if (!v30)
      {
        v31 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*(a2 + 16));
        v30 = *v31;
        *(v29 + 272) = *v31;
      }

      v28 = v30 + 144;
    }

    else
    {
      if (v14 != 4)
      {
        v15 = *(a2 + 16);
        v16 = *(v15 + 296);
        if (!v16)
        {
          v17 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a2 + 16), 0);
          v16 = *v17;
          *(v15 + 296) = *v17;
        }

        v18 = a1[87];
        if (!v18)
        {
          return 0;
        }

        v19 = *(v18 + 33);
        if (!*(v18 + 33))
        {
          return 0;
        }

        v20 = *(v16 + 64);
        v21 = *v18;
        if (**v18 != v20)
        {
          v38 = 0;
          v39 = v21 + 2;
          do
          {
            if (v19 - 1 == v38)
            {
              return 0;
            }

            v40 = *v39;
            v39 += 2;
            ++v38;
          }

          while (v40 != v20);
          if (v38 >= v19)
          {
            return 0;
          }
        }

        v22 = *(a2 + 16);
        v23 = *(v22 + 296);
        if (!v23)
        {
          v24 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a2 + 16), 0);
          v23 = *v24;
          *(v22 + 296) = *v24;
        }

        if (!*(v23 + 64))
        {
          return 0;
        }

        goto LABEL_45;
      }

      v34 = *(a2 + 16);
      v35 = *(v34 + 272);
      if (!v35)
      {
        v36 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*(a2 + 16));
        v35 = *v36;
        *(v34 + 272) = *v36;
      }

      v28 = v35 + 112;
    }

LABEL_41:
    if ((*(v28 + 23) & 0x8000000000000000) == 0)
    {
      if (!*(v28 + 23))
      {
        return 0;
      }

LABEL_45:
      v37 = *(a2 + 16);
      if (!*(v37 + 296))
      {
        *(v37 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a2 + 16), 0);
      }

      md::PointLabelFeature::annotationIconColor(&v41, a1, a2);
      md::PointLabelFeature::customImageData(&__p, a1);
      md::LabelStyle::createIcon();
    }

    if (*(v28 + 8))
    {
      goto LABEL_45;
    }

    return 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      goto LABEL_35;
    }

    v25 = *(a2 + 16);
    v26 = *(v25 + 272);
    if (!v26)
    {
      v27 = md::LabelStyle::prepareStyleGroup<md::LabelPointStyleGroup>(*(a2 + 16));
      v26 = *v27;
      *(v25 + 272) = *v27;
    }

    v28 = v26 + 80;
    goto LABEL_41;
  }

  if (v14)
  {
    return 0;
  }

LABEL_35:
  v32 = *(*a1 + 744);

  return v32(a1, a2);
}

void sub_1B32D0548(mdm::zone_mallocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v24, v22);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

void std::vector<md::PointLabelSummaryIconInfo,geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 56;
        std::__destroy_at[abi:nn200100]<md::PointLabelSummaryIconInfo,0>(v3);
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PointLabelSummaryIconInfo>(v6, v4);
  }
}

void std::__destroy_at[abi:nn200100]<md::PointLabelSummaryIconInfo,0>(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PointLabelSummaryIconInfo>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::PointLabelSummaryIconInfo>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 56 * a2, 0x101204027E90732uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator>,md::PointLabelSummaryIconInfo*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 8);
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 8) = v6;
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 8) = 0;
      v7 = *(v5 + 32);
      *(a3 + 48) = *(v5 + 48);
      *(a3 + 32) = v7;
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      *(v5 + 32) = 0;
      v5 += 56;
      a3 += 56;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<md::PointLabelSummaryIconInfo,0>(v4);
      v4 += 56;
    }

    while (v4 != a2);
  }
}

mdm::zone_mallocator *std::__split_buffer<md::PointLabelSummaryIconInfo,geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 56;
    std::__destroy_at[abi:nn200100]<md::PointLabelSummaryIconInfo,0>(i - 56);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::PointLabelSummaryIconInfo>(v5, v4);
  }

  return a1;
}

uint64_t md::PointLabelFeature::newGraphicAnnotationPart(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  md::PointLabelFeatureElement::getSummaryIconInfos(&v13, *(a2 + 64), 0, 0);
  if (v15 == 1 && v13 != v14)
  {
    v5 = mdm::zone_mallocator::instance(v4);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v5, 0x2B8uLL);
    md::StackLabelPart::StackLabelPart(v6, 1, 0, 0, 0);
    *v7 = &unk_1F2A10518;
    *(v7 + 694) = 1;
    md::LabelPart::setContentType(v7, 7);
    *(v6 + 630) = 1;
    if (v13 != v14)
    {
      v8 = *(a2 + 16);
      if (!*(v8 + 296))
      {
        *(v8 + 296) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*(a2 + 16), 0);
      }

      md::PointLabelFeature::annotationIconColor(&v10, a1, a2);
      md::PointLabelFeature::customImageData(&__p, a1);
      md::LabelStyle::createIcon();
    }

    (*(*v6 + 8))(v6);
  }

  if (v15 == 1)
  {
    v11 = &v13;
    std::vector<md::PointLabelSummaryIconInfo,geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v11);
  }

  return 0;
}

void sub_1B32D0B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 104) == 1)
  {
    a19 = v26 - 136;
    std::vector<md::PointLabelSummaryIconInfo,geo::allocator_adapter<md::PointLabelSummaryIconInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::PointLabelFeature::externalFeatureTextIndex(uint64_t a1, int a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 480);
  if (!v3)
  {
    return 255;
  }

  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4 == v5)
  {
    return 255;
  }

  while (*(v4 + 1) != a2)
  {
    v4 += 104;
    if (v4 == v5)
    {
      return 255;
    }
  }

  v9 = atomic_load((a3 + 3426));
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = *(v4 + 79);
  if (v10 < 0)
  {
    v10 = *(v4 + 64);
  }

  if (v10)
  {
    md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp<std::string>(__dst, (v4 + 56));
    v11 = md::PointLabelFeature::indexForTextEntry(a1, __dst);
  }

  else
  {
LABEL_12:
    md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp<std::string>(__dst, (v4 + 8));
    v11 = md::PointLabelFeature::indexForTextEntry(a1, __dst);
  }

  v7 = v11;
  if (v19 < 0)
  {
    v12 = v18;
    v13 = mdm::zone_mallocator::instance(v11);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v13, v12);
  }

  if (v17 < 0)
  {
    v14 = __dst[0];
    v15 = mdm::zone_mallocator::instance(v11);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v15, v14);
  }

  return v7;
}

void sub_1B32D0D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    v23 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v23, a17);
  }

  if (a15 < 0)
  {
    v24 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v24, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::PointLabelFeature::annotationTextIndex(uint64_t a1, void *a2, int a3)
{
  v96 = *MEMORY[0x1E69E9840];
  if (a3 == 8)
  {
    v5 = *(*a2 + 3512);
    md::LabelExternalPointFeature::incident(v5);
    objc_claimAutoreleasedReturnValue();

    if (v5)
    {
      v6 = *(*a2 + 3512);
      md::LabelExternalPointFeature::incident(v6);
      v73 = 0;
      v74 = 0;
      [objc_claimAutoreleasedReturnValue() getTextForKey:&unk_1F2A88548 text:&v74 locale:&v73];
      v7 = v74;
      v8 = v73;

      v9 = v7;
      v10 = [v7 UTF8String];
      v11 = v8;
      md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(__dst, v10, [v8 UTF8String]);
      v12 = md::PointLabelFeature::indexForTextEntry(a1, __dst);
      v13 = v12;
      if (v94 < 0)
      {
        v14 = v93;
        v15 = mdm::zone_mallocator::instance(v12);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v15, v14);
      }

      if (v92 < 0)
      {
        v16 = __dst[0];
        v17 = mdm::zone_mallocator::instance(v12);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v17, v16);
      }

      return v13;
    }

LABEL_22:
    if (!(*(*a1 + 64))(a1))
    {
      return 255;
    }

    v29 = *(a1 + 480);
    v30 = *(v29 + 48);
    v31 = *(v29 + 56);
    if (v30 == v31)
    {
      return 255;
    }

    v32 = 0;
    do
    {
      if (*v30 > *(a2[1] + 392))
      {
        break;
      }

      if (v30[1] == 2)
      {
        v32 = v30;
      }

      v30 += 104;
    }

    while (v30 != v31);
    if (!v32)
    {
      return 255;
    }

    v33 = atomic_load((*a2 + 3426));
    if ((v33 & 1) == 0)
    {
      goto LABEL_35;
    }

    v34 = v32[79];
    if (v34 < 0)
    {
      v34 = *(v32 + 8);
    }

    if (v34)
    {
      md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp<std::string>(__dst, v32 + 7);
      v35 = md::PointLabelFeature::indexForTextEntry(a1, __dst);
    }

    else
    {
LABEL_35:
      md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp<std::string>(__dst, v32 + 1);
      v35 = md::PointLabelFeature::indexForTextEntry(a1, __dst);
    }

    v13 = v35;
    if (v94 < 0)
    {
      v36 = v93;
      v37 = mdm::zone_mallocator::instance(v35);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v37, v36);
    }

    if (v92 < 0)
    {
      v38 = __dst[0];
      v39 = mdm::zone_mallocator::instance(v35);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v39, v38);
    }

    if (v13 == (*(*a1 + 704))(a1, a2))
    {
      return 255;
    }

    return v13;
  }

  if ((a3 & 0xFE) != 0xA)
  {
    goto LABEL_22;
  }

  v19 = a2[2];
  v20 = *(v19 + 312);
  if (!v20)
  {
    v21 = md::LabelStyle::prepareStyleGroup<md::LabelAnnotationStyleGroup>(a2[2]);
    v20 = *v21;
    *(v19 + 312) = *v21;
  }

  v22 = 60;
  if (a3 == 10)
  {
    v22 = 56;
  }

  v23 = 54;
  if (a3 != 10)
  {
    v23 = 55;
  }

  v24 = *(v20 + v23);
  v25 = *(v20 + v22);
  LOBYTE(v86[0]) = 0;
  v90 = 0;
  if (v25 - 1 < 2)
  {
    goto LABEL_18;
  }

  if (v25 == 3)
  {
    LOBYTE(v81) = 0;
    v85 = 0;
    v40 = *(*a2 + 3512);
    md::LabelExternalPointFeature::incident(v40);
    objc_claimAutoreleasedReturnValue();

    if (v25 != 3 || v40 == 0)
    {
LABEL_48:
      if (v85 != 1)
      {
        goto LABEL_62;
      }

      if (v84 < 0)
      {
        v43 = v83;
        v44 = mdm::zone_mallocator::instance(v41);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v44, v43);
      }

      if ((v82 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      v45 = v81;
LABEL_61:
      v48 = mdm::zone_mallocator::instance(v41);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v48, v45);
      goto LABEL_62;
    }

    if (*(a1 + 695) == 1)
    {
      v55 = *(a1 + 694);
      switch(v55)
      {
        case 1:
          v56 = *(*a2 + 3512);
          md::LabelExternalPointFeature::incident(v56);
          objc_claimAutoreleasedReturnValue();
          if (*(a1 + 384) == 1)
          {
            v62 = *(a1 + 380);
          }

          else
          {
            v62 = 0;
          }

          v75 = 0;
          v76 = 0;
          v60 = &v75;
          v61 = &v76;
          [v56 getAnnotationTextForChargersNoStatus:v62 text:&v76 locale:&v75];
          goto LABEL_87;
        case 2:
          v56 = *(*a2 + 3512);
          md::LabelExternalPointFeature::incident(v56);
          v77 = 0;
          v78 = 0;
          v60 = &v77;
          v61 = &v78;
          [objc_claimAutoreleasedReturnValue() getAnnotationTextForChargersNoneAvailable:&v78 locale:&v77];
LABEL_87:
          v64 = *v61;
          v59 = *v60;

          v58 = v64;
          goto LABEL_88;
        case 3:
          v56 = *(*a2 + 3512);
          md::LabelExternalPointFeature::incident(v56);
          objc_claimAutoreleasedReturnValue();
          if (*(a1 + 376) == 1)
          {
            v57 = *(a1 + 372);
          }

          else
          {
            v57 = 0;
          }

          if (*(a1 + 384) == 1)
          {
            v63 = *(a1 + 380);
          }

          else
          {
            v63 = 0;
          }

          v79 = 0;
          v80 = 0;
          v60 = &v79;
          v61 = &v80;
          [v56 getAnnotationTextForChargersAvailable:v57 total:v63 text:&v80 locale:&v79];
          goto LABEL_87;
      }
    }

    v58 = 0;
    v59 = 0;
LABEL_88:
    v65 = v58;
    v66 = [v58 UTF8String];
    v67 = v59;
    md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(__dst, v66, [v59 UTF8String]);
    v95 = 1;
    std::__optional_storage_base<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,false>>(&v81, __dst);
    if (v95 == 1)
    {
      if (v94 < 0)
      {
        v69 = v93;
        v70 = mdm::zone_mallocator::instance(v68);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v70, v69);
      }

      if (v92 < 0)
      {
        v71 = __dst[0];
        v72 = mdm::zone_mallocator::instance(v68);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v72, v71);
      }
    }

    if (v90 == v85)
    {
      if (v90)
      {
        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(v86, &v81);
        v41 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(&v88, &v83);
      }
    }

    else if (v90)
    {
      std::__optional_destruct_base<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,false>::reset[abi:nn200100](v86);
    }

    else
    {
      v41 = std::__construct_at[abi:nn200100]<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>> const&,md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>*>(v86, &v81);
      v90 = 1;
    }

    goto LABEL_48;
  }

  if (v25 == 4)
  {
LABEL_18:
    v26 = *a2[8];
    if (v26)
    {
      v81 = 0uLL;
      v27 = *(v26 + 8);
      if (v27)
      {
        v28 = std::__shared_weak_count::lock(v27);
        *(&v81 + 1) = v28;
        if (v28)
        {
          *&v81 = *v26;
        }
      }

      else
      {
        v28 = 0;
      }

      md::LabelFeature::tileAnnotationText(__dst, &v81, *(v26 + 200), *(v26 + 204), v25, v24);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v28);
      }
    }

    else
    {
      LOBYTE(__dst[0]) = 0;
      v95 = 0;
    }

    std::__optional_storage_base<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,false>>(v86, __dst);
    if (v95 != 1)
    {
      goto LABEL_62;
    }

    if (v94 < 0)
    {
      v46 = v93;
      v47 = mdm::zone_mallocator::instance(v41);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v47, v46);
    }

    if ((v92 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    v45 = __dst[0];
    goto LABEL_61;
  }

LABEL_62:
  if (v90 != 1)
  {
    return 255;
  }

  v49 = md::PointLabelFeature::indexForTextEntry(a1, v86);
  v13 = v49;
  if (v90)
  {
    if (v89 < 0)
    {
      v50 = v88;
      v51 = mdm::zone_mallocator::instance(v49);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v51, v50);
    }

    if (v87 < 0)
    {
      v52 = v86[0];
      v53 = mdm::zone_mallocator::instance(v49);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v53, v52);
    }
  }

  return v13;
}