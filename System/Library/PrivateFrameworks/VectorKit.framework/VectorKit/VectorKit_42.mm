void sub_1B2A97360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls31StyleRouteLineMaskDataKeyHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A50540;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_NewMaterials>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_NewMaterials>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::DetermineIfShouldRun_NewMaterials::operator()((a1 + 8));
  *v2 = 0;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31StyleRouteLineMaskDataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A50540;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(md::ls::RenderablesCount const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileUnitsPerMeter>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileUnitsPerMeter>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileUnitsPerMeter>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileUnitsPerMeter>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void md::MapEngineFrameService::cleanup(md::MapEngineFrameService *this)
{
  v2 = *(this + 14);
  v1 = *(this + 15);
  while (v2 != v1)
  {
    v4 = *v2;
    if (*(*v2 + 120))
    {
      *(v4 + 120) = 0;
      ++v2;
    }

    else
    {
      if (*(this + 4))
      {
        v5 = *(v4 + 96);
        if (v5)
        {
          *(v4 + 104) = v5;
          operator delete(v5);
        }

        v6 = *(v4 + 88);
        *(v4 + 88) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        std::unique_ptr<ggl::RenderQueue>::reset[abi:nn200100]((v4 + 80), 0);
        *v4 = *(this + 7);
        *(this + 7) = v4;
        v1 = *(this + 15);
      }

      if (v2 == v1)
      {
        return;
      }

      v7 = v2 - *(this + 14);
      v8 = *(*(this + 17) + v7);
      v9 = v8;
      v10 = *(this + 11);
      if (v8 >= ((*(this + 12) - v10) >> 3))
      {
        return;
      }

      v11 = *(v10 + 8 * v8);
      v12 = *(v10 + 8 * v9);
      v13 = (v12 ^ v11) >> 32;
      if (!v12 || v13 != 0)
      {
        return;
      }

      v16 = *(this + 9);
      v15 = *(this + 10);
      if (v16 < v15)
      {
        *v16 = v9;
        v25 = v16 + 8;
      }

      else
      {
        v17 = *(this + 8);
        v18 = v16 - v17;
        v19 = (v16 - v17) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v21 = v15 - v17;
        if (v21 >> 2 > v20)
        {
          v20 = v21 >> 2;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v22);
        }

        v36 = (v16 - v17) >> 3;
        v23 = (8 * v19);
        v24 = (8 * v19 - 8 * v36);
        *v23 = v9;
        v25 = v23 + 1;
        memcpy(v24, v17, v18);
        v26 = *(this + 8);
        *(this + 8) = v24;
        *(this + 9) = v25;
        *(this + 10) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      *(this + 9) = v25;
      v27 = *(*(this + 11) + 8 * v9);
      v29 = *(this + 14);
      v28 = *(this + 15);
      v30 = *(*(this + 17) + v28 - v29 - 8);
      v31 = *(v29 + 8 * v27);
      *(v29 + 8 * v27) = *(v28 - 8);
      *(v28 - 8) = v31;
      *(*(this + 11) + 8 * v30) = v27;
      v32 = *(this + 17);
      v33 = *(this + 18);
      v34 = *(v32 + 8 * v27);
      v35 = *--v33;
      *(v32 + 8 * v27) = v35;
      *v33 = v34;
      *(this + 15) -= 8;
      *(this + 18) = v33;
      *(*(this + 11) + 8 * v9 + 4) = ((*(*(this + 11) + 8 * v9 + 4) << 32) + 0x100000000) >> 32;
      *(*(this + 11) + 8 * v9) = (*(this + 12) - *(this + 11)) >> 3;
      v1 = *(this + 15);
      v2 = (v7 + *(this + 14));
    }
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::BasicRegistry<void>::remove<md::ita::FrameHandle>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ita::FrameHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ita::FrameHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ita::FrameHandle>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = a2 >> 16;
        v13 = v5[31];
        v12 = v5[32];
        if (v13 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v13 + 24), a2);
            v13 += 32;
          }

          while (v13 != v12);
          v8 = *(v10[1] + 8 * v6);
          v11 = a2 >> 16;
        }

        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v15 & 0x3F;
        v17 = v10[7];
        v18 = *(v17 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v19 = v14 & 0x3F;
        v20 = *(v17 + ((v14 >> 3) & 0x1FF8));
        v21 = *(v20 + 8 * v19);
        *(v20 + 8 * v19) = *(v18 + 8 * v16);
        *(v18 + 8 * v16) = v21;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, v11);
      }
    }
  }

  v22 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v22 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ita::FrameHandle>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ita::FrameHandle>(void)::metadata) = *(a1 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28ColorCorrectionDataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A51A90;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat::operator()((a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1> const&,md::ls::TileStyleDataKeyHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *md::ita::PrepareStyleConstantDataHandleForGlobeTiles::operator()(uint64_t **a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v2 = a1[2];
  if (!v2)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_3;
    }

    while (*v4 != 0x22D45F5AAD4BF408)
    {
      v2 = 0;
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    if (v4 == v5)
    {
LABEL_3:
      v2 = 0;
    }

    else
    {
      v2 = v4[3];
      v16 = v4[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }
    }

LABEL_6:
    a1[2] = v2;
  }

  v6 = *((**v2)(v2) + 8);
  result = md::LayoutContext::get<md::LightingLogicContext>(v6);
  if (result)
  {
    v8 = result;
    v9 = md::LayoutContext::get<md::ElevationContext>(v6);
    for (i = 0; i != 4; ++i)
    {
      _D0 = v8[i + 24];
      __asm { FCVT            H0, D0 }

      v18[i] = _D0;
    }

    v17 = 1.0 / v9[3];
    operator new();
  }

  return result;
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateShadowConstants>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateShadowConstants>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::UpdateShadowConstants::operator()((a1 + 8), a2);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsClimateTint>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsClimateTint>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[17];
}

void ecs2::BasicRegistry<void>::remove<md::ls::RenderTargetToPrepare>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderTargetToPrepare>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderTargetToPrepare>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderTargetToPrepare>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = a2 >> 16;
        v13 = v5[31];
        v12 = v5[32];
        if (v13 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v13 + 24), a2);
            v13 += 32;
          }

          while (v13 != v12);
          v8 = *(v10[1] + 8 * v6);
          v11 = a2 >> 16;
        }

        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v15 & 0x3F;
        v17 = v10[7];
        v18 = *(v17 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v19 = v14 & 0x3F;
        v20 = *(v17 + ((v14 >> 3) & 0x1FF8));
        v21 = *(v20 + 8 * v19);
        *(v20 + 8 * v19) = *(v18 + 8 * v16);
        *(v18 + 8 * v16) = v21;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, v11);
      }
    }
  }

  v22 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v22 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderTargetToPrepare>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderTargetToPrepare>(void)::metadata) = *(a1 + 4096);
}

uint64_t std::__function::__value_func<void ()(md::ls::TileMatrix const&,md::ls::TilePrepassConstantDataHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::ls::TileRenderableDataHandle const&,md::ls::TilePrepassShadowConstantDataHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls16NeedsClimateTintEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A4F1B0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateDepthPrePassConstants>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateDepthPrePassConstants>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::UpdateDepthPrePassConstants::operator()((a1 + 8), a2, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16NeedsClimateTintEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A4F1B0;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::CheckIfMaterialNeedsUpdate::operator()(uint64_t **a1, uint64_t a2)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v4 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v5 = a1[2];
  if (!v5)
  {
    v6 = **a1;
    v7 = *v6;
    v8 = *(v6 + 8);
    if (v7 == v8)
    {
      goto LABEL_3;
    }

    while (*v7 != 0x22D45F5AAD4BF408)
    {
      v5 = 0;
      v7 += 5;
      if (v7 == v8)
      {
        goto LABEL_6;
      }
    }

    if (v7 == v8)
    {
LABEL_3:
      v5 = 0;
    }

    else
    {
      v5 = v7[3];
      v13 = v7[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }
    }

LABEL_6:
    a1[2] = v5;
  }

  v9 = (**v5)(v5);
  result = gdc::Context::get<md::StyleLogicContext>(*(v9 + 8));
  v14 = 0;
  if (result)
  {
    v16[0] = &unk_1F2A2DD78;
    v16[1] = &v14;
    v16[3] = v16;
    md::StyleLogicContext::parseEvents(result, v16);
    result = std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v16);
    v11 = v14;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 | *(v4 + 14320);
  v14 = v12;
  if (v12)
  {
    *(v4 + 14321) = 1;
    v15[0] = &unk_1F2A2DDC0;
    v15[1] = a1;
    v15[3] = v15;
    ecs2::Runtime::_entities<std::function<void ()(md::ls::UniqueMaterialData const&)>,md::ls::UniqueMaterialData const&>(*(a2 + 8), v15);
    return std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&)>::~__value_func[abi:nn200100](v15);
  }

  return result;
}

void sub_1B2A98820(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void ecs2::BasicRegistry<void>::remove<md::erq::RenderQueueToSubmit>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderQueueToSubmit>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::RenderQueueToSubmit>();
    *algn_1EB83B848 = 0x17922920A08D336CLL;
    qword_1EB83B850 = "md::erq::RenderQueueToSubmit]";
    qword_1EB83B858 = 28;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderQueueToSubmit>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::erq::RenderQueueToSubmit>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = a2 >> 16;
        v12 = v5[31];
        v13 = v5[32];
        if (v12 != v13)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v12 + 24), a2);
            v12 += 32;
          }

          while (v12 != v13);
          v8 = *(v10[1] + 8 * v6);
          v11 = a2 >> 16;
        }

        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v15 & 0x3F;
        v17 = v10[7];
        v18 = *(v17 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v19 = v14 & 0x3F;
        v20 = *(v17 + ((v14 >> 3) & 0x1FF8));
        v21 = *(v20 + 8 * v19);
        *(v20 + 8 * v19) = *(v18 + 8 * v16);
        *(v18 + 8 * v16) = v21;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, v11);
      }
    }
  }

  v22 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v22 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderQueueToSubmit>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::RenderQueueToSubmit>();
    *algn_1EB83B848 = 0x17922920A08D336CLL;
    qword_1EB83B850 = "md::erq::RenderQueueToSubmit]";
    qword_1EB83B858 = 28;
  }

  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderQueueToSubmit>(void)::metadata) = *(a1 + 4096);
}

void ecs2::BasicRegistry<void>::remove<md::erq::RenderTargetToSubmit>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderTargetToSubmit>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::RenderTargetToSubmit>();
    unk_1EB83B820 = 0x38B0ED5EA8D13426;
    qword_1EB83B828 = "md::erq::RenderTargetToSubmit]";
    qword_1EB83B830 = 29;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderTargetToSubmit>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::erq::RenderTargetToSubmit>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = a2 >> 16;
        v12 = v5[31];
        v13 = v5[32];
        if (v12 != v13)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v12 + 24), a2);
            v12 += 32;
          }

          while (v12 != v13);
          v8 = *(v10[1] + 8 * v6);
          v11 = a2 >> 16;
        }

        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v15 & 0x3F;
        v17 = v10[7];
        v18 = *(v17 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v19 = v14 & 0x3F;
        v20 = *(v17 + ((v14 >> 3) & 0x1FF8));
        v21 = *(v20 + 8 * v19);
        *(v20 + 8 * v19) = *(v18 + 8 * v16);
        *(v18 + 8 * v16) = v21;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, v11);
      }
    }
  }

  v22 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v22 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderTargetToSubmit>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::RenderTargetToSubmit>();
    unk_1EB83B820 = 0x38B0ED5EA8D13426;
    qword_1EB83B828 = "md::erq::RenderTargetToSubmit]";
    qword_1EB83B830 = 29;
  }

  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::RenderTargetToSubmit>(void)::metadata) = *(a1 + 4096);
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::SetupCommonDataTask>,std::allocator<ecs2::ForwardToExecute<md::ita::SetupCommonDataTask>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::SetupCommonDataTask::operator()((a1 + 8));
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::LayerDataReference>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LayerDataReference>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LayerDataReference>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LayerDataReference>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::BasicRegistry<void>::remove<md::erq::GPUWorkCallbacks>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::GPUWorkCallbacks>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::GPUWorkCallbacks>();
    *algn_1EB83B868 = 0x3D9415B0404B6523;
    qword_1EB83B870 = "md::erq::GPUWorkCallbacks]";
    qword_1EB83B878 = 25;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::GPUWorkCallbacks>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::erq::GPUWorkCallbacks>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (a2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == a2)
      {
        v10 = v5;
        v11 = a2 >> 16;
        v12 = v5[31];
        v13 = v5[32];
        if (v12 != v13)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v12 + 24), a2);
            v12 += 32;
          }

          while (v12 != v13);
          v8 = *(v10[1] + 8 * v6);
          v11 = a2 >> 16;
        }

        v14 = *(v8 + 4 * v9 + 2);
        v15 = ((v10[5] - v10[4]) >> 2) - 1;
        v16 = v10[7];
        v17 = *(v16 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
        v18 = *(v16 + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F);
        v19 = *(v18 + 16);
        v20 = *v18;
        v21 = *(v17 + 16);
        *v18 = *v17;
        *(v18 + 16) = v21;
        *v17 = v20;
        *(v17 + 16) = v19;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, a2, v11);
      }
    }
  }

  v22 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v22 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::GPUWorkCallbacks>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::erq::GPUWorkCallbacks>();
    *algn_1EB83B868 = 0x3D9415B0404B6523;
    qword_1EB83B870 = "md::erq::GPUWorkCallbacks]";
    qword_1EB83B878 = 25;
  }

  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::erq::GPUWorkCallbacks>(void)::metadata) = *(a1 + 4096);
}

void std::__function::__func<md::MapEngine::onRenderTimerFired(double,std::function<void ()(void)>)::$_0,std::allocator<md::MapEngine::onRenderTimerFired(double,std::function<void ()(void)>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = (v1 + 40960);
  v3 = (std::chrono::steady_clock::now().__d_.__rep_ - *(a1 + 16)) * 0.000001;
  gdc::Statistics::addSampleValue(*(v1 + 5244), "Frame-time", 0x77E34BC70000000ALL, v3);
  gdc::Statistics::addHistogramValue(*(v1 + 5244), v3);
  if (v3 > 16.6666667)
  {
    gdc::Statistics::addSampleValue(*(v1 + 5244), "Frame-drops", 0xCDB00E350000000BLL, 1.0);
    if (GEOGetVectorKitPerformanceLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
    }

    v5 = GEOGetVectorKitPerformanceLog_log;
    if (os_signpost_enabled(v5))
    {
      v14 = 134217984;
      v15 = v3;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FrameDrop", "frameTime=%f", &v14, 0xCu);
    }
  }

  if (*(v1 + 5205))
  {
    v6 = *(v1 + 5244);
    v7 = atomic_load((*(ggl::Performance::Counters::instance(v4) + 32) + 24));
    gdc::Statistics::addSampleValue(v6, "Primitives", 0x4573984A0000000ALL, v7);
    v8 = *(v1 + 5244);
    v10 = atomic_load((*(ggl::Performance::Counters::instance(v9) + 32) + 16));
    gdc::Statistics::addSampleValue(v8, "Draw-calls", 0x38B3D7050000000ALL, v10);
  }

  md::MapEngine::updateRunLoopStatus(v1);
  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v11 = GEOGetVectorKitPerformanceLog_log;
  v12 = v11;
  v13 = v2[140];
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v12, OS_SIGNPOST_INTERVAL_END, v13, "Frame", &unk_1B3514CAA, &v14, 2u);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableAlbedoTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableAlbedoTexture>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[401];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RenderableAlbedoTextureEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A42CD8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(md::ls::TileBounds const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void gdc::Statistics::addHistogramValue(uint64_t a1, double a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = "Frame-time";
  v14 = 0x77E34BC70000000ALL;
  v2 = atomic_load((a1 + 153));
  if (v2)
  {
    std::mutex::lock((a1 + 8));
    v4 = *(a1 + 120);
    if (!v4)
    {
      goto LABEL_18;
    }

    v5 = HIDWORD(v14);
    v6 = vcnt_s8(v4);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.u32[0];
    if (v6.u32[0] > 1uLL)
    {
      v8 = HIDWORD(v14);
      if (v4 <= HIDWORD(v14))
      {
        v8 = HIDWORD(v14) % v4;
      }
    }

    else
    {
      v8 = (v4 - 1) & HIDWORD(v14);
    }

    v9 = *(*(a1 + 112) + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        if (geo::StringLiteral::operator==((v10 + 2), &v13))
        {
          v16 = 0;
          gdc::Histogram::addSample((v10 + 4), v15, a2);
          std::__function::__value_func<void ()(double,double,double)>::~__value_func[abi:nn200100](v15);
          std::mutex::unlock((a1 + 8));
          return;
        }
      }

      else
      {
        if (v7 > 1)
        {
          if (v11 >= v4)
          {
            v11 %= v4;
          }
        }

        else
        {
          v11 &= v4 - 1;
        }

        if (v11 != v8)
        {
          goto LABEL_18;
        }
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RenderableAlbedoTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42CD8;
  a2[1] = v2;
  return result;
}

void gdc::Statistics::addSampleValue(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v21 = a2;
  v22 = a3;
  v4 = atomic_load((a1 + 152));
  if ((v4 & 1) == 0)
  {
    return;
  }

  std::mutex::lock((a1 + 8));
  v6 = HIDWORD(v22);
  v7 = *(a1 + 80);
  if (!v7)
  {
LABEL_35:
    operator new();
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = HIDWORD(v22);
    if (v7 <= HIDWORD(v22))
    {
      v10 = HIDWORD(v22) % v7;
    }
  }

  else
  {
    v10 = (v7 - 1) & HIDWORD(v22);
  }

  v11 = *(*(a1 + 72) + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    v14 = vcnt_s8(v7);
    v14.i16[0] = vaddlv_u8(v14);
    v15 = v14.u32[0];
    if (v14.u32[0] > 1uLL)
    {
      v16 = v6;
      if (v7 <= v6)
      {
        v16 = v6 % v7;
      }
    }

    else
    {
      v16 = (v7 - 1) & v6;
    }

    v17 = *(*(a1 + 72) + 8 * v16);
    if (v17)
    {
      v18 = *v17;
      if (*v17)
      {
        while (1)
        {
          v19 = v18[1];
          if (v19 == v6)
          {
            if (geo::StringLiteral::operator==((v18 + 2), &v21))
            {
              goto LABEL_36;
            }
          }

          else
          {
            if (v15 > 1)
            {
              if (v19 >= v7)
              {
                v19 %= v7;
              }
            }

            else
            {
              v19 &= v7 - 1;
            }

            if (v19 != v16)
            {
              goto LABEL_35;
            }
          }

          v18 = *v18;
          if (!v18)
          {
            goto LABEL_35;
          }
        }
      }
    }

    goto LABEL_35;
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
      if (v13 >= v7)
      {
        v13 %= v7;
      }
    }

    else
    {
      v13 &= v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_20;
    }

LABEL_19:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (!geo::StringLiteral::operator==((v12 + 2), &v21))
  {
    goto LABEL_19;
  }

  gdc::Sampler::addSample((v12 + 4), a4);
LABEL_36:

  std::mutex::unlock((a1 + 8));
}

void md::ita::UpdateTileTransforms::operator()(uint64_t **a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v2 = a1[2];
  if (!v2)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_3;
    }

    while (*v4 != 0x22D45F5AAD4BF408)
    {
      v2 = 0;
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    if (v4 == v5)
    {
LABEL_3:
      v2 = 0;
    }

    else
    {
      v2 = v4[3];
      v9 = v4[4];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }
    }

LABEL_6:
    a1[2] = v2;
  }

  v6 = *((**v2)(v2) + 8);
  v13 = md::LayoutContext::get<md::CameraContext>(v6);
  v7 = md::LayoutContext::get<md::ElevationContext>(v6);
  v12 = gdc::ToCoordinateSystem(*(v13 + 3784));
  v8 = *(v7 + 4);
  v10 = *(v7 + 5);
  v11 = v8;
  operator new();
}

void sub_1B2A9A4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(md::ls::TileBounds const&,md::ls::TileMatrix const&,md::ls::TileTransformConstantDataHandle &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileBounds>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileBounds>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileBounds>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileBounds>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t std::__function::__value_func<void ()(md::ls::TileRenderableDataHandle const&,md::ls::BoundsWidth const&,md::ls::TileViewConstantDataHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<Flyover::NightTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<Flyover::NightTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[443];
}

uint64_t md::ita::UpdateTileRenderables::operator()(uint64_t **a1, uint64_t a2)
{
  v61[3] = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  if (!v4)
  {
    v5 = **a1;
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v6 == v7)
    {
      goto LABEL_5;
    }

    while (*v6 != 0x22D45F5AAD4BF408)
    {
      v6 += 5;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    if (v6 == v7)
    {
LABEL_5:
      v4 = 0;
    }

    else
    {
      v4 = v6[3];
      v8 = v6[4];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }
    }

    a1[1] = v4;
  }

  v9 = (**v4)(v4);
  v53 = md::LayoutContext::get<md::CameraContext>(*(v9 + 8));
  v10 = a1[2];
  if (!v10)
  {
    v11 = **a1;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_12;
    }

    while (*v12 != 0x41D4E9297E100630)
    {
      v10 = 0;
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_15;
      }
    }

    if (v12 == v13)
    {
LABEL_12:
      v10 = 0;
    }

    else
    {
      v10 = v12[3];
      v50 = v12[4];
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v50);
      }
    }

