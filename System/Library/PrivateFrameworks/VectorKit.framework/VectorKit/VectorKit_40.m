double geo::Pool<ggl::CommandBuffer>::construct<unsigned char &,char const*&>(uint64_t a1, char *a2, const char **a3)
{
  v6 = *(a1 + 40);
  if (!v6)
  {
    v7 = malloc_type_malloc(360 * *(a1 + 24), 0x10F204007069000uLL);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v7);
    v6 = *(a1 + 40);
    v8 = &v7[45 * *(a1 + 24) - 45];
    if (v8 >= v7)
    {
      do
      {
        *v8 = v6;
        v6 = v8;
        v8 -= 45;
      }

      while (v8 >= v7);
      v6 = (v8 + 45);
    }

    *(a1 + 40) = v6;
  }

  *(a1 + 40) = *v6;
  v9 = *a2;
  v10 = *a3;

  return ggl::CommandBuffer::CommandBuffer(v6, v9, v10);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::UpdateProcessedStatusRenderables>,std::allocator<ecs2::ForwardToExecute<md::ita::UpdateProcessedStatusRenderables>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::UpdateProcessedStatusRenderables::operator()(a1 + 8, a2, a2, a2);
  *v2 = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FinishedProcessing>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessing>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FinishedProcessing>();
    *algn_1EB83D1C8 = 0xCAB567F400206020;
    qword_1EB83D1D0 = "md::ls::FinishedProcessing]";
    qword_1EB83D1D8 = 26;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderableAlbedoTexture>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableAlbedoTexture>();
    *algn_1EB83C9E8 = 0x28D6AB85FDB5A2BLL;
    qword_1EB83C9F0 = "md::ls::RenderableAlbedoTexture]";
    qword_1EB83C9F8 = 31;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableAlbedoTexture>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessing>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingProcessing>();
    unk_1EB83D270 = 0x75DBD6381F1903FFLL;
    qword_1EB83D278 = "md::ls::PendingProcessing]";
    qword_1EB83D280 = 25;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>(void)::metadata >= 0x200)
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

uint64_t std::__function::__value_func<void ()(md::ls::FinishedProcessing const&,md::ls::PendingProcessing const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ecs2::Runtime::_entities<std::function<void ()(md::ls::PassToCommandBuffers &)>,md::ls::PassToCommandBuffers &>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PassToCommandBuffers>(*(a1 + 8));
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  if (v5 != v6)
  {
    v7 = v4;
    v8 = _ZTWN4ecs27Runtime11_localStateE();
    v9 = _ZTWN4ecs27Runtime11_stackIndexE();
    v10 = 0;
    while (1)
    {
      v11 = *(*(v7 + 56) + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8));
      *(v8 + 104 * *v9 + 24) = *v5;
      v12 = *(a2 + 24);
      if (!v12)
      {
        break;
      }

      (*(*v12 + 48))(v12, v11 + 8 * (v10++ & 0x3F));
      if (++v5 == v6)
      {
        if (!v10)
        {
          goto LABEL_8;
        }

        v3 = *(v3 + 8);
        {
LABEL_7:
          *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassToCommandBuffers>(void)::metadata) = *(v3 + 4096);
          goto LABEL_8;
        }

LABEL_13:
        {
          ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassToCommandBuffers>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassToCommandBuffers>();
          unk_1EB83CF20 = 0xA7E255916A50AFB1;
          qword_1EB83CF28 = "md::ls::PassToCommandBuffers]";
          qword_1EB83CF30 = 28;
        }

        goto LABEL_7;
      }
    }

    std::__throw_bad_function_call[abi:nn200100]();
    goto LABEL_13;
  }

  v8 = _ZTWN4ecs27Runtime11_localStateE();
  v9 = _ZTWN4ecs27Runtime11_stackIndexE();
  LODWORD(v10) = 0;
LABEL_8:
  *(v8 + 104 * *v9 + 24) = -65536;
  v13 = v8 + 104 * *v9;
  v14 = *(v13 + 92);
  *(v13 + 92) = v14 + 1;
  *(v13 + 4 * v14 + 28) = v10;
  v15 = v8 + 104 * *v9;
  v17 = *(v15 + 92);
  v16 = (v15 + 92);
  if (v17 >= 0x10)
  {
    *v16 = 0;
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void geo::Pool<ggl::RenderQueue>::construct<unsigned long &>(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    v5 = malloc_type_malloc(312 * *(a1 + 24), 0x10B2040CAC010F5uLL);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v5);
    v4 = *(a1 + 40);
    v6 = &v5[39 * *(a1 + 24) - 39];
    if (v6 >= v5)
    {
      do
      {
        *v6 = v4;
        v4 = v6;
        v6 -= 39;
      }

      while (v6 >= v5);
      v4 = (v6 + 39);
    }

    *(a1 + 40) = v4;
  }

  *(a1 + 40) = *v4;
  v7 = *a2;

  ggl::RenderQueue::RenderQueue(v4, v7);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FinishedProcessingShadow>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>(void)::metadata >= 0x200)
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

uint64_t geo::Pool<md::RenderQueueBase>::allocateSlab(uint64_t a1)
{
  v2 = malloc_type_malloc(40 * *(a1 + 24), 0xA2040546F02A0uLL);
  result = std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v2);
  v4 = *(a1 + 40);
  v5 = &v2[40 * *(a1 + 24) - 40];
  if (v5 >= v2)
  {
    do
    {
      v6 = v5;
      *v5 = v4;
      v5 -= 40;
      v4 = v6;
    }

    while (v5 >= v2);
    v4 = v5 + 40;
  }

  *(a1 + 40) = v4;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingShadow>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FinishedProcessingShadow>();
    unk_1EB83C7B0 = 0x343B7A672BA2F664;
    qword_1EB83C7B8 = "md::ls::FinishedProcessingShadow]";
    qword_1EB83C7C0 = 32;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessingShadow>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingProcessingShadow>();
    *algn_1EB83CA08 = 0xEC85A518158AB507;
    qword_1EB83CA10 = "md::ls::PendingProcessingShadow]";
    qword_1EB83CA18 = 31;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>(void)::metadata >= 0x200)
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

void *md::ita::CollectFlyoverMeshRenderables::operator()(uint64_t **a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (!v2)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x22D45F5AAD4BF408)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v2 = 0;
    }

    else
    {
      v2 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[1] = v2;
  }

  v7 = (**v2)(v2);
  v22 = md::LayoutContext::get<md::MeshRenderableContext>(*(v7 + 8));
  v8 = a1[2];
  if (!v8)
  {
    v9 = **a1;
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v10 == v11)
    {
      goto LABEL_14;
    }

    while (*v10 != 0x41D4E9297E100630)
    {
      v10 += 5;
      if (v10 == v11)
      {
        goto LABEL_14;
      }
    }

    if (v10 == v11)
    {
LABEL_14:
      v8 = 0;
    }

    else
    {
      v8 = v10[3];
      v12 = v10[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }
    }

    a1[2] = v8;
  }

  v21 = v8;
  v13 = a1[3];
  if (!v13)
  {
    v14 = **a1;
    v15 = *v14;
    v16 = *(v14 + 8);
    if (v15 == v16)
    {
      goto LABEL_23;
    }

    while (*v15 != 0x348A0B0E758C07C2)
    {
      v15 += 5;
      if (v15 == v16)
      {
        goto LABEL_23;
      }
    }

    if (v15 == v16)
    {
LABEL_23:
      v13 = 0;
    }

    else
    {
      v13 = v15[3];
      v17 = v15[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }
    }

    a1[3] = v13;
  }

  v20 = v13;
  result = md::LayoutContext::get<md::FlyoverCompleteTileDataContext>(*(v7 + 8));
  v19 = result;
  if (result)
  {
    operator new();
  }

  return result;
}

void md::ita::PrepareMainPass::operator()(uint64_t **a1)
{
  v2 = a1[1];
  if (!v2)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0xC94DD89A7B09BE9CLL)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v2 = 0;
    }

    else
    {
      v2 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[1] = v2;
  }

  v7 = (*(*v2 + 8))(v2);
  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  [v7 standardCommandBufferSelector];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  v8 = a1[2];
  if (!v8)
  {
    v9 = **a1;
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v10 == v11)
    {
      goto LABEL_62;
    }

    while (*v10 != 0x22D45F5AAD4BF408)
    {
      v10 += 5;
      if (v10 == v11)
      {
        goto LABEL_62;
      }
    }

    if (v10 == v11)
    {
LABEL_62:
      v8 = 0;
    }

    else
    {
      v8 = v10[3];
      v12 = v10[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }
    }

    a1[2] = v8;
  }

  v13 = *((**v8)(v8) + 8);
  v14 = md::LayoutContext::get<md::LightingLogicContext>(v13);
  if (v14)
  {
    if ((v14[32] & 1) == 0)
    {
      v15 = md::LayoutContext::get<md::CameraContext>(v13);
      gdc::Camera::cameraFrame(v15);
    }

    [v7 standardCommandBufferSelector];
    [v7 standardCommandBufferSelector];
    operator new();
  }
}

void sub_1B2A69D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a19);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a21);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::FinishedProcessingShadow const&,md::ls::PendingProcessingShadow const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ecs2::Runtime::_entities<md::ita::ApplyUsesIdentityMatrix,md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::MeshLayerTypeV const&,md::ls::InstanceDataV const&,md::ls::InView const&>(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(a1);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::RenderablePendingProcessing>(a1);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::MeshLayerTypeV>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceDataV>(a1);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::InView>(a1);
  v45 = v2;
  v46 = v3;
  v47 = v4;
  v48 = v5;
  v7 = 8;
  v8 = v2;
  v9 = &v45;
  v49 = v6;
  do
  {
    if ((*(&v45 + v7))[5] - (*(&v45 + v7))[4] < *(v8 + 40) - *(v8 + 32))
    {
      v8 = *(&v45 + v7);
      v9 = (&v45 + v7);
    }

    v7 += 8;
  }

  while (v7 != 40);
  v10 = *(*v9 + 4);
  v11 = *(*v9 + 5);
  v36 = v10;
  v37 = v11;
  v38 = v2;
  v39 = v3;
  v40 = v4;
  v41 = v5;
  v42 = v6;
  while (v10 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v36, *v10, v10[1]))
  {
    v10 += 2;
    v36 = v10;
  }

  v12 = v36;
  if (v36 == v11)
  {
    v15 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v17 = result;
    v18 = 0;
  }

  else
  {
    v13 = v40;
    v14 = v41;
    v15 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v17 = result;
    v18 = 0;
    v19 = v37;
    do
    {
      v20 = v12[1];
      v21 = v20 & 0x3F;
      v22 = (v20 >> 3) & 0x1FF8;
      v23 = *(*(*(v13 + 8) + v22) + 4 * v21 + 2);
      v24 = *(*(v13 + 56) + ((v23 >> 3) & 0x1FF8));
      v25 = *(*(*(v14 + 8) + v22) + 4 * v21 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      *(v15 + 104 * *v17 + 24) = *v12;
      if (*(v24 + (v23 & 0x3F)) != 3)
      {
        v27 = *(v26 + 16 * (v25 & 0x3F));
        if (*(v27 + 16) <= 1u && *(v27 + 20) == 1)
        {
          v28 = ecs2::ExecutionTaskContext::currentEntity(result);
          v44[0] = &unk_1F2A07330;
          v44[1] = v28 << 32;
          v44[3] = v44;
          v48 = &v45;
          v45 = &unk_1F2A07330;
          v46 = v28 << 32;
          LODWORD(v49) = 0;
          ecs2::Runtime::queueCommand();
          if (v49 != -1)
          {
            (off_1F2A072F8[v49])(&v43, &v45);
          }

          LODWORD(v49) = -1;
          result = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v44);
        }
      }

      ++v18;
      v29 = v12 + 2;
      while (1)
      {
        v12 = v29;
        v36 = v29;
        if (v29 == v19)
        {
          break;
        }

        result = ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v36, *v29, v29[1]);
        v29 = v12 + 2;
        if (result)
        {
          v30 = v12;
          goto LABEL_22;
        }
      }

      v30 = v19;
LABEL_22:
      ;
    }

    while (v30 != v11);
  }

  *(v15 + 104 * *v17 + 24) = -65536;
  v31 = v15 + 104 * *v17;
  v32 = *(v31 + 92);
  *(v31 + 92) = v32 + 1;
  *(v31 + 4 * v32 + 28) = v18;
  v33 = v15 + 104 * *v17;
  v35 = *(v33 + 92);
  v34 = (v33 + 92);
  if (v35 > 0xF)
  {
    *v34 = 0;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::WantsCulledSlices const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::ita::PrepareMainSliceWithCulled::operator()(uint64_t **a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v4 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  LODWORD(v51[0]) = 7;
  v53[0] = v51;
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4 + 1555, 7u);
  v51[0] = &unk_1F29EB880;
  v51[1] = a1;
  v51[2] = v5 + 3;
  v52 = v51;
  v6 = *(a2 + 8);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v6);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupID>(v6);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::WantsCulledSlices>(v6);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)1>>(v6);
  v53[0] = v7;
  v53[1] = v8;
  v11 = 1;
  v12 = v7;
  v13 = v53;
  v53[2] = v9;
  v53[3] = v10;
  do
  {
    if (*(v53[v11] + 40) - *(v53[v11] + 32) < *(v12 + 40) - *(v12 + 32))
    {
      v12 = v53[v11];
      v13 = &v53[v11];
    }

    ++v11;
  }

  while (v11 != 4);
  v15 = *(*v13 + 32);
  v14 = *(*v13 + 40);
  v45 = v15;
  v46 = v14;
  v47 = v7;
  v48 = v8;
  v49 = v9;
  v50 = v10;
  while (v15 != v14 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v15, v15[1]))
  {
    v15 += 2;
    v45 = v15;
  }

  v16 = v45;
  if (v45 == v14)
  {
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
  }

  else
  {
    v17 = v47;
    v18 = v48;
    v19 = v49;
    v20 = v50;
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
    v24 = v46;
    do
    {
      v25 = v16[1];
      v26 = (v25 >> 3) & 0x1FF8;
      v27 = v25 & 0x3F;
      v28 = *(*(*(v17 + 8) + v26) + 4 * v27 + 2);
      v29 = *(*(v17 + 56) + ((v28 >> 3) & 0x1FF8));
      v30 = *(*(*(v18 + 8) + v26) + 4 * v27 + 2);
      v31 = *(*(v18 + 56) + ((v30 >> 3) & 0x1FF8));
      v32 = *(v19 + 32);
      v33 = *(*(*(v19 + 8) + v26) + 4 * v27 + 2);
      v34 = *(v20 + 32);
      v35 = *(*(*(v20 + 8) + v26) + 4 * v27 + 2);
      *(v21 + 104 * *v22 + 24) = *v16;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v29 + 8 * (v28 & 0x3F), v31 + 16 * (v30 & 0x3F), v32 + 4 * v33, v34 + 4 * v35);
      ++v23;
      v36 = v16 + 2;
      while (1)
      {
        v16 = v36;
        v45 = v36;
        if (v36 == v24)
        {
          break;
        }

        v37 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v36, v36[1]);
        v36 = v16 + 2;
        if (v37)
        {
          v38 = v16;
          goto LABEL_17;
        }
      }

      v38 = v24;
LABEL_17:
      ;
    }

    while (v38 != v14);
  }

  *(v21 + 104 * *v22 + 24) = -65536;
  v39 = v21 + 104 * *v22;
  v40 = *(v39 + 92);
  *(v39 + 92) = v40 + 1;
  *(v39 + 4 * v40 + 28) = v23;
  v41 = v21 + 104 * *v22;
  v43 = *(v41 + 92);
  v42 = (v41 + 92);
  if (v43 > 0xF)
  {
    *v42 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::WantsCulledSlices const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&)>::~__value_func[abi:nn200100](v51);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::FinishedProcessingDepthPrePass>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FinishedProcessingDepthPrePass>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FinishedProcessingDepthPrePass>();
    unk_1EB83BCF0 = 0x2B00F9EAE99A5837;
    qword_1EB83BCF8 = "md::ls::FinishedProcessingDepthPrePass]";
    qword_1EB83BD00 = 38;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessingDepthPrePass>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingProcessingDepthPrePass>();
    unk_1EB83BDA0 = 0xB7D4B4C2109DE954;
    qword_1EB83BDA8 = "md::ls::PendingProcessingDepthPrePass]";
    qword_1EB83BDB0 = 37;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>(void)::metadata >= 0x200)
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

uint64_t std::__function::__value_func<void ()(md::ls::FinishedProcessingDepthPrePass const&,md::ls::PendingProcessingDepthPrePass const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ecs2::BasicRegistry<void>::remove<md::ls::FrameGraphBuilder>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphBuilder>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphBuilder>();
    unk_1EB83D2E0 = 0x9792F5BB2E6066F1;
    qword_1EB83D2E8 = "md::ls::FrameGraphBuilder]";
    qword_1EB83D2F0 = 25;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphBuilder>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphBuilder>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v9 = *(v7 + 8 * v6);
    if (v9)
    {
      v10 = a2;
      v11 = (a2 >> 16) & 0x3F;
      v12 = 4 * v11;
      if (*(v9 + 4 * v11) == a2)
      {
        v13 = v5;
        v15 = v5[31];
        v14 = v5[32];
        if (v15 != v14)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v15 + 24), a2);
            v15 += 32;
          }

          while (v15 != v14);
          v9 = *(v13[1] + 8 * v6);
          v10 = a2;
          v12 = 4 * v11;
        }

        v16 = *(v9 + 4 * v11 + 2);
        v17 = ((v13[5] - v13[4]) >> 2) - 1;
        v18 = v13[7];
        v19 = *(v18 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v20 = v17 & 0x3F;
        v21 = v16 & 0x3F;
        v22 = *(v18 + ((v16 >> 3) & 0x1FF8));
        v23 = *(v22 + 8 * v21);
        *(v22 + 8 * v21) = *(v19 + 8 * v20);
        *(v19 + 8 * v20) = v23;
        v24 = v13[1];
        if (v6 < (v13[2] - v24) >> 3)
        {
          v25 = *(v24 + 8 * v6);
          if (v25)
          {
            if (*(v25 + v12) == v10)
            {
              v26 = v13[4];
              v27 = *(v26 + 4 * *(v25 + 4 * v11 + 2) + 2);
              v28 = *(v24 + ((v27 >> 3) & 0x1FF8)) + 4 * (v27 & 0x3F);
              *(v26 + 4 * *(v28 + 2)) = *(v13[5] - 4);
              v29 = v13[5];
              *(*(v13[1] + ((*(v29 - 2) >> 3) & 0x1FF8)) + 4 * (*(v29 - 2) & 0x3FLL) + 2) = *(v28 + 2);
              v13[5] = v29 - 4;
              *v28 = 0xFFFF;
            }
          }
        }
      }
    }
  }

  v8 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v8 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphBuilder>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphBuilder>();
    unk_1EB83D2E0 = 0x9792F5BB2E6066F1;
    qword_1EB83D2E8 = "md::ls::FrameGraphBuilder]";
    qword_1EB83D2F0 = 25;
  }

  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphBuilder>(void)::metadata) = *(a1 + 4096);
}

uint64_t geo::Pool<md::FrameGraphRenderPass>::allocateSlab(uint64_t a1)
{
  v2 = malloc_type_malloc(240 * *(a1 + 24), 0x10320400C302FE2uLL);
  result = std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v2);
  v4 = *(a1 + 40);
  v5 = &v2[240 * *(a1 + 24) - 240];
  if (v5 >= v2)
  {
    do
    {
      v6 = v5;
      *v5 = v4;
      v5 -= 240;
      v4 = v6;
    }

    while (v5 >= v2);
    v4 = v5 + 240;
  }

  *(a1 + 40) = v4;
  return result;
}

uint64_t md::ita::PrepareCulledDepthPrePassSlice::operator()(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = ecs2::ExecutionTask<md::PassListProvider *,md::LayoutContextProvider *>::service<md::PassListProvider>(a1);
  v7 = *((*(*v6 + 16))(v6) + 24);
  v8 = ecs2::ExecutionTask<md::PassListProvider *,md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  LODWORD(v65) = 5;
  v9 = std::__hash_table<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v8 + 1555, 5u);
  result = md::FrameGraph::renderQueueForPass(*(v7 + 8), 3);
  if (result)
  {
    v11 = v9 + 3;
    v68 = &unk_1F2A33A18;
    v69 = a1;
    v70 = v9 + 3;
    v71 = &v68;
    v12 = *(a2 + 8);
    v13 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupID>(v12);
    v14 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)1>>(v12);
    v15 = v14;
    if (*(v14 + 40) - *(v14 + 32) >= *(v13 + 40) - *(v13 + 32))
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    v17 = *(v16 + 40);
    ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v65, *(v16 + 32), v17, v13, v14);
    ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v64, v17, v17, v13, v15);
    v18 = v65;
    v19 = v64[0];
    if (v65 != v64[0])
    {
      v20 = v67;
      v21 = _ZTWN4ecs27Runtime11_localStateE();
      v22 = _ZTWN4ecs27Runtime11_stackIndexE();
      v23 = 0;
      v24 = v66;
      while (1)
      {
        v25 = v18[1];
        v26 = v25 & 0x3F;
        v27 = (v25 >> 3) & 0x1FF8;
        v28 = *(*(*(v20 + 8) + v27) + 4 * v26 + 2);
        v29 = *(*(v20 + 56) + ((v28 >> 3) & 0x1FF8));
        v30 = *(*(&v20 + 1) + 32);
        v31 = *(*(*(*(&v20 + 1) + 8) + v27) + 4 * v26 + 2);
        *(v21 + 104 * *v22 + 24) = *v18;
        if (!v71)
        {
          break;
        }

        (*(*v71 + 6))(v71, v29 + 16 * (v28 & 0x3F), v30 + 4 * v31);
        ++v23;
        v32 = v18 + 2;
        do
        {
          v18 = v32;
          v65 = v32;
          if (v32 == v24)
          {
            break;
          }

          v33 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v65, *v32, v32[1]);
          v32 = v18 + 2;
        }

        while (!v33);
        if (v18 == v19)
        {
          goto LABEL_14;
        }
      }

LABEL_32:
      std::__throw_bad_function_call[abi:nn200100]();
    }

    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
LABEL_14:
    *(v21 + 104 * *v22 + 24) = -65536;
    v34 = v21 + 104 * *v22;
    v35 = *(v34 + 92);
    *(v34 + 92) = v35 + 1;
    *(v34 + 4 * v35 + 28) = v23;
    v36 = v21 + 104 * *v22;
    v38 = *(v36 + 92);
    v37 = (v36 + 92);
    if (v38 > 0xF)
    {
      *v37 = 0;
    }

    std::__function::__value_func<void ()(md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&)>::~__value_func[abi:nn200100](&v68);
    v68 = &unk_1F2A33B10;
    v69 = a1;
    v70 = v11;
    v71 = &v68;
    v39 = *(a3 + 8);
    v40 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupID>(v39);
    v41 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)8>>(v39);
    v42 = v41;
    if (*(v41 + 40) - *(v41 + 32) >= *(v40 + 40) - *(v40 + 32))
    {
      v43 = v40;
    }

    else
    {
      v43 = v41;
    }

    v44 = *(v43 + 40);
    ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v65, *(v43 + 32), v44, v40, v41);
    ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v64, v44, v44, v40, v42);
    v45 = v65;
    v46 = v64[0];
    if (v65 != v64[0])
    {
      v47 = 0;
      v48 = v67;
      v49 = v66;
      while (1)
      {
        v50 = v45[1];
        v51 = v50 & 0x3F;
        v52 = (v50 >> 3) & 0x1FF8;
        v53 = *(*(*(v48 + 8) + v52) + 4 * v51 + 2);
        v54 = *(*(v48 + 56) + ((v53 >> 3) & 0x1FF8));
        v55 = *(*(&v48 + 1) + 32);
        v56 = *(*(*(*(&v48 + 1) + 8) + v52) + 4 * v51 + 2);
        *(v21 + 104 * *v22 + 24) = *v45;
        if (!v71)
        {
          goto LABEL_32;
        }

        (*(*v71 + 6))(v71, v54 + 16 * (v53 & 0x3F), v55 + 4 * v56);
        ++v47;
        v57 = v45 + 2;
        do
        {
          v45 = v57;
          v65 = v57;
          if (v57 == v49)
          {
            break;
          }

          v58 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v65, *v57, v57[1]);
          v57 = v45 + 2;
        }

        while (!v58);
        if (v45 == v46)
        {
          goto LABEL_28;
        }
      }
    }

    v47 = 0;
