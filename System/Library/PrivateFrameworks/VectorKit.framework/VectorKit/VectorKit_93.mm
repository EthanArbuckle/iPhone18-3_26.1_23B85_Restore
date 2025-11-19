__n128 std::__function::__func<md::ita::CheckIfOpaque::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const*,md::ls::ColorDataHandle const&,md::ls::RenderableMaterialData const&,md::ls::HasOverlayPatch const*>)::$_0,std::allocator<md::ita::CheckIfOpaque::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const*,md::ls::ColorDataHandle const&,md::ls::RenderableMaterialData const&,md::ls::HasOverlayPatch const*>)::$_0>,void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const*,md::ls::ColorDataHandle const&,md::ls::RenderableMaterialData const&,md::ls::HasOverlayPatch const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A07718;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UniqueSSAOIntensityDataHandle>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueSSAOIntensityDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueSSAOIntensityDataHandle>(void)::localId;
    *algn_1EB82D698 = 0x4F4D36B2531D496FLL;
    qword_1EB82D6A0 = "md::ls::UniqueSSAOIntensityDataHandle]";
    qword_1EB82D6A8 = 37;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29UniqueSSAOIntensityDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueSSAOIntensityDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueSSAOIntensityDataHandle>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29UniqueSSAOIntensityDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A414D8;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41498;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A414B8;
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

void ecs2::storage<ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41498;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueSSAOIntensityDataHandle,64ul>::~storage(a1);
}

void std::__function::__func<md::ita::UpdateSSAOIntensityData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0,std::allocator<md::ita::UpdateSSAOIntensityData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  md::MaterialResourceStore::getMaterial(&v10, **(a1 + 8), *a2);
  SSAOIntensityData = md::MaterialResourceStore::getSSAOIntensityData(**(a1 + 8), *a3);
  v6.n128_u32[0] = **(a1 + 16);
  v7 = (*(*v10 + 1224))(v6);
  v8 = *&v7;
  if ((v7 & 0x100000000) == 0)
  {
    v8 = 1.0;
  }

  *SSAOIntensityData = v8;
  v9 = v11;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void sub_1B2E69D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::ita::UpdateSSAOIntensityData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0,std::allocator<md::ita::UpdateSSAOIntensityData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueSSAOIntensityDataHandle const&,md::ls::MaterialPendingProcessing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A07810;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28UniqueGradientMaskDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueGradientMaskDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueGradientMaskDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueGradientMaskDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A415F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueGradientMaskDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueGradientMaskDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41610;
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

void ecs2::storage<ecs2::Entity,md::ls::UniqueGradientMaskDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueGradientMaskDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueGradientMaskDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A415F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueGradientMaskDataHandle,64ul>::~storage(a1);
}

void std::__function::__func<md::ita::UpdateGradientMaskData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueGradientMaskDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0,std::allocator<md::ita::UpdateGradientMaskData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueGradientMaskDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueGradientMaskDataHandle const&,md::ls::MaterialPendingProcessing const&)>::operator()(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  md::MaterialResourceStore::getMaterial(&v18, **(a1 + 8), *a2);
  v5 = v18;
  if (!v18)
  {
    goto LABEL_25;
  }

  GradientMaskData = md::MaterialResourceStore::getGradientMaskData(**(a1 + 8), *a3);
  v7.n128_u32[0] = **(a1 + 16);
  (*(*v5 + 1040))(&v15, v5, v7);
  if (v17 == 1)
  {
    v8 = v15;
    *&v21 = *v16;
    *(&v21 + 7) = *&v16[7];
    v9 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = *(GradientMaskData + 12);
  if (v10 == v9)
  {
    if (*(GradientMaskData + 12))
    {
      *GradientMaskData = v8;
      *(GradientMaskData + 1) = v21;
      *(GradientMaskData + 8) = *(&v21 + 7);
      if (v9)
      {
LABEL_15:
        (*(*v5 + 816))(&v21, v5, **(a1 + 16));
        if (v22 == 1)
        {
          v11 = v21;
          v20[0] = *(&v21 + 1);
          *(v20 + 7) = *(&v21 + 1);
          v12 = 1;
        }

        else
        {
          v12 = 0;
          v11 = 0;
        }

        v13 = *(GradientMaskData + 32);
        if (v13 == v12)
        {
          if (*(GradientMaskData + 32))
          {
            *(GradientMaskData + 16) = v11;
            *(GradientMaskData + 17) = v20[0];
            *(GradientMaskData + 24) = *(v20 + 7);
          }
        }

        else
        {
          if (v13)
          {
            v14 = 0;
          }

          else
          {
            *(GradientMaskData + 16) = v11;
            *(GradientMaskData + 17) = v20[0];
            *(GradientMaskData + 24) = *(v20 + 7);
            v14 = 1;
          }

          *(GradientMaskData + 32) = v14;
        }

        goto LABEL_25;
      }
    }

    else if (v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v10 & 1) == 0)
    {
      *GradientMaskData = v8;
      *(GradientMaskData + 1) = v21;
      *(GradientMaskData + 8) = *(&v21 + 7);
      *(GradientMaskData + 12) = 1;
      goto LABEL_15;
    }

    *(GradientMaskData + 12) = 0;
  }

  if (*(GradientMaskData + 32) == 1)
  {
    *(GradientMaskData + 32) = 0;
  }

LABEL_25:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }
}

void sub_1B2E6A398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::ita::UpdateGradientMaskData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueGradientMaskDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0,std::allocator<md::ita::UpdateGradientMaskData::operator()(ecs2::Query<md::ls::UniqueMaterialData const&,md::ls::UniqueGradientMaskDataHandle const&,md::ls::MaterialPendingProcessing const&>)::$_0>,void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueGradientMaskDataHandle const&,md::ls::MaterialPendingProcessing const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A07858;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::ita::CheckIfNeedsDepthPeel::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::IntendedSceneLayer const&,md::ls::CheckIfRequiresDepthPeel const&>)::$_0,std::allocator<md::ita::CheckIfNeedsDepthPeel::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::IntendedSceneLayer const&,md::ls::CheckIfRequiresDepthPeel const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::IntendedSceneLayer const&,md::ls::CheckIfRequiresDepthPeel const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A078A0;
  a2[1] = v2;
  return result;
}

void md::RasterTileData::~RasterTileData(md::RasterTileData *this)
{
  md::RasterTileData::~RasterTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A07930;
  *(this + 80) = &unk_1F2A07970;
  v2 = *(this + 92);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MapTileData::~MapTileData(this);
}

void ggl::PolygonAnimatableStroke::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::MeshRenderableLogic::debugConsoleString@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v133 = *MEMORY[0x1E69E9840];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v109);
  memset(v119, 0, sizeof(v119));
  v120 = 1065353216;
  v100 = a1;
  v3 = a1[17];
  v4 = *(v3 + 384);
  for (i = *(v3 + 392); v4 != i; ++v4)
  {
    v6 = gdc::Context::context<md::RenderBatchManager>(*v4);
    if (v6)
    {
      v131[0] = &unk_1F2A08658;
      v131[1] = v119;
      v132 = v131;
      v7 = v6[1];
      v8 = v6[2];
      while (v7 != v8)
      {
        v121 = *v7;
        if (!v132)
        {
          std::__throw_bad_function_call[abi:nn200100]();
LABEL_144:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        (*(*v132 + 48))(v132, &v121);
        ++v7;
      }

      std::__function::__value_func<void ()(md::RenderBatch const*)>::~__value_func[abi:nn200100](v131);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v121);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\tMaterials: [\n", 14);
  v9 = v100[17];
  v10 = *(v9 + 384);
  v101 = *(v9 + 392);
  if (v10 == v101)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = *v10;
      v13 = gdc::Registry::storage<md::components::DynamicMeshInstance>(*v10);
      v14 = gdc::Registry::storage<md::components::Material>(v12);
      v15 = v14;
      v16 = (v14 + 32);
      if (*(v14 + 64) - *(v14 + 56) >= v13[8] - v13[7])
      {
        v17 = (v13 + 4);
      }

      else
      {
        v17 = v14 + 32;
      }

      gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::RegistryViewIterator(&v115, v17, (v13 + 4), v16, *(v17 + 24));
      if (v15[8] - v15[7] >= v13[8] - v13[7])
      {
        v18 = (v13 + 4);
      }

      else
      {
        v18 = v16;
      }

      gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::RegistryViewIterator(v129, v18, (v13 + 4), v16, *(v18 + 32));
      v19 = v130;
      v20 = v118;
      v102 = v10;
      v104 = v11;
      v21 = 0;
      if (v130 != v118)
      {
        v22 = *(v115.__locale_ + 4);
        do
        {
          ++v21;
          v23 = v20;
          while (1)
          {
            v24 = v23;
            v23 += 8;
            v118 = v23;
            if (v23 == v22)
            {
              break;
            }

            if (gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::isValid(&v115))
            {
              v20 = v24 + 8;
              goto LABEL_24;
            }
          }

          v20 = v23;
          v23 = v22;
LABEL_24:
          ;
        }

        while (v19 != v23);
      }

      v26 = v13[7];
      v25 = v13[8];
      if (v15[8] - v15[7] >= (v25 - v26))
      {
        v27 = v13 + 4;
      }

      else
      {
        v27 = v16;
      }

      v106 = v27;
      if (v13 + 4 == v27 && v26 != v25)
      {
        do
        {
          if (v15[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v16, *(v26 + 4)))
          {
            v29 = *v26;
            v30 = gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(v15, *v26);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t\t", 2);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "entity: ", 8);
            v31 = MEMORY[0x1B8C61C90](&v123, HIDWORD(v29));
            v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v31, ", materialSheetID: ", 19);
            v33 = MEMORY[0x1B8C61CF0](v32, *v30);
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, "\n", 1);
          }

          v26 += 8;
        }

        while (v26 != v25);
      }

      if (v16 == v106)
      {
        v34 = v15[7];
        v35 = v15[8];
        if (v34 != v35)
        {
          v36 = v15[10];
          do
          {
            if (v13[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v13 + 4, *(v34 + 4)))
            {
              v37 = *v34;
              gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::getComponent<md::components::Material,md::components::DynamicMeshInstance>(v13, *v34);
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t\t", 2);
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "entity: ", 8);
              v38 = MEMORY[0x1B8C61C90](&v123, HIDWORD(v37));
              v39 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v38, ", materialSheetID: ", 19);
              v40 = MEMORY[0x1B8C61CF0](v39, *v36);
              std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, "\n", 1);
            }

            v36 += 3;
            v34 += 8;
          }

          while (v34 != v35);
        }
      }

      v11 = v21 + v104;
      v10 = v102 + 1;
    }

    while (v102 + 1 != v101);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t]\n", 3);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t# Entities with <DynamicMeshInstance, Material>: ", 50);
  v41 = MEMORY[0x1B8C61CB0](&v123, v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, "\n", 1);
  v42 = v100 + 44;
  while (1)
  {
    v42 = *v42;
    if (!v42)
    {
      break;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\tEntity idx: ", 13);
    v43 = MEMORY[0x1B8C61C90](&v123, *(v42 + 5));
    v44 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, " version: ", 10);
    v45 = MEMORY[0x1B8C61CD0](v44, *(v42 + 9));
    v46 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v45, " owner: ", 8);
    v47 = MEMORY[0x1B8C61CD0](v46, *(v42 + 8));
    std::ios_base::getloc((v47 + *(*v47 - 24)));
    v48 = std::locale::use_facet(&v115, MEMORY[0x1E69E5318]);
    (v48->__vftable[2].~facet_0)(v48, 10);
    std::locale::~locale(&v115);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\tInjectedRegistry: [\n", 21);
    if (*(v42 + 34) == 1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t\tId: ", 6);
      if ((*(v42 + 34) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      v49 = MEMORY[0x1B8C61CD0](&v123, *(v42 + 16));
      v50 = "\n";
      v51 = 1;
    }

    else
    {
      v49 = &v123;
      v50 = "\t\tNone\n";
      v51 = 7;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v49, v50, v51);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\tRenderable position: [\n", 24);
    v52 = v42[3];
    if (v52)
    {
      v54 = *(v52 + 32);
      v53 = *(v52 + 40);
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v107 = v53;
      ggl::DataAccess<ggl::DaVinci::InstanceTransform>::DataAccess(&v115, *v54, 0, (*(*v54 + 48) - *(*v54 + 40)) / *(*v54 + 8), 0);
      if (*(v54 + 16))
      {
        v55 = 0;
        v56 = 0;
        do
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t\tTile local [", 14);
          v57 = MEMORY[0x1B8C61CB0](&v123, v56);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v57, "]: (", 4);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "x: ", 3);
          v58 = std::ostream::operator<<();
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v58, ", ", 2);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "y: ", 3);
          v59 = std::ostream::operator<<();
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v59, ", ", 2);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "z: ", 3);
          v60 = std::ostream::operator<<();
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v60, ")\n", 2);
          ++v56;
          v55 += 64;
        }

        while (v56 < *(v54 + 16));
      }

      ggl::BufferMemory::~BufferMemory(&v115);
      if (v107)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v107);
      }
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t]\n", 3);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "DynamicRenderableInjections:[\n", 30);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](&v115, &v121);
  if ((v117 & 0x80u) == 0)
  {
    locale = &v115;
  }

  else
  {
    locale = v115.__locale_;
  }

  if ((v117 & 0x80u) == 0)
  {
    v62 = v117;
  }

  else
  {
    v62 = v116;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, locale, v62);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "]\n", 2);
  if (v117 < 0)
  {
    operator delete(v115.__locale_);
  }

  v121 = *MEMORY[0x1E69E54D8];
  v105 = v121;
  v63 = *(MEMORY[0x1E69E54D8] + 72);
  v103 = *(MEMORY[0x1E69E54D8] + 64);
  *(&v121 + *(v121 - 3)) = v103;
  v108 = v63;
  v123 = v63;
  v124 = MEMORY[0x1E69E5548] + 16;
  if (v127 < 0)
  {
    operator delete(__p);
  }

  v124 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v125);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](v128);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "Batches:[\n", 10);
  v115.__locale_ = 0;
  v121 = &v115;
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v119, 0)[5])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\tMaterialBatches:[\n", 19);
    v129[0] = 0;
    v115.__locale_ = v129;
    v64 = std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v119, 0);
    md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)const::$_2::operator()(&v121, v64 + 3);
    v65 = v123 >= 0 ? &v121 : v121;
    v66 = v123 >= 0 ? HIBYTE(v123) : v122;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, v65, v66);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\t]\n", 3);
    if (SHIBYTE(v123) < 0)
    {
      operator delete(v121);
    }
  }

  v115.__locale_ = 3;
  v121 = &v115;
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v119, 3uLL)[5])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\tDynamicTypedRenderBatches:[\n", 29);
    v129[0] = 1;
    v115.__locale_ = v129;
    v67 = std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v119, 1uLL);
    md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)const::$_2::operator()(&v121, v67 + 3);
    v68 = v123 >= 0 ? &v121 : v121;
    v69 = v123 >= 0 ? HIBYTE(v123) : v122;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, v68, v69);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\t]\n", 3);
    if (SHIBYTE(v123) < 0)
    {
      operator delete(v121);
    }
  }

  v115.__locale_ = 5;
  v121 = &v115;
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v119, 5uLL)[5])
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\tMaterialDecalRenderBatches:[\n", 30);
    v129[0] = 2;
    v115.__locale_ = v129;
    v70 = std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v119, 2uLL);
    md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)const::$_2::operator()(&v121, v70 + 3);
    v71 = v123 >= 0 ? &v121 : v121;
    v72 = v123 >= 0 ? HIBYTE(v123) : v122;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, v71, v72);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\t]\n", 3);
    if (SHIBYTE(v123) < 0)
    {
      operator delete(v121);
    }
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "]\n", 2);
  v129[0] = 0;
  v129[1] = 0;
  for (j = v100[39]; j; j = *j)
  {
    v74 = j[3];
    v75 = j[4];
    while (v74 != v75)
    {
      v76 = *(*v74 + 8);
      if (v76 <= 3)
      {
        ++*(v129 + v76);
      }

      v74 += 8;
    }
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "Renderables:[\n", 14);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v121);
  for (k = 0; k != 4; ++k)
  {
    v78 = *(v129 + k);
    if (v78)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, "\t", 1);
      v79 = strlen((&off_1E7B34CC8)[gdc::ResourceSourceList[k]]);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, (&off_1E7B34CC8)[gdc::ResourceSourceList[k]], v79);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v123, ":", 1);
      v80 = MEMORY[0x1B8C61C90](&v123, v78);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v80, "\n", 1);
    }
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](&v115, &v121);
  v121 = v105;
  *(&v121 + *(v105 - 3)) = v103;
  v123 = v108;
  v124 = MEMORY[0x1E69E5548] + 16;
  if (v127 < 0)
  {
    operator delete(__p);
  }

  v124 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v125);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](v128);
  if ((v117 & 0x80u) == 0)
  {
    v81 = &v115;
  }

  else
  {
    v81 = v115.__locale_;
  }

  if ((v117 & 0x80u) == 0)
  {
    v82 = v117;
  }

  else
  {
    v82 = v116;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, v81, v82);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "]\n", 2);
  if (v117 < 0)
  {
    operator delete(v115.__locale_);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "Dynamic Renderables: [\n", 23);
  for (m = v100[39]; m; m = *m)
  {
    v84 = m[3];
    v85 = m[4];
    if (v84 != v85)
    {
      v86 = 0;
      v87 = 0;
      v88 = 0;
      do
      {
        if (*(*v84 + 148) == 1)
        {
          v89 = (v88 - v86) >> 3;
          v90 = v89 + 1;
          if ((v89 + 1) >> 61)
          {
            goto LABEL_144;
          }

          if (-v86 >> 2 > v90)
          {
            v90 = -v86 >> 2;
          }

          if (-v86 >= 0x7FFFFFFFFFFFFFF8)
          {
            v91 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v91 = v90;
          }

          if (v91)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v91);
          }

          v92 = (8 * v89);
          v93 = (v92 - (v87 - v86));
          *v92 = *v84;
          v88 = v92 + 1;
          memcpy(v93, v86, v87 - v86);
          if (v86)
          {
            operator delete(v86);
          }

          v86 = v93;
          v87 = v88;
        }

        ++v84;
      }

      while (v84 != v85);
      if (v86 != v88)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\tRegistry ", 10);
        v94 = MEMORY[0x1B8C61CD0](&v110, *(m + 8));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v94, ": [\n", 4);
        for (n = v86; n != v87; ++n)
        {
          v96 = *n;
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\t\tRenderable: ", 14);
          v97 = MEMORY[0x1B8C61C40](&v110, v96);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v97, "\n", 1);
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "\t]\n", 3);
      }

      if (v86)
      {
        operator delete(v86);
      }
    }
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v110, "]\n", 2);
  std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::~__hash_table(v119);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a2, v109);
  v109[0] = v105;
  *(v109 + *(v105 - 3)) = v103;
  v110 = v108;
  v111 = MEMORY[0x1E69E5548] + 16;
  if (v113 < 0)
  {
    operator delete(v112[7].__locale_);
  }

  v111 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v112);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v114);
}

