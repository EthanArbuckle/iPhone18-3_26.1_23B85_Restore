void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>(void)::localId;
    *algn_1EB8294A8 = 0xE07DAC1C2C3A7252;
    qword_1EB8294B0 = "SceneComponents::LayerDataDidExitView<md::MapDataType::Flyover>]";
    qword_1EB8294B8 = 63;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3578;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3558;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidExitView<(md::MapDataType)75>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3558;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>(void)::localId;
    unk_1EB829410 = 0xA19C6E667D4CEBF2;
    qword_1EB829418 = "SceneComponents::LayerDataDidEnterView<md::MapDataType::Flyover>]";
    qword_1EB829420 = 64;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3510;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F34F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidEnterView<(md::MapDataType)75>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F34F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)75>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)75>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)75>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)75>>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)75>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)75>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)75>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)75>>(void)::localId;
    unk_1EB829460 = 0x7A74CBDBCED9A99FLL;
    qword_1EB829468 = "SceneComponents::LayerDataExitingView<md::MapDataType::Flyover>]";
    qword_1EB829470 = 63;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)75>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)75>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)75>>(v3);
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
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = (*(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F));
        v18 = v17[2];
        v24 = *v17;
        v19 = v17 + 1;
        v20 = v17[1];
        v25 = v20;
        v26 = v18;
        if (v18)
        {
          v20[2] = &v25;
          *v17 = v19;
          *v19 = 0;
          v17[2] = 0;
        }

        else
        {
          v24 = &v25;
        }

        std::__tree<gdc::LayerDataWithWorld>::__move_assign(v17, v16);
        v21 = (v16 + 8);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*(v16 + 8));
        v22 = v26;
        *v16 = v24;
        v23 = v25;
        *(v16 + 8) = v25;
        *(v16 + 16) = v22;
        if (v22)
        {
          v23[2] = v21;
          v25 = 0;
          v26 = 0;
          v23 = 0;
        }

        else
        {
          *v16 = v21;
        }

        std::__tree<gdc::LayerDataWithWorld>::destroy(v23);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*v21);
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)75>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)75>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2CC0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)75>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2C80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)75>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)75>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2CA0;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8));
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v5 = a1[7];
  v6 = a1[8];
  while (v5 != v6)
  {
    if (*v5)
    {
      operator delete(*v5);
    }

    ++v5;
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)75>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)75>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)75>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2C80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)75>,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>(void)::localId;
    unk_1EB829380 = 0xBEE7CE736059D671;
    qword_1EB829388 = "SceneComponents::LayerDataPreviousInView<md::MapDataType::Flyover>]";
    qword_1EB829390 = 66;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>(v3);
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
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = (*(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F));
        v18 = v17[2];
        v24 = *v17;
        v19 = v17 + 1;
        v20 = v17[1];
        v25 = v20;
        v26 = v18;
        if (v18)
        {
          v20[2] = &v25;
          *v17 = v19;
          *v19 = 0;
          v17[2] = 0;
        }

        else
        {
          v24 = &v25;
        }

        std::__tree<gdc::LayerDataWithWorld>::__move_assign(v17, v16);
        v21 = (v16 + 8);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*(v16 + 8));
        v22 = v26;
        *v16 = v24;
        v23 = v25;
        *(v16 + 8) = v25;
        *(v16 + 16) = v22;
        if (v22)
        {
          v23[2] = v21;
          v25 = 0;
          v26 = 0;
          v23 = 0;
        }

        else
        {
          *v16 = v21;
        }

        std::__tree<gdc::LayerDataWithWorld>::destroy(v23);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*v21);
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2BB0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2B70;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2B90;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8));
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v5 = a1[7];
  v6 = a1[8];
  while (v5 != v6)
  {
    if (*v5)
    {
      operator delete(*v5);
    }

    ++v5;
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2B70;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)75>,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)75>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInfo<(md::MapDataType)75>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)75>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInfo<(md::MapDataType)75>>(void)::localId;
    unk_1EB8295D0 = 0xBB954D24BDDBD352;
    qword_1EB8295D8 = "SceneComponents::LayerDataInfo<md::MapDataType::Flyover>]";
    qword_1EB8295E0 = 56;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)75>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)75>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)75>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)75>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13LayerDataInfoILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)75>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)75>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)75>>(v3);
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
        LOWORD(v16) = *(v19 + 2 * v18);
        *(v19 + 2 * v18) = *(v17 + 2 * v15);
        *(v17 + 2 * v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)75>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)75>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13LayerDataInfoILN2md11MapDataTypeE75EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3600;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)75>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F35C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)75>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)75>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F35E0;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)75>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)75>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)75>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F35C0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)75>,64ul>::~storage(a1);
}

_BYTE *md::Logic<md::CollectMapDataLogic<(md::MapDataType)75>,md::CollectMapDataContext<(md::MapDataType)75>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x4B05BEFA631D0889 && (v4 = *(a3 + 32)) != 0)
  {
    v9 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
    v10 = v7;
    return (*(*a1 + 160))(a1, a2, &v9, v4);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)75>,md::CollectMapDataContext<(md::MapDataType)75>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x4B05BEFA631D0889)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 152))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)75>,md::CollectMapDataContext<(md::MapDataType)75>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x4B05BEFA631D0889)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 144))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)75>,md::CollectMapDataContext<(md::MapDataType)75>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x4B05BEFA631D0889)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)75>,md::CollectMapDataContext<(md::MapDataType)75>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x4B05BEFA631D0889)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 128))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::CollectMapDataContext<(md::MapDataType)75>>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::CollectMapDataContext<(md::MapDataType)75>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A25438;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::CollectMapDataContext<(md::MapDataType)75>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A25438;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::CollectMapDataLogic<(md::MapDataType)75>::didBecomeInactive(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 != -65536)
  {
    ecs2::BasicRegistry<void>::destroy(*(a1 + 128), v1);
    *(a1 + 120) = -65536;
  }
}

void md::CollectMapDataLogic<(md::MapDataType)75>::~CollectMapDataLogic(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CollectMapDataLogic<(md::MapDataType)75>::~CollectMapDataLogic(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));
  return a1;
}

void md::Logic<md::CollectMapDataLogic<(md::MapDataType)79>,md::CollectMapDataContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2);
}

void md::CollectMapDataLogic<(md::MapDataType)79>::runBeforeLayout(uint64_t a1, uint64_t a2, md::SceneContext **a3)
{
  v387 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 128);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(v4);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  if (v7 != v8)
  {
    v9 = *(v4 + 41016) + 4 * (v5 >> 5);
    do
    {
      *(v9 + (*(v7 + 2) << 6)) &= ~(1 << v5);
      v7 += 4;
    }

    while (v7 != v8);
  }

  v10 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(v4);
  ecs2::signal<>::publish(v10[37], v10[38]);
    ;
  }

  *(v4 + 8 * v5) = *(v4 + 4096);
  v12 = *(a1 + 128);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>();
  v13 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::metadata;
  v14 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(v12);
  v15 = *(v14 + 32);
  v16 = *(v14 + 40);
  if (v15 != v16)
  {
    v17 = *(v12 + 41016) + 4 * (v13 >> 5);
    do
    {
      *(v17 + (*(v15 + 2) << 6)) &= ~(1 << v13);
      v15 += 4;
    }

    while (v15 != v16);
  }

  v18 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(v12);
  ecs2::signal<>::publish(v18[37], v18[38]);
    ;
  }

  *(v12 + 8 * v13) = *(v12 + 4096);
  v364 = *a3;
  v20 = *(a1 + 128);
  if (*(a1 + 120) == -65536)
  {
    v21 = *(v20 + 4112);
    v22 = *(v20 + 4128);
    if (*(v20 + 4104) == v21)
    {
      WORD1(v383) = (*(v20 + 4136) - v22) >> 2;
      LOWORD(v383) = 1;
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v20 + 4128, &v383);
      v23 = v383;
      v346 = *(v20 + 41024);
      v347 = *(v20 + 41032);
      if (v346 >= v347)
      {
        v349 = *(v20 + 41016);
        v350 = (v346 - v349) >> 6;
        v351 = v350 + 1;
        if ((v350 + 1) >> 58)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v352 = v347 - v349;
        if (v352 >> 5 > v351)
        {
          v351 = v352 >> 5;
        }

        if (v352 >= 0x7FFFFFFFFFFFFFC0)
        {
          v353 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v353 = v351;
        }

        if (v353)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v353);
        }

        v354 = (v350 << 6);
        v354[2] = 0u;
        v354[3] = 0u;
        *v354 = 0u;
        v354[1] = 0u;
        v348 = (v350 << 6) + 64;
        v355 = *(v20 + 41016);
        v356 = *(v20 + 41024) - v355;
        v357 = v354 - v356;
        memcpy(v354 - v356, v355, v356);
        v358 = *(v20 + 41016);
        *(v20 + 41016) = v357;
        *(v20 + 41024) = v348;
        *(v20 + 41032) = 0;
        if (v358)
        {
          operator delete(v358);
        }
      }

      else
      {
        v346[2] = 0u;
        v346[3] = 0u;
        *v346 = 0u;
        v346[1] = 0u;
        v348 = (v346 + 4);
      }

      *(v20 + 41024) = v348;
      v24 = *(a1 + 128);
    }

    else
    {
      v23 = *(v22 + 4 * *(v21 - 8));
      *(v20 + 4112) = v21 - 8;
      v24 = v20;
    }

    *(a1 + 120) = v23;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataActive<(md::MapDataType)79>>(v24, v23);
    v25 = *(a1 + 128);
    LODWORD(v383) = *(a1 + 120);
    v26 = v383;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>();
    k = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::metadata;
    v28 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)79>>(v25);
    v29 = v28;
    v30 = v26 >> 22;
    v32 = (v28 + 8);
    v31 = *(v28 + 8);
    if (v26 >> 22 >= (*(v28 + 16) - v31) >> 3)
    {
      std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v28 + 8), v30 + 1);
      v31 = *v32;
    }

    v33 = *(v31 + 8 * v30);
    if (!v33)
    {
      operator new();
    }

    v34 = (v33 + 4 * ((v26 >> 16) & 0x3F));
    v35 = v34[1];
    v36 = *v34 == -1 && v35 == 0;
    v362 = v20;
    if (!v36)
    {
      *(*(*(v29 + 56) + ((v35 >> 3) & 0x1FF8)) + 2 * (v35 & 0x3F)) = 79;
      goto LABEL_55;
    }

    v371 = k;
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v29 + 32, &v383);
    v37 = ((*(v29 + 40) - *(v29 + 32)) >> 2) - 1;
    *v34 = v26;
    v34[1] = v37;
    v38 = v37 >> 6;
    v40 = *(v29 + 56);
    v39 = *(v29 + 64);
    v41 = v39 - v40;
    if (v37 >> 6 < (v39 - v40) >> 3)
    {
LABEL_53:
      *(*(v40 + 8 * v38) + 2 * (v37 & 0x3F)) = 79;
      v61 = *(v29 + 152);
      v62 = *(v29 + 160);
      for (k = v371; v61 != v62; v61 += 32)
      {
        std::function<void ()(ecs2::Entity)>::operator()(*(v61 + 24), v26);
      }

LABEL_55:
      v63 = *(v25 + 41016) + (v26 >> 16 << 6);
      *(v63 + ((k >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << k;
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>();
      *(v25 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::metadata) = *(v25 + 4096);
      v64 = *(a1 + 128);
      v65 = *(a1 + 120);
      *(&v383 + 1) = 0;
      *&v384 = 0;
      *&v383 = &v383 + 8;
      LODWORD(v377) = v65;
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)79>>();
      v366 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)79>>(void)::metadata;
      v372 = v64;
      v66 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)79>>(v64);
      v67 = v66;
      v68 = v65 >> 22;
      v69 = *(v66 + 8);
      v70 = (v66 + 8);
      if (v65 >> 22 >= (*(v66 + 16) - v69) >> 3)
      {
        std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v66 + 8), v68 + 1);
        v69 = *v70;
      }

      v71 = *(v69 + 8 * v68);
      if (!v71)
      {
        operator new();
      }

      v72 = (v71 + 4 * ((v65 >> 16) & 0x3F));
      v73 = v72[1];
      if (*v72 != -1 || v73 != 0)
      {
        v105 = *(*(v67 + 56) + ((v73 >> 3) & 0x1FF8)) + 24 * (v73 & 0x3F);
        v106 = (v105 + 8);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*(v105 + 8));
        *v105 = v383;
        v107 = *(&v383 + 1);
        *v106 = *(&v383 + 1);
        v108 = v384;
        *(v105 + 16) = v384;
        if (v108)
        {
          *(v107 + 16) = v106;
          *&v383 = &v383 + 8;
          *(&v383 + 1) = 0;
          *&v384 = 0;
        }

        else
        {
          *v105 = v106;
        }

        goto LABEL_103;
      }

      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v67 + 32, &v377);
      v75 = ((*(v67 + 40) - *(v67 + 32)) >> 2) - 1;
      *v72 = v65;
      v72[1] = v75;
      v76 = v75 >> 6;
      v78 = *(v67 + 56);
      v77 = *(v67 + 64);
      v79 = v77 - v78;
      if (v75 >> 6 < (v77 - v78) >> 3)
      {
LABEL_94:
        v99 = (*(v78 + 8 * v76) + 24 * (v75 & 0x3F));
        *v99 = v383;
        v100 = *(&v383 + 1);
        v99[1] = *(&v383 + 1);
        v101 = v99 + 1;
        v102 = v384;
        v99[2] = v384;
        if (v102)
        {
          *(v100 + 16) = v101;
          *&v383 = &v383 + 8;
          *(&v383 + 1) = 0;
          *&v384 = 0;
        }

        else
        {
          *v99 = v101;
        }

        v103 = *(v67 + 152);
        v104 = *(v67 + 160);
        while (v103 != v104)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v103 + 24), v65);
          v103 += 32;
        }

LABEL_103:
        v109 = *(v372 + 41016) + (v65 >> 16 << 6);
        *(v109 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v366;
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)79>>();
        *(v372 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)79>>(void)::metadata) = *(v372 + 4096);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*(&v383 + 1));
        v110 = *(a1 + 128);
        v111 = *(a1 + 120);
        *(&v383 + 1) = 0;
        *&v384 = 0;
        *&v383 = &v383 + 8;
        LODWORD(v377) = v111;
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>();
        v367 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>(void)::metadata;
        v373 = v110;
        v112 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>(v110);
        v113 = v112;
        v114 = v111 >> 22;
        v115 = *(v112 + 8);
        v116 = (v112 + 8);
        if (v111 >> 22 >= (*(v112 + 16) - v115) >> 3)
        {
          std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v112 + 8), v114 + 1);
          v115 = *v116;
        }

        v117 = *(v115 + 8 * v114);
        if (!v117)
        {
          operator new();
        }

        v118 = (v117 + 4 * ((v111 >> 16) & 0x3F));
        v119 = v118[1];
        if (*v118 != -1 || v119 != 0)
        {
          v151 = *(*(v113 + 56) + ((v119 >> 3) & 0x1FF8)) + 24 * (v119 & 0x3F);
          v152 = (v151 + 8);
          std::__tree<gdc::LayerDataWithWorld>::destroy(*(v151 + 8));
          *v151 = v383;
          v153 = *(&v383 + 1);
          *v152 = *(&v383 + 1);
          v154 = v384;
          *(v151 + 16) = v384;
          if (v154)
          {
            *(v153 + 16) = v152;
            *&v383 = &v383 + 8;
            *(&v383 + 1) = 0;
            *&v384 = 0;
          }

          else
          {
            *v151 = v152;
          }

          goto LABEL_151;
        }

        std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v113 + 32, &v377);
        v121 = ((*(v113 + 40) - *(v113 + 32)) >> 2) - 1;
        *v118 = v111;
        v118[1] = v121;
        v122 = v121 >> 6;
        v124 = *(v113 + 56);
        v123 = *(v113 + 64);
        v125 = v123 - v124;
        if (v121 >> 6 < (v123 - v124) >> 3)
        {
LABEL_142:
          v145 = (*(v124 + 8 * v122) + 24 * (v121 & 0x3F));
          *v145 = v383;
          v146 = *(&v383 + 1);
          v145[1] = *(&v383 + 1);
          v147 = v145 + 1;
          v148 = v384;
          v145[2] = v384;
          if (v148)
          {
            *(v146 + 16) = v147;
            *&v383 = &v383 + 8;
            *(&v383 + 1) = 0;
            *&v384 = 0;
          }

          else
          {
            *v145 = v147;
          }

          v149 = *(v113 + 152);
          v150 = *(v113 + 160);
          while (v149 != v150)
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v149 + 24), v111);
            v149 += 32;
          }