LABEL_28:
    *(v21 + 104 * *v22 + 24) = -65536;
    v59 = v21 + 104 * *v22;
    v60 = *(v59 + 92);
    *(v59 + 92) = v60 + 1;
    *(v59 + 4 * v60 + 28) = v47;
    v61 = v21 + 104 * *v22;
    v63 = *(v61 + 92);
    v62 = (v61 + 92);
    if (v63 > 0xF)
    {
      *v62 = 0;
    }

    return std::__function::__value_func<void ()(md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&)>::~__value_func[abi:nn200100](&v68);
  }

  return result;
}

void ecs2::BasicRegistry<void>::remove<md::ls::FrameGraphRenderTarget>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderTarget>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphRenderTarget>();
    *algn_1EB83CBD8 = 0x2CF7C0CBD63AB273;
    qword_1EB83CBE0 = "md::ls::FrameGraphRenderTarget]";
    qword_1EB83CBE8 = 30;
  }

  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderTarget>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FrameGraphRenderTarget>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v9 = *(v7 + 8 * v6);
    if (v9)
    {
      v10 = a2;
      v11 = (a2 >> 16) & 0x3F;
      v12 = 4 * v11;
      if (*(v9 + 4 * v11) == a2)
      {
        v13 = v5;
        v15 = v5[31];
        v14 = v5[32];
        if (v15 != v14)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v15 + 24), a2);
            v15 += 32;
          }

          while (v15 != v14);
          v9 = *(v13[1] + 8 * v6);
          v10 = a2;
          v12 = 4 * v11;
        }

        v16 = *(v9 + 4 * v11 + 2);
        v17 = ((v13[5] - v13[4]) >> 2) - 1;
        v18 = v13[7];
        v19 = *(v18 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v20 = v17 & 0x3F;
        v21 = v16 & 0x3F;
        v22 = *(v18 + ((v16 >> 3) & 0x1FF8));
        v23 = *(v22 + 8 * v21);
        *(v22 + 8 * v21) = *(v19 + 8 * v20);
        *(v19 + 8 * v20) = v23;
        v24 = v13[1];
        if (v6 < (v13[2] - v24) >> 3)
        {
          v25 = *(v24 + 8 * v6);
          if (v25)
          {
            if (*(v25 + v12) == v10)
            {
              v26 = v13[4];
              v27 = *(v26 + 4 * *(v25 + 4 * v11 + 2) + 2);
              v28 = *(v24 + ((v27 >> 3) & 0x1FF8)) + 4 * (v27 & 0x3F);
              *(v26 + 4 * *(v28 + 2)) = *(v13[5] - 4);
              v29 = v13[5];
              *(*(v13[1] + ((*(v29 - 2) >> 3) & 0x1FF8)) + 4 * (*(v29 - 2) & 0x3FLL) + 2) = *(v28 + 2);
              v13[5] = v29 - 4;
              *v28 = 0xFFFF;
            }
          }
        }
      }
    }
  }

  v8 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v8 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderTarget>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::FrameGraphRenderTarget>();
    *algn_1EB83CBD8 = 0x2CF7C0CBD63AB273;
    qword_1EB83CBE0 = "md::ls::FrameGraphRenderTarget]";
    qword_1EB83CBE8 = 30;
  }

  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FrameGraphRenderTarget>(void)::metadata) = *(a1 + 4096);
}

uint64_t std::__function::__value_func<void ()(md::ls::EnteringView const&,md::ls::SupportsShadows const&,md::ls::AssociationTileHandle const&,md::ls::BaseMapTileHandle const&,md::ls::TileViewConstantDataHandle const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ecs2::BasicRegistry<void>::add<md::ls::MarkForEntityDeletion>(uint64_t a1, unint64_t a2)
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarkForEntityDeletion>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MarkForEntityDeletion>();
    unk_1EB83CCF0 = 0xC3545FB0365E4B12;
    qword_1EB83CCF8 = "md::ls::MarkForEntityDeletion]";
    qword_1EB83CD00 = 29;
  }

  v4 = &unk_1EB83C000;
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarkForEntityDeletion>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::MarkForEntityDeletion>(a1);
  v7 = v6;
  v8 = a2 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v8 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((a2 >> 16) & 0x3F));
  if (*v12 == -1 && v12[1] == 0)
  {
    v31 = v5;
    v15 = v7[5];
    v14 = v7[6];
    if (v15 >= v14)
    {
      v17 = v7[4];
      v18 = (v15 - v17) >> 2;
      if ((v18 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v19 = v14 - v17;
      v20 = v19 >> 1;
      if (v19 >> 1 <= (v18 + 1))
      {
        v20 = v18 + 1;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v21);
      }

      v29 = a2;
      *(4 * v18) = a2;
      v16 = 4 * v18 + 4;
      v22 = v7[4];
      v23 = v7[5] - v22;
      v24 = (4 * v18 - v23);
      memcpy(v24, v22, v23);
      v25 = v7[4];
      v7[4] = v24;
      v7[5] = v16;
      v7[6] = 0;
      if (v25)
      {
        operator delete(v25);
      }

      v4 = &unk_1EB83C000;
    }

    else
    {
      v29 = a2;
      *v15 = a2;
      v16 = (v15 + 1);
    }

    v7[5] = v16;
    v26 = ((v16 - *(v7 + 8)) >> 2) - 1;
    *v12 = a2;
    v12[1] = v26;
    v28 = v7[13];
    v27 = v7[14];
    if (v28 == v27)
    {
      v5 = v31;
    }

    else
    {
      v5 = v31;
      do
      {
        std::function<void ()(ecs2::Entity)>::operator()(*(v28 + 24), v29);
        v28 += 32;
      }

      while (v28 != v27);
    }
  }

  else
  {
    v29 = (a2 >> 16) << 16;
  }

  v30 = *(a1 + 41016) + (HIWORD(v29) << 6);
  *(v30 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarkForEntityDeletion>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MarkForEntityDeletion>();
    unk_1EB83CCF0 = 0xC3545FB0365E4B12;
    qword_1EB83CCF8 = "md::ls::MarkForEntityDeletion]";
    qword_1EB83CD00 = 29;
  }

  *(a1 + 8 * v4[413]) = *(a1 + 4096);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MarkForEntityDeletion>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarkForEntityDeletion>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MarkForEntityDeletion>();
    unk_1EB83CCF0 = 0xC3545FB0365E4B12;
    qword_1EB83CCF8 = "md::ls::MarkForEntityDeletion]";
    qword_1EB83CD00 = 29;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarkForEntityDeletion>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MarkForEntityDeletion>(void)::metadata >= 0x200)
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

void md::ita::CreateTileClearRenderItemsForShadowPass::operator()(uint64_t **a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v2 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a1);
  v6 = v2;
  if (!*((*(*v2 + 48))(v2) + 2856))
  {
    v3 = (*(*v2 + 48))(v2);
    md::DaVinciGroundRenderResources::buildShadowPlane(v3);
  }

  v4 = 0;
  operator new();
}

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::RampMaterialData>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::RampMaterialData>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RampMaterialData>(a1);
  result = ecs2::signal<>::publish(v7[43], v7[44]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

void *md::ita::CheckIfNeedsDepthPeel::operator()(uint64_t a1, uint64_t a2)
{
  v55[4] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (!v4)
  {
    v4 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, *(**a1 + 8));
    *(a1 + 8) = v4;
  }

  v5 = *((**v4)(v4) + 8);
  v6 = md::LayoutContext::get<md::ElevationContext>(v5);
  v7 = md::LayoutContext::get<md::CameraContext>(v5);
  if ((((fabs(*(gdc::Camera::cameraFrame(v7) + 32)) > 0.0001) ^ *(v6 + 1)) & 1) != 0 || (result = gdc::Context::get<md::StyleLogicContext>(v5), *(result + 22) == 5))
  {
    v53[0] = &unk_1F2A078A0;
    v53[1] = a1;
    v54 = v53;
    v9 = *(a2 + 8);
    v10 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v9);
    v11 = ecs2::BasicRegistry<void>::storage<md::ls::InView>(v9);
    v12 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayer>(v9);
    v13 = ecs2::BasicRegistry<void>::storage<md::ls::CheckIfRequiresDepthPeel>(v9);
    v55[0] = v10;
    v55[1] = v11;
    v14 = 1;
    v15 = v10;
    v16 = v55;
    v55[2] = v12;
    v55[3] = v13;
    do
    {
      if (*(v55[v14] + 40) - *(v55[v14] + 32) < *(v15 + 40) - *(v15 + 32))
      {
        v15 = v55[v14];
        v16 = &v55[v14];
      }

      ++v14;
    }

    while (v14 != 4);
    v18 = *(*v16 + 32);
    v17 = *(*v16 + 40);
    v47 = v18;
    v48 = v17;
    v49 = v10;
    v50 = v11;
    v51 = v12;
    v52 = v13;
    while (v18 != v17 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v47, *v18, v18[1]))
    {
      v18 += 2;
      v47 = v18;
    }

    v19 = v47;
    if (v47 == v17)
    {
      v24 = _ZTWN4ecs27Runtime11_localStateE();
      v25 = _ZTWN4ecs27Runtime11_stackIndexE();
      v26 = 0;
    }

    else
    {
      v20 = v49;
      v21 = v50;
      v22 = v51;
      v23 = v52;
      v24 = _ZTWN4ecs27Runtime11_localStateE();
      v25 = _ZTWN4ecs27Runtime11_stackIndexE();
      v26 = 0;
      v27 = v48;
      do
      {
        v28 = v19[1];
        v29 = v28 & 0x3F;
        v30 = (v28 >> 3) & 0x1FF8;
        v31 = *(*(*(v20 + 8) + v30) + 4 * v29 + 2);
        v32 = *(*(v20 + 56) + ((v31 >> 3) & 0x1FF8));
        v33 = *(v21 + 32);
        v34 = *(*(*(v22 + 8) + v30) + 4 * v29 + 2);
        v35 = *(*(v22 + 56) + ((v34 >> 3) & 0x1FF8));
        v36 = *(*(*(v21 + 8) + v30) + 4 * v29 + 2);
        v37 = *(v23 + 32);
        v38 = *(*(*(v23 + 8) + v30) + 4 * v29 + 2);
        *(v24 + 104 * *v25 + 24) = *v19;
        if (!v54)
        {
          std::__throw_bad_function_call[abi:nn200100]();
        }

        (*(*v54 + 48))(v54, v32 + 8 * (v31 & 0x3F), v33 + 4 * v36, v35 + (v34 & 0x3F), v37 + 4 * v38);
        ++v26;
        v39 = v19 + 2;
        while (1)
        {
          v19 = v39;
          v47 = v39;
          if (v39 == v27)
          {
            break;
          }

          v40 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v47, *v39, v39[1]);
          v39 = v19 + 2;
          if (v40)
          {
            v41 = v19;
            goto LABEL_21;
          }
        }

        v41 = v27;
LABEL_21:
        ;
      }

      while (v41 != v17);
    }

    *(v24 + 104 * *v25 + 24) = -65536;
    v42 = v24 + 104 * *v25;
    v43 = *(v42 + 92);
    *(v42 + 92) = v43 + 1;
    *(v42 + 4 * v43 + 28) = v26;
    v44 = v24 + 104 * *v25;
    v46 = *(v44 + 92);
    v45 = (v44 + 92);
    if (v46 > 0xF)
    {
      *v45 = 0;
    }

    return std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::IntendedSceneLayer const&,md::ls::CheckIfRequiresDepthPeel const&)>::~__value_func[abi:nn200100](v53);
  }

  return result;
}

void sub_1B2A6C60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::InView const&,md::ls::IntendedSceneLayer const&,md::ls::CheckIfRequiresDepthPeel const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::InstanceDataV>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceDataV>(void)::metadata >= 0x200)
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

void md::DetermineIfShouldRun_StyleZChange::operator()(uint64_t **a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = **a1;
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 == v4)
  {
    goto LABEL_5;
  }

  v5 = *v2;
  while (*v5 != 0x41D4E9297E100630)
  {
    v5 += 5;
    if (v5 == v4)
    {
      goto LABEL_5;
    }
  }

  if (v5 == v4)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v6 = v5[3];
    v7 = v5[4];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      v8 = **a1;
      v3 = *v8;
      v4 = *(v8 + 8);
    }
  }

  v9 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(v3, v4);
  v10 = (**v9)(v9);
  v11 = md::LayoutContext::get<md::CameraContext>(*(v10 + 8));
  v12 = fmaxf(*(v11 + 3080) + *(v11 + 3076), 1.0);
  v13 = *(v6 + 14324);
  if (vabds_f32(v13, v12) <= 0.1)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v14 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      v16 = "[DetermineIf][StyleZChanged] No StyleZ Change";
      v17 = v14;
      v18 = 2;
      goto LABEL_18;
    }
  }

  else
  {
    *(v6 + 14324) = v12;
    *(v6 + 14320) = 1;
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v14 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(v6 + 14324);
      v19 = 134218240;
      v20 = v13;
      v21 = 2048;
      v22 = v15;
      v16 = "[DetermineIf][StyleZChanged] from %f to %f";
      v17 = v14;
      v18 = 22;
LABEL_18:
      _os_log_impl(&dword_1B2754000, v17, OS_LOG_TYPE_DEBUG, v16, &v19, v18);
    }
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RampMaterialData>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RampMaterialData>();
    *algn_1EB83D558 = 0x741786E98487217CLL;
    qword_1EB83D560 = "md::ls::RampMaterialData]";
    qword_1EB83D568 = 24;
  }
}

uint64_t ecs2::Runtime::_entities<md::ita::PrepareCommandBuffers,md::ls::CommandBufferDescriptionCreation const&>(uint64_t a1, uint64_t **a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::CommandBufferDescriptionCreation>(a1);
  v4 = *(v3 + 32);
  v33 = _ZTWN4ecs27Runtime11_localStateE();
  result = _ZTWN4ecs27Runtime11_stackIndexE();
  v6 = result;
  v32 = v7;
  if (v4 == v7)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *(*(v3 + 56) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8));
      *(v33 + 104 * *v6 + 24) = *v4;
      v10 = a2[1];
      if (!v10)
      {
        v11 = **a2;
        v12 = *v11;
        v13 = *(v11 + 8);
        while (1)
        {
          if (v12 == v13)
          {
            goto LABEL_28;
          }

          if (*v12 == 0xC94DD89A7B09BE9CLL)
          {
            break;
          }

          v12 += 5;
        }

        if (v12 == v13)
        {
LABEL_28:
          v10 = 0;
          goto LABEL_11;
        }

        v10 = v12[3];
        v14 = v12[4];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v14);
        }

LABEL_11:
        a2[1] = v10;
      }

      v15 = a2[2];
      if (!v15)
      {
        v16 = **a2;
        v17 = *v16;
        v18 = *(v16 + 8);
        while (1)
        {
          if (v17 == v18)
          {
            goto LABEL_29;
          }

          if (*v17 == 0xD369A4D92C8FFE6CLL)
          {
            break;
          }

          v17 += 5;
        }

        if (v17 == v18)
        {
LABEL_29:
          v15 = 0;
          goto LABEL_20;
        }

        v15 = v17[3];
        v19 = v17[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }

LABEL_20:
        a2[2] = v15;
      }

      v20 = (v9 + 3 * (v8 & 0x3F));
      v21 = (*(*v15 + 16))(v15);
      v22 = *v20;
      result = md::FrameGraph::renderQueueForPass(*(*(v21 + 24) + 8), *v20);
      if (result)
      {
        v23 = *(*(result + 16) + 8 * v20[1]);
        if (v23)
        {
          v24 = v20[2];
          v23[4] = 0;
          ggl::CommandBuffer::clearRenderItems(v23);
          v23[14] = v23[13];
          ggl::CommandBuffer::clearMPSItems(v23);
          ggl::CommandBuffer::clearTextureLoadItems(v23);
          ggl::CommandBuffer::clearBufferLoadItems(v23);
          v25 = (*(*v10 + 16))(v10, v22, v24, v23);
          v26 = ecs2::ExecutionTaskContext::currentEntity(v25);
          v35 = &unk_1F2A34468;
          *&v36 = v22;
          *(&v36 + 1) = v26;
          v37 = &v35;
          v40 = &v38;
          v38 = &unk_1F2A34468;
          v39 = v36;
          HIDWORD(v39) = 0;
          v41 = 0;
          ecs2::Runtime::queueCommand();
          if (v41 != -1)
          {
            (off_1F2A34528[v41])(&v34, &v38);
          }

          v41 = -1;
          result = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v35);
        }
      }

      ++v8;
      ++v4;
    }

    while (v4 != v32);
  }

  *(v33 + 104 * *v6 + 24) = -65536;
  v27 = v33 + 104 * *v6;
  v28 = *(v27 + 92);
  *(v27 + 92) = v28 + 1;
  *(v27 + 4 * v28 + 28) = v8;
  v29 = v33 + 104 * *v6;
  v31 = *(v29 + 92);
  v30 = (v29 + 92);
  if (v31 >= 0x10)
  {
    *v30 = 0;
  }

  return result;
}

uint64_t md::ita::UpdateShadowConstants::operator()(uint64_t **a1, uint64_t a2)
{
  v78 = *MEMORY[0x1E69E9840];
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
  v10 = a1[2];
  if (!v10)
  {
    v11 = **a1;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_14;
    }

    while (*v12 != 0x41D4E9297E100630)
    {
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_14;
      }
    }

    if (v12 == v13)
    {
LABEL_14:
      v10 = 0;
    }

    else
    {
      v10 = v12[3];
      v14 = v12[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v14);
      }
    }

    a1[2] = v10;
  }

  v68 = v10;
  result = md::LayoutContext::get<md::LightingLogicContext>(*(v9 + 8));
  if (result)
  {
    v16 = result;
    v17 = a1[3];
    if (!v17)
    {
      v18 = **a1;
      v19 = *v18;
      v20 = *(v18 + 8);
      if (v19 == v20)
      {
        goto LABEL_24;
      }

      while (*v19 != 0xD369A4D92C8FFE6CLL)
      {
        v19 += 5;
        if (v19 == v20)
        {
          goto LABEL_24;
        }
      }

      if (v19 == v20)
      {
LABEL_24:
        v17 = 0;
      }

      else
      {
        v17 = v19[3];
        v21 = v19[4];
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        }
      }

      a1[3] = v17;
    }

    result = (*(*v17 + 8))(v17);
    if (result)
    {
      v22 = result;
      v23 = *(result + 8);
      result = md::FrameGraph::renderQueueForPass(v23, 0);
      if (result)
      {
        v24 = *(v16 + 261);
        v62 = 0u;
        v63 = 0;
        v65 = 0u;
        v66 = 0u;
        v59 = 0u;
        v60 = 0u;
        v58 = 0x3FF0000000000000;
        v61 = 0x3FF0000000000000uLL;
        v64 = 0x3FF0000000000000;
        v67 = 0x3FF0000000000000;
        if ((v24 & 1) == 0)
        {
          v25 = *(v22 + 88);
          if (v25)
          {
            v26 = *(v25 + 32);
            v27 = *(v23 + 12);
            if (v26 < (*(v23 + 13) - v27) >> 3)
            {
              v28 = *(*(v27 + 8 * v26) + 16);
              if (v28)
              {
                md::LightingLogicContext::quantizedShadowViewProjectionMatrix(&v58, v16, *(v28 + 80), *(v28 + 84));
                v76[0] = &unk_1F2A382F0;
                v76[1] = &v68;
                v76[2] = &v58;
                v77 = v76;
                v29 = *(a2 + 8);
                v30 = ecs2::BasicRegistry<void>::storage<md::ls::TileMatrix>(v29);
                v31 = ecs2::BasicRegistry<void>::storage<md::ls::TileShadowConstantDataHandle>(v29);
                v32 = v31;
                if (*(v31 + 40) - *(v31 + 32) >= *(v30 + 40) - *(v30 + 32))
                {
                  v33 = v30;
                }

                else
                {
                  v33 = v31;
                }

                v34 = *(v33 + 40);
                ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v73, *(v33 + 32), v34, v30, v31);
                ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v72, v34, v34, v30, v32);
                v35 = v73;
                v71 = v75;
                v69 = v73;
                v70 = v74;
                v36 = v72;
                if (v73 == v72)
                {
                  v38 = _ZTWN4ecs27Runtime11_localStateE();
                  v39 = _ZTWN4ecs27Runtime11_stackIndexE();
                  v40 = 0;
                }

                else
                {
                  v37 = v74;
                  v38 = _ZTWN4ecs27Runtime11_localStateE();
                  v39 = _ZTWN4ecs27Runtime11_stackIndexE();
                  v40 = 0;
                  v41 = *(&v73 + 1);
                  do
                  {
                    v42 = v35[1];
                    v43 = (v42 >> 3) & 0x1FF8;
                    v44 = v42 & 0x3F;
                    v45 = *(*(*(v37 + 8) + v43) + 4 * v44 + 2);
                    v46 = *(*(v37 + 56) + ((v45 >> 3) & 0x1FF8));
                    v47 = *(*(*(*(&v37 + 1) + 8) + v43) + 4 * v44 + 2);
                    v48 = *(*(*(&v37 + 1) + 56) + ((v47 >> 3) & 0x1FF8));
                    *(v38 + 104 * *v39 + 24) = *v35;
                    if (!v77)
                    {
                      v57 = std::__throw_bad_function_call[abi:nn200100]();
                      std::__function::__value_func<void ()(md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle &)>::~__value_func[abi:nn200100](v76);
                      _Unwind_Resume(v57);
                    }

                    (*(*v77 + 48))(v77, v46 + 8 * (v45 & 0x3F), v48 + 8 * (v47 & 0x3F));
                    ++v40;
                    v49 = v35 + 2;
                    do
                    {
                      v35 = v49;
                      *&v73 = v49;
                      if (v49 == v41)
                      {
                        break;
                      }

                      v50 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v73, *v49, v49[1]);
                      v49 = v35 + 2;
                    }

                    while (!v50);
                  }

                  while (v35 != v36);
                  v51 = *(a2 + 8);
                  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>();
                  *(v51 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TileShadowConstantDataHandle>(void)::metadata) = *(v51 + 4096);
                }

                *(v38 + 104 * *v39 + 24) = -65536;
                v52 = v38 + 104 * *v39;
                v53 = *(v52 + 92);
                *(v52 + 92) = v53 + 1;
                *(v52 + 4 * v53 + 28) = v40;
                v54 = v38 + 104 * *v39;
                v56 = *(v54 + 92);
                v55 = (v54 + 92);
                if (v56 >= 0x10)
                {
                  *v55 = 0;
                }

                return std::__function::__value_func<void ()(md::ls::TileMatrix const&,md::ls::TileShadowConstantDataHandle &)>::~__value_func[abi:nn200100](v76);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

char *ecs2::Runtime::_entities<md::ita::PrepareTileElevatedStrokeDataHandle,md::ls::InView const&,md::ls::MercatorBounds const&,md::ls::RenderableMaterialData const&>(uint64_t a1, uint64_t **a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::InView>(a1);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::MercatorBounds>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMaterialData>(a1);
  v41 = v3;
  *&v42 = v4;
  *(&v42 + 1) = v5;
  v6 = 8;
  v7 = v3;
  v8 = &v41;
  do
  {
    if ((*(&v41 + v6))[5] - (*(&v41 + v6))[4] < *(v7 + 40) - *(v7 + 32))
    {
      v7 = *(&v41 + v6);
      v8 = (&v41 + v6);
    }

    v6 += 8;
  }

  while (v6 != 24);
  v9 = *(*v8 + 4);
  v10 = *(*v8 + 5);
  v33 = v9;
  v34 = v10;
  v35 = v3;
  v36 = v4;
  v37 = v5;
  while (v9 != v10 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v33, *v9, v9[1]))
  {
    v9 += 2;
    v33 = v9;
  }

  v11 = v33;
  if (v33 == v10)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = 0;
  }

  else
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = 0;
    v15 = v34;
    do
    {
      v16 = result;
      v17 = v13;
      *(v13 + 104 * *result + 24) = *v11;
      v18 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v38 = 1065353216;
      v39 = 0;
      v19 = std::__hash_table<std::__hash_value_type<md::ElevatedStrokeCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>>,std::__unordered_map_hasher<md::ElevatedStrokeCacheKey,std::__hash_value_type<md::ElevatedStrokeCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>>,md::ElevatedStrokeCacheKeyHasher,std::equal_to<md::ElevatedStrokeCacheKey>,true>,std::__unordered_map_equal<md::ElevatedStrokeCacheKey,std::__hash_value_type<md::ElevatedStrokeCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>>,std::equal_to<md::ElevatedStrokeCacheKey>,md::ElevatedStrokeCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::ElevatedStrokeCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>>>>::find<md::ElevatedStrokeCacheKey>(v18 + 1357, &v38);
      if (!v19 || (v20 = v19[4]) == 0)
      {
        v20 = md::VKMRenderResourcesStore::createConstantDataHandle<ggl::DaVinci::ElevatedStroke,md::ElevatedStrokeCacheKey>(v18, &v38);
        v21 = md::VKMRenderResourcesStore::pop<ggl::DaVinci::ElevatedStroke>(v18, v20);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v41, v21);
        v22 = v45;
        *v45 = 1065353216;
        *(v22 + 1) = 0;
        ggl::BufferMemory::~BufferMemory(&v41);
      }

      v23 = ecs2::ExecutionTaskContext::currentEntity(v19);
      v46 = &unk_1F29ED608;
      *&v47 = v20;
      *(&v47 + 1) = v23;
      v48 = &v46;
      v43 = &v41;
      v41 = &unk_1F29ED608;
      v42 = v47;
      HIDWORD(v42) = 0;
      v44 = 0;
      ecs2::Runtime::queueCommand();
      if (v44 != -1)
      {
        (off_1F29ED640[v44])(&v40, &v41);
      }

      v44 = -1;
      std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v46);
      ++v14;
      v24 = v11 + 2;
      while (1)
      {
        v11 = v24;
        v33 = v24;
        if (v24 == v15)
        {
          break;
        }

        v25 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v33, *v24, v24[1]);
        v24 = v11 + 2;
        if (v25)
        {
          v26 = v11;
          goto LABEL_21;
        }
      }

      v26 = v15;