void sub_1B2E6BAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::locale a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a18 = a14;
  *(&a18 + *(a14 - 24)) = a11;
  a20 = a10;
  a21 = MEMORY[0x1E69E5548] + 16;
  if (a34 < 0)
  {
    operator delete(__p);
  }

  a21 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a22);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a37);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::RenderBatch const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(void *a1, unint64_t a2)
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

void sub_1B2E6C1B4(_Unwind_Exception *a1)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v1[4]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)const::$_2::operator()(_BYTE *a1, void *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v15);
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v16, "\t\t(size:", 8);
      v7 = MEMORY[0x1B8C61CB0](&v16, v5[4]);
      v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, ", count:", 8);
      v9 = MEMORY[0x1B8C61C90](v8, *(v5 + 10));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, ")\n", 2);
      v10 = v5[1];
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
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != v4);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a1, v15);
  v15[0] = *MEMORY[0x1E69E54D8];
  v13 = *(MEMORY[0x1E69E54D8] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v16 = v13;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v20);
}

void sub_1B2E6C3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  a10 = *MEMORY[0x1E69E54D8];
  v30 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a10 + *(a10 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a12 = v30;
  a13 = MEMORY[0x1E69E5548] + 16;
  if (a26 < 0)
  {
    operator delete(__p);
  }

  a13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a14);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a29);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v2[4]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

BOOL gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::isValid(uint64_t a1)
{
  v1 = 0;
  v2 = *(*(a1 + 24) + 4);
  v3 = a1 + 8;
  do
  {
    v4 = *(v3 + v1);
    Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v4, v2);
    v6 = v4[4];
    v7 = v6 == Index || v1 == 8;
    v1 += 8;
  }

  while (!v7);
  return v6 != Index;
}

void *gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::RegistryViewIterator(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  v6 = *(a2 + 32);
  if (v6 != a5 && !gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::isValid(a1))
  {
    v8 = a5 + 8;
    do
    {
      a1[3] = v8;
      if (v8 == v6)
      {
        break;
      }

      v8 += 8;
    }

    while (!gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::RegistryViewIterator::isValid(a1));
  }

  return a1;
}

void *std::__function::__func<md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)::$_0,std::allocator<md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)::$_0>,void ()(md::RenderBatch const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v17[0] = &v18;
  v17[1] = &v18;
  v17[2] = &v18;
  v18 = 0;
  v3 = *(v2 + 224);
  if (v3 == -1)
  {
    v15 = std::__throw_bad_variant_access[abi:nn200100]();
    return std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v15, v16);
  }

  v19 = v17;
  (off_1F2A08690[v3])(&v19, v2);
  v5 = *(a1 + 8);
  v17[0] = &v18;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v5, v18)[4];
  if (!v6)
  {
LABEL_8:
    v9 = *(a1 + 8);
    v17[0] = &v18;
    v10 = std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v9, v18);
    v19 = *(v2 + 264);
    v17[0] = &v19;
    result = std::__tree<std::__value_type<unsigned long,unsigned int>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned int>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>((v10 + 3), v19);
    v12 = 1;
    goto LABEL_10;
  }

  v7 = *(v2 + 264);
  while (1)
  {
    v8 = v6[4];
    if (v7 >= v8)
    {
      break;
    }

LABEL_7:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (v8 < v7)
  {
    ++v6;
    goto LABEL_7;
  }

  v13 = *(a1 + 8);
  v17[0] = &v18;
  v14 = std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v13, v18);
  v19 = *(v2 + 264);
  v17[0] = &v19;
  result = std::__tree<std::__value_type<unsigned long,unsigned int>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned int>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>((v14 + 3), v19);
  v12 = *(result + 10) + 1;
LABEL_10:
  *(result + 10) = v12;
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::map<unsigned long,unsigned int>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t a2)
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

void sub_1B2E6C9A8(_Unwind_Exception *a1)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v1[4]);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<unsigned long,unsigned int>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned int>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__function::__func<md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)::$_0,std::allocator<md::MeshRenderableLogic::buildDebugDetailsString(std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> &)::$_0>,void ()(md::RenderBatch const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A08658;
  a2[1] = v2;
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__rehash<false>(uint64_t a1, size_t __n)
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

void sub_1B2E6CE04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::default_delete<md::InstanceData>::operator()[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<md::components::CustomRenderState>::operator=[abi:nn200100]<md::components::CustomRenderState&,void>(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (*(a1 + 24) == 1)
  {
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 8);
    *a1 = v4;
    *(a1 + 8) = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    v7 = a2[1];
    *a1 = v4;
    *(a1 + 8) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = 1;
  }

  return a1;
}

void *geo::Pool<md::MaterialRenderable>::construct<md::MaterialRenderable>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    v5 = malloc_type_malloc(400 * *(a1 + 24), 0x10E2040ACD1278FuLL);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v5);
    v4 = *(a1 + 40);
    v6 = &v5[400 * *(a1 + 24) - 400];
    if (v6 >= v5)
    {
      do
      {
        *v6 = v4;
        v4 = v6;
        v6 -= 400;
      }

      while (v6 >= v5);
      v4 = v6 + 400;
    }

    *(a1 + 40) = v4;
  }

  *(a1 + 40) = *v4;
  *v4 = &unk_1F2A3CEF8;
  v7 = *(a2 + 8);
  v4[3] = *(a2 + 24);
  *(v4 + 1) = v7;
  v8 = *(a2 + 40);
  v4[4] = *(a2 + 32);
  v4[5] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 48);
  v10 = *(a2 + 80);
  *(v4 + 4) = *(a2 + 64);
  *(v4 + 5) = v10;
  *(v4 + 3) = v9;
  v11 = *(a2 + 96);
  v12 = *(a2 + 112);
  v13 = *(a2 + 128);
  *(v4 + 143) = *(a2 + 143);
  *(v4 + 7) = v12;
  *(v4 + 8) = v13;
  *(v4 + 6) = v11;
  *(v4 + 152) = 0;
  *(v4 + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    v14 = *(a2 + 160);
    v4[19] = *(a2 + 152);
    v4[20] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    *(v4 + 168) = *(a2 + 168);
    *(v4 + 176) = 1;
  }

  v4[23] = *(a2 + 184);
  *(v4 + 96) = 0;
  if (*(a2 + 193) == 1)
  {
    *(v4 + 192) = *(a2 + 192);
    *(v4 + 193) = 1;
  }

  v15 = *(a2 + 196);
  *(v4 + 53) = *(a2 + 212);
  *(v4 + 196) = v15;
  *v4 = &unk_1F2A0B978;
  v16 = *(a2 + 224);
  v4[27] = *(a2 + 216);
  v4[28] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a2 + 232);
  *(v4 + 240) = *(a2 + 240);
  v4[29] = v17;
  v18 = *(a2 + 256);
  v4[31] = *(a2 + 248);
  v4[32] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(v4 + 264) = *(a2 + 264);
  v19 = *(a2 + 280);
  v4[34] = *(a2 + 272);
  v4[35] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = *(a2 + 296);
  v4[36] = *(a2 + 288);
  v4[37] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *(v4 + 304) = 0;
  *(v4 + 360) = 0;
  if (*(a2 + 360) == 1)
  {
    std::construct_at[abi:nn200100]<md::RasterOverlayRenderPatch,md::RasterOverlayRenderPatch const&,md::RasterOverlayRenderPatch*>((v4 + 38), a2 + 304);
    *(v4 + 360) = 1;
  }

  *(v4 + 184) = *(a2 + 368);
  *(v4 + 372) = 0;
  *(v4 + 388) = 0;
  if (*(a2 + 388) == 1)
  {
    *(v4 + 372) = *(a2 + 372);
    *(v4 + 388) = 1;
  }

  *(v4 + 392) = *(a2 + 392);
  return v4;
}

void *md::MeshRenderableLogic::findRegistryToInject(uint64_t a1, uint64_t a2)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v14[0] = &unk_1F2A08258;
  v14[3] = v14;
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::__value_func[abi:nn200100](&v11, v14);
  md::FilteredIterator<std::vector<gdc::Registry *>>::FilteredIterator(v15, a1 + 384, &v11, *(a1 + 384));
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v11);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v14);
  md::FilteredIterator<std::vector<gdc::Registry *>>::begin(&v11, v15);
  md::FilteredIterator<std::vector<gdc::Registry *>>::end(v9, v15);
  v4 = 0;
  v5 = 0;
  while (v9[1] != v12)
  {
    v6 = *v12;
    if (registryContainsInstance(*v12, *a2, *(a2 + 24)))
    {
      v7 = *(gdc::Context::context<md::components::SharedTransformData>(v6) + 1);
      if (v7 >= v5)
      {
        v4 = v6;
      }

      if (v7 > v5)
      {
        v5 = v7;
      }
    }

    md::FilteredIterator<std::vector<gdc::Registry *>>::operator++(&v11);
  }

  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v10);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v13);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v16);
  return v4;
}

void sub_1B2E6D28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](va);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v10 - 72);
  _Unwind_Resume(a1);
}

void md::MeshRenderableLogic::injectDynamicRenderable(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>((a1 + 336), a2);
  if (!a3)
  {
    return;
  }

  v7 = v6;
  if (!v6)
  {
    return;
  }

  *(v6 + 16) = *(a3 + 40);
  *(v6 + 34) = 1;
  v8 = *(a3 + 40);
  v9 = *(a1 + 384);
  if (!*&v9)
  {
    goto LABEL_20;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = *(a3 + 40);
    if (*&v9 <= v8)
    {
      v11 = v8 % *(a1 + 384);
    }
  }

  else
  {
    v11 = (v9.i32[0] - 1) & v8;
  }

  v12 = *(*(a1 + 376) + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v14 >= *&v9)
      {
        v14 %= *&v9;
      }
    }

    else
    {
      v14 &= *&v9 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_20;
    }

LABEL_19:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  if (*(v13 + 8) != v8)
  {
    goto LABEL_19;
  }

  v16 = v13[4];
  v15 = v13[5];
  if (v16 >= v15)
  {
    v18 = v13[3];
    v19 = (v16 - v18) >> 3;
    if ((v19 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 2;
    if (v20 >> 2 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v22);
    }

    v23 = (8 * v19);
    *v23 = a2;
    v17 = 8 * v19 + 8;
    v24 = v13[3];
    v25 = v13[4] - v24;
    v26 = v23 - v25;
    memcpy(v23 - v25, v24, v25);
    v27 = v13[3];
    v13[3] = v26;
    v13[4] = v17;
    v13[5] = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v16 = a2;
    v17 = (v16 + 1);
  }

  v13[4] = v17;
  v38 = *(a3 + 40);
  v39 = &v38;
  v28 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>((a1 + 296), v38);
  v39 = v7[3];
  std::vector<md::FrameGraphPass *>::emplace_back<md::FrameGraphPass * const&>((v28 + 3), &v39);
  v29 = *(a1 + 424);
  LOWORD(v39) = *(a3 + 40);
  std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short>(v29, v39);
  v30 = v28[3];
  v31 = v28[4];
  v32 = 126 - 2 * __clz((v31 - v30) >> 3);
  if (v31 == v30)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **,false>(v30, v31, v33, 1);
  v34 = *(a1 + 424);
  LOWORD(v39) = *(a3 + 40);
  std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short>(v34, v39);
  if (*(v7 + 38) == 1)
  {
    RegistryByIdentifier = md::RegistryManager::getRegistryByIdentifier(*(a1 + 136), *(v7 + 18));
    if (RegistryByIdentifier)
    {
      v36 = v7[5];
      v37 = gdc::Registry::storage<md::components::RenderableInjected>(RegistryByIdentifier);
      gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v37, v36);
    }
  }
}

void md::MeshRenderableLogic::removeDynamicRenderableInjection(uint64_t a1, unint64_t a2)
{
  v16 = a2;
  v3 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>((a1 + 336), a2);
  if (v3)
  {
    v4 = v3;
    if (*(v3 + 34) == 1)
    {
      v5 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((a1 + 296), *(v3 + 16));
      if (v5)
      {
        v7 = v5[3];
        v6 = v5[4];
        if (v7 != v6)
        {
          while (*v7 != v4[3])
          {
            if (++v7 == v6)
            {
              goto LABEL_16;
            }
          }

          if (v7 != v6)
          {
            v8 = v7 + 1;
            if (v7 + 1 != v6)
            {
              do
              {
                if (*v8 != v4[3])
                {
                  *v7++ = *v8;
                }

                ++v8;
              }

              while (v8 != v6);
              v6 = v5[4];
            }
          }
        }

        if (v7 != v6)
        {
          v5[4] = v7;
        }

LABEL_16:
        std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(*(a1 + 424), *(v4 + 16));
        if ((*(v4 + 34) & 1) == 0)
        {
          v15 = std::__throw_bad_optional_access[abi:nn200100]();
          std::__function::__func<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(unsigned long,gm::Matrix<float,4,4> &)#1},std::allocator<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(unsigned long,gm::Matrix<float,4,4> &)#1}>,void ()(unsigned long,gm::Matrix<float,4,4> &)>::destroy_deallocate(v15);
          return;
        }
      }

      v9 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((a1 + 376), *(v4 + 16));
      if (v9)
      {
        v10 = v9;
        v11 = std::remove[abi:nn200100]<std::__wrap_iter<gdc::Entity *>,gdc::Entity>(v9[3], v9[4], &v16);
        if (v11 != v10[4])
        {
          v10[4] = v11;
        }
      }
    }

    if (*(v4 + 34) == 1)
    {
      *(v4 + 34) = 0;
    }

    if (*(v4 + 38) == 1)
    {
      RegistryByIdentifier = md::RegistryManager::getRegistryByIdentifier(*(a1 + 136), *(v4 + 18));
      if (RegistryByIdentifier)
      {
        v13 = gdc::Registry::storage<md::components::RenderableInjected>(RegistryByIdentifier);
        v14 = v4[5];

        gdc::ComponentStorageWrapper<md::components::RenderableInjected>::remove(v13, v14);
      }
    }
  }
}