LABEL_15:
    a1[2] = v10;
  }

  v52 = v10;
  v59[0] = &unk_1F2A1F560;
  v59[1] = &v52;
  v59[2] = &v53;
  v60 = v59;
  v14 = *(a2 + 8);
  v15 = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableDataHandle>(v14);
  v16 = ecs2::BasicRegistry<void>::storage<md::ls::BoundsWidth>(v14);
  v17 = ecs2::BasicRegistry<void>::storage<md::ls::TileViewConstantDataHandle>(v14);
  v61[0] = v15;
  v61[1] = v16;
  v18 = 1;
  v19 = v15;
  v20 = v61;
  v61[2] = v17;
  do
  {
    if (*(v61[v18] + 40) - *(v61[v18] + 32) < *(v19 + 40) - *(v19 + 32))
    {
      v19 = v61[v18];
      v20 = &v61[v18];
    }

    ++v18;
  }

  while (v18 != 3);
  v21 = *(*v20 + 32);
  v22 = *(*v20 + 40);
  v54 = v21;
  v55 = v22;
  v56 = v15;
  v57 = v16;
  v58 = v17;
  while (v21 != v22 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v54, *v21, v21[1]))
  {
    v21 += 2;
    v54 = v21;
  }

  v23 = v54;
  if (v54 == v22)
  {
    v27 = _ZTWN4ecs27Runtime11_localStateE();
    v28 = _ZTWN4ecs27Runtime11_stackIndexE();
    v29 = 0;
  }

  else
  {
    v51 = a2;
    v24 = v56;
    v25 = v57;
    v26 = v58;
    v27 = _ZTWN4ecs27Runtime11_localStateE();
    v28 = _ZTWN4ecs27Runtime11_stackIndexE();
    v29 = 0;
    v30 = v55;
    do
    {
      v31 = v23[1];
      v32 = v31 & 0x3F;
      v33 = (v31 >> 3) & 0x1FF8;
      v34 = *(*(*(v24 + 8) + v33) + 4 * v32 + 2);
      v35 = *(*(v24 + 56) + ((v34 >> 3) & 0x1FF8));
      v36 = *(*(*(v25 + 8) + v33) + 4 * v32 + 2);
      v37 = *(*(v25 + 56) + ((v36 >> 3) & 0x1FF8));
      v38 = *(*(*(v26 + 8) + v33) + 4 * v32 + 2);
      v39 = *(*(v26 + 56) + ((v38 >> 3) & 0x1FF8));
      *(v27 + 104 * *v28 + 24) = *v23;
      if (!v60)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v60 + 48))(v60, v35 + 8 * (v34 & 0x3F), v37 + 4 * (v36 & 0x3F), v39 + 8 * (v38 & 0x3F));
      ++v29;
      v40 = v23 + 2;
      while (1)
      {
        v23 = v40;
        v54 = v40;
        if (v40 == v30)
        {
          break;
        }

        v41 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v54, *v40, v40[1]);
        v40 = v23 + 2;
        if (v41)
        {
          v42 = v23;
          goto LABEL_32;
        }
      }

      v42 = v30;
LABEL_32:
      ;
    }

    while (v42 != v22);
    v43 = *(v51 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewConstantDataHandle>();
    *(v43 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewConstantDataHandle>(void)::metadata) = *(v43 + 4096);
  }

  *(v27 + 104 * *v28 + 24) = -65536;
  v44 = v27 + 104 * *v28;
  v45 = *(v44 + 92);
  *(v44 + 92) = v45 + 1;
  *(v44 + 4 * v45 + 28) = v29;
  v46 = v27 + 104 * *v28;
  v48 = *(v46 + 92);
  v47 = (v46 + 92);
  if (v48 >= 0x10)
  {
    *v47 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::TileRenderableDataHandle const&,md::ls::BoundsWidth const&,md::ls::TileViewConstantDataHandle &)>::~__value_func[abi:nn200100](v59);
}

void sub_1B2A9AC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(md::ls::TileRenderableDataHandle const&,md::ls::BoundsWidth const&,md::ls::TileViewConstantDataHandle &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::BoundsWidth>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BoundsWidth>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BoundsWidth>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BoundsWidth>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7Flyover12NightTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A526C0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateTileRenderables>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateTileRenderables>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::UpdateTileRenderables::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7Flyover12NightTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A526C0;
  a2[1] = v2;
  return result;
}

uint64_t md::DetermineIf_PrepareStyleConstantDataHandle::operator()(void ****a1)
{
  v2 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, (**a1)[1]);
  v3 = (**v2)(v2);
  v4 = +[VKDebugSettings sharedSettings];
  if ([v4 daVinciGlobeLighting])
  {
    v5 = +[VKDebugSettings sharedSettings];
    v6 = [v5 daVinciAdvancedLightingEnabled];
  }

  else
  {
    v6 = 0;
  }

  v7 = md::LayoutContext::get<md::CameraContext>(*(v3 + 8));
  v9 = md::CameraContext::isSplinedEnabled(v7, v8) & v6;
  v10 = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe>();
  ecs2::UtilityTaskContext::toggleTask((*a1)[2], ~v10, v9);
  v11 = ~gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat>();
  v12 = (*a1)[2];

  return ecs2::UtilityTaskContext::toggleTask(v12, v11, v9 ^ 1u);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIf_PrepareStyleConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::DetermineIf_PrepareStyleConstantDataHandle>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::DetermineIf_PrepareStyleConstantDataHandle::operator()((a1 + 8));
  *v2 = 0;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[442];
}

void std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_StyleZChange>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_StyleZChange>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::DetermineIfShouldRun_StyleZChange::operator()((a1 + 8));
  *v2 = 0;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7Flyover14DiffuseTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A525F0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t md::ita::PrepareSSAOPasses::operator()(uint64_t **a1)
{
  v1 = a1[1];
  if (!v1)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_3;
    }

    while (*v4 != 0xD369A4D92C8FFE6CLL)
    {
      v1 = 0;
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }

    if (v4 == v5)
    {
LABEL_3:
      v1 = 0;
    }

    else
    {
      v1 = v4[3];
      v8 = v4[4];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }
    }