LABEL_21:
      v13 = v17;
      result = v16;
    }

    while (v26 != v10);
  }

  *(v13 + 104 * *result + 24) = -65536;
  v27 = v13 + 104 * *result;
  v28 = *(v27 + 92);
  *(v27 + 92) = v28 + 1;
  *(v27 + 4 * v28 + 28) = v14;
  v29 = v13 + 104 * *result;
  v31 = *(v29 + 92);
  v30 = (v29 + 92);
  if (v31 > 0xF)
  {
    *v30 = 0;
  }

  return result;
}

uint64_t ecs2::signal<>::publish(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    while (1)
    {
      v4 = *(v3 + 24);
      if (!v4)
      {
        break;
      }

      result = (*(*v4 + 48))(v4);
      v3 += 32;
      if (v3 == a2)
      {
        return result;
      }
    }

    v5 = std::__throw_bad_function_call[abi:nn200100]();
    return ecs2::BasicRegistry<void>::clear<md::ls::EnteringView>(v5);
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::EnteringView>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::EnteringView>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::EnteringView>(a1);
  result = ecs2::signal<>::publish(v7[43], v7[44]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassShadowConfiguration>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PassShadowConfiguration>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[405];
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::EnteringView>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::EnteringView>();
    *algn_1EB83DB18 = 0xE0AB1B46607846E6;
    qword_1EB83DB20 = "md::ls::EnteringView]";
    qword_1EB83DB28 = 20;
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23PassShadowConfigurationEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A54AF0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23PassShadowConfigurationEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A54AF0;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::ItemsPrepared>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(a1);
  result = ecs2::signal<>::publish(v7[43], v7[44]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

void md::ita::SetupCommonDataTask::operator()(uint64_t **a1)
{
  v2 = a1[1];
  if (!v2)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0xD369A4D92C8FFE6CLL)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v2 = 0;
    }

    else
    {
      v2 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[1] = v2;
  }

  v7 = (*(*v2 + 8))(v2);
  if (v7)
  {
    v8 = v7;
    v9 = a1[2];
    if (!v9)
    {
      v10 = **a1;
      v11 = *v10;
      v12 = *(v10 + 8);
      if (v11 == v12)
      {
        goto LABEL_15;
      }

      while (*v11 != 0xC94DD89A7B09BE9CLL)
      {
        v11 += 5;
        if (v11 == v12)
        {
          goto LABEL_15;
        }
      }

      if (v11 == v12)
      {
LABEL_15:
        v9 = 0;
      }

      else
      {
        v9 = v11[3];
        v13 = v11[4];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }
      }

      a1[2] = v9;
    }

    v14 = (*(*v9 + 48))(v9);
    v15 = a1[3];
    if (!v15)
    {
      v16 = **a1;
      v17 = *v16;
      v18 = *(v16 + 8);
      if (v17 == v18)
      {
        goto LABEL_24;
      }

      while (*v17 != 0x22D45F5AAD4BF408)
      {
        v17 += 5;
        if (v17 == v18)
        {
          goto LABEL_24;
        }
      }

      if (v17 == v18)
      {
LABEL_24:
        v15 = 0;
      }

      else
      {
        v15 = v17[3];
        v19 = v17[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:nn200100](v19);
        }
      }

      a1[3] = v15;
    }

    v20 = (**v15)(v15);
    _S8 = *(gdc::Context::get<md::StyleLogicContext>(*(v20 + 8))[4] + 272);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v87, v14[201]);
    __asm { FCVT            H0, S8 }

    *v88 = _H0;
    ggl::BufferMemory::~BufferMemory(v87);
    v27 = *v20;
    v28 = ggl::RenderTarget::width([v27 finalRenderTarget]);

    v29 = *v20;
    v30 = ggl::RenderTarget::height([v29 finalRenderTarget]);

    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v87, *(v8 + 328));
    v31 = v88;
    *v88 = v28;
    v31[1] = v30;
    ggl::BufferMemory::~BufferMemory(v87);
    v32 = *(v20 + 8);
    v33 = gdc::Context::get<md::SkyLogicContext>(v32);
    if (v33)
    {
      v85 = v33[1];
      v86 = *v33;
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v87, v14[166]);
      *v88 = vcvt_hight_f16_f32(vcvt_f16_f32(v85), v86);
      v34 = md::LayoutContext::get<md::CameraContext>(*(v20 + 8));
      v35 = v34[379];
      v36 = +[VKDebugSettings sharedSettings];
      v37 = v35;
      _S9 = 1.0 - v37;
      v39 = gdc::CameraView::position(v34);
      v40 = 0;
      v41 = 0.0;
      do
      {
        v41 = v41 + *(v39 + v40) * *(v39 + v40);
        v40 += 8;
      }

      while (v40 != 24);
      if (v37 >= 1.0)
      {
        _S9 = 0.0;
      }

      [v36 daVinciHorizonGlowSharpness];
      _S8 = v42;
      [v36 daVinciHorizonGlowStrength];
      v44 = 6356752.31 / sqrt(v41);
      v45 = v34[122];
      v46 = v34[121];
      v47 = ((1.0309 / v45) - (1.0 / v46)) / ((1.0 / v45) - (1.0 / v46));
      _S4 = 1.0 / (1.0 - v47);
      _S2 = v47 / (1.0 - v47);
      _S3 = _S4 - _S2;
      _S1 = 1.0 - v44;
      __asm
      {
        FCVT            H4, S9
        FCVT            H3, S3
        FCVT            H2, S2
        FCVT            H1, S1
      }

      v52 = v88;
      v88[8] = *&_S4;
      v52[9] = *&_S3;
      v52[10] = *&_S2;
      v52[11] = *&_S1;
      __asm
      {
        FCVT            H1, S8
        FCVT            H0, S0
      }

      v52[12] = *&_S1;
      *(v52 + 13) = _S0;

      ggl::BufferMemory::~BufferMemory(v87);
      v32 = *(v20 + 8);
    }

    v54 = md::LayoutContext::get<md::LightingLogicContext>(v32);
    if (v54)
    {
      v55 = v54;
      v56 = md::LayoutContext::get<md::CameraContext>(v32);
      v57 = *(gdc::Camera::cameraFrame(v56) + 24);
      _D8 = v57 * 1.5;
      _D9 = v57 * 0.5;
      _S10 = *(v55 + 56);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v87, v14[184]);
      __asm { FCVT            H0, S10 }

      v62 = v88;
      *v88 = _H0;
      *(v62 + 1) = COERCE_UNSIGNED_INT(1.0);
      __asm { FCVT            H0, D9 }

      *(v62 + 3) = _H0;
      __asm { FCVT            H0, D8 }

      *(v62 + 2) = _H0;
      ggl::BufferMemory::~BufferMemory(v87);
      v32 = *(v20 + 8);
    }

    v65 = md::LayoutContext::get<md::LightingLogicContext>(v32);
    if (v65)
    {
      v66 = v65[14];
      v67 = __sincosf_stret(v66);
      _S8 = v67.__sinval;
      _S9 = v67.__cosval;
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v87, v14[174]);
      __asm { FCVT            H0, S9 }

      v71 = v88;
      __asm { FCVT            H1, S8 }

      *v88 = _H0;
      *(v71 + 1) = _H1;
      ggl::BufferMemory::~BufferMemory(v87);
      v32 = *(v20 + 8);
    }

    v73 = *(md::LayoutContext::get<md::ElevationContext>(v32) + 2);
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v87, v14[176]);
    _S0 = 1.0 - v73;
    __asm { FCVT            H0, S0 }

    *v88 = *&_S0;
    ggl::BufferMemory::~BufferMemory(v87);
    v75 = md::LayoutContext::get<md::LightingLogicContext>(*(v20 + 8));
    v76 = +[VKDebugSettings sharedSettings];
    v77 = md::LayoutContext::get<md::SettingsContext>(*(v20 + 8));
    if (v75 && *(v75 + 259) == 1 && [v76 daVinciSSAOOcclusionOnly])
    {
      v78 = [v76 daVinciAdvancedLightingEnabled];
    }

    else
    {
      v78 = 0;
    }

    if (*(v77 + 92) == 1)
    {
      v79 = [v76 daVinciAdvancedLightingEnabled];
    }

    else
    {
      v79 = 0;
    }

    if (*(v77 + 93) == 1)
    {
      v80 = [v76 daVinciAdvancedLightingEnabled];
    }

    else
    {
      v80 = 0;
    }

    if ([v76 daVinciLightingDebugShowOverexposure])
    {
      v81 = [v76 daVinciAdvancedLightingEnabled];
    }

    else
    {
      v81 = 0;
    }

    if ([v76 daVinciLightingDebugShowNormals])
    {
      v82 = [v76 daVinciAdvancedLightingEnabled];
    }

    else
    {
      v82 = 0;
    }

    v83 = [v76 daVinciRenderingDebugShowUVs];
    ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v87, *(v8 + 344));
    v84 = v88;
    *v88 = v80;
    *(v84 + 1) = v79;
    *(v84 + 2) = v81;
    *(v84 + 3) = v82;
    *(v84 + 4) = v78;
    *(v84 + 5) = v83;
    ggl::BufferMemory::~BufferMemory(v87);
  }
}

uint64_t *md::ita::PrepareCulledShadowSlice::operator()(uint64_t **a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v11 = v2;
  v3 = a1[2];
  if (!v3)
  {
    v4 = **a1;
    v5 = *v4;
    v6 = *(v4 + 8);
    if (v5 == v6)
    {
      goto LABEL_3;
    }

    while (*v5 != 0x22D45F5AAD4BF408)
    {
      v3 = 0;
      v5 += 5;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    if (v5 == v6)
    {
LABEL_3:
      v3 = 0;
    }

    else
    {
      v3 = v5[3];
      v10 = v5[4];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }
    }

LABEL_6:
    a1[2] = v3;
  }

  v7 = (**v3)(v3);
  v8 = md::LayoutContext::get<md::LightingLogicContext>(*(v7 + 8));
  v12 = 4;
  v13 = &v12;
  result = std::__hash_table<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2 + 1555, 4u);
  if (v8)
  {
    if ((*(v8 + 261) & 1) == 0)
    {
      operator new();
    }
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ItemsPrepared>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ItemsPrepared>();
    unk_1EB83D990 = 0xC120277B06FDA0DALL;
    qword_1EB83D998 = "md::ls::ItemsPrepared]";
    qword_1EB83D9A0 = 21;
  }
}

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::NeedsFunctionConstantsUpdate>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::RegisterHandle const&,md::ls::EnteringView const&,md::ls::BaseMapTileHandle const&,md::ls::AssociationTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TransferStyleAttributeRasterSet const*,md::ls::TileUnitsPerMeter const&,md::ls::MapDataTypeV const&,md::ls::TileClippingConstantDataHandle const*,md::ls::TileViewConstantDataHandle const&,md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle const&,md::ls::TileStyleDataKeyHandle const&,md::ls::RenderablesCount const&,md::ls::TileTransformConstantDataHandle const&,md::ls::TileShadowConstantDataHandle const*,md::ls::TilePrepassShadowConstantDataHandle const*,md::ls::TilePrepassConstantDataHandle const*,md::ls::TileStyleCameraConstantDataHandle const*,md::ls::SupportsStylizedShading const*)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *md::ita::CollectDaVinciMeshRenderables::operator()(uint64_t **a1)
{
  v38[23] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (!v2)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x22D45F5AAD4BF408)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v2 = 0;
    }

    else
    {
      v2 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[1] = v2;
  }

  v7 = (**v2)(v2);
  v36 = v7;
  v35 = md::LayoutContext::get<md::MeshRenderableContext>(*(v7 + 8));
  v8 = a1[2];
  if (!v8)
  {
    v9 = **a1;
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v10 == v11)
    {
      goto LABEL_14;
    }

    while (*v10 != 0x4EDAD23DFB014132)
    {
      v10 += 5;
      if (v10 == v11)
      {
        goto LABEL_14;
      }
    }

    if (v10 == v11)
    {
LABEL_14:
      v8 = 0;
    }

    else
    {
      v8 = v10[3];
      v12 = v10[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }
    }

    a1[2] = v8;
  }

  v34 = v8;
  v13 = a1[3];
  if (!v13)
  {
    v14 = **a1;
    v15 = *v14;
    v16 = *(v14 + 8);
    if (v15 == v16)
    {
      goto LABEL_23;
    }

    while (*v15 != 0x41D4E9297E100630)
    {
      v15 += 5;
      if (v15 == v16)
      {
        goto LABEL_23;
      }
    }

    if (v15 == v16)
    {
LABEL_23:
      v13 = 0;
    }

    else
    {
      v13 = v15[3];
      v17 = v15[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }
    }

    a1[3] = v13;
  }

  v33 = v13;
  v18 = a1[4];
  if (!v18)
  {
    v19 = **a1;
    v20 = *v19;
    v21 = *(v19 + 8);
    if (v20 == v21)
    {
      goto LABEL_32;
    }

    while (*v20 != 0x348A0B0E758C07C2)
    {
      v20 += 5;
      if (v20 == v21)
      {
        goto LABEL_32;
      }
    }

    if (v20 == v21)
    {
LABEL_32:
      v18 = 0;
    }

    else
    {
      v18 = v20[3];
      v22 = v20[4];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v22);
      }
    }

    a1[4] = v18;
  }

  v32 = v18;
  v23 = +[VKDebugSettings sharedSettings];
  md::TerrainDebugOptions::TerrainDebugOptions(v31, v23);

  v24 = *(v7 + 8);
  result = md::LayoutContext::get<md::MaterialContext>(v24);
  if (result)
  {
    v26 = md::LayoutContext::get<md::CameraContext>(v24);
    v27 = md::LayoutContext::get<md::ElevationContext>(v24);
    v30 = gdc::ToCoordinateSystem(*(v26 + 3784));
    if (*(v27 + 4) <= 0.01)
    {
      v28 = *(v27 + 3);
    }

    else
    {
      v28 = 0;
    }

    v29 = v28 & 1;
    v38[0] = &unk_1F2A40BB0;
    v38[1] = filterRenderableCount;
    v38[3] = v38;
    v37[3] = v37;
    v37[0] = &unk_1F2A40BB0;
    v37[1] = filterRenderableCount;
    std::__function::__value_func<BOOL ()(md::ls::RenderablesCount const&)>::~__value_func[abi:nn200100](v38);
    operator new();
  }

  return result;
}

void md::ita::PrepareMainPassCommandBuffers::operator()(uint64_t **a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a1[2];
  if (!v4)
  {
    v5 = **a1;
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v6 == v7)
    {
      goto LABEL_5;
    }

    while (*v6 != 0xC94DD89A7B09BE9CLL)
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

    a1[2] = v4;
  }

  v26 = v4;
  v25 = (*(*v4 + 112))(v4, 9, 4);
  v27 = &unk_1F29EEF00;
  v28 = &v25;
  v29 = &v26;
  v30 = &v27;
  ecs2::Runtime::_entities<std::function<void ()(md::ls::PassToCommandBuffers &)>,md::ls::PassToCommandBuffers &>(a2, &v27);
  std::__function::__value_func<void ()(md::ls::PassToCommandBuffers &)>::~__value_func[abi:nn200100](&v27);
  v9 = a1[1];
  if (!v9)
  {
    v10 = **a1;
    v11 = *v10;
    v12 = *(v10 + 8);
    if (v11 == v12)
    {
      goto LABEL_14;
    }

    while (*v11 != 0xD369A4D92C8FFE6CLL)
    {
      v11 += 5;
      if (v11 == v12)
      {
        goto LABEL_14;
      }
    }

    if (v11 == v12)
    {
LABEL_14:
      v9 = 0;
    }

    else
    {
      v9 = v11[3];
      v13 = v11[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }
    }

    a1[1] = v9;
  }

  v14 = (*(*v9 + 8))(v9);
  if (v14)
  {
    v15 = (*(*v26 + 8))(v26);
    [v15 standardCommandBufferSelector];
    v16 = *(v27[1] + 248);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v28);
    }

    v17 = md::FrameGraph::renderQueueForPass(*(v14 + 8), v16);
    if (v17)
    {
      v18 = *(*(v17 + 16) + 8 * (v16 >> 8));
      if (v18)
      {
        v19 = a1[3];
        if (!v19)
        {
          v20 = **a1;
          v21 = *v20;
          v22 = *(v20 + 8);
          if (v21 == v22)
          {
            goto LABEL_28;
          }

          while (*v21 != 0x41D4E9297E100630)
          {
            v21 += 5;
            if (v21 == v22)
            {
              goto LABEL_28;
            }
          }

          if (v21 == v22)
          {
LABEL_28:
            v19 = 0;
          }

          else
          {
            v19 = v21[3];
            v23 = v21[4];
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:nn200100](v23);
            }
          }

          a1[3] = v19;
        }

        v24 = v19[8];
        if (!v24)
        {
          operator new();
        }

        *(v18 + 32) = v24;
      }
    }
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NeedsFunctionConstantsUpdate>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::NeedsFunctionConstantsUpdate>();
    *algn_1EB83C378 = 0x9BA1F27C43D018BELL;
    qword_1EB83C380 = "md::ls::NeedsFunctionConstantsUpdate]";
    qword_1EB83C388 = 36;
  }
}

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::SliceAssignmentT<(md::SliceType)0>>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)0>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)0>>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)0>>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)0>>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

void *md::ita::PrepareStyleConstantDataHandleForMercatorTilesInFlat::operator()(uint64_t **a1)
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
      _D0 = v8[i + 20];
      __asm { FCVT            H0, D0 }

      v18[i] = _D0;
    }

    v17 = 1.0 / v9[3];
    operator new();
  }

  return result;
}

uint64_t md::ita::UpdateGradientMaskData::operator()(uint64_t **a1, uint64_t a2)
{
  v51[3] = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  if (!v4)
  {
    v4 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, *(**a1 + 8));
    a1[1] = v4;
  }

  v5 = (**v4)(v4);
  v6 = md::LayoutContext::get<md::CameraContext>(*(v5 + 8));
  v43 = fmaxf(*(v6 + 3080) + *(v6 + 3076), 1.0);
  v42 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(a1);
  v49[0] = &unk_1F2A07858;
  v49[1] = &v42;
  v49[2] = &v43;
  v50 = v49;
  v7 = *(a2 + 8);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v7);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueGradientMaskDataHandle>(v7);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(v7);
  v51[0] = v8;
  v51[1] = v9;
  v11 = 1;
  v12 = v8;
  v13 = v51;
  v51[2] = v10;
  do
  {
    if (*(v51[v11] + 40) - *(v51[v11] + 32) < *(v12 + 40) - *(v12 + 32))
    {
      v12 = v51[v11];
      v13 = &v51[v11];
    }

    ++v11;
  }

  while (v11 != 3);
  v15 = *(*v13 + 32);
  v14 = *(*v13 + 40);
  v44 = v15;
  v45 = v14;
  v46 = v8;
  v47 = v9;
  v48 = v10;
  while (v15 != v14 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v44, *v15, v15[1]))
  {
    v15 += 2;
    v44 = v15;
  }

  v16 = v44;
  if (v44 == v14)
  {
    v20 = _ZTWN4ecs27Runtime11_localStateE();
    v21 = _ZTWN4ecs27Runtime11_stackIndexE();
    v22 = 0;
  }

  else
  {
    v17 = v46;
    v18 = v47;
    v19 = v48;
    v20 = _ZTWN4ecs27Runtime11_localStateE();
    v21 = _ZTWN4ecs27Runtime11_stackIndexE();
    v22 = 0;
    v23 = v45;
    do
    {
      v24 = v16[1];
      v25 = (v24 >> 3) & 0x1FF8;
      v26 = v24 & 0x3F;
      v27 = *(*(*(v17 + 8) + v25) + 4 * v26 + 2);
      v28 = *(*(v17 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v18 + 8) + v25) + 4 * v26 + 2);
      v30 = *(*(v18 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(v19 + 32);
      v32 = *(*(*(v19 + 8) + v25) + 4 * v26 + 2);
      *(v20 + 104 * *v21 + 24) = *v16;
      if (!v50)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v50 + 48))(v50, v28 + 24 * (v27 & 0x3F), v30 + 8 * (v29 & 0x3F), v31 + 4 * v32);
      ++v22;
      v33 = v16 + 2;
      while (1)
      {
        v16 = v33;
        v44 = v33;
        if (v33 == v23)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v44, *v33, v33[1]);
        v33 = v16 + 2;
        if (v34)
        {
          v35 = v16;
          goto LABEL_19;
        }
      }

      v35 = v23;
LABEL_19:
      ;
    }

    while (v35 != v14);
  }

  *(v20 + 104 * *v21 + 24) = -65536;
  v36 = v20 + 104 * *v21;
  v37 = *(v36 + 92);
  *(v36 + 92) = v37 + 1;
  *(v36 + 4 * v37 + 28) = v22;
  v38 = v20 + 104 * *v21;
  v40 = *(v38 + 92);
  v39 = (v38 + 92);
  if (v40 > 0xF)
  {
    *v39 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueGradientMaskDataHandle const&,md::ls::MaterialPendingProcessing const&)>::~__value_func[abi:nn200100](v49);
}

void sub_1B2A70190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueGradientMaskDataHandle const&,md::ls::MaterialPendingProcessing const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)0>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)0>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)0>>();
    unk_1EB83D4C0 = 0xD15AF44EFDE875A7;
    qword_1EB83D4C8 = "md::ls::SliceAssignmentT<md::SliceType::AllByPrimitiveAndVisibility>]";
    qword_1EB83D4D0 = 68;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)0>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)0>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)0>>();
    unk_1EB83D4C0 = 0xD15AF44EFDE875A7;
    qword_1EB83D4C8 = "md::ls::SliceAssignmentT<md::SliceType::AllByPrimitiveAndVisibility>]";
    qword_1EB83D4D0 = 68;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)0>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)0>>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::SliceAssignmentT<(md::SliceType)1>>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)1>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)1>>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)1>>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)1>>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