__n128 std::__function::__func<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(unsigned long,gm::Matrix<float,4,4> &)#1},std::allocator<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(unsigned long,gm::Matrix<float,4,4> &)#1}>,void ()(unsigned long,gm::Matrix<float,4,4> &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A08378;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unsigned __int16 *std::remove[abi:nn200100]<std::__wrap_iter<gdc::Entity *>,gdc::Entity>(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  result = a2;
  if (a1 != a2)
  {
    v5 = *a3;
    result = a1;
    while (*result != v5 || result[1] != a3[1] || *(result + 1) != *(a3 + 1))
    {
      result += 4;
      if (result == a2)
      {
        result = a2;
        break;
      }
    }

    if (result != a2)
    {
      for (i = result + 4; i != a2; i += 4)
      {
        if (*i != v5 || i[1] != a3[1] || *(i + 1) != *(a3 + 1))
        {
          *result = *i;
          result += 4;
          v5 = *a3;
        }
      }
    }
  }

  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
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
        if (*(*v8 + 8) < *(*v9 + 8))
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
      v87 = *(v83 + 8);
      v88 = *(*v9 + 8);
      v89 = *(v85 + 8);
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
      if (*(*v8 + 8) < *(v83 + 8))
      {
        *v84 = *v8;
        *v8 = v83;
        v139 = *v84;
        v140 = *v82;
        v141 = *(v139 + 8);
        if (v141 < *(v140 + 8))
        {
          v9[1] = v139;
          v9[2] = v140;
          v142 = *v9;
          if (v141 < *(*v9 + 8))
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

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
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
            v99 = *(v97 + 8);
            if (v99 < *(v98 + 8))
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
                if (v99 >= *(v98 + 8))
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
          v137 = *(v135 + 8);
          if (v137 < *(v136 + 8))
          {
            v138 = v7;
            do
            {
              *v138 = v136;
              v136 = *(v138 - 2);
              --v138;
            }

            while (v137 < *(v136 + 8));
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
            if (2 * v105 + 2 < v10 && *(v108 + 8) < *(v107[1] + 8))
            {
              v108 = v107[1];
              ++v107;
              v106 = 2 * v105 + 2;
            }

            result = &v9[v105];
            v109 = *result;
            v110 = *(*result + 8);
            if (*(v108 + 8) >= v110)
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
                if (v113 < v10 && *(v108 + 8) < *(v107[1] + 8))
                {
                  v108 = v107[1];
                  ++v107;
                  v112 = v113;
                }

                result = v111;
                v106 = v112;
              }

              while (*(v108 + 8) >= v110);
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
              result = *(v119 + 8);
              if (result >= *(v123 + 8))
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
              v131 = *(*v118 + 8);
              if (*(*v128 + 8) < v131)
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

                while (*(*v128 + 8) < v131);
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
    v14 = *(*v8 + 8);
    if (v10 >= 0x81)
    {
      v15 = *v11;
      v16 = *v9;
      v17 = *(*v11 + 8);
      v18 = *(*v9 + 8);
      if (v17 >= v18)
      {
        if (v14 < v17)
        {
          *v11 = v13;
          *v8 = v15;
          v23 = *v9;
          if (*(*v11 + 8) < *(*v9 + 8))
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
        if (*(*v8 + 8) < v18)
        {
          *v11 = *v8;
LABEL_27:
          *v8 = v16;
        }
      }

      v25 = v11 - 1;
      v26 = *(v11 - 1);
      v27 = v9[1];
      v28 = *(v26 + 8);
      v29 = *(v27 + 8);
      v30 = *(a2 - 2);
      v31 = *(v30 + 8);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v9[1];
          if (*(*v25 + 8) < *(v32 + 8))
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
        if (*(v33 + 8) < v29)
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
      v38 = *(v36 + 8);
      v39 = *(v37 + 8);
      v40 = *(a2 - 3);
      v41 = *(v40 + 8);
      if (v38 >= v39)
      {
        if (v41 < v38)
        {
          *v34 = v40;
          *(a2 - 3) = v35;
          v42 = v9[2];
          if (*(*v34 + 8) < *(v42 + 8))
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
        if (*(v43 + 8) < v39)
        {
          *v34 = v43;
LABEL_48:
          *(a2 - 3) = v37;
        }
      }

      v44 = *v12;
      v45 = *v25;
      v46 = *(*v12 + 8);
      v47 = *(*v25 + 8);
      v48 = *v34;
      v49 = *(*v34 + 8);
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
    v21 = *(*v9 + 8);
    v22 = *(*v12 + 8);
    if (v21 >= v22)
    {
      if (v14 < v21)
      {
        *v9 = v13;
        *v8 = v19;
        v24 = *v12;
        if (*(*v9 + 8) < *(*v12 + 8))
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
    if (*(*v8 + 8) < v22)
    {
      *v9 = *v8;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v51 = *v9;
    if (a4)
    {
      v52 = *(v51 + 8);
LABEL_60:
      v53 = v9;
      do
      {
        v54 = v53;
        v56 = v53[1];
        ++v53;
        v55 = v56;
      }

      while (*(v56 + 8) < v52);
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

        while (*(v59 + 8) >= v52);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 8) >= v52);
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

          while (*(v63 + 8) < v52);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 8) >= v52);
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

      v65 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **>(v9, v54);
      v9 = v54 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **>(v54 + 1, a2);
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
        result = std::__introsort<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **,false>(v7, v54, a3, a4 & 1);
        a4 = 0;
        v9 = v54 + 1;
      }
    }

    else
    {
      v52 = *(v51 + 8);
      if (*(*(v9 - 1) + 8) < v52)
      {
        goto LABEL_60;
      }

      if (v52 >= *(*v8 + 8))
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

        while (v52 >= *(*v9 + 8));
      }

      else
      {
        do
        {
          v66 = v9[1];
          ++v9;
        }

        while (v52 >= *(v66 + 8));
      }

      v68 = a2;
      if (v9 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v52 < *(v69 + 8));
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

          while (v52 >= *(v72 + 8));
          do
          {
            v73 = *--v68;
            v71 = v73;
          }

          while (v52 < *(v73 + 8));
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
  v78 = *(v77 + 8);
  v79 = *(*v9 + 8);
  v80 = *v8;
  v81 = *(*v8 + 8);
  if (v78 >= v79)
  {
    if (v81 < v78)
    {
      v9[1] = v80;
      *v8 = v77;
      v134 = *v9;
      v133 = v9[1];
      if (*(v133 + 8) < *(*v9 + 8))
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
      if (*(*v8 + 8) >= v79)
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

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **>(uint64_t *a1, uint64_t *a2)
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

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::MeshRenderableLogic::injectDynamicRenderable(gdc::Entity,gdc::Registry *)::$_0 &,md::MeshRenderable **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
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

uint64_t std::function<BOOL ()(gdc::Registry * const&)>::operator()(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*a1 + 48);

    return v2();
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__func<md::MeshRenderableLogic::findRegistryToInject(md::CameraContext const&,gm::Box<double,3> const&)::$_0,std::allocator<md::MeshRenderableLogic::findRegistryToInject(md::CameraContext const&,gm::Box<double,3> const&)::$_0>,BOOL ()(gdc::Registry * const&)>::operator()(v4);
  }
}

void *std::__function::__func<md::MeshRenderableLogic::findRegistryToInject(md::CameraContext const&,gm::Box<double,3> const&)::$_0,std::allocator<md::MeshRenderableLogic::findRegistryToInject(md::CameraContext const&,gm::Box<double,3> const&)::$_0>,BOOL ()(gdc::Registry * const&)>::operator()(uint64_t a1, void **a2)
{
  result = gdc::Context::context<md::MapDataType>(*a2);
  if (result)
  {
    return (*result == 62);
  }

  return result;
}

void std::__function::__func<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *a3;
    v5 = *(a1 + 8);
    v6 = 8 * v3;
    do
    {
      v7 = *v4++;
      md::MeshRenderableLogic::removeDynamicEntity(v5, v7);
      v6 -= 8;
    }

    while (v6);
  }
}

void md::MeshRenderableLogic::removeDynamicEntity(void *a1, unint64_t a2)
{
  v4 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(a1 + 42, a2);
  if (v4)
  {
    v5 = v4;
    md::MeshRenderableLogic::removeDynamicRenderableInjection(a1, a2);
    v6 = v5[3];
    if (v6 && a1[24])
    {
      (**v6)(v6);
      *v6 = a1[27];
      a1[27] = v6;
    }

    v7 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(a1 + 42, a2);
    if (v7)
    {
      v8 = a1[43];
      v9 = v7[1];
      v10 = vcnt_s8(v8);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        if (v9 >= *&v8)
        {
          v9 %= *&v8;
        }
      }

      else
      {
        v9 &= *&v8 - 1;
      }

      v11 = a1[42];
      v12 = *(v11 + 8 * v9);
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12 != v7);
      if (v13 == a1 + 44)
      {
        goto LABEL_24;
      }

      v14 = v13[1];
      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v9)
      {
LABEL_24:
        if (!*v7)
        {
          goto LABEL_25;
        }

        v15 = *(*v7 + 8);
        if (v10.u32[0] > 1uLL)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v9)
        {
LABEL_25:
          *(v11 + 8 * v9) = 0;
        }
      }

      v16 = *v7;
      if (*v7)
      {
        v17 = *(v16 + 8);
        if (v10.u32[0] > 1uLL)
        {
          if (v17 >= *&v8)
          {
            v17 %= *&v8;
          }
        }

        else
        {
          v17 &= *&v8 - 1;
        }

        if (v17 != v9)
        {
          *(a1[42] + 8 * v17) = v13;
          v16 = *v7;
        }
      }

      *v13 = v16;
      *v7 = 0;
      --a1[45];

      operator delete(v7);
    }
  }
}

uint64_t std::__function::__func<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<md::MeshRenderableLogic::updateDynamicMeshes(md::CameraContext const&,md::MaterialContext const&)::$_0::operator() const(gdc::Entity,md::components::DynamicMeshInstance &,md::components::Material &)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A08330;
  a2[1] = v2;
  return result;
}

uint64_t std::default_delete<md::InstanceData>::operator()[abi:nn200100](uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v1);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__shared_ptr_pointer<md::InstanceData *,std::shared_ptr<md::InstanceData>::__shared_ptr_default_delete<md::InstanceData,md::InstanceData>,std::allocator<md::InstanceData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::Registry::storage<md::components::GeneratedTexture>(uint64_t a1)
{
  v3 = 0x275245E41E832F30;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x275245E41E832F30uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::GeneratedTexture>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 2 * (v3 - a1[7]));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 16);
    v8 = *(v7 - 8);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[1];
    *v6 = v9;
    v6[1] = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = a1[11];
    v12 = *(v11 - 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    a1[11] = v11 - 16;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::GeneratedTexture>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::GeneratedTexture>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(gdc::Entity,gdc::Registry *)>::~__value_func[abi:nn200100](uint64_t a1)
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

BOOL gdc::Registry::remove<md::components::VisibilityChanged,gdc::Entity *>(_BOOL8 result, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = gdc::Registry::storage<md::components::VisibilityChanged>(v5);
      v7 = *v4++;
      result = gdc::ComponentStorageWrapper<md::components::VisibilityChanged>::remove(v6, v7);
    }

    while (v4 != a3);
  }

  return result;
}

BOOL gdc::Registry::remove<md::components::CustomRenderStateChanged,gdc::Entity *>(_BOOL8 result, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = gdc::Registry::storage<md::components::CustomRenderStateChanged>(v5);
      v7 = *v4++;
      result = gdc::ComponentStorageWrapper<md::components::CustomRenderStateChanged>::remove(v6, v7);
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t std::function<void ()(gdc::Entity,gdc::Registry *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return md::MeshRenderableLogic::updateDynamicEntityCustomRenderState(v4);
}

void *md::MeshRenderableLogic::updateDynamicEntityCustomRenderState(uint64_t a1, unint64_t a2, void *a3)
{
  result = gdc::Context::context<md::RenderBatchManager>(a3);
  if (!result)
  {
    v7 = gdc::Registry::storage<md::components::CustomRenderState>(a3);
    v8 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v7, a2);
    result = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>((a1 + 336), a2);
    if (result)
    {
      if (v8)
      {
        v9 = result[3] + 152;

        return std::optional<md::components::CustomRenderState>::operator=[abi:nn200100]<md::components::CustomRenderState&,void>(v9, v8);
      }
    }
  }

  return result;
}