LABEL_4:
    a1[1] = v1;
  }

  v6 = *(*v1 + 8);

  return v6(v1);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialAlbedoTexture>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialAlbedoTexture>();
    *algn_1EB83C3B8 = 0x5FF8F613B2E16249;
    qword_1EB83C3C0 = "md::ls::UniqueMaterialAlbedoTexture]";
    qword_1EB83C3C8 = 35;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialAlbedoTexture>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareSSAOPasses>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareSSAOPasses>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareSSAOPasses::operator()((a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t md::ita::PrepareDepthPrePass::operator()(uint64_t *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_3;
    }

    while (*v4 != 0xD369A4D92C8FFE6CLL)
    {
      v2 = 0;
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }

    if (v4 == v5)
    {
LABEL_3:
      v2 = 0;
    }

    else
    {
      v2 = v4[3];
      v11 = v4[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }
    }

LABEL_4:
    a1[1] = v2;
  }

  result = (*(*v2 + 8))(v2);
  if (result)
  {
    result = md::FrameGraph::renderQueueForPass(*(result + 8), 3);
    if (result)
    {
      Entity = ecs2::ExecutionTaskContext::createEntity(*(*a1 + 8));
      ecs2::addComponent<md::ls::CommandBufferDescriptionCreation>(*a1, Entity, 515);
      v8 = ecs2::ExecutionTaskContext::createEntity(*(*a1 + 8));
      ecs2::addComponent<md::ls::CommandBufferDescriptionCreation>(*a1, v8, 771);
      v9 = ecs2::ExecutionTaskContext::createEntity(*(*a1 + 8));
      v10 = *a1;

      return ecs2::addComponent<md::ls::CommandBufferDescriptionCreation>(v10, v9, 1027);
    }
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7Flyover14DiffuseTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A525F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareDepthPrePass>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareDepthPrePass>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareDepthPrePass::operator()((a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ecs2::addComponent<md::ls::CommandBufferDescriptionCreation>(uint64_t a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A3F0A0;
  v6 = *&a3 & 0xFFFFFFLL | (a2 << 32);
  v7 = &v5;
  v8[3] = v8;
  v8[0] = &unk_1F2A3F0A0;
  v8[1] = v6;
  v9 = 0;
  ecs2::Runtime::queueCommand();
  if (v9 != -1)
  {
    (off_1F29E6B80[v9])(&v4, v8);
  }

  v9 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialAlbedoTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialAlbedoTexture>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[341];
}

uint64_t std::__function::__value_func<void ()(md::ls::RenderItemPendingDeletion const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls27UniqueMaterialAlbedoTextureEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41338;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27UniqueMaterialAlbedoTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41338;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingDeletion const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialEmissiveTexture>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialEmissiveTexture>();
    unk_1EB83BD10 = 0x1202E9D2D9704CABLL;
    qword_1EB83BD18 = "md::ls::UniqueMaterialEmissiveTexture]";
    qword_1EB83BD20 = 37;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialEmissiveTexture>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::ColorRampDataHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::ls::RenderItemPendingDeletion const&,md::ls::PipelineState *,md::ls::PipelineSetup *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialEmissiveTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialEmissiveTexture>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[272];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls29UniqueMaterialEmissiveTextureEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41408;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialDiffuseTexture>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialDiffuseTexture>();
    *algn_1EB83BE18 = 0xCF2EB3C843EAD89ALL;
    qword_1EB83BE20 = "md::ls::UniqueMaterialDiffuseTexture]";
    qword_1EB83BE28 = 36;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialDiffuseTexture>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29UniqueMaterialEmissiveTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41408;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::PassToCommandBuffers &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12RequestResetEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequestReset>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequestReset>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequestReset>(v3);
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
        LOBYTE(v16) = *(v19 + v18);
        *(v19 + v18) = *(v17 + v15);
        *(v17 + v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequestReset>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequestReset>(void)::metadata) = *(v3 + 4096);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareMainSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareMainSlice>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareMainSlice::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialDiffuseTexture>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::UniqueMaterialDiffuseTexture>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[281];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28UniqueMaterialDiffuseTextureEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41170;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::TexturesToDisconnect &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateDynamicRenderables>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateDynamicRenderables>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::UpdateDynamicRenderables::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28UniqueMaterialDiffuseTextureEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41170;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::DetermineIfShouldRun_SsaoEnabled>,std::allocator<ecs2::ForwardToExecute<md::DetermineIfShouldRun_SsaoEnabled>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::DetermineIfShouldRun_SsaoEnabled::operator()((a1 + 8));
  *v2 = 0;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingDeletion const&,md::ls::RenderableAlbedoTexture *,md::ls::TextureHandleForType<Flyover::NightTexture> *,md::ls::TextureHandleForType<Flyover::DiffuseTexture> *,md::ls::UniqueMaterialAlbedoTexture *,md::ls::UniqueMaterialEmissiveTexture *,md::ls::UniqueMaterialDiffuseTexture *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::ls::FlyoverCommonS2TransformHandle &,md::ls::BaseMapTileHandle const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *>(v3, v2);
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TexturesToDisconnect>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TexturesToDisconnect>();
    unk_1EB83CD60 = 0x9A2CF0F3E5B1FB4ELL;
    qword_1EB83CD68 = "md::ls::TexturesToDisconnect]";
    qword_1EB83CD70 = 28;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TexturesToDisconnect>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareMeshRenderableBounds>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareMeshRenderableBounds>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareMeshRenderableBounds::operator()((a1 + 8), a2, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfMaterialRequiresEmissiveColor>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfMaterialRequiresEmissiveColor>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::CheckIfMaterialRequiresEmissiveColor,md::ls::MaterialPendingProcessing const&,md::ls::UniqueStyleEmissiveDataKeyHandle *,md::ls::UniqueMaterialData const&>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TexturesToDisconnect>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TexturesToDisconnect>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[440];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20TexturesToDisconnectEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1A868;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateFlyoverTileViewMatrix>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateFlyoverTileViewMatrix>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<md::ita::UpdateFlyoverTileViewMatrix,md::ls::MeshRenderableID const&,md::ls::GlobeMatrix const&,md::ls::TileViewMatrix &>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareCommandBuffers>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareCommandBuffers>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::PrepareCommandBuffers,md::ls::CommandBufferDescriptionCreation const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TexturesToDisconnectEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A868;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void md::PointLabelFeature::setStyle(md::LabelFeature *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6)
{
  md::LabelFeature::setStyle(a1, a2, a3, a4, a5, a6);
  v7 = *(a1 + 73);
  v8 = *(a1 + 74);
  while (v7 != v8)
  {
    v9 = *(v7 + 24);
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    v7 += 32;
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::CanEnableTexture const*,md::ls::ColorDataHandle const&,md::ls::RenderableMaterialData const&,md::ls::HasOverlayPatch const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateUnflattenedRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateUnflattenedRenderItems>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  _ZN4ecs27Runtime9_entitiesIN2md3ita28CreateUnflattenedRenderItemsEJRKNS2_2ls16SliceAssignmentTILNS2_9SliceTypeE2EEERKNS5_26RenderableMeshVertexFormatERKNS5_8TileTypeERKNS5_18IntendedSceneLayerERKNS5_14MeshLayerTypeVEPNS5_17AssociationHandleEPKNS5_13HasMeshHandleEPKNS5_35PositionScaleInfoConstantDataHandleEPKNS5_22ViewConstantDataHandleEPKNS5_27TransformConstantDataHandleEPKNS5_18StyleDataKeyHandleEPKNS5_22StyleSSAODataKeyHandleEPKNS5_26StyleEmissiveDataKeyHandleEPKNS5_28ColorCorrectionDataKeyHandleEPKNS5_29StyleCameraConstantDataHandleEPKNS5_15ColorDataHandleEPKNS5_10IndexRangeEPKNS5_38StyleGroundOcclusionConstantDataHandleERKNS5_17PendingProcessingEPKNS5_13NormalsHandleEPKNS5_23InstanceTransformHandleEPKNS5_9UVsHandleEPKNS5_15ElevationHandleEPKNS5_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS5_35LandCoverSettingsConstantDataHandleEPKNS5_24ShadowConstantDataHandleEPKNS5_25PrepassConstantDataHandleEPKNS5_26ClippingConstantDataHandleEPKNS5_30PlanarParametersCacheKeyHandleEPKNS24_INS25_10TexTextureEEEPKNS24_INS25_15EmissiveTextureEEEPKNS24_INS25_14OverlayTextureEEEPKNS5_29BlendRasterConstantDataHandleEPKNS5_31RasterOverlayConstantDataHandleEPKNS5_26HasStyleAttributeRasterSetEPKNS5_17HasMaterialRasterEPKNS5_16NeedsClimateTintEPKNS5_17CustomRenderStateEPKNS5_19ColorRampDataHandleEPKNS5_14SharedUniqueIDEPKNS5_8IsOpaqueEPKNS5_13IsTransparentEPKNS5_10NeedsZBiasEPKNS5_14PreserveHeightEPKNS5_13InstanceCountEPKNS5_7IsDecalEPKNS5_10IsMaterialEPKNS5_9TriPlanarEPKNS5_10IsMercatorEPKNS5_23SupportsStylizedShadingEPKNS5_26SupportsSteepnessDarkeningEPKNS5_14RenderableHashEEJEEEvOT_NSt3__113type_identityINS4R_5tupleIJDpT0_EEEEERKNS_16ComponentFiltersIJDpT1_EEE(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderItemPendingDeletion>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemPendingDeletion>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderItemPendingDeletion>();
    *algn_1EB83C6D8 = 0x310D7D3EDA4A50D3;
    qword_1EB83C6E0 = "md::ls::RenderItemPendingDeletion]";
    qword_1EB83C6E8 = 33;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemPendingDeletion>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderItemPendingDeletion>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t md::PointLabelFeature::publicName(md::PointLabelFeature *this, unint64_t a2)
{
  v2 = *(this + 65);
  v3 = *(this + 66) - v2;
  v4 = v2 + (a2 << 6);
  if (a2 >= v3 >> 6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::ApplyPositionScaleInfo>,std::allocator<ecs2::ForwardToExecute<md::ita::ApplyPositionScaleInfo>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::ApplyPositionScaleInfo,md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::MeshRenderablePositionScaleInfo const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateColorCorrectionData>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateColorCorrectionData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v53[3] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v4 = a1 + 8;
  v5 = *(a1 + 16);
  if (!v5)
  {
    v5 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(**a2, *(*a2 + 8));
    *(a1 + 16) = v5;
  }

  v6 = (**v5)(v5);
  v7 = md::LayoutContext::get<md::CameraContext>(*(v6 + 8));
  v45 = fmaxf(*(v7 + 3080) + *(v7 + 3076), 1.0);
  v44 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(v4);
  v51[0] = &unk_1F2A076D0;
  v51[1] = &v44;
  v51[2] = &v45;
  v52 = v51;
  v8 = *(a2 + 8);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v8);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueColorCorrectionDataHandle>(v8);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(v8);
  v53[0] = v9;
  v53[1] = v10;
  v12 = 1;
  v13 = v9;
  v14 = v53;
  v53[2] = v11;
  do
  {
    if (*(v53[v12] + 40) - *(v53[v12] + 32) < *(v13 + 40) - *(v13 + 32))
    {
      v13 = v53[v12];
      v14 = &v53[v12];
    }

    ++v12;
  }

  while (v12 != 3);
  v15 = *(*v14 + 32);
  v16 = *(*v14 + 40);
  v46 = v15;
  v47 = v16;
  v48 = v9;
  v49 = v10;
  v50 = v11;
  while (v15 != v16 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v46, *v15, v15[1]))
  {
    v15 += 2;
    v46 = v15;
  }

  v17 = v46;
  if (v46 == v16)
  {
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
  }

  else
  {
    v43 = v4;
    v18 = v48;
    v19 = v49;
    v20 = v50;
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
    v24 = v47;
    do
    {
      v25 = v17[1];
      v26 = (v25 >> 3) & 0x1FF8;
      v27 = v25 & 0x3F;
      v28 = *(*(*(v18 + 8) + v26) + 4 * v27 + 2);
      v29 = *(*(v18 + 56) + ((v28 >> 3) & 0x1FF8));
      v30 = *(*(*(v19 + 8) + v26) + 4 * v27 + 2);
      v31 = *(*(v19 + 56) + ((v30 >> 3) & 0x1FF8));
      v32 = *(v20 + 32);
      v33 = *(*(*(v20 + 8) + v26) + 4 * v27 + 2);
      *(v21 + 104 * *v22 + 24) = *v17;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v29 + 24 * (v28 & 0x3F), v31 + 8 * (v30 & 0x3F), v32 + 4 * v33);
      ++v23;
      v34 = v17 + 2;
      while (1)
      {
        v17 = v34;
        v46 = v34;
        if (v34 == v24)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v46, *v34, v34[1]);
        v34 = v17 + 2;
        if (v35)
        {
          v36 = v17;
          goto LABEL_19;
        }
      }

      v36 = v24;
LABEL_19:
      ;
    }

    while (v36 != v16);
    v4 = v43;
  }

  *(v21 + 104 * *v22 + 24) = -65536;
  v37 = v21 + 104 * *v22;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v23;
  v39 = v21 + 104 * *v22;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 > 0xF)
  {
    *v40 = 0;
  }

  result = std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueColorCorrectionDataHandle const&,md::ls::MaterialPendingProcessing const&)>::~__value_func[abi:nn200100](v51);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  return result;
}

void sub_1B2A9D6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueColorCorrectionDataHandle const&,md::ls::MaterialPendingProcessing const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::CollectDaVinciMeshRenderables>,std::allocator<ecs2::ForwardToExecute<md::ita::CollectDaVinciMeshRenderables>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = a1 + 8;
  md::ita::CollectDaVinciMeshRenderables::operator()((a1 + 8));
  *(v2 + 32) = 0;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderItemPendingDeletion>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderItemPendingDeletion>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[373];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls25RenderItemPendingDeletionEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1A960;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateMainRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateMainRenderItems>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = _ZN4ecs27Runtime9_entitiesIN2md3ita21CreateMainRenderItemsEJRKNS2_2ls16MeshRenderableIDERKNS5_16SliceAssignmentTILNS2_9SliceTypeE7EEERKNS5_26RenderableMeshVertexFormatERKNS5_8TileTypeERKNS5_17PendingProcessingERKNS5_14MeshLayerTypeVERKNS5_18IntendedSceneLayerEPKNS5_13HasMeshHandleEPKNS5_35PositionScaleInfoConstantDataHandleEPKNS5_22ViewConstantDataHandleEPKNS5_27TransformConstantDataHandleEPKNS5_18StyleDataKeyHandleEPKNS5_22StyleSSAODataKeyHandleEPKNS5_26StyleEmissiveDataKeyHandleEPKNS5_28ColorCorrectionDataKeyHandleEPKNS5_29StyleCameraConstantDataHandleEPKNS5_15ColorDataHandleEPKNS5_10IndexRangeEPKNS5_38StyleGroundOcclusionConstantDataHandleEPKNS5_26SharedMaterialZIndexHandleEPNS5_17AssociationHandleEPKNS5_13NormalsHandleEPKNS5_23InstanceTransformHandleEPKNS5_9UVsHandleEPKNS5_31StyleRouteLineMaskDataKeyHandleEPKNS5_15ElevationHandleEPKNS5_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS5_35LandCoverSettingsConstantDataHandleEPKNS5_24ShadowConstantDataHandleEPKNS5_25PrepassConstantDataHandleEPKNS5_26ClippingConstantDataHandleEPKNS5_30PlanarParametersCacheKeyHandleEPKNS2D_INS2E_10TexTextureEEEPKNS2D_INS2E_15EmissiveTextureEEEPKNS2D_INS2E_14OverlayTextureEEEPKNS5_29BlendRasterConstantDataHandleEPKNS5_31RasterOverlayConstantDataHandleEPKNS5_40FlyoverCommonTransformConstantDataHandleEPKNS5_30FlyoverCommonS2TransformHandleEPKNS5_28FlyoverCommonTexcoordsHandleEPKNS5_27FlyoverCommonMaterialHandleEPKNS5_29FlyoverClipConstantDataHandleEPKNS2D_IN7Flyover14DiffuseTextureEEEPKNS2D_INS3V_12NightTextureEEEPKNS5_26HasStyleAttributeRasterSetEPKNS5_17HasMaterialRasterEPKNS5_16NeedsClimateTintEPKNS5_17CustomRenderStateEPKNS5_19ColorRampDataHandleEPKNS5_14SharedUniqueIDEPKNS5_8IsOpaqueEPKNS5_13IsTransparentEPKNS5_10NeedsZBiasEPKNS5_14PreserveHeightEPKNS5_13InstanceCountEPKNS5_7IsDecalEPKNS5_10IsMaterialEPKNS5_9TriPlanarEPKNS5_10IsMercatorEPKNS5_23SupportsStylizedShadingEPKNS5_26SupportsSteepnessDarkeningEPKNS5_15FlyoverInstanceEPKNS5_12CustomZIndexEPKNS5_14RenderableHashEPKNS5_21PredefinedRenderStateEEJEEEvOT_NSt3__113type_identityINS5X_5tupleIJDpT0_EEEEERKNS_16ComponentFiltersIJDpT1_EEE(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls25RenderItemPendingDeletionEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A960;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::CheckIfMaterialNeedsUpdate>,std::allocator<ecs2::ForwardToExecute<md::ita::CheckIfMaterialNeedsUpdate>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::CheckIfMaterialNeedsUpdate::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareMainPass>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareMainPass>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::PrepareMainPass::operator()((a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineState>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineState>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[50];
}

void geo::TaskQueue::queueAsyncTask(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  if (*(a1 + 58) == 1)
  {
    v4 = md::LabelExternalPointFeature::incident(*(a1 + 72));
  }

  v5 = *(a1 + 56);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3321888768;
  v19[2] = ___ZN3geo9TaskQueue14queueAsyncTaskENSt3__110shared_ptrINS_4TaskEEEPU28objcproto17OS_dispatch_group8NSObject_block_invoke;
  v19[3] = &unk_1F2A57960;
  v6 = v4;
  v24 = v5;
  v8 = *a2;
  v7 = a2[1];
  v20 = v6;
  v22 = v8;
  v23 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = 0;
  v9 = MEMORY[0x1B8C62DA0](v19);
  if (*(a1 + 56) == 1)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___ZN3geo9TaskQueue14queueAsyncTaskENSt3__110shared_ptrINS_4TaskEEEPU28objcproto17OS_dispatch_group8NSObject_block_invoke_7;
    v15[3] = &unk_1E7B3E178;
    v18 = a1;
    v16 = v6;
    v17 = v9;
    v12 = MEMORY[0x1B8C62DA0](v15);
    v13 = *(a1 + 40);
    v14 = md::LabelExternalPointFeature::incident(v13);
    dispatch_async(v14, v12);

    v10 = v16;
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = md::LabelExternalPointFeature::incident(v10);
    dispatch_async(v11, v9);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls13PipelineStateEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1A9E8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::RenderableAlbedoTexture const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13PipelineStateEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A9E8;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareShadowPassCommandBuffers>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareShadowPassCommandBuffers>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareShadowPassCommandBuffers::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<SetLegacyStencilOffsetAndBucketCount>,std::allocator<ecs2::ForwardToExecute<SetLegacyStencilOffsetAndBucketCount>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = SetLegacyStencilOffsetAndBucketCount::operator()((a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[51];
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessRenderableForStyleGroundOcclusion>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessRenderableForStyleGroundOcclusion>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::ProcessRenderableForStyleGroundOcclusion::operator()((a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls13PipelineSetupEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1AA70;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TransferStyleAttributeRasterSet>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransferStyleAttributeRasterSet>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransferStyleAttributeRasterSet>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransferStyleAttributeRasterSet>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13PipelineSetupEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1AA70;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::ColorCorrectionDataKeyHandle const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
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

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::ApplyAlbedoTint>,std::allocator<ecs2::ForwardToExecute<md::ita::ApplyAlbedoTint>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::ApplyAlbedoTint,md::ls::InView const&,md::ls::SharedColorDataHandle const&,md::ls::UniqueColorDataHandle const*,md::ls::ColorDataHandle &,md::ls::AlbedoTintColor const&>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareGradientParametersConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareGradientParametersConstantDataHandle>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::PrepareGradientParametersConstantDataHandle::operator()((a1 + 8));
  result = 0.0;
  v2[1] = 0u;
  v2[2] = 0u;
  *v2 = 0u;
  return result;
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareShadowBounds>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareShadowBounds>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::PrepareShadowBounds,md::ls::AppliedWantsDynamicShadowBounds const&,md::BoundData const&,md::ls::SharedRenderableDataHandle &>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::EnteringView const&,md::ls::SupportsDepthPrePass const&,md::ls::RenderablesCount const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TilePrepassShadowConstantDataHandle const&,md::ls::TilePrepassConstantDataHandle const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::ApplyUsesIdentityMatrix>,std::allocator<ecs2::ForwardToExecute<md::ita::ApplyUsesIdentityMatrix>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::ApplyUsesIdentityMatrix,md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::MeshLayerTypeV const&,md::ls::InstanceDataV const&,md::ls::InView const&>(*(a2 + 8));
  *v2 = 0;
  return result;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateFlyoverSharedConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateFlyoverSharedConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::UpdateFlyoverSharedConstantData::operator()((a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateStyleTextureIfNecessary>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateStyleTextureIfNecessary>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v99[4] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v4 = (a1 + 8);
  v5 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::MaterialResourceStore *,md::LayoutContextProvider *>::service<md::LayoutContextProvider>((a1 + 8));
  v6 = (**v5)(v5);
  v7 = md::LayoutContext::get<md::MaterialContext>(*(v6 + 8));
  if (v7)
  {
    v8 = v7;
    v9 = +[VKDebugSettings sharedSettings];
    md::TerrainDebugOptions::TerrainDebugOptions(&v85, v9);

    v10 = *(v6 + 8);
    v11 = gdc::Context::get<md::StyleLogicContext>(v10);
    v12 = md::LayoutContext::get<md::CameraContext>(v10);
    v13 = *(v12 + 3076);
    v14 = *(v12 + 3080);
    v15 = v8[1];
    v83 = *v8;
    v84 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v14 + v13;
    v17 = ((v86 & 1) != 0 || v87 == 1) && v85 == 0;
    v18 = fmaxf(v16, 1.0);
    v19 = *(a1 + 16);
    if (!v19)
    {
      v20 = **v4;
      v21 = *v20;
      v22 = *(v20 + 8);
      if (v21 == v22)
      {
        goto LABEL_10;
      }

      while (*v21 != 0x41D4E9297E100630)
      {
        v19 = 0;
        v21 += 5;
        if (v21 == v22)
        {
          goto LABEL_13;
        }
      }

      if (v21 == v22)
      {
LABEL_10:
        v19 = 0;
      }

      else
      {
        v19 = v21[3];
        v74 = v21[4];
        if (v74)
        {
          atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v74);
        }
      }

LABEL_13:
      *(a1 + 16) = v19;
    }

    v79[0] = v19;
    v79[1] = ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::MaterialResourceStore *,md::LayoutContextProvider *>::service<md::MaterialResourceStore>(v4);
    v79[2] = v11;
    v80 = v18;
    v81 = &v83;
    v82 = v17;
    v97[0] = &unk_1F29E5A50;
    v97[1] = v79;
    v97[2] = v4;
    v98 = v97;
    v23 = *(a2 + 8);
    v24 = ecs2::BasicRegistry<void>::storage<md::ls::InView>(v23);
    v25 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v23);
    v26 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMaterialData>(v23);
    v27 = ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(v23);
    HasMaterial = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRaster>(v23);
    v29 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialRasterMaxIndex>(v23);
    v99[0] = v24;
    v99[1] = v25;
    v30 = 1;
    v31 = v24;
    v32 = v99;
    v99[2] = v26;
    v99[3] = v27;
    do
    {
      if (*(v99[v30] + 40) - *(v99[v30] + 32) < *(v31 + 40) - *(v31 + 32))
      {
        v31 = v99[v30];
        v32 = &v99[v30];
      }

      ++v30;
    }

    while (v30 != 4);
    v33 = *(*v32 + 32);
    v34 = *(*v32 + 40);
    v88 = v33;
    v89 = v34;
    v90 = v24;
    v91 = v25;
    v92 = v26;
    v93 = v27;
    v94 = HasMaterial;
    v95 = v29;
    while (v33 != v34 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v88, *v33, v33[1]))
    {
      v33 += 2;
      v88 = v33;
    }

    v35 = v88;
    if (v88 != v34)
    {
      v75 = a2;
      v76 = v4;
      v36 = v90;
      v37 = v91;
      v39 = v92;
      v38 = v93;
      v40 = v94;
      v41 = v95;
      v78 = _ZTWN4ecs27Runtime11_localStateE();
      v77 = _ZTWN4ecs27Runtime11_stackIndexE();
      v42 = 0;
      v43 = v89;
      while (1)
      {
        v44 = v35[1];
        v45 = v44 >> 6;
        v46 = v44 & 0x3F;
        v47 = *v35;
        v48 = v40[1];
        if (v45 >= (v40[2] - v48) >> 3)
        {
          break;
        }

        v49 = *(v48 + 8 * v45);
        if (v49)
        {
          if (*(v49 + 4 * v46) != v47)
          {
            break;
          }

          v50 = *(v49 + 4 * v46 + 2);
          v49 = *(v40[7] + ((v50 >> 3) & 0x1FF8)) + 8 * (v50 & 0x3F);
        }

LABEL_29:
        v51 = v41[1];
        if (v45 < (v41[2] - v51) >> 3 && (v52 = *(v51 + 8 * v45)) != 0 && *(v52 + 4 * v46) == v47)
        {
          v53 = *(v52 + 4 * v46 + 2);
          v54 = *(v41[7] + ((v53 >> 3) & 0x1FF8)) + 2 * (v53 & 0x3F);
        }

        else
        {
          v54 = 0;
        }

        v55 = *(v36 + 32);
        v56 = *(*(*(v37 + 8) + 8 * v45) + 4 * v46 + 2);
        v57 = *(*(v37 + 56) + ((v56 >> 3) & 0x1FF8));
        v58 = *(*(*(v39 + 8) + 8 * v45) + 4 * v46 + 2);
        v59 = *(*(v39 + 56) + ((v58 >> 3) & 0x1FF8));
        v60 = *(*(*(v36 + 8) + 8 * v45) + 4 * v46 + 2);
        v61 = *(*(*(v38 + 8) + 8 * v45) + 4 * v46 + 2);
        v62 = *(*(v38 + 56) + ((v61 >> 3) & 0x1FF8));
        *(v78 + 104 * *v77 + 24) = *v35;
        v99[0] = v49;
        v96 = v54;
        if (!v98)
        {
          std::__throw_bad_function_call[abi:nn200100]();
        }

        (*(*v98 + 48))(v98, v55 + 4 * v60, v57 + 8 * (v56 & 0x3F), v59 + 32 * (v58 & 0x3F), v62 + 8 * (v61 & 0x3F), v99, &v96);
        ++v42;
        v63 = v35 + 2;
        while (1)
        {
          v35 = v63;
          v88 = v63;
          if (v63 == v43)
          {
            break;
          }

          v64 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v88, *v63, v63[1]);
          v63 = v35 + 2;
          if (v64)
          {
            v65 = v35;
            goto LABEL_40;
          }
        }

        v65 = v43;
LABEL_40:
        if (v65 == v34)
        {
          v66 = *(v75 + 8);
          ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>();
          *(v66 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorRampDataHandle>(void)::metadata) = *(v66 + 4096);
          v4 = v76;
          v67 = v77;
          v68 = v78;
          goto LABEL_43;
        }
      }

      v49 = 0;
      goto LABEL_29;
    }

    _ZTWN4ecs27Runtime11_localStateE();
    v67 = _ZTWN4ecs27Runtime11_stackIndexE();
    v42 = 0;
LABEL_43:
    *(v68 + 104 * *v67 + 24) = -65536;
    v69 = v68 + 104 * *v67;
    v70 = *(v69 + 92);
    *(v69 + 92) = v70 + 1;
    *(v69 + 4 * v70 + 28) = v42;
    v71 = v68 + 104 * *v67;
    v73 = *(v71 + 92);
    v72 = (v71 + 92);
    if (v73 >= 0x10)
    {
      *v72 = 0;
    }

    std::__function::__value_func<void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*)>::~__value_func[abi:nn200100](v97);
    if (v84)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v84);
    }
  }

  *v4 = 0u;
  *(v4 + 1) = 0u;
}

uint64_t std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::sparse_set(uint64_t a1)
{
  *a1 = &unk_1F2A33660;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  operator new();
}

void sub_1B2A9EA70(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::DeletePendingDeletion>,std::allocator<ecs2::ForwardToExecute<md::ita::DeletePendingDeletion>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::DeletePendingDeletion::operator()(a1 + 8, a2, a2);
  *v2 = 0;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareMainSliceWithCulled>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareMainSliceWithCulled>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareMainSliceWithCulled::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateTilePerPoint>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateTilePerPoint>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::UpdateTilePerPoint::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareCulledDepthPrePassSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareCulledDepthPrePassSlice>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareCulledDepthPrePassSlice::operator()((a1 + 8), a2, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::MaterialPendingProcessing const&,md::ls::UniqueMaterialAlbedoTexture &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateCameraStyleLight>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateCameraStyleLight>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::UpdateCameraStyleLight::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFlyoverS2TransformConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFlyoverS2TransformConstantDataHandle>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareFlyoverS2TransformConstantDataHandle::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateDepthPeeledRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateDepthPeeledRenderItems>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::CreateDepthPeeledRenderItems,md::ls::SliceAssignmentT<(md::SliceType)7> const&,md::ls::RenderableMeshVertexFormat const&,md::ls::TileType const&,md::ls::RequiresDepthPeel const&,md::ls::MeshLayerTypeV const&,md::ls::IntendedSceneLayer const&,md::ls::PendingProcessing const&,md::ls::AssociationHandle *,md::ls::PrepassConstantDataHandle const*,md::ls::ShadowConstantDataHandle const*,md::ls::PreserveHeight const*,md::ls::HasMeshHandle const*,md::ls::PositionScaleInfoConstantDataHandle const*,md::ls::ViewConstantDataHandle const*,md::ls::TransformConstantDataHandle const*,md::ls::IndexRange const*,md::ls::NormalsHandle const*,md::ls::InstanceTransformHandle const*,md::ls::UVsHandle const*,md::ls::NeedsZBias const*,md::ls::ClippingConstantDataHandle const*,md::ls::IsMercator const*,md::ls::ElevationHandle const*,md::ls::SharedUniqueID const*>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

float md::PointLabelFeature::minZoomRank(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (*a2 == 1)
  {
    v3 = *(a1 + 432);
    if (v3 != (a1 + 440))
    {
      result = 252.0;
      do
      {
        v5 = atomic_load((a1 + 693));
        v6 = v3[1];
        v7 = v3;
        if (v6)
        {
          do
          {
            v8 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v8 = v7[2];
            v9 = *v8 == v7;
            v7 = v8;
          }

          while (!v9);
        }

        result = fminf(*(v3 + v5 + 30), result);
        v3 = v8;
      }

      while (v8 != (a1 + 440));
      return result;
    }

    return 252.0;
  }

  v10 = *(a1 + 440);
  if (!v10)
  {
    return 254.0;
  }

  v11 = a1 + 440;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= v2;
    v14 = v12 < v2;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == a1 + 440)
  {
    return 254.0;
  }

  if (v2 < *(v11 + 32))
  {
    return 254.0;
  }

  v16 = atomic_load((a1 + 693));
  result = *(v11 + 4 * v16 + 120);
  if (result == 254.0)
  {
    return 254.0;
  }

  return result;
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareTileElevatedStrokeDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareTileElevatedStrokeDataHandle>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::PrepareTileElevatedStrokeDataHandle,md::ls::InView const&,md::ls::MercatorBounds const&,md::ls::RenderableMaterialData const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::CommandBufferDescriptionCreation>(ecs2::Entity,md::ls::CommandBufferDescriptionCreation &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A3F0A0;
  a2[1] = *(result + 8);
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareRouteLineMaskPass>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareRouteLineMaskPass>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareSSAOPasses::operator()((a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForGlobeTiles>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForGlobeTiles>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareStyleConstantDataHandleForGlobeTiles::operator()((a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IsDynamicRenderable>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateClippingConstants>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateClippingConstants>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<md::ita::UpdateClippingConstants,md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::ApplyWantsDynamicShadowBounds>,std::allocator<ecs2::ForwardToExecute<md::ita::ApplyWantsDynamicShadowBounds>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::ApplyWantsDynamicShadowBounds,md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::MeshLayerTypeV const&>(*(a2 + 8));
  *v2 = 0;
  return result;
}

uint64_t *std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareCulledShadowSlice>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareCulledShadowSlice>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareCulledShadowSlice::operator()((a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateDepthPrePassRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateDepthPrePassRenderItems>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::CreateDepthPrePassRenderItems,md::ls::SliceAssignmentT<(md::SliceType)5> const&,md::ls::RenderableMeshVertexFormat const&,md::ls::TileType const&,md::ls::PendingProcessingDepthPrePass const&,md::ls::AssociationHandle *,md::ls::HasMeshHandle const*,md::ls::PositionScaleInfoConstantDataHandle const*,md::ls::ViewConstantDataHandle const*,md::ls::TransformConstantDataHandle const*,md::ls::IndexRange const*,md::ls::NormalsHandle const*,md::ls::InstanceTransformHandle const*,md::ls::UVsHandle const*,md::ls::NeedsZBias const*,md::ls::ElevationHandle const*,md::ls::PrepassShadowConstantDataHandle const&,md::ls::PrepassConstantDataHandle const&,md::ls::PreserveHeight const*,md::ls::ClippingConstantDataHandle const*,md::ls::IsMercator const*,md::ls::InstanceCount const*>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateShadowPassRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateShadowPassRenderItems>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  ecs2::Runtime::_entities<md::ita::CreateShadowPassRenderItems,md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)4> const&,md::ls::RenderableMeshVertexFormat const&,md::ls::TileType const&,md::ls::MeshLayerTypeV const&,md::ls::PendingProcessingShadow const&,md::ls::AssociationHandle *,md::ls::HasMeshHandle const*,md::ls::PositionScaleInfoConstantDataHandle const*,md::ls::ViewConstantDataHandle const*,md::ls::TransformConstantDataHandle const*,md::ls::IndexRange const*,md::ls::NormalsHandle const*,md::ls::InstanceTransformHandle const*,md::ls::UVsHandle const*,md::ls::NeedsZBias const*,md::ls::InstanceCount const*,md::ls::ElevationHandle const*,md::ls::ShadowConstantDataHandle const&,md::ls::IsMercator const*,md::ls::PreserveHeight const*,md::ls::SharedUniqueID const*>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

uint64_t ggl::CommandBuffer::clearRenderItems(uint64_t this)
{
  v1 = *(this + 72);
  if (*(this + 80) != v1)
  {
    *(this + 80) = v1;
  }

  return this;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileViewConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileViewConstantDataHandle>();
    unk_1EB83C520 = 0x414BF8D9069621AELL;
    qword_1EB83C528 = "md::ls::TileViewConstantDataHandle]";
    qword_1EB83C530 = 34;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InstanceDataV>();
    *algn_1EB83D9F8 = 0xCC16A20B07DB93CCLL;
    qword_1EB83DA00 = "md::ls::InstanceDataV]";
    qword_1EB83DA08 = 21;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CommandBufferDescriptionCreation>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CommandBufferDescriptionCreation>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[249];
}

uint64_t md::RenderLayerProviderWrapper::mapPassID(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 == 9)
  {
    v3 = 10;
    if (a3 == 4)
    {
      v3 = 12;
    }

    if (*(a1 + 56))
    {
      return 9;
    }

    else
    {
      return v3;
    }
  }

  return a2;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::CanEnableTexture>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanEnableTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CanEnableTexture>();
    *algn_1EB83D648 = 0x20D1AB8FE4B8A761;
    qword_1EB83D650 = "md::ls::CanEnableTexture]";
    qword_1EB83D658 = 24;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanEnableTexture>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanEnableTexture>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls32CommandBufferDescriptionCreationEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A3F128;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls32CommandBufferDescriptionCreationEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A3F128;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::BoundData>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::BoundData>();
    unk_1EB83B7E0 = 0x2523AFF0E364AA00;
    qword_1EB83B7E8 = "md::BoundData]";
    qword_1EB83B7F0 = 13;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MeshLayerTypeV>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshLayerTypeV>();
    *algn_1EB83D848 = 0xECC498AF223943D5;
    qword_1EB83D850 = "md::ls::MeshLayerTypeV]";
    qword_1EB83D858 = 22;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshLayerTypeV>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ggl::CommandBuffer::clearBufferLoadItems(uint64_t this)
{
  v1 = this;
  v3 = *(this + 232);
  v2 = *(this + 240);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 64;
      this = std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](v2 - 32);
      v2 = v4;
    }

    while (v4 != v3);
  }

  *(v1 + 240) = v3;
  return this;
}

uint64_t ggl::CommandBuffer::clearTextureLoadItems(uint64_t this)
{
  v1 = this;
  v3 = *(this + 200);
  v2 = *(this + 208);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 80;
      this = std::__function::__value_func<void ()(ggl::Texture2DLoadItem const&)>::~__value_func[abi:nn200100](v2 - 32);
      v2 = v4;
    }

    while (v4 != v3);
  }

  *(v1 + 208) = v3;
  return this;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileType>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileType>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileType>();
    unk_1EB83B8D0 = 0x751B872B282C3971;
    qword_1EB83B8D8 = "md::ls::TileType]";
    qword_1EB83B8E0 = 16;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileType>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileType>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MercatorBounds>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MercatorBounds>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MercatorBounds>();
    *algn_1EB83D868 = 0x8D1BF84D316565E9;
    qword_1EB83D870 = "md::ls::MercatorBounds]";
    qword_1EB83D878 = 22;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MercatorBounds>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MercatorBounds>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupID>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::VisibilityGroupID>();
    *algn_1EB83D208 = 0x45B31C2960E9BCB1;
    qword_1EB83D210 = "md::ls::VisibilityGroupID]";
    qword_1EB83D218 = 25;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::VisibilityGroupID>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayer>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedSceneLayer>();
    unk_1EB83D1A0 = 0xEC2A00DC914732D7;
    qword_1EB83D1A8 = "md::ls::IntendedSceneLayer]";
    qword_1EB83D1B0 = 26;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedSceneLayer>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

unsigned __int16 **ecs2::ViewIterator<void,std::tuple<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::ViewIterator(unsigned __int16 **result, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  if (a2 != a3)
  {
    v5 = *(a4 + 8);
    v6 = (*(a4 + 16) - v5) >> 3;
    do
    {
      v7 = a2[1];
      v8 = v7 >> 6;
      if (v7 >> 6 < v6)
      {
        v9 = *(v5 + 8 * v8);
        if (v9)
        {
          v10 = *a2;
          v11 = 4 * (v7 & 0x3F);
          if (*(v9 + v11) == v10)
          {
            v12 = *(a5 + 8);
            if (v8 < (*(a5 + 16) - v12) >> 3)
            {
              v13 = *(v12 + 8 * v8);
              if (v13)
              {
                if (*(v13 + v11) == v10)
                {
                  break;
                }
              }
            }
          }
        }
      }

      a2 += 2;
      *result = a2;
    }

    while (a2 != a3);
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsDepthPrePass>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsDepthPrePass>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsDepthPrePass>();
    unk_1EB83CEC0 = 0x33C5934AE646F3E2;
    qword_1EB83CEC8 = "md::ls::SupportsDepthPrePass]";
    qword_1EB83CED0 = 28;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileTransformConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileTransformConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileTransformConstantDataHandle>();
    *algn_1EB83BB78 = 0xD270E8E58701C515;
    qword_1EB83BB80 = "md::ls::TileTransformConstantDataHandle]";
    qword_1EB83BB88 = 39;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileTransformConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileTransformConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsFragmentClip>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsFragmentClip>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsFragmentClip>();
    *algn_1EB83CE98 = 0x14C796C7576DD197;
    qword_1EB83CEA0 = "md::ls::SupportsFragmentClip]";
    qword_1EB83CEA8 = 28;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileRenderableDataHandle>();
    unk_1EB83C760 = 0xCF1A54FDD9A1F93FLL;
    qword_1EB83C768 = "md::ls::TileRenderableDataHandle]";
    qword_1EB83C770 = 32;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileRenderableDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 8 * a2);

      std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__base_destruct_at_end[abi:nn200100](a1, v11);
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v10);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(*(a1 + 8), 8 * v6);
    *(a1 + 8) = v4 + 8 * v6;
  }
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::PassToCommandBuffers>(ecs2::Entity,md::ls::PassToCommandBuffers &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A34468;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileMatrix>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileMatrix>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileMatrix>();
    unk_1EB83DBD0 = 0xBCC33905201D8160;
    qword_1EB83DBD8 = "md::ls::TileMatrix]";
    qword_1EB83DBE0 = 18;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileMatrix>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileMatrix>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileMatrix>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileMatrix>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[78];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls10TileMatrixEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A53740;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TilePrepassConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TilePrepassConstantDataHandle>();
    unk_1EB83BD30 = 0x33C39664142A0949;
    qword_1EB83BD38 = "md::ls::TilePrepassConstantDataHandle]";
    qword_1EB83BD40 = 37;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRaster>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRaster>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasMaterialRaster>();
    *algn_1EB83D298 = 0x9D7520A01DC69D83;
    qword_1EB83D2A0 = "md::ls::HasMaterialRaster]";
    qword_1EB83D2A8 = 25;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRaster>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasMaterialRaster>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10TileMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53740;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileRenderableDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileRenderableDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[380];
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AlbedoTintColor>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AlbedoTintColor>();
    unk_1EB83D770 = 0x2906BE24995F2F60;
    qword_1EB83D778 = "md::ls::AlbedoTintColor]";
    qword_1EB83D780 = 23;
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls24TileRenderableDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A40F48;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SharedColorDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedColorDataHandle>();
    unk_1EB83CC40 = 0xC893C1C4D3D90FF5;
    qword_1EB83CC48 = "md::ls::SharedColorDataHandle]";
    qword_1EB83CC50 = 29;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls24TileRenderableDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A40F48;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MaterialRasterMaxIndex>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialRasterMaxIndex>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialRasterMaxIndex>();
    unk_1EB83CB60 = 0x7A5110AF346E0C7FLL;
    qword_1EB83CB68 = "md::ls::MaterialRasterMaxIndex]";
    qword_1EB83CB70 = 30;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialRasterMaxIndex>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialRasterMaxIndex>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t std::__function::__func<md::ita::PrepareShadowPassCommandBuffers::operator()(ecs2::Query<md::ls::PassToCommandBuffers &>)::$_0,std::allocator<md::ita::PrepareShadowPassCommandBuffers::operator()(ecs2::Query<md::ls::PassToCommandBuffers &>)::$_0>,void ()(md::ls::PassToCommandBuffers &)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  if (!*a2)
  {
    if (**(result + 8) != 1)
    {
      return result;
    }

    v6 = (*(***(result + 16) + 32))(**(result + 16), 0, 0, 0);
    result = (*(***(v2 + 16) + 48))(**(v2 + 16));
    *(v6 + 32) = *(result + 2736);
    v3 = *a2;
  }

  if (v3 == 3)
  {
    v4 = (*(***(v2 + 16) + 32))(**(v2 + 16), 3, 0, 0);
    result = (*(***(v2 + 16) + 48))(**(v2 + 16));
    *(v4 + 32) = *(result + 2736);
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SharedRenderableDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedRenderableDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedRenderableDataHandle>();
    *algn_1EB83C568 = 0x5EBA003AC7A96B8ALL;
    qword_1EB83C570 = "md::ls::SharedRenderableDataHandle]";
    qword_1EB83C578 = 34;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedRenderableDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedRenderableDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BoundsWidth>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BoundsWidth>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::BoundsWidth>();
    unk_1EB83DBB0 = 0x1ADAB24DD42B2B4;
    qword_1EB83DBB8 = "md::ls::BoundsWidth]";
    qword_1EB83DBC0 = 19;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrimitiveType>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PrimitiveType>();
    unk_1EB83D900 = 0x84C31A2C8E533C36;
    qword_1EB83D908 = "md::ls::PrimitiveType]";
    qword_1EB83D910 = 21;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::GlobeMatrix>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GlobeMatrix>();
    *algn_1EB83DB88 = 0x67D8808361DF5DBFLL;
    qword_1EB83DB90 = "md::ls::GlobeMatrix]";
    qword_1EB83DB98 = 19;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GlobeMatrix>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::BoundsWidth>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::BoundsWidth>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[76];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls11BoundsWidthEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1F518;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableTransformConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderableTransformConstantDataHandle>();
    unk_1EB83B990 = 0x1DBDEAE2D8DF6302;
    qword_1EB83B998 = "md::ls::MeshRenderableTransformConstantDataHandle]";
    qword_1EB83B9A0 = 49;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableTransformConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls11BoundsWidthEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1F518;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TilePrepassShadowConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassShadowConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TilePrepassShadowConstantDataHandle>();
    *algn_1EB83BA88 = 0xB4E92DEB291A7B99;
    qword_1EB83BA90 = "md::ls::TilePrepassShadowConstantDataHandle]";
    qword_1EB83BA98 = 43;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassShadowConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassShadowConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileStyleDataKeyHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleDataKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileStyleDataKeyHandle>();
    *algn_1EB82F468 = 0xC8961A732428331FLL;
    qword_1EB82F470 = "md::ls::TileStyleDataKeyHandle]";
    qword_1EB82F478 = 30;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleDataKeyHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleDataKeyHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileViewConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileViewConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[356];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls26TileViewConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A53630;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>();
    *algn_1EB83B9F8 = 0xE57C2F66048E40BDLL;
    qword_1EB83BA00 = "md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>]";
    qword_1EB83BA08 = 75;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26TileViewConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53630;
  a2[1] = v2;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LayerDataReference>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LayerDataReference>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::LayerDataReference>();
    unk_1EB83D180 = 0x664452B21D4833;
    qword_1EB83D188 = "md::ls::LayerDataReference]";
    qword_1EB83D190 = 26;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileBounds>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileBounds>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileBounds>();
    *algn_1EB83DBF8 = 0x34AE67B339EEC99CLL;
    qword_1EB83DC00 = "md::ls::TileBounds]";
    qword_1EB83DC08 = 18;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileBounds>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileBounds>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[79];
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::~sparse_set(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AppliedWantsDynamicShadowBounds>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AppliedWantsDynamicShadowBounds>();
    unk_1EB83BC40 = 0xA054AACDFDD6A6BLL;
    qword_1EB83BC48 = "md::ls::AppliedWantsDynamicShadowBounds]";
    qword_1EB83BC50 = 39;
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls10TileBoundsEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1F5E8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10TileBoundsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1F5E8;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileTransformConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileTransformConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[251];
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::WantsCulledSlices>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WantsCulledSlices>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::WantsCulledSlices>();
    *algn_1EB83D1E8 = 0x6CA90C12C415463ALL;
    qword_1EB83D1F0 = "md::ls::WantsCulledSlices]";
    qword_1EB83D1F8 = 25;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WantsCulledSlices>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WantsCulledSlices>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls31TileTransformConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A536B8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31TileTransformConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A536B8;
  a2[1] = v2;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderablePositionScaleInfo>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderablePositionScaleInfo>();
    unk_1EB83BC00 = 0xEE00EAF3B9AFA033;
    qword_1EB83BC08 = "md::ls::MeshRenderablePositionScaleInfo]";
    qword_1EB83BC10 = 39;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderableVisibilityOptions>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableVisibilityOptions>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableVisibilityOptions>();
    unk_1EB83C420 = 0x768C72EB9B71F7ADLL;
    qword_1EB83C428 = "md::ls::RenderableVisibilityOptions]";
    qword_1EB83C430 = 35;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableVisibilityOptions>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableVisibilityOptions>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileStyleCameraConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleCameraConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileStyleCameraConstantDataHandle>();
    unk_1EB83BAF0 = 0x80A8239313E99C5FLL;
    qword_1EB83BAF8 = "md::ls::TileStyleCameraConstantDataHandle]";
    qword_1EB83BB00 = 41;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleCameraConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileStyleCameraConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>();
    unk_1EB82F4B0 = 0x46F9AEB7461D3EE2;
    qword_1EB82F4B8 = "md::ls::TileProjectionTypeT<md::ls::TileProjectionType::S2>]";
    qword_1EB82F4C0 = 59;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileStyleCameraConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileStyleCameraConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[244];
}

uint64_t md::VKMRenderResourcesStore::getFlyoverSharedConstantDataHandle(md::VKMRenderResourcesStore *this)
{
  result = *(this + 1787);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1B2AA4724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls33TileStyleCameraConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A41058;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls33TileStyleCameraConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A41058;
  a2[1] = v2;
  return result;
}

uint64_t md::RenderLayerProviderWrapper::getCommandBufferHandle(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = (a2 << 6) + a3;
  v6 = v4[12];
  if (v5 >> 7 >= (v4[13] - v6) >> 3)
  {
    return 0;
  }

  v7 = *(v6 + 8 * (v5 >> 7));
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 2 * (v5 & 0x7F));
  v10 = v4[15];
  v9 = v4[16];
  if (v8 >= (v9 - v10) >> 4)
  {
    return 0;
  }

  v12 = v10 + 16 * v8;
  if (v5 != *(v12 + 8) + (*v12 << 6) || v9 == v12)
  {
    return 0;
  }

  v14 = (v4[18] + 24 * v8);
  if (v14 == v4[19])
  {
    return 0;
  }

  if (a4 >= (v14[1] - *v14) >> 3)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v18 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = (v14[1] - *v14) >> 3;
      v20 = 134219522;
      v21 = a4;
      v22 = 2048;
      v23 = a2;
      v24 = 1024;
      v25 = a3;
      v26 = 2048;
      v27 = v19;
      v28 = 2080;
      v29 = "false";
      v30 = 2080;
      v31 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/RenderLayerProvider.hpp";
      v32 = 1024;
      v33 = 105;
      _os_log_impl(&dword_1B2754000, v18, OS_LOG_TYPE_ERROR, "Attempting to access commandbuffer at offset:%zu for key:(%zu,%d) but only max offset of %zu is available: Assertion with expression - %s : Failed in file - %s line - %i", &v20, 0x40u);
    }

    return 0;
  }

  return *(*v14 + 8 * a4);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileShadowConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileShadowConstantDataHandle>();
    *algn_1EB83BE58 = 0xF2296D6406C155CBLL;
    qword_1EB83BE60 = "md::ls::TileShadowConstantDataHandle]";
    qword_1EB83BE68 = 36;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableBounds>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MeshRenderableBounds>();
    *algn_1EB83CF68 = 0x6B3ACE485940A135;
    qword_1EB83CF70 = "md::ls::MeshRenderableBounds]";
    qword_1EB83CF78 = 28;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MeshRenderableBounds>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t md::VKMRenderResourcesStore::getConstantData<ggl::FlyoverCommon::Shared>(void *a1, unint64_t a2)
{
  v2 = a2 >> 6;
  v3 = a1[956];
  if (v2 < (a1[957] - v3) >> 3 && (v4 = *(v3 + 8 * v2)) != 0 && (v5 = (v4 + 16 * (a2 & 0x3F)), *v5 == HIDWORD(a2)))
  {
    v6 = a1[959] + 8 * v5[1];
    v7 = a1[960];
  }

  else
  {
    v7 = a1[960];
    v6 = v7;
  }

  if (v7 == v6)
  {
    return 0;
  }

  v8 = (v6 - a1[959]) >> 3;
  v9 = v8 & 0x3F;
  v10 = (v8 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v11 = *(a1[962] + v10);
  v12 = *(a1[968] + v10);
  ++*(v11 + 24 * v9);
  if (!v12)
  {
    return 0;
  }

  else
  {
    return *(v12 + 24 * v9);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IgnoreCulling>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IgnoreCulling>();
    unk_1EB83DA40 = 0x50A14E0778169E99;
    qword_1EB83DA48 = "md::ls::IgnoreCulling]";
    qword_1EB83DA50 = 21;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileUnitsPerMeter>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileUnitsPerMeter>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileUnitsPerMeter>();
    *algn_1EB82F4F8 = 0xE2FCA37BA4379744;
    qword_1EB82F500 = "md::ls::TileUnitsPerMeter]";
    qword_1EB82F508 = 25;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TileClippingConstantDataHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileClippingConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileClippingConstantDataHandle>();
    *algn_1EB83BC68 = 0xCAC3230B44CECEB9;
    qword_1EB83BC70 = "md::ls::TileClippingConstantDataHandle]";
    qword_1EB83BC78 = 38;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileClippingConstantDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileClippingConstantDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::LayerDataReference>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::LayerDataReference>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[488];
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorCorrectionDataHandle>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedColorCorrectionDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorCorrectionDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedColorCorrectionDataHandle>(void)::localId;
    *algn_1EB82B3A8 = 0x194F5C6B356DFBDDLL;
    qword_1EB82B3B0 = "md::ls::SharedColorCorrectionDataHandle]";
    qword_1EB82B3B8 = 39;
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls18LayerDataReferenceEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F4FD0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransferStyleAttributeRasterSet>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransferStyleAttributeRasterSet>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TransferStyleAttributeRasterSet>();
    unk_1EB82F420 = 0x6CC93B0E0603EFDCLL;
    qword_1EB82F428 = "md::ls::TransferStyleAttributeRasterSet]";
    qword_1EB82F430 = 39;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18LayerDataReferenceEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F4FD0;
  a2[1] = v2;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialAlbedoTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedMaterialAlbedoTexture>();
    unk_1EB83C400 = 0x9AAE33FEB51FAC5BLL;
    qword_1EB83C408 = "md::ls::SharedMaterialAlbedoTexture]";
    qword_1EB83C410 = 35;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsFragmentClip>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsFragmentClip>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[455];
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshVertexFormat>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableMeshVertexFormat>();
    *algn_1EB83C648 = 0xE8C803AC798645E1;
    qword_1EB83C650 = "md::ls::RenderableMeshVertexFormat]";
    qword_1EB83C658 = 34;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20SupportsFragmentClipEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F5038;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20SupportsFragmentClipEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F5038;
  a2[1] = v2;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedMaterialVisibilityOptionsHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedMaterialVisibilityOptionsHandle>();
    *algn_1EB83BA38 = 0xA83B1A8F06D3B3DBLL;
    qword_1EB83BA40 = "md::ls::SharedMaterialVisibilityOptionsHandle]";
    qword_1EB83BA48 = 45;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[233];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls38RequireTypedRenderableForLegacyReasonsINS9_23DaVinciGroundRenderableEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A3CFF8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls38RequireTypedRenderableForLegacyReasonsINS6_23DaVinciGroundRenderableEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A3CFF8;
  a2[1] = v2;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanEnableTexture>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanEnableTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::CanEnableTexture>();
    *algn_1EB83D648 = 0x20D1AB8FE4B8A761;
    qword_1EB83D650 = "md::ls::CanEnableTexture]";
    qword_1EB83D658 = 24;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>();
    *algn_1EB82F4D8 = 0xF13A29B8320B78ALL;
    qword_1EB82F4E0 = "md::ls::TileProjectionTypeT<md::ls::TileProjectionType::Mercator>]";
    qword_1EB82F4E8 = 65;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileClippingConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileClippingConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[263];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls30TileClippingConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A40EC0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls30TileClippingConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A40EC0;
  a2[1] = v2;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarketMask>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MarketMask>();
    *algn_1EB83DC38 = 0x66C5B6134E34F45DLL;
    qword_1EB83DC40 = "md::ls::MarketMask]";
    qword_1EB83DC48 = 18;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::ModelTransformData>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ModelTransformData>();
    *algn_1EB83D158 = 0xBED6A4C8B7C54422;
    qword_1EB83D160 = "md::ls::ModelTransformData]";
    qword_1EB83D168 = 26;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ModelTransformData>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverClipPlaneData>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FlyoverClipPlaneData>();
    unk_1EB83CF90 = 0x78FA727E419141C0;
    qword_1EB83CF98 = "md::ls::FlyoverClipPlaneData]";
    qword_1EB83CFA0 = 28;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::GeocentricBounds>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::GeocentricBounds>();
    *algn_1EB83D5F8 = 0xC2ED2352B044903BLL;
    qword_1EB83D600 = "md::ls::GeocentricBounds]";
    qword_1EB83D608 = 24;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::GeocentricBounds>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v6 = "componentMetadata.id < _pools.size()";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v9 = 1024;
      v10 = 177;
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsShadows>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsShadows>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsShadows>();
    unk_1EB83D670 = 0xE690FF1B9655D152;
    qword_1EB83D678 = "md::ls::SupportsShadows]";
    qword_1EB83D680 = 23;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewMatrix>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileViewMatrix>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileViewMatrix>();
    unk_1EB83D790 = 0x8CADE1E37F052ADDLL;
    qword_1EB83D798 = "md::ls::TileViewMatrix]";
    qword_1EB83D7A0 = 22;
  }
}

uint64_t __copy_helper_block_ea8_48c37_ZTSNSt3__110shared_ptrIN3geo4TaskEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsDynamicRenderable>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsDynamicRenderable>();
    unk_1EB83D0A0 = 0x6CF84776E7C5E296;
    qword_1EB83D0A8 = "md::ls::IsDynamicRenderable]";
    qword_1EB83D0B0 = 27;
  }
}

uint64_t std::__function::__func<md::ita::CheckIfMaterialNeedsUpdate::operator()(ecs2::Query<md::ls::UniqueMaterialData const&>)::$_0,std::allocator<md::ita::CheckIfMaterialNeedsUpdate::operator()(ecs2::Query<md::ls::UniqueMaterialData const&>)::$_0>,void ()(md::StyleManagerEvent)>::operator()(uint64_t result, _BYTE *a2)
{
  if (*a2 == 3)
  {
    **(result + 8) = 1;
  }

  return result;
}

void md::ClearRenderLayer::layout(md::ClearRenderLayer *this, const md::LayoutContext *a2)
{
  if (*(this + 112))
  {
    v6 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 1), 0x8BD499FBD96FBB9ELL)[5] + 32);
    v7 = *(v6 + 16) <= 0.01 && *v6 == 1 && (*(v6 + 3) & 1) != 0;
    *(*(this + 6) + 20) = v7;
    (*(*this + 32))(v22, this, a2);
    v9 = *(&v22[0] + 1);
    v8 = *&v22[0];
    if (*&v22[0] != *(&v22[0] + 1))
    {
      v10 = *(*(*(this + 5) + 24) + 8);
      v11 = *&v22[0];
      do
      {
        v12 = md::FrameGraph::renderQueueForPass(v10, *v11);
        if (v12)
        {
          v13 = *(*(v12 + 16) + 8 * v11[1]);
          if (v13)
          {
            *(v13 + 32) = *(this + 6);
          }
        }

        v11 += 2;
      }

      while (v11 != v9);
    }
  }

  else
  {
    if (*(this + 72))
    {
      v4 = 0;
      v5 = *(this + 6) + 4;
      do
      {
        *(v5 + v4) = *(this + v4 + 56);
        v4 += 4;
      }

      while (v4 != 16);
    }

    else
    {
      v14 = gdc::Context::context<md::GridContext>(*(a2 + 1));
      if (v14)
      {
        v15 = 0;
        v16 = *(this + 6) + 4;
        do
        {
          *(v16 + v15) = *(v14 + v15);
          v15 += 4;
        }

        while (v15 != 16);
      }

      else
      {
        md::GridLogic::_defaultDrivingBackgroundColor(v22);
        *(*(this + 6) + 4) = v22[0];
      }
    }

    (*(*this + 32))(v22, this, a2);
    v17 = *(&v22[0] + 1);
    v8 = *&v22[0];
    if (*&v22[0] != *(&v22[0] + 1))
    {
      v18 = *(*(*(this + 5) + 24) + 8);
      v19 = *&v22[0];
      do
      {
        v20 = md::FrameGraph::renderQueueForPass(v18, *v19);
        if (v20)
        {
          v21 = *(*(v20 + 16) + 8 * v19[1]);
          if (v21)
          {
            *(v21 + 32) = *(this + 6);
          }
        }

        v19 += 2;
      }

      while (v19 != v17);
    }
  }

  if (v8)
  {
    *(&v22[0] + 1) = v8;
    operator delete(v8);
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TilePrepassShadowConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TilePrepassShadowConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[239];
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::PushLegacyRibbons>,std::allocator<ecs2::ForwardToExecute<md::ita::PushLegacyRibbons>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::PushLegacyRibbons::operator()((a1 + 8));
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls35TilePrepassShadowConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A537C8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls35TilePrepassShadowConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A537C8;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TilePrepassConstantDataHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TilePrepassConstantDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[274];
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignAmbientTextureIndexFiltered>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignAmbientTextureIndexFiltered>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignAmbientTextureIndexFiltered::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls29TilePrepassConstantDataHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A53850;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void md::GridRenderLayer::layout(md::GridRenderLayer *this, const md::LayoutContext **a2)
{
  v4 = *(this + 6);
  v5 = v4[35];
  if (v5 != v4[42])
  {
    v6 = v4[40];
    if (v6)
    {
      v7 = 0;
      v8 = 1;
      v9 = v4[35];
      do
      {
        v7 += v9[9];
        std::__hash_table<std::__hash_value_type<md::GridRenderResources::TileMeshEntry,std::__list_iterator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,void *>>,std::__unordered_map_hasher<md::GridRenderResources::TileMeshEntry,std::__hash_value_type<md::GridRenderResources::TileMeshEntry,std::__list_iterator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,void *>>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>,true>,std::__unordered_map_equal<md::GridRenderResources::TileMeshEntry,std::__hash_value_type<md::GridRenderResources::TileMeshEntry,std::__list_iterator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,void *>>,std::equal_to<md::GridRenderResources::TileMeshEntry>,md::GridRenderResources::TileMeshEntryHash,true>,std::allocator<std::__hash_value_type<md::GridRenderResources::TileMeshEntry,std::__list_iterator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,void *>>>>::__erase_unique<md::GridRenderResources::TileMeshEntry>(v4 + 37, (v9 + 2));
        v9 = v9[1];
        v10 = v9 == v4[42] || v8++ >= v6;
      }

      while (!v10);
      v5 = v4[35];
    }

    else
    {
      v7 = 0;
      v9 = v4[35];
    }

    std::list<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry>>::erase((v4 + 34), v5, v9);
    v11 = v4[43];
    v10 = v11 >= v7;
    v12 = v11 - v7;
    if (!v10)
    {
      v12 = 0;
    }

    v4[43] = v12;
  }

  v4[42] = v4 + 34;
  v13 = md::LayoutContext::cameraType(a2);
  if (gdc::ToCoordinateSystem(v13))
  {
    md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 57));
    v14 = a2[1];
    v15 = gdc::Context::context<md::GridContext>(v14);
    v16 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v14, 0xE42D19AFCA302E68);
    v18 = !v16 || (v17 = v16[5], *(v17 + 8) != 0xE42D19AFCA302E68) || *(v17 + 32) == 0;
    v19 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v14, 0x1AF456233693CD46uLL);
    if (v19 && (v20 = v19[5], *(v20 + 8) == 0x1AF456233693CD46))
    {
      v21 = *(v20 + 32);
    }

    else
    {
      v21 = 0;
    }

    v22 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v14, 0x99BED48DEFBBD82BLL);
    if (v22 && (v23 = v22[5], *(v23 + 8) == 0x99BED48DEFBBD82BLL))
    {
      v24 = *(v23 + 32);
    }

    else
    {
      v24 = 0;
    }

    std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v14, 0x3070CB6B3C7F21D3uLL);
    v25 = md::LayoutContext::get<md::ElevationContext>(v14);
    if (v15 != 0 && !v18 && v21 && v24 && v25)
    {
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v73, *(*(this + 6) + 16));
      v26 = 0;
      v27 = *&v73[5] + 64;
      do
      {
        *(v27 + v26) = *(v15 + v26);
        v26 += 4;
      }

      while (v26 != 16);
      ggl::BufferMemory::~BufferMemory(v73);
      ggl::ConstantDataTyped<ggl::Grid::Style>::write(v74, *(*(this + 6) + 32));
      v28 = gdc::Camera::cameraFrame(v21);
      v29 = 0;
      v30 = *(v28 + 24);
      v31 = 1;
      do
      {
        v32 = v31;
        v31 *= 8;
        v33 = v31;
      }

      while (v31 < v30 && v29++ < 0xF);
      v35 = (fminf(fmaxf(v32, v30), v33) - v32) / (v33 - v32);
      v36 = v32 <= v30;
      v37 = 0.0;
      if (v36)
      {
        v37 = 1.0;
      }

      if (v32 != v33)
      {
        v37 = v35;
      }

      v38 = (v37 * v37) * ((v37 * -2.0) + 3.0);
      v39 = log2(v32);
      v40 = 0;
      if (v39 >= 7)
      {
        v41 = ((v39 - 6) / 3);
      }

      else
      {
        v41 = 0.0;
      }

      v42 = v75;
      *(v75 + 24) = v38;
      do
      {
        *(v42 + v40) = *(v15 + v40 + 16);
        v40 += 4;
      }

      while (v40 != 16);
      v43 = *(v28 + 32);
      gdc::Camera::verticalFieldOfView(v73, v21);
      v44 = 0;
      if (v73[0] * -0.5 + 1.48352986 < v43)
      {
        v44 = *(v15 + 15);
      }

      *(v42 + 48) = v44;
      v45 = *(this + 6);
      v46 = *(v45 + 353);
      v47 = *(v45 + 352);
      v67 = v15;
      if (*(v21 + 3784))
      {
        gdc::Camera::convertToMeters(v73, *(v21 + 3040), v21);
        if (*(v21 + 3784))
        {
          v48 = 8;
        }

        else
        {
          v48 = 1;
        }
      }

      else
      {
        v48 = 1;
      }

      v49 = *(*v24 + 112);
      v50 = *(*v24 + 120);
      v51 = v50;
      if (v49 != v50)
      {
        v51 = v49;
        do
        {
          if (*v51 == v48)
          {
            goto LABEL_57;
          }

          v51 += 56;
        }

        while (v51 != v50);
        v51 = v50;
      }

LABEL_57:
      while (v49 != v50)
      {
        if (*v49 == 1)
        {
          v50 = v49;
          break;
        }

        v49 += 56;
      }

      v52 = *(v51 + 11);
      if (v52)
      {
        v53 = v52 == *(v50 + 5);
      }

      else
      {
        v53 = 0;
      }

      if (v53 && (v67[7] & 1) == 0)
      {
        v64 = v51 + 40;
        while (1)
        {
          v64 = *v64;
          if (!v64)
          {
            break;
          }

          if (!std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::find<geo::QuadTile>(v50 + 2, v64 + 16))
          {
            goto LABEL_64;
          }
        }

        v54 = v67;
        if (md::GridRenderLayer::mapIsOpaque(this, a2))
        {
          goto LABEL_88;
        }
      }

      else
      {
LABEL_64:
        md::GridRenderLayer::mapIsOpaque(this, a2);
        v54 = v67;
      }

      v55 = *(v51 + 10);
      if (v55)
      {
        v56 = v46 / v47;
        v57 = gdc::Context::context<md::TerrainMeshProviderContext>(a2[1]);
        pow(v56, -v41);
        v58 = *(v54 + 56) != 1 || v57 == 0;
        if (v58 || (v61 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>(v57 + 1, (v55 + 16)), !v61 || *(v61 + 6) == v57 + 6))
        {
          v59 = 0;
        }

        else
        {
          v62 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>(v57 + 1, (v55 + 16));
          v63 = v57 + 6;
          if (v62)
          {
            v63 = *(v62 + 6);
          }

          v59 = v63[6];
        }

        v60 = *(this + 6);
        v69 = *(v55 + 20);
        v68 = *(v55 + 16);
        v70 = *(v55 + 32);
        v71 = *(v55 + 40);
        *&v72 = v59;
        if (std::unordered_map<md::GridRenderResources::TileMeshEntry,std::__list_iterator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,void *>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>,std::allocator<std::pair<md::GridRenderResources::TileMeshEntry const,std::__list_iterator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,void *>>>>::find[abi:nn200100]((v60 + 296), &v68))
        {
          std::__list_imp<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry const&>();
        }

        _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

LABEL_88:
      ggl::BufferMemory::~BufferMemory(v74);
    }
  }

  else
  {
    md::GridRenderLayer::_layoutFlat(this, a2[1]);
    if (gdc::Context::get<md::StyleLogicContext>(a2[1]))
    {
      v65 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 57));
      if (v65)
      {
        v65 = *(*(v65 + 2) + 8 * *(this + 58));
      }

      v66 = (*(this + 6) + 152);

      ggl::CommandBuffer::pushRenderItem(v65, v66);
    }
  }
}