uint64_t md::DetermineIfShouldRun_SsaoEnabled::operator()(void ****a1)
{
  v2 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, (**a1)[1]);
  v3 = (**v2)(v2);
  v4 = md::LayoutContext::get<md::LightingLogicContext>(*(v3 + 8));
  if (v4)
  {
    v5 = *(v4 + 259);
  }

  else
  {
    v5 = 0;
  }

  v6 = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::PrepareFunctionConstantDescriptorSSAO>();
  ecs2::UtilityTaskContext::toggleTask((*a1)[2], ~v6, v5 & 1);
  updated = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateSSAOIntensityData>();
  ecs2::UtilityTaskContext::toggleTask((*a1)[2], ~updated, v5 & 1);
  v8 = ~gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ProcessRenderableForSSAOConstantData>();
  v9 = (*a1)[2];

  return ecs2::UtilityTaskContext::toggleTask(v9, v8, v5 & 1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)1>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)1>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)1>>();
    *algn_1EB83D498 = 0x731F9AB6193E8641;
    qword_1EB83D4A0 = "md::ls::SliceAssignmentT<md::SliceType::CulledMain>]";
    qword_1EB83D4A8 = 51;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)1>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)1>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)1>>();
    *algn_1EB83D498 = 0x731F9AB6193E8641;
    qword_1EB83D4A0 = "md::ls::SliceAssignmentT<md::SliceType::CulledMain>]";
    qword_1EB83D4A8 = 51;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)1>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)1>>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::SliceAssignmentT<(md::SliceType)2>>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)2>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)2>>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)2>>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)2>>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)2>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)2>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)2>>();
    *algn_1EB83D478 = 0xF5773E2F171FA967;
    qword_1EB83D480 = "md::ls::SliceAssignmentT<md::SliceType::CulledUnflattenedMain>]";
    qword_1EB83D488 = 62;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)2>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)2>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)2>>();
    *algn_1EB83D478 = 0xF5773E2F171FA967;
    qword_1EB83D480 = "md::ls::SliceAssignmentT<md::SliceType::CulledUnflattenedMain>]";
    qword_1EB83D488 = 62;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)2>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)2>>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::SliceAssignmentT<(md::SliceType)3>>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)3>>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)3>>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::IgnoreCulling const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)3>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)3>>();
    unk_1EB83D450 = 0xCEB05E103001C9FELL;
    qword_1EB83D458 = "md::ls::SliceAssignmentT<md::SliceType::AllShadow>]";
    qword_1EB83D460 = 50;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>(void)::metadata >= 0x200)
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

uint64_t md::ita::PrepareMainSlice::operator()(uint64_t **a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v4 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  LODWORD(v51[0]) = 7;
  v53[0] = v51;
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4 + 1555, 7u);
  v51[0] = &unk_1F29EB7C8;
  v51[1] = a1;
  v51[2] = v5 + 3;
  v52 = v51;
  v6 = *(a2 + 8);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v6);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupID>(v6);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::IgnoreCulling>(v6);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)0>>(v6);
  v53[0] = v7;
  v53[1] = v8;
  v11 = 1;
  v12 = v7;
  v13 = v53;
  v53[2] = v9;
  v53[3] = v10;
  do
  {
    if (*(v53[v11] + 40) - *(v53[v11] + 32) < *(v12 + 40) - *(v12 + 32))
    {
      v12 = v53[v11];
      v13 = &v53[v11];
    }

    ++v11;
  }

  while (v11 != 4);
  v15 = *(*v13 + 32);
  v14 = *(*v13 + 40);
  v45 = v15;
  v46 = v14;
  v47 = v7;
  v48 = v8;
  v49 = v9;
  v50 = v10;
  while (v15 != v14 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v15, v15[1]))
  {
    v15 += 2;
    v45 = v15;
  }

  v16 = v45;
  if (v45 == v14)
  {
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
  }

  else
  {
    v17 = v47;
    v18 = v48;
    v19 = v49;
    v20 = v50;
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
    v24 = v46;
    do
    {
      v25 = v16[1];
      v26 = (v25 >> 3) & 0x1FF8;
      v27 = v25 & 0x3F;
      v28 = *(*(*(v17 + 8) + v26) + 4 * v27 + 2);
      v29 = *(*(v17 + 56) + ((v28 >> 3) & 0x1FF8));
      v30 = *(*(*(v18 + 8) + v26) + 4 * v27 + 2);
      v31 = *(*(v18 + 56) + ((v30 >> 3) & 0x1FF8));
      v32 = *(v19 + 32);
      v33 = *(*(*(v19 + 8) + v26) + 4 * v27 + 2);
      v34 = *(v20 + 32);
      v35 = *(*(*(v20 + 8) + v26) + 4 * v27 + 2);
      *(v21 + 104 * *v22 + 24) = *v16;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v29 + 8 * (v28 & 0x3F), v31 + 16 * (v30 & 0x3F), v32 + 4 * v33, v34 + 4 * v35);
      ++v23;
      v36 = v16 + 2;
      while (1)
      {
        v16 = v36;
        v45 = v36;
        if (v36 == v24)
        {
          break;
        }

        v37 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v36, v36[1]);
        v36 = v16 + 2;
        if (v37)
        {
          v38 = v16;
          goto LABEL_17;
        }
      }

      v38 = v24;
LABEL_17:
      ;
    }

    while (v38 != v14);
  }

  *(v21 + 104 * *v22 + 24) = -65536;
  v39 = v21 + 104 * *v22;
  v40 = *(v39 + 92);
  *(v39 + 92) = v40 + 1;
  *(v39 + 4 * v40 + 28) = v23;
  v41 = v21 + 104 * *v22;
  v43 = *(v41 + 92);
  v42 = (v41 + 92);
  if (v43 > 0xF)
  {
    *v42 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::IgnoreCulling const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&)>::~__value_func[abi:nn200100](v51);
}

uint64_t ecs2::ExecutionTask<>::service<md::RenderLayerProvider>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0xC94DD89A7B09BE9CLL)
  {
    a1 += 5;
    if (a1 == a2)
    {
      return 0;
    }
  }

  if (a1 == a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return v2;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)3>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)3>>();
    unk_1EB83D450 = 0xCEB05E103001C9FELL;
    qword_1EB83D458 = "md::ls::SliceAssignmentT<md::SliceType::AllShadow>]";
    qword_1EB83D460 = 50;
  }
}

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::SliceAssignmentT<(md::SliceType)4>>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)4>>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)4>>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

uint64_t md::ita::PrepareMeshRenderableBounds::operator()(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v141 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  if (!v6)
  {
    v7 = **a1;
    v8 = *v7;
    v9 = *(v7 + 8);
    if (v8 == v9)
    {
      goto LABEL_5;
    }

    while (*v8 != 0x22D45F5AAD4BF408)
    {
      v8 += 5;
      if (v8 == v9)
      {
        goto LABEL_5;
      }
    }

    if (v8 == v9)
    {
LABEL_5:
      v6 = 0;
    }

    else
    {
      v6 = v8[3];
      v10 = v8[4];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }
    }

    a1[1] = v6;
  }

  v11 = (**v6)(v6);
  v12 = md::LayoutContext::get<md::CameraContext>(*(v11 + 8));
  v13 = a1[2];
  if (!v13)
  {
    v14 = **a1;
    v15 = *v14;
    v16 = *(v14 + 8);
    if (v15 == v16)
    {
      goto LABEL_12;
    }

    while (*v15 != 0x41D4E9297E100630)
    {
      v13 = 0;
      v15 += 5;
      if (v15 == v16)
      {
        goto LABEL_15;
      }
    }

    if (v15 == v16)
    {
LABEL_12:
      v13 = 0;
    }

    else
    {
      v13 = v15[3];
      v109 = v15[4];
      if (v109)
      {
        atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v109);
      }
    }

LABEL_15:
    a1[2] = v13;
  }

  v116 = v13;
  if (gdc::ToCoordinateSystem(*(v12 + 3784)))
  {
    v132 = &unk_1F2A27A30;
    v133 = &v116;
    v134 = &v132;
    v17 = *(a2 + 8);
    v18 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v17);
    v19 = ecs2::BasicRegistry<void>::storage<md::ls::GeocentricBounds>(v17);
    v20 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)0>>(v17);
    v21 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableTransformConstantDataHandle>(v17);
    v22 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableBounds>(v17);
    v23 = ecs2::BasicRegistry<void>::storage<md::BoundData>(v17);
    v135 = v18;
    v136 = v19;
    v137 = v20;
    v138 = v21;
    v24 = 8;
    v25 = v18;
    v26 = &v135;
    v139 = v22;
    v140 = v23;
    do
    {
      if (*(*(&v135 + v24) + 40) - *(*(&v135 + v24) + 32) < *(v25 + 40) - *(v25 + 32))
      {
        v25 = *(&v135 + v24);
        v26 = (&v135 + v24);
      }

      v24 += 8;
    }

    while (v24 != 48);
    v27 = *(*v26 + 32);
    v28 = *(*v26 + 40);
    v117 = v27;
    v118 = v28;
    v119 = v18;
    v120 = v19;
    v121 = v20;
    v122 = v21;
    v123 = v22;
    v124 = v23;
    while (v27 != v28 && !ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::ls::GeocentricBounds const,md::ls::SliceAssignmentT<(md::SliceType)0> const,md::ls::MeshRenderableTransformConstantDataHandle const,md::ls::MeshRenderableBounds const,md::BoundData>(&v117, *v27, v27[1]))
    {
      v27 += 2;
      v117 = v27;
    }

    v68 = v117;
    if (v117 == v28)
    {
      _ZTWN4ecs27Runtime11_localStateE();
      v96 = _ZTWN4ecs27Runtime11_stackIndexE();
      v75 = 0;
    }

    else
    {
      v111 = a2;
      v69 = v119;
      v70 = v120;
      v71 = v121;
      v72 = v122;
      v73 = v123;
      v74 = v124;
      v115 = _ZTWN4ecs27Runtime11_localStateE();
      v113 = _ZTWN4ecs27Runtime11_stackIndexE();
      v75 = 0;
      v76 = v118;
      do
      {
        v77 = v68[1];
        v78 = (v77 >> 3) & 0x1FF8;
        v79 = v77 & 0x3F;
        v80 = *(*(*(v69 + 8) + v78) + 4 * v79 + 2);
        v81 = *(*(v69 + 56) + ((v80 >> 3) & 0x1FF8));
        v82 = *(*(*(v70 + 8) + v78) + 4 * v79 + 2);
        v83 = *(*(v70 + 56) + ((v82 >> 3) & 0x1FF8));
        v84 = *(v71 + 32);
        v85 = *(*(*(v72 + 8) + v78) + 4 * v79 + 2);
        v86 = *(*(v72 + 56) + ((v85 >> 3) & 0x1FF8));
        v87 = *(*(*(v73 + 8) + v78) + 4 * v79 + 2);
        v88 = *(*(v73 + 56) + ((v87 >> 3) & 0x1FF8));
        v89 = *(*(*(v74 + 8) + v78) + 4 * v79 + 2);
        v90 = *(*(v74 + 56) + ((v89 >> 3) & 0x1FF8));
        v91 = *(*(*(v71 + 8) + v78) + 4 * v79 + 2);
        *(v115 + 104 * *v113 + 24) = *v68;
        if (!v134)
        {
          goto LABEL_65;
        }

        (*(*v134 + 6))(v134, v81 + 8 * (v80 & 0x3F), v83 + 36 * (v82 & 0x3F), v84 + 4 * v91, v86 + 8 * (v85 & 0x3F), v88 + 24 * (v87 & 0x3F), v90 + 24 * (v89 & 0x3F));
        ++v75;
        v92 = v68 + 2;
        while (1)
        {
          v68 = v92;
          v117 = v92;
          if (v92 == v76)
          {
            break;
          }

          v93 = ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::ls::GeocentricBounds const,md::ls::SliceAssignmentT<(md::SliceType)0> const,md::ls::MeshRenderableTransformConstantDataHandle const,md::ls::MeshRenderableBounds const,md::BoundData>(&v117, *v92, v92[1]);
          v92 = v68 + 2;
          if (v93)
          {
            v94 = v68;
            goto LABEL_51;
          }
        }

        v94 = v76;
LABEL_51:
        ;
      }

      while (v94 != v28);
      v95 = *(v111 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>();
      *(v95 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>(void)::metadata) = *(v95 + 4096);
      v96 = v113;
      v97 = v115;
    }

    *(v97 + 104 * *v96 + 24) = -65536;
    v104 = v97 + 104 * *v96;
    v105 = *(v104 + 92);
    *(v104 + 92) = v105 + 1;
    *(v104 + 4 * v105 + 28) = v75;
    v106 = v97 + 104 * *v96;
    v108 = *(v106 + 92);
    v107 = (v106 + 92);
    if (v108 >= 0x10)
    {
      *v107 = 0;
    }

    return std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::GeocentricBounds const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::MeshRenderableTransformConstantDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &)>::~__value_func[abi:nn200100](&v132);
  }

  else
  {
    v132 = &unk_1F2A27A78;
    v133 = &v116;
    v134 = &v132;
    v29 = *(a3 + 8);
    v30 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v29);
    v31 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)0>>(v29);
    v32 = ecs2::BasicRegistry<void>::storage<md::ls::SharedRenderableDataHandle>(v29);
    v33 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableBounds>(v29);
    v34 = ecs2::BasicRegistry<void>::storage<md::BoundData>(v29);
    v135 = v30;
    v136 = v31;
    v137 = v32;
    v138 = v33;
    v35 = 8;
    v36 = v30;
    v37 = &v135;
    v139 = v34;
    do
    {
      if (*(*(&v135 + v35) + 40) - *(*(&v135 + v35) + 32) < *(v36 + 40) - *(v36 + 32))
      {
        v36 = *(&v135 + v35);
        v37 = (&v135 + v35);
      }

      v35 += 8;
    }

    while (v35 != 40);
    v38 = *(*v37 + 32);
    v39 = *(*v37 + 40);
    v125 = v38;
    v126 = v39;
    v127 = v30;
    v128 = v31;
    v129 = v32;
    v130 = v33;
    v131 = v34;
    while (v38 != v39 && !ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v125, *v38, v38[1]))
    {
      v38 += 2;
      v125 = v38;
    }

    v40 = v125;
    if (v125 == v39)
    {
      _ZTWN4ecs27Runtime11_localStateE();
      v66 = _ZTWN4ecs27Runtime11_stackIndexE();
      v46 = 0;
    }

    else
    {
      v110 = a3;
      v41 = v127;
      v42 = v128;
      v43 = v129;
      v44 = v130;
      v45 = v131;
      v114 = _ZTWN4ecs27Runtime11_localStateE();
      v112 = _ZTWN4ecs27Runtime11_stackIndexE();
      v46 = 0;
      v47 = v126;
      do
      {
        v48 = v40[1];
        v49 = v48 & 0x3F;
        v50 = (v48 >> 3) & 0x1FF8;
        v51 = *(*(*(v41 + 8) + v50) + 4 * v49 + 2);
        v52 = *(*(v41 + 56) + ((v51 >> 3) & 0x1FF8));
        v53 = *(v42 + 32);
        v54 = *(*(*(v43 + 8) + v50) + 4 * v49 + 2);
        v55 = *(*(v43 + 56) + ((v54 >> 3) & 0x1FF8));
        v56 = *(*(v42 + 8) + v50) + 4 * v49;
        v57 = *(*(*(v44 + 8) + v50) + 4 * v49 + 2);
        v58 = *(*(v44 + 56) + ((v57 >> 3) & 0x1FF8));
        v59 = *(*(*(v45 + 8) + v50) + 4 * v49 + 2);
        v60 = *(*(v45 + 56) + ((v59 >> 3) & 0x1FF8));
        v61 = *(v56 + 2);
        *(v114 + 104 * *v112 + 24) = *v40;
        if (!v134)
        {
LABEL_65:
          std::__throw_bad_function_call[abi:nn200100]();
        }

        (*(*v134 + 6))(v134, v52 + 8 * (v51 & 0x3F), v53 + 4 * v61, v55 + 8 * (v54 & 0x3F), v58 + 24 * (v57 & 0x3F), v60 + 24 * (v59 & 0x3F));
        ++v46;
        v62 = v40 + 2;
        while (1)
        {
          v40 = v62;
          v125 = v62;
          if (v62 == v47)
          {
            break;
          }

          v63 = ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v125, *v62, v62[1]);
          v62 = v40 + 2;
          if (v63)
          {
            v64 = v40;
            goto LABEL_41;
          }
        }

        v64 = v47;
LABEL_41:
        ;
      }

      while (v64 != v39);
      v65 = *(v110 + 8);
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>();
      *(v65 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::BoundData>(void)::metadata) = *(v65 + 4096);
      v66 = v112;
      v67 = v114;
    }

    *(v67 + 104 * *v66 + 24) = -65536;
    v98 = v67 + 104 * *v66;
    v99 = *(v98 + 92);
    *(v98 + 92) = v99 + 1;
    *(v98 + 4 * v99 + 28) = v46;
    v100 = v67 + 104 * *v66;
    v102 = *(v100 + 92);
    v101 = (v100 + 92);
    if (v102 >= 0x10)
    {
      *v101 = 0;
    }

    return std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)0> const&,md::ls::SharedRenderableDataHandle const&,md::ls::MeshRenderableBounds const&,md::BoundData &)>::~__value_func[abi:nn200100](&v132);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)4>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)4>>();
    *algn_1EB83D428 = 0xBDB1DC42A0C30FD6;
    qword_1EB83D430 = "md::ls::SliceAssignmentT<md::SliceType::CulledShadow>]";
    qword_1EB83D438 = 53;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)4>>();
    *algn_1EB83D428 = 0xBDB1DC42A0C30FD6;
    qword_1EB83D430 = "md::ls::SliceAssignmentT<md::SliceType::CulledShadow>]";
    qword_1EB83D438 = 53;
  }
}

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::SliceAssignmentT<(md::SliceType)5>>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)5>>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)5>>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

uint64_t ecs2::Runtime::_entities<md::ita::ApplyWantsDynamicShadowBounds,md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::MeshLayerTypeV const&>(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(a1);
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::RenderablePendingProcessing>(a1);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::MeshLayerTypeV>(a1);
  v36 = v2;
  v37 = v3;
  v38 = v4;
  v5 = 8;
  v6 = v2;
  v7 = &v36;
  do
  {
    if ((*(&v36 + v5))[5] - (*(&v36 + v5))[4] < *(v6 + 40) - *(v6 + 32))
    {
      v6 = *(&v36 + v5);
      v7 = (&v36 + v5);
    }

    v5 += 8;
  }

  while (v5 != 24);
  v8 = *(*v7 + 4);
  v9 = *(*v7 + 5);
  v29 = v8;
  v30 = v9;
  v31 = v2;
  v32 = v3;
  v33 = v4;
  while (v8 != v9 && !ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::MeshLayerTypeV const&>,std::tuple<>>::isValid(&v29))
  {
    v8 += 2;
    v29 = v8;
  }

  v10 = v29;
  if (v29 == v9)
  {
    v12 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = result;
    v15 = 0;
  }

  else
  {
    v11 = v33;
    v12 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = result;
    v15 = 0;
    v16 = v30;
    do
    {
      v17 = *(*(*(v11 + 8) + ((v10[1] >> 3) & 0x1FF8)) + 4 * (v10[1] & 0x3FLL) + 2);
      v18 = v17 & 0x3F;
      v19 = *(*(v11 + 56) + ((v17 >> 3) & 0x1FF8));
      *(v12 + 104 * *v14 + 24) = *v10;
      if ((*(v19 + v18) & 0xFE) == 2)
      {
        v20 = ecs2::ExecutionTaskContext::currentEntity(result);
        v35[0] = &unk_1F2A072C0;
        v35[1] = v20 << 32;
        v39 = &v36;
        v35[3] = v35;
        v36 = &unk_1F2A072C0;
        v37 = v20 << 32;
        v40 = 0;
        ecs2::Runtime::queueCommand();
        if (v40 != -1)
        {
          (off_1F2A072F8[v40])(&v34, &v36);
        }

        v40 = -1;
        result = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v35);
      }

      ++v15;
      while (1)
      {
        v21 = v10;
        v10 += 2;
        v29 = v10;
        if (v10 == v16)
        {
          break;
        }

        result = ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::MeshLayerTypeV const&>,std::tuple<>>::isValid(&v29);
        if (result)
        {
          v22 = v21 + 2;
          goto LABEL_20;
        }
      }

      v22 = v10;
      v10 = v16;
LABEL_20:
      v23 = v10 == v9;
      v10 = v22;
    }

    while (!v23);
  }

  *(v12 + 104 * *v14 + 24) = -65536;
  v24 = v12 + 104 * *v14;
  v25 = *(v24 + 92);
  *(v24 + 92) = v25 + 1;
  *(v24 + 4 * v25 + 28) = v15;
  v26 = v12 + 104 * *v14;
  v28 = *(v26 + 92);
  v27 = (v26 + 92);
  if (v28 > 0xF)
  {
    *v27 = 0;
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)5>>();
    unk_1EB83D400 = 0x2DFCB5932E0A2DE3;
    qword_1EB83D408 = "md::ls::SliceAssignmentT<md::SliceType::CulledDepthPrePass>]";
    qword_1EB83D410 = 59;
  }
}

uint64_t md::RenderLayerProviderWrapper::getCommandBuffer(void *a1)
{
  result = (*(*a1 + 24))(a1);
  if (result)
  {
    v3 = a1[1];
    v4 = v3[3];
    if (result < ((v3[4] - v4) >> 3) && ((v6 = *(v4 + 8 * result)) != 0 ? (v7 = (v6 ^ result) >> 32 == 0) : (v7 = 0), v7))
    {
      v5 = 8 * *(v4 + 8 * result) + v3[6];
    }

    else
    {
      v5 = v3[7];
    }

    return *v5;
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)5>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)5>>();
    unk_1EB83D400 = 0x2DFCB5932E0A2DE3;
    qword_1EB83D408 = "md::ls::SliceAssignmentT<md::SliceType::CulledDepthPrePass>]";
    qword_1EB83D410 = 59;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>(void)::metadata >= 0x200)
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

uint64_t std::__function::__func<md::ita::PrepareMainPassCommandBuffers::operator()(ecs2::Query<md::ls::PassToCommandBuffers &>)::$_0,std::allocator<md::ita::PrepareMainPassCommandBuffers::operator()(ecs2::Query<md::ls::PassToCommandBuffers &>)::$_0>,void ()(md::ls::PassToCommandBuffers &)>::operator()(uint64_t result, void *a2)
{
  if (*a2 == **(result + 8))
  {
    v2 = result;
    result = (*(***(result + 16) + 32))(**(result + 16));
    if (result)
    {
      v3 = result;
      result = (*(***(v2 + 16) + 48))(**(v2 + 16));
      *(v3 + 32) = *(result + 2752);
    }
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::SliceAssignmentT<(md::SliceType)6>>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)6>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)6>>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)6>>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)6>>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

void md::ita::ResolveMaterialEmissiveTexture::operator()(uint64_t **a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (!v2)
  {
    v2 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, *(**a1 + 8));
    a1[1] = v2;
  }

  v3 = (**v2)(v2);
  v4 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a1);
  v5 = md::LayoutContext::get<md::CameraContext>(*(v3 + 1));
  v10 = fmaxf(*(v5 + 3080) + *(v5 + 3076), 1.0);
  v9 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *,md::MaterialResourceStore *,mre::GGLResourceStore *>::service<md::MaterialResourceStore>(a1);
  v8 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *,md::MaterialResourceStore *,mre::GGLResourceStore *>::service<mre::GGLResourceStore>(a1);
  (*(*v4 + 48))(v4);
  md::LayoutContext::frameState(v3);
  v7 = *(v6 + 624);
  operator new();
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)6>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)6>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)6>>();
    unk_1EB83D3E0 = 0x30A3530A3A347BD0;
    qword_1EB83D3E8 = "md::ls::SliceAssignmentT<md::SliceType::CulledDepthPeeled>]";
    qword_1EB83D3F0 = 58;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)6>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)6>>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::SliceAssignmentT<(md::SliceType)7>>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)7>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)7>>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)7>>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)7>>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

float md::ita::ProcessRenderableForStyleGroundOcclusion::operator()(uint64_t **a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
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
      v10 = v4[4];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }
    }

LABEL_6:
    a1[2] = v2;
  }

  v6 = *((**v2)(v2) + 8);
  v14 = md::LayoutContext::get<md::CameraContext>(v6);
  v13 = fmaxf(*(v14 + 3080) + *(v14 + 3076), 1.0);
  v7 = md::LayoutContext::get<md::LightingLogicContext>(v6);
  if (v7)
  {
    v9 = *(v7 + 258);
    result = v7[58];
    v11 = *(v7 + 57);
    v12 = result;
    if (v9 == 1 && result >= 0.001)
    {
      operator new();
    }
  }

  return result;
}

void sub_1B2A735E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::UnitsPerMeter const&,md::ls::InView const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)6>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)6>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)6>>();
    unk_1EB83D3E0 = 0x30A3530A3A347BD0;
    qword_1EB83D3E8 = "md::ls::SliceAssignmentT<md::SliceType::CulledDepthPeeled>]";
    qword_1EB83D3F0 = 58;
  }
}

uint64_t geo::Pool<ggl::RenderTarget>::allocateSlab(uint64_t a1)
{
  v2 = malloc_type_malloc(352 * *(a1 + 24), 0x10F20402D49FE93uLL);
  result = std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(a1, v2);
  v4 = *(a1 + 40);
  v5 = &v2[352 * *(a1 + 24) - 352];
  if (v5 >= v2)
  {
    do
    {
      *v5 = v4;
      v4 = v5;
      v5 -= 352;
    }

    while (v5 >= v2);
    v4 = v5 + 352;
  }

  *(a1 + 40) = v4;
  return result;
}