void *md::MeshRenderableLogic::updateDynamicEntityVisibility(uint64_t a1, unint64_t a2, void *a3)
{
  result = gdc::Context::context<md::RenderBatchManager>(a3);
  if (!result)
  {
    v7 = gdc::Registry::storage<md::components::Visibility>(a3);
    v8 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v7, a2);
    result = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>((a1 + 336), a2);
    if (result)
    {
      if (v8)
      {
        *(result[3] + 144) = *v8;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Entity,gdc::Registry *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Entity,gdc::Registry *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(gdc::Entity,gdc::Registry *)>::operator()(void *a1, void *a2, void *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, *a2, *a3);
}

__n128 std::__function::__func<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Entity,gdc::Registry *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Entity,gdc::Registry *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(gdc::Entity,gdc::Registry *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A084F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::MeshRenderable *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__introsort<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,false>(uint64_t result, int8x16_t *a2, unsigned int (**a3)(uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = &a2[-1].i64[1];
  v10 = v8;
  v122 = a2;
  while (1)
  {
    v8 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = (*a3)(*v9, v10->i64[0]);
      if (result)
      {
        v76 = v10->i64[0];
        v10->i64[0] = *v9;
LABEL_103:
        *v9 = v76;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v79 = &v10->i64[1];
      v81 = v10 == a2 || v79 == a2;
      if (a5)
      {
        if (!v81)
        {
          v82 = 0;
          v83 = v10;
          do
          {
            v85 = *v83;
            v84 = v83[1];
            v83 = v79;
            result = (*a3)(v84, v85);
            if (result)
            {
              v86 = *v83;
              v87 = v82;
              while (1)
              {
                *(&v10->i64[1] + v87) = *(v10->i64 + v87);
                if (!v87)
                {
                  break;
                }

                result = (*a3)(v86, *(&v10->i64[-1] + v87));
                v87 -= 8;
                if ((result & 1) == 0)
                {
                  v88 = (&v10->i64[1] + v87);
                  goto LABEL_125;
                }
              }

              v88 = v10;
LABEL_125:
              *v88 = v86;
            }

            v79 = v83 + 1;
            v82 += 8;
          }

          while (v83 + 1 != a2);
        }
      }

      else if (!v81)
      {
        do
        {
          v117 = v8->i64[0];
          v116 = v8->i64[1];
          v8 = v79;
          result = (*a3)(v116, v117);
          if (result)
          {
            v118 = v8->i64[0];
            v119 = v8;
            do
            {
              v120 = v119;
              v121 = *--v119;
              *v120 = v121;
              result = (*a3)(v118, *(v120 - 2));
            }

            while ((result & 1) != 0);
            *v119 = v118;
          }

          v79 = &v8->i64[1];
        }

        while (&v8->u64[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v89 = (v11 - 2) >> 1;
        v124 = v89;
        do
        {
          v90 = v89;
          if (v124 >= v89)
          {
            v91 = (2 * v89) | 1;
            v92 = &v8->i64[v91];
            if (2 * v89 + 2 < v11 && (*a3)(*v92, v92[1]))
            {
              ++v92;
              v91 = 2 * v90 + 2;
            }

            v93 = &v8->i64[v90];
            result = (*a3)(*v92, *v93);
            if ((result & 1) == 0)
            {
              v94 = *v93;
              do
              {
                v95 = v92;
                *v93 = *v92;
                if (v124 < v91)
                {
                  break;
                }

                v96 = (2 * v91) | 1;
                v92 = &v8->i64[v96];
                v97 = 2 * v91 + 2;
                if (v97 < v11 && (*a3)(*v92, v92[1]))
                {
                  ++v92;
                  v96 = v97;
                }

                result = (*a3)(*v92, v94);
                v93 = v95;
                v91 = v96;
              }

              while (!result);
              *v95 = v94;
            }
          }

          v89 = v90 - 1;
        }

        while (v90);
        v98 = v122;
        do
        {
          v99 = v98;
          v100 = 0;
          v125 = v8->i64[0];
          v101 = v8;
          do
          {
            v102 = &v101[v100];
            v103 = v102 + 1;
            v104 = (2 * v100) | 1;
            v105 = 2 * v100 + 2;
            if (v105 >= v11)
            {
              v100 = (2 * v100) | 1;
            }

            else
            {
              v107 = v102[2];
              v106 = v102 + 2;
              result = (*a3)(*(v106 - 1), v107);
              if (result)
              {
                v103 = v106;
                v100 = v105;
              }

              else
              {
                v100 = v104;
              }
            }

            *v101 = *v103;
            v101 = v103;
          }

          while (v100 <= (v11 - 2) / 2);
          v98 = v99 - 1;
          if (v103 == v99 - 1)
          {
            *v103 = v125;
          }

          else
          {
            *v103 = *v98;
            *v98 = v125;
            v108 = (v103 - v8 + 8) >> 3;
            v109 = v108 < 2;
            v110 = v108 - 2;
            if (!v109)
            {
              v111 = v110 >> 1;
              v112 = &v8->i64[v110 >> 1];
              result = (*a3)(*v112, *v103);
              if (result)
              {
                v113 = *v103;
                do
                {
                  v114 = v112;
                  *v103 = *v112;
                  if (!v111)
                  {
                    break;
                  }

                  v111 = (v111 - 1) >> 1;
                  v112 = &v8->i64[v111];
                  result = (*a3)(*v112, v113);
                  v103 = v114;
                }

                while ((result & 1) != 0);
                *v114 = v113;
              }
            }
          }

          v109 = v11-- <= 2;
        }

        while (!v109);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      v17 = (v13)(v10->i64[0], v10->i64[v12]);
      v18 = (*a3)(*v9, v10->i64[0]);
      if (v17)
      {
        v19 = v10->i64[v12];
        if (v18)
        {
          v10->i64[v12] = *v9;
          *v9 = v19;
        }

        else
        {
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v19;
          if ((*a3)(*v9))
          {
            v31 = v10->i64[0];
            v10->i64[0] = *v9;
            *v9 = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = v10->i64[0];
        v10->i64[0] = *v9;
        *v9 = v22;
        if ((*a3)(v10->i64[0], v10->i64[v12]))
        {
          v23 = v10->i64[v12];
          v10->i64[v12] = v10->i64[0];
          v10->i64[0] = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = (v13)(v10->i64[v12], v10->i64[0]);
    v15 = (*a3)(*v9, v10->i64[v12]);
    if (v14)
    {
      v16 = v10->i64[0];
      if (v15)
      {
        v10->i64[0] = *v9;
        *v9 = v16;
      }

      else
      {
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v16;
        if ((*a3)(*v9))
        {
          v24 = v10->i64[v12];
          v10->i64[v12] = *v9;
          *v9 = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v10->i64[v12];
      v10->i64[v12] = *v9;
      *v9 = v20;
      if ((*a3)(v10->i64[v12], v10->i64[0]))
      {
        v21 = v10->i64[0];
        v10->i64[0] = v10->i64[v12];
        v10->i64[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = (*a3)(v8->i64[v12 - 1], v8->i64[1]);
    v27 = (*a3)(a2[-1].i64[0], v8->i64[v12 - 1]);
    if (v26)
    {
      v28 = v8->i64[1];
      if (v27)
      {
        v8->i64[1] = a2[-1].i64[0];
        a2[-1].i64[0] = v28;
      }

      else
      {
        v8->i64[1] = v8->i64[v25];
        v8->i64[v25] = v28;
        if ((*a3)(a2[-1].i64[0]))
        {
          v32 = v8->i64[v25];
          v8->i64[v25] = a2[-1].i64[0];
          a2[-1].i64[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v8->i64[v25];
      v8->i64[v25] = a2[-1].i64[0];
      a2[-1].i64[0] = v29;
      if ((*a3)(v8->i64[v25], v8->i64[1]))
      {
        v30 = v8->i64[1];
        v8->i64[1] = v8->i64[v25];
        v8->i64[v25] = v30;
      }
    }

    v33 = a2;
    v34 = v12 + 1;
    v35 = (*a3)(v8->i64[v12 + 1], v8[1].i64[0]);
    v36 = (*a3)(v33[-2].i64[1], v8->i64[v12 + 1]);
    if (v35)
    {
      v37 = v8[1].i64[0];
      if (v36)
      {
        v8[1].i64[0] = v122[-2].i64[1];
        v122[-2].i64[1] = v37;
      }

      else
      {
        v8[1].i64[0] = v8->i64[v34];
        v8->i64[v34] = v37;
        if ((*a3)(v122[-2].i64[1]))
        {
          v40 = v8->i64[v34];
          v8->i64[v34] = v122[-2].i64[1];
          v122[-2].i64[1] = v40;
        }
      }
    }

    else if (v36)
    {
      v38 = v8->i64[v34];
      v8->i64[v34] = v122[-2].i64[1];
      v122[-2].i64[1] = v38;
      if ((*a3)(v8->i64[v34], v8[1].i64[0]))
      {
        v39 = v8[1].i64[0];
        v8[1].i64[0] = v8->i64[v34];
        v8->i64[v34] = v39;
      }
    }

    v41 = (*a3)(v8->i64[v12], v8->i64[v25]);
    v42 = (*a3)(v8->i64[v34], v8->i64[v12]);
    if ((v41 & 1) == 0)
    {
      v44 = v8->i64[v12];
      if (!v42)
      {
        goto LABEL_54;
      }

      v8->i64[v12] = v8->i64[v34];
      v8->i64[v34] = v44;
      v45 = (*a3)();
      v44 = v8->i64[v12];
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = v8->i64[v25];
      v8->i64[v25] = v44;
      v8->i64[v12] = v46;
      goto LABEL_53;
    }

    v43 = v8->i64[v25];
    if (v42)
    {
      v8->i64[v25] = v8->i64[v34];
      v8->i64[v34] = v43;
      v44 = v8->i64[v12];
    }

    else
    {
      v8->i64[v25] = v8->i64[v12];
      v8->i64[v12] = v43;
      v47 = (*a3)(v8->i64[v34]);
      v44 = v8->i64[v12];
      if (v47)
      {
        v46 = v8->i64[v34];
        v8->i64[v12] = v46;
        v8->i64[v34] = v44;
LABEL_53:
        v44 = v46;
      }
    }

LABEL_54:
    a2 = v122;
    v48 = v8->i64[0];
    v8->i64[0] = v44;
    v8->i64[v12] = v48;
LABEL_55:
    --a4;
    v49 = v8->i64[0];
    if (a5 & 1) != 0 || (v50 = (*a3)(v8[-1].i64[1], v8->i64[0]), v49 = v8->i64[0], (v50))
    {
      v51 = v8;
      do
      {
        v52 = v51;
        v53 = v51->i64[1];
        v51 = (v51 + 8);
      }

      while (((*a3)(v53, v49) & 1) != 0);
      v54 = a2;
      if (v52 == v8)
      {
        v54 = a2;
        do
        {
          if (v51 >= v54)
          {
            break;
          }

          v56 = *--v54;
        }

        while (((*a3)(v56, v49) & 1) == 0);
      }

      else
      {
        do
        {
          v55 = *--v54;
        }

        while (!(*a3)(v55, v49));
      }

      if (v51 < v54)
      {
        v57 = v51;
        v58 = v54;
        do
        {
          v59 = v57->i64[0];
          v57->i64[0] = v58->i64[0];
          v58->i64[0] = v59;
          do
          {
            v52 = v57;
            v60 = v57->i64[1];
            v57 = (v57 + 8);
          }

          while (((*a3)(v60, v49) & 1) != 0);
          do
          {
            v61 = v58[-1].i64[1];
            v58 = (v58 - 8);
          }

          while (!(*a3)(v61, v49));
        }

        while (v57 < v58);
      }

      if (v52 != v8)
      {
        v8->i64[0] = v52->i64[0];
      }

      v52->i64[0] = v49;
      a2 = v122;
      if (v51 < v54)
      {
        goto LABEL_76;
      }

      v62 = std::__insertion_sort_incomplete[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**>(v8, v52, a3);
      v10 = &v52->u64[1];
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**>(&v52->i64[1], v122, a3);
      if (result)
      {
        a2 = v52;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_76:
        result = std::__introsort<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,false>(v8, v52, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v52->u64[1];
      }
    }

    else
    {
      result = (*a3)(v8->i64[0], *v9);
      if (result)
      {
        v10 = v8;
        do
        {
          v63 = v10->i64[1];
          v10 = (v10 + 8);
          result = (*a3)(v49, v63);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v64 = &v8->u64[1];
        do
        {
          v10 = v64;
          if (v64 >= a2)
          {
            break;
          }

          v64 = (v64 + 8);
          result = (*a3)(v49, v10->i64[0]);
        }

        while (!result);
      }

      v65 = a2;
      if (v10 < a2)
      {
        v65 = a2;
        do
        {
          v66 = v65[-1].i64[1];
          v65 = (v65 - 8);
          result = (*a3)(v49, v66);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v65)
      {
        v67 = v10->i64[0];
        v10->i64[0] = v65->i64[0];
        v65->i64[0] = v67;
        do
        {
          v68 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!(*a3)(v49, v68));
        do
        {
          v69 = v65[-1].i64[1];
          v65 = (v65 - 8);
          result = (*a3)(v49, v69);
        }

        while ((result & 1) != 0);
      }

      v70 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v8)
      {
        v8->i64[0] = *v70;
      }

      a5 = 0;
      *v70 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,0>(v10, &v10->i64[1], v10[1].i64, v9, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,0>(v10, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = (*a3)(*v9, v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v71 = v10[1].i64[1];
      v10[1].i64[1] = *v9;
      *v9 = v71;
      result = (*a3)(v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[0];
      v10[1].i64[0] = v10[1].i64[1];
      v10[1].i64[1] = v72;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v74 = v10->i64[1];
      v73 = v10[1].i64[0];
      v75 = v10->i64[0];
      v10->i64[1] = v73;
      v10[1].i64[0] = v74;
      result = (*a3)(v73, v75);
      goto LABEL_164;
    }

    goto LABEL_10;
  }

  v77 = (*a3)(v10->i64[1], v10->i64[0]);
  result = (*a3)(*v9, v10->i64[1]);
  if ((v77 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v115 = v10->i64[1];
    v10->i64[1] = *v9;
    *v9 = v115;
    result = (*a3)(v10->i64[1], v10->i64[0]);
LABEL_164:
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v78 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *v9;
    *v9 = v78;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v78;
    result = (*a3)(*v9);
    if (result)
    {
      v76 = v10->i64[1];
      v10->i64[1] = *v9;
      goto LABEL_103;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_RangeAlgPolicy,BOOL (*&)(md::MeshRenderable const*,md::MeshRenderable const*),md::MeshRenderable**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_17;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v23 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v23))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if ((*a3)(*v24, *v18))
    {
      v27 = *v24;
      v28 = v25;
      while (1)
      {
        v29 = a1 + v28;
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v28 -= 8;
        if (((*a3)(v27, *(v29 + 1)) & 1) == 0)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_40;
        }
      }

      v30 = a1;
LABEL_40:
      *v30 = v27;
      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v18 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

BOOL renderableSort(const md::MeshRenderable *a1, const md::MeshRenderable *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    v4 = *(a1 + 51) >= *(a2 + 51);
  }

  return !v4;
}

uint64_t std::__function::__func<md::MeshRenderableLogic::gatherRenderables(md::LayoutContext const&,md::MaterialContext const&)::$_0,std::allocator<md::MeshRenderableLogic::gatherRenderables(md::LayoutContext const&,md::MaterialContext const&)::$_0>,BOOL ()(md::MeshRenderable *)>::operator()(uint64_t a1, uint64_t a2)
{
  if (*(*a2 + 8) <= 3u)
  {
    v2 = *(*a2 + 144);
  }

  return v2 & 1;
}

void *std::__hash_table<std::__hash_value_type<md::RenderBatch *,gm::Range<unsigned long>>,std::__unordered_map_hasher<md::RenderBatch *,std::__hash_value_type<md::RenderBatch *,gm::Range<unsigned long>>,std::hash<md::RenderBatch *>,std::equal_to<md::RenderBatch *>,true>,std::__unordered_map_equal<md::RenderBatch *,std::__hash_value_type<md::RenderBatch *,gm::Range<unsigned long>>,std::equal_to<md::RenderBatch *>,std::hash<md::RenderBatch *>,true>,std::allocator<std::__hash_value_type<md::RenderBatch *,gm::Range<unsigned long>>>>::__emplace_unique_key_args<md::RenderBatch *,std::piecewise_construct_t const&,std::tuple<md::RenderBatch * const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

__n128 std::__function::__func<md::MeshRenderableLogic::processChangedBatches(md::LayoutContext const&,std::unordered_set<unsigned short> *)::$_0,std::allocator<md::MeshRenderableLogic::processChangedBatches(md::LayoutContext const&,std::unordered_set<unsigned short> *)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A085C8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void md::MeshRenderableLogic::processMaterialEnteringCollector(md::MeshRenderableLogic *this, gdc::Registry *a2, gdc::EntityCollector *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = gdc::Context::context<md::RenderBatchManager>(a2);
  v6 = *(a3 + 4);
  v7 = *(a3 + 5);
  if (v6 != v7)
  {
    v8 = v5;
    do
    {
      v9 = *v6;
      v10 = gdc::Registry::get<md::components::MeshInstance,md::components::Material>(a2, *v6);
      if (v11)
      {
        if (v10)
        {
          buildMaterialKey(a2, v9, v10, v11, v14);
          if (v16 == 1)
          {
            md::RenderBatchManager::process(v8, v14, v9);
            if ((v16 & 1) != 0 && v15 != -1)
            {
              (*(&off_1F2A07AB8 + v15))(&v13, v14);
            }
          }
        }
      }

      else
      {
        v12 = gdc::Registry::storage<md::components::PendingMaterial>(a2);
        geo::sparse_set<gdc::Entity,unsigned short,256ul>::find((v12 + 32), HIDWORD(v9));
      }

      ++v6;
    }

    while (v6 != v7);
  }
}

void sub_1B2E709E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a42 == 1)
  {
    v45 = *(v43 + 224);
    if (v45 != -1)
    {
      (*(v42 + 8 * v45))(&a12, &a13);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::Registry::get<md::components::MeshInstance,md::components::Material>(uint64_t a1, uint64_t a2)
{
  v4 = gdc::Registry::storage<md::components::MeshInstance>(a1);
  v5 = gdc::ComponentStorageWrapper<md::components::MeshInstance>::get(v4, a2);
  v6 = gdc::Registry::storage<md::components::Material>(a1);
  gdc::ComponentStorageWrapper<md::components::Material>::get(v6, a2);
  return v5;
}

void buildMaterialKey(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v198[2] = *MEMORY[0x1E69E9840];
  v8 = gdc::Registry::storage<md::components::Decal>(a1);
  v9 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v8 + 4, HIDWORD(a2));
  v10 = v8[11];
  if (v8[8] == v9)
  {
    v11 = v8[11];
  }

  else
  {
    v11 = v8[10] + ((v9 - v8[7]) >> 1);
  }

  v12 = gdc::Registry::storage<md::components::Visibility>(a1);
  v13 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v12, a2);
  v14 = gdc::Registry::storage<md::components::Collapsible>(a1);
  v15 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v14, a2);
  v16 = gdc::Registry::storage<md::components::IntersectionWithTileEdges>(a1);
  v17 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v16 + 4, HIDWORD(a2));
  if (v16[8] == v17)
  {
    v18 = v16[11];
  }

  else
  {
    v18 = v16[10] + 2 * (v17 - v16[7]);
  }

  if (v18 == v16[11])
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = *v13;
  }

  else
  {
    v20 = 1;
  }

  v170 = v15 != 0;
  *a5 = 0;
  *(a5 + 232) = 0;
  if (!a4[1])
  {
    return;
  }

  v169 = v20 & 1;
  if (v11 != v10 && v11)
  {
    v21 = *a3;
    if (*(*a3 + 60) == 1 && v21[32] == 3)
    {
      a2 = 0;
    }

    v171 = *a4;
    v173 = a3[32];
    v22 = *(*v21 + 120);
    v23 = *(*v21 + 64);
    if (!v22)
    {
      goto LABEL_24;
    }

    v24 = *(*v21 + 120);
    do
    {
      v25 = v24;
      v24 = *v24;
    }

    while (v24);
    if (v25 == (*v21 + 120) || v25[4])
    {
LABEL_24:
      v26 = 0;
      v27 = 0;
    }

    else
    {
      v129 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v22, 0);
      v27 = *v129;
      v26 = v129[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v28 = *(*v21 + 120);
    if (!v28)
    {
      goto LABEL_36;
    }

    v29 = (*v21 + 120);
    v30 = *v29;
    do
    {
      if (v30[4])
      {
        v29 = v30;
      }

      v30 = v30[v30[4] == 0];
    }

    while (v30);
    if (v29 == (*v21 + 120) || v29[4] > 1uLL)
    {
LABEL_36:
      v33 = 0;
      v32 = 0;
    }

    else
    {
      v31 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v28, 1uLL);
      v32 = *v31;
      v33 = v31[1];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v40 = *(*v21 + 120);
    if (!v40)
    {
      goto LABEL_47;
    }

    v41 = (*v21 + 120);
    v42 = *v41;
    do
    {
      v43 = v42[4];
      v44 = v43 >= 2;
      v45 = v43 < 2;
      if (v44)
      {
        v41 = v42;
      }

      v42 = v42[v45];
    }

    while (v42);
    if (v41 == (*v21 + 120) || v41[4] > 2uLL)
    {
LABEL_47:
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v46 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v40, 2uLL);
      v48 = *v46;
      v47 = v46[1];
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v49 = v21[32];
    v167 = *v23;
    if (*(v23 + 1))
    {
      atomic_fetch_add_explicit((*(v23 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v47);
    }

    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v33);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v26);
    }

    *&v50 = v27;
    *&v51 = v32;
    *&v52 = v48;
    v53 = *(a4 + 1);
    v54 = a4[2];
    if (v54)
    {
      atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
    }

    *(&v50 + 1) = v26;
    *(&v51 + 1) = v33;
    *(&v52 + 1) = v47;
    if (!*(a5 + 232))
    {
      *a5 = v167;
      *(a5 + 16) = v50;
      *(a5 + 32) = v51;
      *(a5 + 48) = v52;
      *(a5 + 64) = a2;
      *(a5 + 72) = v169;
      *(a5 + 73) = v49;
      *(a5 + 74) = v173;
      *(a5 + 75) = 0;
      *(a5 + 77) = 0;
      *(a5 + 80) = v53;
      *(a5 + 96) = v171;
      *(a5 + 224) = 2;
      *(a5 + 232) = 1;
      return;
    }

    v55 = *(a5 + 224);
    if (v55 != -1)
    {
      v175 = v53;
      v162 = v51;
      v165 = v52;
      if (v55 == 2)
      {
        v56 = *(a5 + 8);
        *a5 = v167;
        if (v56)
        {
          v158 = v50;
          std::__shared_weak_count::__release_shared[abi:nn200100](v56);
          v50 = v158;
          v51 = v162;
          v52 = v165;
          v53 = v175;
        }

        v57 = *(a5 + 24);
        *(a5 + 16) = v50;
        if (v57)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v57);
          v51 = v162;
          v52 = v165;
          v53 = v175;
        }

        v58 = *(a5 + 40);
        *(a5 + 32) = v51;
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v58);
          v52 = v165;
          v53 = v175;
        }

        v59 = *(a5 + 56);
        *(a5 + 48) = v52;
        if (v59)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v59);
          v53 = v175;
        }

        *(a5 + 64) = a2;
        *(a5 + 72) = v169;
        *(a5 + 73) = v49;
        *(a5 + 74) = v173;
        *(a5 + 75) = 0;
        *(a5 + 77) = 0;
        v60 = *(a5 + 88);
        *(a5 + 80) = v53;
        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v60);
        }

        *(a5 + 96) = v171;
        return;
      }

      v160 = v50;
      (*(&off_1F2A07AB8 + v55))(&v176, a5);
      v50 = v160;
      v51 = v162;
      v52 = v165;
      v53 = v175;
    }

    *a5 = v167;
    *(a5 + 16) = v50;
    *(a5 + 32) = v51;
    *(a5 + 48) = v52;
    *(a5 + 64) = a2;
    *(a5 + 72) = v169;
    *(a5 + 73) = v49;
    *(a5 + 74) = v173;
    *(a5 + 75) = 0;
    *(a5 + 77) = 0;
    *(a5 + 80) = v53;
    *(a5 + 96) = v171;
    *(a5 + 224) = 2;
    return;
  }

  v34 = gdc::Registry::storage<md::components::IntendedSceneLayer>(a1);
  v164 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v34, a2);
  v35 = gdc::Registry::storage<md::components::MarketMask>(a1);
  v161 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v35, a2);
  v36 = gdc::Registry::storage<md::components::GeneratedTexture>(a1);
  v157 = gdc::ComponentStorageWrapper<arComponents::RotationToApply>::get(v36, a2);
  v37 = gdc::Registry::storage<md::components::MaterialRaster>(a1);
  v38 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v37 + 4, HIDWORD(a2));
  if (v37[8] == v38)
  {
    v39 = v37[11];
  }

  else
  {
    v39 = v37[10] + ((v38 - v37[7]) >> 3);
  }

  if (v39 == v37[11])
  {
    v61 = 0;
  }

  else
  {
    v61 = v39;
  }

  v155 = v61;
  v62 = gdc::Registry::storage<md::components::AlbedoTint>(a1);
  v63 = gdc::ComponentStorageWrapper<arComponents::RotationToApply>::get(v62, a2);
  v64 = gdc::Registry::storage<md::components::PositionScaleFactor>(a1);
  v153 = gdc::ComponentStorageWrapper<md::components::CustomZIndex>::get(v64, a2);
  v65 = gdc::Registry::storage<md::components::HideWhenCollapsed>(a1);
  v66 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v65 + 4, HIDWORD(a2));
  v67 = v65[11];
  if (v65[8] == v66)
  {
    v68 = v65[11];
  }

  else
  {
    v68 = v65[10] + ((v66 - v65[7]) >> 3);
  }

  v69 = gdc::Registry::storage<md::overlayComponents::DrapedRasterOverlay>(a1);
  v70 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v69 + 4, HIDWORD(a2));
  if (v69[8] == v70)
  {
    v71 = v69[11];
  }

  else
  {
    v71 = v69[10] + 48 * ((v70 - v69[7]) >> 3);
  }

  if (v71 == v69[11])
  {
    v72 = 0;
  }

  else
  {
    v72 = v71;
  }

  v168 = v72;
  v73 = gdc::Registry::storage<md::components::CustomRenderState>(a1);
  v74 = gdc::ComponentStorageWrapper<md::components::CustomRenderState>::get(v73, a2);
  v75 = gdc::Registry::storage<md::components::SubtileZone>(a1);
  v76 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v75, a2);
  v77 = gdc::Registry::storage<md::components::SupportsSteepnessDarkening>(a1);
  v78 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v77 + 4, HIDWORD(a2));
  if (v77[8] == v78)
  {
    v79 = v77[11];
  }

  else
  {
    v79 = v77[10] + ((v78 - v77[7]) >> 3);
  }

  if (v164)
  {
    v166 = *v164;
  }

  else
  {
    v166 = 0;
  }

  v81 = v68 != v67 && v68 != 0;
  v152 = v81;
  v83 = v79 != v77[11] && v79 != 0;
  if (v76)
  {
    v151 = *v76;
  }

  else
  {
    v151 = 0;
  }

  if (v168)
  {
    operator new();
  }

  v150 = v83;
  if (v157)
  {
    v84 = *v157;
    v159 = v84;
    if (*(&v84 + 1))
    {
      atomic_fetch_add_explicit((*(&v84 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v159 = 0u;
  }

  *&v176 = a2;
  v85 = *a3;
  if (v19)
  {
    if (*(*a3 + 60))
    {
      v86 = &v176;
      if (v85[32] == 3)
      {
        v86 = (v19 + 8);
      }

      a2 = *v86;
    }
  }

  else if (*(*a3 + 60) && v85[32] == 3)
  {
    a2 = 0;
  }

  v87 = &md::kMarketMaskDefault;
  if (v161)
  {
    v87 = v161;
  }

  if (v155)
  {
    v163 = *v155;
  }

  else
  {
    v163 = 0;
  }

  if (v63)
  {
    v88 = *v63;
    v197[0] = *(v63 + 1);
    *(v197 + 7) = *(v63 + 8);
  }

  else
  {
    v88 = 0;
  }

  if (v153)
  {
    v156 = *v153;
    v154 = 1;
    if (v19)
    {
      goto LABEL_135;
    }

LABEL_138:
    v149 = 0;
    v148 = 0;
    if (v74)
    {
      goto LABEL_136;
    }

    goto LABEL_139;
  }

  v156 = 0;
  v154 = 0;
  if (!v19)
  {
    goto LABEL_138;
  }

LABEL_135:
  v149 = *v19;
  v148 = 1;
  if (v74)
  {
LABEL_136:
    v147 = *(v74 + 16);
    goto LABEL_140;
  }

LABEL_139:
  v147 = 0;
LABEL_140:
  v89 = *v87;
  if (v63)
  {
    v198[0] = v197[0];
    *(v198 + 7) = *(v197 + 7);
  }

  else
  {
    v88 = 0;
  }

  v90 = a3[32];
  v146 = v89;
  v145 = *a4;
  v91 = *(*v85 + 120);
  v92 = *(*v85 + 64);
  v144 = v88;
  if (!v91)
  {
    goto LABEL_148;
  }

  v93 = *(*v85 + 120);
  do
  {
    v94 = v93;
    v93 = *v93;
  }

  while (v93);
  if (v94 == (*v85 + 120) || v94[4])
  {
LABEL_148:
    v95 = 0;
    v96 = 0;
  }

  else
  {
    v130 = a3[32];
    v131 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v91, 0);
    v96 = *v131;
    v95 = v131[1];
    if (v95)
    {
      atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v90 = v130;
  }

  v97 = *(*v85 + 120);
  if (!v97)
  {
    goto LABEL_159;
  }

  v98 = (*v85 + 120);
  v99 = *v98;
  do
  {
    if (v99[4])
    {
      v98 = v99;
    }

    v99 = v99[v99[4] == 0];
  }

  while (v99);
  if (v98 == (*v85 + 120) || v98[4] > 1uLL)
  {
LABEL_159:
    v103 = 0;
    v102 = 0;
  }

  else
  {
    v100 = v90;
    v101 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v97, 1uLL);
    v102 = *v101;
    v103 = v101[1];
    if (v103)
    {
      atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v90 = v100;
  }

  v104 = *(*v85 + 120);
  if (!v104)
  {
    goto LABEL_172;
  }

  v105 = (*v85 + 120);
  v106 = *v105;
  do
  {
    v107 = v106[4];
    v44 = v107 >= 2;
    v108 = v107 < 2;
    if (v44)
    {
      v105 = v106;
    }

    v106 = v106[v108];
  }

  while (v106);
  if (v105 == (*v85 + 120) || v105[4] > 2uLL)
  {
    v104 = 0;
LABEL_172:
    v111 = 0;
    goto LABEL_173;
  }

  v109 = v90;
  v110 = std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(v104, 2uLL);
  v111 = *v110;
  v104 = v110[1];
  if (v104)
  {
    atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v90 = v109;
LABEL_173:
  v112 = v85[32];
  v113 = v92[1];
  *&v176 = *v92;
  *(&v176 + 1) = v113;
  if (v113)
  {
    atomic_fetch_add_explicit((v113 + 8), 1uLL, memory_order_relaxed);
  }

  *&v177 = v96;
  *(&v177 + 1) = v95;
  if (v95)
  {
    atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v178 = v102;
  *(&v178 + 1) = v103;
  if (v103)
  {
    atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v179 = v111;
  *(&v179 + 1) = v104;
  if (v104)
  {
    atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v180 = a2;
  v180[8] = v169;
  v180[9] = v112;
  v180[10] = v90;
  v180[11] = v170;
  v180[12] = v152;
  v180[13] = v151;
  if (v104)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v104);
  }

  if (v103)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v103);
  }

  if (v95)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v95);
  }

  v114 = a4[2];
  *&v181 = a4[1];
  *(&v181 + 1) = v114;
  if (v114)
  {
    atomic_fetch_add_explicit((v114 + 8), 1uLL, memory_order_relaxed);
  }

  v182 = v145;
  v183 = v159;
  if (*(&v159 + 1))
  {
    atomic_fetch_add_explicit((*(&v159 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  LOBYTE(v184) = v166;
  HIBYTE(v184) = v146;
  v185 = v163;
  LOBYTE(v186) = 0;
  v187 = 0;
  if (v63)
  {
    LOBYTE(v186) = v144;
    *(&v186 + 1) = v198[0];
    *(&v186 + 1) = *(v198 + 7);
    v187 = 1;
  }

  v188 = v156;
  v189 = v154;
  LOBYTE(v190) = 0;
  v194 = 0;
  LOWORD(v195) = v149 | (v148 << 8);
  BYTE2(v195) = v147 & 1;
  HIBYTE(v195) = v150;
  if (*(&v159 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v159 + 1));
  }

  v196 = 1;
  if (*(a5 + 232))
  {
    v115 = *(a5 + 224);
    if (v115 != -1)
    {
      if (!v115)
      {
        v116 = v176;
        v176 = 0uLL;
        v117 = *(a5 + 8);
        *a5 = v116;
        if (v117)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v117);
        }

        v118 = v177;
        v177 = 0uLL;
        v119 = *(a5 + 24);
        *(a5 + 16) = v118;
        if (v119)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v119);
        }

        v120 = v178;
        v178 = 0uLL;
        v121 = *(a5 + 40);
        *(a5 + 32) = v120;
        if (v121)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v121);
        }

        v122 = v179;
        v179 = 0uLL;
        v123 = *(a5 + 56);
        *(a5 + 48) = v122;
        if (v123)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v123);
        }

        *(a5 + 64) = *v180;
        *(a5 + 70) = *&v180[6];
        v124 = v181;
        v181 = 0uLL;
        v125 = *(a5 + 88);
        *(a5 + 80) = v124;
        if (v125)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v125);
        }

        *(a5 + 96) = v182;
        v126 = v183;
        v183 = 0uLL;
        v127 = *(a5 + 112);
        *(a5 + 104) = v126;
        if (v127)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v127);
        }

        *(a5 + 120) = v184;
        *(a5 + 122) = v185;
        v128 = *(a5 + 140);
        if (v128 == v187)
        {
          if (*(a5 + 140))
          {
            *(a5 + 124) = v186;
          }
        }

        else
        {
          if (v128)
          {
            v132 = 0;
          }

          else
          {
            *(a5 + 124) = v186;
            v132 = 1;
          }

          *(a5 + 140) = v132;
        }

        *(a5 + 144) = v188;
        *(a5 + 148) = v189;
        if (*(a5 + 208) == v194)
        {
          if (*(a5 + 208))
          {
            v133 = v190;
            v190 = 0uLL;
            v134 = *(a5 + 160);
            *(a5 + 152) = v133;
            if (v134)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v134);
            }

            *(a5 + 168) = v191;
            v135 = v192;
            v192 = 0uLL;
            v136 = *(a5 + 184);
            *(a5 + 176) = v135;
            if (v136)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v136);
            }

            v137 = v193;
            v193 = 0uLL;
            v138 = *(a5 + 200);
            *(a5 + 192) = v137;
            if (v138)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v138);
            }
          }
        }

        else if (*(a5 + 208))
        {
          v139 = *(a5 + 200);
          if (v139)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v139);
          }

          v140 = *(a5 + 184);
          if (v140)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v140);
          }

          v141 = *(a5 + 160);
          if (v141)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v141);
          }

          *(a5 + 208) = 0;
        }

        else
        {
          *(a5 + 152) = v190;
          v190 = 0uLL;
          *(a5 + 168) = v191;
          v142 = v192;
          v143 = v193;
          v192 = 0uLL;
          *(a5 + 176) = v142;
          *(a5 + 192) = v143;
          v193 = 0uLL;
          *(a5 + 208) = 1;
        }

        *(a5 + 216) = v195;
        goto LABEL_247;
      }

      (*(&off_1F2A07AB8 + v115))(v198, a5);
    }

    std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>::__union[abi:nn200100]<md::MaterialRenderBatchKey>(a5, &v176);
    *(a5 + 224) = 0;
  }

  else
  {
    std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>::__union[abi:nn200100]<md::MaterialRenderBatchKey>(a5, &v176);
    *(a5 + 224) = 0;
    *(a5 + 232) = 1;
  }