void sub_1B2AA7ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, std::__shared_weak_count *a63)
{
  operator delete(v72);
  if (a52)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a52);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v71);
  std::__shared_weak_count::__release_shared[abi:nn200100](v71);
  if (a63)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a63);
  }

  if (a71)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a71);
  }

  if (STACK[0x268])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x268]);
  }

  ggl::BufferMemory::~BufferMemory((v73 - 200));
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29TilePrepassConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53850;
  a2[1] = v2;
  return result;
}

void md::GridRenderLayer::_layoutFlat(md::GridRenderLayer *this, const md::LayoutContext *a2)
{
  v4 = gdc::Context::context<md::GridContext>(a2);
  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xE42D19AFCA302E68);
  v7 = !v5 || (v6 = v5[5], *(v6 + 8) != 0xE42D19AFCA302E68) || *(v6 + 32) == 0;
  v8 = gdc::Context::get<md::GeometryContext>(a2);
  v9 = md::LayoutContext::get<md::ElevationContext>(a2);
  if (v4 && !v7 && v8 && v9)
  {
    v10 = md::LayoutContext::get<md::CameraContext>(a2);
    v11 = gdc::CameraView::position(v10);
    v94 = *v11;
    v95 = *(v11 + 16);
    v96 = *(v10 + 3088);
    v97 = *(v10 + 3104);
    v12 = *(v10 + 3040);
    v93[0] = 0;
    v93[1] = 0;
    v93[2] = 0xBFF0000000000000;
    v93[3] = v12;
    *&v91 = gm::PlaneUtils::rayPlaneIntersectionOrPoint<double>(v93, &v94, &v94);
    *(&v91 + 1) = v13;
    v92 = v14;
    v15 = *(v10 + 976);
    v82 = 0u;
    v84 = 0;
    v83 = 0u;
    v81 = 0u;
    v80 = 0u;
    v79 = 0x3FF0000000000000;
    *&v82 = 0x3FF0000000000000;
    v86 = 0;
    v85 = 0x3FF0000000000000;
    v90 = 0x3FF0000000000000;
    v87 = v91;
    v88 = v13;
    v89 = v14;
    v72 = 0u;
    v74 = 0;
    v77 = 0u;
    v76 = 0u;
    v73 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = v15;
    *&v72 = v15;
    v78 = 0x3FF0000000000000;
    v75 = 0x3FF0000000000000;
    gm::operator*<double,4,4,4>(v68, &v79, &v69);
    gm::operator*<double,4,4,4>(v67, (v10 + 808), v68);
    v16 = v15 * 1000000.0;
    v17 = log10(v16);
    v18 = __exp10(floor(v17));
    for (i = 0; i != 24; i += 8)
    {
      *&v58[i] = *(&v91 + i) * 1000000.0;
    }

    v20 = 0;
    *v48 = *v58;
    *&v48[16] = *&v58[16];
    do
    {
      *&v58[v20] = *&v48[v20] * (1.0 / v18);
      v20 += 8;
    }

    while (v20 != 24);
    v21 = 0;
    v91 = *v58;
    v92 = *&v58[16];
    do
    {
      *&v58[v21] = *(&v91 + v21) - floor(*(&v91 + v21));
      v21 += 8;
    }

    while (v21 != 24);
    v22 = *&v58[16];
    v23 = *v58;
    v24 = v16 / v18;
    v60 = 0u;
    v62 = 0;
    v65 = 0u;
    v64 = 0u;
    v61 = 0u;
    v59 = 0u;
    *&v58[8] = 0u;
    *v58 = v24;
    *&v60 = v24;
    v66 = 0x3FF0000000000000;
    v63 = 0x3FF0000000000000;
    v50 = 0u;
    v52 = 0;
    v51 = 0u;
    v49 = 0u;
    *&v48[8] = 0u;
    *v48 = 0x3FF0000000000000;
    *&v50 = 0x3FF0000000000000;
    v53 = 0x3FF0000000000000;
    v54 = 0;
    v57 = 0x3FF0000000000000;
    v55 = v23;
    v56 = v22;
    gm::operator*<double,4,4,4>(v47, v48, v58);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v42, *(*(this + 6) + 16));
    v25 = 0;
    v26 = *(&v44 + 1) + 64;
    do
    {
      *(v26 + v25) = *(v4 + v25);
      v25 += 4;
    }

    while (v25 != 16);
    ggl::BufferMemory::~BufferMemory(&v42);
    ggl::ConstantDataTyped<ggl::Grid::Style>::write(v46, *(*(this + 6) + 32));
    v27 = 0;
    v28 = v46[5];
    do
    {
      *(v28 + v27) = *(v4 + v27 + 16);
      v27 += 4;
    }

    while (v27 != 16);
    v29 = 0;
    v30 = v24 * 0.1;
    *(v28 + 24) = v30;
    *(v28 + 48) = 0;
    v31 = v67;
    do
    {
      v33 = *v31;
      v32 = v31[1];
      v31 += 2;
      *(&v42 + v29) = vcvt_hight_f32_f64(vcvt_f32_f64(v33), v32);
      v29 += 16;
    }

    while (v29 != 64);
    ggl::DataAccess<ggl::Tile::View>::DataAccess(v40, **(this + 6), 1);
    v34 = v41;
    *v41 = v42;
    v34[1] = v43;
    v34[2] = v44;
    v34[3] = v45;
    ggl::BufferMemory::~BufferMemory(v40);
    v35 = 0;
    v36 = v47;
    do
    {
      v38 = *v36;
      v37 = v36[1];
      v36 += 2;
      *(&v42 + v35) = vcvt_hight_f32_f64(vcvt_f32_f64(v38), v37);
      v35 += 16;
    }

    while (v35 != 64);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v40, *(*(this + 6) + 16));
    v39 = v41;
    *v41 = v42;
    v39[1] = v43;
    v39[2] = v44;
    v39[3] = v45;
    ggl::BufferMemory::~BufferMemory(v40);
    ggl::BufferMemory::~BufferMemory(v46);
  }
}