LABEL_151:
          v155 = *(v373 + 41016) + (v111 >> 16 << 6);
          *(v155 + ((v367 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v367;
          ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>();
          *(v373 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>(void)::metadata) = *(v373 + 4096);
          std::__tree<gdc::LayerDataWithWorld>::destroy(*(&v383 + 1));
          v156 = *(a1 + 128);
          v157 = *(a1 + 120);
          *(&v383 + 1) = 0;
          *&v384 = 0;
          *&v383 = &v383 + 8;
          LODWORD(v377) = v157;
          ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>();
          v368 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::metadata;
          v374 = v156;
          v158 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(v156);
          v159 = v158;
          v160 = v157 >> 22;
          v161 = *(v158 + 8);
          v162 = (v158 + 8);
          if (v157 >> 22 >= (*(v158 + 16) - v161) >> 3)
          {
            std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v158 + 8), v160 + 1);
            v161 = *v162;
          }

          v163 = *(v161 + 8 * v160);
          if (!v163)
          {
            operator new();
          }

          v164 = (v163 + 4 * ((v157 >> 16) & 0x3F));
          v165 = v164[1];
          if (*v164 != -1 || v165 != 0)
          {
            v197 = *(*(v159 + 56) + ((v165 >> 3) & 0x1FF8)) + 24 * (v165 & 0x3F);
            v198 = (v197 + 8);
            std::__tree<gdc::LayerDataWithWorld>::destroy(*(v197 + 8));
            *v197 = v383;
            v199 = *(&v383 + 1);
            *v198 = *(&v383 + 1);
            v200 = v384;
            *(v197 + 16) = v384;
            if (v200)
            {
              *(v199 + 16) = v198;
              *&v383 = &v383 + 8;
              *(&v383 + 1) = 0;
              *&v384 = 0;
            }

            else
            {
              *v197 = v198;
            }

LABEL_199:
            v201 = *(v374 + 41016) + (v157 >> 16 << 6);
            *(v201 + ((v368 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v368;
            ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>();
            *(v374 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::metadata) = *(v374 + 4096);
            std::__tree<gdc::LayerDataWithWorld>::destroy(*(&v383 + 1));
            v202 = *(a1 + 128);
            v203 = *(a1 + 120);
            *(&v383 + 1) = 0;
            *&v384 = 0;
            *&v383 = &v383 + 8;
            LODWORD(v377) = v203;
            ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>();
            v369 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::metadata;
            v375 = v202;
            v204 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(v202);
            v205 = v204;
            v206 = v203 >> 22;
            v207 = *(v204 + 8);
            v208 = (v204 + 8);
            if (v203 >> 22 >= (*(v204 + 16) - v207) >> 3)
            {
              std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v204 + 8), v206 + 1);
              v207 = *v208;
            }

            v209 = *(v207 + 8 * v206);
            if (!v209)
            {
              operator new();
            }

            v210 = (v209 + 4 * ((v203 >> 16) & 0x3F));
            v211 = v210[1];
            if (*v210 != -1 || v211 != 0)
            {
              v243 = *(*(v205 + 56) + ((v211 >> 3) & 0x1FF8)) + 24 * (v211 & 0x3F);
              v244 = (v243 + 8);
              std::__tree<gdc::LayerDataWithWorld>::destroy(*(v243 + 8));
              *v243 = v383;
              v245 = *(&v383 + 1);
              *v244 = *(&v383 + 1);
              v246 = v384;
              *(v243 + 16) = v384;
              if (v246)
              {
                *(v245 + 16) = v244;
                *&v383 = &v383 + 8;
                *(&v383 + 1) = 0;
                *&v384 = 0;
              }

              else
              {
                *v243 = v244;
              }

              v20 = v362;
LABEL_248:
              v247 = *(v375 + 41016) + (v203 >> 16 << 6);
              *(v247 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v369;
              ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>();
              *(v375 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::metadata) = *(v375 + 4096);
              std::__tree<gdc::LayerDataWithWorld>::destroy(*(&v383 + 1));
              goto LABEL_249;
            }

            std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v205 + 32, &v377);
            v213 = ((*(v205 + 40) - *(v205 + 32)) >> 2) - 1;
            *v210 = v203;
            v210[1] = v213;
            v214 = v213 >> 6;
            v216 = *(v205 + 56);
            v215 = *(v205 + 64);
            v217 = v215 - v216;
            if (v213 >> 6 < (v215 - v216) >> 3)
            {
LABEL_238:
              v237 = (*(v216 + 8 * v214) + 24 * (v213 & 0x3F));
              *v237 = v383;
              v238 = *(&v383 + 1);
              v237[1] = *(&v383 + 1);
              v239 = v237 + 1;
              v240 = v384;
              v237[2] = v384;
              if (v240)
              {
                *(v238 + 16) = v239;
                *&v383 = &v383 + 8;
                *(&v383 + 1) = 0;
                *&v384 = 0;
              }

              else
              {
                *v237 = v239;
              }

              v20 = v362;
              v241 = *(v205 + 152);
              v242 = *(v205 + 160);
              while (v241 != v242)
              {
                std::function<void ()(ecs2::Entity)>::operator()(*(v241 + 24), v203);
                v241 += 32;
              }

              goto LABEL_248;
            }

            v218 = v214 + 1;
            v219 = v214 + 1 - (v217 >> 3);
            v220 = *(v205 + 72);
            if (v219 > (v220 - v215) >> 3)
            {
              v221 = v220 - v216;
              v222 = (v220 - v216) >> 2;
              if (v222 <= v218)
              {
                v222 = v214 + 1;
              }

              if (v221 >= 0x7FFFFFFFFFFFFFF8)
              {
                v223 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v223 = v222;
              }

              if (!(v223 >> 61))
              {
                operator new();
              }

              goto LABEL_387;
            }

            v224 = 0;
            v225 = (v219 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
            v226 = vdupq_n_s64(v225);
            do
            {
              v227 = vmovn_s64(vcgeq_u64(v226, vorrq_s8(vdupq_n_s64(v224), xmmword_1B33B0560)));
              if (v227.i8[0])
              {
                *(v215 + 8 * v224) = 0;
              }

              if (v227.i8[4])
              {
                *(v215 + 8 * v224 + 8) = 0;
              }

              v224 += 2;
            }

            while (v225 - ((v219 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v224);
            *(v205 + 64) = v215 + 8 * v219;
            v228 = *(v205 + 80);
            v229 = *(v205 + 88);
            v230 = (v229 - v228) >> 4;
            if (v230 > v214)
            {
              if (v218 >= v230)
              {
                goto LABEL_236;
              }

              v231 = v228 + 16 * v218;
LABEL_235:
              *(v205 + 88) = v231;
LABEL_236:
              v216 = *(v205 + 56);
              if (v217 < (*(v205 + 64) - v216))
              {
                operator new();
              }

              goto LABEL_238;
            }

            v232 = v218 - v230;
            v233 = *(v205 + 96);
            if (v232 <= (v233 - v229) >> 4)
            {
              bzero(*(v205 + 88), 16 * v232);
              v231 = v229 + 16 * v232;
              goto LABEL_235;
            }

            v234 = v233 - v228;
            v235 = v234 >> 3;
            if (v234 >> 3 <= v218)
            {
              v235 = v214 + 1;
            }

            if (v234 >= 0x7FFFFFFFFFFFFFF0)
            {
              v236 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v236 = v235;
            }

            if (!(v236 >> 60))
            {
              operator new();
            }

LABEL_387:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v159 + 32, &v377);
          v167 = ((*(v159 + 40) - *(v159 + 32)) >> 2) - 1;
          *v164 = v157;
          v164[1] = v167;
          v168 = v167 >> 6;
          v170 = *(v159 + 56);
          v169 = *(v159 + 64);
          v171 = v169 - v170;
          if (v167 >> 6 < (v169 - v170) >> 3)
          {
LABEL_190:
            v191 = (*(v170 + 8 * v168) + 24 * (v167 & 0x3F));
            *v191 = v383;
            v192 = *(&v383 + 1);
            v191[1] = *(&v383 + 1);
            v193 = v191 + 1;
            v194 = v384;
            v191[2] = v384;
            if (v194)
            {
              *(v192 + 16) = v193;
              *&v383 = &v383 + 8;
              *(&v383 + 1) = 0;
              *&v384 = 0;
            }

            else
            {
              *v191 = v193;
            }

            v195 = *(v159 + 152);
            v196 = *(v159 + 160);
            while (v195 != v196)
            {
              std::function<void ()(ecs2::Entity)>::operator()(*(v195 + 24), v157);
              v195 += 32;
            }

            goto LABEL_199;
          }

          v172 = v168 + 1;
          v173 = v168 + 1 - (v171 >> 3);
          v174 = *(v159 + 72);
          if (v173 > (v174 - v169) >> 3)
          {
            v175 = v174 - v170;
            v176 = (v174 - v170) >> 2;
            if (v176 <= v172)
            {
              v176 = v168 + 1;
            }

            if (v175 >= 0x7FFFFFFFFFFFFFF8)
            {
              v177 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v177 = v176;
            }

            if (!(v177 >> 61))
            {
              operator new();
            }

            goto LABEL_387;
          }

          v178 = 0;
          v179 = (v173 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
          v180 = vdupq_n_s64(v179);
          do
          {
            v181 = vmovn_s64(vcgeq_u64(v180, vorrq_s8(vdupq_n_s64(v178), xmmword_1B33B0560)));
            if (v181.i8[0])
            {
              *(v169 + 8 * v178) = 0;
            }

            if (v181.i8[4])
            {
              *(v169 + 8 * v178 + 8) = 0;
            }

            v178 += 2;
          }

          while (v179 - ((v173 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v178);
          *(v159 + 64) = v169 + 8 * v173;
          v182 = *(v159 + 80);
          v183 = *(v159 + 88);
          v184 = (v183 - v182) >> 4;
          if (v184 <= v168)
          {
            v186 = v172 - v184;
            v187 = *(v159 + 96);
            if (v186 > (v187 - v183) >> 4)
            {
              v188 = v187 - v182;
              v189 = v188 >> 3;
              if (v188 >> 3 <= v172)
              {
                v189 = v168 + 1;
              }

              if (v188 >= 0x7FFFFFFFFFFFFFF0)
              {
                v190 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v190 = v189;
              }

              if (!(v190 >> 60))
              {
                operator new();
              }

              goto LABEL_387;
            }

            bzero(*(v159 + 88), 16 * v186);
            v185 = v183 + 16 * v186;
          }

          else
          {
            if (v172 >= v184)
            {
              goto LABEL_188;
            }

            v185 = v182 + 16 * v172;
          }

          *(v159 + 88) = v185;
LABEL_188:
          v170 = *(v159 + 56);
          if (v171 < (*(v159 + 64) - v170))
          {
            operator new();
          }

          goto LABEL_190;
        }

        v126 = v122 + 1;
        v127 = v122 + 1 - (v125 >> 3);
        v128 = *(v113 + 72);
        if (v127 > (v128 - v123) >> 3)
        {
          v129 = v128 - v124;
          v130 = (v128 - v124) >> 2;
          if (v130 <= v126)
          {
            v130 = v122 + 1;
          }

          if (v129 >= 0x7FFFFFFFFFFFFFF8)
          {
            v131 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v131 = v130;
          }

          if (!(v131 >> 61))
          {
            operator new();
          }

          goto LABEL_387;
        }

        v132 = 0;
        v133 = (v127 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
        v134 = vdupq_n_s64(v133);
        do
        {
          v135 = vmovn_s64(vcgeq_u64(v134, vorrq_s8(vdupq_n_s64(v132), xmmword_1B33B0560)));
          if (v135.i8[0])
          {
            *(v123 + 8 * v132) = 0;
          }

          if (v135.i8[4])
          {
            *(v123 + 8 * v132 + 8) = 0;
          }

          v132 += 2;
        }

        while (v133 - ((v127 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v132);
        *(v113 + 64) = v123 + 8 * v127;
        v136 = *(v113 + 80);
        v137 = *(v113 + 88);
        v138 = (v137 - v136) >> 4;
        if (v138 <= v122)
        {
          v140 = v126 - v138;
          v141 = *(v113 + 96);
          if (v140 > (v141 - v137) >> 4)
          {
            v142 = v141 - v136;
            v143 = v142 >> 3;
            if (v142 >> 3 <= v126)
            {
              v143 = v122 + 1;
            }

            if (v142 >= 0x7FFFFFFFFFFFFFF0)
            {
              v144 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v144 = v143;
            }

            if (!(v144 >> 60))
            {
              operator new();
            }

            goto LABEL_387;
          }

          bzero(*(v113 + 88), 16 * v140);
          v139 = v137 + 16 * v140;
        }

        else
        {
          if (v126 >= v138)
          {
            goto LABEL_140;
          }

          v139 = v136 + 16 * v126;
        }

        *(v113 + 88) = v139;
LABEL_140:
        v124 = *(v113 + 56);
        if (v125 < (*(v113 + 64) - v124))
        {
          operator new();
        }

        goto LABEL_142;
      }

      v80 = v76 + 1;
      v81 = v76 + 1 - (v79 >> 3);
      v82 = *(v67 + 72);
      if (v81 > (v82 - v77) >> 3)
      {
        v83 = v82 - v78;
        v84 = (v82 - v78) >> 2;
        if (v84 <= v80)
        {
          v84 = v76 + 1;
        }

        if (v83 >= 0x7FFFFFFFFFFFFFF8)
        {
          v85 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v85 = v84;
        }

        if (!(v85 >> 61))
        {
          operator new();
        }

        goto LABEL_387;
      }

      v86 = 0;
      v87 = (v81 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v88 = vdupq_n_s64(v87);
      do
      {
        v89 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(vdupq_n_s64(v86), xmmword_1B33B0560)));
        if (v89.i8[0])
        {
          *(v77 + 8 * v86) = 0;
        }

        if (v89.i8[4])
        {
          *(v77 + 8 * v86 + 8) = 0;
        }

        v86 += 2;
      }

      while (v87 - ((v81 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v86);
      *(v67 + 64) = v77 + 8 * v81;
      v90 = *(v67 + 80);
      v91 = *(v67 + 88);
      v92 = (v91 - v90) >> 4;
      if (v92 <= v76)
      {
        v94 = v80 - v92;
        v95 = *(v67 + 96);
        if (v94 > (v95 - v91) >> 4)
        {
          v96 = v95 - v90;
          v97 = v96 >> 3;
          if (v96 >> 3 <= v80)
          {
            v97 = v76 + 1;
          }

          if (v96 >= 0x7FFFFFFFFFFFFFF0)
          {
            v98 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v98 = v97;
          }

          if (!(v98 >> 60))
          {
            operator new();
          }

          goto LABEL_387;
        }

        bzero(*(v67 + 88), 16 * v94);
        v93 = v91 + 16 * v94;
      }

      else
      {
        if (v80 >= v92)
        {
          goto LABEL_92;
        }

        v93 = v90 + 16 * v80;
      }

      *(v67 + 88) = v93;
LABEL_92:
      v78 = *(v67 + 56);
      if (v79 < (*(v67 + 64) - v78))
      {
        operator new();
      }

      goto LABEL_94;
    }

    v42 = v38 + 1;
    v43 = v38 + 1 - (v41 >> 3);
    v44 = *(v29 + 72);
    if (v43 > (v44 - v39) >> 3)
    {
      v45 = v44 - v40;
      v46 = (v44 - v40) >> 2;
      if (v46 <= v42)
      {
        v46 = v38 + 1;
      }

      if (v45 >= 0x7FFFFFFFFFFFFFF8)
      {
        v47 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v46;
      }

      if (!(v47 >> 61))
      {
        operator new();
      }

      goto LABEL_387;
    }

    v48 = 0;
    v49 = (v43 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v50 = vdupq_n_s64(v49);
    do
    {
      v51 = vmovn_s64(vcgeq_u64(v50, vorrq_s8(vdupq_n_s64(v48), xmmword_1B33B0560)));
      if (v51.i8[0])
      {
        *(v39 + 8 * v48) = 0;
      }

      if (v51.i8[4])
      {
        *(v39 + 8 * v48 + 8) = 0;
      }

      v48 += 2;
    }

    while (v49 - ((v43 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v48);
    *(v29 + 64) = v39 + 8 * v43;
    v52 = *(v29 + 80);
    v53 = *(v29 + 88);
    v54 = (v53 - v52) >> 4;
    if (v54 <= v38)
    {
      v56 = v42 - v54;
      v57 = *(v29 + 96);
      if (v56 > (v57 - v53) >> 4)
      {
        v58 = v57 - v52;
        v59 = v58 >> 3;
        if (v58 >> 3 <= v42)
        {
          v59 = v38 + 1;
        }

        if (v58 >= 0x7FFFFFFFFFFFFFF0)
        {
          v60 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v60 = v59;
        }

        if (!(v60 >> 60))
        {
          operator new();
        }

        goto LABEL_387;
      }

      bzero(*(v29 + 88), 16 * v56);
      v55 = v53 + 16 * v56;
    }

    else
    {
      if (v42 >= v54)
      {
        goto LABEL_51;
      }

      v55 = v52 + 16 * v42;
    }

    *(v29 + 88) = v55;
LABEL_51:
    v40 = *(v29 + 56);
    if (v41 < (*(v29 + 64) - v40))
    {
      operator new();
    }

    goto LABEL_53;
  }

LABEL_249:
  ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)79>>(v20);
  v248 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)79>>(v20);
  v249 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(v20);
  v250 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)79>>(v20);
  v251 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(v20);
  *&v383 = v248;
  *(&v383 + 1) = v249;
  v252 = 8;
  v253 = v248;
  v254 = &v383;
  *&v384 = v250;
  *(&v384 + 1) = v251;
  do
  {
    if (*(*(&v383 + v252) + 40) - *(*(&v383 + v252) + 32) < *(v253 + 40) - *(v253 + 32))
    {
      v253 = *(&v383 + v252);
      v254 = &v383 + v252;
    }

    v252 += 8;
  }

  while (v252 != 32);
  v256 = *(*v254 + 32);
  v255 = *(*v254 + 40);
  *&v383 = v256;
  *(&v383 + 1) = v255;
  *&v384 = v248;
  *(&v384 + 1) = v249;
  *&v385 = v250;
  *(&v385 + 1) = v251;
  v370 = v255;
  while (v256 != v255 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v383, *v256, v256[1]))
  {
    v256 += 2;
    *&v383 = v256;
    v255 = v370;
  }

  v377 = v383;
  v378 = v384;
  v379 = v385;
  v380 = v386;
  v257 = v383;
  if (v383 != v370)
  {
    v361 = v379;
    v363 = *(&v378 + 1);
    v258 = *(&v377 + 1);
    v359 = v378;
    v360 = *(&v379 + 1);
    do
    {
      v259 = v257[1];
      v260 = v259 & 0x3F;
      v261 = (v259 >> 3) & 0x1FF8;
      v262 = *(*(*(v359 + 8) + v261) + 4 * v260 + 2);
      v263 = *(*(v359 + 56) + ((v262 >> 3) & 0x1FF8)) + 24 * (v262 & 0x3F);
      v264 = *(*(*(v363 + 8) + v261) + 4 * v260 + 2);
      v265 = (*(*(v363 + 56) + ((v264 >> 3) & 0x1FF8)) + 24 * (v264 & 0x3F));
      v266 = *(*(*(v361 + 8) + v261) + 4 * v260 + 2);
      v267 = *(*(v361 + 56) + ((v266 >> 3) & 0x1FF8)) + 24 * (v266 & 0x3F);
      v268 = *(*(*(v360 + 8) + v261) + 4 * v260 + 2);
      v269 = *(*(v360 + 56) + ((v268 >> 3) & 0x1FF8)) + 24 * (v268 & 0x3F);
      v270 = *v257;
      std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100](v263, v265);
      v271 = (v263 + 8);
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(v263 + 8));
      *v263 = v263 + 8;
      *(v263 + 16) = 0;
      *(v263 + 8) = 0;
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(v267 + 8));
      *v267 = v267 + 8;
      *(v267 + 16) = 0;
      *(v267 + 8) = 0;
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(v269 + 8));
      *v269 = v269 + 8;
      v376 = v269;
      *(v269 + 16) = 0;
      *(v269 + 8) = 0;
      v272 = md::SceneContext::layerDataInView(v364, 79);
      std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(v263, *v272, v272 + 1);
      v273 = *v263;
      v274 = v265 + 1;
      v275 = *v265;
      v276 = *v267;
      v381 = v267;
      v382 = v276;
      if (v273 != v263 + 8)
      {
        if (v275 == v274)
        {
          v292 = v267;
LABEL_292:
          *&v383 = v292;
          *(&v383 + 1) = v276;
          if (v273 != v271)
          {
            do
            {
              std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v383, v273 + 32);
              v293 = *(v273 + 8);
              if (v293)
              {
                do
                {
                  v294 = v293;
                  v293 = *v293;
                }

                while (v293);
              }

              else
              {
                do
                {
                  v294 = *(v273 + 16);
                  v36 = *v294 == v273;
                  v273 = v294;
                }

                while (!v36);
              }

              v273 = v294;
            }

            while (v294 != v271);
          }
        }

        else
        {
          while (1)
          {
            v277 = *(v273 + 32);
            v278 = *(v273 + 48);
            v279 = v278;
            v280 = *(v275 + 48);
            v281 = v275[4];
            if (v278 == v280 ? v277 < v281 : v278 < v280)
            {
              std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v381, v273 + 32);
              v283 = *(v273 + 8);
              if (v283)
              {
                do
                {
                  v273 = v283;
                  v283 = *v283;
                }

                while (v283);
              }

              else
              {
                do
                {
                  v284 = v273;
                  v273 = *(v273 + 16);
                }

                while (*v273 != v284);
              }
            }

            else
            {
              v285 = v281 < v277;
              if (v279 != v280)
              {
                v285 = v280 < v279;
              }

              if (v285)
              {
                v286 = v275[1];
                if (v286)
                {
                  do
                  {
                    v275 = v286;
                    v286 = *v286;
                  }

                  while (v286);
                }

                else
                {
                  do
                  {
                    v287 = v275;
                    v275 = v275[2];
                  }

                  while (*v275 != v287);
                }
              }

              else
              {
                v288 = *(v273 + 8);
                if (v288)
                {
                  do
                  {
                    v289 = v288;
                    v288 = *v288;
                  }

                  while (v288);
                }

                else
                {
                  do
                  {
                    v289 = *(v273 + 16);
                    v36 = *v289 == v273;
                    v273 = v289;
                  }

                  while (!v36);
                }

                v290 = v275[1];
                if (v290)
                {
                  do
                  {
                    v275 = v290;
                    v290 = *v290;
                  }

                  while (v290);
                }

                else
                {
                  do
                  {
                    v291 = v275;
                    v275 = v275[2];
                  }

                  while (*v275 != v291);
                }

                v273 = v289;
              }
            }

            if (v273 == v271)
            {
              break;
            }

            if (v275 == v274)
            {
              v292 = v381;
              v276 = v382;
              goto LABEL_292;
            }
          }
        }
      }

      v295 = *v265;
      v296 = *v263;
      v297 = *v376;
      v381 = v376;
      v382 = v297;
      if (v295 != v274)
      {
        if (v296 == v271)
        {
          v313 = v376;
LABEL_332:
          *&v383 = v313;
          *(&v383 + 1) = v297;
          if (v295 != v274)
          {
            do
            {
              std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v383, (v295 + 4));
              v314 = v295[1];
              if (v314)
              {
                do
                {
                  v315 = v314;
                  v314 = *v314;
                }

                while (v314);
              }

              else
              {
                do
                {
                  v315 = v295[2];
                  v36 = *v315 == v295;
                  v295 = v315;
                }

                while (!v36);
              }

              v295 = v315;
            }

            while (v315 != v274);
          }
        }

        else
        {
          while (1)
          {
            v298 = v295[4];
            v299 = *(v295 + 48);
            v300 = v299;
            v301 = *(v296 + 48);
            v302 = *(v296 + 32);
            if (v299 == v301 ? v298 < v302 : v299 < v301)
            {
              std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v381, (v295 + 4));
              v304 = v295[1];
              if (v304)
              {
                do
                {
                  v295 = v304;
                  v304 = *v304;
                }

                while (v304);
              }

              else
              {
                do
                {
                  v305 = v295;
                  v295 = v295[2];
                }

                while (*v295 != v305);
              }
            }

            else
            {
              v306 = v302 < v298;
              if (v300 != v301)
              {
                v306 = v301 < v300;
              }

              if (v306)
              {
                v307 = *(v296 + 8);
                if (v307)
                {
                  do
                  {
                    v296 = v307;
                    v307 = *v307;
                  }

                  while (v307);
                }

                else
                {
                  do
                  {
                    v308 = v296;
                    v296 = *(v296 + 16);
                  }

                  while (*v296 != v308);
                }
              }

              else
              {
                v309 = v295[1];
                if (v309)
                {
                  do
                  {
                    v310 = v309;
                    v309 = *v309;
                  }

                  while (v309);
                }

                else
                {
                  do
                  {
                    v310 = v295[2];
                    v36 = *v310 == v295;
                    v295 = v310;
                  }

                  while (!v36);
                }

                v311 = *(v296 + 8);
                if (v311)
                {
                  do
                  {
                    v296 = v311;
                    v311 = *v311;
                  }

                  while (v311);
                }

                else
                {
                  do
                  {
                    v312 = v296;
                    v296 = *(v296 + 16);
                  }

                  while (*v296 != v312);
                }

                v295 = v310;
              }
            }

            if (v295 == v274)
            {
              break;
            }

            if (v296 == v271)
            {
              v313 = v381;
              v297 = v382;
              goto LABEL_332;
            }
          }
        }
      }

      v316 = v270 >> 10;
      if (*(v267 + 16))
      {
        v317 = *(a1 + 128);
        LODWORD(v383) = v270;
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>();
        v318 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::metadata;
        v319 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(v317);
        v320 = v319;
        v321 = v270 >> 22;
        v322 = *(v319 + 8);
        v323 = (v319 + 8);
        if (v270 >> 22 >= (*(v319 + 16) - v322) >> 3)
        {
          std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v319 + 8), v321 + 1);
          v322 = *v323;
        }

        v324 = *(v322 + 8 * v321);
        if (!v324)
        {
          operator new();
        }

        v325 = (v324 + 4 * ((v270 >> 16) & 0x3F));
        if (*v325 == -1 && v325[1] == 0)
        {
          std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v320 + 32, &v383);
          v327 = ((*(v320 + 40) - *(v320 + 32)) >> 2) - 1;
          *v325 = v270;
          v325[1] = v327;
          v329 = *(v320 + 104);
          v328 = *(v320 + 112);
          while (v329 != v328)
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v329 + 24), v270);
            v329 += 32;
          }
        }

        *(*(v317 + 41016) + (v316 & 0x3FFFC0) + ((v318 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v318;
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>();
        *(v317 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::metadata) = *(v317 + 4096);
      }

      if (v376[2])
      {
        v330 = *(a1 + 128);
        LODWORD(v383) = v270;
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>();
        v331 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::metadata;
        v332 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(v330);
        v333 = v332;
        v334 = v270 >> 22;
        v335 = *(v332 + 8);
        v336 = (v332 + 8);
        if (v270 >> 22 >= (*(v332 + 16) - v335) >> 3)
        {
          std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v332 + 8), v334 + 1);
          v335 = *v336;
        }

        v337 = *(v335 + 8 * v334);
        if (!v337)
        {
          operator new();
        }

        v338 = (v337 + 4 * ((v270 >> 16) & 0x3F));
        if (*v338 == -1 && v338[1] == 0)
        {
          std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v333 + 32, &v383);
          v340 = ((*(v333 + 40) - *(v333 + 32)) >> 2) - 1;
          *v338 = v270;
          v338[1] = v340;
          v342 = *(v333 + 104);
          v341 = *(v333 + 112);
          while (v342 != v341)
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v342 + 24), v270);
            v342 += 32;
          }
        }

        *(*(v330 + 41016) + (v316 & 0x3FFFC0) + ((v331 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v331;
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>();
        *(v330 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::metadata) = *(v330 + 4096);
      }

      v343 = v257 + 2;
      while (1)
      {
        v257 = v343;
        *&v377 = v343;
        if (v343 == v258)
        {
          break;
        }

        v344 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v377, *v343, v343[1]);
        v343 = v257 + 2;
        if (v344)
        {
          v345 = v257;
          goto LABEL_372;
        }
      }

      v345 = v258;
LABEL_372:
      ;
    }

    while (v345 != v370);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::localId;
    unk_1EB829480 = 0x34E30CF3F8B8CD48;
    qword_1EB829488 = "SceneComponents::LayerDataDidExitView<md::MapDataType::PolarFlyover>]";
    qword_1EB829490 = 68;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F36D0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F36B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidExitView<(md::MapDataType)79>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F36B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::localId;
    *algn_1EB8293E8 = 0xDFFF4A13597C83A8;
    qword_1EB8293F0 = "SceneComponents::LayerDataDidEnterView<md::MapDataType::PolarFlyover>]";
    qword_1EB8293F8 = 69;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3668;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3648;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataDidEnterView<(md::MapDataType)79>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3648;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::localId;
    *algn_1EB829438 = 0x27AB8748450A93BBLL;
    qword_1EB829440 = "SceneComponents::LayerDataExitingView<md::MapDataType::PolarFlyover>]";
    qword_1EB829448 = 68;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(v3);
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
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = (*(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F));
        v18 = v17[2];
        v24 = *v17;
        v19 = v17 + 1;
        v20 = v17[1];
        v25 = v20;
        v26 = v18;
        if (v18)
        {
          v20[2] = &v25;
          *v17 = v19;
          *v19 = 0;
          v17[2] = 0;
        }

        else
        {
          v24 = &v25;
        }

        std::__tree<gdc::LayerDataWithWorld>::__move_assign(v17, v16);
        v21 = (v16 + 8);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*(v16 + 8));
        v22 = v26;
        *v16 = v24;
        v23 = v25;
        *(v16 + 8) = v25;
        *(v16 + 16) = v22;
        if (v22)
        {
          v23[2] = v21;
          v25 = 0;
          v26 = 0;
          v23 = 0;
        }

        else
        {
          *v16 = v21;
        }

        std::__tree<gdc::LayerDataWithWorld>::destroy(v23);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*v21);
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)79>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2F48;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2F08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2F28;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8));
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v5 = a1[7];
  v6 = a1[8];
  while (v5 != v6)
  {
    if (*v5)
    {
      operator delete(*v5);
    }

    ++v5;
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2F08;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataExitingView<(md::MapDataType)79>,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::localId;
    *algn_1EB829358 = 0x3C083CB4ACE2ADF1;
    qword_1EB829360 = "SceneComponents::LayerDataPreviousInView<md::MapDataType::PolarFlyover>]";
    qword_1EB829368 = 71;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(v3);
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
        v15 = v10[7];
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v14 & 0x3F);
        v17 = (*(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F));
        v18 = v17[2];
        v24 = *v17;
        v19 = v17 + 1;
        v20 = v17[1];
        v25 = v20;
        v26 = v18;
        if (v18)
        {
          v20[2] = &v25;
          *v17 = v19;
          *v19 = 0;
          v17[2] = 0;
        }

        else
        {
          v24 = &v25;
        }

        std::__tree<gdc::LayerDataWithWorld>::__move_assign(v17, v16);
        v21 = (v16 + 8);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*(v16 + 8));
        v22 = v26;
        *v16 = v24;
        v23 = v25;
        *(v16 + 8) = v25;
        *(v16 + 16) = v22;
        if (v22)
        {
          v23[2] = v21;
          v25 = 0;
          v26 = 0;
          v23 = 0;
        }

        else
        {
          *v16 = v21;
        }

        std::__tree<gdc::LayerDataWithWorld>::destroy(v23);
        std::__tree<gdc::LayerDataWithWorld>::destroy(*v21);
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2E38;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2DF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F2E18;
  v2 = a1[4];
  v3 = a1[5];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(*(a1[7] + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v4 & 0x3F) + 8));
      ++v4;
      v2 = a1[4];
      v3 = a1[5];
    }

    while (v4 < (v3 - v2) >> 2);
  }

  if (v3 != v2)
  {
    do
    {
      v2 = ecs2::sparse_set<ecs2::Entity,64ul>::erase(a1, v2);
    }

    while (a1[5] != v2);
  }

  v5 = a1[7];
  v6 = a1[8];
  while (v5 != v6)
  {
    if (*v5)
    {
      operator delete(*v5);
    }

    ++v5;
  }

  v7 = a1[10];
  if (v7)
  {
    a1[11] = v7;
    operator delete(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[8] = v8;
    operator delete(v8);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F2DF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataPreviousInView<(md::MapDataType)79>,64ul>::~storage(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::localId;
    *algn_1EB8295A8 = 0x83F186BB0B4B5048;
    qword_1EB8295B0 = "SceneComponents::LayerDataInfo<md::MapDataType::PolarFlyover>]";
    qword_1EB8295B8 = 61;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)79>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13LayerDataInfoILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)79>>(v3);
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
        LOWORD(v16) = *(v19 + 2 * v18);
        *(v19 + 2 * v18) = *(v17 + 2 * v15);
        *(v17 + 2 * v15) = v16;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)79>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13LayerDataInfoILN2md11MapDataTypeE79EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3758;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3718;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F3738;
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

void ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)79>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)79>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)79>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F3718;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,SceneComponents::LayerDataInfo<(md::MapDataType)79>,64ul>::~storage(a1);
}

_BYTE *md::Logic<md::CollectMapDataLogic<(md::MapDataType)79>,md::CollectMapDataContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE4007F1EDCD91179 && (v4 = *(a3 + 32)) != 0)
  {
    v9 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
    v10 = v7;
    return (*(*a1 + 160))(a1, a2, &v9, v4);
  }

  else
  {

    return std::string::basic_string[abi:nn200100]<0>(a4, "");
  }
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)79>,md::CollectMapDataContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE4007F1EDCD91179)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 152))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)79>,md::CollectMapDataContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE4007F1EDCD91179)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 144))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)79>,md::CollectMapDataContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE4007F1EDCD91179)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)79>,md::CollectMapDataContext<(md::MapDataType)79>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xE4007F1EDCD91179)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LayoutContext::get<md::SceneContext>(*(a2 + 8));
      v8 = v6;
      return (*(*v5 + 128))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::CollectMapDataContext<(md::MapDataType)79>>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::CollectMapDataContext<(md::MapDataType)79>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A255D0;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::CollectMapDataContext<(md::MapDataType)79>>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A255D0;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::CollectMapDataLogic<(md::MapDataType)79>::didBecomeInactive(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 != -65536)
  {
    ecs2::BasicRegistry<void>::destroy(*(a1 + 128), v1);
    *(a1 + 120) = -65536;
  }
}

void md::CollectMapDataLogic<(md::MapDataType)79>::~CollectMapDataLogic(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CollectMapDataLogic<(md::MapDataType)79>::~CollectMapDataLogic(uint64_t a1)
{
  *a1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 80));
  return a1;
}

void md::mun::MuninMetaLayerDataSource::createLayerData(unsigned __int16 **a1@<X2>, void *a2@<X8>)
{
  gdc::LayerDataSource::getResourceFromMap(&v5, 22, *a1, a1[1]);
  v4 = v5;
  v3 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  if (v4)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void sub_1B2D73960(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<md::mun::MuninMetadata>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F3840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::mun::MuninMetaLayerDataSource::constructRequests(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(v10, *v4);
      v5 = v11;
      v13[0] = gdc::ResourceKey::getInt32(v11, 0);
      v13[1] = gdc::ResourceKey::getInt32(v5, 1u);
      v13[2] = gdc::ResourceKey::getInt32(v5, 2u);
      v13[3] = gdc::ResourceKey::getInt32(v5, 3u);
      gdc::ResourceKey::ResourceKey(v7, 0, 22, v13, 4, *(*v4 + 112), 2147483646);
      v6 = *v4;
      v4 += 2;
      gdc::LayerDataRequest::request(v6, v7, 0);
      if (v8 != v9)
      {
        free(v8);
      }

      if (v11 != v12)
      {
        free(v11);
      }
    }

    while (v4 != a3);
  }
}

void md::mun::MuninMetaLayerDataSource::~MuninMetaLayerDataSource(md::mun::MuninMetaLayerDataSource *this)
{
  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<std::pair<gm::Range<unsigned long>,std::shared_ptr<ggl::IndexData>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 32;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<gm::Range<unsigned long>,std::shared_ptr<ggl::IndexData>>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__split_buffer<std::pair<gm::Range<unsigned long>,std::shared_ptr<ggl::IndexData>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 32;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t **a1, unint64_t a2, uint64_t **a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v8 <= a2)
        {
          break;
        }

        v5 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= a2)
      {
        break;
      }

      v5 = v7[1];
      if (!v5)
      {
        v6 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    v9 = ggl::zone_mallocator::instance(a1);
    v10 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,void *>>(v9);
    v11 = **a3;
    v10[5] = 0;
    v10[6] = 0;
    v10[4] = v11;
    std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(a1, v7, v6, v10);
    return v10;
  }

  return v7;
}

void std::__shared_ptr_emplace<ggl::Mesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F3878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Fog::FogPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F38E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::Sky::SkyPipelineState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F38B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::SpecularBuildingPointyRoof::BuildingPipelineSetup::~BuildingPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B2D73FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CachedShouldRequestWGS84Elevations;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B2D74158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup::~Pos2DUVPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::OverlayTileData::estimatedCost(md::OverlayTileData *this)
{
  v1 = this + 760;
  v2 = *(this + 96);
  result = 1080;
  while (v2 != v1)
  {
    v4 = *(v2 + 2);
    if (v4)
    {
      v5 = (4 * *(*(v4 + 32) + 80) * *(*(v4 + 32) + 84));
      goto LABEL_5;
    }

    v6 = *(v2 + 3);
    if (v6)
    {
      v7 = *(v6 + 32);
      v8 = *(v6 + 40);
      if (v7 == v8)
      {
        goto LABEL_49;
      }

      v5 = 0;
      do
      {
        v9 = *v7++;
        v5 = *(**(v9 + 64) + 48) + v5 + *(*(v9 + 96) + 48) - (*(**(v9 + 64) + 40) + *(*(v9 + 96) + 40));
      }

      while (v7 != v8);
    }

    else
    {
      v10 = *(v2 + 4);
      if (v10)
      {
        v11 = *(v10 + 32);
        v12 = *(v10 + 40);
        if (v11 == v12)
        {
          goto LABEL_49;
        }

        v5 = 0;
        do
        {
          v13 = *v11++;
          v5 = *(**(v13 + 64) + 48) + v5 + *(*(v13 + 96) + 48) - (*(**(v13 + 64) + 40) + *(*(v13 + 96) + 40));
        }

        while (v11 != v12);
      }

      else
      {
        if (*(v2 + 5))
        {
          v5 = 24;
          goto LABEL_5;
        }

        v14 = *(v2 + 6);
        v15 = *(v2 + 7);
        if (v14 == v15)
        {
          v28 = *(v2 + 13);
          if (v28)
          {
            v29 = *v28;
            v30 = v28[1];
            if (*v28 == v30)
            {
              goto LABEL_49;
            }

            v5 = 0;
            do
            {
              v5 += (4 * *(*(v29 + 16) + 80) * *(*(v29 + 16) + 84));
              v29 += 144;
            }

            while (v29 != v30);
          }

          else
          {
            v31 = *(v2 + 14);
            if (v31)
            {
              v32 = *v31;
              v33 = v31[1];
              if (*v31 == v33)
              {
LABEL_49:
                v5 = 0;
                goto LABEL_5;
              }

              v5 = 0;
              do
              {
                v5 += *(v32 + 136);
                v32 += 144;
              }

              while (v32 != v33);
            }

            else
            {
              v5 = 1;
            }
          }
        }

        else
        {
          v5 = 0;
          do
          {
            v16 = *v14;
            v17 = *(*v14 + 32);
            if (v17)
            {
              v18 = vaddq_s64(*(**(v17 + 64) + 40), *(*(v17 + 96) + 40));
              v17 = vsubq_s64(vdupq_laneq_s64(v18, 1), v18).u64[0];
            }

            v19 = v16[5];
            if (v19)
            {
              v17 = *(**(v19 + 64) + 48) + v17 + *(*(v19 + 96) + 48) - (*(**(v19 + 64) + 40) + *(*(v19 + 96) + 40));
            }

            v20 = v16[6];
            if (v20)
            {
              v21 = *(v20 + 32);
              v22 = *(v20 + 40);
              while (v21 != v22)
              {
                v23 = *v21++;
                v17 = *(**(v23 + 64) + 48) + v17 + *(*(v23 + 96) + 48) - (*(**(v23 + 64) + 40) + *(*(v23 + 96) + 40));
              }
            }

            v24 = v16[39];
            if (v24)
            {
              v25 = v24[15];
              if (v25)
              {
                v26 = v24[16];
                if (v26)
                {
                  v27 = (v24[20] + v24[19]) * v24[21];
                }

                else
                {
                  v27 = 0;
                }

                if (v26)
                {
                  v25 = v27 + 10;
                }

                else
                {
                  v25 = v27;
                }
              }

              v17 += v25;
            }

            v5 += v17;
            v14 += 8;
          }

          while (v14 != v15);
        }
      }
    }

LABEL_5:
    result += v5;
    v2 = *(v2 + 1);
  }

  return result;
}

void md::OverlayTileData::~OverlayTileData(md::OverlayTileData *this)
{
  md::OverlayTileData::~OverlayTileData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29F39D0;
  *(this + 80) = &unk_1F29F3A10;
  if (*(this + 106))
  {
    md::OverlayTileData::clearEntities(this);
  }

  geo::read_write_lock::~read_write_lock((this + 880));
  v2 = *(this + 107);
  if (v2)
  {
    *(this + 108) = v2;
    operator delete(v2);
  }

  v3 = *(this + 105);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(this + 101);
  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(this + 98);
  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(this + 95);
  v4 = *(this + 94);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 92);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  md::MapTileData::~MapTileData(this);
}

void sub_1B2D74800(_Unwind_Exception *a1)
{
  geo::read_write_lock::~read_write_lock((v1 + 880));
  v3 = *(v1 + 856);
  if (v3)
  {
    *(v1 + 864) = v3;
    operator delete(v3);
  }

  v4 = *(v1 + 840);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear((v1 + 808));
  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear((v1 + 784));
  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear((v1 + 760));
  v5 = *(v1 + 752);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(v1 + 736);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  md::MapTileData::~MapTileData(v1);
  _Unwind_Resume(a1);
}

BOOL md::OverlayTileData::clearEntities(md::OverlayTileData *this)
{
  md::components::QueuedForDestruction<>::addDestructionTagToEntities<md::DrapingLogic,std::__wrap_iter<gdc::Entity *>>(*(this + 106), *(this + 107), *(this + 108));
  result = gdc::Registry::remove<md::overlayComponents::VectorOverlay,std::__wrap_iter<gdc::Entity *>>(*(this + 106), *(this + 107), *(this + 108));
  v3 = *(this + 106);
  v4 = *(this + 107);
  v5 = *(this + 108);
  if (v4 != v5)
  {
    do
    {
      v6 = gdc::Registry::storage<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>>(v3);
      v7 = *v4++;
      result = gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::Texture>>::remove(v6, v7);
    }

    while (v4 != v5);
    v3 = *(this + 106);
    v4 = *(this + 107);
    v5 = *(this + 108);
  }

  if (v4 != v5)
  {
    do
    {
      v8 = gdc::Registry::storage<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>>(v3);
      v9 = *v4++;
      result = gdc::ComponentStorageWrapper<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>>::remove(v8, v9);
    }

    while (v4 != v5);
    v4 = *(this + 107);
  }

  *(this + 108) = v4;
  return result;
}

void std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(uint64_t *a1)
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
        md::OverlayTileData::OverlayTileResource::~OverlayTileResource((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void md::OverlayTileData::OverlayTileResource::~OverlayTileResource(md::OverlayTileData::OverlayTileResource *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  std::unique_ptr<std::vector<md::PolylineOverlayRenderable>>::reset[abi:nn200100](this + 13, 0);
  std::unique_ptr<std::vector<md::OverlayTileData::OverlayTileResource::CustomTile>>::reset[abi:nn200100](this + 12, 0);
  std::unique_ptr<std::vector<md::OverlayTileData::OverlayTileResource::RasterTile>>::reset[abi:nn200100](this + 11, 0);
  std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedGradientRibbonLayer>::reset[abi:nn200100](this + 10, 0);
  std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedRibbonLayer>::reset[abi:nn200100](this + 9, 0);
  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v7 = (this + 32);
  std::vector<std::unique_ptr<md::PolygonOverlayRenderable>>::__destroy_vector::operator()[abi:nn200100](&v7);
  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    std::default_delete<md::OverlayTileData::OverlayTileResource::CircleResource>::operator()[abi:nn200100](v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::unique_ptr<md::OverlayTileData::OverlayTileResource::Texture>::reset[abi:nn200100](this, 0);
}

void ***std::unique_ptr<std::vector<md::PolylineOverlayRenderable>>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v2[1];
      v5 = *v2;
      if (v4 != v3)
      {
        do
        {
          v4 -= 56;
          std::__destroy_at[abi:nn200100]<md::PolylineOverlayRenderable,0>(v4);
        }

        while (v4 != v3);
        v5 = *v2;
      }

      v2[1] = v3;
      operator delete(v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ***std::unique_ptr<std::vector<md::OverlayTileData::OverlayTileResource::CustomTile>>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<md::OverlayTileData::OverlayTileResource::CustomTile>::__destroy_vector::operator()[abi:nn200100](&v3);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void ***std::unique_ptr<std::vector<md::OverlayTileData::OverlayTileResource::RasterTile>>::reset[abi:nn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = v2[1];
      v5 = *v2;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 2);
          if (v6)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v6);
          }

          v7 = *(v4 - 4);
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v7);
          }

          v8 = *(v4 - 6);
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
          }

          v9 = *(v4 - 8);
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v9);
          }

          v10 = *(v4 - 15);
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v10);
          }

          v11 = *(v4 - 17);
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v11);
          }

          v4 -= 144;
        }

        while (v4 != v3);
        v5 = *v2;
      }

      v2[1] = v3;
      operator delete(v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t **std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedGradientRibbonLayer>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

uint64_t **std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedRibbonLayer>::reset[abi:nn200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::vector<std::unique_ptr<md::PolygonOverlayRenderable>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<md::PolygonOverlayRenderable>>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::default_delete<md::OverlayTileData::OverlayTileResource::CircleResource>::operator()[abi:nn200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::unique_ptr<md::OverlayTileData::OverlayTileResource::Texture>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[9];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = v2[7];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    v5 = v2[5];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

md::PolygonOverlayRenderable *std::vector<std::unique_ptr<md::PolygonOverlayRenderable>>::__base_destruct_at_end[abi:nn200100](md::PolygonOverlayRenderable *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      md::PolygonOverlayRenderable::~PolygonOverlayRenderable(result);
      result = MEMORY[0x1B8C62190]();
    }
  }

  *(v3 + 1) = a2;
  return result;
}

void md::PolygonOverlayRenderable::~PolygonOverlayRenderable(md::PolygonOverlayRenderable *this)
{
  v2 = *(this + 40);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v16 = (this + 288);
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&v16);
  v3 = *(this + 35);
  *(this + 35) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 34);
  *(this + 34) = 0;
  if (v4)
  {
    v5 = *(v4 + 72);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(v4 + 8);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    MEMORY[0x1B8C62190](v4, 0x1020C408635837CLL);
  }

  for (i = 248; i != 136; i -= 8)
  {
    v8 = *(this + i);
    *(this + i) = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  v9 = *(this + 17);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 15);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(this + 10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v12 = *(this + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(this + 6);
  *(this + 6) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 5);
  *(this + 5) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(this + 4);
  *(this + 4) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }
}