LABEL_247:
  if (v196 == 1)
  {
    md::MaterialRenderBatchKey::~MaterialRenderBatchKey(&v176);
  }
}

void sub_1B2E71A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (*(v39 + 232) == 1)
  {
    v41 = *(v39 + 224);
    if (v41 != -1)
    {
      (*(&off_1F2A07AB8 + v41))(&a39, v39);
    }

    *(v39 + 224) = -1;
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2md22MaterialRenderBatchKeyENS8_26DynamicTypedRenderBatchKeyENS8_27MaterialDecalRenderBatchKeyEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSD_1EJS9_SA_SB_EEEEEEDcSF_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[11];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a2[7];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = a2[5];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = a2[3];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = a2[1];
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2md22MaterialRenderBatchKeyENS8_26DynamicTypedRenderBatchKeyENS8_27MaterialDecalRenderBatchKeyEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSD_1EJS9_SA_SB_EEEEEEDcSF_DpT0_(uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = a2[5];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = a2[3];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = a2[1];
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

void md::MaterialRenderBatchKey::~MaterialRenderBatchKey(md::MaterialRenderBatchKey *this)
{
  if (*(this + 208) == 1)
  {
    v2 = *(this + 25);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    v3 = *(this + 23);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(this + 20);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  v5 = *(this + 14);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 5);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }
}

uint64_t std::__variant_detail::__union<(std::__variant_detail::_Trait)1,0ul,md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>::__union[abi:nn200100]<md::MaterialRenderBatchKey>(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(result + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v2 = *(a2 + 64);
  *(result + 70) = *(a2 + 70);
  *(result + 64) = v2;
  *(result + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(result + 96) = *(a2 + 96);
  *(result + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v3 = *(a2 + 120);
  v4 = *(a2 + 122);
  *(result + 124) = 0;
  *(result + 122) = v4;
  *(result + 120) = v3;
  *(result + 140) = 0;
  if (*(a2 + 140) == 1)
  {
    *(result + 124) = *(a2 + 124);
    *(result + 140) = 1;
  }

  *(result + 144) = *(a2 + 144);
  *(result + 152) = 0;
  *(result + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    *(result + 152) = *(a2 + 152);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(result + 168) = *(a2 + 168);
    *(result + 176) = *(a2 + 176);
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(result + 192) = *(a2 + 192);
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(result + 208) = 1;
  }

  *(result + 216) = *(a2 + 216);
  return result;
}

void *std::map<unsigned long,std::shared_ptr<ggl::DeviceData>,std::less<unsigned long>,geo::allocator_adapter<std::pair<unsigned long const,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::at(void *a1, unint64_t a2)
{
  if (!a1)
  {
LABEL_7:
    abort();
  }

  while (1)
  {
    while (1)
    {
      v2 = a1[4];
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 5;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_7;
    }
  }
}

void ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A07BD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::Registry::storage<md::components::MaterialRaster>(uint64_t a1)
{
  v3 = 0xBF279C46863538CCLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0xBF279C46863538CCLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::components::SupportsSteepnessDarkening>(uint64_t a1)
{
  v3 = 0x49D227B9B7922EE1;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x49D227B9B7922EE1uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::SupportsSteepnessDarkening>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::components::SupportsSteepnessDarkening>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::SupportsSteepnessDarkening>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::MaterialRaster>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *(v6 + v7) = *--a1[11];
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::MaterialRaster>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::MaterialRaster>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t gdc::Registry::storage<md::components::IntersectionWithTileEdges>(uint64_t a1)
{
  v3 = 0x17A57C92AE39566DLL;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x17A57C92AE39566DuLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::components::IntersectionWithTileEdges>::remove(void *a1, uint64_t a2)
{
  v11 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = 2 * (v3 - a1[7]);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    *(v6 + v7) = *(a1[11] - 16);
    a1[11] -= 16;
    v8 = a1[28];
    if (v8)
    {
      v9 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v8[6], v9, &v11, 1);
        v8 = *v8;
      }

      while (v8);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::IntersectionWithTileEdges>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::IntersectionWithTileEdges>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void md::MeshRenderableLogic::processMaterialUpdateCollector(md::MeshRenderableLogic *this, gdc::Registry *a2, gdc::EntityCollector *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = gdc::Context::context<md::RenderBatchManager>(a2);
  v6 = *(a3 + 4);
  v7 = *(a3 + 5);
  if (v6 != v7)
  {
    v8 = v5;
    do
    {
      v9 = *v6;
      v10 = gdc::Registry::get<md::components::MeshInstance,md::components::Material>(a2, *v6);
      if (v11)
      {
        v12 = v10 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        buildMaterialKey(a2, v9, v10, v11, v14);
        if (v16 == 1)
        {
          md::RenderBatchManager::process(v8, v14, v9);
          if ((v16 & 1) != 0 && v15 != -1)
          {
            (*(&off_1F2A07AB8 + v15))(&v13, v14);
          }
        }
      }

      ++v6;
    }

    while (v6 != v7);
  }
}

void sub_1B2E729B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a42 == 1)
  {
    v45 = *(v43 + 224);
    if (v45 != -1)
    {
      (*(v42 + 8 * v45))(&a12, &a13);
    }
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<md::MeshRenderableLogic::getWrappedCollectorVisitor(BOOL,std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>)::$_0,std::allocator<md::MeshRenderableLogic::getWrappedCollectorVisitor(BOOL,std::function<void ()(gdc::Registry *,gdc::EntityCollector *)>)::$_0>,void ()(gdc::Registry *,gdc::EntityCollector *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A08478;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::MeshRenderableLogic::processVisibilityUpdateCollector(md::MeshRenderableLogic *this, gdc::Registry *a2, gdc::EntityCollector *a3)
{
  v3 = *(a3 + 4);
  for (i = *(a3 + 5); v3 != i; ++v3)
  {
    v6 = *v3;
    v7 = HIDWORD(*v3);
    v8 = gdc::Registry::storage<md::components::MeshInstance>(a2);
    Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v8 + 32), v7);
    if (*(v8 + 64) == Index)
    {
      v10 = gdc::Registry::storage<md::components::DynamicMeshInstance>(a2);
      Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v10 + 32), v7);
      if (*(v10 + 64) == Index)
      {
        continue;
      }
    }

    md::MeshRenderableLogic::updateStaticEntityVisibility(Index, v6, a2);
  }
}

void md::MeshRenderableLogic::updateStaticEntityVisibility(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v5 = gdc::Context::context<md::RenderBatchManager>(a3);
  if (v5)
  {
    v6 = v5;
    v7 = gdc::Registry::storage<md::components::MeshInstance>(a3);
    v8 = gdc::ComponentStorageWrapper<md::components::MeshInstance>::get(v7, a2);
    md::MeshRenderableLogic::keyForEntity(v11, a3, &v9);
    if (v13 == 1 && v8)
    {
      md::RenderBatchManager::process(v6, v11, a2);
      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    else if (!v13)
    {
      return;
    }

    if (v12 != -1)
    {
      (*(&off_1F2A07AB8 + v12))(&v10, v11);
    }
  }
}

void sub_1B2E72BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned int a43, int a44, char a45)
{
  if (a45 == 1 && a43 != -1)
  {
    (*(&off_1F2A07AB8 + a43))(&a14, &a15);
  }

  _Unwind_Resume(exception_object);
}

void md::MeshRenderableLogic::keyForEntity(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  v6 = gdc::Registry::get<md::components::MeshInstance,md::components::Material>(a2, *a3);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    *a1 = 0;
    a1[232] = 0;
  }

  else
  {
    v9 = v7;
    v10 = *a3;

    buildMaterialKey(a2, v10, v6, v9, a1);
  }
}

uint64_t std::__function::__func<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Registry *,gdc::EntityCollector *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Registry *,gdc::EntityCollector *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(gdc::Registry *,gdc::EntityCollector *)>::operator()(void *a1, void *a2, void *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, *a2, *a3);
}

__n128 std::__function::__func<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Registry *,gdc::EntityCollector *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (md::MeshRenderableLogic::*)(gdc::Registry *,gdc::EntityCollector *),md::MeshRenderableLogic*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(gdc::Registry *,gdc::EntityCollector *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A08580;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::MeshRenderableLogic::updateStaticEntityCustomRenderState(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v5 = gdc::Context::context<md::RenderBatchManager>(a3);
  if (v5)
  {
    v6 = v5;
    v7 = gdc::Registry::storage<md::components::MeshInstance>(a3);
    v8 = gdc::ComponentStorageWrapper<md::components::MeshInstance>::get(v7, a2);
    md::MeshRenderableLogic::keyForEntity(v11, a3, &v9);
    if (v13 == 1 && v8)
    {
      md::RenderBatchManager::process(v6, v11, a2);
      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    else if (!v13)
    {
      return;
    }

    if (v12 != -1)
    {
      (*(&off_1F2A07AB8 + v12))(&v10, v11);
    }
  }
}

void sub_1B2E72E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unsigned int a43, int a44, char a45)
{
  if (a45 == 1 && a43 != -1)
  {
    (*(&off_1F2A07AB8 + a43))(&a14, &a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::ObjectHolder<md::RenderBatchManager>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::RenderBatchManager>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::RenderBatchManager>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::RenderBatchManager>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A08450;
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 16);
    while (v3 != v4)
    {
      geo::Pool<md::RenderBatch>::destroy(v2 + 32, *v3++);
    }

    geo::Pool<md::MaterialDecalRenderable>::~Pool(v2 + 304);
    geo::Pool<md::MeshRenderable>::~Pool(v2 + 256);
    geo::Pool<md::MaterialRenderable>::~Pool(v2 + 208);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 168);
    std::__hash_table<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::__unordered_map_hasher<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::__unordered_map_equal<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::allocator<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>>>::~__hash_table(v2 + 128);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 88);
    geo::Pool<md::RenderBatch>::~Pool(v2 + 32);
    v5 = *(v2 + 8);
    if (v5)
    {
      *(v2 + 16) = v5;
      operator delete(v5);
    }

    MEMORY[0x1B8C62190](v2, 0x10A0C40B00EE8D5);
  }

  return a1;
}

void sub_1B2E7306C(_Unwind_Exception *a1)
{
  geo::Pool<md::MaterialDecalRenderable>::~Pool(v1 + 304);
  geo::Pool<md::MeshRenderable>::~Pool(v1 + 256);
  geo::Pool<md::MaterialRenderable>::~Pool(v1 + 208);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 168);
  std::__hash_table<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::__unordered_map_hasher<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::__unordered_map_equal<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>,std::equal_to<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,std::hash<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>>,true>,std::allocator<std::__hash_value_type<std::variant<md::MaterialRenderBatchKey,md::DynamicTypedRenderBatchKey,md::MaterialDecalRenderBatchKey>,md::RenderBatch *>>>::~__hash_table(v1 + 128);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 88);
  geo::Pool<md::RenderBatch>::~Pool(v1 + 32);
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