void *gdc::Context::context<md::GridContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x336A901A15BB7353uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x336A901A15BB7353)
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

double gm::PlaneUtils::rayPlaneIntersectionOrPoint<double>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0.0;
  if (gm::Plane3<double>::intersect(a1, a2, &v6))
  {
    return gm::Ray<double,3>::at(a2, v6);
  }

  else
  {
    return *a3;
  }
}

ggl::zone_mallocator *ggl::CommandBuffer::pushRenderItem(ggl::zone_mallocator *this, ggl::RenderItem *a2)
{
  v3 = this;
  v5 = *(this + 10);
  v4 = *(this + 11);
  if (v5 >= v4)
  {
    v7 = *(this + 9);
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v21[4] = this + 96;
    if (v11)
    {
      v12 = ggl::zone_mallocator::instance(this);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderItem *>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[8 * v8];
    v15 = &v13[8 * v11];
    *v14 = a2;
    v6 = v14 + 8;
    v16 = *(v3 + 9);
    v17 = *(v3 + 10) - v16;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v16, v17);
    v19 = *(v3 + 9);
    *(v3 + 9) = v18;
    *(v3 + 10) = v6;
    v20 = *(v3 + 11);
    *(v3 + 11) = v15;
    v21[2] = v19;
    v21[3] = v20;
    v21[0] = v19;
    v21[1] = v19;
    this = std::__split_buffer<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator> &>::~__split_buffer(v21);
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  *(v3 + 10) = v6;
  return this;
}

void md::SkyRenderLayer::layout(md::SkyRenderLayer *this, const md::LayoutContext *a2)
{
  v4 = *(a2 + 1);
  v5 = gdc::Context::get<md::SkyLogicContext>(v4);
  if (v5)
  {
    v6 = v5;
    v7 = gdc::Context::get<md::GeometryContext>(v4);
    if (v7)
    {
      v8 = v7;
      v9 = md::LayoutContext::get<md::CameraContext>(v4);
      v10 = v9[379];
      v11 = *(this + 6);
      *v11 = v10;
      v12 = *(*(*(this + 5) + 24) + 8);
      v13 = md::FrameGraph::renderQueueForPass(v12, *(this + 56));
      if (v13)
      {
        v14 = *(*(v13 + 16) + 8 * *(this + 57));
      }

      else
      {
        v14 = 0;
      }

      v15 = md::FrameGraph::renderQueueForPass(v12, *(this + 58));
      if (v15)
      {
        v16 = *(*(v15 + 16) + 8 * *(this + 59));
      }

      else
      {
        v16 = 0;
      }

      v17 = *(v6 + 32);
      if (v10 < 1.0)
      {
        if (!*(v11 + 8))
        {
          operator new();
        }

        ggl::CommandBuffer::pushRenderItem(v14, *(v11 + 104));
        v18 = *(*(this + 6) + 8);
        ggl::BufferMemory::BufferMemory(v77);
        ggl::ResourceAccessor::accessConstantData(v79, 0, v18, 1);
        ggl::BufferMemory::operator=(v77, v79);
        ggl::BufferMemory::~BufferMemory(v79);
        v19 = 0;
        v20 = v78;
        v21 = v78 + 8;
        do
        {
          v21[v19] = *(v6 + v19 * 4);
          ++v19;
        }

        while (v19 != 4);
        v22 = 0;
        v23 = v20 + 4;
        do
        {
          v23[v22] = *(v6 + v22 * 4 + 16);
          ++v22;
        }

        while (v22 != 4);
        v24 = *a2;
        [v24 sizeInPixels];
        v26 = v25;
        v78[12] = v26;

        v27 = **(this + 6);
        v28 = +[VKDebugSettings sharedSettings];
        [v28 skyOffsetAdjustment];
        *v78 = v27 - v29;

        ggl::BufferMemory::~BufferMemory(v77);
      }

      if (v17)
      {
        if (!*(*(this + 6) + 112))
        {
          _ZNSt3__115allocate_sharedB8nn200100IN3ggl17ConstantDataTypedINS1_4Tile4ViewEEENS_9allocatorIS5_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        v30 = 0;
        v31 = v9[365];
        v32 = v9[366];
        v33 = v9[367];
        v34 = v9[368];
        v81 = 0u;
        v83 = 0;
        *&v79[1] = 0u;
        v80 = 0u;
        v82 = 0u;
        v85 = 0;
        v79[0] = v33 - v31;
        *&v81 = v34 - v32;
        v84 = v33 - v31;
        v86 = v31;
        v87 = v32;
        v88 = xmmword_1B33B0740;
        v35 = v9 + 101;
        do
        {
          v36 = 0;
          v37 = v79;
          do
          {
            v38 = 0;
            v39 = 0.0;
            v40 = v35;
            do
            {
              v41 = *v40;
              v40 += 4;
              v39 = v39 + v37[v38++] * v41;
            }

            while (v38 != 4);
            v77[4 * v36++ + v30] = v39;
            v37 += 4;
          }

          while (v36 != 4);
          ++v30;
          ++v35;
        }

        while (v30 != 4);
        md::FogInfo::updateFogUniformsWithLayoutContext((*(this + 6) + 160), a2, v79);
        v42 = 0;
        v43 = *(this + 6);
        *(v43[26] + 24) = v43[25];
        v44 = v77;
        do
        {
          v46 = *v44;
          v45 = v44[1];
          v44 += 2;
          v76[v42++] = vcvt_hight_f32_f64(vcvt_f32_f64(v46), v45);
        }

        while (v42 != 4);
        ggl::DataAccess<ggl::Tile::View>::DataAccess(v74, v43[14], 1);
        v47 = v75;
        v48 = v76[1];
        *v75 = v76[0];
        v47[1] = v48;
        v49 = v76[3];
        v47[2] = v76[2];
        v47[3] = v49;
        ggl::BufferMemory::~BufferMemory(v74);
        v50 = *(this + 6);
        v51 = v50[24];
        v52 = *(v51 + 136);
        *(v52 + 24) = 0;
        v53 = v50[14];
        *(v52 + 16) = v53;
        v54 = *(v51 + 232);
        v55 = v50[15];
        if (v55)
        {
          atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
        }

        v56 = *(v54 + 24);
        *(v54 + 16) = v53;
        *(v54 + 24) = v55;
        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v56);
        }

        v57 = *(this + 6);
        v58 = v57[24];
        v59 = v57[20];
        v60 = v57[21];
        if (v60)
        {
          atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          v61 = *(v58 + 136);
          *v61 = v59;
          v61[1] = 0;
          v62 = *(v58 + 232);
          atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v63 = *(v58 + 136);
          *v63 = v59;
          v63[1] = 0;
          v62 = *(v58 + 232);
        }

        v64 = v62[1];
        *v62 = v59;
        v62[1] = v60;
        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v64);
        }

        if (v60)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v60);
        }

        v65 = gdc::ToCoordinateSystem(*(v8 + 320));
        v66 = 16;
        if (v65)
        {
          v66 = 18;
        }

        v67 = &v8[v66];
        v68 = *(this + 6);
        v70 = *v67;
        v69 = v67[1];
        if (v69)
        {
          atomic_fetch_add_explicit((v69 + 8), 1uLL, memory_order_relaxed);
        }

        v71 = *(v68 + 184);
        *(v68 + 176) = v70;
        *(v68 + 184) = v69;
        if (v71)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v71);
        }

        v72 = *(this + 6);
        v73 = *(v72 + 208);
        *(v73 + 8) = *(v72 + 176);
        ggl::CommandBuffer::pushRenderItem(v16, v73);
      }
    }
  }
}

void sub_1B2AA8E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  ggl::BufferMemory::~BufferMemory(va);
  ggl::BufferMemory::~BufferMemory((v17 - 240));
  _Unwind_Resume(a1);
}