void std::vector<md::OverlayTileData::OverlayTileResource::CustomTile>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 104;
      do
      {
        v7 = *(v4 - 3);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        v8 = *(v4 - 5);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        v9 = *(v4 - 7);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        }

        v10 = *(v4 - 9);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }

        *(v4 - 13) = off_1F2A4C810;

        v6 -= 144;
        v4 -= 144;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void geo::_retain_ptr<objc_object * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A4C810;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<objc_object * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = off_1F2A4C810;

  return a1;
}

uint64_t std::__destroy_at[abi:nn200100]<md::PolylineOverlayRenderable,0>(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

BOOL gdc::Registry::remove<md::overlayComponents::VectorOverlay,std::__wrap_iter<gdc::Entity *>>(_BOOL8 result, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = gdc::Registry::storage<md::overlayComponents::VectorOverlay>(v5);
      v7 = *v4++;
      result = gdc::ComponentStorageWrapper<md::overlayComponents::VectorOverlay>::remove(v6, v7);
    }

    while (v4 != a3);
  }

  return result;
}

void md::OverlayTileData::resetNonTileOverlays(md::OverlayTileData *this, uint64_t a2)
{
  *this = this;
  *(this + 1) = this;
  *(this + 2) = 0;
  v12 = (a2 + 880);
  v3 = pthread_rwlock_wrlock((a2 + 880));
  if (v3)
  {
    geo::read_write_lock::logFailure(v3, "write lock", v4);
  }

  for (i = *(a2 + 768); i != (a2 + 760); i = *(i + 1))
  {
    v6 = atomic_load(i + 153);
    if (v6)
    {
      v11 = 0;
      memset(v10, 0, 138);
      if (*(i + 13) || *(i + 14))
      {
        md::OverlayTileData::OverlayTileResource::moveNonTileVectorResources(v10, (i + 16));
        v7 = *(i + 2);
        *(i + 2) = 0;
        std::unique_ptr<md::OverlayTileData::OverlayTileResource::Texture>::reset[abi:nn200100](v10, v7);
        atomic_store(0, i + 153);
      }

      else
      {
        md::OverlayTileData::OverlayTileResource::operator=(v10, (i + 16));
        v8 = *i;
        v9 = *(i + 1);
        *(v8 + 8) = v9;
        *v9 = v8;
        --*(a2 + 776);
        md::OverlayTileData::OverlayTileResource::~OverlayTileResource((i + 16));
        operator delete(i);
      }

      operator new();
    }
  }

  if (*(a2 + 800))
  {
    md::OverlayTileData::updateNonTileOverlays(a2, (a2 + 784));
  }

  if (*(a2 + 824))
  {
    md::OverlayTileData::updateNonTileOverlays(a2, (a2 + 808));
  }

  geo::write_lock_guard::~write_lock_guard(&v12);
}

uint64_t md::OverlayTileData::OverlayTileResource::operator=(uint64_t a1, uint64_t a2)
{
  v4 = md::OverlayTileData::OverlayTileResource::moveNonTileVectorResources(a1, a2);
  v5 = *a2;
  *a2 = 0;
  std::unique_ptr<md::OverlayTileData::OverlayTileResource::Texture>::reset[abi:nn200100](v4, v5);
  v6 = *(a2 + 88);
  *(a2 + 88) = 0;
  std::unique_ptr<std::vector<md::OverlayTileData::OverlayTileResource::RasterTile>>::reset[abi:nn200100]((a1 + 88), v6);
  v7 = *(a2 + 96);
  *(a2 + 96) = 0;
  std::unique_ptr<std::vector<md::OverlayTileData::OverlayTileResource::CustomTile>>::reset[abi:nn200100]((a1 + 96), v7);
  v8 = *(a1 + 112);
  if (v8)
  {
    *(a1 + 120) = v8;
    operator delete(v8);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v9 = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  std::unique_ptr<std::vector<md::PolylineOverlayRenderable>>::reset[abi:nn200100]((a1 + 104), v9);
  atomic_store(*(a2 + 137) & 1, (a1 + 137));
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t md::OverlayTileData::OverlayTileResource::moveNonTileVectorResources(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v7 = (a1 + 32);
  v6 = *(a1 + 32);
  if (v6)
  {
    std::vector<std::unique_ptr<md::PolygonOverlayRenderable>>::__base_destruct_at_end[abi:nn200100]((a1 + 32), v6);
    operator delete(*v7);
    *v7 = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v8 = *(a2 + 16);
  *(a2 + 16) = 0;
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a2 + 24);
  *(a2 + 24) = 0;
  v11 = *(a1 + 24);
  *(a1 + 24) = v10;
  if (v11)
  {
    std::default_delete<md::OverlayTileData::OverlayTileResource::CircleResource>::operator()[abi:nn200100](v11);
  }

  v12 = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v13 = *(a1 + 64);
  *(a1 + 56) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v14 = *(a2 + 72);
  *(a2 + 72) = 0;
  std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedRibbonLayer>::reset[abi:nn200100]((a1 + 72), v14);
  v15 = *(a2 + 80);
  *(a2 + 80) = 0;
  std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedGradientRibbonLayer>::reset[abi:nn200100]((a1 + 80), v15);
  return a1;
}

void md::OverlayTileData::updateNonTileOverlays(uint64_t a1, uint64_t *a2)
{
  v9 = &v9;
  v10 = &v9;
  v11 = 0;
  v2 = a2[2];
  if (v2)
  {
    v4 = *a2;
    v3 = a2[1];
    v5 = *(*a2 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = v9;
    *(v9 + 8) = v3;
    *v3 = v7;
    *(v4 + 8) = &v9;
    v9 = v4;
    v11 = v2;
    a2[2] = 0;
    for (i = v10; i != &v9; i = i[1])
    {
      if (i[2])
      {
        std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::unique_ptr<md::OverlayTileData::OverlayTileResource::Texture>,std::vector<unsigned int>>();
      }

      if (i[3])
      {
        std::list<md::OverlayTileData::OverlayTileResource>::emplace_back<std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::PolylineOverlayRibbonDescriptor>>,std::vector<unsigned int>>();
      }

      if (i[4])
      {
        std::list<md::OverlayTileData::OverlayTileResource>::emplace_back<std::unique_ptr<md::PolylineOverlayLayer<md::Ribbons::GradientPolylineOverlayRibbonDescriptor>>,std::vector<unsigned int>>();
      }

      if (i[5])
      {
        std::list<md::OverlayTileData::OverlayTileResource>::emplace_back<std::unique_ptr<md::OverlayTileData::OverlayTileResource::CircleResource>,std::vector<unsigned int>>();
      }

      if (i[6] != i[7])
      {
        std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::vector<std::unique_ptr<md::PolygonOverlayRenderable>>,std::vector<unsigned int>>();
      }

      if (i[11])
      {
        std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedRibbonLayer>,std::vector<unsigned int>>();
      }

      if (i[12])
      {
        std::__list_imp<md::OverlayTileData::OverlayTileResource>::__create_node[abi:nn200100]<std::unique_ptr<md::OverlayTileData::OverlayTileResource::ElevatedGradientRibbonLayer>,std::vector<unsigned int>>();
      }
    }
  }

  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(&v9);
}

void sub_1B2D7589C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<md::OverlayTileData::OverlayTileResource>::clear(va);
  _Unwind_Resume(a1);
}

__n128 md::OverlayTileData::OverlayTileResource::OverlayTileResource(uint64_t a1, uint64_t a2, __n128 *a3, void *a4)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 32) = *a2;
  *(a1 + 48) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = a4[1];
  *(a1 + 56) = *a4;
  *(a1 + 64) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 120) = 0uLL;
  *(a1 + 104) = 0uLL;
  *(a1 + 88) = 0uLL;
  *(a1 + 72) = 0uLL;
  result = *a3;
  *(a1 + 112) = *a3;
  *(a1 + 128) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  *(a1 + 136) = 2;
  *(a1 + 144) = 0;
  return result;
}

uint64_t md::OverlayTileData::hasTileData(md::OverlayTileData *this)
{
  v2 = pthread_rwlock_rdlock((this + 880));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  for (i = *(this + 96); ; i = i[1])
  {
    if (i == (this + 760))
    {
      v7 = 0;
      goto LABEL_12;
    }

    v5 = i[13];
    if (v5)
    {
      if (*v5 != v5[1])
      {
        break;
      }
    }

    v6 = i[14];
    if (v6)
    {
      if (*v6 != v6[1])
      {
        break;
      }
    }
  }

  v7 = 1;
LABEL_12:
  geo::read_write_lock::unlock((this + 880));
  return v7;
}

void md::OverlayTileData::OverlayTileResource::RasterTile::updateWithContext(md::OverlayTileData::OverlayTileResource::RasterTile *this, const md::LayoutContext *a2, int a3)
{
  v5 = md::LayoutContext::get<md::CameraContext>(a2);
  v6 = 0;
  v7 = 1 << *(this + 33);
  *&v8 = 1.0 / v7;
  v9 = a3 + *&v8 * *(this + 10);
  v10 = *&v8 * (v7 + ~*(this + 9));
  v11 = (v5 + 808);
  v32 = 0;
  v34 = 0;
  v31 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = v8;
  v30 = v8;
  v33 = v8;
  v35 = v9;
  v36 = v10;
  v37 = xmmword_1B33B0740;
  do
  {
    v12 = 0;
    v13 = &v27;
    do
    {
      v14 = 0;
      v15 = 0.0;
      v16 = v11;
      do
      {
        v17 = *v16;
        v16 += 4;
        v15 = v15 + *&v13[v14++] * v17;
      }

      while (v14 != 4);
      v38[4 * v12++ + v6] = v15;
      v13 += 4;
    }

    while (v12 != 4);
    ++v6;
    ++v11;
  }

  while (v6 != 4);
  v18 = 0;
  v19 = v38;
  do
  {
    v21 = *v19;
    v20 = v19[1];
    v19 += 2;
    v40[v18++] = vcvt_hight_f32_f64(vcvt_f32_f64(v21), v20);
  }

  while (v18 != 4);
  ggl::DataAccess<ggl::Tile::View>::DataAccess(v38, *(this + 9), 1);
  v22 = v39;
  v23 = v40[1];
  *v39 = v40[0];
  v22[1] = v23;
  v24 = v40[3];
  v22[2] = v40[2];
  v22[3] = v24;
  ggl::BufferMemory::~BufferMemory(v38);
  ggl::DataAccess<ggl::Tile::View>::DataAccess(v38, *(this + 15), 1);
  v25 = *(this + 13);
  v26 = v39;
  *v39 = *(this + 34) * *v25;
  *(v26 + 1) = *(v25 + 4);
  ggl::BufferMemory::~BufferMemory(v38);
}

float computeRouteZOffset(const md::LayoutContext *a1)
{
  v2 = md::LayoutContext::get<md::ElevationContext>(a1);
  v3 = v2;
  v4 = 1.0;
  if (*(v2 + 4) == 1)
  {
    v4 = v2[5];
  }

  md::LayoutContext::zoomAtCentrePoint(a1);
  return (fminf(v3[4], 1.0) * (1.6216 * v4)) / (1.0811 - fminf(fmaxf((v5 * -0.28571) + 4.8571, 0.0), 1.0));
}

void md::OverlayTileData::OverlayTileResource::RasterTile::setAlphaMultiplier(md::OverlayTileData::OverlayTileResource::RasterTile *this, float a2)
{
  *(this + 34) = a2;
  v3 = **(this + 13);
  ggl::DataAccess<ggl::Tile::View>::DataAccess(v4, *(this + 15), 1);
  *v4[5] = v3 * a2;
  ggl::BufferMemory::~BufferMemory(v4);
}

void md::mun::MuninViewLayerDataSource::createLayerData(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 **a3@<X2>, void *a4@<X8>)
{
  v96 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 600);
  if (!v6)
  {
    v9 = 0;
LABEL_38:
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_39;
  }

  v9 = std::__shared_weak_count::lock(v6);
  if (!v9)
  {
    goto LABEL_38;
  }

  v10 = *(a1 + 592);
  if (!v10)
  {
    goto LABEL_38;
  }

  gdc::LayerDataRequestKey::keyData(&v81, a2);
  v11 = v81;
  UInt64 = gdc::ResourceKey::getUInt64(v81, 0);
  v12 = gdc::ResourceKey::getUInt64(v11, 1u);
  v88 = v12;
  v13 = gdc::ResourceKey::getUInt64(v11, 2u);
  v87 = v13;
  v14 = gdc::ResourceKey::getUInt64(v11, 3u);
  if (v11 != *(&v82 + 1))
  {
    free(v11);
  }

  md::mun::MuninMetadataContainer::activePoint(&v81, v10, v12);
  if ((v86 & 1) == 0)
  {
    goto LABEL_38;
  }

  v15 = v84;
  if (v84 == v85)
  {
    goto LABEL_42;
  }

  v16 = 0;
  do
  {
    if (*(v15 + 240) == BYTE2(v13))
    {
      v16 = v15;
    }

    v15 += 288;
  }

  while (v15 != v85);
  if (!v16)
  {
LABEL_42:
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_117;
  }

  v17 = *(a1 + 616);
  (*(*[v17 gglDevice] + 24))(&v80);

  if (!v14)
  {
    gdc::LayerDataSource::getResourceFromMap(&v89, 23, *a3, a3[1]);
    v18 = *(&v89 + 1);
    v32 = v89;
    if (v89)
    {
      v33 = (v89 - 8);
    }

    else
    {
      v33 = 0;
    }

    v78 = v33;
    v79 = *(&v89 + 1);
    if (*(&v89 + 1))
    {
      atomic_fetch_add_explicit((*(&v89 + 1) + 8), 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    if (v32)
    {
      v71 = 0;
      v72 = 0;
      v73 = 0;
      if (v86 != 1)
      {
        goto LABEL_118;
      }

      v34 = v33[59];
      v35 = v33[60];
      if (v35 == v34)
      {
        v74 = 0uLL;
        *&v75 = 0;
        operator new();
      }

      if (0x4EC4EC4EC4EC4EC5 * ((v35 - v34) >> 3))
      {
        if (*v34)
        {
          if (*v34 == 12 && *(v34 + 16) - *(v34 + 8) == 64)
          {
            _ZNSt3__115allocate_sharedB8nn200100IN3ggl12SamplerStateENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
          }
        }

        else if (*(v34 + 16) - *(v34 + 8) == 32)
        {
          _ZNSt3__115allocate_sharedB8nn200100IN3ggl12SamplerStateENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }
      }

      v77 = 0uLL;
      *a4 = 0;
      a4[1] = 0;
      if (*(&v77 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v77 + 1));
      }

      *&v89 = &v71;
      std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v89);
      v18 = v79;
      goto LABEL_114;
    }

LABEL_61:
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_114;
  }

  gdc::LayerDataSource::getResourceFromMap(&v89, 33, *a3, a3[1]);
  v18 = *(&v89 + 1);
  if (v89)
  {
    v19 = v89 - 8;
  }

  else
  {
    v19 = 0;
  }

  if (*(&v89 + 1))
  {
    atomic_fetch_add_explicit((*(&v89 + 1) + 8), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v66 = v19;
  gdc::ResourceKey::keyData(&v89, v19 + 8);
  v20 = v89;
  v21 = gdc::ResourceKey::getUInt64(v89, 2u);
  if (v20 != v90)
  {
    free(v20);
  }

  *&v77 = *(v66 + 152);
  if (!v77)
  {
    goto LABEL_61;
  }

  v63 = v18;
  v74 = 0u;
  v75 = 0u;
  v76 = 1065353216;
  if (v21 && v13 == v21)
  {
    v22 = *(v16 + 248);
    v23 = *(v16 + 256);
    if (v22 == v23)
    {
      goto LABEL_103;
    }

    while (1)
    {
      v24 = *v22;
      v25 = *(v66 + 920);
      if (v24 >= (*(v66 + 928) - v25) >> 4)
      {
        goto LABEL_102;
      }

      v26 = (v25 + 16 * v24);
      v27 = *v26;
      if (!*v26)
      {
        goto LABEL_102;
      }

      v28 = v26[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = *(v27 + 144);
      v68 = v29;
      a3 = *(v27 + 152);
      if (*(&v29 + 1))
      {
        atomic_fetch_add_explicit((*(&v29 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      LODWORD(v71) = v24;
      *&v89 = &v71;
      v30 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v74, v24);
      v31 = v30[4];
      *(v30 + 3) = v68;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v31);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v28);
      }

      if (++v22 == v23)
      {
        goto LABEL_103;
      }
    }
  }

  v37 = *a3;
  v36 = a3[1];
  while (1)
  {
    if (v37 == v36)
    {
      goto LABEL_102;
    }

    if (*v37 == 34)
    {
      break;
    }

    v37 += 24;
  }

  if (v37 == v36)
  {
LABEL_102:
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_113;
  }

  v38 = *(v16 + 248);
  v62 = *(v16 + 256);
  if (v38 == v62)
  {
    goto LABEL_103;
  }

  v59 = v13 & 0xFFFFFFFF000000FFLL;
  v60 = UInt64;
  v64 = v9;
  while (2)
  {
    v65 = v38;
    v61 = *v38;
    *&v93 = v60;
    *(&v93 + 1) = v12;
    v94 = v59 | (v61 << 16);
    v95 = 2;
    gdc::GenericKey::GenericKey(&v71, &v93, 4);
    gdc::ResourceKey::ResourceKey(&v89, 0, 34, &v71, 0, 2147483646);
    if (v71 != v73)
    {
      free(v71);
    }

    v39 = *(v37 + 8);
    if (!*&v39)
    {
      goto LABEL_88;
    }

    v40 = (WORD1(v89) - 0x61C8864680B583EBLL + ((v89 - 0x61C8864680B583EBLL) << 6) + ((v89 - 0x61C8864680B583EBLL) >> 2)) ^ (v89 - 0x61C8864680B583EBLL);
    v41 = (v92 - 0x61C8864680B583EBLL + (v40 << 6) + (v40 >> 2)) ^ v40;
    v42 = vcnt_s8(v39);
    v42.i16[0] = vaddlv_u8(v42);
    v69 = v42.u32[0];
    if (v42.u32[0] > 1uLL)
    {
      a3 = ((v92 - 0x61C8864680B583EBLL + (v40 << 6) + (v40 >> 2)) ^ v40);
      if (v41 >= *&v39)
      {
        a3 = (v41 % *&v39);
      }
    }

    else
    {
      a3 = (v41 & (*&v39 - 1));
    }

    v43 = *(*(v37 + 1) + 8 * a3);
    if (!v43 || (v44 = *v43) == 0)
    {
LABEL_88:
      *a4 = 0;
      a4[1] = 0;
      LOBYTE(v51) = 1;
      goto LABEL_89;
    }

    while (1)
    {
      v45 = *(v44 + 1);
      if (v41 == v45)
      {
        break;
      }

      if (v69 > 1)
      {
        if (v45 >= *&v39)
        {
          v45 %= *&v39;
        }
      }

      else
      {
        v45 &= *&v39 - 1;
      }

      if (v45 != a3)
      {
        goto LABEL_88;
      }

LABEL_87:
      v44 = *v44;
      if (!v44)
      {
        goto LABEL_88;
      }
    }

    v46 = v12;
    v47 = v13;
    v48 = a2;
    v49 = v41;
    v50 = gdc::ResourceKey::operator==(v44 + 16, &v89);
    v41 = v49;
    a2 = v48;
    v13 = v47;
    v12 = v46;
    v9 = v64;
    if (!v50)
    {
      goto LABEL_87;
    }

    v52 = *(v44 + 14);
    v51 = *(v44 + 15);
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v53 = *(v52 + 144);
    v70 = v53;
    a3 = *(v52 + 152);
    if (*(&v53 + 1))
    {
      atomic_fetch_add_explicit((*(&v53 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    LODWORD(v93) = v61;
    v71 = &v93;
    v54 = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v74, v61);
    v55 = v54[4];
    *(v54 + 3) = v70;
    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v55);
    }

    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v51);
      LOBYTE(v51) = 0;
    }

LABEL_89:
    if (*(&v89 + 1) != v91)
    {
      free(*(&v89 + 1));
    }

    if ((v51 & 1) == 0)
    {
      v38 = v65 + 1;
      if (v65 + 1 == v62)
      {
LABEL_103:
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v56 = *(v77 + 8);
        v18 = &v78;
        if (v56)
        {
          v57 = *v77;
          do
          {
            if (*v57 == BYTE2(v13))
            {
              v78 = v57;
              v91 = 0;
              operator new();
            }

            v57 += 24;
            --v56;
          }

          while (v56);
        }

        v89 = 0uLL;
        v90 = 0;
        if (*(v66 + 912) == 1)
        {
          std::vector<float>::__insert_with_size[abi:nn200100]<float const*,float const*>(&v89, 0, (v66 + 192), (v66 + 912), 180);
        }

        if (v86)
        {
          v93 = v82;
          v94 = v83;
          std::allocate_shared[abi:nn200100]<md::mun::MuninViewData,std::allocator<md::mun::MuninViewData>,gdc::LayerDataRequestKey const&,std::vector<md::mun::MuninViewMesh>,geo::Geocentric<double>,unsigned long long &,unsigned char &,md::mun::PhotoInfo const&,std::vector<float>,unsigned long long &,0>();
        }

LABEL_118:
        v58 = std::__throw_bad_optional_access[abi:nn200100]();
        if (a3)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](a3);
        }

        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v18);
        }

        if (*(&v89 + 1) != v91)
        {
          free(*(&v89 + 1));
        }

        std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(&v74);
        if (v63)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v63);
        }

        ggl::Loader::~Loader(&v80);
        if (v86 == 1)
        {
          geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v84);
        }

        std::__shared_weak_count::__release_shared[abi:nn200100](v64);
        _Unwind_Resume(v58);
      }

      continue;
    }

    break;
  }