BOOL std::__function::__func<md::MeshRenderableLogic::processEntering(void)::$_0,std::allocator<md::MeshRenderableLogic::processEntering(void)::$_0>,BOOL ()(gdc::Registry * const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (gdc::Context::context<md::components::NonTiled>(*a2))
  {
    return 0;
  }

  v4 = gdc::Registry::storage<md::components::TexturedMeshInstance>(v2);
  return *(v4 + 88) == *(v4 + 80);
}

void *gdc::Context::context<md::components::NonTiled>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xCBD572B797B24F09);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xCBD572B797B24F09)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL gdc::ComponentStorageWrapper<md::components::TexturedMeshInstance>::remove(void *a1, uint64_t a2)
{
  v20 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 152 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    v9 = *(v8 - 152);
    v10 = *(v8 - 136);
    *(v6 + 32) = *(v8 - 120);
    *v6 = v9;
    *(v6 + 16) = v10;
    do
    {
      *(v6 + 36 + v7) = *(v8 - 116 + v7);
      v7 += 4;
    }

    while (v7 != 12);
    for (i = 0; i != 12; i += 4)
    {
      *(v6 + 48 + i) = *(v8 - 104 + i);
    }

    for (j = 0; j != 48; j += 4)
    {
      *(v6 + 60 + j) = *(v8 - 92 + j);
    }

    v14 = *(v8 - 40);
    v13 = *(v8 - 32);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(v6 + 120);
    *(v6 + 112) = v14;
    *(v6 + 120) = v13;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    if (v6 != v8 - 152)
    {
      std::vector<std::shared_ptr<ggl::Texture2D>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::Texture2D>*,std::shared_ptr<ggl::Texture2D>*>((v6 + 128), *(v8 - 24), *(v8 - 16), (*(v8 - 16) - *(v8 - 24)) >> 4);
    }

    v16 = a1[11] - 152;
    std::__destroy_at[abi:nn200100]<md::components::TexturedMeshInstance,0>(v16);
    a1[11] = v16;
    v17 = a1[28];
    if (v17)
    {
      v18 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v17[6], v18, &v20, 1);
        v17 = *v17;
      }

      while (v17);
    }
  }

  return v5 != v4;
}

void std::__destroy_at[abi:nn200100]<md::components::TexturedMeshInstance,0>(uint64_t a1)
{
  v3 = (a1 + 128);
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 120);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }
}

void gdc::ComponentStorageWrapper<md::components::TexturedMeshInstance>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::components::TexturedMeshInstance>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::components::TexturedMeshInstance>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 152;
        std::__destroy_at[abi:nn200100]<md::components::TexturedMeshInstance,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<md::components::TexturedMeshInstance>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::components::TexturedMeshInstance>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t std::vector<std::shared_ptr<ggl::Texture2D>>::__init_with_size[abi:nn200100]<std::shared_ptr<ggl::Texture2D>*,std::shared_ptr<ggl::Texture2D>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<ggl::Texture2D>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

uint64_t gdc::Registry::view<md::components::DynamicMeshInstance,md::components::Material>(uint64_t a1)
{
  v2 = gdc::Registry::storage<md::components::DynamicMeshInstance>(a1);
  gdc::Registry::storage<md::components::Material>(a1);
  return v2;
}

void gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::each<md::MeshRenderableLogic::cleanExitingEntities(void)::$_0>(void *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a1 + 32;
  if (!*a1)
  {
    v6 = 0;
  }

  v7 = v4 + 32;
  if (!v4)
  {
    v7 = 0;
  }

  if (*(v7 + 32) - *(v7 + 24) >= *(v6 + 32) - *(v6 + 24))
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (v6 == v8)
  {
    v9 = v5[7];
    v10 = v5[8];
    if (v9 != v10)
    {
      do
      {
        v11 = a1[1];
        if (v11[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex(v11 + 4, *(v9 + 4)))
        {
          v12 = *v9;
          gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(v11, *v9);
          md::MeshRenderableLogic::removeDynamicEntity(a2, v12);
        }

        v9 += 8;
      }

      while (v9 != v10);
      v4 = a1[1];
    }
  }

  v13 = v4 + 32;
  if (!v4)
  {
    v13 = 0;
  }

  if (v13 == v8)
  {
    v14 = *(v4 + 56);
    v15 = *(v4 + 64);
    while (v14 != v15)
    {
      v16 = *a1;
      if (v16[8] != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((*a1 + 32), *(v14 + 4)))
      {
        v17 = *v14;
        gdc::RegistryView<md::components::DynamicMeshInstance,md::components::Material>::getComponent<md::components::Material,md::components::DynamicMeshInstance>(v16, *v14);
        md::MeshRenderableLogic::removeDynamicEntity(a2, v17);
      }

      v14 += 8;
    }
  }
}

void md::MeshRenderableLogic::clearInjectedRenderables(md::MeshRenderableLogic *this, unsigned __int16 a2)
{
  v4 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(this + 47, a2);
  if (v4)
  {
    v5 = v4[3];
    v6 = v4[4];
    while (v5 != v6)
    {
      v7 = std::__hash_table<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::__unordered_map_hasher<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::hash<gdc::Entity>,std::equal_to<gdc::Entity>,true>,std::__unordered_map_equal<gdc::Entity,std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>,std::equal_to<gdc::Entity>,std::hash<gdc::Entity>,true>,std::allocator<std::__hash_value_type<gdc::Entity,gdc::components::RegistryBridgeMap<gdc::Entity>::RemoteBridgeNode *>>>::find<gdc::Entity>(this + 42, *v5);
      if (v7)
      {
        v8 = v7;
        std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short const&>(*(this + 53), a2);
        if (*(v8 + 34) == 1)
        {
          *(v8 + 34) = 0;
        }

        if (*(v8 + 38) == 1)
        {
          RegistryByIdentifier = md::RegistryManager::getRegistryByIdentifier(*(this + 17), *(v8 + 18));
          if (RegistryByIdentifier)
          {
            v10 = gdc::Registry::storage<md::components::RenderableInjected>(RegistryByIdentifier);
            gdc::ComponentStorageWrapper<md::components::RenderableInjected>::remove(v10, v8[5]);
          }
        }
      }

      ++v5;
    }

    v11 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(this + 47, a2);
    if (v11)
    {
      v12 = *(this + 384);
      v13 = v11[1];
      v14 = vcnt_s8(v12);
      v14.i16[0] = vaddlv_u8(v14);
      if (v14.u32[0] > 1uLL)
      {
        if (v13 >= *&v12)
        {
          v13 = (v13 % *&v12);
        }
      }

      else
      {
        v13 = ((*&v12 - 1) & v13);
      }

      v15 = *(this + 47);
      v16 = *(v15 + 8 * v13);
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16 != v11);
      if (v17 == (this + 392))
      {
        goto LABEL_30;
      }

      v18 = v17[1];
      if (v14.u32[0] > 1uLL)
      {
        if (v18 >= *&v12)
        {
          v18 = (v18 % *&v12);
        }
      }

      else
      {
        v18 = (v18 & (*&v12 - 1));
      }

      if (v18 != v13)
      {
LABEL_30:
        if (!*v11)
        {
          goto LABEL_31;
        }

        v19 = (*v11)[1];
        if (v14.u32[0] > 1uLL)
        {
          if (v19 >= *&v12)
          {
            v19 %= *&v12;
          }
        }

        else
        {
          v19 &= *&v12 - 1;
        }

        if (v19 != v13)
        {
LABEL_31:
          *(v15 + 8 * v13) = 0;
        }
      }

      v20 = *v11;
      if (*v11)
      {
        v21 = v20[1];
        if (v14.u32[0] > 1uLL)
        {
          if (v21 >= *&v12)
          {
            v21 = (v21 % *&v12);
          }
        }

        else
        {
          v21 = (v21 & (*&v12 - 1));
        }

        if (v21 != v13)
        {
          *(*(this + 47) + 8 * v21) = v17;
          v20 = *v11;
        }
      }

      *v17 = v20;
      *v11 = 0;
      --*(this + 50);

      std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,void *>>>::operator()[abi:nn200100](1, v11);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__erase_unique<unsigned short>(void *a1, unsigned __int16 a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a1, a2);
  if (v3)
  {
    v4 = a1[1];
    v5 = v3[1];
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      if (v5 >= *&v4)
      {
        v5 = (v5 % *&v4);
      }
    }

    else
    {
      v5 = ((*&v4 - 1) & v5);
    }

    v7 = *(*a1 + 8 * v5);
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7 != v3);
    if (v8 == a1 + 2)
    {
      goto LABEL_20;
    }

    v9 = v8[1];
    if (v6.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 = (v9 % *&v4);
      }
    }

    else
    {
      v9 = (v9 & (*&v4 - 1));
    }

    if (v9 != v5)
    {
LABEL_20:
      if (!*v3)
      {
        goto LABEL_21;
      }

      v10 = (*v3)[1];
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v4)
        {
          v10 %= *&v4;
        }
      }

      else
      {
        v10 &= *&v4 - 1;
      }

      if (v10 != v5)
      {
LABEL_21:
        *(*a1 + 8 * v5) = 0;
      }
    }

    v11 = *v3;
    if (*v3)
    {
      v12 = v11[1];
      if (v6.u32[0] > 1uLL)
      {
        if (v12 >= *&v4)
        {
          v12 = (v12 % *&v4);
        }
      }

      else
      {
        v12 = (v12 & (*&v4 - 1));
      }

      if (v12 != v5)
      {
        *(*a1 + 8 * v12) = v8;
        v11 = *v3;
      }
    }

    *v8 = v11;
    *v3 = 0;
    --a1[3];

    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,void *>>>::operator()[abi:nn200100](1, v3);
  }
}

uint64_t md::Logic<md::MeshRenderableLogic,md::MeshRenderableContext,md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7[10] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xF014CCE28176CA44 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>::buildRequiredTuple<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>(v7, *(a2 + 8));
    return (*(*v6 + 160))(v6, a2, v7, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::MeshRenderableContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::MeshRenderableContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::MeshRenderableContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::MeshRenderableContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A086B8;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 40);
    v3 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::~__hash_table(v2);
    MEMORY[0x1B8C62190](v3, 0x10A0C404183AB0DLL);
  }

  return a1;
}

void md::MeshRenderableLogic::~MeshRenderableLogic(int8x8_t **this)
{
  md::MeshRenderableLogic::~MeshRenderableLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A079E0;
  md::RegistryManager::removeCollectorSubscription(this[17], this, 2u);
  md::RegistryManager::removeCollectorSubscription(this[17], this, 0);
  md::RegistryManager::removeCollectorSubscription(this[17], this, 1u);
  md::RegistryManager::removeCollectorSubscription(this[17], this, 3u);
  md::RegistryManager::removeCollectorSubscription(this[17], this, 4u);
  md::Monitorable<md::ConfigValue<GEOConfigKeyUInteger,unsigned int>>::~Monitorable((this + 54));
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((this + 42));
  std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::~__hash_table((this + 37));
  v2 = this[36];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  geo::Pool<md::TexturedRenderable>::~Pool((this + 28));
  geo::Pool<md::MaterialRenderable>::~Pool((this + 22));
  v3 = this[21];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = this[18];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[13]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[10]);
}

void sub_1B2E73E3C(_Unwind_Exception *a1)
{
  md::Monitorable<md::ConfigValue<GEOConfigKeyUInteger,unsigned int>>::~Monitorable(v1 + 432);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 336);
  std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::~__hash_table(v1 + 296);
  v3 = *(v1 + 288);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  geo::Pool<md::TexturedRenderable>::~Pool(v1 + 224);
  geo::Pool<md::MaterialRenderable>::~Pool(v1 + 176);
  v4 = *(v1 + 168);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v1 + 144);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

uint64_t geo::Pool<md::TexturedRenderable>::~Pool(uint64_t a1)
{
  geo::Pool<md::TexturedRenderable>::disposeElements(a1);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

uint64_t geo::Pool<md::MaterialRenderable>::~Pool(uint64_t a1)
{
  v24 = 0;
  v25 = 0;
  v23 = &v24;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v23, v2);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v25;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 24);
  v6 = *a1;
  v7 = (a1 + 8);
  v8 = v4 == *(a1 + 16) * v5 || v6 == v7;
  if (!v8)
  {
    v9 = *(a1 + 24);
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = v6[4];
        do
        {
          v12 = (v11 + 400 * v10);
          v13 = v24;
          if (!v24)
          {
            goto LABEL_21;
          }

          v14 = &v24;
          do
          {
            v15 = v13;
            v16 = v14;
            v17 = v13[4];
            if (v17 >= v12)
            {
              v14 = v13;
            }

            v13 = v13[v17 < v12];
          }

          while (v13);
          if (v14 == &v24)
          {
            goto LABEL_21;
          }

          if (v17 < v12)
          {
            v15 = v16;
          }

          if (v12 < v15[4])
          {
LABEL_21:
            (**v12)(v12);
            v5 = *(a1 + 24);
          }

          ++v10;
          v9 = v5;
        }

        while (v10 < v5);
      }

      v18 = v6[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v6[2];
          v8 = *v19 == v6;
          v6 = v19;
        }

        while (!v8);
      }

      v6 = v19;
    }

    while (v19 != v7);
    v6 = *a1;
  }

  if (v6 != v7)
  {
    do
    {
      free(v6[4]);
      v20 = v6[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v6[2];
          v8 = *v21 == v6;
          v6 = v21;
        }

        while (!v8);
      }

      v6 = v21;
    }

    while (v21 != v7);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v7;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v24);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2E740F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

void sub_1B2E74218(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va1);
  gdc::RegistrySignalCollector<md::components::Material>::~RegistrySignalCollector(v3);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va);
  MEMORY[0x1B8C62190](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::function<BOOL ()(gdc::Registry const*,gdc::Entity)>::operator=(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::__value_func[abi:nn200100](v6, a2);
  if (v6 != a1)
  {
    v3 = v7;
    v4 = *(a1 + 24);
    if (v7 == v6)
    {
      if (v4 == a1)
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v6);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v7 = v6;
        (*(v8[0] + 24))(v8, a1);
        (*(v8[0] + 32))(v8);
      }

      else
      {
        (*(*v7 + 24))();
        (*(*v7 + 32))(v7);
        v7 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v6);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v7;
      v7 = v6;
    }

    else
    {
      v7 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](v6);
  return a1;
}

void gdc::RegistrySignalCollector<md::components::Material>::~RegistrySignalCollector(gdc::EntityCollector *a1)
{
  *a1 = &unk_1F2A07F58;
  gdc::RegistrySignalCollector<md::components::Material>::unobserve(a1);

  gdc::EntityCollector::~EntityCollector(a1);
}

{
  gdc::RegistrySignalCollector<md::components::Material>::~RegistrySignalCollector(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::RegistrySignalCollector<md::components::Material>::unobserve(uint64_t result)
{
  v1 = result;
  if (*(result + 56))
  {
    gdc::RegistrySignalCollector<md::components::Material>::disconnect<md::components::Material>(result, 0);
    gdc::RegistrySignalCollector<md::components::Material>::disconnect<md::components::Material>(v1, 1u);
    result = gdc::RegistrySignalCollector<md::components::Material>::disconnect<md::components::Material>(v1, 2u);
  }

  v1[5] = v1[4];
  v1[7] = 0;
  return result;
}

void gdc::EntityCollector::~EntityCollector(gdc::EntityCollector *this)
{
  *this = &unk_1F2A07E20;
  *(this + 5) = *(this + 4);
  *(this + 7) = 0;
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](this + 64);
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = (this + 8);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);
}

{
  gdc::EntityCollector::~EntityCollector(this);

  JUMPOUT(0x1B8C62190);
}

void *gdc::EntityCollector::unobserve(void *this)
{
  this[5] = this[4];
  this[7] = 0;
  return this;
}

void *gdc::EntityCollector::observe(void *result, uint64_t a2)
{
  v3 = result;
  if (result[7] != a2)
  {
    result = (*(*result + 24))(result);
  }

  v3[7] = a2;
  return result;
}

uint64_t gdc::RegistrySignalCollector<md::components::Material>::disconnect<md::components::Material>(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = a1 + 8 * a2;
  result = gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::getId<md::components::Material>();
  v6 = *(v4 + 8 * result + 96);
  if (v6 != -1)
  {
    v7 = (gdc::Registry::storage<md::components::Material>(*(a1 + 56)) + qword_1B3420E60[v2]);

    return std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__erase_unique<unsigned long>(v7, v6);
  }

  return result;
}

uint64_t gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::getId<md::components::Material>()
{
  v0 = &unk_1EB82B000;
  {
    v0 = &unk_1EB82B000;
    if (v2)
    {
      gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::getId<md::components::Material>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82B000;
    }
  }

  return v0[260];
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__erase_unique<unsigned long>(uint64_t *result, unint64_t a2)
{
  v4 = result[1];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a2;
      if (*&v4 <= a2)
      {
        v6 = a2 % *&v4;
      }
    }

    else
    {
      v6 = (*&v4 - 1) & a2;
    }

    v22 = v2;
    v23 = v3;
    v7 = *result;
    v8 = *(*result + 8 * v6);
    if (v8)
    {
      v9 = *v8;
      if (v9)
      {
        v10 = *&v4 - 1;
        do
        {
          v11 = v9[1];
          if (v11 == a2)
          {
            if (v9[2] == a2)
            {
              v12 = v9[1];
              if (v5.u32[0] > 1uLL)
              {
                if (v12 >= *&v4)
                {
                  v12 %= *&v4;
                }
              }

              else
              {
                v12 &= v10;
              }

              v13 = *(v7 + 8 * v12);
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13 != v9);
              if (v14 == result + 2)
              {
                goto LABEL_36;
              }

              v15 = v14[1];
              if (v5.u32[0] > 1uLL)
              {
                if (v15 >= *&v4)
                {
                  v15 %= *&v4;
                }
              }

              else
              {
                v15 &= v10;
              }

              if (v15 != v12)
              {
LABEL_36:
                if (!*v9)
                {
                  goto LABEL_37;
                }

                v16 = *(*v9 + 8);
                if (v5.u32[0] > 1uLL)
                {
                  if (v16 >= *&v4)
                  {
                    v16 %= *&v4;
                  }
                }

                else
                {
                  v16 &= v10;
                }

                if (v16 != v12)
                {
LABEL_37:
                  *(v7 + 8 * v12) = 0;
                }
              }

              v17 = *v9;
              if (*v9)
              {
                v18 = *(v17 + 8);
                if (v5.u32[0] > 1uLL)
                {
                  if (v18 >= *&v4)
                  {
                    v18 %= *&v4;
                  }
                }

                else
                {
                  v18 &= v10;
                }

                if (v18 != v12)
                {
                  *(*result + 8 * v18) = v14;
                  v17 = *v9;
                }
              }

              *v14 = v17;
              *v9 = 0;
              --result[3];
              v19[0] = v9;
              v19[1] = result;
              v20 = 1;
              memset(v21, 0, sizeof(v21));
              return std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,void *>>>>::~unique_ptr[abi:nn200100](v19);
            }
          }

          else
          {
            if (v5.u32[0] > 1uLL)
            {
              if (v11 >= *&v4)
              {
                v11 %= *&v4;
              }
            }

            else
            {
              v11 &= v10;
            }

            if (v11 != v6)
            {
              return result;
            }
          }

          v9 = *v9;
        }

        while (v9);
      }
    }
  }

  return result;
}