ggl::CommandBuffer *md::RouteRenderLayer::layout(md::RouteRenderLayer *this, const md::LayoutContext *a2)
{
  v323 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 1);
  v260 = md::LayoutContext::get<md::ElevationContext>(v4);
  v261 = *v260;
  v312[0] = &unk_1F2A36DF0;
  v312[1] = this;
  v313 = gdc::Context::get<md::StyleLogicContext>(v4);
  v314 = v312;
  md::StyleLogicContext::parseEvents(v313, v312);
  std::__function::__value_func<void ()(md::StyleManagerEvent)>::~__value_func[abi:nn200100](v312);
  v5 = *(this + 8);
  v6 = *(a2 + 1);
  v7 = md::LayoutContext::get<md::CameraContext>(v6);
  v8 = md::LayoutContext::get<md::ElevationContext>(v6);
  v9 = *(this + 112);
  v275 = this;
  v276 = v8;
  v10 = *(v8 + 5);
  *(this + 112) = v10;
  v11 = gdc::Camera::cameraFrame(v7);
  v12 = *(v11 + 32);
  v13 = *v11;
  v272 = v7;
  v283 = v7[470];
  v284 = *(v11 + 24);
  v281 = a2;
  v14 = *a2;
  [v14 size];
  v16 = v15;
  v17 = tan(v13 * 0.5 + 0.789761487);
  v18 = log(v17);
  v19 = tan(v13 * 0.5 + 0.78103484);
  v20 = log(v19);
  v21 = cos(v13 + v13);
  v22 = cos(v13 * 4.0);
  v23 = cos(v13 * 6.0);
  v24 = cos(v12);

  v25 = a2;
  v26 = *(a2 + 1);
  v27 = gdc::Context::get<md::StyleLogicContext>(v26);
  if (v27)
  {
    v28 = *(v27 + 85) == 3;
  }

  else
  {
    v28 = 0;
  }

  v29 = *(*(this + 8) + 72);
  v271 = md::LayoutContext::get<md::NavigationContext>(v26);
  if (!v271)
  {
    goto LABEL_6;
  }

  v30 = +[VKDebugSettings sharedSettings];
  v31 = [v30 showStaticRouteWidth];

  if (v31)
  {
    v25 = v281;
    v26 = *(v281 + 1);
LABEL_6:
    v270 = gdc::Context::context<md::RouteLineContext>(v26);
    goto LABEL_7;
  }

  memset(__p, 0, 32);
  LODWORD(__p[4]) = *(v271 + 34);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(__p, v271[14]);
  v25 = v281;
  for (i = v271[15]; i; i = *i)
  {
    std::__hash_table<md::NavigationLogicEvent,std::hash<md::NavigationLogicEvent>,std::equal_to<md::NavigationLogicEvent>,std::allocator<md::NavigationLogicEvent>>::__emplace_unique_key_args<md::NavigationLogicEvent,md::NavigationLogicEvent const&>(__p, *(i + 4));
  }

  if (__p[1])
  {
    if (*__p[0])
    {
      v35 = **__p[0];
      if (v35)
      {
        v36 = vcnt_s8(__p[1]);
        v36.i16[0] = vaddlv_u8(v36);
        do
        {
          v37 = v35[1];
          if (v37)
          {
            if (v36.u32[0] > 1uLL)
            {
              if (v37 < __p[1])
              {
                break;
              }

              v38 = v37 % __p[1];
            }

            else
            {
              v38 = v37 & (__p[1] - 1);
            }

            if (v38)
            {
              break;
            }
          }

          else if (!*(v35 + 4))
          {
            v256 = 0;
            goto LABEL_28;
          }

          v35 = *v35;
        }

        while (v35);
      }
    }
  }

  v256 = 1;
LABEL_28:
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(__p);
  v26 = *(v281 + 1);
  v270 = gdc::Context::context<md::RouteLineContext>(v26);
  if (!v256)
  {
    goto LABEL_29;
  }

LABEL_7:
  v32 = *(v275 + 8);
  v274 = 1;
  if ((*(v32 + 48) & 1) == 0 && v29 == v28)
  {
    if (*(v32 + 73) == v261)
    {
      v33 = (v9 != v10) | *(v270 + 72);
LABEL_30:
      v274 = v33;
      goto LABEL_31;
    }

LABEL_29:
    v33 = 1;
    goto LABEL_30;
  }

LABEL_31:
  v268 = gdc::Context::get<md::StyleLogicContext>(v26);
  v39 = *(*v268 + 520);
  v40 = *(*v268 + 528);
  if (v40)
  {
    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v306 = gss::ClientStyleState<gss::PropertyID>::targetMapDisplayStyle(v39);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v40);
  }

  v41 = *(v25 + 1);
  md::LayoutContext::zoomAtCentrePoint(v41);
  v43 = v42;
  v44 = gdc::Context::get<md::StyleLogicContext>(v41);
  if (v44)
  {
    v45 = *v44;
    v46 = v44[1];
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!v45)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v46);
        goto LABEL_54;
      }
    }

    else if (!v45)
    {
      goto LABEL_54;
    }

    v47 = *(v45 + 520);
    v48 = *(v45 + 528);
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v47)
    {
      v49 = *(v45 + 520);
      v50 = *(v45 + 528);
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v51 = (gss::ClientStyleState<gss::PropertyID>::sourceMapDisplayStyle(v49) & 0xFF00) == 512;
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v50);
      }
    }

    else
    {
      v51 = 0;
    }

    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v48);
    }

    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v46);
    }

    if (v51)
    {
      goto LABEL_68;
    }
  }

LABEL_54:
  v52 = *(v275 + 8);
  v53 = *(v52 + 56);
  if (v53)
  {
    v54 = *(v52 + 64);
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::PropertyID>::QueryableLocker(__p, v53, v54);
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v54);
    }

    if (LOBYTE(__p[4]) != 1)
    {
      v262 = 0;
LABEL_321:
      if (__p[3])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](__p[3]);
      }

      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](__p[1]);
      }

      goto LABEL_69;
    }

    LOBYTE(v311[0]) = 1;
    if (v43 >= 0x17)
    {
      v55 = 23;
    }

    else
    {
      v55 = v43;
    }

    v56 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<unsigned int>(*(__p[0] + 3), 480, v55, 1, v311);
    if (LOBYTE(v311[0]) == 1)
    {
      v57 = v56;
LABEL_65:
      HIDWORD(v262) = v57;
      goto LABEL_66;
    }

    HIDWORD(v262) = 2;
    gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(262, 2, *(__p[0] + 3), 0);
    if (v43 < v253)
    {
      gss::RenderStyleHelper<gss::PropertyID,float>::valueForKey(263, 2, *(__p[0] + 3), 0);
      if (v43 > v254)
      {
        v57 = 1;
        goto LABEL_65;
      }

      HIDWORD(v262) = 0;
    }

LABEL_66:
    LOBYTE(v262) = gss::RenderStyleHelper<gss::PropertyID,BOOL>::valueForKey(481, 2u, *(__p[0] + 3));
    if (__p[4])
    {
      (*(*__p[0] + 56))(__p[0]);
    }

    goto LABEL_321;
  }

LABEL_68:
  v262 = 0;
LABEL_69:
  v58 = *(v25 + 1);
  v59 = md::LayoutContext::get<md::SceneContext>(v58);
  v269 = md::LayoutContext::get<md::SharedResourcesContext>(v58);
  v279 = v59;
  v60 = *(*v59 + 112);
  v61 = *(*v59 + 120);
  if (v60 != v61)
  {
    while (*v60 != *(*v59 + 282))
    {
      v60 += 56;
      if (v60 == v61)
      {
        goto LABEL_74;
      }
    }

    v61 = v60;
  }

LABEL_74:
  v62 = *(v275 + 8);
  if (*(v62 + 112) != *(v61 + 11))
  {
    goto LABEL_105;
  }

  v63 = (v62 + 104);
  do
  {
    v63 = *v63;
    v64 = v63 != 0;
    if (!v63)
    {
      goto LABEL_106;
    }

    if (v63[5])
    {
      v65 = (*(v63 + 17) - 0x61C8864680B583EBLL + ((*(v63 + 16) - 0x61C8864680B583EBLL) << 6) + ((*(v63 + 16) - 0x61C8864680B583EBLL) >> 2)) ^ (*(v63 + 16) - 0x61C8864680B583EBLL);
      v66 = (*(v63 + 5) - 0x61C8864680B583EBLL + (v65 << 6) + (v65 >> 2)) ^ v65;
      v67 = (*(v63 + 6) - 0x61C8864680B583EBLL + (v66 << 6) + (v66 >> 2)) ^ v66;
      v63[4] = v67;
      *(v63 + 40) = 0;
    }

    else
    {
      v67 = v63[4];
    }

    v68 = *(v61 + 36);
    if (!*&v68)
    {
      break;
    }

    v69 = vcnt_s8(v68);
    v69.i16[0] = vaddlv_u8(v69);
    v70 = v69.u32[0];
    if (v69.u32[0] > 1uLL)
    {
      v71 = v67;
      if (v67 >= *&v68)
      {
        v71 = v67 % *&v68;
      }
    }

    else
    {
      v71 = (*&v68 - 1) & v67;
    }

    v72 = *(*(v61 + 8) + 8 * v71);
    if (!v72 || (v73 = *v72) == 0)
    {
LABEL_352:
      v265 = 1;
      goto LABEL_107;
    }

    while (1)
    {
      v74 = *(v73 + 1);
      if (v67 == v74)
      {
        break;
      }

      if (v70 > 1)
      {
        if (v74 >= *&v68)
        {
          v74 %= *&v68;
        }
      }

      else
      {
        v74 &= *&v68 - 1;
      }

      if (v74 != v71)
      {
        goto LABEL_352;
      }

LABEL_351:
      v73 = *v73;
      if (!v73)
      {
        goto LABEL_352;
      }
    }

    if (!std::equal_to<geo::QuadTile>::operator()[abi:nn200100](v73 + 16, v63 + 16))
    {
      goto LABEL_351;
    }

    if (*(v63 + 40) == 1)
    {
      geo::QuadTile::computeHash(v63 + 16);
      *(v63 + 40) = 0;
    }

    v75 = v63[4];
    if (v73[40])
    {
      v258 = (v73[17] - 0x61C8864680B583EBLL + ((v73[16] - 0x61C8864680B583EBLL) << 6) + ((v73[16] - 0x61C8864680B583EBLL) >> 2)) ^ (v73[16] - 0x61C8864680B583EBLL);
      v259 = (*(v73 + 5) - 0x61C8864680B583EBLL + (v258 << 6) + (v258 >> 2)) ^ v258;
      v76 = (*(v73 + 6) - 0x61C8864680B583EBLL + (v259 << 6) + (v259 >> 2)) ^ v259;
      *(v73 + 4) = v76;
      v73[40] = 0;
    }

    else
    {
      v76 = *(v73 + 4);
    }
  }

  while (v75 == v76 && *(v63 + 16) == v73[16] && *(v63 + 17) == v73[17] && *(v63 + 5) == *(v73 + 5) && *(v63 + 6) == *(v73 + 6));
LABEL_105:
  v64 = 1;
LABEL_106:
  v265 = v64;
LABEL_107:
  v304 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v305 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  v77 = +[VKDebugSettings sharedSettings];
  v78 = [v77 dontMatchRouteLine];

  v79 = (v78 ^ 1) & v28;
  v301[1] = 0;
  v300 = v301;
  v301[0] = 0;
  v302 = v304;
  v303 = v305;
  v80 = *(v61 + 10);
  if (v80)
  {
    v81 = 0;
    do
    {
      v82 = 0;
      v83 = 1 << *(v80 + 17);
      v84 = 1.0 / v83;
      v85 = v84 * (v83 + ~*(v80 + 5));
      v86 = v84 * *(v80 + 6) + v84;
      *__p = v84 * *(v80 + 6);
      __p[1] = *&v85;
      __p[2] = *&v86;
      *&__p[3] = v85 + v84;
      v87 = &v304;
      v88 = __p;
      v89 = 1;
      do
      {
        v90 = v89;
        v91 = *v88;
        v92 = *v87;
        *&v305.i64[v82] = fmax(*&v305.i64[v82], *&__p[v82 + 2]);
        *v87 = fmin(v91, v92);
        v88 = &__p[1];
        v87 = &v304.i64[1];
        v82 = 1;
        v89 = 0;
      }

      while ((v90 & 1) != 0);
      if (v79)
      {
        v93 = *(v80 + 17);
        if (v93 < 0xF)
        {
          v81 |= v93 > 0xE;
        }

        else
        {
          md::MultiRectRegion::addRect(&v300, __p);
          v81 = 1;
        }
      }

      v80 = *v80;
    }

    while (v80);
  }

  else
  {
    v81 = 0;
  }

  v282 = *v5;
  v273 = v5[1];
  if (*v5 != v273)
  {
    v94 = v284 * v283 * (v24 + v24) * fabs((v18 - v20) * 0.159154943) / ((v21 * -559.82 + 111132.92 + v22 * 1.175 + v23 * -0.0023) * v16);
    v277 = v79 & v81;
    v266 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    v267 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    while (1)
    {
      if (v274)
      {
        LODWORD(v95) = 1;
      }

      else
      {
        v95 = *(*v282 + 160);
        if (v95)
        {
          LODWORD(v95) = [v95 needsUpdateForViewingScale:v94];
        }

        if (((v265 | v95) & 1) == 0)
        {
          if (*(*(v275 + 8) + 80) != (v276[4] * v276[5]) && *v276 == 1)
          {
            md::RouteRenderLayer::setElevatedRoutelineMatrix(v281, v282);
          }

          goto LABEL_241;
        }
      }

      v278 = v95;
      if ((v277 & 1) == 0)
      {
        break;
      }

      v96 = *(*v282 + 144);
      v97 = [v96 composedRoute];
      v98 = [v97 supportsSnapping];

      v296 = 0;
      v297 = 0;
      v295 = &v296;
      v298 = v267;
      v299 = v266;
      if (v98)
      {
        std::__tree<gm::Box<double,2>,md::MultiRectSetCompare,std::allocator<gm::Box<double,2>>>::__assign_multi<std::__tree_const_iterator<gm::Box<double,2>,std::__tree_node<gm::Box<double,2>,void *> *,long>>(&v295, v300, v301);
        v100 = v302;
        v99 = v303;
LABEL_130:
        v298 = v100;
        v299 = v99;
        v285 = v277;
        goto LABEL_131;
      }

      v285 = 0;
LABEL_131:
      v294[0] = 0;
      v294[1] = 0;
      v293 = v294;
      v101 = md::SceneContext::layerDataInView(v279, 15);
      v102 = v101 + 1;
      v103 = *v101;
      if (*v101 != v101 + 1)
      {
        do
        {
          v105 = v103[4];
          v104 = v103[5];
          if (v104)
          {
            atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v106 = 0;
          v107 = 1;
          v108 = 1 << *(v105 + 169);
          v109 = 1.0 / v108;
          v110 = v109 * (v108 + ~*(v105 + 172));
          v111 = v109 * *(v105 + 176) + v109;
          *__p = v109 * *(v105 + 176);
          __p[1] = *&v110;
          __p[2] = *&v111;
          *&__p[3] = v110 + v109;
          v112 = &v304;
          v113 = __p;
          do
          {
            v114 = v107;
            v115 = *v113;
            v116 = *v112;
            *&v305.i64[v106] = fmax(*&v305.i64[v106], *&__p[v106 + 2]);
            *v112 = fmin(v115, v116);
            v113 = &__p[1];
            v112 = &v304.i64[1];
            v106 = 1;
            v107 = 0;
          }

          while ((v114 & 1) != 0);
          if (v285 && *(v105 + 169) >= 0xFu)
          {
            md::MultiRectRegion::addRect(&v295, __p);
          }

          v117 = v294[0];
LABEL_140:
          if (!v117)
          {
LABEL_146:
            operator new();
          }

          while (1)
          {
            v118 = v117;
            v119 = v117[4];
            if (v105 < v119)
            {
              v117 = *v118;
              goto LABEL_140;
            }

            if (v119 >= v105)
            {
              break;
            }

            v117 = v118[1];
            if (!v117)
            {
              goto LABEL_146;
            }
          }

          if (v104)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v104);
          }

          v120 = v103[1];
          if (v120)
          {
            do
            {
              v121 = v120;
              v120 = *v120;
            }

            while (v120);
          }

          else
          {
            do
            {
              v121 = v103[2];
              v250 = *v121 == v103;
              v103 = v121;
            }

            while (!v250);
          }

          v103 = v121;
        }

        while (v121 != v102);
      }

      v122 = *(*v279 + 48);
      v123 = *(*v279 + 56);
      while (v122 != v123)
      {
        if (*v122 == 13)
        {
          if (v122 != v123)
          {
            v124 = md::SceneContext::layerDataInView(v279, 13);
            v125 = v124 + 1;
            v126 = *v124;
            if (*v124 != v124 + 1)
            {
              do
              {
                v127 = 0;
                v128 = v126[4];
                v129 = 1;
                v130 = 1 << *(v128 + 169);
                v131 = 1.0 / v130;
                v132 = v131 * (v130 + ~*(v128 + 172));
                v133 = v131 * *(v128 + 176) + v131;
                *__p = v131 * *(v128 + 176);
                __p[1] = *&v132;
                __p[2] = *&v133;
                *&__p[3] = v132 + v131;
                v134 = &v304;
                v135 = __p;
                do
                {
                  v136 = v129;
                  v137 = *v135;
                  v138 = *v134;
                  *&v305.i64[v127] = fmax(*&v305.i64[v127], *&__p[v127 + 2]);
                  *v134 = fmin(v137, v138);
                  v135 = &__p[1];
                  v134 = &v304.i64[1];
                  v127 = 1;
                  v129 = 0;
                }

                while ((v136 & 1) != 0);
                if (*(v128 + 169) >= 0xFu)
                {
                  md::MultiRectRegion::addRect(&v295, __p);
                }

                v139 = v126[1];
                if (v139)
                {
                  do
                  {
                    v140 = v139;
                    v139 = *v139;
                  }

                  while (v139);
                }

                else
                {
                  do
                  {
                    v140 = v126[2];
                    v250 = *v140 == v126;
                    v126 = v140;
                  }

                  while (!v250);
                }

                v126 = v140;
              }

              while (v140 != v125);
            }
          }

          break;
        }

        v122 += 16;
      }

      v280 = [[VKPolylineOverlayRenderRegion alloc] initForVisibleRect:&v304 snappingRegion:&v295 routeLineDatas:&v293];
      v141 = *v269;
      v142 = *([v141 alphaAtlas] + 16);

      v143 = md::LayoutContext::get<md::SettingsContext>(*(v281 + 1));
      v144 = *v143;
      v145 = v143[1];
      while (v144 != v145)
      {
        if (*v144 == 21)
        {
          if (v144 != v145 && *(v144 + 8))
          {
            v146 = +[VKDebugSettings sharedSettings];
            v147 = [v146 enableDaVinciStyleRoute];

            goto LABEL_179;
          }

          break;
        }

        v144 += 16;
      }

      v147 = 0;
LABEL_179:
      v148 = *v270;
      std::unordered_map<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::shared_ptr<md::FlyoverDsmTileData>>>>::unordered_map(v291, (v270 + 1));
      std::set<unsigned char,std::greater<unsigned char>,std::allocator<unsigned char>>::set[abi:nn200100](v292, v270 + 6);
      if (!v148)
      {
        v151 = 0;
        goto LABEL_185;
      }

      v150 = v148[24];
      if (v150 == 1)
      {
        v264 = [*(*v282 + 160) overlay];
        v263 = [v264 composedRoute];
        if (![v263 elevationModel])
        {
          v151 = 1;
LABEL_183:

          goto LABEL_185;
        }
      }

      v151 = (*(*v148 + 24))(v148);
      if (v150)
      {
        goto LABEL_183;
      }

LABEL_185:
      if (*(v271 + 36) == 1)
      {
        v152 = *(v271 + 8);
      }

      else
      {
        v152 = 0;
      }

      if (v151)
      {
        v153 = v148;
      }

      else
      {
        v153 = 0;
      }

      LODWORD(v149) = v142;
      v154 = [*(*v282 + 160) buildRouteLine:v280 matchToRoads:v285 shouldGenerateSnapPath:v285 & (v261 ^ 1) viewUnitsPerPoint:v278 force:v147 boundsInflation:v152 isGradientTraffic:v94 currentLegIndex:v149 elevationSource:v153 elevationSourceContext:v291];
      v155 = gdc::Context::context<md::RouteOverlayContext>(*(v281 + 1));
      v156 = *(v155 + 176);
      v157 = fmaxf(v272[770] + v272[769], 1.0);
      v158 = *(*v282 + 160);
      v288[0] = MEMORY[0x1E69E9820];
      v288[1] = 3221225472;
      v288[2] = ___ZN2md16RouteRenderLayer21updateRouteLineMeshesERKNS_13LayoutContextERKNSt3__16vectorINS4_10shared_ptrINS_16RouteLineOverlayEEENS4_9allocatorIS8_EEEEb_block_invoke;
      v288[3] = &__block_descriptor_61_e90_v16__0_fast_shared_ptr_md::RouteLineSection__mdm::allocator_____fast_shared_ptr_control__8l;
      v288[4] = v282;
      v288[5] = v268;
      v288[6] = &v306;
      v290 = v156 == 2;
      v289 = v157;
      [v158 forEachSection:v288];
      v159 = *v282;
      *(*v282 + 208) = HIDWORD(v262) != 0;
      if (v154)
      {
        std::vector<std::unique_ptr<md::RouteLineArrowLayer>>::clear[abi:nn200100]((v159 + 288));
        v160 = *v282;
        v161 = *(*v282 + 296);
        v162 = *(*v282 + 288);
        v163 = *(*v282 + 304) - v162;
        if (v163 > (v161 - v162))
        {
          v164 = (v161 - v162) >> 3;
          __p[4] = v160 + 36;
          if (v161 != v162)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>((v161 - v162) >> 3);
          }

          v165 = 8 * v164;
          __p[0] = 0;
          __p[1] = (8 * v164);
          __p[2] = (8 * v164);
          __p[3] = 0;
          if (v163 >> 3)
          {
            v166 = v160[37] - v162;
            v167 = v165 - v166;
            memcpy((v165 - v166), v162, v166);
            v168 = v160[36];
            v160[36] = v167;
            v160[37] = v165;
            v169 = v160[38];
            v160[38] = 0;
            __p[2] = v168;
            __p[3] = v169;
            __p[1] = v168;
            __p[0] = v168;
          }

          std::__split_buffer<std::unique_ptr<md::RouteLineArrowLayer>>::~__split_buffer(__p);
          v160 = *v282;
        }

        v170 = v160[40];
        v160[40] = 0;
        if (v170)
        {
          (*(*v170 + 8))(v170);
          v160 = *v282;
        }

        v171 = v160[42];
        v160[42] = 0;
        if (v171)
        {
          (*(*v171 + 8))(v171);
          v160 = *v282;
        }

        v172 = v160[41];
        v160[41] = 0;
        if (v172)
        {
          (*(*v172 + 8))(v172);
          v160 = *v282;
        }

        v173 = v160[34];
        v160[34] = 0;
        if (v173)
        {
          (*(*v173 + 8))(v173);
          v160 = *v282;
        }

        v174 = v160[33];
        v160[33] = 0;
        if (v174)
        {
          (*(*v174 + 8))(v174);
          v160 = *v282;
        }

        v175 = v160[20];
        if (v175)
        {
          [v175 bounds];
          v176 = *&__p[3] - *__p;
        }

        else
        {
          v176 = 0.0;
          memset(__p, 0, 48);
        }

        *(*v282 + 168) = 1.0 / v176;
        v177 = *v282;
        v178 = *(*v282 + 504);
        if (v178)
        {
          v179 = *(v178 + 256);
          v180 = *(v178 + 264);
          if (v180)
          {
            atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          gss::QueryableLocker<gss::PropertyID>::QueryableLocker(__p, v179, v180);
          if (v180)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v180);
          }

          md::RouteLineSection::halfWidthAtZoom(__p, fmaxf(v272[770] + v272[768], 1.0));
          v182 = v181;
          if (LOBYTE(__p[4]) == 1)
          {
            (*(*__p[0] + 56))(__p[0]);
          }

          if (__p[3])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](__p[3]);
          }

          if (__p[1])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](__p[1]);
          }

          v183 = (v182 + v182);
          v177 = *v282;
        }

        else
        {
          v183 = 0.0;
        }

        v184 = *(v177 + 160);
        if (((v156 == 2) & v262) == 1)
        {
          memset(__p, 0, 24);
          v186 = v155[25];
          v185 = v155[26];
          v187 = v185 - v186;
          if (v185 != v186)
          {
            if (!((v187 >> 3) >> 61))
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v187 >> 3);
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }
        }

        else
        {
          memset(__p, 0, 24);
        }

        [v184 generateArrowsForManeuverDisplayMode:HIDWORD(v262) routeLineWidth:__p collideTrafficFeatures:v183];
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if ((*v276 & 1) != 0 || (*(gdc::Context::get<md::StyleLogicContext>(*(v281 + 1)) + 22) - 3) <= 1)
        {
          md::RouteRenderLayer::setElevatedRoutelineMatrix(v281, v282);
        }

        else
        {
          v194 = *(*v282 + 160);
          if (v194)
          {
            [v194 bounds];
            v195 = *(&v308 + 1);
            v196 = *&v308;
            v197 = *&v310;
            v198 = *(&v309 + 1);
          }

          else
          {
            v196 = 0.0;
            v195 = 0.0;
            v198 = 0.0;
            v197 = 0.0;
            v309 = 0u;
            v310 = 0u;
            v308 = 0u;
          }

          v307[0] = v196;
          v307[1] = v195;
          v307[2] = v198;
          v307[3] = v197;
          v199 = md::LayoutContext::cameraType(v281);
          v200 = gdc::ToCoordinateSystem(v199);
          v201 = v200;
          if (v200)
          {
            gdc::GlobeTileUtils::boundsFromMercatorRect(v311, v307, 0.0, 0.0);
            geo::OrientedBox<double,3u,double,double>::toMatrix(__p, v311);
          }

          else
          {
            v319 = 0;
            v317 = 0;
            v316 = 0u;
            memset(&__p[1], 0, 48);
            *__p = v198 - v196;
            *&__p[5] = v197 - v195;
            v318 = v198 - v196;
            v320 = v196;
            v321 = v195;
            v322 = xmmword_1B33B0740;
          }

          v202 = 0;
          v203 = *v282;
          do
          {
            *&v203[v202 + 1] = *&__p[v202];
            v202 += 2;
          }

          while (v202 != 16);
          v203[11] = 0;
          v204 = v203[29];
          if (!v204)
          {
            md::GeometryLogic::createUnitTransformConstantData(__p);
          }

          v205 = v203[30];
          if (v205)
          {
            atomic_fetch_add_explicit(&v205->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::GeometryLogic::setTransformConstantDataWithMercatorRect(v204, v307, v201, 0.0, 0.0, 0.0);
          if (v205)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v205);
          }
        }

        v188 = *(*v282 + 160);
        v189 = [v188 overlay];
        v190 = [v189 composedRoute];
        [v188 createMeshIfNecessary:{objc_msgSend(v190, "currentDisplayStep")}];

        v191 = *(*v282 + 400);
        *(*v282 + 400) = 0;
        if (v191)
        {
          v192 = ggl::FragmentedPool<ggl::Debug::ExtendedPipelineSetup>::~FragmentedPool(v191);
          MEMORY[0x1B8C62190](v192, 0x10A0C405CD4001ALL);
        }
      }

      else if (*(*(v275 + 8) + 80) != (v276[4] * v276[5]) && *v276 == 1)
      {
        md::RouteRenderLayer::setElevatedRoutelineMatrix(v281, v282);
      }

      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v292[1]);
      std::__hash_table<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::shared_ptr<md::FlyoverDsmTileData>>>>::__deallocate_node(v291[2]);
      v193 = v291[0];
      v291[0] = 0;
      if (v193)
      {
        operator delete(v193);
      }

      std::__tree<gdc::LayerDataWithWorld>::destroy(v294[0]);
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v296);
LABEL_241:
      v282 += 2;
      if (v282 == v273)
      {
        goto LABEL_261;
      }
    }

    v296 = 0;
    v297 = 0;
    v295 = &v296;
    v99 = v266;
    v100 = v267;
    goto LABEL_130;
  }