LABEL_113:
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(&v74);
  v18 = v63;
LABEL_114:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  ggl::Loader::~Loader(&v80);
  if (v86)
  {
LABEL_117:
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v84);
  }

LABEL_39:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

void sub_1B2D76E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14)
{
  v18 = v14[21].__vftable;
  if (v18 != v14[21].__shared_weak_owners_)
  {
    free(v18);
  }

  *(v16 - 88) = v15;
  std::vector<md::mun::MuninViewMesh>::__destroy_vector::operator()[abi:nn200100]((v16 - 88));
  v14[1].__vftable = &unk_1F2A60328;
  shared_owners = v14[2].__shared_owners_;
  if (shared_owners != v14[3].__vftable)
  {
    free(shared_owners);
  }

  if (a12 != a14)
  {
    free(a12);
  }

  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void std::vector<md::mun::MuninViewMesh>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 88;
        std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
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
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_1B2D77388(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::vector<float>::__insert_with_size[abi:nn200100]<float const*,float const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v6 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = (__dst - v11) >> 2;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v14);
    }

    v31 = 4 * v15;
    v32 = 4 * a5;
    v33 = (4 * v15);
    do
    {
      v34 = *v6++;
      *v33++ = v34;
      v32 -= 4;
    }

    while (v32);
    memcpy((v31 + 4 * a5), __dst, a1[1] - __dst);
    v35 = *a1;
    v36 = v31 + 4 * a5 + a1[1] - __dst;
    a1[1] = __dst;
    v37 = (__dst - v35);
    v38 = (v31 - (__dst - v35));
    memcpy(v38, v35, v37);
    v39 = *a1;
    *a1 = v38;
    a1[1] = v36;
    a1[2] = 0;
    if (v39)
    {

      operator delete(v39);
    }

    return;
  }

  v16 = (v10 - __dst) >> 2;
  if (v16 >= a5)
  {
    v20 = &__dst[4 * a5];
    v21 = &v10[-4 * a5];
    v22 = a1[1];
    while (v21 < v10)
    {
      v23 = *v21;
      v21 += 4;
      *v22++ = v23;
    }

    a1[1] = v22;
    if (v10 != v20)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v20);
    }

    v28 = 4 * a5;
    v29 = __dst;
    v30 = v6;
    goto LABEL_34;
  }

  v17 = &__src[v10 - __dst];
  v18 = a1[1];
  while (v17 != a4)
  {
    v19 = *v17;
    v17 += 4;
    *v18 = v19;
    v18 += 4;
  }

  a1[1] = v18;
  if (v16 >= 1)
  {
    v24 = &__dst[4 * a5];
    v25 = &v18[-4 * a5];
    v26 = v18;
    while (v25 < v10)
    {
      v27 = *v25;
      v25 += 4;
      *v26 = v27;
      v26 += 4;
    }

    a1[1] = v26;
    if (v18 != v24)
    {
      memmove(&__dst[4 * a5], __dst, v18 - v24);
    }

    if (v10 != __dst)
    {
      v29 = __dst;
      v30 = v6;
      v28 = v10 - __dst;
LABEL_34:

      memmove(v29, v30, v28);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
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

uint64_t geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    do
    {
      v4 = v2[31];
      if (v4 != v2[33])
      {
        free(v4);
      }

      v2 += 36;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  if (v2 != *(a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t std::__function::__func<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_1,std::allocator<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_1>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t result)
{
  if (*(**(result + 16) + 152))
  {
    std::allocate_shared[abi:nn200100]<ggl::VertexDataTyped<ggl::VSCommon::Vertex>,std::allocator<ggl::VertexDataTyped<ggl::VSCommon::Vertex>>,char const(&)[1],unsigned long &,0>();
  }

  return result;
}

void sub_1B2D78430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a61);
  ggl::BufferMemory::~BufferMemory(&a67);
  v69 = *(v67 - 216);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v69);
  }

  ggl::BufferMemory::~BufferMemory((v67 - 200));
  v70 = *(v67 - 144);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v70);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,anonymous namespace::SubMesh>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,anonymous namespace::SubMesh>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[3];
      if (v3)
      {
        v2[4] = v3;
        operator delete(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::unordered_map<unsigned int,anonymous namespace::SubMesh>::operator[](void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7 + 3;
}

void sub_1B2D788F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<unsigned int,anonymous namespace::SubMesh>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::MuninViewMesh>>(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<md::mun::MuninViewMesh>,md::mun::MuninViewMesh*>(uint64_t a1, uint64_t a2, uint64_t a3)
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
      *(a3 + 16) = *(v5 + 16);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(a3 + 32) = *(v5 + 32);
      v6 = *(v5 + 48);
      *(a3 + 64) = *(v5 + 64);
      *(a3 + 48) = v6;
      v7 = *(v5 + 72);
      *(a3 + 80) = *(v5 + 80);
      *(a3 + 72) = v7;
      *(a3 + 84) = *(v5 + 84);
      v5 += 88;
      a3 += 88;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(v4);
      v4 += 88;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<md::mun::MuninViewMesh>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(i - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<ggl::VSCommon::Mesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A20768;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::VSCommon::Vertex>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A206F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

__n128 std::__function::__func<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_1,std::allocator<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_1>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F3B48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__shared_ptr_emplace<md::mun::MuninViewData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29F3B10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__function::__func<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_0,std::allocator<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_0>,void ()(ggl::ResourceAccessor *)>::operator()(uint64_t result)
{
  if (*(**(result + 8) + 264) != *(**(result + 8) + 256))
  {
    std::allocate_shared[abi:nn200100]<ggl::VertexDataTyped<ggl::VSCommon::Vertex>,std::allocator<ggl::VertexDataTyped<ggl::VSCommon::Vertex>>,char const(&)[1],unsigned long &,0>();
  }

  return result;
}

void sub_1B2D79228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  ggl::BufferMemory::~BufferMemory(&a34);
  v36 = *(v34 - 176);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v36);
  }

  _Unwind_Resume(a1);
}

uint64_t std::construct_at[abi:nn200100]<md::mun::MuninViewMesh,std::shared_ptr<ggl::VSCommon::Mesh> &,gm::Range<unsigned long>,std::shared_ptr<ggl::Texture2D> const&,geo::RigidTransform<double,float>,md::mun::MuninViewMesh*>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, _OWORD *a4, uint64_t *a5, __int128 *a6)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *a5;
  v8 = a5[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = *a4;
  v10 = *a6;
  *(a1 + 64) = *(a6 + 2);
  *(a1 + 48) = v10;
  v11 = *(a6 + 3);
  *(a1 + 80) = *(a6 + 8);
  *(a1 + 72) = v11;
  *(a1 + 84) = *(a6 + 9);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  return a1;
}

__n128 std::__function::__func<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_0,std::allocator<md::mun::MuninViewLayerDataSource::createLayerData(gdc::LayerDataRequestKey const&,geo::linear_map<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>,std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>> const&,long long)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F3AC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::mun::MuninViewLayerDataSource::constructRequests(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 600);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v29 = v7;
      v8 = *(a1 + 592);
      if (v8 && a2 != a3)
      {
        v30 = v8;
        do
        {
          v9 = *(*a2 + 96);
          gdc::LayerDataRequestKey::keyData(&v41, *a2);
          v10 = v41;
          UInt64 = gdc::ResourceKey::getUInt64(v41, 0);
          v12 = gdc::ResourceKey::getUInt64(v10, 1u);
          v13 = gdc::ResourceKey::getUInt64(v10, 2u);
          v14 = gdc::ResourceKey::getUInt64(v10, 3u);
          if (v10 != v43)
          {
            free(v10);
          }

          if (v14)
          {
            md::mun::MuninMetadataContainer::activePoint(&v41, v8, v12);
            if (v47 == 1)
            {
              gdc::LayerDataRequestKey::keyData(v32, *a2);
              v15 = v46 < 0 || v13 == 7;
              v16 = v15;
              v17 = 7;
              if (v15)
              {
                v18 = 7;
              }

              else
              {
                v18 = 0;
              }

              v19 = v13 & 0xFFFFFFFF00000000;
              if (!v15)
              {
                v17 = 0;
              }

              v20 = UInt64;
              v37 = UInt64;
              v38 = v12;
              v39 = (v19 | v17);
              v40 = 1;
              gdc::GenericKey::GenericKey(&v33, &v37, 4);
              if ((v9 & 0x100000000) != 0)
              {
                v21 = v9;
              }

              else
              {
                v21 = 2147483646;
              }

              gdc::ResourceKey::ResourceKey(&v37, 0, 33, &v33, *(*a2 + 112), v21);
              if (v33 != v35)
              {
                free(v33);
              }

              gdc::LayerDataRequest::request(*a2, &v37, 0);
              if (v18 == v13)
              {
                v22 = v16;
              }

              else
              {
                v22 = 0;
              }

              if ((v22 & 1) == 0)
              {
                if ((v47 & 1) == 0)
                {
                  v28 = std::__throw_bad_optional_access[abi:nn200100]();
                  std::__shared_weak_count::__release_shared[abi:nn200100](v29);
                  _Unwind_Resume(v28);
                }

                for (i = v45[0]; i != v45[1]; i += 288)
                {
                  if (*(i + 240) == BYTE2(v13))
                  {
                    v25 = *(i + 248);
                    for (j = *(i + 256); v25 != j; ++v25)
                    {
                      v27 = v13 | (*v25 << 16) | v19;
                      v33 = v20;
                      v34 = v12;
                      v35 = v27;
                      v36 = 2;
                      gdc::GenericKey::GenericKey(v31, &v33, 4);
                      gdc::ResourceKey::ResourceKey(&v33, 0, 34, v31, *(*a2 + 112), v21);
                      if (v31[0] != v31[2])
                      {
                        free(v31[0]);
                      }

                      gdc::LayerDataRequest::request(*a2, &v33, 0);
                      if (v34 != v36)
                      {
                        free(v34);
                      }
                    }

                    break;
                  }
                }
              }

              if (v38 != v40)
              {
                free(v38);
              }

              v8 = v30;
              if (v32[0] != v32[2])
              {
                free(v32[0]);
              }

              if (v47)
              {
                geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v45);
              }
            }
          }

          else
          {
            v41 = UInt64;
            v42 = v12;
            v43 = v13 & 0xFFFFFFFF00FF00FFLL;
            v44 = 0;
            gdc::GenericKey::GenericKey(&v37, &v41, 4);
            if ((v9 & 0x100000000) != 0)
            {
              v23 = v9;
            }

            else
            {
              v23 = 2147483646;
            }

            gdc::ResourceKey::ResourceKey(&v41, 0, 23, &v37, *(*a2 + 112), v23);
            if (v37 != v39)
            {
              free(v37);
            }

            gdc::LayerDataRequest::request(*a2, &v41, 0);
            if (v42 != v44)
            {
              free(v42);
            }
          }

          a2 += 2;
        }

        while (a2 != a3);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }
  }
}

void md::mun::MuninViewLayerDataSource::addFallbackData(const gdc::LayerDataRequestKey **this, const gdc::SelectionContext *a2)
{
  v3 = *(a2 + 1);
  v64[0] = 255;
  v65 = 0;
  v66 = 0;
  v67 = 1;
  v62 = 0;
  v63 = 0uLL;
  v40 = v3;
  gdc::LayerDataCollector::missingData(v61, v3, *(this + 16));
  v60[0] = v61[0];
  v60[1] = v61[1];
  v58 = v61[2];
  v59 = v61[3];
  while (1)
  {
    *v50 = v58;
    v51 = v59;
    if (!gdc::MissingDataIterator::operator!=(v60, v50))
    {
      break;
    }

    gdc::LayerDataRequestKey::keyData(v50, *(&v60[0] + 1));
    v4 = v50[0];
    UInt64 = gdc::ResourceKey::getUInt64(v50[0], 0);
    v6 = gdc::ResourceKey::getUInt64(v4, 1u);
    v7 = gdc::ResourceKey::getUInt64(v4, 2u);
    v8 = gdc::ResourceKey::getUInt64(v4, 3u);
    if (v4 != v51)
    {
      free(v4);
    }

    v9 = 0;
    v10 = HIDWORD(v7);
    v57 = 0uLL;
    v11 = v7 >> 16;
    v12 = v7;
    while (1)
    {
      ++v12;
      v53 = v6;
      v54 = BYTE2(v7);
      v55 = v12;
      v56 = v8;
      md::mun::ViewId::toLayerDataKey(v50, &v53, UInt64, HIDWORD(v7), 2147483646);
      gdc::LayerDataStore::get(&v49, this[2], v50);
      v41 = v49;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      if (v51 != v52)
      {
        free(v51);
      }

      v9 = *(&v41 + 1);
      v13 = v41;
      if (v12 > 6u)
      {
        break;
      }

      if (v41)
      {
        v57 = v41;
LABEL_22:
        FillRect = grl::IconMetricsRenderResult::getFillRect(v13);
        v15 = gdc::Camera::cameraFrame(FillRect);
        if (v63 >= *(&v63 + 1))
        {
          v17 = 0xF0F0F0F0F0F0F0F1 * ((v63 - v62) >> 3) + 1;
          if (v17 > 0x1E1E1E1E1E1E1E1)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          if (0xE1E1E1E1E1E1E1E2 * ((*(&v63 + 1) - v62) >> 3) > v17)
          {
            v17 = 0xE1E1E1E1E1E1E1E2 * ((*(&v63 + 1) - v62) >> 3);
          }

          if (0xF0F0F0F0F0F0F0F1 * ((*(&v63 + 1) - v62) >> 3) >= 0xF0F0F0F0F0F0F0)
          {
            v18 = 0x1E1E1E1E1E1E1E1;
          }

          else
          {
            v18 = v17;
          }

          v52 = &v62;
          if (v18)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::FallbackData>>(v18);
          }

          v50[0] = 0;
          v50[1] = (8 * ((v63 - v62) >> 3));
          v51 = v50[1];
          gdc::FallbackData::FallbackData(v50[1], v64, v15, &v57);
          *&v51 = v51 + 136;
          v19 = (v50[1] + v62 - v63);
          std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::FallbackData>,gdc::FallbackData*>(v62, v63, v19);
          v20 = v62;
          v21 = *(&v63 + 1);
          v62 = v19;
          v43 = v51;
          v63 = v51;
          *&v51 = v20;
          *(&v51 + 1) = v21;
          v50[0] = v20;
          v50[1] = v20;
          std::__split_buffer<gdc::FallbackData>::~__split_buffer(v50);
          v16 = v43;
          v9 = *(&v57 + 1);
        }

        else
        {
          v16 = gdc::FallbackData::FallbackData(v63, v64, v15, &v57) + 136;
        }

        *&v63 = v16;
        goto LABEL_34;
      }
    }

    v57 = v41;
    if (v41)
    {
      goto LABEL_22;
    }

    while (1)
    {
      LOBYTE(v7) = v7 - 1;
      v53 = v6;
      v54 = v11;
      v55 = v7;
      v56 = v8;
      md::mun::ViewId::toLayerDataKey(v50, &v53, UInt64, v10, 2147483646);
      gdc::LayerDataStore::get(&v49, this[2], v50);
      v42 = v49;
      v57 = v49;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      if (v51 != v52)
      {
        free(v51);
      }

      v9 = *(&v42 + 1);
      v13 = v42;
      if (!v7)
      {
        break;
      }

      if (v42)
      {
        goto LABEL_22;
      }
    }

    if (v42)
    {
      goto LABEL_22;
    }

LABEL_34:
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    gdc::MissingDataIterator::operator++(v60);
  }

  v22 = v63;
  if (v62 != v63)
  {
    v23 = v62 + 15;
    do
    {
      v24 = *grl::IconMetricsRenderResult::getFillRect(*v23);
      gdc::LayerDataKey::LayerDataKey(v46, (v23 - 11));
      gdc::LayerDataRequestKey::LayerDataRequestKey(v50, v24, v46);
      gdc::LayerDataCollector::addFallbackData(v40, v50, v23 - 60, v23);
      if (v51 != v52)
      {
        free(v51);
      }

      if (v47 != v48)
      {
        free(v47);
      }

      v25 = v23 + 2;
      v23 += 17;
    }

    while (v25 != v22);
  }

  v26 = gdc::LayerDataCollector::cDataHolders(*(v40 + 24), *(v40 + 32), *(this + 16));
  if (v26 != v27)
  {
    v28 = v26;
    v29 = v27;
    do
    {
      gdc::LayerDataRequestKey::keyData(v50, v28);
      v30 = v50[0];
      v31 = gdc::ResourceKey::getUInt64(v50[0], 0);
      v32 = gdc::ResourceKey::getUInt64(v30, 1u);
      v33 = gdc::ResourceKey::getUInt64(v30, 2u);
      v34 = gdc::ResourceKey::getUInt64(v30, 3u);
      if (v30 != v51)
      {
        free(v30);
      }

      v35 = 0;
      v36 = HIDWORD(v33);
      v37 = v33;
      v38 = v33 >> 16;
      do
      {
        if (v35 != v37)
        {
          *&v61[0] = v32;
          BYTE8(v61[0]) = v38;
          BYTE9(v61[0]) = v35;
          BYTE10(v61[0]) = v34;
          md::mun::ViewId::toLayerDataKey(v50, v61, v31, v36, 2147483646);
          gdc::LayerDataStore::get(v44, this[2], v50);
          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v45);
          }

          if (v51 != v52)
          {
            free(v51);
          }
        }
      }

      while (v35++ < 7);
      v28 += 144;
    }

    while (v28 != v29);
  }

  v50[0] = &v62;
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100](v50);
}

void sub_1B2D79CCC(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  *(v2 - 216) = v2 - 152;
  std::vector<gdc::FallbackData>::__destroy_vector::operator()[abi:nn200100]((v2 - 216));
  _Unwind_Resume(a1);
}