void ecs2::Runtime::_entities<md::ita::CreateShadowPassRenderItems,md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)4> const&,md::ls::RenderableMeshVertexFormat const&,md::ls::TileType const&,md::ls::MeshLayerTypeV const&,md::ls::PendingProcessingShadow const&,md::ls::AssociationHandle *,md::ls::HasMeshHandle const*,md::ls::PositionScaleInfoConstantDataHandle const*,md::ls::ViewConstantDataHandle const*,md::ls::TransformConstantDataHandle const*,md::ls::IndexRange const*,md::ls::NormalsHandle const*,md::ls::InstanceTransformHandle const*,md::ls::UVsHandle const*,md::ls::NeedsZBias const*,md::ls::InstanceCount const*,md::ls::ElevationHandle const*,md::ls::ShadowConstantDataHandle const&,md::ls::IsMercator const*,md::ls::PreserveHeight const*,md::ls::SharedUniqueID const*>(uint64_t a1, uint64_t **a2)
{
  v93[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v3);
  v60 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)4>>(v3);
  v58 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshVertexFormat>(v3);
  v56 = ecs2::BasicRegistry<void>::storage<md::ls::TileType>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MeshLayerTypeV>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessingShadow>(v3);
  v67 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationHandle>(v3);
  HasMesh = ecs2::BasicRegistry<void>::storage<md::ls::HasMeshHandle>(v3);
  v64 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(v3);
  v63 = ecs2::BasicRegistry<void>::storage<md::ls::ViewConstantDataHandle>(v3);
  v62 = ecs2::BasicRegistry<void>::storage<md::ls::TransformConstantDataHandle>(v3);
  v61 = ecs2::BasicRegistry<void>::storage<md::ls::IndexRange>(v3);
  v59 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(v3);
  v57 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(v3);
  v55 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(v3);
  v54 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsZBias>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceCount>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(v3);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::ShadowConstantDataHandle>(v3);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(v3);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::PreserveHeight>(v3);
  v12 = ecs2::BasicRegistry<void>::storage<md::ls::SharedUniqueID>(v3);
  v13 = v5;
  *buf = v4;
  *&buf[8] = v60;
  *&buf[16] = v58;
  *&buf[24] = v56;
  *&v82 = v5;
  *(&v82 + 1) = v6;
  v14 = buf;
  v15 = 8;
  v16 = v4;
  *&v83 = v9;
  do
  {
    if (*(*&buf[v15] + 40) - *(*&buf[v15] + 32) < *(v16 + 40) - *(v16 + 32))
    {
      v16 = *&buf[v15];
      v14 = &buf[v15];
    }

    v15 += 8;
  }

  while (v15 != 56);
  v17 = *v14;
  v19 = *(v17 + 32);
  v18 = *(v17 + 40);
  *buf = v19;
  *&buf[8] = v18;
  *&buf[16] = v4;
  *&buf[24] = v60;
  *&v82 = v58;
  *(&v82 + 1) = v56;
  *&v83 = v13;
  *(&v83 + 1) = v6;
  *&v84 = v67;
  *(&v84 + 1) = HasMesh;
  *&v85 = v64;
  *(&v85 + 1) = v63;
  *&v86 = v62;
  *(&v86 + 1) = v61;
  *&v87 = v59;
  *(&v87 + 1) = v57;
  *&v88 = v55;
  *(&v88 + 1) = v54;
  *&v89 = v7;
  *(&v89 + 1) = v8;
  *&v90 = v9;
  *(&v90 + 1) = v10;
  *&v91 = v11;
  *(&v91 + 1) = v12;
  v65 = v18;
  while (v19 != v18 && !ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)4> const&,md::ls::RenderableMeshVertexFormat const&,md::ls::TileType const&,md::ls::MeshLayerTypeV const&,md::ls::PendingProcessingShadow const&,md::ls::AssociationHandle *,md::ls::HasMeshHandle const*,md::ls::PositionScaleInfoConstantDataHandle const*,md::ls::ViewConstantDataHandle const*,md::ls::TransformConstantDataHandle const*,md::ls::IndexRange const*,md::ls::NormalsHandle const*,md::ls::InstanceTransformHandle const*,md::ls::UVsHandle const*,md::ls::NeedsZBias const*,md::ls::InstanceCount const*,md::ls::ElevationHandle const*,md::ls::ShadowConstantDataHandle const&,md::ls::IsMercator const*,md::ls::PreserveHeight const*,md::ls::SharedUniqueID const*>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::ls::SliceAssignmentT<(md::SliceType)4> const,md::ls::RenderableMeshVertexFormat const,md::ls::TileType const,md::ls::MeshLayerTypeV const,md::ls::PendingProcessingShadow const,md::ls::ShadowConstantDataHandle const>(buf, *v19, v19[1]))
  {
    v19 += 2;
    *buf = v19;
    v18 = v65;
  }

  v76 = v90;
  v77 = v91;
  v78 = v92;
  v72 = v86;
  v73 = v87;
  v74 = v88;
  v75 = v89;
  v69[2] = v82;
  v69[3] = v83;
  v70 = v84;
  v71 = v85;
  v69[0] = *buf;
  v69[1] = *&buf[16];
  v20 = *buf;
  if (*buf == v65)
  {
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
  }

  else
  {
    v21 = _ZTWN4ecs27Runtime11_localStateE();
    v22 = _ZTWN4ecs27Runtime11_stackIndexE();
    v23 = 0;
    v53 = v70;
    v51 = v22;
    v52 = v21;
    do
    {
      v24 = v20[1];
      v25 = v24 >> 6;
      v26 = v24 & 0x3F;
      v27 = *v20;
      v28 = v53[1];
      if (v25 < (v53[2] - v28) >> 3 && (v29 = *(v28 + 8 * v25)) != 0 && *(v29 + 4 * v26) == v27)
      {
        v30 = *(v29 + 4 * v26 + 2);
        v31 = *(v53[7] + ((v30 >> 3) & 0x1FF8)) + 24 * (v30 & 0x3F);
      }

      else
      {
        v31 = 0;
      }

      v32 = *(*(&v77 + 1) + 8);
      if (v25 < (*(*(&v77 + 1) + 16) - v32) >> 3 && (v33 = *(v32 + 8 * v25)) != 0 && *(v33 + 4 * v26) == v27)
      {
        v34 = v31;
      }

      else
      {
        v34 = v31;
      }

      v68 = v23;
      *(v21 + 104 * *v22 + 24) = *v20;
      v35 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v36 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a2);
      v37 = ecs2::ExecutionTaskContext::currentEntity(v36);
      v93[0] = &unk_1F2A53158;
      v93[1] = v37 << 32;
      v93[3] = v93;
      *&buf[24] = buf;
      *buf = &unk_1F2A53158;
      *&buf[8] = v37 << 32;
      LODWORD(v82) = 0;
      ecs2::Runtime::queueCommand();
      if (v82 != -1)
      {
        (off_1F2A4F020[v82])(&v79, buf);
      }

      LODWORD(v82) = -1;
      std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v93);
      Entity = ecs2::ExecutionTaskContext::createEntity((*a2)[1]);
      if (v34)
      {
        createRenderItemForEntity(&v79, Entity, v35, v34);
        if (v80 != 1)
        {
          if (!v80)
          {
            *buf = v79;
            *&buf[16] = 5445;
            ecs2::addComponent<md::ls::RenderItemID>(*a2, Entity, buf);
          }

          std::__throw_bad_variant_access[abi:nn200100]();
        }
      }

      else
      {
        LOBYTE(v79) = 2;
      }

      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v39 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = "";
        if (v79 <= 2uLL)
        {
          v40 = off_1E7B3D650[v79];
        }

        *buf = 136315906;
        *&buf[4] = v40;
        *&buf[12] = 2080;
        *&buf[14] = "false";
        *&buf[22] = 2080;
        *&buf[24] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CreateRenderItems.mm";
        LOWORD(v82) = 1024;
        *(&v82 + 2) = 800;
        _os_log_impl(&dword_1B2754000, v39, OS_LOG_TYPE_ERROR, "Failed to create shadow render item (%s): Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
      }

      ecs2::ExecutionTaskContext::destroyEntity(*a2, Entity);
      v23 = v68 + 1;
      v41 = *(&v69[0] + 1);
      v42 = v20 + 2;
      v22 = v51;
      v21 = v52;
      while (1)
      {
        v20 = v42;
        *&v69[0] = v42;
        if (v42 == v41)
        {
          break;
        }

        v43 = ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)4> const&,md::ls::RenderableMeshVertexFormat const&,md::ls::TileType const&,md::ls::MeshLayerTypeV const&,md::ls::PendingProcessingShadow const&,md::ls::AssociationHandle *,md::ls::HasMeshHandle const*,md::ls::PositionScaleInfoConstantDataHandle const*,md::ls::ViewConstantDataHandle const*,md::ls::TransformConstantDataHandle const*,md::ls::IndexRange const*,md::ls::NormalsHandle const*,md::ls::InstanceTransformHandle const*,md::ls::UVsHandle const*,md::ls::NeedsZBias const*,md::ls::InstanceCount const*,md::ls::ElevationHandle const*,md::ls::ShadowConstantDataHandle const&,md::ls::IsMercator const*,md::ls::PreserveHeight const*,md::ls::SharedUniqueID const*>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::ls::SliceAssignmentT<(md::SliceType)4> const,md::ls::RenderableMeshVertexFormat const,md::ls::TileType const,md::ls::MeshLayerTypeV const,md::ls::PendingProcessingShadow const,md::ls::ShadowConstantDataHandle const>(v69, *v42, v42[1]);
        v42 = v20 + 2;
        if (v43)
        {
          v41 = v20;
          break;
        }
      }
    }

    while (v41 != v65);
    v44 = *(a1 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
    *(v44 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata) = *(v44 + 4096);
  }

  *(v21 + 104 * *v22 + 24) = -65536;
  v45 = v21 + 104 * *v22;
  v46 = *(v45 + 92);
  *(v45 + 92) = v46 + 1;
  *(v45 + 4 * v46 + 28) = v23;
  v47 = v21 + 104 * *v22;
  v49 = *(v47 + 92);
  v48 = (v47 + 92);
  if (v49 >= 0x10)
  {
    *v48 = 0;
  }
}

uint64_t *md::ita::PrepareUnflattenedCulledSlice::operator()(uint64_t **a1, uint64_t a2)
{
  v72[6] = *MEMORY[0x1E69E9840];
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
      v59 = v7[4];
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v59);
      }
    }

LABEL_6:
    a1[2] = v5;
  }

  v9 = (**v5)(v5);
  v10 = md::LayoutContext::get<md::ElevationContext>(*(v9 + 8));
  if (v10[4] <= 0.01 && *(v10 + 3) == 1)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  LODWORD(v70[0]) = 2;
  v72[0] = v70;
  result = std::__hash_table<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4 + 1555, 2u);
  if (v11)
  {
    v70[0] = &unk_1F29EBA30;
    v70[1] = a1;
    v70[2] = result + 3;
    v71 = v70;
    v13 = *(a2 + 8);
    v14 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(v13);
    v15 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayer>(v13);
    v16 = ecs2::BasicRegistry<void>::storage<md::ls::VisibilityGroupID>(v13);
    v17 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableVisibilityOptions>(v13);
    v18 = ecs2::BasicRegistry<void>::storage<md::ls::MeshLayerTypeV>(v13);
    v19 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)8>>(v13);
    v72[0] = v14;
    v72[1] = v15;
    v72[2] = v16;
    v72[3] = v17;
    v20 = 1;
    v21 = v14;
    v22 = v72;
    v72[4] = v18;
    v72[5] = v19;
    do
    {
      if (*(v72[v20] + 40) - *(v72[v20] + 32) < *(v21 + 40) - *(v21 + 32))
      {
        v21 = v72[v20];
        v22 = &v72[v20];
      }

      ++v20;
    }

    while (v20 != 6);
    v24 = *(*v22 + 32);
    v23 = *(*v22 + 40);
    v62 = v24;
    v63 = v23;
    v64 = v14;
    v65 = v15;
    v66 = v16;
    v67 = v17;
    v68 = v18;
    v69 = v19;
    while (v24 != v23 && !ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::IntendedSceneLayer const&,md::ls::VisibilityGroupID const&,md::ls::RenderableVisibilityOptions const&,md::ls::MeshLayerTypeV const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::ls::IntendedSceneLayer const,md::ls::VisibilityGroupID const,md::ls::RenderableVisibilityOptions const,md::ls::MeshLayerTypeV const,md::ls::SliceAssignmentT<(md::SliceType)8> const>(&v62, *v24, v24[1]))
    {
      v24 += 2;
      v62 = v24;
    }

    v25 = v62;
    if (v62 == v23)
    {
      _ZTWN4ecs27Runtime11_localStateE();
      v52 = _ZTWN4ecs27Runtime11_stackIndexE();
      v32 = 0;
    }

    else
    {
      v26 = v64;
      v27 = v65;
      v28 = v66;
      v29 = v67;
      v31 = v68;
      v30 = v69;
      v61 = _ZTWN4ecs27Runtime11_localStateE();
      v60 = _ZTWN4ecs27Runtime11_stackIndexE();
      v32 = 0;
      v33 = v63;
      do
      {
        v34 = v25[1];
        v35 = v34 & 0x3F;
        v36 = (v34 >> 3) & 0x1FF8;
        v37 = *(*(*(v26 + 8) + v36) + 4 * v35 + 2);
        v38 = *(*(v26 + 56) + ((v37 >> 3) & 0x1FF8));
        v39 = *(*(*(v27 + 8) + v36) + 4 * v35 + 2);
        v40 = *(*(v27 + 56) + ((v39 >> 3) & 0x1FF8));
        v41 = *(*(*(v28 + 8) + v36) + 4 * v35 + 2);
        v42 = *(*(v28 + 56) + ((v41 >> 3) & 0x1FF8));
        v43 = *(*(*(v29 + 8) + v36) + 4 * v35 + 2);
        v44 = *(*(v29 + 56) + ((v43 >> 3) & 0x1FF8));
        v45 = *(*(*(v31 + 8) + v36) + 4 * v35 + 2);
        v46 = *(*(v31 + 56) + ((v45 >> 3) & 0x1FF8));
        v47 = *(v30 + 32);
        v48 = *(*(*(v30 + 8) + v36) + 4 * v35 + 2);
        *(v61 + 104 * *v60 + 24) = *v25;
        if (!v71)
        {
          std::__throw_bad_function_call[abi:nn200100]();
        }

        (*(*v71 + 48))(v71, v38 + 8 * (v37 & 0x3F), v40 + (v39 & 0x3F), v42 + 16 * (v41 & 0x3F), v44 + 4 * (v43 & 0x3F), v46 + (v45 & 0x3F), v47 + 4 * v48);
        ++v32;
        v49 = v25 + 2;
        while (1)
        {
          v25 = v49;
          v62 = v49;
          if (v49 == v33)
          {
            break;
          }

          v50 = ecs2::ViewIterator<void,std::tuple<md::ls::MeshRenderableID const&,md::ls::IntendedSceneLayer const&,md::ls::VisibilityGroupID const&,md::ls::RenderableVisibilityOptions const&,md::ls::MeshLayerTypeV const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>,std::tuple<>>::containsAll<md::ls::MeshRenderableID const,md::ls::IntendedSceneLayer const,md::ls::VisibilityGroupID const,md::ls::RenderableVisibilityOptions const,md::ls::MeshLayerTypeV const,md::ls::SliceAssignmentT<(md::SliceType)8> const>(&v62, *v49, v49[1]);
          v49 = v25 + 2;
          if (v50)
          {
            v51 = v25;
            goto LABEL_28;
          }
        }

        v51 = v33;
LABEL_28:
        ;
      }

      while (v51 != v23);
      v52 = v60;
      v53 = v61;
    }

    *(v53 + 104 * *v52 + 24) = -65536;
    v54 = v53 + 104 * *v52;
    v55 = *(v54 + 92);
    *(v54 + 92) = v55 + 1;
    *(v54 + 4 * v55 + 28) = v32;
    v56 = v53 + 104 * *v52;
    v58 = *(v56 + 92);
    v57 = (v56 + 92);
    if (v58 > 0xF)
    {
      *v57 = 0;
    }

    return std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::IntendedSceneLayer const&,md::ls::VisibilityGroupID const&,md::ls::RenderableVisibilityOptions const&,md::ls::MeshLayerTypeV const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&)>::~__value_func[abi:nn200100](v70);
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)7>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)7>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)7>>();
    *algn_1EB83D3B8 = 0xAC1208F38C3ADC06;
    qword_1EB83D3C0 = "md::ls::SliceAssignmentT<md::SliceType::Main>]";
    qword_1EB83D3C8 = 45;
  }
}

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::SliceAssignmentT<(md::SliceType)8>>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)8>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)8>>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)8>>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)8>>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

void md::DetermineIfShouldRun_NewMaterials::operator()(uint64_t ****a1)
{
  v2 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, (**a1)[1]);
  v3 = (**v2)(v2);
  md::LayoutContext::frameState(v3);
  v5 = ***a1;
  if (*v5 != 0x41D4E9297E100630)
  {
    v6 = v5 + 5;
    do
    {
      v7 = *v6;
      v6 += 5;
    }

    while (v7 != 0x41D4E9297E100630);
    v5 = v6 - 5;
  }

  v8 = *(v4 + 632);
  v9 = v5[4];
  v10 = v5[3] + 12288;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v11 = *(v10 + 2033);
  *(v10 + 2033) = 0;
  v12 = *(v10 + 2032);
  v13 = v11 & (v12 ^ 1);
  v14 = v11 | v12;
  v15 = ~gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ClearResolvedMaterialAlbedoTextureFallbacks>();
  v16 = (*a1)[2];
  if ((v12 | v8))
  {
    ecs2::UtilityTaskContext::toggleTask(v16, v15, 1);
    updated = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateStyleTextureIfNecessary>();
    ecs2::UtilityTaskContext::toggleTask((*a1)[2], ~updated, 1);
    v18 = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateStyleTextureIfNecessaryPendingOnly>();
    ecs2::UtilityTaskContext::toggleTask((*a1)[2], ~v18, 0);
    v19 = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ResolveRenderableAlbedoTextureFallbacks>();
  }

  else
  {
    ecs2::UtilityTaskContext::toggleTask(v16, v15, 0);
    v20 = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ResolveRenderableAlbedoTextureFallbacks>();
    ecs2::UtilityTaskContext::toggleTask((*a1)[2], ~v20, 0);
    v21 = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateStyleTextureIfNecessary>();
    ecs2::UtilityTaskContext::toggleTask((*a1)[2], ~v21, 0);
    v19 = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateStyleTextureIfNecessaryPendingOnly>();
  }

  ecs2::UtilityTaskContext::toggleTask((*a1)[2], ~v19, 1);
  v22 = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ResolveRenderableAlbedoTextureFallbacksForPendingProcessing>();
  ecs2::UtilityTaskContext::toggleTask((*a1)[2], ~v22, ((v12 | v8) & 1) == 0);
  v23 = v14 | v8;
  v24 = (v14 | v8) & v13;
  v25 = v23 & v12;
  v26 = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateStyleEmmisiveColorPendingOnly>();
  ecs2::UtilityTaskContext::toggleTask((*a1)[2], ~v26, v24 & 1);
  v27 = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::UpdateStyleEmmisiveColor>();
  ecs2::UtilityTaskContext::toggleTask((*a1)[2], ~v27, v25 & 1);
  v28 = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ProcessMaterialPlanarParametersPendingOnly>();
  ecs2::UtilityTaskContext::toggleTask((*a1)[2], ~v28, v24 & 1);
  v29 = gdc::FamilyInfo<ecs2::internal::TaskIdFamily,unsigned short>::getId<md::ita::ProcessMaterialPlanarParameters>();
  ecs2::UtilityTaskContext::toggleTask((*a1)[2], ~v29, v25 & 1);
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v30 = GEOGetVectorKitVKDefaultLog_log;
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
  if (v13)
  {
    if (v31)
    {
      v36 = 0;
      v32 = "[DetermineIf][StyleZChanged] Process only pending";
      v33 = &v36;
LABEL_20:
      _os_log_impl(&dword_1B2754000, v30, OS_LOG_TYPE_DEBUG, v32, v33, 2u);
    }
  }

  else if (v14)
  {
    if (v31)
    {
      v35 = 0;
      v32 = "[DetermineIf][StyleZChanged] Process all";
      v33 = &v35;
      goto LABEL_20;
    }
  }

  else if (v31)
  {
    v34 = 0;
    v32 = "[DetermineIf][StyleZChanged] Ignore all";
    v33 = &v34;
    goto LABEL_20;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)7>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)7>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)7>>();
    *algn_1EB83D3B8 = 0xAC1208F38C3ADC06;
    qword_1EB83D3C0 = "md::ls::SliceAssignmentT<md::SliceType::Main>]";
    qword_1EB83D3C8 = 45;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)7>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)7>>(void)::metadata >= 0x200)
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

uint64_t ecs2::ExecutionTask<>::service<mre::GGLResourceStore>(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*a1 != 0x348A0B0E758C07C2)
  {
    a1 += 5;
    if (a1 == a2)
    {
      return 0;
    }
  }

  if (a1 == a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return v2;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)8>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)8>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)8>>();
    *algn_1EB83D398 = 0xFB8BCB8E983A05B1;
    qword_1EB83D3A0 = "md::ls::SliceAssignmentT<md::SliceType::CulledMainNotFiltered>]";
    qword_1EB83D3A8 = 62;
  }
}