LABEL_261:
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v301[0]);
  v206 = *(v275 + 8);
  *(v206 + 48) = 0;
  v207 = *(v281 + 1);
  v208 = gdc::Context::get<md::StyleLogicContext>(v207);
  if (v208)
  {
    v209 = *(v208 + 85) == 3;
  }

  else
  {
    v209 = 0;
  }

  *(v206 + 72) = v209;
  *(v206 + 73) = v261;
  *(v206 + 80) = v260[4] * v260[5];
  v210 = md::LayoutContext::get<md::SceneContext>(v207);
  v212 = *(*v210 + 112);
  v211 = *(*v210 + 120);
  if (v212 != v211)
  {
    while (*v212 != *(*v210 + 282))
    {
      v212 += 56;
      if (v212 == v211)
      {
        goto LABEL_270;
      }
    }

    v211 = v212;
  }

LABEL_270:
  v213 = (v206 + 88);
  if ((v206 + 88) != v211 + 32)
  {
    *(v206 + 120) = *(v211 + 24);
    v214 = *(v211 + 10);
    v215 = *(v206 + 96);
    if (!v215)
    {
      goto LABEL_279;
    }

    for (j = 0; j != v215; ++j)
    {
      *(*v213 + 8 * j) = 0;
    }

    v217 = *(v206 + 104);
    *(v206 + 104) = 0;
    *(v206 + 112) = 0;
    if (v217)
    {
      while (v214)
      {
        v218 = *(v214 + 1);
        *(v217 + 25) = *(v214 + 25);
        v217[1] = v218;
        v219 = *v217;
        std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__node_insert_multi(v213, v217);
        v214 = *v214;
        v217 = v219;
        if (!v219)
        {
          goto LABEL_279;
        }
      }

      do
      {
        v255 = *v217;
        operator delete(v217);
        v217 = v255;
      }

      while (v255);
    }

    else
    {
LABEL_279:
      if (v214)
      {
        std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_multi<geo::QuadTile const&>();
      }
    }
  }

  v220 = *(v281 + 1);
  v221 = **(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v220, 0x8BD499FBD96FBB9ELL)[5] + 32);
  v222 = *(*(*(v275 + 5) + 24) + 8);
  v223 = md::FrameGraph::renderQueueForPass(v222, *(v275 + 108));
  if (v223)
  {
    v224 = *(*(v223 + 16) + 8 * *(v275 + 109));
  }

  else
  {
    v224 = 0;
  }

  v225 = md::FrameGraph::renderQueueForPass(v222, *(v275 + 102));
  if (v225)
  {
    v226 = *(*(v225 + 16) + 8 * *(v275 + 103));
  }

  else
  {
    v226 = 0;
  }

  v227 = md::FrameGraph::renderQueueForPass(v222, *(v275 + 104));
  if (v227)
  {
    v228 = *(*(v227 + 16) + 8 * *(v275 + 105));
  }

  else
  {
    v228 = 0;
  }

  v229 = md::FrameGraph::renderQueueForPass(v222, *(v275 + 106));
  if (v229)
  {
    v230 = *(*(v229 + 16) + 8 * *(v275 + 107));
  }

  else
  {
    v230 = 0;
  }

  v231 = md::FrameGraph::renderQueueForPass(v222, *(v275 + 96));
  if (v231)
  {
    v232 = *(*(v231 + 16) + 8 * *(v275 + 97));
  }

  else
  {
    v232 = 0;
  }

  v233 = md::FrameGraph::renderQueueForPass(v222, *(v275 + 98));
  if (v233)
  {
    v234 = *(*(v233 + 16) + 8 * *(v275 + 99));
  }

  else
  {
    v234 = 0.0;
  }

  v235 = md::FrameGraph::renderQueueForPass(v222, *(v275 + 100));
  if (v235)
  {
    v236 = *(*(v235 + 16) + 8 * *(v275 + 101));
  }

  else
  {
    v236 = 0.0;
  }

  __p[0] = v224;
  v237 = 1;
  LOBYTE(__p[1]) = 1;
  __p[2] = v226;
  LOBYTE(__p[3]) = 0;
  __p[4] = v228;
  LOBYTE(__p[5]) = 0;
  __p[6] = v230;
  LOBYTE(v316) = 1;
  *(&v316 + 1) = v232;
  LOBYTE(v317) = 0;
  v318 = v234;
  LOBYTE(v319) = 0;
  v320 = v236;
  LOBYTE(v321) = 0;
  v238 = md::LayoutContext::get<md::SettingsContext>(v220);
  if (v238)
  {
    v239 = *v238;
    v240 = v238[1];
    if (*v238 == v240)
    {
      goto LABEL_299;
    }

    v241 = *v238;
    while (*v241 != 2)
    {
      v241 += 16;
      if (v241 == v240)
      {
        goto LABEL_299;
      }
    }

    if (v241 == v240 || !*(v241 + 8))
    {
LABEL_299:
      if (v239 != v240)
      {
        v242 = *v238;
        while (*v242 != 4)
        {
          v242 += 16;
          if (v242 == v240)
          {
            goto LABEL_303;
          }
        }

        if (v242 != v240 && *(v242 + 8))
        {
          goto LABEL_333;
        }
      }
    }

    else
    {
LABEL_333:
      while (v239 != v240)
      {
        if (*v239 == 23)
        {
          if (v239 == v240)
          {
            break;
          }

          v237 = *(v239 + 8) == 0;
          goto LABEL_304;
        }

        v239 += 16;
      }
    }

LABEL_303:
    v237 = 1;
  }

LABEL_304:
  v243 = *(v275 + 8);
  v244 = *v243;
  v245 = v243[1];
  if (*v243 != v245)
  {
    do
    {
      v257 = v244[1];
      v286 = *v244;
      v287 = v257;
      if (v257)
      {
        atomic_fetch_add_explicit(&v257->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      md::RouteRenderLayer::layoutOverlay(v275, v281, &v286, v221, v230);
      if (v287)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v287);
      }

      v244 += 2;
    }

    while (v244 != v245);
  }

  for (k = 0; k != 14; k += 2)
  {
    v248 = __p[k];
    v249 = *(v275 + 7);
    v250 = v248 == v228 || v248 == v230;
    if (!v250 || (v247 = v249[2]) == 0)
    {
      v247 = *v249;
    }

    result = v248[9];
    v252 = v248[10];
    if (result == v252)
    {
      if (v237 || (__p[k + 1] & 1) == 0 || (*(v275 + 113) & 1) == 0)
      {
        v247 = 0;
      }
    }

    else
    {
      result = ggl::CommandBuffer::sortRenderItems(result, v252);
    }

    v248[4] = v247;
  }

  *(*(v275 + 7) + 16) = 0;
  return result;
}

void sub_1B2AAAA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45)
{
  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a45);
  }

  _Unwind_Resume(a1);
}

void *md::LayoutContext::get<md::NavigationContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x1B8B241A8D896A1DuLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x1B8B241A8D896A1DLL)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>()
{
  v0 = &unk_1EB839000;
  {
    v0 = &unk_1EB839000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)1>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB839000;
    }
  }

  return v0[286];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls19TileProjectionTypeTILNSA_18TileProjectionTypeE1EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29EFD48;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void *gdc::Context::context<md::RouteLineContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x8E4587A431F9C696);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x8E4587A431F9C696)
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

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19TileProjectionTypeTILNS7_18TileProjectionTypeE1EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29EFD48;
  a2[1] = v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileStyleDataKeyHandle>()
{
  v0 = &unk_1EB839000;
  {
    v0 = &unk_1EB839000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileStyleDataKeyHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB839000;
    }
  }

  return v0[283];
}

uint64_t gss::ClientStyleState<gss::PropertyID>::sourceMapDisplayStyle(uint64_t a1)
{
  gss::ClientStyleState<gss::PropertyID>::sourceClientStyleAttributes(v2, a1);
  gss::DisplayStyle::DisplayStyle(&v3, v2);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v2);
  return v3;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls22TileStyleDataKeyHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A40FD0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22TileStyleDataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A40FD0;
  a2[1] = v2;
  return result;
}

void *md::LayoutContext::get<md::SharedResourcesContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xA60DDA5A69582425);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xA60DDA5A69582425)
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

void *std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareStyleConstantDataHandleForMercatorTilesInGlobe>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v3 = (a1 + 8);
  v21 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>((a1 + 8));
  v4 = v3[2];
  if (!v4)
  {
    v5 = **v3;
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v6 == v7)
    {
      goto LABEL_3;
    }

    while (*v6 != 0x22D45F5AAD4BF408)
    {
      v4 = 0;
      v6 += 5;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    if (v6 == v7)
    {
LABEL_3:
      v4 = 0;
    }

    else
    {
      v4 = v6[3];
      v18 = v6[4];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v18);
      }
    }

LABEL_6:
    *(a1 + 24) = v4;
  }

  v8 = *((**v4)(v4) + 8);
  result = md::LayoutContext::get<md::LightingLogicContext>(v8);
  if (result)
  {
    v10 = result;
    v11 = md::LayoutContext::get<md::ElevationContext>(v8);
    for (i = 0; i != 4; ++i)
    {
      _D0 = v10[i + 24];
      __asm { FCVT            H0, D0 }

      v20[i] = _D0;
    }

    v19 = 1.0 / v11[3];
    operator new();
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return result;
}