uint64_t gdc::EnteringCollector<md::components::Material>::observe(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1[7] != a2)
  {
    (*(*a1 + 24))(a1);
  }

  a1[7] = a2;
  v4 = gdc::Registry::storage<md::components::Material>(a2);
  v9 = &unk_1F2A081C8;
  v10 = a1;
  v11 = &v9;
  v5 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v4 + 152), &v9);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v5 != -1)
  {
    a1[gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::getId<md::components::Material>() + 12] = v5;
  }

  v6 = gdc::Registry::storage<md::components::Material>(a1[7]);
  v9 = &unk_1F2A08210;
  v10 = a1;
  v11 = &v9;
  v7 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v6 + 200), &v9);
  result = std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v7 != -1)
  {
    result = gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::getId<md::components::Material>();
    a1[result + 14] = v7;
  }

  return result;
}

void sub_1B2E74C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  if (v3)
  {
    v4 = *a3;
    v5 = result[1];
    v6 = 8 * v3;
    do
    {
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((v5 + 8), *(v4 + 4));
      v4 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

void *geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase(void *a1, unsigned int a2)
{
  result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1, a2);
  if (a1[4] != result)
  {

    return geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase(a1, result);
  }

  return result;
}

uint64_t std::__function::__func<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A08210;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *a2;
    v5 = *a3;
    v6 = 8 * v3;
    v7 = *(result + 8);
    do
    {
      v8 = *v5;
      v9 = HIDWORD(*v5);
      v10 = gdc::Registry::storage<md::components::Material>(v4);
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v10 + 32), v9);
      if (*(v10 + 64) != result)
      {
        result = gdc::EntityCollector::add(v7, v8);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t gdc::EntityCollector::add(uint64_t *a1, uint64_t a2)
{
  v5 = a2;
  v3 = a1[11];
  if (!v3)
  {
    return geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 1, &v5);
  }

  v6 = a1[7];
  v7 = a2;
  result = (*(*v3 + 48))(v3, &v6, &v7);
  if (result)
  {
    return geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 1, &v5);
  }

  return result;
}

uint64_t std::__function::__func<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::EnteringCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A081C8;
  a2[1] = v2;
  return result;
}

void gdc::EnteringCollector<md::components::Material>::~EnteringCollector(gdc::EntityCollector *a1)
{
  gdc::RegistrySignalCollector<md::components::Material>::~RegistrySignalCollector(a1);

  JUMPOUT(0x1B8C62190);
}

BOOL std::__function::__func<md::MeshRenderableLogic::MeshRenderableLogic(std::shared_ptr<md::RegistryManager> const&,std::shared_ptr<md::RunLoopController> const&,geo::TaskQueue *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_0,std::allocator<md::MeshRenderableLogic::MeshRenderableLogic(std::shared_ptr<md::RegistryManager> const&,std::shared_ptr<md::RunLoopController> const&,geo::TaskQueue *,NSObject  {objcproto17OS_dispatch_queue}*,BOOL)::$_0>,BOOL ()(gdc::Registry const*,gdc::Entity)>::operator()(uint64_t a1, uint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = HIDWORD(*a3);
  v5 = gdc::Registry::storage<md::components::MeshInstance>(*a2);
  if (*(v5 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v5 + 32), v4))
  {
    return 1;
  }

  v7 = gdc::Registry::storage<md::components::DynamicMeshInstance>(v3);
  return *(v7 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v7 + 32), v4);
}

void sub_1B2E751E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va1);
  gdc::RegistrySignalCollector<md::components::MeshInstance>::~RegistrySignalCollector(v3);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va);
  MEMORY[0x1B8C62190](v3, v2);
  _Unwind_Resume(a1);
}

void gdc::RegistrySignalCollector<md::components::MeshInstance>::~RegistrySignalCollector(gdc::EntityCollector *a1)
{
  *a1 = &unk_1F2A08090;
  gdc::RegistrySignalCollector<md::components::MeshInstance>::unobserve(a1);

  gdc::EntityCollector::~EntityCollector(a1);
}

{
  gdc::RegistrySignalCollector<md::components::MeshInstance>::~RegistrySignalCollector(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::RegistrySignalCollector<md::components::MeshInstance>::unobserve(uint64_t result)
{
  v1 = result;
  if (*(result + 56))
  {
    gdc::RegistrySignalCollector<md::components::MeshInstance>::disconnect<md::components::MeshInstance>(result, 0);
    gdc::RegistrySignalCollector<md::components::MeshInstance>::disconnect<md::components::MeshInstance>(v1, 1u);
    result = gdc::RegistrySignalCollector<md::components::MeshInstance>::disconnect<md::components::MeshInstance>(v1, 2u);
  }

  v1[5] = v1[4];
  v1[7] = 0;
  return result;
}

uint64_t gdc::RegistrySignalCollector<md::components::MeshInstance>::disconnect<md::components::MeshInstance>(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = a1 + 8 * a2;
  result = gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::MeshInstance>,unsigned long long>::getId<md::components::MeshInstance>();
  v6 = *(v4 + 8 * result + 96);
  if (v6 != -1)
  {
    v7 = (gdc::Registry::storage<md::components::MeshInstance>(*(a1 + 56)) + qword_1B3420E78[v2]);

    return std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__erase_unique<unsigned long>(v7, v6);
  }

  return result;
}

uint64_t gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::MeshInstance>,unsigned long long>::getId<md::components::MeshInstance>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::MeshInstance>,unsigned long long>::getId<md::components::MeshInstance>(void)::localId = atomic_fetch_add(gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::MeshInstance>,unsigned long long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[199];
}

uint64_t gdc::EnteringCollector<md::components::MeshInstance>::observe(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1[7] != a2)
  {
    (*(*a1 + 24))(a1);
  }

  a1[7] = a2;
  v4 = gdc::Registry::storage<md::components::MeshInstance>(a2);
  v9 = &unk_1F2A080C0;
  v10 = a1;
  v11 = &v9;
  v5 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v4 + 152), &v9);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v5 != -1)
  {
    a1[gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::MeshInstance>,unsigned long long>::getId<md::components::MeshInstance>() + 12] = v5;
  }

  v6 = gdc::Registry::storage<md::components::MeshInstance>(a1[7]);
  v9 = &unk_1F2A08108;
  v10 = a1;
  v11 = &v9;
  v7 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v6 + 200), &v9);
  result = std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v7 != -1)
  {
    result = gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::MeshInstance>,unsigned long long>::getId<md::components::MeshInstance>();
    a1[result + 14] = v7;
  }

  return result;
}

void sub_1B2E75554(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  if (v3)
  {
    v4 = *a3;
    v5 = result[1];
    v6 = 8 * v3;
    do
    {
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((v5 + 8), *(v4 + 4));
      v4 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__function::__func<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A08108;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *a2;
    v5 = *a3;
    v6 = 8 * v3;
    v7 = *(result + 8);
    do
    {
      v8 = *v5;
      v9 = HIDWORD(*v5);
      v10 = gdc::Registry::storage<md::components::MeshInstance>(v4);
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v10 + 32), v9);
      if (*(v10 + 64) != result)
      {
        result = gdc::EntityCollector::add(v7, v8);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__function::__func<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::EnteringCollector<md::components::MeshInstance>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A080C0;
  a2[1] = v2;
  return result;
}

void gdc::EnteringCollector<md::components::MeshInstance>::~EnteringCollector(gdc::EntityCollector *a1)
{
  gdc::RegistrySignalCollector<md::components::MeshInstance>::~RegistrySignalCollector(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E75948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va1);
  gdc::RegistrySignalCollector<md::components::Material>::~RegistrySignalCollector(v3);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va);
  MEMORY[0x1B8C62190](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t gdc::UpdateCollector<md::components::Material>::observe(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1[7] != a2)
  {
    (*(*a1 + 24))(a1);
  }

  a1[7] = a2;
  v4 = gdc::Registry::storage<md::components::Material>(a2);
  v9 = &unk_1F2A07F88;
  v10 = a1;
  v11 = &v9;
  v5 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v4 + 104), &v9);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v5 != -1)
  {
    a1[gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::getId<md::components::Material>() + 13] = v5;
  }

  v6 = gdc::Registry::storage<md::components::Material>(a1[7]);
  v9 = &unk_1F2A07FD0;
  v10 = a1;
  v11 = &v9;
  v7 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v6 + 200), &v9);
  result = std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v7 != -1)
  {
    result = gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Material>,unsigned long long>::getId<md::components::Material>();
    a1[result + 14] = v7;
  }

  return result;
}

void sub_1B2E75AC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  if (v3)
  {
    v4 = *a3;
    v5 = result[1];
    v6 = 8 * v3;
    do
    {
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((v5 + 8), *(v4 + 4));
      v4 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__function::__func<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A07FD0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *a2;
    v5 = *a3;
    v6 = 8 * v3;
    v7 = *(result + 8);
    do
    {
      v8 = *v5;
      v9 = HIDWORD(*v5);
      v10 = gdc::Registry::storage<md::components::Material>(v4);
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v10 + 32), v9);
      if (*(v10 + 64) != result)
      {
        result = gdc::EntityCollector::add(v7, v8);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__function::__func<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::UpdateCollector<md::components::Material>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A07F88;
  a2[1] = v2;
  return result;
}

void gdc::UpdateCollector<md::components::Material>::~UpdateCollector(gdc::EntityCollector *a1)
{
  gdc::RegistrySignalCollector<md::components::Material>::~RegistrySignalCollector(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2E75EBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va1);
  gdc::RegistrySignalCollector<md::components::Visibility>::~RegistrySignalCollector(v3);
  std::__function::__value_func<BOOL ()(gdc::Registry const*,gdc::Entity)>::~__value_func[abi:nn200100](va);
  MEMORY[0x1B8C62190](v3, v2);
  _Unwind_Resume(a1);
}

void gdc::RegistrySignalCollector<md::components::Visibility>::~RegistrySignalCollector(gdc::EntityCollector *a1)
{
  *a1 = &unk_1F2A07DF0;
  gdc::RegistrySignalCollector<md::components::Visibility>::unobserve(a1);

  gdc::EntityCollector::~EntityCollector(a1);
}

{
  gdc::RegistrySignalCollector<md::components::Visibility>::~RegistrySignalCollector(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::RegistrySignalCollector<md::components::Visibility>::unobserve(uint64_t result)
{
  v1 = result;
  if (*(result + 56))
  {
    gdc::RegistrySignalCollector<md::components::Visibility>::disconnect<md::components::Visibility>(result, 0);
    gdc::RegistrySignalCollector<md::components::Visibility>::disconnect<md::components::Visibility>(v1, 1u);
    result = gdc::RegistrySignalCollector<md::components::Visibility>::disconnect<md::components::Visibility>(v1, 2u);
  }

  v1[5] = v1[4];
  v1[7] = 0;
  return result;
}

uint64_t gdc::RegistrySignalCollector<md::components::Visibility>::disconnect<md::components::Visibility>(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = a1 + 8 * a2;
  result = gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Visibility>,unsigned long long>::getId<md::components::Visibility>();
  v6 = *(v4 + 8 * result + 96);
  if (v6 != -1)
  {
    v7 = (gdc::Registry::storage<md::components::Visibility>(*(a1 + 56)) + qword_1B3420E90[v2]);

    return std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__erase_unique<unsigned long>(v7, v6);
  }

  return result;
}

uint64_t gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Visibility>,unsigned long long>::getId<md::components::Visibility>()
{
  v0 = &unk_1EB82A000;
  {
    v0 = &unk_1EB82A000;
    if (v2)
    {
      gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Visibility>,unsigned long long>::getId<md::components::Visibility>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Visibility>,unsigned long long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82A000;
    }
  }

  return v0[459];
}

uint64_t gdc::UpdateCollector<md::components::Visibility>::observe(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1[7] != a2)
  {
    (*(*a1 + 24))(a1);
  }

  a1[7] = a2;
  v4 = gdc::Registry::storage<md::components::Visibility>(a2);
  v9 = &unk_1F2A07E50;
  v10 = a1;
  v11 = &v9;
  v5 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v4 + 104), &v9);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v5 != -1)
  {
    a1[gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Visibility>,unsigned long long>::getId<md::components::Visibility>() + 13] = v5;
  }

  v6 = gdc::Registry::storage<md::components::Visibility>(a1[7]);
  v9 = &unk_1F2A07E98;
  v10 = a1;
  v11 = &v9;
  v7 = gdc::Signal<gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>>::connect((v6 + 200), &v9);
  result = std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](&v9);
  if (v7 != -1)
  {
    result = gdc::FamilyInfo<gdc::RegistrySignalCollector<md::components::Visibility>,unsigned long long>::getId<md::components::Visibility>();
    a1[result + 14] = v7;
  }

  return result;
}

void sub_1B2E76228(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  if (v3)
  {
    v4 = *a3;
    v5 = result[1];
    v6 = 8 * v3;
    do
    {
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((v5 + 8), *(v4 + 4));
      v4 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__function::__func<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A07E98;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *a2;
    v5 = *a3;
    v6 = 8 * v3;
    v7 = *(result + 8);
    do
    {
      v8 = *v5;
      v9 = HIDWORD(*v5);
      v10 = gdc::Registry::storage<md::components::Visibility>(v4);
      result = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v10 + 32), v9);
      if (*(v10 + 64) != result)
      {
        result = gdc::EntityCollector::add(v7, v8);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t std::__function::__func<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::UpdateCollector<md::components::Visibility>::observe(gdc::Registry *)::{lambda(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A07E50;
  a2[1] = v2;
  return result;
}

void gdc::UpdateCollector<md::components::Visibility>::~UpdateCollector(gdc::EntityCollector *a1)
{
  gdc::RegistrySignalCollector<md::components::Visibility>::~RegistrySignalCollector(a1);

  JUMPOUT(0x1B8C62190);
}

void md::Logic<md::MeshRenderableLogic,md::MeshRenderableContext,md::LogicDependencies<gdc::TypeList<md::MaterialContext,md::AssetContext,md::StyleLogicContext,md::RegistryContext,md::SceneQueryContext,md::CameraContext,md::DrapingContext,md::IdentifiedResourceContext,md::PuckContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

uint64_t md::MuninRoadLabeler::getLabelMarkers(uint64_t result)
{
  if (*(result + 104) != *(result + 112))
  {
    operator new();
  }

  return result;
}

void sub_1B2E76858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B2E76964(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<md::MuninRoadLabelMarker *,std::shared_ptr<md::LabelMarker>::__shared_ptr_default_delete<md::LabelMarker,md::MuninRoadLabelMarker>,std::allocator<md::MuninRoadLabelMarker>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<md::MuninRoadLabelMarker *,std::shared_ptr<md::LabelMarker>::__shared_ptr_default_delete<md::LabelMarker,md::MuninRoadLabelMarker>,std::allocator<md::MuninRoadLabelMarker>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::MuninRoadLabeler::updateOcclusionQueries(md::MuninRoadLabeler *this)
{
  v1 = *(this + 10);
  for (i = *(this + 11); v1 != i; v1 += 2)
  {
    v4 = *v1;
    if (*(*v1 + 354) == 1 && (*(v4 + 355) & 1) == 0)
    {
      v5 = *(*(this + 1) + 360);
      v6 = *(v4 + 328);
      if (!v6)
      {
        LOBYTE(v34) = 2;
        LOBYTE(v32) = 19;
        std::allocate_shared[abi:nn200100]<md::OcclusionQuery,std::allocator<md::OcclusionQuery>,md::LabelType,md::LabelFeatureType,0>();
      }

      v7 = atomic_load((v6 + 286));
      if (v7)
      {
        *(v4 + 352) = 0;
        *(v4 + 355) = 1;
        v34 = *(v4 + 360);
        v35 = *(v4 + 376);
        v8 = *(v4 + 256);
        if (v8 != 0.0 && *(v4 + 252) == 1)
        {
          v9 = 0;
          v10 = -v8;
          do
          {
            *(&v36 + v9) = *(v4 + 240 + v9) * v10;
            v9 += 4;
          }

          while (v9 != 12);
          v11 = 0;
          v32 = v36;
          v33 = v37;
          do
          {
            *(&v36 + v11) = *(&v32 + v11);
            ++v11;
          }

          while (v11 != 3);
          for (j = 0; j != 24; j += 8)
          {
            *(&v34 + j) = *(&v34 + j) + *(&v36 + j);
          }
        }

        for (k = 0; k != 24; k += 8)
        {
          *(&v36 + k) = *(&v34 + k) + *(v4 + 216 + k);
        }

        v14 = (*(**(v4 + 64) + 256))(*(v4 + 64));
        v15.i64[0] = *(v4 + 432);
        v16 = gm::Box<float,2>::operator-(v14, v15);
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v23 = **(v4 + 328);
        *v23 = 5;
        *(v23 + 237) = 2;
        geo::small_vector_base<gm::Matrix<double,3,1>>::resize((v23 + 80));
        v24 = 0;
        v25 = *(v23 + 80);
        do
        {
          *(v25 + v24) = *(&v36 + v24);
          v24 += 8;
        }

        while (v24 != 24);
        v26 = (v4 + 240);
        *(v23 + 200) = v16;
        *(v23 + 204) = v18;
        *(v23 + 208) = v20;
        *(v23 + 212) = v22;
        *(v23 + 239) = 8;
        v27 = (v23 + 216);
        v28 = *(v23 + 228);
        if (v28 == *(v4 + 252))
        {
          if (*(v23 + 228))
          {
            for (m = 0; m != 12; m += 4)
            {
              *(v27 + m) = *(v26 + m);
            }
          }
        }

        else
        {
          if (v28)
          {
            v30 = 0;
          }

          else
          {
            v31 = *v26;
            *(v23 + 224) = *(v4 + 248);
            *v27 = v31;
            v30 = 1;
          }

          *(v23 + 228) = v30;
        }

        *(v23 + 240) = 4;
        geo::small_vector_base<md::OcclusionProbe>::resize(v23 + 8, 8uLL);
        md::OcclusionManager::addQuery(v5, (v4 + 328));
      }
    }
  }
}

uint64_t md::MuninRoadLabeler::resetOcclusionQueries(uint64_t this)
{
  v1 = *(this + 80);
  for (i = *(this + 88); v1 != i; v1 += 2)
  {
    v3 = *v1;
    v3[352] = 1;
    if (v3[493] != 2)
    {
      v3[356] = 0;
    }
  }

  return this;
}

void md::MuninRoadLabeler::clearScene(uint64_t a1, int a2)
{
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (a2 != 1)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 192));
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 216));
    std::unique_ptr<md::MuninRoadGraph>::reset[abi:nn200100]((a1 + 136), 0);
    std::unique_ptr<md::MuninRoadGraphZData>::reset[abi:nn200100]((a1 + 144), 0);
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((a1 + 240));
    md::MuninRoadLabeler::resetCurrentJunctions(a1);
    md::MuninRoadLabelPool::clear(*(a1 + 32));
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 80));

    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 104));
  }
}