uint64_t md::ita::ProcessMaterialsForUpdatedStyle::operator()(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v6 = a1[1];
  if (!v6)
  {
    v7 = **a1;
    v8 = *v7;
    v9 = *(v7 + 8);
    if (v8 == v9)
    {
      goto LABEL_5;
    }

    while (*v8 != 0x4EDAD23DFB014132)
    {
      v8 += 5;
      if (v8 == v9)
      {
        goto LABEL_5;
      }
    }

    if (v8 == v9)
    {
LABEL_5:
      v6 = 0;
    }

    else
    {
      v6 = v8[3];
      v10 = v8[4];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }
    }

    a1[1] = v6;
  }

  v75 = v6;
  v11 = a1[2];
  if (!v11)
  {
    v12 = **a1;
    v13 = *v12;
    v14 = *(v12 + 8);
    if (v13 == v14)
    {
      goto LABEL_14;
    }

    while (*v13 != 0x22D45F5AAD4BF408)
    {
      v13 += 5;
      if (v13 == v14)
      {
        goto LABEL_14;
      }
    }

    if (v13 == v14)
    {
LABEL_14:
      v11 = 0;
    }

    else
    {
      v11 = v13[3];
      v15 = v13[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v15);
      }
    }

    a1[2] = v11;
  }

  v16 = (**v11)(v11);
  v17 = md::LayoutContext::get<md::CameraContext>(*(v16 + 8));
  v74 = fmaxf(*(v17 + 3080) + *(v17 + 3076), 1.0);
  v83 = &unk_1F2A2DE78;
  v84 = &v75;
  v85 = &v74;
  v86 = &v83;
  v18 = *(a2 + 8);
  v19 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v18);
  v20 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialVisibilityOptionsHandle>(v18);
  v21 = v20;
  if (*(v20 + 40) - *(v20 + 32) >= *(v19 + 40) - *(v19 + 32))
  {
    v22 = v19;
  }

  else
  {
    v22 = v20;
  }

  v23 = *(v22 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v80, *(v22 + 32), v23, v19, v20);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v79, v23, v23, v19, v21);
  v24 = v80;
  v78 = v82;
  v76 = v80;
  v77 = v81;
  v25 = v79[0];
  v73 = a3;
  if (v80 == v79[0])
  {
    v27 = _ZTWN4ecs27Runtime11_localStateE();
    v28 = _ZTWN4ecs27Runtime11_stackIndexE();
    v29 = 0;
  }

  else
  {
    v26 = v81;
    v27 = _ZTWN4ecs27Runtime11_localStateE();
    v28 = _ZTWN4ecs27Runtime11_stackIndexE();
    v29 = 0;
    v30 = *(&v80 + 1);
    do
    {
      v31 = v24[1];
      v32 = (v31 >> 3) & 0x1FF8;
      v33 = v31 & 0x3F;
      v34 = *(*(*(v26 + 8) + v32) + 4 * v33 + 2);
      v35 = *(*(v26 + 56) + ((v34 >> 3) & 0x1FF8));
      v36 = *(*(*(*(&v26 + 1) + 8) + v32) + 4 * v33 + 2);
      v37 = *(*(*(&v26 + 1) + 56) + ((v36 >> 3) & 0x1FF8));
      *(v27 + 104 * *v28 + 24) = *v24;
      if (!v86)
      {
LABEL_48:
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v86 + 6))(v86, v35 + 24 * (v34 & 0x3F), v37 + 16 * (v36 & 0x3F));
      ++v29;
      v38 = v24 + 2;
      do
      {
        v24 = v38;
        *&v80 = v38;
        if (v38 == v30)
        {
          break;
        }

        v39 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v80, *v38, v38[1]);
        v38 = v24 + 2;
      }

      while (!v39);
    }

    while (v24 != v25);
    v40 = *(a2 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>();
    *(v40 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialVisibilityOptionsHandle>(void)::metadata) = *(v40 + 4096);
  }

  *(v27 + 104 * *v28 + 24) = -65536;
  v41 = v27 + 104 * *v28;
  v42 = *(v41 + 92);
  *(v41 + 92) = v42 + 1;
  *(v41 + 4 * v42 + 28) = v29;
  v43 = v27 + 104 * *v28;
  v45 = *(v43 + 92);
  v44 = (v43 + 92);
  if (v45 >= 0x10)
  {
    *v44 = 0;
  }

  std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialVisibilityOptionsHandle &)>::~__value_func[abi:nn200100](&v83);
  v83 = &unk_1F2A2DEC0;
  v84 = &v75;
  v85 = &v74;
  v86 = &v83;
  v46 = *(a3 + 8);
  v47 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v46);
  v48 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialZIndexHandle>(v46);
  v49 = v48;
  if (*(v48 + 40) - *(v48 + 32) >= *(v47 + 40) - *(v47 + 32))
  {
    v50 = v47;
  }

  else
  {
    v50 = v48;
  }

  v51 = *(v50 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v80, *(v50 + 32), v51, v47, v48);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v79, v51, v51, v47, v49);
  v52 = v80;
  v78 = v82;
  v76 = v80;
  v77 = v81;
  v53 = v79[0];
  if (v80 == v79[0])
  {
    v54 = 0;
  }

  else
  {
    v54 = 0;
    v55 = v81;
    v56 = *(&v80 + 1);
    do
    {
      v57 = v52[1];
      v58 = (v57 >> 3) & 0x1FF8;
      v59 = v57 & 0x3F;
      v60 = *(*(*(v55 + 8) + v58) + 4 * v59 + 2);
      v61 = *(*(v55 + 56) + ((v60 >> 3) & 0x1FF8));
      v62 = *(*(*(*(&v55 + 1) + 8) + v58) + 4 * v59 + 2);
      v63 = *(*(*(&v55 + 1) + 56) + ((v62 >> 3) & 0x1FF8));
      *(v27 + 104 * *v28 + 24) = *v52;
      if (!v86)
      {
        goto LABEL_48;
      }

      (*(*v86 + 6))(v86, v61 + 24 * (v60 & 0x3F), v63 + 24 * (v62 & 0x3F));
      ++v54;
      v64 = v52 + 2;
      do
      {
        v52 = v64;
        *&v80 = v64;
        if (v64 == v56)
        {
          break;
        }

        v65 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v80, *v64, v64[1]);
        v64 = v52 + 2;
      }

      while (!v65);
    }

    while (v52 != v53);
    v66 = *(v73 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>();
    *(v66 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueMaterialZIndexHandle>(void)::metadata) = *(v66 + 4096);
  }

  *(v27 + 104 * *v28 + 24) = -65536;
  v67 = v27 + 104 * *v28;
  v68 = *(v67 + 92);
  *(v67 + 92) = v68 + 1;
  *(v67 + 4 * v68 + 28) = v54;
  v69 = v27 + 104 * *v28;
  v71 = *(v69 + 92);
  v70 = (v69 + 92);
  if (v71 >= 0x10)
  {
    *v70 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueMaterialZIndexHandle &)>::~__value_func[abi:nn200100](&v83);
}

char *ecs2::Runtime::_entities<md::ita::ApplyAlbedoTint,md::ls::InView const&,md::ls::SharedColorDataHandle const&,md::ls::UniqueColorDataHandle const*,md::ls::ColorDataHandle &,md::ls::AlbedoTintColor const&>(uint64_t a1, uint64_t **a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::InView>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedColorDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueColorDataHandle>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::ColorDataHandle>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::AlbedoTintColor>(v3);
  *&v9 = v4;
  *(&v9 + 1) = v5;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v60[0] = v9;
  v60[1] = v10;
  v11 = 8;
  v12 = v4;
  v13 = v60;
  do
  {
    if (*(*(v60 + v11) + 40) - *(*(v60 + v11) + 32) < *(v12 + 40) - *(v12 + 32))
    {
      v12 = *(v60 + v11);
      v13 = v60 + v11;
    }

    v11 += 8;
  }

  while (v11 != 32);
  v15 = *(*v13 + 32);
  v14 = *(*v13 + 40);
  v53 = v15;
  v54 = v14;
  v55 = v4;
  v56 = v5;
  v57 = v6;
  v58 = v7;
  v59 = v8;
  v52 = v14;
  while (v15 != v14 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::SharedColorDataHandle const&,md::ls::UniqueColorDataHandle const*,md::ls::ColorDataHandle &,md::ls::AlbedoTintColor const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::SharedColorDataHandle const,md::ls::ColorDataHandle,md::ls::AlbedoTintColor const>(&v53, *v15, v15[1]))
  {
    v15 += 2;
    v53 = v15;
    v14 = v52;
  }

  v16 = v53;
  if (v53 == v52)
  {
    v17 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v19 = 0;
  }

  else
  {
    v48 = v58;
    v49 = v56;
    v46 = a1;
    v47 = v59;
    v17 = _ZTWN4ecs27Runtime11_localStateE();
    v18 = _ZTWN4ecs27Runtime11_stackIndexE();
    v19 = 0;
    v20 = v54;
    v51 = v18;
    do
    {
      v21 = v16[1];
      v22 = (v21 >> 3) & 0x1FF8;
      v23 = v21 & 0x3F;
      v24 = *(*(*(v49 + 8) + v22) + 4 * v23 + 2);
      v25 = v24 & 0x3F;
      v26 = *(*(v49 + 56) + ((v24 >> 3) & 0x1FF8));
      v27 = *(*(*(v48 + 8) + v22) + 4 * v23 + 2);
      v28 = v27 & 0x3F;
      v29 = *(*(v48 + 56) + ((v27 >> 3) & 0x1FF8));
      v30 = *(*(*(v47 + 8) + v22) + 4 * v23 + 2);
      v31 = (*(*(v47 + 56) + ((v30 >> 3) & 0x1FF8)) + 16 * (v30 & 0x3F));
      v32 = v17;
      *(v17 + 104 * *v18 + 24) = *v16;
      v33 = ecs2::ExecutionTask<md::MaterialResourceStore *>::service<md::MaterialResourceStore>(a2);
      ColorData = md::MaterialResourceStore::getColorData(v33, *(v26 + 8 * v25));
      v35 = md::MaterialResourceStore::getColorData(v33, *(v29 + 8 * v28));
      *v35 = *ColorData + ((*v31 - *ColorData) * v31[3]);
      v35[1] = ColorData[1] + ((v31[1] - ColorData[1]) * v31[3]);
      v35[2] = ColorData[2] + ((v31[2] - ColorData[2]) * v31[3]);
      ++v19;
      v36 = v16 + 2;
      while (1)
      {
        v16 = v36;
        v53 = v36;
        if (v36 == v20)
        {
          break;
        }

        v37 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::SharedColorDataHandle const&,md::ls::UniqueColorDataHandle const*,md::ls::ColorDataHandle &,md::ls::AlbedoTintColor const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::SharedColorDataHandle const,md::ls::ColorDataHandle,md::ls::AlbedoTintColor const>(&v53, *v36, v36[1]);
        v36 = v16 + 2;
        if (v37)
        {
          v38 = v16;
          goto LABEL_16;
        }
      }

      v38 = v20;
LABEL_16:
      v18 = v51;
      v17 = v32;
    }

    while (v38 != v52);
    v39 = *(v46 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>();
    result = v51;
    *(v39 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>(void)::metadata) = *(v39 + 4096);
  }

  *(v17 + 104 * *result + 24) = -65536;
  v41 = v17 + 104 * *result;
  v42 = *(v41 + 92);
  *(v41 + 92) = v42 + 1;
  *(v41 + 4 * v42 + 28) = v19;
  v43 = v17 + 104 * *result;
  v45 = *(v43 + 92);
  v44 = (v43 + 92);
  if (v45 >= 0x10)
  {
    *v44 = 0;
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)8>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)8>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SliceAssignmentT<(md::SliceType)8>>();
    *algn_1EB83D398 = 0xFB8BCB8E983A05B1;
    qword_1EB83D3A0 = "md::ls::SliceAssignmentT<md::SliceType::CulledMainNotFiltered>]";
    qword_1EB83D3A8 = 62;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)8>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)8>>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::RequiresDepthPeel>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresDepthPeel>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresDepthPeel>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

uint64_t md::ita::PrepareFlyoverTransformConstantDataHandle::operator()(uint64_t **a1, uint64_t a2)
{
  v59[3] = *MEMORY[0x1E69E9840];
  v51 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v4 = a1[2];
  if (!v4)
  {
    v5 = **a1;
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
      v46 = v6[4];
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v46);
      }
    }

LABEL_6:
    a1[2] = v4;
  }

  v8 = (**v4)(v4);
  v9 = md::LayoutContext::camera(v8);
  gdc::CameraView::geocentricCameraView(v49, v9);
  geo::RigidTransform<double,double>::inverse(v57, &v50);
  geo::RigidTransform<double,double>::toMatrix(v48, v57);
  v57[0] = &unk_1F2A1D550;
  v57[1] = &v51;
  v57[2] = v48;
  v58 = v57;
  v10 = *(a2 + 8);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTransformConstantDataHandle>(v10);
  v12 = ecs2::BasicRegistry<void>::storage<md::ls::ModelTransformData>(v10);
  v13 = ecs2::BasicRegistry<void>::storage<md::ls::GlobeMatrix>(v10);
  v59[0] = v11;
  v59[1] = v12;
  v14 = 1;
  v15 = v11;
  v16 = v59;
  v59[2] = v13;
  do
  {
    if (*(v59[v14] + 40) - *(v59[v14] + 32) < *(v15 + 40) - *(v15 + 32))
    {
      v15 = v59[v14];
      v16 = &v59[v14];
    }

    ++v14;
  }

  while (v14 != 3);
  v17 = *(*v16 + 32);
  v18 = *(*v16 + 40);
  v52 = v17;
  v53 = v18;
  v54 = v11;
  v55 = v12;
  v56 = v13;
  while (v17 != v18 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v52, *v17, v17[1]))
  {
    v17 += 2;
    v52 = v17;
  }

  v19 = v52;
  if (v52 == v18)
  {
    v23 = _ZTWN4ecs27Runtime11_localStateE();
    v24 = _ZTWN4ecs27Runtime11_stackIndexE();
    v25 = 0;
  }

  else
  {
    v47 = a2;
    v20 = v54;
    v21 = v55;
    v22 = v56;
    v23 = _ZTWN4ecs27Runtime11_localStateE();
    v24 = _ZTWN4ecs27Runtime11_stackIndexE();
    v25 = 0;
    v26 = v53;
    do
    {
      v27 = v19[1];
      v28 = v27 & 0x3F;
      v29 = (v27 >> 3) & 0x1FF8;
      v30 = *(*(*(v20 + 8) + v29) + 4 * v28 + 2);
      v31 = *(*(v20 + 56) + ((v30 >> 3) & 0x1FF8));
      v32 = *(*(*(v21 + 8) + v29) + 4 * v28 + 2);
      v33 = *(*(v21 + 56) + ((v32 >> 3) & 0x1FF8));
      v34 = *(*(*(v22 + 8) + v29) + 4 * v28 + 2);
      v35 = *(*(v22 + 56) + ((v34 >> 3) & 0x1FF8));
      *(v23 + 104 * *v24 + 24) = *v19;
      if (!v58)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v58 + 48))(v58, v31 + 8 * (v30 & 0x3F), v33 + 48 * (v32 & 0x3F), v35 + 8 * (v34 & 0x3F));
      ++v25;
      v36 = v19 + 2;
      while (1)
      {
        v19 = v36;
        v52 = v36;
        if (v36 == v26)
        {
          break;
        }

        v37 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v52, *v36, v36[1]);
        v36 = v19 + 2;
        if (v37)
        {
          v38 = v19;
          goto LABEL_23;
        }
      }

      v38 = v26;
LABEL_23:
      ;
    }

    while (v38 != v18);
    v39 = *(v47 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>();
    *(v39 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverCommonTransformConstantDataHandle>(void)::metadata) = *(v39 + 4096);
  }

  *(v23 + 104 * *v24 + 24) = -65536;
  v40 = v23 + 104 * *v24;
  v41 = *(v40 + 92);
  *(v40 + 92) = v41 + 1;
  *(v40 + 4 * v41 + 28) = v25;
  v42 = v23 + 104 * *v24;
  v44 = *(v42 + 92);
  v43 = (v42 + 92);
  if (v44 >= 0x10)
  {
    *v43 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::FlyoverCommonTransformConstantDataHandle &,md::ls::ModelTransformData const&,md::ls::GlobeMatrix const&)>::~__value_func[abi:nn200100](v57);
}

uint64_t md::ita::UpdateTilePerPoint::operator()(uint64_t **a1, uint64_t a2)
{
  v55[3] = *MEMORY[0x1E69E9840];
  v47 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v4 = a1[2];
  if (!v4)
  {
    v5 = **a1;
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
      v45 = v6[4];
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v45);
      }
    }

LABEL_6:
    a1[2] = v4;
  }

  v8 = (**v4)(v4);
  v46 = md::LayoutContext::get<md::CameraContext>(*(v8 + 8));
  v53[0] = &unk_1F2A43398;
  v53[1] = &v47;
  v53[2] = &v46;
  v54 = v53;
  v9 = *(a2 + 8);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::BaseMapTileHandle>(v9);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(v9);
  v12 = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableDataHandle>(v9);
  v55[0] = v10;
  v55[1] = v11;
  v13 = 1;
  v14 = v10;
  v15 = v55;
  v55[2] = v12;
  do
  {
    if (*(v55[v13] + 40) - *(v55[v13] + 32) < *(v14 + 40) - *(v14 + 32))
    {
      v14 = v55[v13];
      v15 = &v55[v13];
    }

    ++v13;
  }

  while (v13 != 3);
  v17 = *(*v15 + 32);
  v16 = *(*v15 + 40);
  v48 = v17;
  v49 = v16;
  v50 = v10;
  v51 = v11;
  v52 = v12;
  while (v17 != v16 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v48, *v17, v17[1]))
  {
    v17 += 2;
    v48 = v17;
  }

  v18 = v48;
  if (v48 == v16)
  {
    v22 = _ZTWN4ecs27Runtime11_localStateE();
    v23 = _ZTWN4ecs27Runtime11_stackIndexE();
    v24 = 0;
  }

  else
  {
    v19 = v50;
    v20 = v51;
    v21 = v52;
    v22 = _ZTWN4ecs27Runtime11_localStateE();
    v23 = _ZTWN4ecs27Runtime11_stackIndexE();
    v24 = 0;
    v25 = v49;
    do
    {
      v26 = v18[1];
      v27 = v26 & 0x3F;
      v28 = (v26 >> 3) & 0x1FF8;
      v29 = *(*(*(v19 + 8) + v28) + 4 * v27 + 2);
      v30 = *(*(v19 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(v20 + 32);
      v32 = *(*(v20 + 8) + v28) + 4 * v27;
      v33 = *(*(*(v21 + 8) + v28) + 4 * v27 + 2);
      v34 = *(*(v21 + 56) + ((v33 >> 3) & 0x1FF8));
      v35 = *(v32 + 2);
      *(v22 + 104 * *v23 + 24) = *v18;
      if (!v54)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v54 + 48))(v54, v30 + 8 * (v29 & 0x3F), v31 + 4 * v35, v34 + 8 * (v33 & 0x3F));
      ++v24;
      v36 = v18 + 2;
      while (1)
      {
        v18 = v36;
        v48 = v36;
        if (v36 == v25)
        {
          break;
        }

        v37 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v48, *v36, v36[1]);
        v36 = v18 + 2;
        if (v37)
        {
          v38 = v18;
          goto LABEL_23;
        }
      }

      v38 = v25;
LABEL_23:
      ;
    }

    while (v38 != v16);
  }

  *(v22 + 104 * *v23 + 24) = -65536;
  v39 = v22 + 104 * *v23;
  v40 = *(v39 + 92);
  *(v39 + 92) = v40 + 1;
  *(v39 + 4 * v40 + 28) = v24;
  v41 = v22 + 104 * *v23;
  v43 = *(v41 + 92);
  v42 = (v41 + 92);
  if (v43 > 0xF)
  {
    *v42 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TileRenderableDataHandle const&)>::~__value_func[abi:nn200100](v53);
}

void sub_1B2A7688C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(md::ls::BaseMapTileHandle const&,md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable> const&,md::ls::TileRenderableDataHandle const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresDepthPeel>();
    unk_1EB83D250 = 0xCB7F6519084BB4D0;
    qword_1EB83D258 = "md::ls::RequiresDepthPeel]";
    qword_1EB83D260 = 25;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresDepthPeel>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresDepthPeel>();
    unk_1EB83D250 = 0xCB7F6519084BB4D0;
    qword_1EB83D258 = "md::ls::RequiresDepthPeel]";
    qword_1EB83D260 = 25;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::InView>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InView>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InView>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::InView>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::InView>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueGradientMaskDataHandle const&,md::ls::MaterialPendingProcessing const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::InView>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InView>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InView>();
    unk_1EB83B940 = 0xA219A074B7259E0FLL;
    qword_1EB83B948 = "md::ls::InView]";
    qword_1EB83B950 = 14;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InView>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InView>(void)::metadata >= 0x200)
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

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFlyoverTransformConstantDataHandle>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFlyoverTransformConstantDataHandle>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::PrepareFlyoverTransformConstantDataHandle::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InView>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InView>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::InView>();
    unk_1EB83B940 = 0xA219A074B7259E0FLL;
    qword_1EB83B948 = "md::ls::InView]";
    qword_1EB83B950 = 14;
  }
}

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::ShouldSkipRender>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>(void)::metadata;
  ShouldSkip = ecs2::BasicRegistry<void>::storage<md::ls::ShouldSkipRender>(a1);
  v4 = *(ShouldSkip + 32);
  v5 = *(ShouldSkip + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::ShouldSkipRender>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsRebuildingRenderables>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SupportsRebuildingRenderables>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[276];
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShouldSkipRender>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ShouldSkipRender>();
    *algn_1EB83D4E8 = 0x22E5462B4C348FD9;
    qword_1EB83D4F0 = "md::ls::ShouldSkipRender]";
    qword_1EB83D4F8 = 24;
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls29SupportsRebuildingRenderablesEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1ABF8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29SupportsRebuildingRenderablesEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1ABF8;
  a2[1] = v2;
  return result;
}

void md::ita::PrepareRenderableData::operator()(uint64_t **a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (!v2)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0x22D45F5AAD4BF408)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v2 = 0;
    }

    else
    {
      v2 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[1] = v2;
  }

  v7 = (**v2)(v2);
  v8 = *(v7 + 8);
  v9 = md::LayoutContext::get<md::CameraContext>(v8);
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
      v22 = v12[4];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v22);
      }
    }

LABEL_15:
    a1[2] = v10;
    v8 = *(v7 + 8);
  }

  v34 = v10;
  v14 = *(v9 + 5592);
  if (!v14)
  {
    v14 = v9;
  }

  v15 = (v14 + 808);
  v16 = v15[5];
  v30 = v15[4];
  v31 = v16;
  v17 = v15[7];
  v32 = v15[6];
  v33 = v17;
  v18 = v15[1];
  v26 = *v15;
  v27 = v18;
  v19 = v15[3];
  v28 = v15[2];
  v29 = v19;
  v25 = gdc::ToCoordinateSystem(*(v9 + 3784));
  v20 = md::LayoutContext::get<md::ElevationContext>(v8);
  v21 = *(v20 + 4);
  v23 = *(v20 + 5);
  v24 = v21;
  operator new();
}

char *ecs2::Runtime::_entities<md::ita::CollectMaterialColorData,md::ls::UniqueMaterialData const&,md::ls::UniqueColorDataHandle &,md::ls::SharedColorDataHandle *,md::ls::ColorDataHandle *>(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueMaterialData>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueColorDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::SharedColorDataHandle>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::ColorDataHandle>(v3);
  *&v8 = v4;
  *(&v8 + 1) = v5;
  if (*(v5 + 40) - *(v5 + 32) >= *(v4 + 40) - *(v4 + 32))
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v11 = *(v9 + 32);
  v10 = *(v9 + 40);
  v67.i64[0] = v11;
  v67.i64[1] = v10;
  v68 = v8;
  *&v69 = v6;
  *(&v69 + 1) = v7;
  v62 = v10;
  while (v11 != v10 && !ecs2::ViewIterator<void,std::tuple<md::ls::UniqueMaterialData const&,md::ls::UniqueColorDataHandle &,md::ls::SharedColorDataHandle *,md::ls::ColorDataHandle *>,std::tuple<>>::isValid(&v67))
  {
    v11 += 4;
    v67.i64[0] = v11;
    v10 = v62;
  }

  v63 = v67;
  v64 = v68;
  v65 = v69;
  v66 = v70;
  v12 = v67.i64[0];
  if (v67.i64[0] != v62)
  {
    v59 = *(&v64 + 1);
    v60 = v64;
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    v14 = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
    v16 = v63.i64[1];
    __asm { FMOV            V0.4S, #1.0 }

    v57 = _Q0;
    v58 = v14;
    while (1)
    {
      v22 = *(v12 + 2);
      v23 = (v22 >> 3) & 0x1FF8;
      v24 = v22 & 0x3F;
      v25 = *(*(*(v60 + 8) + v23) + 4 * v24 + 2);
      v26 = *(*(v60 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v59 + 8) + v23) + 4 * v24 + 2);
      v28 = *(*(v59 + 56) + ((v27 >> 3) & 0x1FF8));
      *(v13 + 104 * *v14 + 24) = *v12;
      v29 = a2[1];
      if (!v29)
      {
        v29 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a2, *(**a2 + 8));
        a2[1] = v29;
      }

      v30 = (v26 + 24 * (v25 & 0x3F));
      v31 = (**v29)(v29);
      v32 = md::LayoutContext::get<md::CameraContext>(*(v31 + 8));
      v33 = *(v32 + 3076);
      v34 = *(v32 + 3080);
      v35 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::MaterialResourceStore *>::service<md::MaterialResourceStore>(a2);
      md::MaterialResourceStore::getMaterial(&v72, v35, *v30);
      v36 = v72;
      if (v72)
      {
        break;
      }

LABEL_25:
      if (v73)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v73);
      }

      ++v15;
      while (1)
      {
        v45 = v12;
        v12 += 4;
        v63.i64[0] = v12;
        if (v12 == v16)
        {
          break;
        }

        if (ecs2::ViewIterator<void,std::tuple<md::ls::UniqueMaterialData const&,md::ls::UniqueColorDataHandle &,md::ls::SharedColorDataHandle *,md::ls::ColorDataHandle *>,std::tuple<>>::isValid(&v63))
        {
          v46 = v45 + 4;
          goto LABEL_32;
        }
      }

      v46 = v12;
      v12 = v16;
LABEL_32:
      _ZF = v12 == v62;
      v12 = v46;
      if (_ZF)
      {
        v47 = *(a1 + 8);
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>();
        *(v47 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueColorDataHandle>(void)::metadata) = *(v47 + 4096);
        v48 = *(a1 + 8);
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>();
        *(v48 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedColorDataHandle>(void)::metadata) = *(v48 + 4096);
        v49 = *(a1 + 8);
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>();
        *(v49 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ColorDataHandle>(void)::metadata) = *(v49 + 4096);
        result = v58;
        goto LABEL_36;
      }
    }

    v37 = v13;
    v38 = fmaxf(v34 + v33, 1.0);
    (*(*v72 + 976))(&v71, v72, v38);
    v39 = (*(*v36 + 928))(v36, v38);
    if (v71.i8[12])
    {
      v67.i8[0] = 0;
      LOBYTE(v68) = 0;
    }

    else
    {
      (*(*v36 + 232))(&v67, v36, v38);
      if ((v71.i8[12] & 1) == 0)
      {
        v40 = HIDWORD(v39);
        v61 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v68)), 0x1FuLL)), v67, v57);