void md::mun::ViewId::toLayerDataKey(md::mun::ViewId *this, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v11[4] = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(a2 + 10);
  v9 = (a4 << 32) | (*(a2 + 8) << 16) | *(a2 + 9);
  v11[0] = a3;
  v11[1] = v7;
  v11[2] = v9;
  v11[3] = v8;
  gdc::GenericKey::GenericKey(v10, v11, 4);
  gdc::LayerDataRequestKey::LayerDataRequestKey(this, 0, 0x24u, v10, a5);
  if (v10[0] != v10[2])
  {
    free(v10[0]);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::FallbackData>>(unint64_t a1)
{
  if (a1 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::FallbackData>,gdc::FallbackData*>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      v7 = &v5[v6];
      v8 = a3 + v6 * 8;
      *(v8 + 24) = 0;
      *(v8 + 4) = *(&v5[v6] + 4);
      *v8 = v5[v6];
      *(v8 + 16) = v5[v6 + 2];
      *(v8 + 24) = v5[v6 + 3];
      gdc::LayerDataKey::LayerDataKey(a3 + v6 * 8 + 32, &v5[v6 + 4]);
      *(v8 + 120) = *&v5[v6 + 15];
      v7[15] = 0;
      v7[16] = 0;
      v6 += 17;
    }

    while (&v5[v6] != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<gdc::FallbackData,0>(v5);
      v5 += 17;
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<gdc::FallbackData>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    std::__destroy_at[abi:nn200100]<gdc::FallbackData,0>((i - 136));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void md::mun::MuninViewLayerDataSource::~MuninViewLayerDataSource(md::mun::MuninViewLayerDataSource *this)
{
  *this = &unk_1F29F3A28;
  *(this + 76) = &unk_1F2A59028;

  v2 = *(this + 75);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  gdc::LayerDataSource::~LayerDataSource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29F3A28;
  *(this + 76) = &unk_1F2A59028;

  v2 = *(this + 75);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  gdc::LayerDataSource::~LayerDataSource(this);
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(*(a1 + 16) + 8);
  if (v3 < (*(*(a1 + 16) + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(*(a1 + 24) + 8), v3 < (*(*(a1 + 24) + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0)
  {
    return *(v7 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31MaterialStyleConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialStyleConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialStyleConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialStyleConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15F38;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MaterialStyleConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MaterialStyleConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A15F58;
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

void ecs2::storage<ecs2::Entity,md::ls::MaterialStyleConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MaterialStyleConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialStyleConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A15F38;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MaterialStyleConstantDataHandle,64ul>::~storage(a1);
}

__n128 std::__function::__func<md::ita::PrepareMaterialStyleConstantDataHandle::operator()(ecs2::Query<md::ls::InView const&,md::ls::RenderableMaterialData const&>)::$_0,std::allocator<md::ita::PrepareMaterialStyleConstantDataHandle::operator()(ecs2::Query<md::ls::InView const&,md::ls::RenderableMaterialData const&>)::$_0>,void ()(md::ls::InView const&,md::ls::RenderableMaterialData const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F3B90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void md::BaseHybridMapEngineMode::willBecomeInactive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = (a2 + 40960);
  md::World::purge(*(a2 + 41704), 0);
  v5 = v4[121];
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v5 + 16), 0x91E65CD7F1A7A7FALL)[5] + 229) = 257;
  v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v5 + 16), 0xAF46DE79C836B0D8);
  if (v6)
  {
    v7 = v6[5];
  }

  else
  {
    v7 = 0;
  }

  *(v7 + 324) = 0;
  v32[0] = 0;
  v33 = 0;
  std::__optional_storage_base<std::function<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>,false> const&>(v7 + 336, v32);
  if (v33 == 1)
  {
    std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](v32);
  }

  *(v7 + 328) = 0;
  v30[0] = 0;
  v31 = 0;
  std::__optional_storage_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false> const&>(v7 + 376, v30);
  if (v31 == 1)
  {
    std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](v30);
  }

  gdc::GlobeTileSelector::setShouldCacheZBounds(*(v7 + 136), 0);
  gdc::GlobeTileSelector::setShouldCacheZBounds(*(v7 + 184), 0);
  v8 = v4[121];
  v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8 + 16), 0xC267A080D338C6A1)[5];
  if (v9[29])
  {
    v10 = v9[28];
    if (v10)
    {
      do
      {
        v11 = *v10;
        operator delete(v10);
        v10 = v11;
      }

      while (v11);
    }

    v9[28] = 0;
    v12 = v9[27];
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        *(v9[26] + 8 * i) = 0;
      }
    }

    v9[29] = 0;
    v8 = v4[121];
  }

  v14 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8 + 16), 0x4AC7AB7561675F6uLL);
  if (v14)
  {
    v15 = v14[5];
  }

  else
  {
    v15 = 0;
  }

  LOBYTE(v27) = 0;
  v29 = 0;
  std::__optional_storage_base<std::function<BOOL ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<BOOL ()(void)>,false> const&>(v15 + 144, &v27);
  if (v29 == 1)
  {
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:nn200100](&v27);
  }

  LOBYTE(v27) = 0;
  v29 = 0;
  std::__optional_storage_base<std::function<float ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<float ()(void)>,false> const&>(v15 + 184, &v27);
  if (v29 == 1)
  {
    std::__function::__value_func<float ()(void)>::~__value_func[abi:nn200100](&v27);
  }

  v16 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v4[121] + 16), 0x17767EADC5B287BuLL);
  if (v16)
  {
    v16 = v16[5];
  }

  v25[0] = 0;
  v26 = 0;
  md::ElevationLogic::setElevationAdjustmentFeedback(v16, v25);
  if (v26 == 1)
  {
    std::__function::__value_func<void ()(std::optional<double> const&)>::~__value_func[abi:nn200100](v25);
  }

  v17 = *(*(a3 + 41672) + 40);
  if ((*(*(a3 + 41672) + 48) - v17) >= 0x11)
  {
    v18 = *(v17 + 16);
  }

  else
  {
    v18 = 0;
  }

  v19 = +[VKSharedResourcesManager sharedResources];
  [v19 standardCommandBufferSelector];
  v24 = *(*(v27 + 8) + 8);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  md::GridRenderLayer::setCommandBufferLocation(v18, &v24);
  v20 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v4[121] + 16), 0x88BE5DF80D25DA79);
  if (v20)
  {
    v20 = v20[5];
  }

  (*(*v20 + 16))(v20);
  v21 = v4[93];
  if (v21)
  {
    v22 = *(v21 + 336);
    if (v22)
    {
      v23 = *v22;
      std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((*v22 + 8));
      std::__list_imp<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>>::clear((v23 + 48));
    }
  }

  *(v4[138] + 88) = 1;
}

uint64_t std::__optional_storage_base<std::function<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>,false> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(result + 32) == *(a2 + 32))
  {
    if (*(result + 32))
    {
      std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::__value_func[abi:nn200100](v5, a2);
      if (v5 != v2)
      {
        v3 = v6;
        v4 = *(v2 + 24);
        if (v6 == v5)
        {
          if (v4 == v2)
          {
            (*(*v6 + 24))();
            (*(*v6 + 32))(v6);
            v6 = 0;
            (*(**(v2 + 24) + 24))(*(v2 + 24), v5);
            (*(**(v2 + 24) + 32))(*(v2 + 24));
            *(v2 + 24) = 0;
            v6 = v5;
            (*(v7[0] + 24))(v7, v2);
            (*(v7[0] + 32))(v7);
          }

          else
          {
            (*(*v6 + 24))();
            (*(*v6 + 32))(v6);
            v6 = *(v2 + 24);
          }

          *(v2 + 24) = v2;
        }

        else if (v4 == v2)
        {
          (*(*v4 + 24))(*(v2 + 24), v5);
          (*(**(v2 + 24) + 32))(*(v2 + 24));
          *(v2 + 24) = v6;
          v6 = v5;
        }

        else
        {
          v6 = *(v2 + 24);
          *(v2 + 24) = v3;
        }
      }

      return std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](v5);
    }
  }

  else if (*(result + 32))
  {
    result = std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](result);
    *(v2 + 32) = 0;
  }

  else
  {
    result = std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::__value_func[abi:nn200100](result, a2);
    *(v2 + 32) = 1;
  }

  return result;
}

uint64_t std::__optional_storage_base<std::function<BOOL ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<BOOL ()(void)>,false> const&>(uint64_t result, uint64_t a2)
{
  if (*(result + 32) == *(a2 + 32))
  {
    if (*(result + 32))
    {

      return std::function<BOOL ()(void)>::operator=(result, a2);
    }
  }

  else if (*(result + 32))
  {
    result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:nn200100](result);
    *(result + 32) = 0;
  }

  else
  {
    result = std::__function::__value_func<BOOL ()(void)>::__value_func[abi:nn200100](result, a2);
    *(result + 32) = 1;
  }

  return result;
}

uint64_t std::__optional_storage_base<std::function<float ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<float ()(void)>,false> const&>(uint64_t result, uint64_t a2)
{
  if (*(result + 32) == *(a2 + 32))
  {
    if (*(result + 32))
    {

      return std::function<float ()(void)>::operator=(result, a2);
    }
  }

  else if (*(result + 32))
  {
    result = std::__function::__value_func<float ()(void)>::~__value_func[abi:nn200100](result);
    *(result + 32) = 0;
  }

  else
  {
    result = std::__function::__value_func<float ()(void)>::__value_func[abi:nn200100](result, a2);
    *(result + 32) = 1;
  }

  return result;
}

uint64_t std::function<float ()(void)>::operator=(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<float ()(void)>::__value_func[abi:nn200100](v6, a2);
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

  std::__function::__value_func<float ()(void)>::~__value_func[abi:nn200100](v6);
  return a1;
}

uint64_t md::BaseHybridMapEngineMode::didBecomeActive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v64[3] = *MEMORY[0x1E69E9840];
  v8 = (a2 + 40960);
  md::World::purge(*(a2 + 41704), 0);
  *(a1 + 656) = v8[134];
  md::CartographicMapEngineMode::didBecomeActive(a1, a2, a3, a4);
  v9 = *(a3 + 41672);
  v10 = *(v9 + 40);
  v11 = *(v9 + 48) - v10;
  if (v11 > 0x1AF)
  {
    v13 = *(v10 + 424);
    v12 = *(v10 + 80);
    if (v13)
    {
      v14 = *(a1 + 680);
      if (*(v13 + 33) != v14)
      {
        *(v13 + 33) = v14;
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v15 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = *(v13 + 33);
          *buf = 67109120;
          *&buf[4] = v16;
          _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_INFO, "[FeatureFlag]FlyoverRenderLayer:%d", buf, 8u);
        }
      }
    }
  }

  else
  {
    if (v11 < 0x58)
    {
      goto LABEL_18;
    }

    v12 = *(v10 + 80);
  }

  if (v12)
  {
    v17 = *(a1 + 680);
    if (*(v12 + 33) != v17)
    {
      *(v12 + 33) = v17;
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v18 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(v12 + 33);
        *buf = 67109120;
        *&buf[4] = v19;
        _os_log_impl(&dword_1B2754000, v18, OS_LOG_TYPE_INFO, "[FeatureFlag]GlobeRasterRenderLayer:%d", buf, 8u);
      }
    }
  }

LABEL_18:
  v20 = v8[121];
  v21 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v20 + 16), 0x2FED70A4459DFCA1uLL);
  if (v21)
  {
    v22 = v21[5];
    if (v22)
    {
      v23 = v8[122];
      v24 = *v23;
      v25 = v23[1];
      while (v24 != v25)
      {
        if (*v24 == 21)
        {
          if (v24 != v25)
          {
            v26 = *(v24 + 8) != 0;
            goto LABEL_27;
          }

          break;
        }

        v24 += 16;
      }

      v26 = 0;
LABEL_27:
      md::StyleLogic::setGroundMode(v22, v26);
      v20 = v8[121];
    }
  }

  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v20 + 16), 0x91E65CD7F1A7A7FALL)[5] + 229) = 0;
  v27 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v20 + 16), 0xAF46DE79C836B0D8);
  if (v27)
  {
    v28 = v27[5];
  }

  else
  {
    v28 = 0;
  }

  *(v28 + 324) = 17826054;
  v29 = v8[93];
  if (v29)
  {
    md::World::setEnableGlobe(v29[1].__shared_owners_, v29[1].__shared_weak_owners_, *(a1 + 648));
  }

  *(v28 + 328) = 3;
  v60[0] = &unk_1F29F3C90;
  v60[1] = v29;
  v60[3] = v60;
  v61 = 1;
  std::__optional_storage_base<std::function<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>,false> const&>(v28 + 336, v60);
  if (v61 == 1)
  {
    std::__function::__value_func<std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::~__value_func[abi:nn200100](v60);
  }

  v30 = v8[121];
  v31 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v30 + 16), 0x4BD0C73E70A08DDBuLL);
  if (v31)
  {
    v32 = v31[5];
  }

  else
  {
    v32 = 0;
  }

  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v30 + 16), 0xE3FE7D96C51342AuLL)[5] + 848) = 0;
  v58[0] = &unk_1F29F3CD8;
  v58[1] = v32;
  v58[3] = v58;
  v59 = 1;
  std::__optional_storage_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false> const&>(v28 + 376, v58);
  if (v59 == 1)
  {
    std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](v58);
  }

  gdc::GlobeTileSelector::setShouldCacheZBounds(*(v28 + 136), 1);
  gdc::GlobeTileSelector::setShouldCacheZBounds(*(v28 + 184), 1);
  if (*(a1 + 648))
  {
    v33 = 7;
  }

  else
  {
    v33 = 2;
  }

  v34 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8[121] + 16), 0xC267A080D338C6A1);
  if (v34)
  {
    v35 = v34[5];
  }

  else
  {
    v35 = 0;
  }

  *buf = v33;
  std::__hash_table<md::TileSelectionTileSetType,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>>::__emplace_unique_key_args<md::TileSelectionTileSetType,md::TileSelectionTileSetType const&>((v35 + 208), v33);
  v36 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8[121] + 16), 0x4AC7AB7561675F6uLL);
  if (v36)
  {
    v37 = v36[5];
  }

  else
  {
    v37 = 0;
  }

  v38 = +[VKDebugSettings sharedSettings];
  v39 = [v38 flyoverDrapeGrid];

  if (v39)
  {
    *buf = 1;
    std::__hash_table<md::TileSelectionTileSetType,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>>::__emplace_unique_key_args<md::TileSelectionTileSetType,md::TileSelectionTileSetType const&>((v35 + 208), 1u);
    strcpy(buf, "\b");
    std::__hash_table<md::TileSelectionTileSetType,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>>::__emplace_unique_key_args<md::TileSelectionTileSetType,md::TileSelectionTileSetType const&>((v35 + 208), 8u);
  }

  *buf = &unk_1F29F3D20;
  v56 = buf;
  v57 = 1;
  std::__optional_storage_base<std::function<BOOL ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<BOOL ()(void)>,false> const&>(v37 + 144, buf);
  if (v57 == 1)
  {
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:nn200100](buf);
  }

  *buf = &unk_1F29F3D68;
  v56 = buf;
  v57 = 1;
  std::__optional_storage_base<std::function<float ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<float ()(void)>,false> const&>(v37 + 184, buf);
  if (v57 == 1)
  {
    std::__function::__value_func<float ()(void)>::~__value_func[abi:nn200100](buf);
  }

  v40 = *(v9 + 40);
  if ((*(v9 + 48) - v40) >= 0x11)
  {
    v41 = *(v40 + 16);
  }

  else
  {
    v41 = 0;
  }

  v42 = +[VKSharedResourcesManager sharedResources];
  [v42 standardCommandBufferSelector];
  v51 = *(*(*buf + 8) + 8);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v55);
  }

  md::GridRenderLayer::setCommandBufferLocation(v41, &v51);
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8[121] + 16), 0x17767EADC5B287BuLL);
  v44 = *(result + 40);
  v44[11] = 0u;
  v44[12] = 0u;
  v44[13] = 0u;
  v44[14] = 0u;
  v44[15] = 0u;
  if (*(a1 + 648) == 1)
  {
    *buf = &unk_1F29F3DB0;
    v55 = v29;
    v56 = buf;
    v57 = 1;
    v45 = (a1 + 576);
    if (*(a1 + 608))
    {
      std::__function::__value_func<std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::__value_func[abi:nn200100](v62, buf);
      if (v45 != v62)
      {
        v46 = v63;
        v47 = *(a1 + 600);
        if (v63 == v62)
        {
          if (v47 == v45)
          {
            (*(*v63 + 24))(v63, v64);
            (*(*v63 + 32))(v63);
            v63 = 0;
            (*(**(a1 + 600) + 24))(*(a1 + 600), v62);
            (*(**(a1 + 600) + 32))(*(a1 + 600));
            *(a1 + 600) = 0;
            v63 = v62;
            (*(v64[0] + 24))(v64, a1 + 576);
            (*(v64[0] + 32))(v64);
          }

          else
          {
            (*(*v63 + 24))(v63, a1 + 576);
            (*(*v63 + 32))(v63);
            v63 = *(a1 + 600);
          }

          *(a1 + 600) = v45;
        }

        else if (v47 == v45)
        {
          (*(*v47 + 24))(*(a1 + 600), v62);
          (*(**(a1 + 600) + 32))(*(a1 + 600));
          *(a1 + 600) = v63;
          v63 = v62;
        }

        else
        {
          v63 = *(a1 + 600);
          *(a1 + 600) = v46;
        }
      }

      std::__function::__value_func<std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::~__value_func[abi:nn200100](v62);
    }

    else
    {
      std::__function::__value_func<std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::__value_func[abi:nn200100](a1 + 576, buf);
      *(a1 + 608) = 1;
    }

    if (v57 == 1)
    {
      std::__function::__value_func<std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::~__value_func[abi:nn200100](buf);
    }

    if (*(a1 + 672) == 1)
    {
      *(a1 + 672) = 0;
    }

    v52[0] = &unk_1F29F3DF8;
    v52[1] = a1;
    v52[3] = v52;
    v53 = 1;
    md::ElevationLogic::setElevationAdjustmentFeedback(v44, v52);
    if (v53 == 1)
    {
      std::__function::__value_func<void ()(std::optional<double> const&)>::~__value_func[abi:nn200100](v52);
    }

    *buf = &unk_1F29F3E40;
    v55 = a1;
    v56 = buf;
    v57 = 1;
    v48 = (a1 + 536);
    if (*(a1 + 568))
    {
      std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](v62, buf);
      if (v48 != v62)
      {
        v49 = v63;
        v50 = *(a1 + 560);
        if (v63 == v62)
        {
          if (v50 == v48)
          {
            (*(*v63 + 24))();
            (*(*v63 + 32))(v63);
            v63 = 0;
            (*(**(a1 + 560) + 24))(*(a1 + 560), v62);
            (*(**(a1 + 560) + 32))(*(a1 + 560));
            *(a1 + 560) = 0;
            v63 = v62;
            (*(v64[0] + 24))(v64, a1 + 536);
            (*(v64[0] + 32))(v64);
          }

          else
          {
            (*(*v63 + 24))();
            (*(*v63 + 32))(v63);
            v63 = *(a1 + 560);
          }

          *(a1 + 560) = v48;
        }

        else if (v50 == v48)
        {
          (*(*v50 + 24))(*(a1 + 560), v62);
          (*(**(a1 + 560) + 32))(*(a1 + 560));
          *(a1 + 560) = v63;
          v63 = v62;
        }

        else
        {
          v63 = *(a1 + 560);
          *(a1 + 560) = v49;
        }
      }

      result = std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v62);
    }

    else
    {
      result = std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](a1 + 536, buf);
      *(a1 + 568) = 1;
    }

    if (v57 == 1)
    {
      result = std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](buf);
    }
  }

  *(v8[138] + 88) = 0;
  return result;
}

void sub_1B2D7BA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a22 == 1)
  {
    std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](&a16);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<md::TileSelectionTileSetType,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>>::__emplace_unique_key_args<md::TileSelectionTileSetType,md::TileSelectionTileSetType const&>(void *result, unsigned __int16 a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % result[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
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
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 8) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_6,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_6>,BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::operator()(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *(a1 + 8);
  v9 = gdc::Camera::cameraFrame(v7);
  v10 = *(v9 + 32);
  *a3 = fmax(*grl::IconMetricsRenderResult::size(v7) * 0.15, 5.0);
  v11 = *(v9 + 16);
  v23[0] = *v9;
  v23[1] = v11;
  v23[2] = *(v9 + 32);
  v24 = *(v9 + 48);
  gdc::CameraFrame<geo::Radians,double>::toRigidTransformMercator(v21, v23, *v7 == 0);
  v12 = 0.0;
  if (*(v8 + 672) == 1)
  {
    v12 = *(v8 + 664);
  }

  v13 = v22;
  gdc::Camera::verticalFieldOfView(&v20, v7);
  v14 = __sincos_stret(v10);
  v15 = (fabs(v12) + v13 * 40075017.0) / fmax(v14.__cosval, 0.01745);
  v16 = v20 * 0.5;
  v17 = sin(1.57079633 - (v10 + v20 * 0.5));
  v18 = tan(v16);
  *a4 = fmax((v15 * (v14.__sinval * v18 * sin(v16 + 1.57079633)) / fmax(v17, 0.01745) + v15) * 1.5, 600.0);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return 1;
}

uint64_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_6,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_6>,BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3E40;
  a2[1] = v2;
  return result;
}

double std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_5,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_5>,void ()(std::optional<double> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *&result = *a2;
  if (!*(a2 + 8))
  {
    *&result = 0.0;
  }

  v3 = *(a1 + 8);
  if (*(v3 + 672) == *(a2 + 8))
  {
    if (*(v3 + 672))
    {
      result = *&result;
      *(v3 + 664) = result;
    }
  }

  else if (*(v3 + 672))
  {
    *(v3 + 672) = 0;
  }

  else
  {
    result = *&result;
    *(v3 + 664) = result;
    *(v3 + 672) = 1;
  }

  return result;
}

uint64_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_5,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_5>,void ()(std::optional<double> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3DF8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_4,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_4>,std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *a3;
  *a4 = 0;
  a4[16] = 0;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = *(v9 + 352);
    if (v10 && v8 > 15.0)
    {
      v12 = gdc::Camera::cameraFrame(v6);
      v13 = v12[1];
      v14 = tan(*v12 * 0.5 + 0.785398163);
      v15 = log(v14);
      v16 = 1 << v8;
      v18[0] = -1;
      v18[1] = v8;
      v19 = v16 + ~vcvtmd_s64_f64((v15 * 0.159154943 + 0.5) * v16);
      v20 = vcvtmd_s64_f64((v13 * 0.159154943 + 0.5) * v16);
      v21 = 0;
      v22 = 1;
      md::FlyoverMetaData::adjustedTile(v17, v10, v18, 1);
      if (v17[40] == 1 && v17[32] != 1)
      {
        *a4 = xmmword_1B33B0C80;
        a4[16] = 1;
      }
    }
  }

  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void sub_1B2D7C39C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_4,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_4>,std::optional<md::DynamicPitchZoomLimit> ()(std::shared_ptr<gdc::Camera>,float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3DB0;
  a2[1] = v2;
  return result;
}