void sub_1B2AAB3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::PuckRenderLayer::layout(md::PuckRenderLayer *this, const md::LayoutContext *a2)
{
  v4 = md::FrameGraph::renderQueueForPass(*(*(*(this + 5) + 24) + 8), *(this + 56));
  if (v4)
  {
    v5 = *(*(v4 + 16) + 8 * *(this + 57));
  }

  else
  {
    v5 = 0;
  }

  ggl::CommandBuffer::clearRenderItems(v5);
  v6 = *(a2 + 1);
  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0xA60DDA5A69582425);
  if (v7)
  {
    v8 = v7[5];
    if (*(v8 + 8) == 0xA60DDA5A69582425)
    {
      v9 = *(v8 + 32);
      if (v9)
      {
        v10 = gdc::Context::get<md::GeometryContext>(v6);
        if (v10)
        {
          v11 = v10;
          v12 = md::LayoutContext::get<md::CameraContext>(v6);
          if (v12)
          {
            v13 = v12;
            v14 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x9AEE7E062376E454);
            if (v14)
            {
              v15 = v14[5];
              if (*(v15 + 8) == 0x9AEE7E062376E454)
              {
                v16 = *(v15 + 32);
                if (v16)
                {
                  if (v16[208] == 1 && !v16[209])
                  {
                    v17 = md::LayoutContext::get<md::NavigationContext>(v6);
                    if (v17)
                    {
                      v18 = v17;
                      v19 = v17[6];
                      if (v19)
                      {
                        v20 = v19;
                        v21 = [v18[6] puck];

                        if (v21)
                        {
                          v22 = *(this + 6);
                          v23 = *v9;
                          v24 = v18[6];
                          v25 = [v24 puck];
                          v26 = *(*(this + 5) + 104);
                          [v26 contentScale];
                          md::PuckRenderResources::update(v22, v23, v25, *v16, (v16 + 56));

                          v27 = 0;
                          v28 = *(v16 + 296);
                          v29 = *(v16 + 264);
                          v110 = *(v16 + 280);
                          v111 = v28;
                          v30 = *(v16 + 296);
                          v31 = *(v16 + 328);
                          v112 = *(v16 + 312);
                          v113 = v31;
                          v32 = *(v16 + 232);
                          v106 = *(v16 + 216);
                          v107 = v32;
                          v33 = *(v16 + 264);
                          v108 = *(v16 + 248);
                          v109 = v33;
                          v102 = v110;
                          v103 = v30;
                          v34 = *(v16 + 328);
                          v104 = v112;
                          v105 = v34;
                          v35 = *(v16 + 232);
                          v98 = *(v16 + 216);
                          v99 = v35;
                          v36 = *(v16 + 248);
                          v100 = v36;
                          v101 = v29;
                          LODWORD(v36) = *(v16 + 24);
                          v87 = *(v16 + 11);
                          v88 = v36;
                          LODWORD(v36) = *(v16 + 17);
                          do
                          {
                            *(&v90 + v27) = *(&v87 + v27) * *&v36;
                            v27 += 4;
                          }

                          while (v27 != 12);
                          *&v36 = v90;
                          DWORD2(v36) = DWORD2(v90);
                          v83 = v36;
                          v82 = *(v16 + 25);
                          v37 = *(*(this + 6) + 32);
                          v38 = &v98;
                          gm::operator*<double,4,4,4>(&v90, (v13 + 808), &v98);
                          v102 = v94;
                          v103 = v95;
                          v104 = v96;
                          v105 = v97;
                          v98 = v90;
                          v99 = v91;
                          v100 = v92;
                          v101 = v93;
                          v81 = vmulq_n_f32(*(v16 + 72), *(v16 + 16));
                          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v90, *(*(v37 + 136) + 48));
                          **(&v92 + 1) = v81;
                          ggl::BufferMemory::~BufferMemory(&v90);
                          for (i = 0; i != 64; i += 16)
                          {
                            v41 = *v38;
                            v40 = v38[1];
                            v38 += 2;
                            *(&v90 + i) = vcvt_hight_f32_f64(vcvt_f32_f64(v41), v40);
                          }

                          v42 = v83;
                          HIDWORD(v42) = v82;
                          v84 = v42;
                          ggl::DataAccess<ggl::Tile::View>::DataAccess(&v87, **(v37 + 136), 1);
                          v43 = v89;
                          *v89 = v90;
                          v43[1] = v91;
                          v43[2] = v92;
                          v43[3] = v93;
                          ggl::BufferMemory::~BufferMemory(&v87);
                          v44 = *(v37 + 136);
                          *(v44 + 16) = *(*(this + 6) + 240);
                          *(v44 + 24) = 0;
                          v45 = *(v37 + 232);
                          v46 = *(v45 + 24);
                          *(v45 + 16) = 0;
                          *(v45 + 24) = 0;
                          if (v46)
                          {
                            std::__shared_weak_count::__release_shared[abi:nn200100](v46);
                          }

                          v47 = *(*(this + 6) + 48);
                          v48 = &v106;
                          gm::operator*<double,4,4,4>(&v90, (v13 + 808), &v106);
                          v110 = v94;
                          v111 = v95;
                          v112 = v96;
                          v113 = v97;
                          v106 = v90;
                          v107 = v91;
                          v108 = v92;
                          v109 = v93;
                          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v90, *(*(v47 + 136) + 16));
                          **(&v92 + 1) = v84;
                          ggl::BufferMemory::~BufferMemory(&v90);
                          for (j = 0; j != 64; j += 16)
                          {
                            v51 = *v48;
                            v50 = v48[1];
                            v48 += 2;
                            *(&v90 + j) = vcvt_hight_f32_f64(vcvt_f32_f64(v51), v50);
                          }

                          ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v87, **(v47 + 136));
                          v52 = v89;
                          *v89 = v90;
                          v52[1] = v91;
                          v52[2] = v92;
                          v52[3] = v93;
                          ggl::BufferMemory::~BufferMemory(&v87);
                          v53 = *(this + 6);
                          v54 = *(v53 + 160);
                          v55 = *(v53 + 144);
                          v56 = gdc::ToCoordinateSystem(*(v11 + 320));
                          v57 = 2;
                          if (v56)
                          {
                            v57 = 4;
                          }

                          v58 = v11[v57];
                          *(v54 + 8) = v58;
                          *(v55 + 8) = v58;
                          ggl::CommandBuffer::pushRenderItem(v5, v54);
                          ggl::CommandBuffer::pushRenderItem(v5, v55);
                          if (!v16[129])
                          {
                            v59 = *(*(this + 6) + 64);
                            v85 = vmulq_n_f32(*(v16 + 148), *(v16 + 35));
                            ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v90, *(*(v59 + 136) + 48));
                            **(&v92 + 1) = v85;
                            ggl::BufferMemory::~BufferMemory(&v90);
                            v60 = 0;
                            v61 = &v98;
                            do
                            {
                              v63 = *v61;
                              v62 = v61[1];
                              v61 += 2;
                              *(&v90 + v60) = vcvt_hight_f32_f64(vcvt_f32_f64(v63), v62);
                              v60 += 16;
                            }

                            while (v60 != 64);
                            ggl::DataAccess<ggl::Tile::View>::DataAccess(&v87, **(v59 + 136), 1);
                            v64 = v89;
                            *v89 = v90;
                            v64[1] = v91;
                            v64[2] = v92;
                            v64[3] = v93;
                            ggl::BufferMemory::~BufferMemory(&v87);
                            v65 = *(v59 + 136);
                            *(v65 + 16) = *(*(this + 6) + 240);
                            *(v65 + 24) = 0;
                            v66 = *(v59 + 232);
                            v67 = *(v66 + 24);
                            *(v66 + 16) = 0;
                            *(v66 + 24) = 0;
                            if (v67)
                            {
                              std::__shared_weak_count::__release_shared[abi:nn200100](v67);
                            }

                            v68 = 0;
                            v69 = *(v16 + 43);
                            v87 = *(v16 + 164);
                            v88 = v69;
                            v70 = *(v16 + 36);
                            do
                            {
                              *(&v90 + v68) = *(&v87 + v68) * v70;
                              v68 += 4;
                            }

                            while (v68 != 12);
                            *&v71 = v90;
                            DWORD2(v71) = DWORD2(v90);
                            HIDWORD(v71) = *(v16 + 44);
                            v86 = v71;
                            v72 = *(*(this + 6) + 80);
                            ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v90, *(*(v72 + 136) + 16));
                            **(&v92 + 1) = v86;
                            ggl::BufferMemory::~BufferMemory(&v90);
                            v73 = 0;
                            v74 = &v106;
                            do
                            {
                              v76 = *v74;
                              v75 = v74[1];
                              v74 += 2;
                              *(&v90 + v73) = vcvt_hight_f32_f64(vcvt_f32_f64(v76), v75);
                              v73 += 16;
                            }

                            while (v73 != 64);
                            ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v87, **(v72 + 136));
                            v77 = v89;
                            *v89 = v90;
                            v77[1] = v91;
                            v77[2] = v92;
                            v77[3] = v93;
                            ggl::BufferMemory::~BufferMemory(&v87);
                            v78 = *(this + 6);
                            v79 = *(v78 + 192);
                            v80 = *(v78 + 176);
                            *(v79 + 8) = v58;
                            *(v80 + 8) = v58;
                            ggl::CommandBuffer::pushRenderItem(v5, v79);
                            ggl::CommandBuffer::pushRenderItem(v5, v80);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t md::LabelRenderLayer::layout(uint64_t this, const md::LayoutContext *a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if ((*(this + 269) & 1) == 0)
  {
    v2 = this;
    if (*(this + 268) == 1)
    {
      v4 = *(a2 + 1);
      v5 = gdc::Context::context<md::LabelsContext>(v4);
      v6 = *(v2 + 48);
      if (v5[2] != v6)
      {
        v7 = v5;
        std::__hash_table<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,geo::allocator_adapter<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,mdm::zone_mallocator>>::clear(v2 + 88);
        std::__list_imp<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,mdm::zone_mallocator>>::clear((v2 + 56));
        *(v2 + 156) = 0;
        *(v2 + 148) = 0;
        v6 = v7[2];
        *(v2 + 48) = v6;
        v4 = *(a2 + 1);
      }

      *(v6 + 3378) = *(*(a2 + 3) + 1);
      v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v4, 0xC97B9E962ADF4AD4);
      if (v8 && (v61 = v8[5], *(v61 + 8) == 0xC97B9E962ADF4AD4))
      {
        v9 = *(v61 + 32);
      }

      else
      {
        v9 = 0;
      }

      v10 = *v9;
      v11 = v9[1];
      if (*v9 == v11)
      {
        goto LABEL_8;
      }

      v59 = *v9;
      while (*v59 != 23)
      {
        v12 = 0;
        v59 += 16;
        if (v59 == v11)
        {
          goto LABEL_9;
        }
      }

      if (v59 == v11)
      {
LABEL_8:
        v12 = 0;
      }

      else
      {
        v12 = *(v59 + 8) != 0;
      }

LABEL_9:
      if (*(v6 + 3024) != v12)
      {
        v67[0] = &unk_1F2A11BB8;
        v67[1] = v6;
        LOBYTE(v68) = v12;
        v69 = v67;
        memset(&v68 + 1, 0, 7);
        md::LabelManager::queueCommand(v6, 17, 1, v67);
        std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v67);
        v10 = *v9;
        v11 = v9[1];
      }

      if (v10 != v11)
      {
        v58 = v10;
        while (*v58 != 25)
        {
          LODWORD(v13) = 0;
          v58 += 16;
          if (v58 == v11)
          {
            goto LABEL_13;
          }
        }

        if (v58 != v11)
        {
          v13 = *(v58 + 8);
          if (!v13)
          {
            goto LABEL_13;
          }

          v60 = v10;
          while (*v60 != 28)
          {
            LODWORD(v13) = 0;
            v60 += 16;
            if (v60 == v11)
            {
              goto LABEL_13;
            }
          }

          if (v60 != v11)
          {
            LODWORD(v13) = *(v60 + 8) != 0;
LABEL_13:
            v14 = *(v2 + 271);
            v15 = v14 != v13;
            if (v14 != v13)
            {
              *(v2 + 271) = v13;
            }

            if (v13)
            {
              if (v10 == v11)
              {
                goto LABEL_17;
              }

              while (*v10 != 39)
              {
                LOBYTE(v13) = 0;
                v10 += 16;
                if (v10 == v11)
                {
                  goto LABEL_18;
                }
              }

              if (v10 == v11 || !*(v10 + 8))
              {
LABEL_17:
                LOBYTE(v13) = 0;
              }

              else
              {
                LOBYTE(v13) = *(*(v2 + 48) + 3726) ^ 1;
              }
            }

LABEL_18:
            if (*(v2 + 272) != (v13 & 1))
            {
              *(v2 + 272) = v13 & 1;
              v15 = 1;
            }

            v16 = *(v2 + 276);
            if (v16 != md::LayoutContext::worldType(a2))
            {
              v17 = md::LayoutContext::worldType(a2);
              *(v2 + 276) = v17;
              *(v2 + 277) = v17 == 5;
              std::__hash_table<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,geo::allocator_adapter<std::__hash_value_type<geo::QuadTile,md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::MapEntry>,mdm::zone_mallocator>>::clear(v2 + 88);
              std::__list_imp<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,mdm::zone_mallocator>>::clear((v2 + 56));
              *(v2 + 156) = 0;
              *(v2 + 148) = 0;
              v15 = 1;
            }

            v18 = *v9;
            v19 = v9[1];
            if (*v9 == v19)
            {
              goto LABEL_28;
            }

            v20 = *v9;
            while (*v20)
            {
              v20 += 16;
              if (v20 == v19)
              {
                goto LABEL_28;
              }
            }

            if (v20 == v19)
            {
LABEL_28:
              v21 = 0;
            }

            else
            {
              v21 = *(v20 + 8) != 0;
            }

            if (*(v2 + 273) != v21)
            {
              *(v2 + 273) = v21;
              v15 = 1;
            }

            if (v18 == v19)
            {
              goto LABEL_32;
            }

            v57 = v18;
            while (*v57 != 34)
            {
              v22 = 0;
              v57 += 16;
              if (v57 == v19)
              {
                goto LABEL_33;
              }
            }

            if (v57 == v19)
            {
LABEL_32:
              v22 = 0;
            }

            else
            {
              v22 = *(v57 + 8) != 0;
            }

LABEL_33:
            if (*(v2 + 274) != v22)
            {
              *(v2 + 274) = v22;
              v15 = 1;
            }

            if (v18 == v19)
            {
              goto LABEL_36;
            }

            while (*v18 != 33)
            {
              v23 = 0;
              v18 += 16;
              if (v18 == v19)
              {
                goto LABEL_37;
              }
            }

            if (v18 == v19)
            {
LABEL_36:
              v23 = 0;
            }

            else
            {
              v23 = *(v18 + 8) != 0;
            }

LABEL_37:
            if (*(v2 + 275) != v23)
            {
              *(v2 + 275) = v23;
              v15 = 1;
            }

            ++*(v2 + 264);
            v24 = *(a2 + 1);
            v25 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v24, 0x99BED48DEFBBD82BLL);
            if (v25 && (v62 = v25[5], *(v62 + 8) == 0x99BED48DEFBBD82BLL))
            {
              v26 = *(v62 + 32);
            }

            else
            {
              v26 = 0;
            }

            v27 = **(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v24, 0x8BD499FBD96FBB9ELL)[5] + 32);
            if (*(v2 + 270) == v27)
            {
              if (!v15)
              {
                goto LABEL_46;
              }
            }

            else
            {
              *(v2 + 270) = v27;
            }

            md::LabelRenderLayer::updateMapDataUsed(v2);
LABEL_46:
            std::vector<md::TileSelectionTileSetType>::vector[abi:nn200100](v67, (*v26 + 232));
            v28 = v67[0];
            v29 = v67[1];
            if (v67[0] != v67[1])
            {
              do
              {
                v30 = *v28;
                v31 = *v26;
                v33 = *(*v26 + 112);
                v32 = *(*v26 + 120);
                v34 = v32;
                if (v33 == v32)
                {
                  goto LABEL_53;
                }

                v34 = *(*v26 + 112);
                do
                {
                  if (*v34 == v30)
                  {
                    goto LABEL_53;
                  }

                  v34 += 56;
                }

                while (v34 != v32);
                v34 = *(*v26 + 120);
                while (1)
                {
LABEL_53:
                  if (v33 == v32)
                  {
                    goto LABEL_56;
                  }

                  if (*v33 == v30)
                  {
                    break;
                  }

                  v33 += 56;
                }

                v32 = v33;
LABEL_56:
                v36 = *(v31 + 136);
                v35 = *(v31 + 144);
                while (1)
                {
                  if (v36 == v35)
                  {
                    goto LABEL_61;
                  }

                  if (*v36 == v30)
                  {
                    break;
                  }

                  v36 += 56;
                }

                v35 = v36;
LABEL_61:
                v37 = *(v32 + 13);
                v38 = *(v35 + 13);
                v39 = *(v31 + 280);
                v40 = (v31 + 256);
                if (v39)
                {
                  v41 = v40;
                }

                else
                {
                  v41 = 0;
                }

                md::LabelRenderLayer::processLayerDataCollector(v2, v37, v34 + 2, v41, *v28);
                md::LabelRenderLayer::processLayerDataCollector(v2, v38, 0, 0, v30);
                ++v28;
              }

              while (v28 != v29);
              v28 = v67[0];
            }

            if (v28)
            {
              v67[1] = v28;
              operator delete(v28);
            }

            v42 = *(v2 + 240);
            if (!v42)
            {
LABEL_90:
              std::__hash_table<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::unique_ptr<md::LabelMapTileSourceData>>>>::clear(v2 + 224);
              v56 = objc_autoreleasePoolPush();
              md::LabelManager::layout(*(v2 + 48), a2, v2 + 168);
            }

            v43 = (v2 + 56);
            while (1)
            {
              v44 = v42[6];
              v66 = 0uLL;
              v45 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>((v2 + 88), v44);
              if (!v45)
              {
                goto LABEL_137;
              }

              v46 = v45;
              v47 = *(v45 + 8);
              if (v47 == v43)
              {
                if (v45[72] == 1)
                {
                  v52 = 0;
                  v53 = 0;
                  ++*(v2 + 148);
                  goto LABEL_78;
                }

                v67[0] = 0;
                v63 = *(v45 + 7);
                if (!v63)
                {
                  goto LABEL_137;
                }

                v64 = std::__shared_weak_count::lock(v63);
                v67[1] = v64;
                if (!v64)
                {
                  goto LABEL_137;
                }

                v52 = v64;
                v53 = *(v46 + 6);
                v67[0] = v53;
                if (!v53)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v64);
LABEL_137:
                  ++*(v2 + 152);
                  v65 = *(v2 + 276);
                  if (v65 > 3)
                  {
                    if (v65 == 4)
                    {
                      std::allocate_shared[abi:nn200100]<md::StandardGlobeLabelMapTile,std::allocator<md::StandardGlobeLabelMapTile>,geo::QuadTile const&,0>();
                    }

                    if (v65 == 5)
                    {
                      std::allocate_shared[abi:nn200100]<md::FlyoverLabelMapTile,std::allocator<md::FlyoverLabelMapTile>,geo::QuadTile const&,0>();
                    }
                  }

                  else if (!*(v2 + 276) || v65 == 3)
                  {
                    std::allocate_shared[abi:nn200100]<md::StandardLabelMapTile,std::allocator<md::StandardLabelMapTile>,geo::QuadTile const&,0>();
                  }

                  md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::insert(v43, v44, &v66);
                  v54 = 0;
                  v52 = 0;
                  v53 = 0;
                  goto LABEL_79;
                }

                std::list<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,geo::allocator_adapter<md::LabelCachingStore<geo::QuadTile,std::shared_ptr<md::StandardLabelMapTile>,std::weak_ptr<md::StandardLabelMapTile>,geo::QuadTileHash,std::equal_to<geo::QuadTile>>::ListEntry,mdm::zone_mallocator>>::emplace_front<geo::QuadTile const&,std::shared_ptr<md::StandardLabelMapTile>&>(v43, v44, v67);
                *(v46 + 8) = *(v2 + 64);
                ++*(v2 + 148);
              }

              else
              {
                v48 = *(v2 + 64);
                if (v48 != v47)
                {
                  v49 = *(v47 + 1);
                  if (v49 != v48)
                  {
                    v50 = *v47;
                    *(v50 + 1) = v49;
                    *v49 = v50;
                    v51 = *v48;
                    *(v51 + 1) = v47;
                    *v47 = v51;
                    *v48 = v47;
                    *(v47 + 1) = v48;
                  }
                }

                ++*(v2 + 148);
                v53 = *(v47 + 6);
                v52 = *(v47 + 7);
                if (!v52)
                {
                  goto LABEL_78;
                }

                atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_78:
              *&v66 = v53;
              *(&v66 + 1) = v52;
              v54 = 1;
              v28 = v52;
LABEL_79:
              if (v53)
              {
                v55 = *(v44 + 27);
                if (v55)
                {
                  atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
                }

                v69 = 0;
                operator new();
              }

              if (!v28)
              {
                v54 = 0;
              }

              if (v54 == 1)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v28);
                v52 = *(&v66 + 1);
              }

              if (v52)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v52);
              }

              v42 = *v42;
              if (!v42)
              {
                goto LABEL_90;
              }
            }
          }
        }
      }

      LODWORD(v13) = 0;
      goto LABEL_13;
    }
  }

  return this;
}

void sub_1B2AAC8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::mutex *a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, std::__shared_weak_count *a25)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void *gdc::Context::context<md::LabelsContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0xA588623CD4116DAELL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0xA588623CD4116DAELL)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>()
{
  v0 = &unk_1EB839000;
  {
    v0 = &unk_1EB839000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB839000;
    }
  }

  return v0[287];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls19TileProjectionTypeTILNSA_18TileProjectionTypeE0EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29EFC50;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19TileProjectionTypeTILNS7_18TileProjectionTypeE0EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29EFC50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassToCommandBuffers>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassToCommandBuffers>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[462];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20PassToCommandBuffersEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A344F0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20PassToCommandBuffersEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A344F0;
  a2[1] = v2;
  return result;
}

BOOL md::LabelRenderLayer::processLayerDataCollector(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, __int16 a5)
{
  gdc::LayerDataCollector::virtualTilesBegin(v64);
  while (1)
  {
    gdc::LayerDataCollector::virtualTilesEnd(&i, *(a2 + 8));
    v9 = v64[0];
    result = geo::codec::VectorTile::daVinciBuildingColorsArePresent(v64[0], i);
    if (!result)
    {
      return result;
    }

    gdc::VirtualTileIterator::tileKey(&v60, v9);
    v11 = v60;
    if (v60 == 2 || v60 == 255 || v60 == 5)
    {
      if (a3)
      {
        if (!std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__count_unique<geo::QuadTile>(a3, &v60))
        {
          goto LABEL_10;
        }

        v11 = v60;
      }

      v12 = v61;
      v13 = 1 << v61;
      v14 = (v62 % v13 + v13) % v13;
      BYTE1(i) = v61;
      v15 = (v63 % v13 + v13) % (1 << v61);
      HIDWORD(i) = v14;
      v56 = v15;
      LOBYTE(i) = v11;
      v57 = 0;
      v58 = 1;
      v59 = a5;
      if (!std::__hash_table<std::pair<geo::QuadTile,md::TileSelectionTileSetType>,md::QuadTileBySelectionTypeKeyHash,std::equal_to<std::pair<geo::QuadTile,md::TileSelectionTileSetType>>,std::allocator<std::pair<geo::QuadTile,md::TileSelectionTileSetType>>>::find<std::pair<geo::QuadTile,md::TileSelectionTileSetType>>((a1 + 304), &i))
      {
        v16 = grl::LayerMetrics::anchor(v64[0]);
        v53 = 0;
        for (i = v16; ; v16 = i)
        {
          v17 = grl::LayerMetrics::anchor(v64[1]);
          if (!gdc::DataKeyIterator::operator!=(v16, v17))
          {
            BYTE1(i) = v12;
            HIDWORD(i) = v14;
            v56 = v15;
            LOBYTE(i) = v11;
            v57 = 0;
            v58 = 1;
            v59 = a5;
            std::__hash_table<std::pair<geo::QuadTile,md::TileSelectionTileSetType>,md::QuadTileBySelectionTypeKeyHash,std::equal_to<std::pair<geo::QuadTile,md::TileSelectionTileSetType>>,std::allocator<std::pair<geo::QuadTile,md::TileSelectionTileSetType>>>::__emplace_unique_key_args<std::pair<geo::QuadTile,md::TileSelectionTileSetType>,std::pair<geo::QuadTile,md::TileSelectionTileSetType>>((a1 + 304), &i);
            break;
          }

          v18 = v16[4];
          if (!a4 || (v19 = 1.0 / (1 << v61), v20.i64[0] = v63, v20.i64[1] = (1 << v61) + ~v62, v21 = vdupq_lane_s64(*&v19, 0), v22 = vmulq_n_f64(vcvtq_f64_s64(v20), v19), (md::TileExclusionArea::tileIsExcluded(*a4, a4[1], v18, v61, v22, vaddq_f64(v22, v21)) & 1) == 0))
          {
            v23 = *(a1 + 280);
            v24 = *(a1 + 288);
            while (1)
            {
              if (v23 == v24)
              {
                goto LABEL_22;
              }

              v25 = *v23;
              if (v18 < v25)
              {
                goto LABEL_22;
              }

              if (v25 >= v18)
              {
                break;
              }

              ++v23;
            }

            if (v23 != v24)
            {
              Data = gdc::LayerDataCollector::getData(*(a2 + 24), *(a2 + 32), v18, *(i + 18));
              if (*Data)
              {
                v51 = Data;
                if (!v53)
                {
                  v27 = std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::find<geo::QuadTile>((a1 + 224), &v60);
                  if (!v27)
                  {
                    operator new();
                  }

                  v53 = *(v27 + 6);
                }

                if (v18 > 21)
                {
                  if (v18 < 24)
                  {
                    goto LABEL_36;
                  }

                  if (v18 <= 25)
                  {
                    if (v18 != 24)
                    {
                      v45 = *(*v51 + 728);
                      v46 = *(*v51 + 736);
                      v47 = (v53 + 80);
LABEL_86:
                      std::shared_ptr<md::LabelTile>::operator=[abi:nn200100](v47, v45, v46);
                      goto LABEL_22;
                    }

LABEL_45:
                    v33 = *(*v51 + 728);
                    v34 = *(*v51 + 736);
                    if (v34)
                    {
                      atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
                    }

                    v30 = *(v53 + 72);
                    *(v53 + 64) = v33;
                    *(v53 + 72) = v34;
                    if (v30)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_22;
                  }

                  if (v18 > 65)
                  {
                    if (v18 == 73 || v18 == 80)
                    {
                      v37 = *(*v51 + 728);
                      v38 = *(*v51 + 736);
                      if (v38)
                      {
                        atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
                      }

                      v30 = *(v53 + 152);
                      *(v53 + 144) = v37;
                      *(v53 + 152) = v38;
                      if (v30)
                      {
LABEL_39:
                        std::__shared_weak_count::__release_shared[abi:nn200100](v30);
                        goto LABEL_22;
                      }

                      goto LABEL_22;
                    }

                    if (v18 == 66)
                    {
                      v45 = *(*v51 + 728);
                      v46 = *(*v51 + 736);
                      v47 = (v53 + 128);
                      goto LABEL_86;
                    }
                  }

                  else
                  {
                    if (v18 == 26)
                    {
                      v35 = *(*v51 + 728);
                      v36 = *(*v51 + 736);
                      if (v36)
                      {
                        atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
                      }

                      v30 = *(v53 + 104);
                      *(v53 + 96) = v35;
                      *(v53 + 104) = v36;
                      if (v30)
                      {
                        goto LABEL_39;
                      }

                      goto LABEL_22;
                    }

                    if (v18 == 27)
                    {
                      v39 = *(*v51 + 728);
                      v40 = *(*v51 + 736);
                      if (v40)
                      {
                        atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
                      }

                      v30 = *(v53 + 200);
                      *(v53 + 192) = v39;
                      *(v53 + 200) = v40;
                      if (v30)
                      {
                        goto LABEL_39;
                      }

                      goto LABEL_22;
                    }
                  }
                }

                else
                {
                  if (v18 > 18)
                  {
                    if (v18 != 19)
                    {
                      if (v18 == 21)
                      {
LABEL_31:
                        v28 = *(*v51 + 728);
                        v29 = *(*v51 + 736);
                        if (v29)
                        {
                          atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
                        }

                        v30 = *(v53 + 40);
                        *(v53 + 32) = v28;
                        *(v53 + 40) = v29;
                        if (v30)
                        {
                          goto LABEL_39;
                        }

                        goto LABEL_22;
                      }

                      goto LABEL_45;
                    }

LABEL_36:
                    v31 = *(*v51 + 728);
                    v32 = *(*v51 + 736);
                    if (v32)
                    {
                      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
                    }

                    v30 = *(v53 + 56);
                    *(v53 + 48) = v31;
                    *(v53 + 56) = v32;
                    if (v30)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_22;
                  }

                  switch(v18)
                  {
                    case 18:
                      goto LABEL_31;
                    case 12:
                      v45 = *(*v51 + 832);
                      v46 = *(*v51 + 840);
                      v47 = (v53 + 112);
                      goto LABEL_86;
                    case 2:
                      v52 = *v51;
                      std::shared_ptr<md::LabelTile>::operator=[abi:nn200100]((v53 + 272), *(v52 + 864), *(v52 + 872));
                      *(v53 + 232) = v52 + 880;
                      v48 = *(v52 + 168);
                      *(v53 + 249) = *(v52 + 177);
                      *(v53 + 240) = v48;
                      *(v53 + 224) = *(v53 + 272) != 0;
                      goto LABEL_22;
                  }
                }

                if ((v18 & 0xFFFE) == 0x34)
                {
                  v49 = *v51;
                  v50 = *(*v51 + 168);
                  *(v53 + 249) = *(*v51 + 177);
                  *(v53 + 240) = v50;
                  *(v53 + 232) = v49 + 808;
                  *(v53 + 224) = 1;
                  goto LABEL_22;
                }

                if (v18 > 73)
                {
                  if (v18 != 77)
                  {
                    if (v18 == 74)
                    {
                      v41 = *(*v51 + 728);
                      v42 = *(*v51 + 736);
                      if (v42)
                      {
                        atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
                      }

                      v30 = *(v53 + 184);
                      *(v53 + 176) = v41;
                      *(v53 + 184) = v42;
                      if (v30)
                      {
                        goto LABEL_39;
                      }
                    }

                    goto LABEL_22;
                  }

LABEL_77:
                  v44 = *v51;
                  v43 = v51[1];
                  if (v43)
                  {
                    atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
                  }

                  v30 = *(v53 + 216);
                  *(v53 + 208) = v44;
                  *(v53 + 216) = v43;
                  if (v30)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_22;
                }

                if (v18 == 43)
                {
                  goto LABEL_77;
                }

                if (v18 == 69)
                {
                  v45 = *(*v51 + 728);
                  v46 = *(*v51 + 736);
                  v47 = (v53 + 160);
                  goto LABEL_86;
                }
              }
            }
          }

LABEL_22:
          gdc::DataKeyIterator::operator++(&i);
        }
      }
    }

LABEL_10:
    gdc::VirtualTileIterator::operator++(v64);
  }
}