LABEL_21:
        ColorData = md::MaterialResourceStore::getColorData(v35, *(v28 + 8 * (v27 & 0x3F)));
        if (v40)
        {
          v44 = *&v39;
        }

        else
        {
          v44 = -1.0;
        }

        *ColorData = v61;
        *(ColorData + 16) = v44;
        v13 = v37;
        v14 = v58;
        goto LABEL_25;
      }
    }

    v40 = HIDWORD(v39);
    v41 = v71;
    if ((v39 & 0x100000000) != 0)
    {
      v42 = *&v39;
    }

    else
    {
      v42 = 1.0;
    }

    *&v41.i32[3] = v42;
    v61 = v41;
    goto LABEL_21;
  }

  v13 = _ZTWN4ecs27Runtime11_localStateE();
  result = _ZTWN4ecs27Runtime11_stackIndexE();
  v15 = 0;
LABEL_36:
  *(v13 + 104 * *result + 24) = -65536;
  v51 = v13 + 104 * *result;
  v52 = *(v51 + 92);
  *(v51 + 92) = v52 + 1;
  *(v51 + 4 * v52 + 28) = v15;
  v53 = v13 + 104 * *result;
  v55 = *(v53 + 92);
  v54 = (v53 + 92);
  if (v55 >= 0x10)
  {
    *v54 = 0;
  }

  return result;
}

void sub_1B2A77C24(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::CollectMaterialColorData>,std::allocator<ecs2::ForwardToExecute<md::ita::CollectMaterialColorData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::CollectMaterialColorData,md::ls::UniqueMaterialData const&,md::ls::UniqueColorDataHandle &,md::ls::SharedColorDataHandle *,md::ls::ColorDataHandle *>(a2, (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::PendingRenderItemSetup>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::EnteringView>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::EnteringView>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[71];
}

void ecs2::Runtime::_entities<md::ita::PrepareRasterOverlayDataHandle,md::ls::RasterOverlayConstantDataHandle &,md::ls::MercatorBounds const&,md::ls::InView const&,md::ls::RenderableMaterialData const&>(uint64_t a1, uint64_t **a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::RasterOverlayConstantDataHandle>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MercatorBounds>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::InView>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMaterialData>(v3);
  v49[0] = v4;
  v49[1] = v5;
  v49[2] = v6;
  v49[3] = v7;
  v8 = 1;
  v9 = v4;
  v10 = v49;
  do
  {
    if (*(v49[v8] + 40) - *(v49[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v49[v8];
      v10 = &v49[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v12 = *(*v10 + 32);
  v11 = *(*v10 + 40);
  v41 = v12;
  v42 = v11;
  v43 = v4;
  v44 = v5;
  v45 = v6;
  v46 = v7;
  v40 = v11;
  while (v12 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v41, *v12, v12[1]))
  {
    v12 += 2;
    v41 = v12;
    v11 = v40;
  }

  v13 = v41;
  if (v41 == v40)
  {
    v15 = _ZTWN4ecs27Runtime11_localStateE();
    v16 = _ZTWN4ecs27Runtime11_stackIndexE();
    v17 = 0;
  }

  else
  {
    v38 = a1;
    v14 = v43;
    v15 = _ZTWN4ecs27Runtime11_localStateE();
    v16 = _ZTWN4ecs27Runtime11_stackIndexE();
    v17 = 0;
    v18 = v42;
    do
    {
      v19 = *(*(*(v14 + 8) + ((v13[1] >> 3) & 0x1FF8)) + 4 * (v13[1] & 0x3FLL) + 2);
      v20 = *(*(v14 + 56) + ((v19 >> 3) & 0x1FF8));
      v21 = v16;
      v22 = *v16;
      v23 = v15;
      *(v15 + 104 * v22 + 24) = *v13;
      v24 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v47 = 1065353216;
      v48 = 0;
      v25 = std::__hash_table<std::__hash_value_type<md::ElevatedStrokeCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>>,std::__unordered_map_hasher<md::ElevatedStrokeCacheKey,std::__hash_value_type<md::ElevatedStrokeCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>>,md::ElevatedStrokeCacheKeyHasher,std::equal_to<md::ElevatedStrokeCacheKey>,true>,std::__unordered_map_equal<md::ElevatedStrokeCacheKey,std::__hash_value_type<md::ElevatedStrokeCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>>,std::equal_to<md::ElevatedStrokeCacheKey>,md::ElevatedStrokeCacheKeyHasher,true>,std::allocator<std::__hash_value_type<md::ElevatedStrokeCacheKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ElevatedStroke>>>>>::find<md::ElevatedStrokeCacheKey>(v24 + 1357, &v47);
      if (!v25 || (v26 = v25[4]) == 0)
      {
        v26 = md::VKMRenderResourcesStore::createConstantDataHandle<ggl::DaVinci::ElevatedStroke,md::ElevatedStrokeCacheKey>(v24, &v47);
        v27 = md::VKMRenderResourcesStore::pop<ggl::DaVinci::ElevatedStroke>(v24, v26);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v49, v27);
        v28 = v50;
        *v50 = 1065353216;
        *(v28 + 1) = 0;
        ggl::BufferMemory::~BufferMemory(v49);
      }

      *(v20 + 40 * (v19 & 0x3F) + 32) = v26;
      ++v17;
      v29 = v13 + 2;
      v15 = v23;
      v16 = v21;
      while (1)
      {
        v13 = v29;
        v41 = v29;
        if (v29 == v18)
        {
          break;
        }

        v30 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v41, *v29, v29[1]);
        v29 = v13 + 2;
        if (v30)
        {
          v31 = v13;
          goto LABEL_19;
        }
      }

      v31 = v18;
LABEL_19:
      ;
    }

    while (v31 != v40);
    v32 = *(v38 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>();
    *(v32 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>(void)::metadata) = *(v32 + 4096);
  }

  *(v15 + 104 * *v16 + 24) = -65536;
  v33 = v15 + 104 * *v16;
  v34 = *(v33 + 92);
  *(v33 + 92) = v34 + 1;
  *(v33 + 4 * v34 + 28) = v17;
  v35 = v15 + 104 * *v16;
  v37 = *(v35 + 92);
  v36 = (v35 + 92);
  if (v37 >= 0x10)
  {
    *v36 = 0;
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls12EnteringViewEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A533A8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingRenderItemSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingRenderItemSetup>();
    *algn_1EB83CB18 = 0x3505F398AD5185B4;
    qword_1EB83CB20 = "md::ls::PendingRenderItemSetup]";
    qword_1EB83CB28 = 30;
  }
}

void ecs2::BasicRegistry<void>::add<md::ls::PassToCommandBuffers>(uint64_t a1, unint64_t a2, void *a3)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassToCommandBuffers>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassToCommandBuffers>(void)::metadata;
  v55 = a1;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PassToCommandBuffers>(a1);
  v8 = v7;
  v9 = a2 >> 22;
  v11 = (v7 + 8);
  v10 = *(v7 + 8);
  if (v9 >= (*(v7 + 16) - v10) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v7 + 8), v9 + 1);
    v10 = *v11;
  }

  v12 = *(v10 + 8 * v9);
  if (!v12)
  {
    operator new();
  }

  v13 = (v12 + 4 * ((a2 >> 16) & 0x3F));
  v14 = v13[1];
  if (*v13 != -1 || v14 != 0)
  {
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 8 * (v14 & 0x3F)) = *a3;
    LODWORD(a2) = (a2 >> 16) << 16;
    goto LABEL_54;
  }

  v17 = *(v8 + 40);
  v16 = *(v8 + 48);
  if (v17 >= v16)
  {
    v19 = *(v8 + 32);
    v20 = (v17 - v19) >> 2;
    if ((v20 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = v16 - v19;
    v22 = v21 >> 1;
    if (v21 >> 1 <= (v20 + 1))
    {
      v22 = v20 + 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v23 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v23);
    }

    *(4 * v20) = a2 | (WORD1(a2) << 16);
    v18 = 4 * v20 + 4;
    v24 = *(v8 + 32);
    v25 = *(v8 + 40) - v24;
    v26 = (4 * v20 - v25);
    memcpy(v26, v24, v25);
    v27 = *(v8 + 32);
    *(v8 + 32) = v26;
    *(v8 + 40) = v18;
    *(v8 + 48) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v17 = a2 | (WORD1(a2) << 16);
    v18 = (v17 + 1);
  }

  *(v8 + 40) = v18;
  v28 = ((v18 - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v28;
  v29 = v28 >> 6;
  v31 = *(v8 + 56);
  v30 = *(v8 + 64);
  v32 = v30 - v31;
  if (v28 >> 6 >= (v30 - v31) >> 3)
  {
    v53 = v28;
    v54 = v6;
    v33 = v29 + 1;
    v34 = v29 + 1 - (v32 >> 3);
    v35 = *(v8 + 72);
    if (v34 > (v35 - v30) >> 3)
    {
      v36 = v35 - v31;
      v37 = (v35 - v31) >> 2;
      if (v37 <= v33)
      {
        v37 = v29 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (!(v38 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v39 = 0;
    v40 = (v34 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v41 = vdupq_n_s64(v40);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v39), xmmword_1B33B0560)));
      if (v42.i8[0])
      {
        *(v30 + 8 * v39) = 0;
      }

      if (v42.i8[4])
      {
        *(v30 + 8 * v39 + 8) = 0;
      }

      v39 += 2;
    }

    while (v40 - ((v34 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v39);
    *(v8 + 64) = v30 + 8 * v34;
    v43 = *(v8 + 80);
    v44 = *(v8 + 88);
    v45 = (v44 - v43) >> 4;
    if (v45 <= v29)
    {
      v28 = v33 - v45;
      v46 = *(v8 + 96);
      if (v28 > (v46 - v44) >> 4)
      {
        v47 = v46 - v43;
        v48 = v47 >> 3;
        if (v47 >> 3 <= v33)
        {
          v48 = v29 + 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v48;
        }

        if (!(v49 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v28);
      *(v8 + 88) = v44 + 16 * v28;
      LOBYTE(v28) = v53;
    }

    else if (v33 < v45)
    {
      *(v8 + 88) = v43 + 16 * v33;
    }

    v31 = *(v8 + 56);
    v6 = v54;
    if (v32 < (*(v8 + 64) - v31))
    {
      operator new();
    }
  }

  *(*(v31 + 8 * v29) + 8 * (v28 & 0x3F)) = *a3;
  v50 = *(v8 + 152);
  v51 = *(v8 + 160);
  while (v50 != v51)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v50 + 24), a2);
    v50 += 32;
  }

LABEL_54:
  v52 = *(v55 + 41016) + (WORD1(a2) << 6);
  *(v52 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassToCommandBuffers>();
  *(v55 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PassToCommandBuffers>(void)::metadata) = *(v55 + 4096);
}

void md::ita::ResolveMaterialAlbedoTexture::operator()(uint64_t **a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, *(**a1 + 8));
  v3 = (*v2)();
  v4 = ecs2::ExecutionTask<>::service<md::RenderLayerProvider>(***a1, *(**a1 + 8));
  v5 = **a1;
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5 == v7)
  {
    goto LABEL_5;
  }

  v8 = *v5;
  while (*v8 != 0x4EDAD23DFB014132)
  {
    v8 += 5;
    if (v8 == v7)
    {
      goto LABEL_5;
    }
  }

  if (v8 == v7)
  {
LABEL_5:
    v9 = 0;
  }

  else
  {
    v9 = v8[3];
    v10 = v8[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      v11 = **a1;
      v6 = *v11;
      v7 = *(v11 + 8);
    }
  }

  v21 = v9;
  v20 = ecs2::ExecutionTask<>::service<mre::GGLResourceStore>(v6, v7);
  v12 = ***a1;
  if (*v12 != 0x41D4E9297E100630)
  {
    v13 = v12 + 5;
    do
    {
      v14 = *v13;
      v13 += 5;
    }

    while (v14 != 0x41D4E9297E100630);
    v12 = v13 - 5;
  }

  v16 = v12[3];
  v15 = v12[4];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  v19 = *(v16 + 14324);
  (*(*v4 + 48))(v4);
  md::LayoutContext::frameState(v3);
  v18 = *(v17 + 624);
  operator new();
}

void sub_1B2A78BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::MaterialPendingProcessing const&,md::ls::UniqueMaterialAlbedoTexture &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12EnteringViewEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A533A8;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::RenderablePendingProcessing>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::RenderablePendingProcessing>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RenderablePendingProcessing>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderablePendingProcessing>();
    *algn_1EB83C448 = 0x1BBF568133D71FB7;
    qword_1EB83C450 = "md::ls::RenderablePendingProcessing]";
    qword_1EB83C458 = 35;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderablePendingProcessing>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderablePendingProcessing>();
    *algn_1EB83C448 = 0x1BBF568133D71FB7;
    qword_1EB83C450 = "md::ls::RenderablePendingProcessing]";
    qword_1EB83C458 = 35;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderablePendingProcessing>(void)::metadata >= 0x200)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AssociationTileHandle>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AssociationTileHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[438];
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SupportsShadows>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsShadows>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsShadows>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsShadows>(void)::metadata >= 0x200)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls21AssociationTileHandleEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A53520;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void md::ita::UpdateFlyoverSharedConstantData::operator()(uint64_t **a1)
{
  v2 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v3 = a1[2];
  if (!v3)
  {
    v4 = **a1;
    v5 = *v4;
    v6 = *(v4 + 8);
    if (v5 == v6)
    {
      goto LABEL_3;
    }

    while (*v5 != 0x22D45F5AAD4BF408)
    {
      v3 = 0;
      v5 += 5;
      if (v5 == v6)
      {
        goto LABEL_6;
      }
    }

    if (v5 == v6)
    {
LABEL_3:
      v3 = 0;
    }

    else
    {
      v3 = v5[3];
      v45 = v5[4];
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v45);
      }
    }

LABEL_6:
    a1[2] = v3;
  }

  v7 = (**v3)(v3);
  v8 = md::LayoutContext::camera(v7);
  gdc::CameraView::geocentricCameraView(v46, v8);
  v9 = *(gdc::Context::get<md::StyleLogicContext>(*(v7 + 8)) + 72);
  FlyoverSharedConstantDataHandle = md::VKMRenderResourcesStore::getFlyoverSharedConstantDataHandle(v2);
  v11 = md::VKMRenderResourcesStore::getConstantData<ggl::FlyoverCommon::Shared>(v2, FlyoverSharedConstantDataHandle);
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v54, v11);
  v12 = *(v7 + 8);
  v13 = md::LayoutContext::get<md::CameraContext>(v12);
  v14 = 0;
  v15 = (v13 + 552);
  do
  {
    v17 = *v15;
    v16 = v15[1];
    v15 += 2;
    *(&v50 + v14) = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v16);
    v14 += 16;
  }

  while (v14 != 64);
  v18 = v55;
  *v55 = v50;
  *(v18 + 16) = v51;
  *(v18 + 32) = v52;
  *(v18 + 48) = v53;
  v19 = md::LayoutContext::get<md::LightingLogicContext>(v12);
  if (v19)
  {
    v20 = v19[13].f64[0];
    *(v18 + 96) = vcvt_f32_f64(v19[12]);
    *(v18 + 104) = v20;
    v21 = LODWORD(v19[28].f64[1]);
  }

  else
  {
    v22 = objc_alloc_init(MEMORY[0x1E69A1B48]);
    v49 = 0.0;
    *&v50 = 0;
    *&v47 = 0;
    [v22 calculateGeocentricDirectionForSunX:&v50 Y:&v47 Z:&v49];
    v23 = *&v50;
    v24 = *&v47;
    v25 = v49;
    v26 = v55;
    *(v55 + 96) = v23;
    *(v26 + 100) = v24;
    *(v26 + 104) = v25;

    v21 = 0;
    v18 = v55;
  }

  *(v18 + 112) = v21;
  v27 = **(v7 + 72);
  v28 = gdc::Camera::cameraFrame(v13);
  v29 = 0;
  v30 = *(v28 + 24) < 6378137.0;
  DWORD2(v47) = 1065353216;
  v31 = v30;
  *&v47 = 0x3F4CCCCD3F333333;
  v32 = 1.0;
  if (((v9 == 1) & v31) != 0)
  {
    v32 = -1.0;
  }

  if (v27)
  {
    v32 = 0.0;
  }

  do
  {
    *(&v50 + v29) = *(&v47 + v29) * v32;
    v29 += 4;
  }

  while (v29 != 12);
  v33 = DWORD2(v50);
  *(v18 + 64) = v50;
  *(v18 + 72) = v33;
  v34 = gdc::CameraView::position(v13);
  v35 = 0;
  v36 = 0.0;
  do
  {
    v36 = v36 + *(v34 + v35) * *(v34 + v35);
    v35 += 8;
  }

  while (v35 != 24);
  v47 = *v34;
  v48 = *(v34 + 16);
  geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v50, &v47);
  v37 = sqrt(v36) + -6371008.77;
  v38 = fmaxf(v37, 0.0);
  v39 = *&v51;
  v40 = fmaxf(v39, 1.0);
  v41 = v40;
  v42 = sqrt((v40 * v40) + v40 * 12742017.5);
  v43 = fmin(fmax(v41, 0.0), 8000.0);
  v44 = (v42 - v38) + (v43 * 0.000125 * (v43 * 0.000125) * (v43 * -0.00025 + 3.0) + -1.0) * ((v42 - v38) * 0.5);
  *(v18 + 80) = v38;
  *(v18 + 84) = v44;
  ggl::BufferMemory::~BufferMemory(v54);
}

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::MaterialPendingProcessing>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls21AssociationTileHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A53520;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::UpdateDepthPrePassConstants::operator()(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v81 = *MEMORY[0x1E69E9840];
  v69 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  v6 = a1[2];
  if (!v6)
  {
    v7 = **a1;
    v8 = *v7;
    v9 = *(v7 + 8);
    if (v8 == v9)
    {
      goto LABEL_3;
    }

    while (*v8 != 0x22D45F5AAD4BF408)
    {
      v6 = 0;
      v8 += 5;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    if (v8 == v9)
    {
LABEL_3:
      v6 = 0;
    }

    else
    {
      v6 = v8[3];
      v66 = v8[4];
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v66);
      }
    }

LABEL_6:
    a1[2] = v6;
  }

  v10 = (**v6)(v6);
  v68 = md::LayoutContext::get<md::CameraContext>(*(v10 + 8));
  v77 = &unk_1F2A38338;
  v78 = &v69;
  v80 = &v77;
  v11 = *(a2 + 8);
  v12 = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableDataHandle>(v11);
  v13 = ecs2::BasicRegistry<void>::storage<md::ls::TilePrepassShadowConstantDataHandle>(v11);
  v14 = v13;
  if (*(v13 + 40) - *(v13 + 32) >= *(v12 + 40) - *(v12 + 32))
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  v16 = *(v15 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v74, *(v15 + 32), v16, v12, v13);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v73, v16, v16, v12, v14);
  v17 = v74;
  v72 = v76;
  v70 = v74;
  v71 = v75;
  v18 = v73[0];
  if (v74 == v73[0])
  {
    v20 = _ZTWN4ecs27Runtime11_localStateE();
    v21 = _ZTWN4ecs27Runtime11_stackIndexE();
    v22 = 0;
  }

  else
  {
    v67 = a3;
    v19 = v75;
    v20 = _ZTWN4ecs27Runtime11_localStateE();
    v21 = _ZTWN4ecs27Runtime11_stackIndexE();
    v22 = 0;
    v23 = *(&v74 + 1);
    do
    {
      v24 = v17[1];
      v25 = (v24 >> 3) & 0x1FF8;
      v26 = v24 & 0x3F;
      v27 = *(*(*(v19 + 8) + v25) + 4 * v26 + 2);
      v28 = *(*(v19 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(*(&v19 + 1) + 8) + v25) + 4 * v26 + 2);
      v30 = *(*(*(&v19 + 1) + 56) + ((v29 >> 3) & 0x1FF8));
      *(v20 + 104 * *v21 + 24) = *v17;
      if (!v80)
      {
LABEL_39:
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v80 + 6))(v80, v28 + 8 * (v27 & 0x3F), v30 + 8 * (v29 & 0x3F));
      ++v22;
      v31 = v17 + 2;
      do
      {
        v17 = v31;
        *&v74 = v31;
        if (v31 == v23)
        {
          break;
        }

        v32 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v74, *v31, v31[1]);
        v31 = v17 + 2;
      }

      while (!v32);
    }

    while (v17 != v18);
    v33 = *(a2 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassShadowConstantDataHandle>();
    *(v33 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassShadowConstantDataHandle>(void)::metadata) = *(v33 + 4096);
    a3 = v67;
  }

  *(v20 + 104 * *v21 + 24) = -65536;
  v34 = v20 + 104 * *v21;
  v35 = *(v34 + 92);
  *(v34 + 92) = v35 + 1;
  *(v34 + 4 * v35 + 28) = v22;
  v36 = v20 + 104 * *v21;
  v38 = *(v36 + 92);
  v37 = (v36 + 92);
  if (v38 >= 0x10)
  {
    *v37 = 0;
  }

  std::__function::__value_func<void ()(md::ls::TileRenderableDataHandle const&,md::ls::TilePrepassShadowConstantDataHandle &)>::~__value_func[abi:nn200100](&v77);
  v77 = &unk_1F2A38380;
  v78 = &v69;
  v79 = &v68;
  v80 = &v77;
  v39 = *(a3 + 8);
  v40 = ecs2::BasicRegistry<void>::storage<md::ls::TileMatrix>(v39);
  v41 = ecs2::BasicRegistry<void>::storage<md::ls::TilePrepassConstantDataHandle>(v39);
  v42 = v41;
  if (*(v41 + 40) - *(v41 + 32) >= *(v40 + 40) - *(v40 + 32))
  {
    v43 = v40;
  }

  else
  {
    v43 = v41;
  }

  v44 = *(v43 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v74, *(v43 + 32), v44, v40, v41);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v73, v44, v44, v40, v42);
  v45 = v74;
  v72 = v76;
  v70 = v74;
  v71 = v75;
  v46 = v73[0];
  if (v74 == v73[0])
  {
    v47 = 0;
  }

  else
  {
    v47 = 0;
    v48 = v75;
    v49 = *(&v74 + 1);
    do
    {
      v50 = v45[1];
      v51 = (v50 >> 3) & 0x1FF8;
      v52 = v50 & 0x3F;
      v53 = *(*(*(v48 + 8) + v51) + 4 * v52 + 2);
      v54 = *(*(v48 + 56) + ((v53 >> 3) & 0x1FF8));
      v55 = *(*(*(*(&v48 + 1) + 8) + v51) + 4 * v52 + 2);
      v56 = *(*(*(&v48 + 1) + 56) + ((v55 >> 3) & 0x1FF8));
      *(v20 + 104 * *v21 + 24) = *v45;
      if (!v80)
      {
        goto LABEL_39;
      }

      (*(*v80 + 6))(v80, v54 + 8 * (v53 & 0x3F), v56 + 8 * (v55 & 0x3F));
      ++v47;
      v57 = v45 + 2;
      do
      {
        v45 = v57;
        *&v74 = v57;
        if (v57 == v49)
        {
          break;
        }

        v58 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v74, *v57, v57[1]);
        v57 = v45 + 2;
      }

      while (!v58);
    }

    while (v45 != v46);
    v59 = *(a3 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassConstantDataHandle>();
    *(v59 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TilePrepassConstantDataHandle>(void)::metadata) = *(v59 + 4096);
  }

  *(v20 + 104 * *v21 + 24) = -65536;
  v60 = v20 + 104 * *v21;
  v61 = *(v60 + 92);
  *(v60 + 92) = v61 + 1;
  *(v60 + 4 * v61 + 28) = v47;
  v62 = v20 + 104 * *v21;
  v64 = *(v62 + 92);
  v63 = (v62 + 92);
  if (v64 >= 0x10)
  {
    *v63 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::TileMatrix const&,md::ls::TilePrepassConstantDataHandle &)>::~__value_func[abi:nn200100](&v77);
}