uint64_t *std::unique_ptr<md::MuninRoadGraph>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 184);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 144);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 104);
    v8 = (v2 + 80);
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v8);
    v3 = *(v2 + 56);
    if (v3)
    {
      *(v2 + 64) = v3;
      operator delete(v3);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 16);
    v4 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v4)
    {
      v5 = geo::Pool<md::ComposedRoadEdge>::~Pool(v4);
      MEMORY[0x1B8C62190](v5, 0x1020C407A7143E5);
    }

    v6 = *v2;
    *v2 = 0;
    if (v6)
    {
      v7 = geo::Pool<md::CoalescedJunction>::~Pool(v6);
      MEMORY[0x1B8C62190](v7, 0x1020C407A7143E5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void *std::unique_ptr<md::MuninRoadGraphZData>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 54));
    std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>>>::~__hash_table((v2 + 49));
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 44));
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 39));
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 34));
    v3 = v2[31];
    if (v3)
    {
      v2[32] = v3;
      operator delete(v3);
    }

    v4 = v2[28];
    if (v4)
    {
      v2[29] = v4;
      operator delete(v4);
    }

    v5 = v2[25];
    if (v5)
    {
      v2[26] = v5;
      operator delete(v5);
    }

    v6 = v2[22];
    if (v6)
    {
      v2[23] = v6;
      operator delete(v6);
    }

    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 15));
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((v2 + 10));
    std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>>>::~__hash_table((v2 + 5));

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::MuninRoadLabeler::resetCurrentJunctions(md::MuninRoadLabeler *this)
{
  v2 = *(this + 21);
  v3 = this + 176;
  if (v2 != this + 176)
  {
    do
    {
      md::MuninJunctionFeature::clearLabels(*(*(v2 + 4) + 56), *(*(v2 + 4) + 64));
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  std::__tree<gdc::LayerDataWithWorld>::destroy(*(this + 22));
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = v3;
}

uint64_t std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZInfo>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[13];
      if (v4)
      {
        v2[14] = v4;
        operator delete(v4);
      }

      v5 = v2[10];
      if (v5)
      {
        v2[11] = v5;
        operator delete(v5);
      }

      v6 = v2[7];
      if (v6)
      {
        v2[8] = v6;
        operator delete(v6);
      }

      v7 = v2[4];
      if (v7)
      {
        v2[5] = v7;
        operator delete(v7);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::__unordered_map_hasher<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::hash<md::ComposedRoadEdge const*>,std::equal_to<md::ComposedRoadEdge const*>,true>,std::__unordered_map_equal<md::ComposedRoadEdge const*,std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>,std::equal_to<md::ComposedRoadEdge const*>,std::hash<md::ComposedRoadEdge const*>,true>,std::allocator<std::__hash_value_type<md::ComposedRoadEdge const*,md::ComposedRoadEdgeZSamplingInfo>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[13];
      if (v3)
      {
        v1[14] = v3;
        operator delete(v3);
      }

      v4 = v1[10];
      if (v4)
      {
        v1[11] = v4;
        operator delete(v4);
      }

      v5 = v1[7];
      if (v5)
      {
        v1[8] = v5;
        operator delete(v5);
      }

      v6 = v1[4];
      if (v6)
      {
        v1[5] = v6;
        operator delete(v6);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t geo::Pool<md::ComposedRoadEdge>::~Pool(uint64_t a1)
{
  v24 = 0;
  v25 = 0;
  v23 = &v24;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v23, v2);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v25;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 24);
  v6 = *a1;
  v7 = (a1 + 8);
  v8 = v4 == *(a1 + 16) * v5 || v6 == v7;
  if (!v8)
  {
    do
    {
      if (v5)
      {
        v9 = 0;
        v10 = v6[4];
        do
        {
          v11 = v10 + 152 * v9;
          v12 = v24;
          if (!v24)
          {
            goto LABEL_20;
          }

          v13 = &v24;
          do
          {
            v14 = v12;
            v15 = v13;
            v16 = v12[4];
            if (v16 >= v11)
            {
              v13 = v12;
            }

            v12 = v12[v16 < v11];
          }

          while (v12);
          if (v13 == &v24)
          {
            goto LABEL_20;
          }

          if (v16 < v11)
          {
            v14 = v15;
          }

          if (v11 < v14[4])
          {
LABEL_20:
            std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v11 + 48);
            v17 = *(v11 + 24);
            if (v17)
            {
              *(v11 + 32) = v17;
              operator delete(v17);
            }

            if (*v11)
            {
              operator delete(*v11);
            }
          }

          ++v9;
          v5 = *(a1 + 24);
        }

        while (v9 < v5);
      }

      v18 = v6[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v6[2];
          v8 = *v19 == v6;
          v6 = v19;
        }

        while (!v8);
      }

      v6 = v19;
    }

    while (v19 != v7);
    v6 = *a1;
  }

  if (v6 != v7)
  {
    do
    {
      free(v6[4]);
      v20 = v6[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v6[2];
          v8 = *v21 == v6;
          v6 = v21;
        }

        while (!v8);
      }

      v6 = v21;
    }

    while (v21 != v7);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v7;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v24);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2E77344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t geo::Pool<md::CoalescedJunction>::~Pool(uint64_t a1)
{
  v24 = 0;
  v25 = 0;
  v23 = &v24;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v23, v2);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v25;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 24);
  v6 = *a1;
  v7 = (a1 + 8);
  v8 = v4 == *(a1 + 16) * v5 || v6 == v7;
  if (!v8)
  {
    v9 = *(a1 + 24);
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = v6[4];
        do
        {
          v12 = (v11 + 96 * v10);
          v13 = v24;
          if (!v24)
          {
            goto LABEL_21;
          }

          v14 = &v24;
          do
          {
            v15 = v13;
            v16 = v14;
            v17 = v13[4];
            if (v17 >= v12)
            {
              v14 = v13;
            }

            v13 = v13[v17 < v12];
          }

          while (v13);
          if (v14 == &v24)
          {
            goto LABEL_21;
          }

          if (v17 < v12)
          {
            v15 = v16;
          }

          if (v12 < v15[4])
          {
LABEL_21:
            (**v12)(v12);
            v5 = *(a1 + 24);
          }

          ++v10;
          v9 = v5;
        }

        while (v10 < v5);
      }

      v18 = v6[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v6[2];
          v8 = *v19 == v6;
          v6 = v19;
        }

        while (!v8);
      }

      v6 = v19;
    }

    while (v19 != v7);
    v6 = *a1;
  }

  if (v6 != v7)
  {
    do
    {
      free(v6[4]);
      v20 = v6[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v6[2];
          v8 = *v21 == v6;
          v6 = v21;
        }

        while (!v8);
      }

      v6 = v21;
    }

    while (v21 != v7);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v7;
  *(a1 + 40) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v24);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 8));
  return a1;
}

void sub_1B2E77544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a11);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v11 + 8));
  _Unwind_Resume(a1);
}

uint64_t md::MuninRoadLabeler::endFrameLayout(uint64_t this, BOOL *a2, BOOL *a3)
{
  *a2 |= *(this + 72);
  *a3 |= *(this + 73);
  return this;
}

void md::MuninRoadLabeler::render(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 72))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 73) ^ 1;
  }

  v6 = *(a1 + 104);
  for (i = *(a1 + 112); v6 != i; v6 += 2)
  {
    if (*(*v6 + 538))
    {
      v8 = *(a1 + 8);
      v9 = (*(**(*v6 + 64) + 264))(*(*v6 + 64));
      v10 = 0;
      v20 = v9;
      v21 = v11;
      v22[0] = v12;
      v22[1] = v13;
      v14 = &v20;
      v15 = 1;
      do
      {
        if (*(v8 + 1528 + 4 * v10) <= *v14 || *(v8 + 1520 + 4 * v10) >= *&v22[v10])
        {
          goto LABEL_23;
        }

        v16 = v15;
        v15 = 0;
        v14 = &v21;
        v10 = 1;
      }

      while ((v16 & 1) != 0);
      if ((*(*v6 + 536) & 1) == 0)
      {
        (*(**(*v6 + 64) + 128))(*(*v6 + 64), a3, *(*v6 + 268));
      }

      if (v5)
      {
        v17 = *v6;
        if (*(*v6 + 302) == 1)
        {
          v18 = *(v17 + 64);
          if (v18 && ((*(*v18 + 616))(v18) & 1) != 0)
          {
LABEL_19:
            v5 = 0;
            *(a1 + 73) = 1;
            continue;
          }

          v19 = *(v17 + 538);
          if (v19 == 1)
          {
            if (*(v17 + 264) < 1.0)
            {
              goto LABEL_19;
            }
          }

          else if (v19 == 2 && *(v17 + 264) > 0.0)
          {
            goto LABEL_19;
          }
        }

        v5 = 1;
      }

      else
      {
        v5 = 0;
      }
    }

LABEL_23:
    ;
  }
}

void md::MuninRoadLabeler::layoutForDisplay(md::MuninRoadLabeler *this, const md::LayoutContext *a2)
{
  v4 = gdc::Context::context<md::MuninSceneContext>(*(a2 + 1));
  v5 = v4[5];
  for (i = v4[6]; v5 != i; v5 += 272)
  {
    v7 = *v5;
    switch(v7)
    {
      case 6:
        *(this + 289) = 1;
        break;
      case 5:
        *(this + 288) = 0;
        break;
      case 2:
        *(this + 288) = 1;
        v8 = *(this + 13);
        v9 = *(this + 14);
        while (v8 != v9)
        {
          v10 = *v8;
          v8 += 2;
          *(v10 + 537) = 1;
        }

        break;
    }
  }

  if (md::MuninRoadLabeler::needsDebugDraw(this))
  {
    md::LayoutContext::get<md::CameraContext>(*(a2 + 1));
    operator new();
  }

  v11 = *(this + 13);
  v12 = *(this + 14);
  if (v11 != v12)
  {
    while (1)
    {
      v13 = *v11;
      v14 = *(this + 1);
      v34 = xmmword_1B33B0710;
      v35 = 0.0;
      v36 = 0;
      LOBYTE(v37) = 0;
      BYTE12(v37) = 0;
      md::LabelLayoutContext::evaluateWorldPoint(v14 + 432, v13 + 184, &v37, *(v13 + 296), 0, &v34, 1.0);
      v15 = v36;
      *(v13 + 536) = v36;
      if (v15 == 1)
      {
        break;
      }

      v20 = 1.0;
      if (*(v13 + 540) == 2)
      {
        v21 = *(v13 + 544);
        v20 = fmaxf(md::LabelStylePropertyRamp::valueAtZ(v21, fminf(fmaxf(*&v34, 0.0), 23.0)), 0.01);
        v21[28] = v20;
      }

      v22 = 0;
      *(v13 + 164) = v20;
      do
      {
        *(&v37 + v22) = *(v13 + v22 + 512) + *(v13 + v22 + 216);
        v22 += 8;
      }

      while (v22 != 24);
      v23 = v38;
      *(v13 + 128) = v37;
      *(v13 + 144) = v23;
      md::LabelLayoutContext::projectPointToPixel(v14 + 432, v13 + 128, (v13 + 152));
      v24 = *&v34;
      *(v13 + 160) = v34;
      v25 = v24;
      if (v24 >= 0x17)
      {
        LOBYTE(v25) = 23;
      }

      *(v13 + 172) = v25;
      v26 = v35;
      *(v13 + 168) = v26;
      v27 = *(v13 + 64);
      *&v37 = 0;
      v28 = (*(*v27 + 120))(v27, v14, 0, v13 + 152, &v37);
      if (*(v13 + 303) == 1)
      {
        if (*(v13 + 537) != 1)
        {
          v30 = 1;
          v29 = 37;
LABEL_30:
          if ((v28 & 0xFE) == 0x12)
          {
            v31 = 3;
          }

          else
          {
            v31 = 2;
          }

          if (v30)
          {
            v29 = 37;
            v32 = 4;
          }

          else
          {
            v32 = 3;
          }

          if (v28 == 37)
          {
            v18 = v29;
          }

          else
          {
            v18 = v28;
          }

          if (v28 == 37)
          {
            v33 = v32;
          }

          else
          {
            v33 = v31;
          }

          v17 = v33;
          v16 = v13;
          v19 = v14;
LABEL_43:
          md::MuninRoadLabel::updateStateMachineForDisplay(v16, v17, v18, v19);
          goto LABEL_44;
        }

        v29 = 29;
      }

      else
      {
        v29 = 30;
      }

      if (*(v13 + 538))
      {
        v30 = 0;
        goto LABEL_30;
      }

      *(v13 + 539) = v29;
LABEL_44:
      v11 += 2;
      if (v11 == v12)
      {
        return;
      }
    }

    v16 = v13;
    v17 = 2;
    v18 = 3;
    v19 = 0;
    goto LABEL_43;
  }
}

void md::MuninRoadLabeler::synchStagingWithDisplay(md::MuninRoadLabeler *this)
{
  v2 = *(this + 13);
  v4 = *(this + 14);
  v3 = (this + 104);
  memset(v42, 0, sizeof(v42));
  if (v2 != v4)
  {
    while (1)
    {
      v5 = *v2;
      if (*(*v2 + 493) != 2)
      {
        *(v5 + 303) = 0;
        if (!*(v5 + 538))
        {
          break;
        }
      }

      v2 += 2;
      if (v2 == v4)
      {
        v2 = v4;
        goto LABEL_6;
      }
    }

    std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100](v42, v2);
    if (*(*v2 + 302))
    {
      *(*v2 + 302) = 0;
    }

    if (v2 != v4)
    {
      for (i = (v2 + 2); i != v4; ++i)
      {
        v38 = *i;
        if (*(*i + 493) == 2 || (*(v38 + 303) = 0, *(v38 + 538)))
        {
          v39 = *(i + 1);
          *i = 0;
          *(i + 1) = 0;
          v40 = v2[1];
          *v2 = v38;
          v2[1] = v39;
          if (v40)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v40);
          }

          v2 += 2;
        }

        else
        {
          std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100](v42, i);
          if (*(*i + 302))
          {
            *(*i + 302) = 0;
          }
        }
      }
    }
  }

LABEL_6:
  v6 = *(this + 14);
  if (v2 != v6)
  {
    while (v6 != v2)
    {
      v7 = *(v6 - 1);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v6 -= 2;
    }

    *(this + 14) = v2;
  }

  memset(v41, 0, sizeof(v41));
  v8 = *(this + 10);
  for (j = *(this + 11); v8 != j; ++v8)
  {
    v10 = *v8;
    if (*(*v8 + 493) == 2)
    {
      if ((*(v10 + 302) & 1) == 0)
      {
        std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100](v41, v8);
        if ((*(*v8 + 302) & 1) == 0)
        {
          *(*v8 + 302) = 1;
        }

        v11 = *(this + 14);
        v12 = *(this + 15);
        if (v11 >= v12)
        {
          v15 = (v11 - *v3) >> 4;
          v16 = v15 + 1;
          if ((v15 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v17 = v12 - *v3;
          if (v17 >> 3 > v16)
          {
            v16 = v17 >> 3;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF0)
          {
            v18 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          v43[4] = v3;
          if (v18)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v18);
          }

          v19 = 16 * v15;
          v20 = *v8;
          *(16 * v15) = *v8;
          if (*(&v20 + 1))
          {
            atomic_fetch_add_explicit((*(&v20 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v14 = (v19 + 16);
          v21 = *(this + 13);
          v22 = *(this + 14) - v21;
          v23 = v19 - v22;
          memcpy((v19 - v22), v21, v22);
          v24 = *(this + 13);
          *(this + 13) = v23;
          *(this + 14) = v14;
          v25 = *(this + 15);
          *(this + 15) = 0;
          v43[2] = v24;
          v43[3] = v25;
          v43[0] = v24;
          v43[1] = v24;
          std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(v43);
        }

        else
        {
          *v11 = *v8;
          v13 = *(v8 + 1);
          *(v11 + 1) = v13;
          if (v13)
          {
            atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          }

          v14 = v11 + 16;
        }

        *(this + 14) = v14;
        v10 = *v8;
      }

      v26 = *(v10 + 303);
      *(v10 + 303) = 1;
      if ((v26 & 1) == 0)
      {
        v27 = *(v10 + 64);
        if (v27)
        {
          *(v27 + 560) = 1;
        }
      }
    }
  }

  v43[0] = v41;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](v43);
  v43[0] = v42;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](v43);
  v28 = *(this + 13);
  for (k = *(this + 14); v28 != k; v28 += 2)
  {
    v30 = *v28;
    v31 = *(this + 1);
    *(v30 + 540) = *(*v28 + 495);
    v33 = *(v30 + 496);
    v32 = *(v30 + 504);
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    *(v30 + 544) = v33;
    v34 = *(v30 + 552);
    *(v30 + 552) = v32;
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v34);
    }

    v35 = (v30 + 512);
    v36 = 3;
    do
    {
      *v35 = *(v35 - 16);
      ++v35;
      --v36;
    }

    while (v36);
    (*(**(v30 + 64) + 104))(*(v30 + 64), v31);
    (*(**(v30 + 64) + 112))(*(v30 + 64));
  }
}