float std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_3,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_3>,float ()(void)>::operator()()
{
  v0 = +[VKDebugSettings sharedSettings];
  [v0 flyoverGridNDCBias];
  v2 = v1;

  return v2;
}

uint64_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_2,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_2>,BOOL ()(void)>::operator()()
{
  v0 = +[VKDebugSettings sharedSettings];
  v1 = [v0 flyoverDrapeGrid];

  return v1;
}

int64x2_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_1,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_1>,gdc::CameraFrame<geo::Radians,double> ()(void)>::operator()@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (!v3 || (md::FlyoverTileDataLogic::getNeighborCameraPositionProvider(v7, v3), v9 != 1))
  {
    result = vdupq_n_s64(0xC00921FB54442D18);
    *a2 = result;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
    return result;
  }

  std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](v7);
  md::FlyoverTileDataLogic::getNeighborCameraPositionProvider(v7, *(a1 + 8));
  if ((v9 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
LABEL_10:
    v6 = std::__throw_bad_function_call[abi:nn200100]();
    if (v9 == 1)
    {
      std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](v7);
    }

    _Unwind_Resume(v6);
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  (*(*v8 + 48))(v8);
  if (v9 == 1)
  {
    std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](v7);
  }

  return result;
}

uint64_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_1,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_1>,gdc::CameraFrame<geo::Radians,double> ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3CD8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_0,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_0>,std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::operator()(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 16) = 0;
  if (md::FlyoverMetaData::tileType(*(*(a1 + 8) + 352), a2, 0) >= 0x100u)
  {
    md::World::getDsmTileData(&v14, *(*(a1 + 8) + 80), *(*(a1 + 8) + 88), a2);
    v6 = v14;
    if (v14)
    {
      md::FlyoverMetaData::adjustedTile(v13, *(*(a1 + 8) + 352), a2, 0);
      if (v13[40] == 1)
      {
        md::FlyoverMetaData::elevationBoundsForTile(&v11, *(*(a1 + 8) + 352), v13);
      }

      else
      {
        md::FlyoverMetaData::elevationBoundsForTile(&v11, *(*(a1 + 8) + 352), a2);
      }

      *a3 = v11;
      v7 = v12;
      *(a3 + 16) = v12;
      if ((v7 & 1) == 0)
      {
        if (*(v6 + 728))
        {
          v8 = (v6 + 728);
        }

        else
        {
          v8 = (v6 + 744);
        }

        v9 = md::FlyoverDsmTileData::heightBounds(v6, a2, v8);
        if (v10)
        {
          *a3 = *&v9;
          *(a3 + 8) = *(&v9 + 1);
          *(a3 + 16) = 1;
        }
      }
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }
  }
}

void sub_1B2D7C900(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_0,std::allocator<md::BaseHybridMapEngineMode::didBecomeActive(md::MapEngine &,md::MapEngineSyncAccessor,md::MapEngineSettings *)::$_0>,std::optional<gm::Range<double>> ()(geo::QuadTile const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3C90;
  a2[1] = v2;
  return result;
}

void md::BaseHybridMapEngineMode::applyMapDataTypeSettings(uint64_t **a1, uint64_t a2, void *a3)
{
  if (*(a2 + 41936))
  {
    v5 = a1;
    if (*(a1 + 648))
    {
      v6 = 7;
    }

    else
    {
      v6 = 2;
    }

    v7 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a3, 0xBu);
    if (v7 && *(v7 + 18) == 2)
    {
      *(v7 + 18) = (v6 << 16) | 2;
    }

    v8 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a3, 0xCu);
    if (v8 && *(v8 + 18) == 2)
    {
      *(v8 + 18) = (v6 << 16) | 2;
    }

    v9 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a3, 0x47u);
    if (v9 && *(v9 + 18) == 2)
    {
      *(v9 + 18) = (v6 << 16) | 2;
    }

    a1 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a3, 0x48u);
    if (a1 && *(a1 + 18) == 2)
    {
      *(a1 + 18) = (v6 << 16) | 2;
    }

    if (*(v5 + 648) == 1)
    {
      a1 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(a3, 0x51u);
      if (a1)
      {
        if (*(a1 + 18) == 2)
        {
          *(a1 + 18) = (v6 << 16) | 2;
        }
      }
    }
  }

  md::MapEngineMode::applyMapDataTypeSettings(a1, a2, a3);
}

void md::BaseHybridMapEngineMode::applyRenderLayerSettings(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 41936);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    v7 = *v4;
    while (*v7 != 5)
    {
      v7 += 16;
      if (v7 == v6)
      {
        goto LABEL_13;
      }
    }

    if (v7 != v6)
    {
      if (*(v7 + 8))
      {
        v8 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a3, 0x29u);
        if (v8)
        {
          if (*(v8 + 17) == 2)
          {
            *(v8 + 17) = 1;
          }
        }
      }
    }
  }

LABEL_13:
  while (v5 != v6)
  {
    if (*v5 == 5)
    {
      if (v5 != v6)
      {
        if (*(v5 + 8))
        {
          v9 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>(a3, 0x2Au);
          if (v9)
          {
            if (*(v9 + 17) == 2)
            {
              *(v9 + 17) = 1;
            }
          }
        }
      }

      return;
    }

    v5 += 16;
  }
}

void md::BaseHybridMapEngineMode::~BaseHybridMapEngineMode(md::BaseHybridMapEngineMode *this)
{
  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::BaseHybridMapEngineMode::BaseHybridMapEngineMode(uint64_t a1, char a2, __int16 a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = md::CartographicMapEngineMode::CartographicMapEngineMode(a1, a2);
  *v5 = &unk_1F29F3C48;
  *(v5 + 648) = a3;
  *(v5 + 664) = 0;
  *(v5 + 672) = 0;
  *(a1 + 680) = MapsFeature_IsEnabled_VKMLayout_Flyover();
  v24 = xmmword_1B33B0710;
  v6 = (a1 + 628);
  if (*(a1 + 644))
  {
    *v6 = xmmword_1B33B0710;
  }

  else
  {
    *v6 = v24;
    *(a1 + 644) = 1;
  }

  *(a1 + 616) = 100;
  *(a1 + 49) = 0;
  *(a1 + 52) = 20;
  LOWORD(v24) = 2560;
  *(&v24 + 1) = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 512), &v24);
  LOWORD(v24) = 5386;
  *(&v24 + 1) = 0x3FE0C152382D7365;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 512), &v24);
  if (*(a1 + 648) == 1)
  {
    LOWORD(v24) = 2560;
    *(&v24 + 1) = 0;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 464), &v24);
    LOWORD(v24) = 5386;
    *(&v24 + 1) = 0x3FD657184AE74487;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 464), &v24);
    LOWORD(v24) = 768;
    *(&v24 + 1) = 0;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 488), &v24);
    LOWORD(v24) = 3843;
    *(&v24 + 1) = 0x3FE38C35418A5BF6;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 488), &v24);
    LOWORD(v24) = 4111;
    *(&v24 + 1) = 0x3FF0C152382D7365;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 488), &v24);
    LOWORD(v24) = 6416;
    *(&v24 + 1) = 0x3FF38C35418A5BF6;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 488), &v24);
    md::MapEngineMode::addTileSelectionTileSetType(a1);
  }

  else
  {
    *(a1 + 52) = 20;
    LOWORD(v24) = 5120;
    *(&v24 + 1) = 0;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 464), &v24);
    LOWORD(v24) = 5120;
    *(&v24 + 1) = 0;
    geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((a1 + 488), &v24);
  }

  LOWORD(v24) = 512;
  BYTE2(v24) = 31;
  md::MapEngineMode::addRequiredRenderLayers(a1, &v24, 3);
  if (*(a1 + 648) == 1)
  {
    LOWORD(v24) = 2561;
    BYTE2(v24) = 53;
    md::MapEngineMode::addRequiredRenderLayers(a1, &v24, 3);
    v7 = 5;
    v8 = 2;
  }

  else
  {
    LOWORD(v24) = 5379;
    BYTE2(v24) = 9;
    md::MapEngineMode::addRequiredRenderLayers(a1, &v24, 3);
    v8 = 0;
    v7 = 0;
  }

  *(a1 + 224) = v8;
  *(a1 + 225) = v7;
  *&v24 = 0x2B7C4502BD3C99C6;
  *(&v24 + 1) = "md::ResolvedSceneLogic]";
  v25 = 22;
  gdc::LogicExecutionGraphBuilder::addFlowAfter((a1 + 232), &v24, 0);
  *&v24 = 0x17767EADC5B287BLL;
  *(&v24 + 1) = "md::ElevationLogic]";
  v25 = 18;
  gdc::LogicExecutionGraphBuilder::addFlowAfter((a1 + 232), &v24, 1);
  gdc::LogicExecutionGraphBuilder::addLogic<md::mun::MuninLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::AnchorLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::AssetLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::AssetInjectionLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::CameraLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::ElevationLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::GeometryLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::GridLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::IdentifiedResourceLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LabelsLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LightingLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LoadingStatusLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::MapZoomLevelStyleLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::MaterialLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::MeshRenderableLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::NavigationLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::RouteLineLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::PuckLocationAnimationTracingLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::OverlaysLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::DrapingLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::RegistryLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::PendingRegistryLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::RouteOverlayLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::LayerDataLogic>((a1 + 232));
  v21 = 0xC267A080D338C6A1;
  v22 = "md::TerrainMeshProviderLogic]";
  v23 = 28;
  *&v18 = 0x44B2D9808992962CLL;
  *(&v18 + 1) = "md::TerrainMeshProviderContext]";
  v19 = 30;
  v20 = 1;
  *(&v24 + 1) = &v26;
  v25 = 2;
  *&v24 = &unk_1F2A4B5D0;
  v26 = xmmword_1E7B33818;
  v27 = unk_1E7B33828;
  v28 = xmmword_1E7B33838;
  v15 = xmmword_1E7B33848;
  *(&v13 + 1) = &v15;
  v14 = 2;
  *&v13 = &unk_1F2A4B5D0;
  v16 = unk_1E7B33858;
  v17 = xmmword_1E7B33868;
  gdc::LogicExecutionGraphBuilder::addLogic((a1 + 232), &v21, &v18, 0, &v24, &v13);
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileSelectionLogic>((a1 + 232));
  *&v18 = 0x4BD0C73E70A08DDBLL;
  *(&v18 + 1) = "md::FlyoverTileDataLogic]";
  v19 = 24;
  *&v13 = 0x479E84E48468DB70;
  *(&v13 + 1) = "md::FlyoverTileDataResolverContext]";
  v14 = 34;
  LOBYTE(v15) = 1;
  v27 = unk_1E7B338D0;
  v28 = xmmword_1E7B338E0;
  v29 = unk_1E7B338F0;
  *&v24 = &unk_1F2A4B5F0;
  *(&v24 + 1) = &v26;
  v25 = 3;
  v30 = 17;
  v26 = xmmword_1E7B338C0;
  v22 = &v24;
  v23 = 0;
  v21 = &unk_1F2A4C258;
  gdc::LogicExecutionGraphBuilder::addLogic((a1 + 232), &v18, &v13, 0, &v24, &v21);
  *&v18 = 0xE3FE7D96C51342ALL;
  *(&v18 + 1) = "md::FlyoverCompleteTileDataLogic]";
  v19 = 32;
  *&v13 = 0xD3D7935EF848FCE7;
  *(&v13 + 1) = "md::FlyoverCompleteTileDataContext]";
  v14 = 34;
  LOBYTE(v15) = 1;
  v27 = unk_1E7B33918;
  v28 = xmmword_1E7B33928;
  v29 = unk_1E7B33938;
  *&v24 = &unk_1F2A4B5F0;
  *(&v24 + 1) = &v26;
  v25 = 3;
  v30 = 23;
  v26 = xmmword_1E7B33908;
  v22 = &v24;
  v23 = 0;
  v21 = &unk_1F2A4C258;
  gdc::LogicExecutionGraphBuilder::addLogic((a1 + 232), &v18, &v13, 0, &v24, &v21);
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::PendingSceneLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::ResolvedSceneLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::SceneQueryLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::SettingsLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::SharedResourcesLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::SkyLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::StyleLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::PuckLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::NonTiledAssetLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::StandardLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::DebugDrawLogic>((a1 + 232));
  gdc::LogicExecutionGraphBuilder::addLogic<md::BVHDebugLogic>((a1 + 232));
  if (*(a1 + 680) == 1)
  {
    *&v18 = 0xBCE247AEE562B774;
    *(&v18 + 1) = "md::CollectMapDataLogic<md::MapDataType::Flyover>]";
    v19 = 49;
    *&v13 = 0x4B05BEFA631D0889;
    *(&v13 + 1) = "md::CollectMapDataContext<md::MapDataType::Flyover>]";
    v14 = 51;
    LOBYTE(v15) = 1;
    *&v24 = &unk_1F2A4C218;
    *(&v24 + 1) = &v26;
    v26 = xmmword_1E7B3C808;
    v25 = 1;
    *&v27 = 16;
    v22 = &v24;
    v23 = 0;
    v21 = &unk_1F2A4C258;
    gdc::LogicExecutionGraphBuilder::addLogic((a1 + 232), &v18, &v13, 0, &v24, &v21);
    v21 = 0x1643CA7DB4F8EC0BLL;
    v22 = "md::CollectRenderablesLogic<md::MapDataType::Flyover, md::FlyoverRenderable>]";
    v23 = 76;
    *&v18 = 0x57AAF780DF3EC6C0;
    *(&v18 + 1) = "md::CollectRenderablesLogicContext<md::MapDataType::Flyover>]";
    v19 = 60;
    v20 = 1;
    *&v24 = &unk_1F2A4C218;
    *(&v24 + 1) = &v26;
    v26 = xmmword_1E7B3C8B0;
    v25 = 1;
    *&v27 = 19;
    *(&v13 + 1) = &v15;
    v14 = 1;
    *&v13 = &unk_1F2A4C218;
    v15 = xmmword_1E7B33C08;
    *&v16 = 51;
    gdc::LogicExecutionGraphBuilder::addLogic((a1 + 232), &v21, &v18, 0, &v24, &v13);
    *&v18 = 0x3FE9EE0C18B7C16;
    *(&v18 + 1) = "md::CollectMapDataLogic<md::MapDataType::PolarFlyover>]";
    v19 = 54;
    *&v13 = 0xE4007F1EDCD91179;
    *(&v13 + 1) = "md::CollectMapDataContext<md::MapDataType::PolarFlyover>]";
    v14 = 56;
    LOBYTE(v15) = 1;
    *&v24 = &unk_1F2A4C218;
    *(&v24 + 1) = &v26;
    v26 = xmmword_1E7B3C808;
    v25 = 1;
    *&v27 = 16;
    v22 = &v24;
    v23 = 0;
    v21 = &unk_1F2A4C258;
    gdc::LogicExecutionGraphBuilder::addLogic((a1 + 232), &v18, &v13, 0, &v24, &v21);
    v21 = 0xAE08CA453A162E8BLL;
    v22 = "md::CollectRenderablesLogic<md::MapDataType::PolarFlyover, md::FlyoverRenderable>]";
    v23 = 81;
    *&v18 = 0x4F6DB855E2E136BALL;
    *(&v18 + 1) = "md::CollectRenderablesLogicContext<md::MapDataType::PolarFlyover>]";
    v19 = 65;
    v20 = 1;
    *&v24 = &unk_1F2A4C218;
    *(&v24 + 1) = &v26;
    v26 = xmmword_1E7B3C8B0;
    v25 = 1;
    *&v27 = 19;
    *(&v13 + 1) = &v15;
    v14 = 1;
    *&v13 = &unk_1F2A4C218;
    v15 = xmmword_1E7B33C20;
    *&v16 = 56;
    gdc::LogicExecutionGraphBuilder::addLogic((a1 + 232), &v21, &v18, 0, &v24, &v13);
  }

  v9 = *(a1 + 648);
  if (v9 == 1)
  {
    *&v24 = 0x5004F0001004BLL;
    md::MapEngineMode::addRequiredMapDataTypes(a1, &v24, 2);
  }

  else
  {
    LOWORD(v24) = 10;
    WORD1(v24) = v9;
    md::MapEngineMode::addRequiredMapDataTypes(a1, &v24, 1);
  }

  LOWORD(v24) = 27;
  WORD1(v24) = v9;
  WORD2(v24) = 15;
  WORD3(v24) = v9;
  WORD4(v24) = 28;
  WORD5(v24) = v9;
  md::MapEngineMode::addOptionalMapDataTypes(a1, &v24, 3);
  if (*(a1 + 648) == 1)
  {
    LOWORD(v24) = 76;
    WORD1(v24) = v9;
    WORD2(v24) = 77;
    WORD3(v24) = v9;
    md::MapEngineMode::addOptionalMapDataTypes(a1, &v24, 2);
  }

  LOWORD(v24) = 10284;
  BYTE2(v24) = 18;
  md::MapEngineMode::addOptionalRenderLayers(a1, &v24, 3);
  v10 = *(a1 + 648) == 0;
  LOWORD(v24) = 11;
  if (v10)
  {
    v11 = 2;
  }

  else
  {
    v11 = 7;
  }

  WORD1(v24) = v11;
  WORD2(v24) = 12;
  WORD3(v24) = v11;
  WORD4(v24) = 71;
  WORD5(v24) = v11;
  WORD6(v24) = 72;
  HIWORD(v24) = v11;
  md::MapEngineMode::addAllowedMapDataTypes(a1, &v24, 4);
  if (*(a1 + 648) == 1)
  {
    LODWORD(v24) = 327761;
    md::MapEngineMode::addAllowedMapDataTypes(a1, &v24, 1);
  }

  LOWORD(v24) = 40;
  WORD1(v24) = a3;
  md::MapEngineMode::addAllowedMapDataTypes(a1, &v24, 1);
  LOWORD(v24) = 10793;
  md::MapEngineMode::addAllowedRenderLayers(a1, &v24, 2);
  return a1;
}

uint64_t md::S2TileFetcher::tileKey(uint64_t a1, void *a2, uint64_t a3)
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

void md::S2TileFetcher::~S2TileFetcher(md::S2TileFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

void std::default_delete<md::LabelMetrics>::operator()[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

void sub_1B2D7EC48(_Unwind_Exception *a1)
{
  STACK[0x688] = v1 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&STACK[0x688]);
  STACK[0x688] = v1 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&STACK[0x688]);
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

void sub_1B2D7EE04()
{
  if (SLOBYTE(STACK[0x5AF]) < 0)
  {
    operator delete(STACK[0x598]);
  }

  JUMPOUT(0x1B2D7EE20);
}

void sub_1B2D7FC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  gss::QueryableLocker<gss::ScenePropertyID>::~QueryableLocker(&a11);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a17);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(int a1, uint64_t a2)
{
  v4 = *a2;
  if (!*a2 || (v5 = *v4, LODWORD(v4) = *v4 == 1.0, *(a2 + 10) != 1) || (v5 != 0.0 ? (v6 = v5 == 1.0) : (v6 = 1), v6))
  {
    v7 = *(a2 + v4 + 11);
    if (v7 != 2)
    {
      return gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<float>(a2, a1, v7, 0);
    }
  }

  v10 = 1;
  gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<float>(a2, a1, 0, &v10);
  return gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<float>(a2, a1, 1u, &v9);
}

uint64_t gss::RenderStyleHelper<gss::ScenePropertyID,unsigned char>::valueForKey(unsigned __int8 a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 && (v5 = *v4, LODWORD(v4) = *v4 == 1.0, *(a2 + 10) == 1) && (v5 != 0.0 ? (v6 = v5 == 1.0) : (v6 = 1), !v6))
  {
    v13 = v5 < 1.0;
  }

  else
  {
    v7 = *(a2 + v4 + 11);
    if (v7 != 2)
    {
      return *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<unsigned char>(a2, a1, v7, 0);
    }

    v13 = 1;
  }

  v15 = 1;
  v14 = 1;
  v8 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<unsigned char>(a2, a1, 0, &v15);
  v9 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<unsigned char>(a2, a1, 1u, &v14);
  if (v13)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return *v10;
}

float32x2_t gss::RenderStyleHelper<gss::ScenePropertyID,gm::Matrix<float,2,1>>::valueForKey(unsigned __int8 a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *v4;
    v6 = *v4;
    LODWORD(v4) = *v4 == 1.0;
    if (*(a2 + 10) == 1 && v6 != 0.0 && v6 != 1.0)
    {
      goto LABEL_10;
    }
  }

  v8 = *(a2 + v4 + 11);
  if (v8 == 2)
  {
    v5 = 0.0;
LABEL_10:
    v12 = 1;
    v9 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<gm::Matrix<float,2,1>>(a2, a1, 0, &v12);
    return vmla_f32(*v9, vdup_n_s32(LODWORD(v5)), vsub_f32(*gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<gm::Matrix<float,2,1>>(a2, a1, 1u, &v11), *v9));
  }

  return *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<gm::Matrix<float,2,1>>(a2, a1, v8, 0);
}