uint64_t std::__function::__value_func<void ()(md::ls::UniqueMaterialData const&,md::ls::UniqueColorCorrectionDataHandle const&,md::ls::MaterialPendingProcessing const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialPendingProcessing>();
    unk_1EB83C740 = 0xCE1B2B8E676E76D8;
    qword_1EB83C748 = "md::ls::MaterialPendingProcessing]";
    qword_1EB83C750 = 33;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::MaterialPendingProcessing>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::MaterialPendingProcessing>();
    unk_1EB83C740 = 0xCE1B2B8E676E76D8;
    qword_1EB83C748 = "md::ls::MaterialPendingProcessing]";
    qword_1EB83C750 = 33;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialPendingProcessing>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::clear<md::ls::WillEnterView>(uint64_t a1)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WillEnterView>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WillEnterView>(void)::metadata;
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::WillEnterView>(a1);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4 != v5)
  {
    v6 = *(a1 + 41016) + 4 * (v2 >> 5);
    do
    {
      *(v6 + (*(v4 + 2) << 6)) &= ~(1 << v2);
      v4 += 4;
    }

    while (v4 != v5);
  }

  v7 = ecs2::BasicRegistry<void>::storage<md::ls::WillEnterView>(a1);
  result = ecs2::signal<>::publish(v7[37], v7[38]);
  v9 = v7[4];
  if (v7[5] != v9)
  {
    do
    {
      result = ecs2::sparse_set<ecs2::Entity,64ul>::erase(v7, v9);
      v9 = result;
    }

    while (v7[5] != result);
  }

  *(a1 + 8 * v2) = *(a1 + 4096);
  return result;
}

char *ecs2::Runtime::_entities<md::ita::ProcessRenderableForLandCover,md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::MaterialRasterMaxIndex const&>(uint64_t a1, uint64_t **a2)
{
  v146 = *MEMORY[0x1E69E9840];
  v3 = ecs2::BasicRegistry<void>::storage<md::ls::MeshRenderableID>(a1);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::RenderablePendingProcessing>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialRasterMaxIndex>(a1);
  *&v143 = v3;
  *(&v143 + 1) = v4;
  *&v144 = v5;
  v6 = 8;
  v7 = v3;
  v8 = &v143;
  do
  {
    if (*(*(&v143 + v6) + 40) - *(*(&v143 + v6) + 32) < *(v7 + 40) - *(v7 + 32))
    {
      v7 = *(&v143 + v6);
      v8 = &v143 + v6;
    }

    v6 += 8;
  }

  while (v6 != 24);
  v10 = *(*v8 + 32);
  v9 = *(*v8 + 40);
  *&v143 = v10;
  *(&v143 + 1) = v9;
  *&v144 = v3;
  *(&v144 + 1) = v4;
  *&v145 = v5;
  v134 = v9;
  while (v10 != v9 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v143, *v10, v10[1]))
  {
    v10 += 2;
    *&v143 = v10;
    v9 = v134;
  }

  v139[0] = v143;
  v139[1] = v144;
  v140 = v145;
  v11 = v143;
  if (v143 == v134)
  {
    v12 = _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v14 = 0;
    goto LABEL_159;
  }

  v12 = _ZTWN4ecs27Runtime11_localStateE();
  result = _ZTWN4ecs27Runtime11_stackIndexE();
  v14 = 0;
  v132 = result;
  v133 = v12;
  do
  {
    v15 = *(*(*(v140 + 8) + ((v11[1] >> 3) & 0x1FF8)) + 4 * (v11[1] & 0x3FLL) + 2);
    v16 = *(*(v140 + 56) + ((v15 >> 3) & 0x1FF8));
    v135 = v15 & 0x3F;
    *(v12 + 104 * *result + 24) = *v11;
    v17 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
    v136 = v16;
    v18 = *(v16 + 2 * v135);
    v19 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(v17 + 815, *(v16 + 2 * v135));
    v137 = v14;
    if (v19)
    {
      v20 = v19[3];
      if (v20)
      {
        v21 = *(*(v17[772] + 8 * (v19[3] >> 6)) + 16 * (v19[3] & 0x3F) + 8);
        v22 = *(v17[778] + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v21 & 0x3F);
        ++*(v22 + 8);
        v23 = *a2;
        v24 = ecs2::ExecutionTaskContext::currentEntity(v19);
        ecs2::addComponent<md::ls::LandCoverSettingsConstantDataHandle>(v23, v24, v20);
        goto LABEL_152;
      }
    }

    v143 = 0uLL;
    *&v144 = 0;
    v141 = 0;
    v25 = v17[798];
    v26 = v17[800];
    if (v17[797] == v25)
    {
      v27 = ((v17[801] - v26) >> 3) | 0x100000000;
      v142 = v27;
      std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100]((v17 + 800), &v142);
    }

    else
    {
      v27 = *(v26 + 8 * *(v25 - 8));
      v17[798] = v25 - 8;
    }

    v142 = v27;
    v28 = v27 >> 6;
    v29 = v17[773];
    v30 = v17[772];
    if (v28 >= (v29 - v30) >> 3)
    {
      v31 = v28 + 1;
      v32 = v28 + 1 - ((v29 - v30) >> 3);
      v33 = v17[774];
      if (v32 > (v33 - v29) >> 3)
      {
        v34 = v33 - v30;
        if (v34 >> 2 > v31)
        {
          v31 = v34 >> 2;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          v35 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v35 = v31;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v35);
      }

      bzero(v17[773], 8 * v32);
      v17[773] = v29 + 8 * v32;
      v30 = v17[772];
    }

    v36 = *(v30 + 8 * v28);
    if (!v36)
    {
      operator new();
    }

    v37 = (v36 + 16 * (v27 & 0x3F));
    if (*v37 == -1 && v37[1] == 0)
    {
      std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100]((v17 + 775), &v142);
      v39 = ((v17[776] - v17[775]) >> 3) - 1;
      *v37 = HIDWORD(v27);
      v37[1] = v39;
      v40 = v39 & 0x3F;
      v41 = (*(v17[778] + 8 * ecs2::pool<md::Counter,64ul>::page_at_index(v17 + 778, v39)) + 24 * v40);
      *v41 = vdupq_n_s64(1uLL);
      v41[1].i16[0] = 1;
      v42 = v39 >> 6;
      v43 = v17[785];
      v44 = v17[784];
      v45 = v43 - v44;
      v131 = v40;
      if (v39 >> 6 >= (v43 - v44) >> 3)
      {
        v46 = v42 + 1;
        v47 = v42 + 1 - (v45 >> 3);
        v48 = v17[786];
        if (v47 > (v48 - v43) >> 3)
        {
          v49 = v48 - v44;
          v50 = (v48 - v44) >> 2;
          if (v50 <= v46)
          {
            v50 = v42 + 1;
          }

          if (v49 >= 0x7FFFFFFFFFFFFFF8)
          {
            v51 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v51 = v50;
          }

          if (!(v51 >> 61))
          {
            operator new();
          }

          goto LABEL_162;
        }

        v52 = 0;
        v53 = (v47 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
        v54 = vdupq_n_s64(v53);
        do
        {
          v55 = vmovn_s64(vcgeq_u64(v54, vorrq_s8(vdupq_n_s64(v52), xmmword_1B33B0560)));
          if (v55.i8[0])
          {
            *(v43 + 8 * v52) = 0;
          }

          if (v55.i8[4])
          {
            *(v43 + 8 * v52 + 8) = 0;
          }

          v52 += 2;
        }

        while (v53 - ((v47 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v52);
        v17[785] = v43 + 8 * v47;
        v56 = v17[788];
        v57 = v17[787];
        v58 = (v56 - v57) >> 4;
        if (v58 <= v42)
        {
          v59 = v46 - v58;
          v60 = v17[789];
          if (v59 > (v60 - v56) >> 4)
          {
            v61 = v60 - v57;
            v62 = v61 >> 3;
            if (v61 >> 3 <= v46)
            {
              v62 = v42 + 1;
            }

            if (v61 >= 0x7FFFFFFFFFFFFFF0)
            {
              v63 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v63 = v62;
            }

            if (!(v63 >> 60))
            {
              operator new();
            }

            goto LABEL_162;
          }

          bzero(v17[788], 16 * v59);
          v17[788] = v56 + 16 * v59;
          v40 = v131;
        }

        else if (v46 < v58)
        {
          v17[788] = v57 + 16 * v46;
        }

        v44 = v17[784];
        if (v45 < (v17[785] - v44))
        {
          operator new();
        }
      }

      v64 = *(v44 + 8 * v42) + 24 * v40;
      *v64 = v143;
      *(v64 + 16) = v144;
      *(&v143 + 1) = 0;
      *&v144 = 0;
      v65 = v17[791];
      v66 = v17[790];
      v67 = v65 - v66;
      if (v42 < (v65 - v66) >> 3)
      {
LABEL_91:
        *(*(v66 + 8 * v42) + 8 * v40) = v141;
        goto LABEL_92;
      }

      v68 = v42 + 1;
      v69 = v42 + 1 - (v67 >> 3);
      v70 = v17[792];
      if (v69 > (v70 - v65) >> 3)
      {
        v71 = v70 - v66;
        v72 = (v70 - v66) >> 2;
        if (v72 <= v68)
        {
          v72 = v42 + 1;
        }

        if (v71 >= 0x7FFFFFFFFFFFFFF8)
        {
          v73 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v73 = v72;
        }

        if (!(v73 >> 61))
        {
          operator new();
        }

        goto LABEL_162;
      }

      v74 = 0;
      v75 = (v69 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v76 = vdupq_n_s64(v75);
      do
      {
        v77 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(vdupq_n_s64(v74), xmmword_1B33B0560)));
        if (v77.i8[0])
        {
          *(v65 + 8 * v74) = 0;
        }

        if (v77.i8[4])
        {
          *(v65 + 8 * v74 + 8) = 0;
        }

        v74 += 2;
      }

      while (v75 - ((v69 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v74);
      v17[791] = v65 + 8 * v69;
      v78 = v17[794];
      v79 = v17[793];
      v80 = (v78 - v79) >> 4;
      if (v80 > v42)
      {
        if (v68 < v80)
        {
          v17[794] = v79 + 16 * v68;
        }

        goto LABEL_89;
      }

      v81 = v68 - v80;
      v82 = v17[795];
      if (v81 <= (v82 - v78) >> 4)
      {
        bzero(v17[794], 16 * v81);
        v17[794] = v78 + 16 * v81;
        v40 = v131;
LABEL_89:
        v66 = v17[790];
        if (v67 < (v17[791] - v66))
        {
          operator new();
        }

        goto LABEL_91;
      }

      v83 = v82 - v79;
      v84 = v83 >> 3;
      if (v83 >> 3 <= v68)
      {
        v84 = v42 + 1;
      }

      if (v83 >= 0x7FFFFFFFFFFFFFF0)
      {
        v85 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v85 = v84;
      }

      if (!(v85 >> 60))
      {
        operator new();
      }

LABEL_162:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

LABEL_92:
    v86 = v17[816];
    if (!*&v86)
    {
      goto LABEL_108;
    }

    v87 = vcnt_s8(v86);
    v87.i16[0] = vaddlv_u8(v87);
    if (v87.u32[0] > 1uLL)
    {
      v88 = v18;
      if (*&v86 <= v18)
      {
        v88 = v18 % v17[816];
      }
    }

    else
    {
      v88 = (v86.i32[0] - 1) & v18;
    }

    v89 = *(v17[815] + 8 * v88);
    if (!v89 || (v90 = *v89) == 0)
    {
LABEL_108:
      operator new();
    }

    while (1)
    {
      v91 = v90[1];
      if (v91 == v18)
      {
        break;
      }

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
        goto LABEL_108;
      }

LABEL_107:
      v90 = *v90;
      if (!v90)
      {
        goto LABEL_108;
      }
    }

    if (*(v90 + 16) != v18)
    {
      goto LABEL_107;
    }

    v90[3] = v27;
    v92 = v17[821];
    if (!*&v92)
    {
      goto LABEL_125;
    }

    v93 = vcnt_s8(v92);
    v93.i16[0] = vaddlv_u8(v93);
    if (v93.u32[0] > 1uLL)
    {
      v94 = v27;
      if (v27 >= *&v92)
      {
        v94 = v27 % *&v92;
      }
    }

    else
    {
      v94 = (*&v92 - 1) & v27;
    }

    v95 = *(v17[820] + 8 * v94);
    if (!v95 || (v96 = *v95) == 0)
    {
LABEL_125:
      operator new();
    }

    while (2)
    {
      v97 = v96[1];
      if (v97 != v27)
      {
        if (v93.u32[0] > 1uLL)
        {
          if (v97 >= *&v92)
          {
            v97 %= *&v92;
          }
        }

        else
        {
          v97 &= *&v92 - 1;
        }

        if (v97 != v94)
        {
          goto LABEL_125;
        }

LABEL_124:
        v96 = *v96;
        if (!v96)
        {
          goto LABEL_125;
        }

        continue;
      }

      break;
    }

    if (v96[2] != v27)
    {
      goto LABEL_124;
    }

    *(v96 + 24) = v18;
    if (v144)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v144);
    }

    v98 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v17 + 771, v27);
    if (v98 == v17[776])
    {
      v99 = 0;
      goto LABEL_151;
    }

    v100 = v98;
    v101 = v17[775];
    v102 = v17[809];
    if (v17[808] == v102)
    {
      v103 = v17[814];
      if (!v103)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      v99 = (*(*v103 + 48))(v103);
    }

    else
    {
      v99 = *(v102 - 8);
      v17[809] = v102 - 8;
    }

    v104 = 0x9DDFEA08EB382D69 * ((8 * (v99 & 0x1FFFFFFF) + 8) ^ HIDWORD(v99));
    v105 = 0x9DDFEA08EB382D69 * (HIDWORD(v99) ^ (v104 >> 47) ^ v104);
    v106 = 0x9DDFEA08EB382D69 * (v105 ^ (v105 >> 47));
    v107 = v17[804];
    if (!*&v107)
    {
      goto LABEL_150;
    }

    v108 = vcnt_s8(v107);
    v108.i16[0] = vaddlv_u8(v108);
    if (v108.u32[0] > 1uLL)
    {
      v109 = 0x9DDFEA08EB382D69 * (v105 ^ (v105 >> 47));
      if (v106 >= *&v107)
      {
        v109 = v106 % *&v107;
      }
    }

    else
    {
      v109 = v106 & (*&v107 - 1);
    }

    v110 = *(v17[803] + 8 * v109);
    if (!v110 || (v111 = *v110) == 0)
    {
LABEL_150:
      operator new();
    }

    while (2)
    {
      v112 = v111[1];
      if (v112 != v106)
      {
        if (v108.u32[0] > 1uLL)
        {
          if (v112 >= *&v107)
          {
            v112 %= *&v107;
          }
        }

        else
        {
          v112 &= *&v107 - 1;
        }

        if (v112 != v109)
        {
          goto LABEL_150;
        }

LABEL_149:
        v111 = *v111;
        if (!v111)
        {
          goto LABEL_150;
        }

        continue;
      }

      break;
    }

    if (v111[2] != v99)
    {
      goto LABEL_149;
    }

    v113 = (((v100 - v101) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
    v114 = *(v17[778] + v113);
    v115 = ((v100 - v101) >> 3) & 0x3F;
    v116 = *(v17[784] + v113);
    v117 = *(v17[790] + v113);
    *(v116 + 24 * v115) = v99;
    ++*(v114 + 24 * v115);
    *(v117 + 8 * v115) = v99;
LABEL_151:
    v118 = ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v143, v99);
    LOWORD(v119) = *(v136 + 2 * v135);
    **(&v145 + 1) = v119;
    ggl::BufferMemory::~BufferMemory(v118);
    v120 = *a2;
    v122 = ecs2::ExecutionTaskContext::currentEntity(v121);
    ecs2::addComponent<md::ls::LandCoverSettingsConstantDataHandle>(v120, v122, v27);
    v11 = *&v139[0];
LABEL_152:
    v14 = v137 + 1;
    v123 = *(&v139[0] + 1);
    v124 = v11 + 2;
    v12 = v133;
    while (1)
    {
      v11 = v124;
      *&v139[0] = v124;
      if (v124 == v123)
      {
        break;
      }

      v125 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(v139, *v124, v124[1]);
      v124 = v11 + 2;
      if (v125)
      {
        v123 = v11;
        break;
      }
    }

    result = v132;
  }

  while (v123 != v134);
LABEL_159:
  *(v12 + 104 * *result + 24) = -65536;
  v126 = v12 + 104 * *result;
  v127 = *(v126 + 92);
  *(v126 + 92) = v127 + 1;
  *(v126 + 4 * v127 + 28) = v14;
  v128 = v12 + 104 * *result;
  v130 = *(v128 + 92);
  v129 = (v128 + 92);
  if (v130 > 0xF)
  {
    *v129 = 0;
  }

  return result;
}

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::ProcessRenderableForLandCover>,std::allocator<ecs2::ForwardToExecute<md::ita::ProcessRenderableForLandCover>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::ProcessRenderableForLandCover,md::ls::MeshRenderableID const&,md::ls::RenderablePendingProcessing const&,md::ls::MaterialRasterMaxIndex const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::TileMatrix const&,md::ls::TileRenderableDataHandle &,md::ls::BaseMapTileHandle const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WillEnterView>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::WillEnterView>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::WillEnterView>();
    unk_1EB83D8B0 = 0xF3801DCCD1DDBED8;
    qword_1EB83D8B8 = "md::ls::WillEnterView]";
    qword_1EB83D8C0 = 21;
  }
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ResetResourcesUtilityTask>,std::allocator<ecs2::ForwardToExecute<md::ResetResourcesUtilityTask>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ResetResourcesUtilityTask::operator()((a1 + 8));
  *v2 = 0;
  return result;
}

uint64_t md::ResetResourcesUtilityTask::operator()(uint64_t **a1)
{
  v2 = **a1;
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 == v4)
  {
    goto LABEL_5;
  }

  v5 = *v2;
  while (*v5 != 0x41D4E9297E100630)
  {
    v5 += 5;
    if (v5 == v4)
    {
      goto LABEL_5;
    }
  }

  if (v5 == v4)
  {
LABEL_5:
    v6 = 0;
  }

  else
  {
    v6 = v5[3];
    v7 = v5[4];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      v2 = **a1;
      v3 = *v2;
      v4 = *(v2 + 8);
    }
  }

  if (v3 == v4)
  {
    goto LABEL_13;
  }

  v8 = v3;
  while (*v8 != 0x4EDAD23DFB014132)
  {
    v8 += 5;
    if (v8 == v4)
    {
      goto LABEL_13;
    }
  }

  if (v8 == v4)
  {
LABEL_13:
    v9 = 0;
  }

  else
  {
    v9 = v8[3];
    v10 = v8[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      v2 = **a1;
      v3 = *v2;
      v4 = *(v2 + 8);
    }
  }

  if (v3 == v4)
  {
    goto LABEL_21;
  }

  v11 = v3;
  while (*v11 != 0x348A0B0E758C07C2)
  {
    v11 += 5;
    if (v11 == v4)
    {
      goto LABEL_21;
    }
  }

  if (v11 == v4)
  {
LABEL_21:
    v12 = 0;
  }

  else
  {
    v12 = v11[3];
    v13 = v11[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      v2 = **a1;
      v3 = *v2;
      v4 = *(v2 + 8);
    }
  }

  if (v3 == v4)
  {
    goto LABEL_29;
  }

  v14 = v3;
  while (*v14 != 0xC94DD89A7B09BE9CLL)
  {
    v14 += 5;
    if (v14 == v4)
    {
      goto LABEL_29;
    }
  }

  if (v14 == v4)
  {
LABEL_29:
    v15 = 0;
  }

  else
  {
    v15 = v14[3];
    v16 = v14[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      v2 = **a1;
      v3 = *v2;
    }
  }

  v17 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(v3, *(v2 + 8));
  v18 = (**v17)(v17);
  md::LayoutContext::frameState(v18);
  if (*(v19 + 632) == 1)
  {
    if (*(v6 + 12464))
    {
      std::__hash_table<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>>>::__deallocate_node(*(v6 + 12456));
      *(v6 + 12456) = 0;
      v20 = *(v6 + 12448);
      if (v20)
      {
        for (i = 0; i != v20; ++i)
        {
          *(*(v6 + 12440) + 8 * i) = 0;
        }
      }

      *(v6 + 12464) = 0;
    }

    md::VKMRenderResourcesStore::resetV2(v6);
    md::MaterialResourceStore::resetMaterialPtrStorage(v9);
    md::MaterialResourceStore::reset(v9);
    v22 = v12[59];
    v23 = v12[60];
    if (v22 != v23)
    {
      v24 = 0;
      do
      {
        v25 = *(v12[62] + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v24 & 0x3F);
        if ((*(v25 + 17) & 1) == 0 && *v25 == 0)
        {
          *v25 = 0;
          *(v25 + 8) = 0;
          std::__allocate_at_least[abi:nn200100]<std::allocator<mre::TextureHandle>>(1uLL);
        }

        *v25 = 0;
        v22 += 16;
        ++v24;
      }

      while (v22 != v23);
    }
  }

  v26 = **v15;

  return v26(v15);
}

uint64_t md::ita::PrepareGradientParametersConstantDataHandle::operator()(uint64_t **a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (!v2)
  {
    v3 = **a1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (v4 == v5)
    {
      goto LABEL_5;
    }

    while (*v4 != 0xC94DD89A7B09BE9CLL)
    {
      v4 += 5;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v4 == v5)
    {
LABEL_5:
      v2 = 0;
    }

    else
    {
      v2 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[1] = v2;
  }

  v7 = a1[2];
  if (!v7)
  {
    v8 = **a1;
    v9 = *v8;
    v10 = *(v8 + 8);
    if (v9 == v10)
    {
      goto LABEL_14;
    }

    while (*v9 != 0x41D4E9297E100630)
    {
      v9 += 5;
      if (v9 == v10)
      {
        goto LABEL_14;
      }
    }

    if (v9 == v10)
    {
LABEL_14:
      v7 = 0;
    }

    else
    {
      v7 = v9[3];
      v11 = v9[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }
    }

    a1[2] = v7;
  }

  v40 = v7;
  v12 = a1[3];
  if (!v12)
  {
    v13 = **a1;
    v14 = *v13;
    v15 = *(v13 + 8);
    if (v14 == v15)
    {
      goto LABEL_23;
    }

    while (*v14 != 0x4EDAD23DFB014132)
    {
      v14 += 5;
      if (v14 == v15)
      {
        goto LABEL_23;
      }
    }

    if (v14 == v15)
    {
LABEL_23:
      v12 = 0;
    }

    else
    {
      v12 = v14[3];
      v16 = v14[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }
    }

    a1[3] = v12;
  }

  v39 = v12;
  v17 = a1[4];
  if (!v17)
  {
    v18 = **a1;
    v19 = *v18;
    v20 = *(v18 + 8);
    if (v19 == v20)
    {
      goto LABEL_32;
    }

    while (*v19 != 0x348A0B0E758C07C2)
    {
      v19 += 5;
      if (v19 == v20)
      {
        goto LABEL_32;
      }
    }

    if (v19 == v20)
    {
LABEL_32:
      v17 = 0;
    }

    else
    {
      v17 = v19[3];
      v21 = v19[4];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v21);
      }
    }

    a1[4] = v17;
  }

  v38 = v17;
  memset(v26, 0, sizeof(v26));
  v27 = 1065353216;
  memset(v28, 0, sizeof(v28));
  v29 = 1065353216;
  memset(v30, 0, sizeof(v30));
  memset(v32, 0, sizeof(v32));
  v31 = 1065353216;
  v33 = 1065353216;
  memset(v34, 0, sizeof(v34));
  memset(v36, 0, sizeof(v36));
  v35 = 1065353216;
  v37 = 1065353216;
  v22 = a1[5];
  if (!v22)
  {
    v22 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(***a1, *(**a1 + 8));
    a1[5] = v22;
  }

  v23 = (**v22)(v22);
  v24 = *(v23 + 1);
  md::LayoutContext::get<md::CameraContext>(v24);
  if (md::LayoutContext::get<md::MaterialContext>(v24))
  {
    atomic_load((gdc::Context::get<md::StyleLogicContext>(v24)[4] + 270));
    md::LayoutContext::frameState(v23);
    (*(*v2 + 48))(v2);
    operator new();
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v36);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v34);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v32);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v30);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v28);
  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v26);
}

void sub_1B2A7C9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a38);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a33);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a28);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a23);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a18);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a13);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::~sparse_set(v1 + 3);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void *ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::~sparse_set(void *a1)
{
  *a1 = &unk_1F2A33660;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; ++v2)
  {
    if (*v2)
    {
      MEMORY[0x1B8C62190](*v2, 0x1000C409DBC6682);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}