uint64_t gss::RenderStyleHelper<gss::ScenePropertyID,int>::valueForKey(int a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 && (v5 = *v4, LODWORD(v4) = *v4 == 1.0, *(a2 + 10) == 1) && (v5 != 0.0 ? (v6 = v5 == 1.0) : (v6 = 1), !v6))
  {
    v12 = v5 < 1.0;
  }

  else
  {
    v7 = *(a2 + v4 + 11);
    if (v7 != 2)
    {
      return *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<int>(a2, a1, v7, 0);
    }

    v12 = 1;
  }

  v14 = 1;
  v8 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<int>(a2, a1, 0, &v14);
  v9 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<int>(a2, a1, 1u, &v13);
  if (v12)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return *v10;
}

uint64_t gss::RenderStyleHelper<gss::ScenePropertyID,BOOL>::valueForKey(unsigned __int8 a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 && (v5 = *v4, LODWORD(v4) = *v4 == 1.0, *(a2 + 10) == 1) && (v5 != 0.0 ? (v6 = v5 == 1.0) : (v6 = 1), !v6))
  {
    v13 = v5 < 1.0;
  }

  else
  {
    v7 = *(a2 + v4 + 11);
    if (v7 != 2)
    {
      v11 = *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<BOOL>(a2, a1, v7, 0);
      return v11 & 1;
    }

    v13 = 1;
  }

  v15 = 1;
  v14 = 1;
  v8 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<BOOL>(a2, a1, 0, &v15);
  v9 = gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<BOOL>(a2, a1, 1u, &v14);
  if (v13)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *v10;
  return v11 & 1;
}

unsigned __int8 *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<BOOL>(uint64_t a1, unsigned __int8 a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 16 * a3 + 16);
  if (v5)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      do
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v11 = *v10;
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v10, a2) != *(v11 + 6))
          {
            goto LABEL_14;
          }
        }

        v8 += 8;
        v9 -= 8;
      }

      while (v9);
    }

    v12 = *(v5 + 72);
    if (v12)
    {
      v11 = *v12;
      if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v12, a2) != *(v11 + 6))
      {
LABEL_14:
        v14 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v11 + 3, a2);
        if (v14 == *(v11 + 18))
        {
          return &gss::PropertySetValueHelper<gss::ScenePropertyID,BOOL>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
        }

        else
        {
          return &v11[3][*(v11 + 8) + v14];
        }
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return &gss::defaultValueForKey<gss::ScenePropertyID,BOOL>(gss::ScenePropertyID)::_defaultValue;
}

unsigned __int8 *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<int>(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  v6 = *(a1 + 16 * a3 + 16);
  if (v6)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      do
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v11 = *v10;
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v10, a2) != *(v11 + 6))
          {
            goto LABEL_16;
          }
        }

        v8 += 8;
        v9 -= 8;
      }

      while (v9);
    }

    v12 = *(v6 + 72);
    if (v12)
    {
      v11 = *v12;
      if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v12, a2) != *(v11 + 6))
      {
LABEL_16:
        v14 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v11 + 6, a2);
        if (v14 == *(v11 + 30))
        {
          return &gss::PropertySetValueHelper<gss::ScenePropertyID,int>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
        }

        else
        {
          return &v11[6][4 * v14 + *(v11 + 14)];
        }
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return gss::defaultValueForKey<gss::ScenePropertyID,int>(a2);
}

unsigned __int8 *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<gm::Matrix<float,2,1>>(uint64_t a1, unsigned __int8 a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 16 * a3 + 16);
  if (v5)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      do
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v11 = *v10;
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v10, a2) != *(v11 + 6))
          {
            goto LABEL_14;
          }
        }

        v8 += 8;
        v9 -= 8;
      }

      while (v9);
    }

    v12 = *(v5 + 72);
    if (v12)
    {
      v11 = *v12;
      if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v12, a2) != *(v11 + 6))
      {
LABEL_14:
        v14 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v11 + 9, a2);
        if (v14 == *(v11 + 42))
        {
          return &gss::PropertySetValueHelper<gss::ScenePropertyID,gm::Matrix<float,2,1>>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
        }

        else
        {
          return &v11[9][8 * v14 + *(v11 + 20)];
        }
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return &gss::defaultValueForKey<gss::ScenePropertyID,gm::Matrix<float,2,1>>(gss::ScenePropertyID)::_defaultValue;
}

unsigned __int8 *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<unsigned char>(uint64_t a1, unsigned __int8 a2, unsigned int a3, _BYTE *a4)
{
  v5 = *(a1 + 16 * a3 + 16);
  if (v5)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      do
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v11 = *v10;
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v10, a2) != *(v11 + 6))
          {
            goto LABEL_14;
          }
        }

        v8 += 8;
        v9 -= 8;
      }

      while (v9);
    }

    v12 = *(v5 + 72);
    if (v12)
    {
      v11 = *v12;
      if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v12, a2) != *(v11 + 6))
      {
LABEL_14:
        v14 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v11 + 3, a2);
        if (v14 == *(v11 + 18))
        {
          return &gss::PropertySetValueHelper<gss::ScenePropertyID,unsigned char>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
        }

        else
        {
          return &v11[3][*(v11 + 8) + v14];
        }
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return &gss::defaultValueForKey<gss::ScenePropertyID,unsigned char>(gss::ScenePropertyID)::_defaultValue;
}

unsigned __int8 *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKey<float>(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  v6 = *(a1 + 16 * a3 + 16);
  if (v6)
  {
    v7 = a1 + 16 * a3;
    if (*(v7 + 56))
    {
      v8 = *(v7 + 48);
      v9 = 8 * *(v7 + 56);
      do
      {
        v10 = *(*v8 + 72);
        if (v10)
        {
          v11 = *v10;
          if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v10, a2) != *(v11 + 6))
          {
            goto LABEL_16;
          }
        }

        v8 += 8;
        v9 -= 8;
      }

      while (v9);
    }

    v12 = *(v6 + 72);
    if (v12)
    {
      v11 = *v12;
      if (geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(*v12, a2) != *(v11 + 6))
      {
LABEL_16:
        v14 = geo::intern_linear_map<gss::ScenePropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v11 + 6, a2);
        if (v14 == *(v11 + 30))
        {
          return &gss::PropertySetValueHelper<gss::ScenePropertyID,float>::value(gss::ScenePropertyID,gss::StylePropertySet<gss::ScenePropertyID> const&)::_defaultValue;
        }

        else
        {
          return &v11[6][4 * v14 + *(v11 + 14)];
        }
      }
    }
  }

  if (a4)
  {
    *a4 = 0;
  }

  return gss::defaultValueForKey<gss::ScenePropertyID,float>(a2);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *>,gss::zone_mallocator>>::operator()[abi:nn200100](gss::zone_mallocator *a1, void *a2)
{
  if (a1)
  {
    v3 = a2[10];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a2 + 6));
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a2 + 2));
  }

  else if (!a2)
  {
    return;
  }

  v4 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *>>(v4, a2);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> *>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::StylesheetQuery<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylesheetQuery<gss::ScenePropertyID>,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

uint64_t gss::BaseRenderStyle<gss::ScenePropertyID>::resolveConditionalStyles(uint64_t result, uint64_t a2, unsigned int a3)
{
  v4 = *(result + 16 * a3 + 16);
  if (v4)
  {
    v5 = result + 16 * a3;
    if (*(v4 + 64))
    {
      v7 = *(v4 + 56);
      v8 = &v7[2 * *(v4 + 64)];
      do
      {
        v9 = *v7;
        if (*(*v7 + 136))
        {
          v10 = *(v9 + 128);
          v11 = v10 + 24 * *(*v7 + 136);
          v12 = *(a2 + 12);
          v13 = *a2 + *(a2 + 8);
          while (1)
          {
            result = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a2, *v10);
            if (result == v12)
            {
              break;
            }

            v14 = *(v10 + 16);
            if (result < v12)
            {
              v3 = (v13 + 2 * result);
            }

            if (*(v10 + 16))
            {
              v15 = 4 * v14;
              v16 = *(v10 + 8);
              while (*v16 != *v3)
              {
                ++v16;
                v15 -= 4;
                if (!v15)
                {
                  goto LABEL_22;
                }
              }
            }

            else
            {
              v16 = *(v10 + 8);
            }

            if (v16 == (*(v10 + 8) + 4 * v14))
            {
              break;
            }

            v10 += 24;
            if (v10 == v11)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
LABEL_17:
          v17 = *(v5 + 56);
          if (v17 != 0xFFFF && (*(v5 + 60) & 1) == 0 && v17 >= *(v5 + 58))
          {
            geo::intern_vector<gss::ConditionalStyle<gss::PropertyID> *,unsigned short,std::allocator<gss::ConditionalStyle<gss::PropertyID> *>>::reallocate();
          }

          *(*(v5 + 48) + 8 * v17) = v9;
          *(v5 + 56) = v17 + 1;
        }

LABEL_22:
        v7 += 2;
      }

      while (v7 != v8);
    }

    v18 = *(v5 + 48);
    v19 = *(v5 + 56);
    v20 = (v18 + 8 * *(v5 + 56) - 8);
    if (*(v5 + 56))
    {
      v21 = v20 > v18;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v22 = v18 + 8;
      do
      {
        v23 = *(v22 - 8);
        *(v22 - 8) = *v20;
        *v20-- = v23;
        v24 = v22 >= v20;
        v22 += 8;
      }

      while (!v24);
    }

    if ((*(v5 + 60) & 1) == 0 && v19 != *(v5 + 58))
    {

      geo::intern_vector<gss::ConditionalStyle<gss::PropertyID> *,unsigned short,std::allocator<gss::ConditionalStyle<gss::PropertyID> *>>::reallocate();
    }
  }

  return result;
}

void std::__function::__func<geo::intern_map_allocator<gss::ScenePropertyID,unsigned long long,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::ScenePropertyID,unsigned long long,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::operator()(gss::zone_mallocator *a1, void **a2)
{
  v2 = *a2;
  v3 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v2);
}

void std::__function::__func<geo::intern_map_allocator<gss::ScenePropertyID,unsigned int,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::ScenePropertyID,unsigned int,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::operator()(gss::zone_mallocator *a1, void **a2)
{
  v2 = *a2;
  v3 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v2);
}

void std::__function::__func<geo::intern_map_allocator<gss::ScenePropertyID,unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1},std::allocator<geo::intern_map_allocator<gss::ScenePropertyID,unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::allocate(unsigned long,unsigned int &)::{lambda(unsigned char *)#1}>,void ()(unsigned char *)>::operator()(gss::zone_mallocator *a1, void **a2)
{
  v2 = *a2;
  v3 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v2);
}

void geo::intern_vector<gss::StylePropertySet<gss::ScenePropertyID>,unsigned short,geo::allocator_adapter<gss::StylePropertySet<gss::ScenePropertyID>,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  if ((*(a1 + 12) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      geo::intern_vector<gss::StylePropertySet<gss::PropertyID>,unsigned short,geo::allocator_adapter<gss::StylePropertySet<gss::PropertyID>,gss::zone_mallocator>>::runDestructors(v2, v2 + 120 * *(a1 + 8));
      v3 = *a1;
      v5 = gss::zone_mallocator::instance(v4);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v3)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v3);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(a1 + 5) = 0;
  *a1 = 0;
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,gss::zone_mallocator>>>(uint64_t a1, void *a2)
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

void std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,gss::zone_mallocator>>::__on_zero_shared_weak(gss::zone_mallocator *a1)
{
  v2 = gss::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,gss::zone_mallocator>>>(v2, a1);
}

void std::__shared_ptr_emplace<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,geo::allocator_adapter<gss::CartoStyle<gss::ScenePropertyID>::ResolvedStyle,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A30C98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void gss::Queryable<gss::ScenePropertyID>::~Queryable(uint64_t a1)
{
  gss::Queryable<gss::ScenePropertyID>::~Queryable(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *>>(uint64_t a1, void *a2)
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

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleSheetResultCacheKey,std::shared_ptr<gss::CartoStyle<gss::ScenePropertyID>>>,void *> *> *>(uint64_t a1, void *a2)
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

void gss::StylesheetQuery<gss::ScenePropertyID>::~StylesheetQuery(void *a1)
{
  *a1 = &unk_1F2A30BE8;
  v2 = a1[40];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[38];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((a1 + 34));
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((a1 + 30));
  gss::Queryable<gss::ScenePropertyID>::~Queryable(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<gss::StylesheetQuery<gss::ScenePropertyID>,geo::allocator_adapter<gss::StylesheetQuery<gss::ScenePropertyID>,gss::zone_mallocator>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A30BB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1[1]);
    std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

BOOL md::DataOverrideManager::getColorOverrideForAttributes(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v31 = -1;
  v30 = -1;
  v29 = -1;
  v28 = -1;
  v27 = -1;
  gss::FeatureAttributeSet::getValueForAttributeKey(*a2, a2[1], 50, &v31);
  gss::FeatureAttributeSet::getValueForAttributeKey(*a2, a2[1], 49, &v30);
  gss::FeatureAttributeSet::getValueForAttributeKey(*a2, a2[1], 37, &v29);
  gss::FeatureAttributeSet::getValueForAttributeKey(*a2, a2[1], 4, &v28);
  gss::FeatureAttributeSet::getValueForAttributeKey(*a2, a2[1], 53, &v27);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (*a1 == v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = v29;
  v10 = v31;
  v11 = v28;
  v12 = v27;
  v13 = v30;
  do
  {
    v14 = *v6;
    if (*v6 == -1 || v14 == v9)
    {
      v16 = v6[1];
      if (v16 == -1 || v16 == v13)
      {
        v18 = v6[2];
        if (v18 == -1 || v18 == v10)
        {
          v20 = v6[3];
          if (v20 == -1 || v20 == v11)
          {
            v22 = v6[4];
            if ((v22 == -1 || v22 == v12) && (v14 & v16 & v18 & v20 & v22) != 0xFFFFFFFFFFFFFFFFLL)
            {
              v23 = (16 * (v18 != -1)) | (8 * (v22 != -1)) | (4 * (v16 != -1)) | (2 * (v14 != -1));
              if (v20 != -1)
              {
                ++v23;
              }

              if (v23 > v8)
              {
                v24 = a3;
                for (i = 10; i != 14; ++i)
                {
                  *v24++ = *(v6 + i);
                }

                v8 = v23;
              }
            }
          }
        }
      }
    }

    v6 += 9;
  }

  while (v6 != v7);
  return v8 != 0;
}

uint64_t std::__format_spec::__parser<char>::__parse[abi:nn200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, char a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return v4;
  }

  v5 = *v4;
  if (v5 == 125)
  {
    return v4;
  }

  v26[0] = *a2;
  v26[1] = v3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:nn200100](v26) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:nn200100]("The format specifier contains malformed Unicode characters");
    goto LABEL_105;
  }

  v9 = v26[0];
  if (v26[0] >= v3)
  {
    goto LABEL_9;
  }

  v10 = *v26[0];
  switch(v10)
  {
    case '<':
      v11 = 1;
LABEL_18:
      *a1 = *a1 & 0xF8 | v11;
      v13 = v9 - v4;
      if (v9 - v4 == 1)
      {
        if (*v4 != 123)
        {
          goto LABEL_22;
        }

        std::__throw_format_error[abi:nn200100]("The fill option contains an invalid value");
      }

      if (v9 == v4)
      {
LABEL_23:
        v4 += v13;
        goto LABEL_24;
      }

LABEL_22:
      memmove((a1 + 12), v4, v13);
      goto LABEL_23;
    case '>':
      v11 = 3;
      goto LABEL_18;
    case '^':
      v11 = 2;
      goto LABEL_18;
  }

LABEL_9:
  switch(v5)
  {
    case '<':
      v12 = 1;
      break;
    case '>':
      v12 = 3;
      break;
    case '^':
      v12 = 2;
      break;
    default:
      goto LABEL_25;
  }

  *a1 = *a1 & 0xF8 | v12;
LABEL_24:
  if (++v4 == v3)
  {
    return v4;
  }

LABEL_25:
  if (a3)
  {
    v14 = *v4;
    switch(v14)
    {
      case ' ':
        v15 = *a1 | 0x18;
        break;
      case '+':
        v15 = *a1 & 0xE7 | 0x10;
        break;
      case '-':
        v15 = *a1 & 0xE7 | 8;
        break;
      default:
        goto LABEL_33;
    }

    *a1 = v15;
    if (++v4 == v3)
    {
      return v4;
    }
  }

LABEL_33:
  if ((a3 & 2) != 0 && *v4 == 35)
  {
    *a1 |= 0x20u;
    if (++v4 == v3)
    {
      return v4;
    }
  }

  if ((a3 & 4) != 0)
  {
    v16 = *v4;
    if (v16 != 48)
    {
      goto LABEL_42;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    if (++v4 == v3)
    {
      return v4;
    }
  }

  v16 = *v4;
LABEL_42:
  if (v16 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(v4 + 1, v3, a2);
    *(a1 + 2) |= 0x4000u;
    goto LABEL_47;
  }

  if (v16 == 48)
  {
LABEL_105:
    std::__throw_format_error[abi:nn200100]("The width option should not have a leading zero");
LABEL_106:
    std::__throw_format_error[abi:nn200100]("The format specifier should consume the input or end with a '}'");
    goto LABEL_107;
  }

  if ((v16 - 58) < 0xFFFFFFF6)
  {
    goto LABEL_48;
  }

  v4 = std::__format::__parse_number[abi:nn200100]<char const*>(v4, v3);
LABEL_47:
  *(a1 + 4) = v17;
  if (v3 == v4)
  {
    return v4;
  }

LABEL_48:
  if ((a3 & 8) == 0 || *v4 != 46)
  {
LABEL_56:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_59;
    }

    v22 = *v4;
    if (v22 != 76)
    {
      goto LABEL_60;
    }

    *a1 |= 0x40u;
    if (++v4 != v3)
    {
LABEL_59:
      v22 = *v4;
LABEL_60:
      if (v22 > 98)
      {
        if (v22 <= 102)
        {
          if (v22 > 100)
          {
            if (v22 == 101)
            {
              v23 = 13;
            }

            else
            {
              v23 = 15;
            }
          }

          else if (v22 == 99)
          {
            v23 = 10;
          }

          else
          {
            v23 = 5;
          }

          goto LABEL_100;
        }

        if (v22 <= 111)
        {
          if (v22 == 103)
          {
            v23 = 17;
            goto LABEL_100;
          }

          if (v22 == 111)
          {
            v23 = 4;
            goto LABEL_100;
          }
        }

        else
        {
          switch(v22)
          {
            case 'p':
              v23 = 8;
              goto LABEL_100;
            case 's':
              v23 = 1;
              goto LABEL_100;
            case 'x':
              v23 = 6;
              goto LABEL_100;
          }
        }
      }

      else if (v22 <= 70)
      {
        if (v22 > 68)
        {
          if (v22 == 69)
          {
            v23 = 14;
          }

          else
          {
            v23 = 16;
          }

          goto LABEL_100;
        }

        if (v22 == 65)
        {
          v23 = 12;
          goto LABEL_100;
        }

        if (v22 == 66)
        {
          v23 = 3;
          goto LABEL_100;
        }
      }

      else if (v22 <= 87)
      {
        if (v22 == 71)
        {
          v23 = 18;
          goto LABEL_100;
        }

        if (v22 == 80)
        {
          v23 = 9;
          goto LABEL_100;
        }
      }

      else
      {
        switch(v22)
        {
          case 'X':
            v23 = 7;
            goto LABEL_100;
          case 'a':
            v23 = 11;
            goto LABEL_100;
          case 'b':
            v23 = 2;
LABEL_100:
            *(a1 + 1) = v23;
            ++v4;
            break;
        }
      }

      if (v4 == v3 || *v4 == 125)
      {
        return v4;
      }

      goto LABEL_106;
    }

    return v4;
  }

  v18 = v4 + 1;
  if (v4 + 1 == v3)
  {
LABEL_107:
    std::__throw_format_error[abi:nn200100]("End of input while parsing format specifier precision");
    goto LABEL_108;
  }

  v19 = *v18;
  if (v19 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:nn200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, v3, a2);
    *(a1 + 2) |= 0x8000u;
    *(a1 + 8) = v20;
    goto LABEL_55;
  }

  if ((v19 - 58) > 0xFFFFFFF5)
  {
    v4 = std::__format::__parse_number[abi:nn200100]<char const*>(v18, v3);
    *(a1 + 8) = v21;
    *(a1 + 2) &= ~0x8000u;
LABEL_55:
    if (v3 == v4)
    {
      return v4;
    }

    goto LABEL_56;
  }

LABEL_108:
  v25 = std::__throw_format_error[abi:nn200100]("The precision option does not contain a value or an argument index");
  return std::__format_spec::__process_parsed_integer[abi:nn200100]<char>(v25);
}