void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IntendedStandardPassSceneDepth>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IntendedStandardPassSceneDepth>();
    unk_1EB83BCB0 = 0xE7D1C5E790E8E07;
    qword_1EB83BCB8 = "md::ls::IntendedStandardPassSceneDepth]";
    qword_1EB83BCC0 = 38;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedStandardPassSceneDepth,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53020;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IntendedStandardPassSceneDepth,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53020;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17UseIdentityMatrixEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UseIdentityMatrix>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseIdentityMatrix>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UseIdentityMatrix,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53AA8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UseIdentityMatrix,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A53AA8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls35PositionScaleInfoConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 16 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 16 * (v13 & 0x3F);
        v18 = *v17;
        LOBYTE(v15) = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v15;
        *v16 = v18;
        *(v16 + 8) = BYTE8(v18);
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PositionScaleInfoConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50770;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50790;
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

void ecs2::storage<ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50770;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PositionScaleInfoConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls38StyleGroundOcclusionConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleGroundOcclusionConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleGroundOcclusionConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A56200;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A56220;
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

void ecs2::storage<ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A56200;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleGroundOcclusionConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19MaterialSpecularityEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialSpecularity>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialSpecularity>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::MaterialSpecularity>(v3);
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
        v20 = *(v19 + 4 * v18);
        *(v19 + 4 * v18) = *(v17 + 4 * v15);
        *(v17 + 4 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialSpecularity>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::MaterialSpecularity>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialSpecularity,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F9610;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::MaterialSpecularity,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::MaterialSpecularity,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F29F9630;
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

void ecs2::storage<ecs2::Entity,md::ls::MaterialSpecularity,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::MaterialSpecularity,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::MaterialSpecularity,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F29F9610;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::MaterialSpecularity,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15HasOverlayPatchEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>(void)::metadata;
  HasOverlay = ecs2::BasicRegistry<void>::storage<md::ls::HasOverlayPatch>(v3);
  v6 = v2 >> 22;
  v7 = HasOverlay[1];
  if (v2 >> 22 < (HasOverlay[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = HasOverlay;
        v11 = HasOverlay[31];
        v12 = HasOverlay[32];
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasOverlayPatch>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasOverlayPatch>();
    unk_1EB83D6C0 = 0xE40027D1222182B5;
    qword_1EB83D6C8 = "md::ls::HasOverlayPatch]";
    qword_1EB83D6D0 = 23;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasOverlayPatch,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42708;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::HasOverlayPatch,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::HasOverlayPatch,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A42728;
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

void ecs2::storage<ecs2::Entity,md::ls::HasOverlayPatch,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::HasOverlayPatch,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasOverlayPatch,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42708;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::HasOverlayPatch,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10IsElevatedEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsElevated>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsElevated>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsElevated,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F680;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsElevated,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F680;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSSAO>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSSAO>>,void ()(ecs2::Runtime &)>::operator()(void *a1, void ***a2)
{
  v22 = *MEMORY[0x1E69E9840];
  a1[1] = a2;
  v3 = (a1 + 1);
  v4 = a1[3];
  if (!v4)
  {
    v4 = ecs2::RuntimeTaskContext::service<md::LayoutContextProvider>(**a2, (*a2)[1]);
    a1[3] = v4;
  }

  v5 = (**v4)(v4);
  v6 = md::LayoutContext::get<md::LightingLogicContext>(*(v5 + 8));
  if (v6)
  {
    v7 = *(v6 + 259);
  }

  else
  {
    v7 = 0;
  }

  v21 = v7 & 1;
  v8 = a1[4];
  if (!v8)
  {
    v9 = **v3;
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v10 == v11)
    {
      goto LABEL_10;
    }

    while (*v10 != 0xD369A4D92C8FFE6CLL)
    {
      v10 += 5;
      if (v10 == v11)
      {
        goto LABEL_10;
      }
    }

    if (v10 == v11)
    {
LABEL_10:
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

    a1[4] = v8;
  }

  v13 = *((*(*v8 + 16))(v8) + 24);
  v14 = a1[2];
  if (!v14)
  {
    v15 = **v3;
    v16 = *v15;
    v17 = *(v15 + 8);
    if (v16 == v17)
    {
      goto LABEL_19;
    }

    while (*v16 != 0x41D4E9297E100630)
    {
      v16 += 5;
      if (v16 == v17)
      {
        goto LABEL_19;
      }
    }

    if (v16 == v17)
    {
LABEL_19:
      v14 = 0;
    }

    else
    {
      v14 = v16[3];
      v18 = v16[4];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v18);
      }
    }

    a1[2] = v14;
  }

  v20 = v14;
  v19 = md::FrameGraph::renderQueueForPass(*(v13 + 8), 3) != 0;
  operator new();
}

void sub_1B2D9B22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSSAO>,std::allocator<ecs2::ForwardToExecute<md::ita::PrepareFunctionConstantDescriptorSSAO>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F9340;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17AssociationHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationHandle>(v3);
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
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 24 * (v13 & 0x3F);
        v18 = *(v17 + 16);
        v19 = *v17;
        v20 = *(v16 + 16);
        *v17 = *v16;
        *(v17 + 16) = v20;
        *v16 = v19;
        *(v16 + 16) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::AssociationHandle>();
    unk_1EB83D350 = 0x523816724122CCE2;
    qword_1EB83D358 = "md::ls::AssociationHandle]";
    qword_1EB83D360 = 25;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AssociationHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50430;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::AssociationHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::AssociationHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50450;
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

void ecs2::storage<ecs2::Entity,md::ls::AssociationHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::AssociationHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::AssociationHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50430;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::AssociationHandle,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::PerformVisibilityTestOnRenderItem>,std::allocator<ecs2::ForwardToExecute<md::ita::PerformVisibilityTestOnRenderItem>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F9190;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

char *ecs2::Runtime::_entities<md::ita::CreateDepthPeeledRenderItems,md::ls::SliceAssignmentT<(md::SliceType)7> const&,md::ls::RenderableMeshVertexFormat const&,md::ls::TileType const&,md::ls::RequiresDepthPeel const&,md::ls::MeshLayerTypeV const&,md::ls::IntendedSceneLayer const&,md::ls::PendingProcessing const&,md::ls::AssociationHandle *,md::ls::PrepassConstantDataHandle const*,md::ls::ShadowConstantDataHandle const*,md::ls::PreserveHeight const*,md::ls::HasMeshHandle const*,md::ls::PositionScaleInfoConstantDataHandle const*,md::ls::ViewConstantDataHandle const*,md::ls::TransformConstantDataHandle const*,md::ls::IndexRange const*,md::ls::NormalsHandle const*,md::ls::InstanceTransformHandle const*,md::ls::UVsHandle const*,md::ls::NeedsZBias const*,md::ls::ClippingConstantDataHandle const*,md::ls::IsMercator const*,md::ls::ElevationHandle const*,md::ls::SharedUniqueID const*>(uint64_t a1, uint64_t **a2)
{
  v92[4] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)7>>(v3);
  v59 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshVertexFormat>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TileType>(v3);
  v56 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresDepthPeel>(v3);
  v54 = ecs2::BasicRegistry<void>::storage<md::ls::MeshLayerTypeV>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayer>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessing>(v3);
  v65 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationHandle>(v3);
  v64 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassConstantDataHandle>(v3);
  v63 = ecs2::BasicRegistry<void>::storage<md::ls::ShadowConstantDataHandle>(v3);
  v61 = ecs2::BasicRegistry<void>::storage<md::ls::PreserveHeight>(v3);
  HasMesh = ecs2::BasicRegistry<void>::storage<md::ls::HasMeshHandle>(v3);
  v58 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(v3);
  v57 = ecs2::BasicRegistry<void>::storage<md::ls::ViewConstantDataHandle>(v3);
  v55 = ecs2::BasicRegistry<void>::storage<md::ls::TransformConstantDataHandle>(v3);
  v53 = ecs2::BasicRegistry<void>::storage<md::ls::IndexRange>(v3);
  v52 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(v3);
  v51 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(v3);
  v50 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsZBias>(v3);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::ClippingConstantDataHandle>(v3);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(v3);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(v3);
  v12 = ecs2::BasicRegistry<void>::storage<md::ls::SharedUniqueID>(v3);
  *buf = v4;
  *&buf[8] = v59;
  *&buf[16] = v5;
  *&buf[24] = v56;
  *&v80 = v54;
  *(&v80 + 1) = v6;
  v13 = buf;
  v14 = 8;
  v15 = v4;
  *&v81 = v7;
  do
  {
    if (*(*&buf[v14] + 40) - *(*&buf[v14] + 32) < *(v15 + 40) - *(v15 + 32))
    {
      v15 = *&buf[v14];
      v13 = &buf[v14];
    }

    v14 += 8;
  }

  while (v14 != 56);
  v16 = *v13;
  v18 = *(v16 + 32);
  v17 = *(v16 + 40);
  *buf = v18;
  *&buf[8] = v17;
  *&buf[16] = v4;
  *&buf[24] = v59;
  *&v80 = v5;
  *(&v80 + 1) = v56;
  *&v81 = v54;
  *(&v81 + 1) = v6;
  *&v82 = v7;
  *(&v82 + 1) = v65;
  *&v83 = v64;
  *(&v83 + 1) = v63;
  *&v84 = v61;
  *(&v84 + 1) = HasMesh;
  *&v85 = v58;
  *(&v85 + 1) = v57;
  *&v86 = v55;
  *(&v86 + 1) = v53;
  *&v87 = v52;
  *(&v87 + 1) = v51;
  *&v88 = v50;
  *(&v88 + 1) = v8;
  *&v89 = v9;
  *(&v89 + 1) = v10;
  *&v90 = v11;
  *(&v90 + 1) = v12;
  v62 = v17;
  while (v18 != v17 && !_ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16MeshRenderableIDERKNS4_16SliceAssignmentTILNS3_9SliceTypeE7EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_17PendingProcessingERKNS4_14MeshLayerTypeVERKNS4_18IntendedSceneLayerEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleEPKNS4_26SharedMaterialZIndexHandleEPNS4_17AssociationHandleEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_31StyleRouteLineMaskDataKeyHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS2C_INS2D_10TexTextureEEEPKNS2C_INS2D_15EmissiveTextureEEEPKNS2C_INS2D_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_40FlyoverCommonTransformConstantDataHandleEPKNS4_30FlyoverCommonS2TransformHandleEPKNS4_28FlyoverCommonTexcoordsHandleEPKNS4_27FlyoverCommonMaterialHandleEPKNS4_29FlyoverClipConstantDataHandleEPKNS2C_IN7Flyover14DiffuseTextureEEEPKNS2C_INS3U_12NightTextureEEEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(buf, *v18, v18[1]))
  {
    v18 += 2;
    *buf = v18;
    v17 = v62;
  }

  v73 = v88;
  v74 = v89;
  v75 = v90;
  v76 = v91;
  v69 = v84;
  v70 = v85;
  v71 = v86;
  v72 = v87;
  v66[2] = v80;
  v66[3] = v81;
  v67 = v82;
  v68 = v83;
  v66[0] = *buf;
  v66[1] = *&buf[16];
  v19 = *buf;
  if (*buf == v62)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v22 = 0;
  }

  else
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v22 = 0;
    v49 = *(&v67 + 1);
    v47 = v20;
    v48 = v21;
    do
    {
      v23 = v19[1];
      v24 = v23 >> 6;
      v25 = v23 & 0x3F;
      v26 = v49[1];
      if (v24 < (v49[2] - v26) >> 3 && (v27 = *(v26 + 8 * v24)) != 0 && *(v27 + 4 * v25) == *v19)
      {
        v28 = *(v27 + 4 * v25 + 2);
        v29 = (*(v49[7] + ((v28 >> 3) & 0x1FF8)) + 24 * (v28 & 0x3F));
      }

      else
      {
        v29 = 0;
      }

      *(v21 + 104 * *v20 + 24) = *v19;
      v30 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a2);
      if (!v30[1782])
      {
        v92[0] = v30[1774] + 2136;
        *buf = v92;
        v30[1782] = md::add2((v30 + 97), buf, 1);
      }

      Entity = ecs2::ExecutionTaskContext::createEntity((*a2)[1]);
      if (v29)
      {
        createRenderItemForEntity(&v77, Entity, v30, v29);
        v32 = v78;
        if (v78 != 1)
        {
          ecs2::addComponent<md::ls::PendingRenderItemSetup>(*a2, Entity);
          if (!v32)
          {
            *buf = v77;
            *&buf[16] = 91;
            ecs2::addComponent<md::ls::RenderItemID>(*a2, Entity, buf);
          }

          std::__throw_bad_variant_access[abi:nn200100]();
        }
      }

      else
      {
        LOBYTE(v77) = 2;
      }

      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v33 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = "";
        if (v77 <= 2uLL)
        {
          v34 = off_1E7B3D650[v77];
        }

        *buf = 136315906;
        *&buf[4] = v34;
        *&buf[12] = 2080;
        *&buf[14] = "false";
        *&buf[22] = 2080;
        *&buf[24] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CreateRenderItems.mm";
        LOWORD(v80) = 1024;
        *(&v80 + 2) = 432;
        _os_log_impl(&dword_1B2754000, v33, OS_LOG_TYPE_ERROR, "Failed to create depth peeled render item (%s): Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x26u);
      }

      ecs2::ExecutionTaskContext::destroyEntity(*a2, Entity);
      ++v22;
      v35 = *(&v66[0] + 1);
      v36 = v19 + 2;
      while (1)
      {
        v19 = v36;
        *&v66[0] = v36;
        if (v36 == v35)
        {
          break;
        }

        IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE = _ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16MeshRenderableIDERKNS4_16SliceAssignmentTILNS3_9SliceTypeE7EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_17PendingProcessingERKNS4_14MeshLayerTypeVERKNS4_18IntendedSceneLayerEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleEPKNS4_26SharedMaterialZIndexHandleEPNS4_17AssociationHandleEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_31StyleRouteLineMaskDataKeyHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS2C_INS2D_10TexTextureEEEPKNS2C_INS2D_15EmissiveTextureEEEPKNS2C_INS2D_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_40FlyoverCommonTransformConstantDataHandleEPKNS4_30FlyoverCommonS2TransformHandleEPKNS4_28FlyoverCommonTexcoordsHandleEPKNS4_27FlyoverCommonMaterialHandleEPKNS4_29FlyoverClipConstantDataHandleEPKNS2C_IN7Flyover14DiffuseTextureEEEPKNS2C_INS3U_12NightTextureEEEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(v66, *v36, v36[1]);
        v36 = v19 + 2;
        if (IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_15FlyoverInstanceEPKNS4_12CustomZIndexEPKNS4_14RenderableHashEPKNS4_21PredefinedRenderStateEEEENS2_IJEEEEE11containsAllIJS6_SB_SE_SH_SK_SN_SQ_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE)
        {
          v35 = v19;
          break;
        }
      }

      v20 = v47;
      v21 = v48;
    }

    while (v35 != v62);
    v38 = *(a1 + 8);
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
    result = v47;
    v40 = v48;
    *(v38 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata) = *(v38 + 4096);
  }

  *(v40 + 104 * *result + 24) = -65536;
  v41 = v40 + 104 * *result;
  v42 = *(v41 + 92);
  *(v41 + 92) = v42 + 1;
  *(v41 + 4 * v42 + 28) = v22;
  v43 = v40 + 104 * *result;
  v45 = *(v43 + 92);
  v44 = (v43 + 92);
  if (v45 >= 0x10)
  {
    *v44 = 0;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14SharedUniqueIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedUniqueID>(v3);
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
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedUniqueID>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedUniqueID>();
    *algn_1EB83D7B8 = 0x7931433C9A6EB2C6;
    qword_1EB83D7C0 = "md::ls::SharedUniqueID]";
    qword_1EB83D7C8 = 22;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedUniqueID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51CC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedUniqueID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedUniqueID,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51CE0;
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

void ecs2::storage<ecs2::Entity,md::ls::SharedUniqueID,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedUniqueID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedUniqueID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51CC0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedUniqueID,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls15ElevationHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ElevationHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ElevationHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A512D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ElevationHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ElevationHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A512F0;
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

void ecs2::storage<ecs2::Entity,md::ls::ElevationHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ElevationHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ElevationHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A512D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ElevationHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26ClippingConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ClippingConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ClippingConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ClippingConstantDataHandle>();
    *algn_1EB83C6B8 = 0x9292F9031FE6DB5;
    qword_1EB83C6C0 = "md::ls::ClippingConstantDataHandle]";
    qword_1EB83C6C8 = 34;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ClippingConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51B20;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ClippingConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ClippingConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51B40;
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

void ecs2::storage<ecs2::Entity,md::ls::ClippingConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ClippingConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ClippingConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51B20;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ClippingConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls9UVsHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UVsHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UVsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51200;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UVsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UVsHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51220;
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

void ecs2::storage<ecs2::Entity,md::ls::UVsHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UVsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UVsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51200;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UVsHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23InstanceTransformHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::InstanceTransformHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::InstanceTransformHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51130;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::InstanceTransformHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::InstanceTransformHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51150;
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

void ecs2::storage<ecs2::Entity,md::ls::InstanceTransformHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::InstanceTransformHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::InstanceTransformHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51130;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::InstanceTransformHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13NormalsHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::NormalsHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NormalsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51060;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::NormalsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::NormalsHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51080;
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

void ecs2::storage<ecs2::Entity,md::ls::NormalsHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::NormalsHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::NormalsHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51060;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::NormalsHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls27TransformConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TransformConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TransformConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TransformConstantDataHandle>();
    *algn_1EB83C3D8 = 0x74DC502726E97929;
    qword_1EB83C3E0 = "md::ls::TransformConstantDataHandle]";
    qword_1EB83C3E8 = 35;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TransformConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A509E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TransformConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TransformConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50A00;
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

void ecs2::storage<ecs2::Entity,md::ls::TransformConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TransformConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TransformConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A509E0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TransformConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22ViewConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ViewConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ViewConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ViewConstantDataHandle>();
    unk_1EB83CA90 = 0xCFE242268B958ADALL;
    qword_1EB83CA98 = "md::ls::ViewConstantDataHandle]";
    qword_1EB83CAA0 = 30;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ViewConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50910;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ViewConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ViewConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50930;
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

void ecs2::storage<ecs2::Entity,md::ls::ViewConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ViewConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ViewConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50910;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ViewConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls24ShadowConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ShadowConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::ShadowConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::ShadowConstantDataHandle>();
    *algn_1EB83C788 = 0xEAA0B82FC49F7277;
    qword_1EB83C790 = "md::ls::ShadowConstantDataHandle]";
    qword_1EB83C798 = 32;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ShadowConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52820;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::ShadowConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::ShadowConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52840;
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

void ecs2::storage<ecs2::Entity,md::ls::ShadowConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::ShadowConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::ShadowConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52820;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::ShadowConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls25PrepassConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PrepassConstantDataHandle>();
    unk_1EB83C700 = 0x1EBB3E0519E8FF9DLL;
    qword_1EB83C708 = "md::ls::PrepassConstantDataHandle]";
    qword_1EB83C710 = 33;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PrepassConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A528F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PrepassConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PrepassConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52910;
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

void ecs2::storage<ecs2::Entity,md::ls::PrepassConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PrepassConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PrepassConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A528F0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PrepassConstantDataHandle,64ul>::~storage(a1);
}

void ecs2::BasicRegistry<void>::remove<md::ls::PendingProcessing>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessing>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      if (*(v8 + 4 * ((a2 >> 16) & 0x3F)) == a2)
      {
        v9 = v5;
        v10 = v5[25];
        for (i = v5[26]; v10 != i; v10 += 32)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v10 + 24), a2);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v9, a2, WORD1(a2));
      }
    }
  }

  v12 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v12 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessing>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingProcessing>();
    unk_1EB83D270 = 0x75DBD6381F1903FFLL;
    qword_1EB83D278 = "md::ls::PendingProcessing]";
    qword_1EB83D280 = 25;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A419B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingProcessing,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A419B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls17RequiresDepthPeelEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresDepthPeel>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresDepthPeel>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresDepthPeel,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A028;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresDepthPeel,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1A028;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26RenderableMeshVertexFormatEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshVertexFormat>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableMeshVertexFormat>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableMeshVertexFormat>();
    *algn_1EB83C648 = 0xE8C803AC798645E1;
    qword_1EB83C650 = "md::ls::RenderableMeshVertexFormat]";
    qword_1EB83C658 = 34;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableMeshVertexFormat,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41EE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderableMeshVertexFormat,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderableMeshVertexFormat,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A41F08;
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

void ecs2::storage<ecs2::Entity,md::ls::RenderableMeshVertexFormat,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderableMeshVertexFormat,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableMeshVertexFormat,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41EE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderableMeshVertexFormat,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateDepthPeeledRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateDepthPeeledRenderItems>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8F08;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateTileClearRenderItemsForShadowPass>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateTileClearRenderItemsForShadowPass>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8E30;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateTileClearRenderItemsForDepthPrePass>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateTileClearRenderItemsForDepthPrePass>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8D58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void gdc::typelist_as_vector<std::tuple<md::ls::SliceAssignmentT<(md::SliceType)2>,md::ls::RenderableMeshVertexFormat,md::ls::TileType,md::ls::IntendedSceneLayer,md::ls::MeshLayerTypeV,md::ls::HasMeshHandle,md::ls::PositionScaleInfoConstantDataHandle,md::ls::ViewConstantDataHandle,md::ls::TransformConstantDataHandle,md::ls::StyleDataKeyHandle,md::ls::StyleSSAODataKeyHandle,md::ls::StyleEmissiveDataKeyHandle,md::ls::ColorCorrectionDataKeyHandle,md::ls::StyleCameraConstantDataHandle,md::ls::ColorDataHandle,md::ls::IndexRange,md::ls::StyleGroundOcclusionConstantDataHandle,md::ls::PendingProcessing,md::ls::NormalsHandle,md::ls::InstanceTransformHandle,md::ls::UVsHandle,md::ls::ElevationHandle,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,md::ls::LandCoverSettingsConstantDataHandle,md::ls::ShadowConstantDataHandle,md::ls::PrepassConstantDataHandle,md::ls::ClippingConstantDataHandle,md::ls::PlanarParametersCacheKeyHandle,md::ls::TextureHandleForType<DaVinci::TexTexture>,md::ls::TextureHandleForType<DaVinci::EmissiveTexture>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,md::ls::BlendRasterConstantDataHandle,md::ls::RasterOverlayConstantDataHandle,md::ls::HasStyleAttributeRasterSet,md::ls::HasMaterialRaster,md::ls::NeedsClimateTint,md::ls::CustomRenderState,md::ls::ColorRampDataHandle,md::ls::SharedUniqueID,md::ls::IsOpaque,md::ls::IsTransparent,md::ls::NeedsZBias,md::ls::PreserveHeight,md::ls::InstanceCount,md::ls::IsDecal,md::ls::IsMaterial,md::ls::TriPlanar,md::ls::IsMercator,md::ls::SupportsStylizedShading,md::ls::SupportsSteepnessDarkening,md::ls::RenderableHash>>(const void **a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<gdc::TypeInfo>::reserve(a1, 0x33uLL);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
    v6 = v5 + 1;
    if (v5 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v8);
    }

    v9 = 24 * v5;
    *v9 = 0xF5773E2F171FA967;
    *(v9 + 8) = "md::ls::SliceAssignmentT<md::SliceType::CulledUnflattenedMain>]";
    *(v9 + 16) = 62;
    v4 = (24 * v5 + 24);
    v10 = a1[1] - *a1;
    v11 = 24 * v5 - v10;
    memcpy((v9 - v10), *a1, v10);
    v12 = *a1;
    *a1 = v11;
    a1[1] = v4;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v2 = 0xF5773E2F171FA967;
    v2[1] = "md::ls::SliceAssignmentT<md::SliceType::CulledUnflattenedMain>]";
    v2[2] = 62;
    v4 = v2 + 3;
  }

  a1[1] = v4;
  v13 = a1[2];
  if (v4 >= v13)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
    v17 = 2 * v16;
    if (2 * v16 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x555555555555555)
    {
      v18 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v18);
    }

    v19 = (8 * ((v4 - *a1) >> 3));
    *v19 = 0xE8C803AC798645E1;
    v19[1] = "md::ls::RenderableMeshVertexFormat]";
    v19[2] = 34;
    v14 = (24 * v15 + 24);
    v20 = a1[1] - *a1;
    v21 = 24 * v15 - v20;
    memcpy(v19 - v20, *a1, v20);
    v22 = *a1;
    *a1 = v21;
    a1[1] = v14;
    a1[2] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v4 = 0xE8C803AC798645E1;
    v4[1] = "md::ls::RenderableMeshVertexFormat]";
    v4[2] = 34;
    v14 = v4 + 3;
  }

  a1[1] = v14;
  v23 = a1[2];
  if (v14 >= v23)
  {
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *a1) >> 3);
    if (v25 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a1) >> 3);
    v27 = 2 * v26;
    if (2 * v26 <= v25 + 1)
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x555555555555555)
    {
      v28 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v28);
    }

    v29 = (8 * ((v14 - *a1) >> 3));
    *v29 = 0x751B872B282C3971;
    v29[1] = "md::ls::TileType]";
    v29[2] = 16;
    v24 = (24 * v25 + 24);
    v30 = a1[1] - *a1;
    v31 = 24 * v25 - v30;
    memcpy(v29 - v30, *a1, v30);
    v32 = *a1;
    *a1 = v31;
    a1[1] = v24;
    a1[2] = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *v14 = 0x751B872B282C3971;
    v14[1] = "md::ls::TileType]";
    v14[2] = 16;
    v24 = v14 + 3;
  }

  a1[1] = v24;
  v33 = a1[2];
  if (v24 >= v33)
  {
    v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a1) >> 3);
    if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a1) >> 3);
    v37 = 2 * v36;
    if (2 * v36 <= v35 + 1)
    {
      v37 = v35 + 1;
    }

    if (v36 >= 0x555555555555555)
    {
      v38 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v38 = v37;
    }

    if (v38)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v38);
    }

    v39 = (8 * ((v24 - *a1) >> 3));
    *v39 = 0xEC2A00DC914732D7;
    v39[1] = "md::ls::IntendedSceneLayer]";
    v39[2] = 26;
    v34 = (24 * v35 + 24);
    v40 = a1[1] - *a1;
    v41 = 24 * v35 - v40;
    memcpy(v39 - v40, *a1, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v34;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }
  }

  else
  {
    *v24 = 0xEC2A00DC914732D7;
    v24[1] = "md::ls::IntendedSceneLayer]";
    v24[2] = 26;
    v34 = v24 + 3;
  }

  a1[1] = v34;
  v43 = a1[2];
  if (v34 >= v43)
  {
    v45 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *a1) >> 3);
    if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v46 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *a1) >> 3);
    v47 = 2 * v46;
    if (2 * v46 <= v45 + 1)
    {
      v47 = v45 + 1;
    }

    if (v46 >= 0x555555555555555)
    {
      v48 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v48 = v47;
    }

    if (v48)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v48);
    }

    v49 = (8 * ((v34 - *a1) >> 3));
    *v49 = 0xECC498AF223943D5;
    v49[1] = "md::ls::MeshLayerTypeV]";
    v49[2] = 22;
    v44 = (24 * v45 + 24);
    v50 = a1[1] - *a1;
    v51 = 24 * v45 - v50;
    memcpy(v49 - v50, *a1, v50);
    v52 = *a1;
    *a1 = v51;
    a1[1] = v44;
    a1[2] = 0;
    if (v52)
    {
      operator delete(v52);
    }
  }

  else
  {
    *v34 = 0xECC498AF223943D5;
    v34[1] = "md::ls::MeshLayerTypeV]";
    v34[2] = 22;
    v44 = v34 + 3;
  }

  a1[1] = v44;
  v53 = a1[2];
  if (v44 >= v53)
  {
    v55 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *a1) >> 3);
    if (v55 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v56 = 0xAAAAAAAAAAAAAAABLL * ((v53 - *a1) >> 3);
    v57 = 2 * v56;
    if (2 * v56 <= v55 + 1)
    {
      v57 = v55 + 1;
    }

    if (v56 >= 0x555555555555555)
    {
      v58 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v58 = v57;
    }

    if (v58)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v58);
    }

    v59 = (8 * ((v44 - *a1) >> 3));
    *v59 = 0xCD844FF303308290;
    v59[1] = "md::ls::HasMeshHandle]";
    v59[2] = 21;
    v54 = (24 * v55 + 24);
    v60 = a1[1] - *a1;
    v61 = 24 * v55 - v60;
    memcpy(v59 - v60, *a1, v60);
    v62 = *a1;
    *a1 = v61;
    a1[1] = v54;
    a1[2] = 0;
    if (v62)
    {
      operator delete(v62);
    }
  }

  else
  {
    *v44 = 0xCD844FF303308290;
    v44[1] = "md::ls::HasMeshHandle]";
    v44[2] = 21;
    v54 = v44 + 3;
  }

  a1[1] = v54;
  v63 = a1[2];
  if (v54 >= v63)
  {
    v65 = 0xAAAAAAAAAAAAAAABLL * ((v54 - *a1) >> 3);
    if (v65 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v66 = 0xAAAAAAAAAAAAAAABLL * ((v63 - *a1) >> 3);
    v67 = 2 * v66;
    if (2 * v66 <= v65 + 1)
    {
      v67 = v65 + 1;
    }

    if (v66 >= 0x555555555555555)
    {
      v68 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v68 = v67;
    }

    if (v68)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v68);
    }

    v69 = (8 * ((v54 - *a1) >> 3));
    *v69 = 0x6C7EE74910D42096;
    v69[1] = "md::ls::PositionScaleInfoConstantDataHandle]";
    v69[2] = 43;
    v64 = (24 * v65 + 24);
    v70 = a1[1] - *a1;
    v71 = 24 * v65 - v70;
    memcpy(v69 - v70, *a1, v70);
    v72 = *a1;
    *a1 = v71;
    a1[1] = v64;
    a1[2] = 0;
    if (v72)
    {
      operator delete(v72);
    }
  }

  else
  {
    *v54 = 0x6C7EE74910D42096;
    v54[1] = "md::ls::PositionScaleInfoConstantDataHandle]";
    v54[2] = 43;
    v64 = v54 + 3;
  }

  a1[1] = v64;
  v73 = a1[2];
  if (v64 >= v73)
  {
    v75 = 0xAAAAAAAAAAAAAAABLL * ((v64 - *a1) >> 3);
    if (v75 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v76 = 0xAAAAAAAAAAAAAAABLL * ((v73 - *a1) >> 3);
    v77 = 2 * v76;
    if (2 * v76 <= v75 + 1)
    {
      v77 = v75 + 1;
    }

    if (v76 >= 0x555555555555555)
    {
      v78 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v78 = v77;
    }

    if (v78)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v78);
    }

    v79 = (8 * ((v64 - *a1) >> 3));
    *v79 = 0xCFE242268B958ADALL;
    v79[1] = "md::ls::ViewConstantDataHandle]";
    v79[2] = 30;
    v74 = (24 * v75 + 24);
    v80 = a1[1] - *a1;
    v81 = 24 * v75 - v80;
    memcpy(v79 - v80, *a1, v80);
    v82 = *a1;
    *a1 = v81;
    a1[1] = v74;
    a1[2] = 0;
    if (v82)
    {
      operator delete(v82);
    }
  }

  else
  {
    *v64 = 0xCFE242268B958ADALL;
    v64[1] = "md::ls::ViewConstantDataHandle]";
    v64[2] = 30;
    v74 = v64 + 3;
  }

  a1[1] = v74;
  v83 = a1[2];
  if (v74 >= v83)
  {
    v85 = 0xAAAAAAAAAAAAAAABLL * ((v74 - *a1) >> 3);
    if (v85 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v86 = 0xAAAAAAAAAAAAAAABLL * ((v83 - *a1) >> 3);
    v87 = 2 * v86;
    if (2 * v86 <= v85 + 1)
    {
      v87 = v85 + 1;
    }

    if (v86 >= 0x555555555555555)
    {
      v88 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v88 = v87;
    }

    if (v88)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v88);
    }

    v89 = (8 * ((v74 - *a1) >> 3));
    *v89 = 0x74DC502726E97929;
    v89[1] = "md::ls::TransformConstantDataHandle]";
    v89[2] = 35;
    v84 = (24 * v85 + 24);
    v90 = a1[1] - *a1;
    v91 = 24 * v85 - v90;
    memcpy(v89 - v90, *a1, v90);
    v92 = *a1;
    *a1 = v91;
    a1[1] = v84;
    a1[2] = 0;
    if (v92)
    {
      operator delete(v92);
    }
  }

  else
  {
    *v74 = 0x74DC502726E97929;
    v74[1] = "md::ls::TransformConstantDataHandle]";
    v74[2] = 35;
    v84 = v74 + 3;
  }

  a1[1] = v84;
  v93 = a1[2];
  if (v84 >= v93)
  {
    v95 = 0xAAAAAAAAAAAAAAABLL * ((v84 - *a1) >> 3);
    if (v95 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v96 = 0xAAAAAAAAAAAAAAABLL * ((v93 - *a1) >> 3);
    v97 = 2 * v96;
    if (2 * v96 <= v95 + 1)
    {
      v97 = v95 + 1;
    }

    if (v96 >= 0x555555555555555)
    {
      v98 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v98 = v97;
    }

    if (v98)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v98);
    }

    v99 = (8 * ((v84 - *a1) >> 3));
    *v99 = 0x1BB343378E1EE5BLL;
    v99[1] = "md::ls::StyleDataKeyHandle]";
    v99[2] = 26;
    v94 = (24 * v95 + 24);
    v100 = a1[1] - *a1;
    v101 = 24 * v95 - v100;
    memcpy(v99 - v100, *a1, v100);
    v102 = *a1;
    *a1 = v101;
    a1[1] = v94;
    a1[2] = 0;
    if (v102)
    {
      operator delete(v102);
    }
  }

  else
  {
    *v84 = 0x1BB343378E1EE5BLL;
    v84[1] = "md::ls::StyleDataKeyHandle]";
    v84[2] = 26;
    v94 = v84 + 3;
  }

  a1[1] = v94;
  v103 = a1[2];
  if (v94 >= v103)
  {
    v105 = 0xAAAAAAAAAAAAAAABLL * ((v94 - *a1) >> 3);
    if (v105 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v106 = 0xAAAAAAAAAAAAAAABLL * ((v103 - *a1) >> 3);
    v107 = 2 * v106;
    if (2 * v106 <= v105 + 1)
    {
      v107 = v105 + 1;
    }

    if (v106 >= 0x555555555555555)
    {
      v108 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v108 = v107;
    }

    if (v108)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v108);
    }

    v109 = (8 * ((v94 - *a1) >> 3));
    *v109 = 0x3AC919C8A5243F9;
    v109[1] = "md::ls::StyleSSAODataKeyHandle]";
    v109[2] = 30;
    v104 = (24 * v105 + 24);
    v110 = a1[1] - *a1;
    v111 = 24 * v105 - v110;
    memcpy(v109 - v110, *a1, v110);
    v112 = *a1;
    *a1 = v111;
    a1[1] = v104;
    a1[2] = 0;
    if (v112)
    {
      operator delete(v112);
    }
  }

  else
  {
    *v94 = 0x3AC919C8A5243F9;
    v94[1] = "md::ls::StyleSSAODataKeyHandle]";
    v94[2] = 30;
    v104 = v94 + 3;
  }

  a1[1] = v104;
  v113 = a1[2];
  if (v104 >= v113)
  {
    v115 = 0xAAAAAAAAAAAAAAABLL * ((v104 - *a1) >> 3);
    if (v115 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v116 = 0xAAAAAAAAAAAAAAABLL * ((v113 - *a1) >> 3);
    v117 = 2 * v116;
    if (2 * v116 <= v115 + 1)
    {
      v117 = v115 + 1;
    }

    if (v116 >= 0x555555555555555)
    {
      v118 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v118 = v117;
    }

    if (v118)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v118);
    }

    v119 = (8 * ((v104 - *a1) >> 3));
    *v119 = 0xA50DD2A5BD75DBD6;
    v119[1] = "md::ls::StyleEmissiveDataKeyHandle]";
    v119[2] = 34;
    v114 = (24 * v115 + 24);
    v120 = a1[1] - *a1;
    v121 = 24 * v115 - v120;
    memcpy(v119 - v120, *a1, v120);
    v122 = *a1;
    *a1 = v121;
    a1[1] = v114;
    a1[2] = 0;
    if (v122)
    {
      operator delete(v122);
    }
  }

  else
  {
    *v104 = 0xA50DD2A5BD75DBD6;
    v104[1] = "md::ls::StyleEmissiveDataKeyHandle]";
    v104[2] = 34;
    v114 = v104 + 3;
  }

  a1[1] = v114;
  v123 = a1[2];
  if (v114 >= v123)
  {
    v125 = 0xAAAAAAAAAAAAAAABLL * ((v114 - *a1) >> 3);
    if (v125 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v126 = 0xAAAAAAAAAAAAAAABLL * ((v123 - *a1) >> 3);
    v127 = 2 * v126;
    if (2 * v126 <= v125 + 1)
    {
      v127 = v125 + 1;
    }

    if (v126 >= 0x555555555555555)
    {
      v128 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v128 = v127;
    }

    if (v128)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v128);
    }

    v129 = (8 * ((v114 - *a1) >> 3));
    *v129 = 0xFA89E73840C3EC51;
    v129[1] = "md::ls::ColorCorrectionDataKeyHandle]";
    v129[2] = 36;
    v124 = (24 * v125 + 24);
    v130 = a1[1] - *a1;
    v131 = 24 * v125 - v130;
    memcpy(v129 - v130, *a1, v130);
    v132 = *a1;
    *a1 = v131;
    a1[1] = v124;
    a1[2] = 0;
    if (v132)
    {
      operator delete(v132);
    }
  }

  else
  {
    *v114 = 0xFA89E73840C3EC51;
    v114[1] = "md::ls::ColorCorrectionDataKeyHandle]";
    v114[2] = 36;
    v124 = v114 + 3;
  }

  a1[1] = v124;
  v133 = a1[2];
  if (v124 >= v133)
  {
    v135 = 0xAAAAAAAAAAAAAAABLL * ((v124 - *a1) >> 3);
    if (v135 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v136 = 0xAAAAAAAAAAAAAAABLL * ((v133 - *a1) >> 3);
    v137 = 2 * v136;
    if (2 * v136 <= v135 + 1)
    {
      v137 = v135 + 1;
    }

    if (v136 >= 0x555555555555555)
    {
      v138 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v138 = v137;
    }

    if (v138)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v138);
    }

    v139 = (8 * ((v124 - *a1) >> 3));
    *v139 = 0x96F87A2692FE4013;
    v139[1] = "md::ls::StyleCameraConstantDataHandle]";
    v139[2] = 37;
    v134 = (24 * v135 + 24);
    v140 = a1[1] - *a1;
    v141 = 24 * v135 - v140;
    memcpy(v139 - v140, *a1, v140);
    v142 = *a1;
    *a1 = v141;
    a1[1] = v134;
    a1[2] = 0;
    if (v142)
    {
      operator delete(v142);
    }
  }

  else
  {
    *v124 = 0x96F87A2692FE4013;
    v124[1] = "md::ls::StyleCameraConstantDataHandle]";
    v124[2] = 37;
    v134 = v124 + 3;
  }

  a1[1] = v134;
  v143 = a1[2];
  if (v134 >= v143)
  {
    v145 = 0xAAAAAAAAAAAAAAABLL * ((v134 - *a1) >> 3);
    if (v145 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v146 = 0xAAAAAAAAAAAAAAABLL * ((v143 - *a1) >> 3);
    v147 = 2 * v146;
    if (2 * v146 <= v145 + 1)
    {
      v147 = v145 + 1;
    }

    if (v146 >= 0x555555555555555)
    {
      v148 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v148 = v147;
    }

    if (v148)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v148);
    }

    v149 = (8 * ((v134 - *a1) >> 3));
    *v149 = 0xA3F884E4E2541296;
    v149[1] = "md::ls::ColorDataHandle]";
    v149[2] = 23;
    v144 = (24 * v145 + 24);
    v150 = a1[1] - *a1;
    v151 = 24 * v145 - v150;
    memcpy(v149 - v150, *a1, v150);
    v152 = *a1;
    *a1 = v151;
    a1[1] = v144;
    a1[2] = 0;
    if (v152)
    {
      operator delete(v152);
    }
  }

  else
  {
    *v134 = 0xA3F884E4E2541296;
    v134[1] = "md::ls::ColorDataHandle]";
    v134[2] = 23;
    v144 = v134 + 3;
  }

  a1[1] = v144;
  v153 = a1[2];
  if (v144 >= v153)
  {
    v155 = 0xAAAAAAAAAAAAAAABLL * ((v144 - *a1) >> 3);
    if (v155 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v156 = 0xAAAAAAAAAAAAAAABLL * ((v153 - *a1) >> 3);
    v157 = 2 * v156;
    if (2 * v156 <= v155 + 1)
    {
      v157 = v155 + 1;
    }

    if (v156 >= 0x555555555555555)
    {
      v158 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v158 = v157;
    }

    if (v158)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v158);
    }

    v159 = (8 * ((v144 - *a1) >> 3));
    *v159 = 0x71CBA64B1A9CA230;
    v159[1] = "md::ls::IndexRange]";
    v159[2] = 18;
    v154 = (24 * v155 + 24);
    v160 = a1[1] - *a1;
    v161 = 24 * v155 - v160;
    memcpy(v159 - v160, *a1, v160);
    v162 = *a1;
    *a1 = v161;
    a1[1] = v154;
    a1[2] = 0;
    if (v162)
    {
      operator delete(v162);
    }
  }

  else
  {
    *v144 = 0x71CBA64B1A9CA230;
    v144[1] = "md::ls::IndexRange]";
    v144[2] = 18;
    v154 = v144 + 3;
  }

  a1[1] = v154;
  v163 = a1[2];
  if (v154 >= v163)
  {
    v165 = 0xAAAAAAAAAAAAAAABLL * ((v154 - *a1) >> 3);
    if (v165 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v166 = 0xAAAAAAAAAAAAAAABLL * ((v163 - *a1) >> 3);
    v167 = 2 * v166;
    if (2 * v166 <= v165 + 1)
    {
      v167 = v165 + 1;
    }

    if (v166 >= 0x555555555555555)
    {
      v168 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v168 = v167;
    }

    if (v168)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v168);
    }

    v169 = (8 * ((v154 - *a1) >> 3));
    *v169 = 0xD5AD9B8C3FE62EE8;
    v169[1] = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    v169[2] = 46;
    v164 = (24 * v165 + 24);
    v170 = a1[1] - *a1;
    v171 = 24 * v165 - v170;
    memcpy(v169 - v170, *a1, v170);
    v172 = *a1;
    *a1 = v171;
    a1[1] = v164;
    a1[2] = 0;
    if (v172)
    {
      operator delete(v172);
    }
  }

  else
  {
    *v154 = 0xD5AD9B8C3FE62EE8;
    v154[1] = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    v154[2] = 46;
    v164 = v154 + 3;
  }

  a1[1] = v164;
  v173 = a1[2];
  if (v164 >= v173)
  {
    v175 = 0xAAAAAAAAAAAAAAABLL * ((v164 - *a1) >> 3);
    if (v175 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v176 = 0xAAAAAAAAAAAAAAABLL * ((v173 - *a1) >> 3);
    v177 = 2 * v176;
    if (2 * v176 <= v175 + 1)
    {
      v177 = v175 + 1;
    }

    if (v176 >= 0x555555555555555)
    {
      v178 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v178 = v177;
    }

    if (v178)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v178);
    }

    v179 = (8 * ((v164 - *a1) >> 3));
    *v179 = 0x75DBD6381F1903FFLL;
    v179[1] = "md::ls::PendingProcessing]";
    v179[2] = 25;
    v174 = (24 * v175 + 24);
    v180 = a1[1] - *a1;
    v181 = 24 * v175 - v180;
    memcpy(v179 - v180, *a1, v180);
    v182 = *a1;
    *a1 = v181;
    a1[1] = v174;
    a1[2] = 0;
    if (v182)
    {
      operator delete(v182);
    }
  }

  else
  {
    *v164 = 0x75DBD6381F1903FFLL;
    v164[1] = "md::ls::PendingProcessing]";
    v164[2] = 25;
    v174 = v164 + 3;
  }

  a1[1] = v174;
  v183 = a1[2];
  if (v174 >= v183)
  {
    v185 = 0xAAAAAAAAAAAAAAABLL * ((v174 - *a1) >> 3);
    if (v185 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v186 = 0xAAAAAAAAAAAAAAABLL * ((v183 - *a1) >> 3);
    v187 = 2 * v186;
    if (2 * v186 <= v185 + 1)
    {
      v187 = v185 + 1;
    }

    if (v186 >= 0x555555555555555)
    {
      v188 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v188 = v187;
    }

    if (v188)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v188);
    }

    v189 = (8 * ((v174 - *a1) >> 3));
    *v189 = 0x3218EFD67197A145;
    v189[1] = "md::ls::NormalsHandle]";
    v189[2] = 21;
    v184 = (24 * v185 + 24);
    v190 = a1[1] - *a1;
    v191 = 24 * v185 - v190;
    memcpy(v189 - v190, *a1, v190);
    v192 = *a1;
    *a1 = v191;
    a1[1] = v184;
    a1[2] = 0;
    if (v192)
    {
      operator delete(v192);
    }
  }

  else
  {
    *v174 = 0x3218EFD67197A145;
    v174[1] = "md::ls::NormalsHandle]";
    v174[2] = 21;
    v184 = v174 + 3;
  }

  a1[1] = v184;
  v193 = a1[2];
  if (v184 >= v193)
  {
    v195 = 0xAAAAAAAAAAAAAAABLL * ((v184 - *a1) >> 3);
    if (v195 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v196 = 0xAAAAAAAAAAAAAAABLL * ((v193 - *a1) >> 3);
    v197 = 2 * v196;
    if (2 * v196 <= v195 + 1)
    {
      v197 = v195 + 1;
    }

    if (v196 >= 0x555555555555555)
    {
      v198 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v198 = v197;
    }

    if (v198)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v198);
    }

    v199 = (8 * ((v184 - *a1) >> 3));
    *v199 = 0xAF179EFD8A4C83D4;
    v199[1] = "md::ls::InstanceTransformHandle]";
    v199[2] = 31;
    v194 = (24 * v195 + 24);
    v200 = a1[1] - *a1;
    v201 = 24 * v195 - v200;
    memcpy(v199 - v200, *a1, v200);
    v202 = *a1;
    *a1 = v201;
    a1[1] = v194;
    a1[2] = 0;
    if (v202)
    {
      operator delete(v202);
    }
  }

  else
  {
    *v184 = 0xAF179EFD8A4C83D4;
    v184[1] = "md::ls::InstanceTransformHandle]";
    v184[2] = 31;
    v194 = v184 + 3;
  }

  a1[1] = v194;
  v203 = a1[2];
  if (v194 >= v203)
  {
    v205 = 0xAAAAAAAAAAAAAAABLL * ((v194 - *a1) >> 3);
    if (v205 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v206 = 0xAAAAAAAAAAAAAAABLL * ((v203 - *a1) >> 3);
    v207 = 2 * v206;
    if (2 * v206 <= v205 + 1)
    {
      v207 = v205 + 1;
    }

    if (v206 >= 0x555555555555555)
    {
      v208 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v208 = v207;
    }

    if (v208)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v208);
    }

    v209 = (8 * ((v194 - *a1) >> 3));
    *v209 = 0xCBB77B1CBD05D7C5;
    v209[1] = "md::ls::UVsHandle]";
    v209[2] = 17;
    v204 = (24 * v205 + 24);
    v210 = a1[1] - *a1;
    v211 = 24 * v205 - v210;
    memcpy(v209 - v210, *a1, v210);
    v212 = *a1;
    *a1 = v211;
    a1[1] = v204;
    a1[2] = 0;
    if (v212)
    {
      operator delete(v212);
    }
  }

  else
  {
    *v194 = 0xCBB77B1CBD05D7C5;
    v194[1] = "md::ls::UVsHandle]";
    v194[2] = 17;
    v204 = v194 + 3;
  }

  a1[1] = v204;
  v213 = a1[2];
  if (v204 >= v213)
  {
    v215 = 0xAAAAAAAAAAAAAAABLL * ((v204 - *a1) >> 3);
    if (v215 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v216 = 0xAAAAAAAAAAAAAAABLL * ((v213 - *a1) >> 3);
    v217 = 2 * v216;
    if (2 * v216 <= v215 + 1)
    {
      v217 = v215 + 1;
    }

    if (v216 >= 0x555555555555555)
    {
      v218 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v218 = v217;
    }

    if (v218)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v218);
    }

    v219 = (8 * ((v204 - *a1) >> 3));
    *v219 = 0xD443D3DCBB78491ALL;
    v219[1] = "md::ls::ElevationHandle]";
    v219[2] = 23;
    v214 = (24 * v215 + 24);
    v220 = a1[1] - *a1;
    v221 = 24 * v215 - v220;
    memcpy(v219 - v220, *a1, v220);
    v222 = *a1;
    *a1 = v221;
    a1[1] = v214;
    a1[2] = 0;
    if (v222)
    {
      operator delete(v222);
    }
  }

  else
  {
    *v204 = 0xD443D3DCBB78491ALL;
    v204[1] = "md::ls::ElevationHandle]";
    v204[2] = 23;
    v214 = v204 + 3;
  }

  a1[1] = v214;
  v223 = a1[2];
  if (v214 >= v223)
  {
    v225 = 0xAAAAAAAAAAAAAAABLL * ((v214 - *a1) >> 3);
    if (v225 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v226 = 0xAAAAAAAAAAAAAAABLL * ((v223 - *a1) >> 3);
    v227 = 2 * v226;
    if (2 * v226 <= v225 + 1)
    {
      v227 = v225 + 1;
    }

    if (v226 >= 0x555555555555555)
    {
      v228 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v228 = v227;
    }

    if (v228)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v228);
    }

    v229 = (8 * ((v214 - *a1) >> 3));
    *v229 = 0xDD9825BCFA7911B2;
    v229[1] = "md::ls::TextureHandleForType<DaVinci::DiffuseTexture>]";
    v229[2] = 53;
    v224 = (24 * v225 + 24);
    v230 = a1[1] - *a1;
    v231 = 24 * v225 - v230;
    memcpy(v229 - v230, *a1, v230);
    v232 = *a1;
    *a1 = v231;
    a1[1] = v224;
    a1[2] = 0;
    if (v232)
    {
      operator delete(v232);
    }
  }

  else
  {
    *v214 = 0xDD9825BCFA7911B2;
    v214[1] = "md::ls::TextureHandleForType<DaVinci::DiffuseTexture>]";
    v214[2] = 53;
    v224 = v214 + 3;
  }

  a1[1] = v224;
  v233 = a1[2];
  if (v224 >= v233)
  {
    v235 = 0xAAAAAAAAAAAAAAABLL * ((v224 - *a1) >> 3);
    if (v235 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v236 = 0xAAAAAAAAAAAAAAABLL * ((v233 - *a1) >> 3);
    v237 = 2 * v236;
    if (2 * v236 <= v235 + 1)
    {
      v237 = v235 + 1;
    }

    if (v236 >= 0x555555555555555)
    {
      v238 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v238 = v237;
    }

    if (v238)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v238);
    }

    v239 = (8 * ((v224 - *a1) >> 3));
    *v239 = 0xDC98991DB7473274;
    v239[1] = "md::ls::LandCoverSettingsConstantDataHandle]";
    v239[2] = 43;
    v234 = (24 * v235 + 24);
    v240 = a1[1] - *a1;
    v241 = 24 * v235 - v240;
    memcpy(v239 - v240, *a1, v240);
    v242 = *a1;
    *a1 = v241;
    a1[1] = v234;
    a1[2] = 0;
    if (v242)
    {
      operator delete(v242);
    }
  }

  else
  {
    *v224 = 0xDC98991DB7473274;
    v224[1] = "md::ls::LandCoverSettingsConstantDataHandle]";
    v224[2] = 43;
    v234 = v224 + 3;
  }

  a1[1] = v234;
  v243 = a1[2];
  if (v234 >= v243)
  {
    v245 = 0xAAAAAAAAAAAAAAABLL * ((v234 - *a1) >> 3);
    if (v245 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v246 = 0xAAAAAAAAAAAAAAABLL * ((v243 - *a1) >> 3);
    v247 = 2 * v246;
    if (2 * v246 <= v245 + 1)
    {
      v247 = v245 + 1;
    }

    if (v246 >= 0x555555555555555)
    {
      v248 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v248 = v247;
    }

    if (v248)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v248);
    }

    v249 = (8 * ((v234 - *a1) >> 3));
    *v249 = 0xEAA0B82FC49F7277;
    v249[1] = "md::ls::ShadowConstantDataHandle]";
    v249[2] = 32;
    v244 = (24 * v245 + 24);
    v250 = a1[1] - *a1;
    v251 = 24 * v245 - v250;
    memcpy(v249 - v250, *a1, v250);
    v252 = *a1;
    *a1 = v251;
    a1[1] = v244;
    a1[2] = 0;
    if (v252)
    {
      operator delete(v252);
    }
  }

  else
  {
    *v234 = 0xEAA0B82FC49F7277;
    v234[1] = "md::ls::ShadowConstantDataHandle]";
    v234[2] = 32;
    v244 = v234 + 3;
  }

  a1[1] = v244;
  v253 = a1[2];
  if (v244 >= v253)
  {
    v255 = 0xAAAAAAAAAAAAAAABLL * ((v244 - *a1) >> 3);
    if (v255 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v256 = 0xAAAAAAAAAAAAAAABLL * ((v253 - *a1) >> 3);
    v257 = 2 * v256;
    if (2 * v256 <= v255 + 1)
    {
      v257 = v255 + 1;
    }

    if (v256 >= 0x555555555555555)
    {
      v258 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v258 = v257;
    }

    if (v258)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v258);
    }

    v259 = (8 * ((v244 - *a1) >> 3));
    *v259 = 0x1EBB3E0519E8FF9DLL;
    v259[1] = "md::ls::PrepassConstantDataHandle]";
    v259[2] = 33;
    v254 = (24 * v255 + 24);
    v260 = a1[1] - *a1;
    v261 = 24 * v255 - v260;
    memcpy(v259 - v260, *a1, v260);
    v262 = *a1;
    *a1 = v261;
    a1[1] = v254;
    a1[2] = 0;
    if (v262)
    {
      operator delete(v262);
    }
  }

  else
  {
    *v244 = 0x1EBB3E0519E8FF9DLL;
    v244[1] = "md::ls::PrepassConstantDataHandle]";
    v244[2] = 33;
    v254 = v244 + 3;
  }

  a1[1] = v254;
  v263 = a1[2];
  if (v254 >= v263)
  {
    v265 = 0xAAAAAAAAAAAAAAABLL * ((v254 - *a1) >> 3);
    if (v265 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v266 = 0xAAAAAAAAAAAAAAABLL * ((v263 - *a1) >> 3);
    v267 = 2 * v266;
    if (2 * v266 <= v265 + 1)
    {
      v267 = v265 + 1;
    }

    if (v266 >= 0x555555555555555)
    {
      v268 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v268 = v267;
    }

    if (v268)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v268);
    }

    v269 = (8 * ((v254 - *a1) >> 3));
    *v269 = 0x9292F9031FE6DB5;
    v269[1] = "md::ls::ClippingConstantDataHandle]";
    v269[2] = 34;
    v264 = (24 * v265 + 24);
    v270 = a1[1] - *a1;
    v271 = 24 * v265 - v270;
    memcpy(v269 - v270, *a1, v270);
    v272 = *a1;
    *a1 = v271;
    a1[1] = v264;
    a1[2] = 0;
    if (v272)
    {
      operator delete(v272);
    }
  }

  else
  {
    *v254 = 0x9292F9031FE6DB5;
    v254[1] = "md::ls::ClippingConstantDataHandle]";
    v254[2] = 34;
    v264 = v254 + 3;
  }

  a1[1] = v264;
  v273 = a1[2];
  if (v264 >= v273)
  {
    v275 = 0xAAAAAAAAAAAAAAABLL * ((v264 - *a1) >> 3);
    if (v275 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v276 = 0xAAAAAAAAAAAAAAABLL * ((v273 - *a1) >> 3);
    v277 = 2 * v276;
    if (2 * v276 <= v275 + 1)
    {
      v277 = v275 + 1;
    }

    if (v276 >= 0x555555555555555)
    {
      v278 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v278 = v277;
    }

    if (v278)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v278);
    }

    v279 = (8 * ((v264 - *a1) >> 3));
    *v279 = 0xD02B5FD100F36AA2;
    v279[1] = "md::ls::PlanarParametersCacheKeyHandle]";
    v279[2] = 38;
    v274 = (24 * v275 + 24);
    v280 = a1[1] - *a1;
    v281 = 24 * v275 - v280;
    memcpy(v279 - v280, *a1, v280);
    v282 = *a1;
    *a1 = v281;
    a1[1] = v274;
    a1[2] = 0;
    if (v282)
    {
      operator delete(v282);
    }
  }

  else
  {
    *v264 = 0xD02B5FD100F36AA2;
    v264[1] = "md::ls::PlanarParametersCacheKeyHandle]";
    v264[2] = 38;
    v274 = v264 + 3;
  }

  a1[1] = v274;
  v283 = a1[2];
  if (v274 >= v283)
  {
    v285 = 0xAAAAAAAAAAAAAAABLL * ((v274 - *a1) >> 3);
    if (v285 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v286 = 0xAAAAAAAAAAAAAAABLL * ((v283 - *a1) >> 3);
    v287 = 2 * v286;
    if (2 * v286 <= v285 + 1)
    {
      v287 = v285 + 1;
    }

    if (v286 >= 0x555555555555555)
    {
      v288 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v288 = v287;
    }

    if (v288)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v288);
    }

    v289 = (8 * ((v274 - *a1) >> 3));
    *v289 = 0x1D932F2BF291491;
    v289[1] = "md::ls::TextureHandleForType<DaVinci::TexTexture>]";
    v289[2] = 49;
    v284 = (24 * v285 + 24);
    v290 = a1[1] - *a1;
    v291 = 24 * v285 - v290;
    memcpy(v289 - v290, *a1, v290);
    v292 = *a1;
    *a1 = v291;
    a1[1] = v284;
    a1[2] = 0;
    if (v292)
    {
      operator delete(v292);
    }
  }

  else
  {
    *v274 = 0x1D932F2BF291491;
    v274[1] = "md::ls::TextureHandleForType<DaVinci::TexTexture>]";
    v274[2] = 49;
    v284 = v274 + 3;
  }

  a1[1] = v284;
  v293 = a1[2];
  if (v284 >= v293)
  {
    v295 = 0xAAAAAAAAAAAAAAABLL * ((v284 - *a1) >> 3);
    if (v295 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v296 = 0xAAAAAAAAAAAAAAABLL * ((v293 - *a1) >> 3);
    v297 = 2 * v296;
    if (2 * v296 <= v295 + 1)
    {
      v297 = v295 + 1;
    }

    if (v296 >= 0x555555555555555)
    {
      v298 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v298 = v297;
    }

    if (v298)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v298);
    }

    v299 = (8 * ((v284 - *a1) >> 3));
    *v299 = 0xCE03281732FA0019;
    v299[1] = "md::ls::TextureHandleForType<DaVinci::EmissiveTexture>]";
    v299[2] = 54;
    v294 = (24 * v295 + 24);
    v300 = a1[1] - *a1;
    v301 = 24 * v295 - v300;
    memcpy(v299 - v300, *a1, v300);
    v302 = *a1;
    *a1 = v301;
    a1[1] = v294;
    a1[2] = 0;
    if (v302)
    {
      operator delete(v302);
    }
  }

  else
  {
    *v284 = 0xCE03281732FA0019;
    v284[1] = "md::ls::TextureHandleForType<DaVinci::EmissiveTexture>]";
    v284[2] = 54;
    v294 = v284 + 3;
  }

  a1[1] = v294;
  v303 = a1[2];
  if (v294 >= v303)
  {
    v305 = 0xAAAAAAAAAAAAAAABLL * ((v294 - *a1) >> 3);
    if (v305 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v306 = 0xAAAAAAAAAAAAAAABLL * ((v303 - *a1) >> 3);
    v307 = 2 * v306;
    if (2 * v306 <= v305 + 1)
    {
      v307 = v305 + 1;
    }

    if (v306 >= 0x555555555555555)
    {
      v308 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v308 = v307;
    }

    if (v308)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v308);
    }

    v309 = (8 * ((v294 - *a1) >> 3));
    *v309 = 0xD2D99CA7D5B116C8;
    v309[1] = "md::ls::TextureHandleForType<DaVinci::OverlayTexture>]";
    v309[2] = 53;
    v304 = (24 * v305 + 24);
    v310 = a1[1] - *a1;
    v311 = 24 * v305 - v310;
    memcpy(v309 - v310, *a1, v310);
    v312 = *a1;
    *a1 = v311;
    a1[1] = v304;
    a1[2] = 0;
    if (v312)
    {
      operator delete(v312);
    }
  }

  else
  {
    *v294 = 0xD2D99CA7D5B116C8;
    v294[1] = "md::ls::TextureHandleForType<DaVinci::OverlayTexture>]";
    v294[2] = 53;
    v304 = v294 + 3;
  }

  a1[1] = v304;
  v313 = a1[2];
  if (v304 >= v313)
  {
    v315 = 0xAAAAAAAAAAAAAAABLL * ((v304 - *a1) >> 3);
    if (v315 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v316 = 0xAAAAAAAAAAAAAAABLL * ((v313 - *a1) >> 3);
    v317 = 2 * v316;
    if (2 * v316 <= v315 + 1)
    {
      v317 = v315 + 1;
    }

    if (v316 >= 0x555555555555555)
    {
      v318 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v318 = v317;
    }

    if (v318)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v318);
    }

    v319 = (8 * ((v304 - *a1) >> 3));
    *v319 = 0xDF0018B9242ADFDBLL;
    v319[1] = "md::ls::BlendRasterConstantDataHandle]";
    v319[2] = 37;
    v314 = (24 * v315 + 24);
    v320 = a1[1] - *a1;
    v321 = 24 * v315 - v320;
    memcpy(v319 - v320, *a1, v320);
    v322 = *a1;
    *a1 = v321;
    a1[1] = v314;
    a1[2] = 0;
    if (v322)
    {
      operator delete(v322);
    }
  }

  else
  {
    *v304 = 0xDF0018B9242ADFDBLL;
    v304[1] = "md::ls::BlendRasterConstantDataHandle]";
    v304[2] = 37;
    v314 = v304 + 3;
  }

  a1[1] = v314;
  v323 = a1[2];
  if (v314 >= v323)
  {
    v325 = 0xAAAAAAAAAAAAAAABLL * ((v314 - *a1) >> 3);
    if (v325 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v326 = 0xAAAAAAAAAAAAAAABLL * ((v323 - *a1) >> 3);
    v327 = 2 * v326;
    if (2 * v326 <= v325 + 1)
    {
      v327 = v325 + 1;
    }

    if (v326 >= 0x555555555555555)
    {
      v328 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v328 = v327;
    }

    if (v328)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v328);
    }

    v329 = (8 * ((v314 - *a1) >> 3));
    *v329 = 0xDC66BF6D06F6D0BALL;
    v329[1] = "md::ls::RasterOverlayConstantDataHandle]";
    v329[2] = 39;
    v324 = (24 * v325 + 24);
    v330 = a1[1] - *a1;
    v331 = 24 * v325 - v330;
    memcpy(v329 - v330, *a1, v330);
    v332 = *a1;
    *a1 = v331;
    a1[1] = v324;
    a1[2] = 0;
    if (v332)
    {
      operator delete(v332);
    }
  }

  else
  {
    *v314 = 0xDC66BF6D06F6D0BALL;
    v314[1] = "md::ls::RasterOverlayConstantDataHandle]";
    v314[2] = 39;
    v324 = v314 + 3;
  }

  a1[1] = v324;
  v333 = a1[2];
  if (v324 >= v333)
  {
    v335 = 0xAAAAAAAAAAAAAAABLL * ((v324 - *a1) >> 3);
    if (v335 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v336 = 0xAAAAAAAAAAAAAAABLL * ((v333 - *a1) >> 3);
    v337 = 2 * v336;
    if (2 * v336 <= v335 + 1)
    {
      v337 = v335 + 1;
    }

    if (v336 >= 0x555555555555555)
    {
      v338 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v338 = v337;
    }

    if (v338)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v338);
    }

    v339 = (8 * ((v324 - *a1) >> 3));
    *v339 = 0x985FB09D9DF9959FLL;
    v339[1] = "md::ls::HasStyleAttributeRasterSet]";
    v339[2] = 34;
    v334 = (24 * v335 + 24);
    v340 = a1[1] - *a1;
    v341 = 24 * v335 - v340;
    memcpy(v339 - v340, *a1, v340);
    v342 = *a1;
    *a1 = v341;
    a1[1] = v334;
    a1[2] = 0;
    if (v342)
    {
      operator delete(v342);
    }
  }

  else
  {
    *v324 = 0x985FB09D9DF9959FLL;
    v324[1] = "md::ls::HasStyleAttributeRasterSet]";
    v324[2] = 34;
    v334 = v324 + 3;
  }

  a1[1] = v334;
  v343 = a1[2];
  if (v334 >= v343)
  {
    v345 = 0xAAAAAAAAAAAAAAABLL * ((v334 - *a1) >> 3);
    if (v345 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v346 = 0xAAAAAAAAAAAAAAABLL * ((v343 - *a1) >> 3);
    v347 = 2 * v346;
    if (2 * v346 <= v345 + 1)
    {
      v347 = v345 + 1;
    }

    if (v346 >= 0x555555555555555)
    {
      v348 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v348 = v347;
    }

    if (v348)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v348);
    }

    v349 = (8 * ((v334 - *a1) >> 3));
    *v349 = 0x9D7520A01DC69D83;
    v349[1] = "md::ls::HasMaterialRaster]";
    v349[2] = 25;
    v344 = (24 * v345 + 24);
    v350 = a1[1] - *a1;
    v351 = 24 * v345 - v350;
    memcpy(v349 - v350, *a1, v350);
    v352 = *a1;
    *a1 = v351;
    a1[1] = v344;
    a1[2] = 0;
    if (v352)
    {
      operator delete(v352);
    }
  }

  else
  {
    *v334 = 0x9D7520A01DC69D83;
    v334[1] = "md::ls::HasMaterialRaster]";
    v334[2] = 25;
    v344 = v334 + 3;
  }

  a1[1] = v344;
  v353 = a1[2];
  if (v344 >= v353)
  {
    v355 = 0xAAAAAAAAAAAAAAABLL * ((v344 - *a1) >> 3);
    if (v355 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v356 = 0xAAAAAAAAAAAAAAABLL * ((v353 - *a1) >> 3);
    v357 = 2 * v356;
    if (2 * v356 <= v355 + 1)
    {
      v357 = v355 + 1;
    }

    if (v356 >= 0x555555555555555)
    {
      v358 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v358 = v357;
    }

    if (v358)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v358);
    }

    v359 = (8 * ((v344 - *a1) >> 3));
    *v359 = 0x11BB47B172EB0B40;
    v359[1] = "md::ls::NeedsClimateTint]";
    v359[2] = 24;
    v354 = (24 * v355 + 24);
    v360 = a1[1] - *a1;
    v361 = 24 * v355 - v360;
    memcpy(v359 - v360, *a1, v360);
    v362 = *a1;
    *a1 = v361;
    a1[1] = v354;
    a1[2] = 0;
    if (v362)
    {
      operator delete(v362);
    }
  }

  else
  {
    *v344 = 0x11BB47B172EB0B40;
    v344[1] = "md::ls::NeedsClimateTint]";
    v344[2] = 24;
    v354 = v344 + 3;
  }

  a1[1] = v354;
  v363 = a1[2];
  if (v354 >= v363)
  {
    v365 = 0xAAAAAAAAAAAAAAABLL * ((v354 - *a1) >> 3);
    if (v365 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v366 = 0xAAAAAAAAAAAAAAABLL * ((v363 - *a1) >> 3);
    v367 = 2 * v366;
    if (2 * v366 <= v365 + 1)
    {
      v367 = v365 + 1;
    }

    if (v366 >= 0x555555555555555)
    {
      v368 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v368 = v367;
    }

    if (v368)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v368);
    }

    v369 = (8 * ((v354 - *a1) >> 3));
    *v369 = 0xA0C97F52893883B7;
    v369[1] = "md::ls::CustomRenderState]";
    v369[2] = 25;
    v364 = (24 * v365 + 24);
    v370 = a1[1] - *a1;
    v371 = 24 * v365 - v370;
    memcpy(v369 - v370, *a1, v370);
    v372 = *a1;
    *a1 = v371;
    a1[1] = v364;
    a1[2] = 0;
    if (v372)
    {
      operator delete(v372);
    }
  }

  else
  {
    *v354 = 0xA0C97F52893883B7;
    v354[1] = "md::ls::CustomRenderState]";
    v354[2] = 25;
    v364 = v354 + 3;
  }

  a1[1] = v364;
  v373 = a1[2];
  if (v364 >= v373)
  {
    v375 = 0xAAAAAAAAAAAAAAABLL * ((v364 - *a1) >> 3);
    if (v375 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v376 = 0xAAAAAAAAAAAAAAABLL * ((v373 - *a1) >> 3);
    v377 = 2 * v376;
    if (2 * v376 <= v375 + 1)
    {
      v377 = v375 + 1;
    }

    if (v376 >= 0x555555555555555)
    {
      v378 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v378 = v377;
    }

    if (v378)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v378);
    }

    v379 = (8 * ((v364 - *a1) >> 3));
    *v379 = 0xE103B5C60804137ELL;
    v379[1] = "md::ls::ColorRampDataHandle]";
    v379[2] = 27;
    v374 = (24 * v375 + 24);
    v380 = a1[1] - *a1;
    v381 = 24 * v375 - v380;
    memcpy(v379 - v380, *a1, v380);
    v382 = *a1;
    *a1 = v381;
    a1[1] = v374;
    a1[2] = 0;
    if (v382)
    {
      operator delete(v382);
    }
  }

  else
  {
    *v364 = 0xE103B5C60804137ELL;
    v364[1] = "md::ls::ColorRampDataHandle]";
    v364[2] = 27;
    v374 = v364 + 3;
  }

  a1[1] = v374;
  v383 = a1[2];
  if (v374 >= v383)
  {
    v385 = 0xAAAAAAAAAAAAAAABLL * ((v374 - *a1) >> 3);
    if (v385 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v386 = 0xAAAAAAAAAAAAAAABLL * ((v383 - *a1) >> 3);
    v387 = 2 * v386;
    if (2 * v386 <= v385 + 1)
    {
      v387 = v385 + 1;
    }

    if (v386 >= 0x555555555555555)
    {
      v388 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v388 = v387;
    }

    if (v388)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v388);
    }

    v389 = (8 * ((v374 - *a1) >> 3));
    *v389 = 0x7931433C9A6EB2C6;
    v389[1] = "md::ls::SharedUniqueID]";
    v389[2] = 22;
    v384 = (24 * v385 + 24);
    v390 = a1[1] - *a1;
    v391 = 24 * v385 - v390;
    memcpy(v389 - v390, *a1, v390);
    v392 = *a1;
    *a1 = v391;
    a1[1] = v384;
    a1[2] = 0;
    if (v392)
    {
      operator delete(v392);
    }
  }

  else
  {
    *v374 = 0x7931433C9A6EB2C6;
    v374[1] = "md::ls::SharedUniqueID]";
    v374[2] = 22;
    v384 = v374 + 3;
  }

  a1[1] = v384;
  v393 = a1[2];
  if (v384 >= v393)
  {
    v395 = 0xAAAAAAAAAAAAAAABLL * ((v384 - *a1) >> 3);
    if (v395 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v396 = 0xAAAAAAAAAAAAAAABLL * ((v393 - *a1) >> 3);
    v397 = 2 * v396;
    if (2 * v396 <= v395 + 1)
    {
      v397 = v395 + 1;
    }

    if (v396 >= 0x555555555555555)
    {
      v398 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v398 = v397;
    }

    if (v398)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v398);
    }

    v399 = (8 * ((v384 - *a1) >> 3));
    *v399 = 0x7087983DEF28DBFELL;
    v399[1] = "md::ls::IsOpaque]";
    v399[2] = 16;
    v394 = (24 * v395 + 24);
    v400 = a1[1] - *a1;
    v401 = 24 * v395 - v400;
    memcpy(v399 - v400, *a1, v400);
    v402 = *a1;
    *a1 = v401;
    a1[1] = v394;
    a1[2] = 0;
    if (v402)
    {
      operator delete(v402);
    }
  }

  else
  {
    *v384 = 0x7087983DEF28DBFELL;
    v384[1] = "md::ls::IsOpaque]";
    v384[2] = 16;
    v394 = v384 + 3;
  }

  a1[1] = v394;
  v403 = a1[2];
  if (v394 >= v403)
  {
    v405 = 0xAAAAAAAAAAAAAAABLL * ((v394 - *a1) >> 3);
    if (v405 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v406 = 0xAAAAAAAAAAAAAAABLL * ((v403 - *a1) >> 3);
    v407 = 2 * v406;
    if (2 * v406 <= v405 + 1)
    {
      v407 = v405 + 1;
    }

    if (v406 >= 0x555555555555555)
    {
      v408 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v408 = v407;
    }

    if (v408)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v408);
    }

    v409 = (8 * ((v394 - *a1) >> 3));
    *v409 = 0x73F0259EC1934FB1;
    v409[1] = "md::ls::IsTransparent]";
    v409[2] = 21;
    v404 = (24 * v405 + 24);
    v410 = a1[1] - *a1;
    v411 = 24 * v405 - v410;
    memcpy(v409 - v410, *a1, v410);
    v412 = *a1;
    *a1 = v411;
    a1[1] = v404;
    a1[2] = 0;
    if (v412)
    {
      operator delete(v412);
    }
  }

  else
  {
    *v394 = 0x73F0259EC1934FB1;
    v394[1] = "md::ls::IsTransparent]";
    v394[2] = 21;
    v404 = v394 + 3;
  }

  a1[1] = v404;
  v413 = a1[2];
  if (v404 >= v413)
  {
    v415 = 0xAAAAAAAAAAAAAAABLL * ((v404 - *a1) >> 3);
    if (v415 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v416 = 0xAAAAAAAAAAAAAAABLL * ((v413 - *a1) >> 3);
    v417 = 2 * v416;
    if (2 * v416 <= v415 + 1)
    {
      v417 = v415 + 1;
    }

    if (v416 >= 0x555555555555555)
    {
      v418 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v418 = v417;
    }

    if (v418)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v418);
    }

    v419 = (8 * ((v404 - *a1) >> 3));
    *v419 = 0x499CE17DBD9A1615;
    v419[1] = "md::ls::NeedsZBias]";
    v419[2] = 18;
    v414 = (24 * v415 + 24);
    v420 = a1[1] - *a1;
    v421 = 24 * v415 - v420;
    memcpy(v419 - v420, *a1, v420);
    v422 = *a1;
    *a1 = v421;
    a1[1] = v414;
    a1[2] = 0;
    if (v422)
    {
      operator delete(v422);
    }
  }

  else
  {
    *v404 = 0x499CE17DBD9A1615;
    v404[1] = "md::ls::NeedsZBias]";
    v404[2] = 18;
    v414 = v404 + 3;
  }

  a1[1] = v414;
  v423 = a1[2];
  if (v414 >= v423)
  {
    v425 = 0xAAAAAAAAAAAAAAABLL * ((v414 - *a1) >> 3);
    if (v425 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v426 = 0xAAAAAAAAAAAAAAABLL * ((v423 - *a1) >> 3);
    v427 = 2 * v426;
    if (2 * v426 <= v425 + 1)
    {
      v427 = v425 + 1;
    }

    if (v426 >= 0x555555555555555)
    {
      v428 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v428 = v427;
    }

    if (v428)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v428);
    }

    v429 = (8 * ((v414 - *a1) >> 3));
    *v429 = 0x98A9F01DBB8BCCCELL;
    v429[1] = "md::ls::PreserveHeight]";
    v429[2] = 22;
    v424 = (24 * v425 + 24);
    v430 = a1[1] - *a1;
    v431 = 24 * v425 - v430;
    memcpy(v429 - v430, *a1, v430);
    v432 = *a1;
    *a1 = v431;
    a1[1] = v424;
    a1[2] = 0;
    if (v432)
    {
      operator delete(v432);
    }
  }

  else
  {
    *v414 = 0x98A9F01DBB8BCCCELL;
    v414[1] = "md::ls::PreserveHeight]";
    v414[2] = 22;
    v424 = v414 + 3;
  }

  a1[1] = v424;
  v433 = a1[2];
  if (v424 >= v433)
  {
    v435 = 0xAAAAAAAAAAAAAAABLL * ((v424 - *a1) >> 3);
    if (v435 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v436 = 0xAAAAAAAAAAAAAAABLL * ((v433 - *a1) >> 3);
    v437 = 2 * v436;
    if (2 * v436 <= v435 + 1)
    {
      v437 = v435 + 1;
    }

    if (v436 >= 0x555555555555555)
    {
      v438 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v438 = v437;
    }

    if (v438)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v438);
    }

    v439 = (8 * ((v424 - *a1) >> 3));
    *v439 = 0xE53EF176130D7769;
    v439[1] = "md::ls::InstanceCount]";
    v439[2] = 21;
    v434 = (24 * v435 + 24);
    v440 = a1[1] - *a1;
    v441 = 24 * v435 - v440;
    memcpy(v439 - v440, *a1, v440);
    v442 = *a1;
    *a1 = v441;
    a1[1] = v434;
    a1[2] = 0;
    if (v442)
    {
      operator delete(v442);
    }
  }

  else
  {
    *v424 = 0xE53EF176130D7769;
    v424[1] = "md::ls::InstanceCount]";
    v424[2] = 21;
    v434 = v424 + 3;
  }

  a1[1] = v434;
  v443 = a1[2];
  if (v434 >= v443)
  {
    v445 = 0xAAAAAAAAAAAAAAABLL * ((v434 - *a1) >> 3);
    if (v445 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v446 = 0xAAAAAAAAAAAAAAABLL * ((v443 - *a1) >> 3);
    v447 = 2 * v446;
    if (2 * v446 <= v445 + 1)
    {
      v447 = v445 + 1;
    }

    if (v446 >= 0x555555555555555)
    {
      v448 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v448 = v447;
    }

    if (v448)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v448);
    }

    v449 = (8 * ((v434 - *a1) >> 3));
    *v449 = 0x76B9BA390004E44ELL;
    v449[1] = "md::ls::IsDecal]";
    v449[2] = 15;
    v444 = (24 * v445 + 24);
    v450 = a1[1] - *a1;
    v451 = 24 * v445 - v450;
    memcpy(v449 - v450, *a1, v450);
    v452 = *a1;
    *a1 = v451;
    a1[1] = v444;
    a1[2] = 0;
    if (v452)
    {
      operator delete(v452);
    }
  }

  else
  {
    *v434 = 0x76B9BA390004E44ELL;
    v434[1] = "md::ls::IsDecal]";
    v434[2] = 15;
    v444 = v434 + 3;
  }

  a1[1] = v444;
  v453 = a1[2];
  if (v444 >= v453)
  {
    v455 = 0xAAAAAAAAAAAAAAABLL * ((v444 - *a1) >> 3);
    if (v455 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v456 = 0xAAAAAAAAAAAAAAABLL * ((v453 - *a1) >> 3);
    v457 = 2 * v456;
    if (2 * v456 <= v455 + 1)
    {
      v457 = v455 + 1;
    }

    if (v456 >= 0x555555555555555)
    {
      v458 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v458 = v457;
    }

    if (v458)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v458);
    }

    v459 = (8 * ((v444 - *a1) >> 3));
    *v459 = 0x3E8485C60908F920;
    v459[1] = "md::ls::IsMaterial]";
    v459[2] = 18;
    v454 = (24 * v455 + 24);
    v460 = a1[1] - *a1;
    v461 = 24 * v455 - v460;
    memcpy(v459 - v460, *a1, v460);
    v462 = *a1;
    *a1 = v461;
    a1[1] = v454;
    a1[2] = 0;
    if (v462)
    {
      operator delete(v462);
    }
  }

  else
  {
    *v444 = 0x3E8485C60908F920;
    v444[1] = "md::ls::IsMaterial]";
    v444[2] = 18;
    v454 = v444 + 3;
  }

  a1[1] = v454;
  v463 = a1[2];
  if (v454 >= v463)
  {
    v465 = 0xAAAAAAAAAAAAAAABLL * ((v454 - *a1) >> 3);
    if (v465 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v466 = 0xAAAAAAAAAAAAAAABLL * ((v463 - *a1) >> 3);
    v467 = 2 * v466;
    if (2 * v466 <= v465 + 1)
    {
      v467 = v465 + 1;
    }

    if (v466 >= 0x555555555555555)
    {
      v468 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v468 = v467;
    }

    if (v468)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v468);
    }

    v469 = (8 * ((v454 - *a1) >> 3));
    *v469 = 0x1223E23132DA4D6ALL;
    v469[1] = "md::ls::TriPlanar]";
    v469[2] = 17;
    v464 = (24 * v465 + 24);
    v470 = a1[1] - *a1;
    v471 = 24 * v465 - v470;
    memcpy(v469 - v470, *a1, v470);
    v472 = *a1;
    *a1 = v471;
    a1[1] = v464;
    a1[2] = 0;
    if (v472)
    {
      operator delete(v472);
    }
  }

  else
  {
    *v454 = 0x1223E23132DA4D6ALL;
    v454[1] = "md::ls::TriPlanar]";
    v454[2] = 17;
    v464 = v454 + 3;
  }

  a1[1] = v464;
  v473 = a1[2];
  if (v464 >= v473)
  {
    v475 = 0xAAAAAAAAAAAAAAABLL * ((v464 - *a1) >> 3);
    if (v475 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v476 = 0xAAAAAAAAAAAAAAABLL * ((v473 - *a1) >> 3);
    v477 = 2 * v476;
    if (2 * v476 <= v475 + 1)
    {
      v477 = v475 + 1;
    }

    if (v476 >= 0x555555555555555)
    {
      v478 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v478 = v477;
    }

    if (v478)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v478);
    }

    v479 = (8 * ((v464 - *a1) >> 3));
    *v479 = 0x237F9D3BCC905318;
    v479[1] = "md::ls::IsMercator]";
    v479[2] = 18;
    v474 = (24 * v475 + 24);
    v480 = a1[1] - *a1;
    v481 = 24 * v475 - v480;
    memcpy(v479 - v480, *a1, v480);
    v482 = *a1;
    *a1 = v481;
    a1[1] = v474;
    a1[2] = 0;
    if (v482)
    {
      operator delete(v482);
    }
  }

  else
  {
    *v464 = 0x237F9D3BCC905318;
    v464[1] = "md::ls::IsMercator]";
    v464[2] = 18;
    v474 = v464 + 3;
  }

  a1[1] = v474;
  v483 = a1[2];
  if (v474 >= v483)
  {
    v485 = 0xAAAAAAAAAAAAAAABLL * ((v474 - *a1) >> 3);
    if (v485 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v486 = 0xAAAAAAAAAAAAAAABLL * ((v483 - *a1) >> 3);
    v487 = 2 * v486;
    if (2 * v486 <= v485 + 1)
    {
      v487 = v485 + 1;
    }

    if (v486 >= 0x555555555555555)
    {
      v488 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v488 = v487;
    }

    if (v488)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v488);
    }

    v489 = (8 * ((v474 - *a1) >> 3));
    *v489 = 0x6E6C3F5AAEB152E5;
    v489[1] = "md::ls::SupportsStylizedShading]";
    v489[2] = 31;
    v484 = (24 * v485 + 24);
    v490 = a1[1] - *a1;
    v491 = 24 * v485 - v490;
    memcpy(v489 - v490, *a1, v490);
    v492 = *a1;
    *a1 = v491;
    a1[1] = v484;
    a1[2] = 0;
    if (v492)
    {
      operator delete(v492);
    }
  }

  else
  {
    *v474 = 0x6E6C3F5AAEB152E5;
    v474[1] = "md::ls::SupportsStylizedShading]";
    v474[2] = 31;
    v484 = v474 + 3;
  }

  a1[1] = v484;
  v493 = a1[2];
  if (v484 >= v493)
  {
    v495 = 0xAAAAAAAAAAAAAAABLL * ((v484 - *a1) >> 3);
    if (v495 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_614;
    }

    v496 = 0xAAAAAAAAAAAAAAABLL * ((v493 - *a1) >> 3);
    v497 = 2 * v496;
    if (2 * v496 <= v495 + 1)
    {
      v497 = v495 + 1;
    }

    if (v496 >= 0x555555555555555)
    {
      v498 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v498 = v497;
    }

    if (v498)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v498);
    }

    v499 = (8 * ((v484 - *a1) >> 3));
    *v499 = 0xC48764EACEE66A08;
    v499[1] = "md::ls::SupportsSteepnessDarkening]";
    v499[2] = 34;
    v494 = (24 * v495 + 24);
    v500 = a1[1] - *a1;
    v501 = 24 * v495 - v500;
    memcpy(v499 - v500, *a1, v500);
    v502 = *a1;
    *a1 = v501;
    a1[1] = v494;
    a1[2] = 0;
    if (v502)
    {
      operator delete(v502);
    }
  }

  else
  {
    *v484 = 0xC48764EACEE66A08;
    v484[1] = "md::ls::SupportsSteepnessDarkening]";
    v484[2] = 34;
    v494 = v484 + 3;
  }

  a1[1] = v494;
  v503 = a1[2];
  if (v494 < v503)
  {
    *v494 = 0x763953A644184BA9;
    v494[1] = "md::ls::RenderableHash]";
    v494[2] = 22;
    v504 = (v494 + 3);
    goto LABEL_613;
  }

  v505 = 0xAAAAAAAAAAAAAAABLL * ((v494 - *a1) >> 3);
  if (v505 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_614:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v506 = 0xAAAAAAAAAAAAAAABLL * ((v503 - *a1) >> 3);
  v507 = 2 * v506;
  if (2 * v506 <= v505 + 1)
  {
    v507 = v505 + 1;
  }

  if (v506 >= 0x555555555555555)
  {
    v508 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v508 = v507;
  }

  if (v508)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v508);
  }

  v509 = (8 * ((v494 - *a1) >> 3));
  *v509 = 0x763953A644184BA9;
  v509[1] = "md::ls::RenderableHash]";
  v509[2] = 22;
  v504 = 24 * v505 + 24;
  v510 = a1[1] - *a1;
  v511 = 24 * v505 - v510;
  memcpy(v509 - v510, *a1, v510);
  v512 = *a1;
  *a1 = v511;
  a1[1] = v504;
  a1[2] = 0;
  if (v512)
  {
    operator delete(v512);
  }

LABEL_613:
  a1[1] = v504;
}

void sub_1B2DA2D80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZN4ecs27Runtime9_entitiesIN2md3ita28CreateUnflattenedRenderItemsEJRKNS2_2ls16SliceAssignmentTILNS2_9SliceTypeE2EEERKNS5_26RenderableMeshVertexFormatERKNS5_8TileTypeERKNS5_18IntendedSceneLayerERKNS5_14MeshLayerTypeVEPNS5_17AssociationHandleEPKNS5_13HasMeshHandleEPKNS5_35PositionScaleInfoConstantDataHandleEPKNS5_22ViewConstantDataHandleEPKNS5_27TransformConstantDataHandleEPKNS5_18StyleDataKeyHandleEPKNS5_22StyleSSAODataKeyHandleEPKNS5_26StyleEmissiveDataKeyHandleEPKNS5_28ColorCorrectionDataKeyHandleEPKNS5_29StyleCameraConstantDataHandleEPKNS5_15ColorDataHandleEPKNS5_10IndexRangeEPKNS5_38StyleGroundOcclusionConstantDataHandleERKNS5_17PendingProcessingEPKNS5_13NormalsHandleEPKNS5_23InstanceTransformHandleEPKNS5_9UVsHandleEPKNS5_15ElevationHandleEPKNS5_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS5_35LandCoverSettingsConstantDataHandleEPKNS5_24ShadowConstantDataHandleEPKNS5_25PrepassConstantDataHandleEPKNS5_26ClippingConstantDataHandleEPKNS5_30PlanarParametersCacheKeyHandleEPKNS24_INS25_10TexTextureEEEPKNS24_INS25_15EmissiveTextureEEEPKNS24_INS25_14OverlayTextureEEEPKNS5_29BlendRasterConstantDataHandleEPKNS5_31RasterOverlayConstantDataHandleEPKNS5_26HasStyleAttributeRasterSetEPKNS5_17HasMaterialRasterEPKNS5_16NeedsClimateTintEPKNS5_17CustomRenderStateEPKNS5_19ColorRampDataHandleEPKNS5_14SharedUniqueIDEPKNS5_8IsOpaqueEPKNS5_13IsTransparentEPKNS5_10NeedsZBiasEPKNS5_14PreserveHeightEPKNS5_13InstanceCountEPKNS5_7IsDecalEPKNS5_10IsMaterialEPKNS5_9TriPlanarEPKNS5_10IsMercatorEPKNS5_23SupportsStylizedShadingEPKNS5_26SupportsSteepnessDarkeningEPKNS5_14RenderableHashEEJEEEvOT_NSt3__113type_identityINS4R_5tupleIJDpT0_EEEEERKNS_16ComponentFiltersIJDpT1_EEE(uint64_t a1, uint64_t **a2)
{
  v104 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v92 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)2>>(v3);
  v90 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableMeshVertexFormat>(v3);
  v88 = ecs2::BasicRegistry<void>::storage<md::ls::TileType>(v3);
  v86 = ecs2::BasicRegistry<void>::storage<md::ls::IntendedSceneLayer>(v3);
  v83 = ecs2::BasicRegistry<void>::storage<md::ls::MeshLayerTypeV>(v3);
  v98 = ecs2::BasicRegistry<void>::storage<md::ls::AssociationHandle>(v3);
  HasMesh = ecs2::BasicRegistry<void>::storage<md::ls::HasMeshHandle>(v3);
  v96 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(v3);
  v95 = ecs2::BasicRegistry<void>::storage<md::ls::ViewConstantDataHandle>(v3);
  v94 = ecs2::BasicRegistry<void>::storage<md::ls::TransformConstantDataHandle>(v3);
  v93 = ecs2::BasicRegistry<void>::storage<md::ls::StyleDataKeyHandle>(v3);
  v91 = ecs2::BasicRegistry<void>::storage<md::ls::StyleSSAODataKeyHandle>(v3);
  v89 = ecs2::BasicRegistry<void>::storage<md::ls::StyleEmissiveDataKeyHandle>(v3);
  v87 = ecs2::BasicRegistry<void>::storage<md::ls::ColorCorrectionDataKeyHandle>(v3);
  v85 = ecs2::BasicRegistry<void>::storage<md::ls::StyleCameraConstantDataHandle>(v3);
  v84 = ecs2::BasicRegistry<void>::storage<md::ls::ColorDataHandle>(v3);
  v82 = ecs2::BasicRegistry<void>::storage<md::ls::IndexRange>(v3);
  v81 = ecs2::BasicRegistry<void>::storage<md::ls::StyleGroundOcclusionConstantDataHandle>(v3);
  v66 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessing>(v3);
  v80 = ecs2::BasicRegistry<void>::storage<md::ls::NormalsHandle>(v3);
  v79 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceTransformHandle>(v3);
  v78 = ecs2::BasicRegistry<void>::storage<md::ls::UVsHandle>(v3);
  v77 = ecs2::BasicRegistry<void>::storage<md::ls::ElevationHandle>(v3);
  v76 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(v3);
  v75 = ecs2::BasicRegistry<void>::storage<md::ls::LandCoverSettingsConstantDataHandle>(v3);
  v74 = ecs2::BasicRegistry<void>::storage<md::ls::ShadowConstantDataHandle>(v3);
  v73 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassConstantDataHandle>(v3);
  v72 = ecs2::BasicRegistry<void>::storage<md::ls::ClippingConstantDataHandle>(v3);
  v71 = ecs2::BasicRegistry<void>::storage<md::ls::PlanarParametersCacheKeyHandle>(v3);
  v70 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::TexTexture>>(v3);
  v69 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::EmissiveTexture>>(v3);
  v68 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(v3);
  v67 = ecs2::BasicRegistry<void>::storage<md::ls::BlendRasterConstantDataHandle>(v3);
  v65 = ecs2::BasicRegistry<void>::storage<md::ls::RasterOverlayConstantDataHandle>(v3);
  HasStyleAttributeRaster = ecs2::BasicRegistry<void>::storage<md::ls::HasStyleAttributeRasterSet>(v3);
  HasMaterial = ecs2::BasicRegistry<void>::storage<md::ls::HasMaterialRaster>(v3);
  v62 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsClimateTint>(v3);
  v61 = ecs2::BasicRegistry<void>::storage<md::ls::CustomRenderState>(v3);
  v60 = ecs2::BasicRegistry<void>::storage<md::ls::ColorRampDataHandle>(v3);
  v59 = ecs2::BasicRegistry<void>::storage<md::ls::SharedUniqueID>(v3);
  v58 = ecs2::BasicRegistry<void>::storage<md::ls::IsOpaque>(v3);
  v57 = ecs2::BasicRegistry<void>::storage<md::ls::IsTransparent>(v3);
  v56 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsZBias>(v3);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PreserveHeight>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::InstanceCount>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::IsDecal>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::IsMaterial>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::TriPlanar>(v3);
  v9 = ecs2::BasicRegistry<void>::storage<md::ls::IsMercator>(v3);
  v10 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsStylizedShading>(v3);
  v11 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsSteepnessDarkening>(v3);
  v12 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableHash>(v3);
  *__src = v92;
  *&__src[8] = v90;
  *&__src[16] = v88;
  *&__src[24] = v86;
  v13 = 8;
  v14 = v92;
  v15 = __src;
  *&__src[32] = v83;
  *&__src[40] = v66;
  do
  {
    if (*(*&__src[v13] + 40) - *(*&__src[v13] + 32) < *(v14 + 40) - *(v14 + 32))
    {
      v14 = *&__src[v13];
      v15 = &__src[v13];
    }

    v13 += 8;
  }

  while (v13 != 48);
  v16 = *v15;
  *&__src[16] = v92;
  *&__src[24] = v90;
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);
  *&__src[32] = v88;
  *&__src[40] = v86;
  *&__src[48] = v83;
  *&__src[56] = v98;
  *&__src[64] = HasMesh;
  *&__src[72] = v96;
  *&__src[80] = v95;
  *&__src[88] = v94;
  *&__src[96] = v93;
  *&__src[104] = v91;
  *&__src[112] = v89;
  *&__src[120] = v87;
  *&__src[128] = v85;
  *&__src[136] = v84;
  *&__src[144] = v82;
  *&__src[152] = v81;
  *&__src[160] = v66;
  *&__src[168] = v80;
  *&__src[176] = v79;
  *&__src[184] = v78;
  *&__src[192] = v77;
  *__src = v17;
  *&__src[8] = v18;
  *&__src[200] = v76;
  *&__src[208] = v75;
  *&__src[216] = v74;
  *&__src[224] = v73;
  *&__src[232] = v72;
  *&__src[240] = v71;
  *&__src[248] = v70;
  *&__src[256] = v69;
  *&__src[264] = v68;
  *&__src[272] = v67;
  *&__src[280] = v65;
  *&__src[288] = HasStyleAttributeRaster;
  *&__src[296] = HasMaterial;
  *&__src[304] = v62;
  *&__src[312] = v61;
  *&__src[320] = v60;
  *&__src[328] = v59;
  *&__src[336] = v58;
  *&__src[344] = v57;
  *&__src[352] = v56;
  *&__src[360] = v4;
  *&__src[368] = v5;
  *&__src[376] = v6;
  *&__src[384] = v7;
  *&__src[392] = v8;
  *&__src[400] = v9;
  *&__src[408] = v10;
  *&__src[416] = v11;
  *&__src[424] = v12;
  v55 = v18;
  if (v17 != v18)
  {
    v19 = *&__src[8];
    v20 = *__src;
    do
    {
      if (_ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16SliceAssignmentTILNS3_9SliceTypeE2EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_18IntendedSceneLayerERKNS4_14MeshLayerTypeVEPNS4_17AssociationHandleEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleERKNS4_17PendingProcessingEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS23_INS24_10TexTextureEEEPKNS23_INS24_15EmissiveTextureEEEPKNS23_INS24_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_14RenderableHashEEEENS2_IJEEEEE11containsAllIJS8_SB_SE_SH_SK_S1P_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(__src, *v17, v17[1]))
      {
        break;
      }

      v20 += 2;
      *__src = v20;
      v17 = v20;
    }

    while (v20 != v19);
  }

  memcpy(__dst, __src, sizeof(__dst));
  v21 = __dst[0];
  if (__dst[0] != v55)
  {
    v22 = _ZTWN4ecs27Runtime11_localStateE();
    v23 = _ZTWN4ecs27Runtime11_stackIndexE();
    v24 = 0;
    v53 = v22;
    v54 = v23;
    while (1)
    {
      v25 = v21[1];
      v26 = v25 >> 6;
      v27 = v25 & 0x3F;
      v28 = *v21;
      v29 = *(__dst[7] + 8);
      if (v26 < (*(__dst[7] + 16) - v29) >> 3 && (v30 = *(v29 + 8 * v26)) != 0 && *(v30 + 4 * v27) == v28)
      {
        v31 = *(v30 + 4 * v27 + 2);
        v32 = *(*(__dst[7] + 56) + ((v31 >> 3) & 0x1FF8)) + 24 * (v31 & 0x3F);
      }

      else
      {
        v32 = 0;
      }

      v33 = *(__dst[53] + 8);
      v99 = v24;
      if (v26 < (*(__dst[53] + 16) - v33) >> 3 && (v34 = *(v33 + 8 * v26)) != 0)
      {
        v35 = v22;
        if (*(v34 + 4 * v27) == v28)
        {
          v36 = v32;
          goto LABEL_22;
        }
      }

      else
      {
        v35 = v22;
      }

      v36 = v32;
LABEL_22:
      *(v35 + 104 * *v23 + 24) = *v21;
      ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a2);
      v37 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a2);
      v38 = *a2;
      v39 = ecs2::ExecutionTaskContext::currentEntity(v37);
      ecs2::addComponent<md::ls::FinishedProcessing>(v38, v39);
      Entity = ecs2::ExecutionTaskContext::createEntity((*a2)[1]);
      if (v36)
      {
        createRenderItemForEntity(&v101, Entity, v37, v36);
        if (v102 != 1)
        {
          if (!v102)
          {
            *__src = v101;
            *&__src[16] = 48;
            ecs2::addComponent<md::ls::RenderItemID>(*a2, Entity, __src);
          }

          std::__throw_bad_variant_access[abi:nn200100]();
        }
      }

      else
      {
        LOBYTE(v101) = 2;
      }

      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v41 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = "";
        if (v101 <= 2uLL)
        {
          v42 = off_1E7B3D650[v101];
        }

        *__src = 136315906;
        *&__src[4] = v42;
        *&__src[12] = 2080;
        *&__src[14] = "false";
        *&__src[22] = 2080;
        *&__src[24] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/CreateRenderItems.mm";
        *&__src[32] = 1024;
        *&__src[34] = 568;
        _os_log_impl(&dword_1B2754000, v41, OS_LOG_TYPE_ERROR, "Failed to create unflattened render item (%s): Assertion with expression - %s : Failed in file - %s line - %i", __src, 0x26u);
      }

      ecs2::ExecutionTaskContext::destroyEntity(*a2, Entity);
      v24 = v99 + 1;
      v43 = __dst[1];
      v44 = (__dst[0] + 4);
      v22 = v53;
      v23 = v54;
      while (1)
      {
        v21 = v44;
        __dst[0] = v44;
        if (v44 == v43)
        {
          break;
        }

        IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_14RenderableHashEEEENS2_IJEEEEE11containsAllIJS8_SB_SE_SH_SK_S1P_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE = _ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16SliceAssignmentTILNS3_9SliceTypeE2EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_18IntendedSceneLayerERKNS4_14MeshLayerTypeVEPNS4_17AssociationHandleEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleERKNS4_17PendingProcessingEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS23_INS24_10TexTextureEEEPKNS23_INS24_15EmissiveTextureEEEPKNS23_INS24_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_14RenderableHashEEEENS2_IJEEEEE11containsAllIJS8_SB_SE_SH_SK_S1P_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(__dst, *v44, v44[1]);
        v44 = v21 + 2;
        if (IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_14RenderableHashEEEENS2_IJEEEEE11containsAllIJS8_SB_SE_SH_SK_S1P_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE)
        {
          v43 = v21;
          break;
        }
      }

      if (v43 == v55)
      {
        v46 = *(a1 + 8);
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>();
        *(v46 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::AssociationHandle>(void)::metadata) = *(v46 + 4096);
        goto LABEL_40;
      }
    }
  }

  v22 = _ZTWN4ecs27Runtime11_localStateE();
  v23 = _ZTWN4ecs27Runtime11_stackIndexE();
  v24 = 0;
LABEL_40:
  *(v22 + 104 * *v23 + 24) = -65536;
  v47 = v22 + 104 * *v23;
  v48 = *(v47 + 92);
  *(v47 + 92) = v48 + 1;
  *(v47 + 4 * v48 + 28) = v24;
  v49 = v22 + 104 * *v23;
  v51 = *(v49 + 92);
  v50 = (v49 + 92);
  if (v51 >= 0x10)
  {
    *v50 = 0;
  }
}

void sub_1B2DA4CD4(_Unwind_Exception *a1)
{
  if (STACK[0x3A8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](STACK[0x3A8]);
  }

  _Unwind_Resume(a1);
}

BOOL _ZNK4ecs212ViewIteratorIJvNSt3__15tupleIJRKN2md2ls16SliceAssignmentTILNS3_9SliceTypeE2EEERKNS4_26RenderableMeshVertexFormatERKNS4_8TileTypeERKNS4_18IntendedSceneLayerERKNS4_14MeshLayerTypeVEPNS4_17AssociationHandleEPKNS4_13HasMeshHandleEPKNS4_35PositionScaleInfoConstantDataHandleEPKNS4_22ViewConstantDataHandleEPKNS4_27TransformConstantDataHandleEPKNS4_18StyleDataKeyHandleEPKNS4_22StyleSSAODataKeyHandleEPKNS4_26StyleEmissiveDataKeyHandleEPKNS4_28ColorCorrectionDataKeyHandleEPKNS4_29StyleCameraConstantDataHandleEPKNS4_15ColorDataHandleEPKNS4_10IndexRangeEPKNS4_38StyleGroundOcclusionConstantDataHandleERKNS4_17PendingProcessingEPKNS4_13NormalsHandleEPKNS4_23InstanceTransformHandleEPKNS4_9UVsHandleEPKNS4_15ElevationHandleEPKNS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEPKNS4_35LandCoverSettingsConstantDataHandleEPKNS4_24ShadowConstantDataHandleEPKNS4_25PrepassConstantDataHandleEPKNS4_26ClippingConstantDataHandleEPKNS4_30PlanarParametersCacheKeyHandleEPKNS23_INS24_10TexTextureEEEPKNS23_INS24_15EmissiveTextureEEEPKNS23_INS24_14OverlayTextureEEEPKNS4_29BlendRasterConstantDataHandleEPKNS4_31RasterOverlayConstantDataHandleEPKNS4_26HasStyleAttributeRasterSetEPKNS4_17HasMaterialRasterEPKNS4_16NeedsClimateTintEPKNS4_17CustomRenderStateEPKNS4_19ColorRampDataHandleEPKNS4_14SharedUniqueIDEPKNS4_8IsOpaqueEPKNS4_13IsTransparentEPKNS4_10NeedsZBiasEPKNS4_14PreserveHeightEPKNS4_13InstanceCountEPKNS4_7IsDecalEPKNS4_10IsMaterialEPKNS4_9TriPlanarEPKNS4_10IsMercatorEPKNS4_23SupportsStylizedShadingEPKNS4_26SupportsSteepnessDarkeningEPKNS4_14RenderableHashEEEENS2_IJEEEEE11containsAllIJS8_SB_SE_SH_SK_S1P_EEEbRKNS_6EntityENS1_13type_identityINS2_IJDpT_EEEEE(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[6] + 8), v3 < (*(a1[6] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0 && *(v13 + 4 * (a3 & 0x3F)) == a2 && (v14 = *(a1[20] + 8), v3 < (*(a1[20] + 16) - v14) >> 3) && (v15 = *(v14 + 8 * v3)) != 0)
  {
    return *(v15 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls14RenderableHashEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderableHash>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderableHash>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderableHash>();
    unk_1EB83D7E0 = 0x763953A644184BA9;
    qword_1EB83D7E8 = "md::ls::RenderableHash]";
    qword_1EB83D7F0 = 22;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableHash,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A505D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RenderableHash,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RenderableHash,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A505F0;
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

void ecs2::storage<ecs2::Entity,md::ls::RenderableHash,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RenderableHash,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RenderableHash,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A505D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RenderableHash,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26SupportsSteepnessDarkeningEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SupportsSteepnessDarkening>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SupportsSteepnessDarkening>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SupportsSteepnessDarkening,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FD10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SupportsSteepnessDarkening,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FD10;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10IsMaterialEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsMaterial>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsMaterial>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::IsMaterial>();
    *algn_1EB83DC78 = 0x3E8485C60908F920;
    qword_1EB83DC80 = "md::ls::IsMaterial]";
    qword_1EB83DC88 = 18;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsMaterial,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51800;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::IsMaterial,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::IsMaterial,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51820;
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

void ecs2::storage<ecs2::Entity,md::ls::IsMaterial,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::IsMaterial,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsMaterial,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51800;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::IsMaterial,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls8IsOpaqueEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::IsOpaque>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsOpaque>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsOpaque,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A513A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsOpaque,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A513A0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26HasStyleAttributeRasterSetEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>(void)::metadata;
  HasStyleAttributeRaster = ecs2::BasicRegistry<void>::storage<md::ls::HasStyleAttributeRasterSet>(v3);
  v6 = v2 >> 22;
  v7 = HasStyleAttributeRaster[1];
  if (v2 >> 22 < (HasStyleAttributeRaster[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = HasStyleAttributeRaster;
        v11 = HasStyleAttributeRaster[31];
        v12 = HasStyleAttributeRaster[32];
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasStyleAttributeRasterSet>();
    unk_1EB83C690 = 0x985FB09D9DF9959FLL;
    qword_1EB83C698 = "md::ls::HasStyleAttributeRasterSet]";
    qword_1EB83C6A0 = 34;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasStyleAttributeRasterSet,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52750;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::HasStyleAttributeRasterSet,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::HasStyleAttributeRasterSet,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52770;
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

void ecs2::storage<ecs2::Entity,md::ls::HasStyleAttributeRasterSet,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::HasStyleAttributeRasterSet,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::HasStyleAttributeRasterSet,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52750;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::HasStyleAttributeRasterSet,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31RasterOverlayConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RasterOverlayConstantDataHandle>(v3);
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
        v16 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 40 * (v13 & 0x3F);
        v17 = *v16;
        v18 = *(v16 + 16);
        v19 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 40 * (v14 & 0x3F);
        v20 = *(v16 + 32);
        v21 = *(v19 + 32);
        v22 = *(v19 + 16);
        *v16 = *v19;
        *(v16 + 16) = v22;
        *(v16 + 32) = v21;
        *(v19 + 32) = v20;
        *v19 = v17;
        *(v19 + 16) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RasterOverlayConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RasterOverlayConstantDataHandle>();
    *algn_1EB83BBB8 = 0xDC66BF6D06F6D0BALL;
    qword_1EB83BBC0 = "md::ls::RasterOverlayConstantDataHandle]";
    qword_1EB83BBC8 = 39;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RasterOverlayConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52000;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RasterOverlayConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RasterOverlayConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A52020;
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

void ecs2::storage<ecs2::Entity,md::ls::RasterOverlayConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RasterOverlayConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RasterOverlayConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A52000;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RasterOverlayConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29BlendRasterConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::BlendRasterConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::BlendRasterConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::BlendRasterConstantDataHandle>();
    unk_1EB83BDF0 = 0xDF0018B9242ADFDBLL;
    qword_1EB83BDF8 = "md::ls::BlendRasterConstantDataHandle]";
    qword_1EB83BE00 = 37;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BlendRasterConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51F30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::BlendRasterConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::BlendRasterConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51F50;
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

void ecs2::storage<ecs2::Entity,md::ls::BlendRasterConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::BlendRasterConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BlendRasterConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51F30;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::BlendRasterConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci14OverlayTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(v3);
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
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>();
    *algn_1EB83CE38 = 0xD2D99CA7D5B116C8;
    qword_1EB83CE40 = "md::ls::TextureHandleForType<DaVinci::OverlayTexture>]";
    qword_1EB83CE48 = 53;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51E60;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A51E80;
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

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51E60;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::OverlayTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls35LandCoverSettingsConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::LandCoverSettingsConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::LandCoverSettingsConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A5BE78;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A5BE98;
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

void ecs2::storage<ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A5BE78;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::LandCoverSettingsConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(v3);
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
        v20 = *(v19 + 16 * v18);
        *(v19 + 16 * v18) = *(v17 + 16 * v15);
        *(v17 + 16 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>();
    *algn_1EB83CE58 = 0xDD9825BCFA7911B2;
    qword_1EB83CE60 = "md::ls::TextureHandleForType<DaVinci::DiffuseTexture>]";
    qword_1EB83CE68 = 53;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51980;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A519A0;
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

void ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A51980;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29StyleCameraConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleCameraConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleCameraConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleCameraConstantDataHandle>();
    *algn_1EB83BD78 = 0x96F87A2692FE4013;
    qword_1EB83BD80 = "md::ls::StyleCameraConstantDataHandle]";
    qword_1EB83BD88 = 37;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleCameraConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50D20;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleCameraConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleCameraConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50D40;
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

void ecs2::storage<ecs2::Entity,md::ls::StyleCameraConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleCameraConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleCameraConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50D20;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleCameraConstantDataHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22StyleSSAODataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleSSAODataKeyHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleSSAODataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50B80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleSSAODataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleSSAODataKeyHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50BA0;
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

void ecs2::storage<ecs2::Entity,md::ls::StyleSSAODataKeyHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleSSAODataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleSSAODataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50B80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleSSAODataKeyHandle,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls18StyleDataKeyHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleDataKeyHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleDataKeyHandle>();
    unk_1EB83D110 = 0x1BB343378E1EE5BLL;
    qword_1EB83D118 = "md::ls::StyleDataKeyHandle]";
    qword_1EB83D120 = 26;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50AB0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleDataKeyHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A50AD0;
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

void ecs2::storage<ecs2::Entity,md::ls::StyleDataKeyHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleDataKeyHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleDataKeyHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50AB0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleDataKeyHandle,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateUnflattenedRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateUnflattenedRenderItems>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8C80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL ecs2::ViewIterator<void,std::tuple<md::ls::SliceAssignmentT<(md::SliceType)5> const&,md::ls::RenderableMeshVertexFormat const&,md::ls::TileType const&,md::ls::PendingProcessingDepthPrePass const&,md::ls::AssociationHandle *,md::ls::HasMeshHandle const*,md::ls::PositionScaleInfoConstantDataHandle const*,md::ls::ViewConstantDataHandle const*,md::ls::TransformConstantDataHandle const*,md::ls::IndexRange const*,md::ls::NormalsHandle const*,md::ls::InstanceTransformHandle const*,md::ls::UVsHandle const*,md::ls::NeedsZBias const*,md::ls::ElevationHandle const*,md::ls::PrepassShadowConstantDataHandle const&,md::ls::PrepassConstantDataHandle const&,md::ls::PreserveHeight const*,md::ls::ClippingConstantDataHandle const*,md::ls::IsMercator const*,md::ls::InstanceCount const*>,std::tuple<>>::containsAll<md::ls::SliceAssignmentT<(md::SliceType)5> const,md::ls::RenderableMeshVertexFormat const,md::ls::TileType const,md::ls::PendingProcessingDepthPrePass const,md::ls::PrepassShadowConstantDataHandle const,md::ls::PrepassConstantDataHandle const>(void *a1, unsigned __int16 a2, unsigned __int16 a3)
{
  v3 = a3 >> 6;
  v4 = *(a1[2] + 8);
  if (v3 < (*(a1[2] + 16) - v4) >> 3 && (v5 = *(v4 + 8 * v3)) != 0 && *(v5 + 4 * (a3 & 0x3F)) == a2 && (v6 = *(a1[3] + 8), v3 < (*(a1[3] + 16) - v6) >> 3) && (v7 = *(v6 + 8 * v3)) != 0 && *(v7 + 4 * (a3 & 0x3F)) == a2 && (v8 = *(a1[4] + 8), v3 < (*(a1[4] + 16) - v8) >> 3) && (v9 = *(v8 + 8 * v3)) != 0 && *(v9 + 4 * (a3 & 0x3F)) == a2 && (v10 = *(a1[5] + 8), v3 < (*(a1[5] + 16) - v10) >> 3) && (v11 = *(v10 + 8 * v3)) != 0 && *(v11 + 4 * (a3 & 0x3F)) == a2 && (v12 = *(a1[17] + 8), v3 < (*(a1[17] + 16) - v12) >> 3) && (v13 = *(v12 + 8 * v3)) != 0 && *(v13 + 4 * (a3 & 0x3F)) == a2 && (v14 = *(a1[18] + 8), v3 < (*(a1[18] + 16) - v14) >> 3) && (v15 = *(v14 + 8 * v3)) != 0)
  {
    return *(v15 + 4 * (a3 & 0x3F)) == a2;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls31PrepassShadowConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassShadowConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PrepassShadowConstantDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PrepassShadowConstantDataHandle>();
    *algn_1EB83BBD8 = 0x70E01531993BB945;
    qword_1EB83BBE0 = "md::ls::PrepassShadowConstantDataHandle]";
    qword_1EB83BBE8 = 39;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PrepassShadowConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A530D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::PrepassShadowConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::PrepassShadowConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A530F0;
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

void ecs2::storage<ecs2::Entity,md::ls::PrepassShadowConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::PrepassShadowConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PrepassShadowConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A530D0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::PrepassShadowConstantDataHandle,64ul>::~storage(a1);
}

void ecs2::BasicRegistry<void>::remove<md::ls::PendingProcessingDepthPrePass>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessingDepthPrePass>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      if (*(v8 + 4 * ((a2 >> 16) & 0x3F)) == a2)
      {
        v9 = v5;
        v10 = v5[25];
        for (i = v5[26]; v10 != i; v10 += 32)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v10 + 24), a2);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v9, a2, WORD1(a2));
      }
    }
  }

  v12 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v12 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingDepthPrePass>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingProcessingDepthPrePass>();
    unk_1EB83BDA0 = 0xB7D4B4C2109DE954;
    qword_1EB83BDA8 = "md::ls::PendingProcessingDepthPrePass]";
    qword_1EB83BDB0 = 37;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingProcessingDepthPrePass,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41A80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingProcessingDepthPrePass,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41A80;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE5EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)5>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)5>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A33AA8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)5>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A33AA8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateDepthPrePassRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateDepthPrePassRenderItems>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8BA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ecs2::BasicRegistry<void>::remove<md::ls::PendingProcessingShadow>(uint64_t a1, unint64_t a2)
{
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PendingProcessingShadow>(a1);
  v6 = a2 >> 22;
  v7 = v5[1];
  if (v6 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      if (*(v8 + 4 * ((a2 >> 16) & 0x3F)) == a2)
      {
        v9 = v5;
        v10 = v5[25];
        for (i = v5[26]; v10 != i; v10 += 32)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v10 + 24), a2);
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v9, a2, WORD1(a2));
      }
    }
  }

  v12 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v12 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PendingProcessingShadow>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PendingProcessingShadow>();
    *algn_1EB83CA08 = 0xEC85A518158AB507;
    qword_1EB83CA10 = "md::ls::PendingProcessingShadow]";
    qword_1EB83CA18 = 31;
  }
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingProcessingShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41A18;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::PendingProcessingShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A41A18;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16SliceAssignmentTILNS6_9SliceTypeE4EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)4>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)4>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)4>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A339B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)4>,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A339B0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

__n128 std::__function::__func<ecs2::ForwardToExecute<md::ita::CreateShadowPassRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::CreateShadowPassRenderItems>>,void ()(ecs2::Runtime &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F29F8AD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZZN3gdc16forEachInnerTypeINSt3__15tupleIJN2md2ls16MeshRenderableIDENS4_16SliceAssignmentTILNS3_9SliceTypeE7EEENS4_26RenderableMeshVertexFormatENS4_8TileTypeENS4_17PendingProcessingENS4_14MeshLayerTypeVENS4_18IntendedSceneLayerENS4_13HasMeshHandleENS4_35PositionScaleInfoConstantDataHandleENS4_22ViewConstantDataHandleENS4_27TransformConstantDataHandleENS4_18StyleDataKeyHandleENS4_22StyleSSAODataKeyHandleENS4_26StyleEmissiveDataKeyHandleENS4_28ColorCorrectionDataKeyHandleENS4_29StyleCameraConstantDataHandleENS4_15ColorDataHandleENS4_10IndexRangeENS4_38StyleGroundOcclusionConstantDataHandleENS4_26SharedMaterialZIndexHandleENS4_13NormalsHandleENS4_23InstanceTransformHandleENS4_9UVsHandleENS4_31StyleRouteLineMaskDataKeyHandleENS4_15ElevationHandleENS4_20TextureHandleForTypeIN7DaVinci14DiffuseTextureEEENS4_35LandCoverSettingsConstantDataHandleENS4_24ShadowConstantDataHandleENS4_25PrepassConstantDataHandleENS4_26ClippingConstantDataHandleENS4_30PlanarParametersCacheKeyHandleENSW_INSX_10TexTextureEEENSW_INSX_15EmissiveTextureEEENSW_INSX_14OverlayTextureEEENS4_29BlendRasterConstantDataHandleENS4_31RasterOverlayConstantDataHandleENS4_40FlyoverCommonTransformConstantDataHandleENS4_30FlyoverCommonS2TransformHandleENS4_28FlyoverCommonTexcoordsHandleENS4_27FlyoverCommonMaterialHandleENS4_29FlyoverClipConstantDataHandleENSW_IN7Flyover14DiffuseTextureEEENSW_INS1I_12NightTextureEEENS4_26HasStyleAttributeRasterSetENS4_17HasMaterialRasterENS4_16NeedsClimateTintENS4_17CustomRenderStateENS4_19ColorRampDataHandleENS4_14SharedUniqueIDENS4_8IsOpaqueENS4_13IsTransparentENS4_10NeedsZBiasENS4_14PreserveHeightENS4_13InstanceCountENS4_7IsDecalENS4_10IsMaterialENS4_9TriPlanarENS4_10IsMercatorENS4_23SupportsStylizedShadingENS4_26SupportsSteepnessDarkeningENS4_15FlyoverInstanceENS4_12CustomZIndexENS4_14RenderableHashENS4_21PredefinedRenderStateEEEEZNS_18typelist_as_vectorIS28_EENS1_6vectorINS_8TypeInfoENS1_9allocatorIS2B_EEEEvEUlTyvE_EEvOT0_ENKUlTpTnmNS1_16integer_sequenceImJXspT_EEEEE_clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15ELm16ELm17ELm18ELm19ELm20ELm21ELm22ELm23ELm24ELm25ELm26ELm27ELm28ELm29ELm30ELm31ELm32ELm33ELm34ELm35ELm36ELm37ELm38ELm39ELm40ELm41ELm42ELm43ELm44ELm45ELm46ELm47ELm48ELm49ELm50ELm51ELm52ELm53ELm54ELm55ELm56ELm57ELm58ELm59ELm60ELm61ELm62ELm63EEEEDaS2J_(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *v2) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v9);
    }

    v10 = 24 * v6;
    *v10 = 0x8DCCA4FD35258189;
    *(v10 + 8) = "md::ls::MeshRenderableID]";
    *(v10 + 16) = 24;
    v5 = 24 * v6 + 24;
    v11 = *(v2 + 8) - *v2;
    v12 = 24 * v6 - v11;
    memcpy((v10 - v11), *v2, v11);
    v13 = *v2;
    *v2 = v12;
    *(v2 + 8) = v5;
    *(v2 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v3 = 0x8DCCA4FD35258189;
    v3[1] = "md::ls::MeshRenderableID]";
    v3[2] = 24;
    v5 = (v3 + 3);
  }

  *(v2 + 8) = v5;
  v14 = *a1;
  v15 = *(*a1 + 8);
  v16 = *(*a1 + 16);
  if (v15 >= v16)
  {
    v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *v14) >> 3);
    v19 = v18 + 1;
    if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v20 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *v14) >> 3);
    if (2 * v20 > v19)
    {
      v19 = 2 * v20;
    }

    if (v20 >= 0x555555555555555)
    {
      v21 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v21);
    }

    v22 = 24 * v18;
    *v22 = 0xAC1208F38C3ADC06;
    *(v22 + 8) = "md::ls::SliceAssignmentT<md::SliceType::Main>]";
    *(v22 + 16) = 45;
    v17 = 24 * v18 + 24;
    v23 = *(v14 + 8) - *v14;
    v24 = 24 * v18 - v23;
    memcpy((v22 - v23), *v14, v23);
    v25 = *v14;
    *v14 = v24;
    *(v14 + 8) = v17;
    *(v14 + 16) = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v15 = 0xAC1208F38C3ADC06;
    v15[1] = "md::ls::SliceAssignmentT<md::SliceType::Main>]";
    v15[2] = 45;
    v17 = (v15 + 3);
  }

  *(v14 + 8) = v17;
  v26 = *a1;
  v27 = *(*a1 + 8);
  v28 = *(*a1 + 16);
  if (v27 >= v28)
  {
    v30 = 0xAAAAAAAAAAAAAAABLL * ((v27 - *v26) >> 3);
    v31 = v30 + 1;
    if (v30 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v32 = 0xAAAAAAAAAAAAAAABLL * ((v28 - *v26) >> 3);
    if (2 * v32 > v31)
    {
      v31 = 2 * v32;
    }

    if (v32 >= 0x555555555555555)
    {
      v33 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v33 = v31;
    }

    if (v33)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v33);
    }

    v34 = 24 * v30;
    *v34 = 0xE8C803AC798645E1;
    *(v34 + 8) = "md::ls::RenderableMeshVertexFormat]";
    *(v34 + 16) = 34;
    v29 = 24 * v30 + 24;
    v35 = *(v26 + 8) - *v26;
    v36 = 24 * v30 - v35;
    memcpy((v34 - v35), *v26, v35);
    v37 = *v26;
    *v26 = v36;
    *(v26 + 8) = v29;
    *(v26 + 16) = 0;
    if (v37)
    {
      operator delete(v37);
    }
  }

  else
  {
    *v27 = 0xE8C803AC798645E1;
    v27[1] = "md::ls::RenderableMeshVertexFormat]";
    v27[2] = 34;
    v29 = (v27 + 3);
  }

  *(v26 + 8) = v29;
  v38 = *a1;
  v39 = *(*a1 + 8);
  v40 = *(*a1 + 16);
  if (v39 >= v40)
  {
    v42 = 0xAAAAAAAAAAAAAAABLL * ((v39 - *v38) >> 3);
    v43 = v42 + 1;
    if (v42 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v44 = 0xAAAAAAAAAAAAAAABLL * ((v40 - *v38) >> 3);
    if (2 * v44 > v43)
    {
      v43 = 2 * v44;
    }

    if (v44 >= 0x555555555555555)
    {
      v45 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v45 = v43;
    }

    if (v45)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v45);
    }

    v46 = 24 * v42;
    *v46 = 0x751B872B282C3971;
    *(v46 + 8) = "md::ls::TileType]";
    *(v46 + 16) = 16;
    v41 = 24 * v42 + 24;
    v47 = *(v38 + 8) - *v38;
    v48 = 24 * v42 - v47;
    memcpy((v46 - v47), *v38, v47);
    v49 = *v38;
    *v38 = v48;
    *(v38 + 8) = v41;
    *(v38 + 16) = 0;
    if (v49)
    {
      operator delete(v49);
    }
  }

  else
  {
    *v39 = 0x751B872B282C3971;
    v39[1] = "md::ls::TileType]";
    v39[2] = 16;
    v41 = (v39 + 3);
  }

  *(v38 + 8) = v41;
  v50 = *a1;
  v51 = *(*a1 + 8);
  v52 = *(*a1 + 16);
  if (v51 >= v52)
  {
    v54 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *v50) >> 3);
    v55 = v54 + 1;
    if (v54 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v56 = 0xAAAAAAAAAAAAAAABLL * ((v52 - *v50) >> 3);
    if (2 * v56 > v55)
    {
      v55 = 2 * v56;
    }

    if (v56 >= 0x555555555555555)
    {
      v57 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v57 = v55;
    }

    if (v57)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v57);
    }

    v58 = 24 * v54;
    *v58 = 0x75DBD6381F1903FFLL;
    *(v58 + 8) = "md::ls::PendingProcessing]";
    *(v58 + 16) = 25;
    v53 = 24 * v54 + 24;
    v59 = *(v50 + 8) - *v50;
    v60 = 24 * v54 - v59;
    memcpy((v58 - v59), *v50, v59);
    v61 = *v50;
    *v50 = v60;
    *(v50 + 8) = v53;
    *(v50 + 16) = 0;
    if (v61)
    {
      operator delete(v61);
    }
  }

  else
  {
    *v51 = 0x75DBD6381F1903FFLL;
    v51[1] = "md::ls::PendingProcessing]";
    v51[2] = 25;
    v53 = (v51 + 3);
  }

  *(v50 + 8) = v53;
  v62 = *a1;
  v63 = *(*a1 + 8);
  v64 = *(*a1 + 16);
  if (v63 >= v64)
  {
    v66 = 0xAAAAAAAAAAAAAAABLL * ((v63 - *v62) >> 3);
    v67 = v66 + 1;
    if (v66 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v68 = 0xAAAAAAAAAAAAAAABLL * ((v64 - *v62) >> 3);
    if (2 * v68 > v67)
    {
      v67 = 2 * v68;
    }

    if (v68 >= 0x555555555555555)
    {
      v69 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v69 = v67;
    }

    if (v69)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v69);
    }

    v70 = 24 * v66;
    *v70 = 0xECC498AF223943D5;
    *(v70 + 8) = "md::ls::MeshLayerTypeV]";
    *(v70 + 16) = 22;
    v65 = 24 * v66 + 24;
    v71 = *(v62 + 8) - *v62;
    v72 = 24 * v66 - v71;
    memcpy((v70 - v71), *v62, v71);
    v73 = *v62;
    *v62 = v72;
    *(v62 + 8) = v65;
    *(v62 + 16) = 0;
    if (v73)
    {
      operator delete(v73);
    }
  }

  else
  {
    *v63 = 0xECC498AF223943D5;
    v63[1] = "md::ls::MeshLayerTypeV]";
    v63[2] = 22;
    v65 = (v63 + 3);
  }

  *(v62 + 8) = v65;
  v74 = *a1;
  v75 = *(*a1 + 8);
  v76 = *(*a1 + 16);
  if (v75 >= v76)
  {
    v78 = 0xAAAAAAAAAAAAAAABLL * ((v75 - *v74) >> 3);
    v79 = v78 + 1;
    if (v78 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v80 = 0xAAAAAAAAAAAAAAABLL * ((v76 - *v74) >> 3);
    if (2 * v80 > v79)
    {
      v79 = 2 * v80;
    }

    if (v80 >= 0x555555555555555)
    {
      v81 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v81 = v79;
    }

    if (v81)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v81);
    }

    v82 = 24 * v78;
    *v82 = 0xEC2A00DC914732D7;
    *(v82 + 8) = "md::ls::IntendedSceneLayer]";
    *(v82 + 16) = 26;
    v77 = 24 * v78 + 24;
    v83 = *(v74 + 8) - *v74;
    v84 = 24 * v78 - v83;
    memcpy((v82 - v83), *v74, v83);
    v85 = *v74;
    *v74 = v84;
    *(v74 + 8) = v77;
    *(v74 + 16) = 0;
    if (v85)
    {
      operator delete(v85);
    }
  }

  else
  {
    *v75 = 0xEC2A00DC914732D7;
    v75[1] = "md::ls::IntendedSceneLayer]";
    v75[2] = 26;
    v77 = (v75 + 3);
  }

  *(v74 + 8) = v77;
  v86 = *a1;
  v87 = *(*a1 + 8);
  v88 = *(*a1 + 16);
  if (v87 >= v88)
  {
    v90 = 0xAAAAAAAAAAAAAAABLL * ((v87 - *v86) >> 3);
    v91 = v90 + 1;
    if (v90 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v92 = 0xAAAAAAAAAAAAAAABLL * ((v88 - *v86) >> 3);
    if (2 * v92 > v91)
    {
      v91 = 2 * v92;
    }

    if (v92 >= 0x555555555555555)
    {
      v93 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v93 = v91;
    }

    if (v93)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v93);
    }

    v94 = 24 * v90;
    *v94 = 0xCD844FF303308290;
    *(v94 + 8) = "md::ls::HasMeshHandle]";
    *(v94 + 16) = 21;
    v89 = 24 * v90 + 24;
    v95 = *(v86 + 8) - *v86;
    v96 = 24 * v90 - v95;
    memcpy((v94 - v95), *v86, v95);
    v97 = *v86;
    *v86 = v96;
    *(v86 + 8) = v89;
    *(v86 + 16) = 0;
    if (v97)
    {
      operator delete(v97);
    }
  }

  else
  {
    *v87 = 0xCD844FF303308290;
    v87[1] = "md::ls::HasMeshHandle]";
    v87[2] = 21;
    v89 = (v87 + 3);
  }

  *(v86 + 8) = v89;
  v98 = *a1;
  v99 = *(*a1 + 8);
  v100 = *(*a1 + 16);
  if (v99 >= v100)
  {
    v102 = 0xAAAAAAAAAAAAAAABLL * ((v99 - *v98) >> 3);
    v103 = v102 + 1;
    if (v102 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v104 = 0xAAAAAAAAAAAAAAABLL * ((v100 - *v98) >> 3);
    if (2 * v104 > v103)
    {
      v103 = 2 * v104;
    }

    if (v104 >= 0x555555555555555)
    {
      v105 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v105 = v103;
    }

    if (v105)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v105);
    }

    v106 = 24 * v102;
    *v106 = 0x6C7EE74910D42096;
    *(v106 + 8) = "md::ls::PositionScaleInfoConstantDataHandle]";
    *(v106 + 16) = 43;
    v101 = 24 * v102 + 24;
    v107 = *(v98 + 8) - *v98;
    v108 = 24 * v102 - v107;
    memcpy((v106 - v107), *v98, v107);
    v109 = *v98;
    *v98 = v108;
    *(v98 + 8) = v101;
    *(v98 + 16) = 0;
    if (v109)
    {
      operator delete(v109);
    }
  }

  else
  {
    *v99 = 0x6C7EE74910D42096;
    v99[1] = "md::ls::PositionScaleInfoConstantDataHandle]";
    v99[2] = 43;
    v101 = (v99 + 3);
  }

  *(v98 + 8) = v101;
  v110 = *a1;
  v111 = *(*a1 + 8);
  v112 = *(*a1 + 16);
  if (v111 >= v112)
  {
    v114 = 0xAAAAAAAAAAAAAAABLL * ((v111 - *v110) >> 3);
    v115 = v114 + 1;
    if (v114 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v116 = 0xAAAAAAAAAAAAAAABLL * ((v112 - *v110) >> 3);
    if (2 * v116 > v115)
    {
      v115 = 2 * v116;
    }

    if (v116 >= 0x555555555555555)
    {
      v117 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v117 = v115;
    }

    if (v117)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v117);
    }

    v118 = 24 * v114;
    *v118 = 0xCFE242268B958ADALL;
    *(v118 + 8) = "md::ls::ViewConstantDataHandle]";
    *(v118 + 16) = 30;
    v113 = 24 * v114 + 24;
    v119 = *(v110 + 8) - *v110;
    v120 = 24 * v114 - v119;
    memcpy((v118 - v119), *v110, v119);
    v121 = *v110;
    *v110 = v120;
    *(v110 + 8) = v113;
    *(v110 + 16) = 0;
    if (v121)
    {
      operator delete(v121);
    }
  }

  else
  {
    *v111 = 0xCFE242268B958ADALL;
    v111[1] = "md::ls::ViewConstantDataHandle]";
    v111[2] = 30;
    v113 = (v111 + 3);
  }

  *(v110 + 8) = v113;
  v122 = *a1;
  v123 = *(*a1 + 8);
  v124 = *(*a1 + 16);
  if (v123 >= v124)
  {
    v126 = 0xAAAAAAAAAAAAAAABLL * ((v123 - *v122) >> 3);
    v127 = v126 + 1;
    if (v126 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v128 = 0xAAAAAAAAAAAAAAABLL * ((v124 - *v122) >> 3);
    if (2 * v128 > v127)
    {
      v127 = 2 * v128;
    }

    if (v128 >= 0x555555555555555)
    {
      v129 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v129 = v127;
    }

    if (v129)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v129);
    }

    v130 = 24 * v126;
    *v130 = 0x74DC502726E97929;
    *(v130 + 8) = "md::ls::TransformConstantDataHandle]";
    *(v130 + 16) = 35;
    v125 = 24 * v126 + 24;
    v131 = *(v122 + 8) - *v122;
    v132 = 24 * v126 - v131;
    memcpy((v130 - v131), *v122, v131);
    v133 = *v122;
    *v122 = v132;
    *(v122 + 8) = v125;
    *(v122 + 16) = 0;
    if (v133)
    {
      operator delete(v133);
    }
  }

  else
  {
    *v123 = 0x74DC502726E97929;
    v123[1] = "md::ls::TransformConstantDataHandle]";
    v123[2] = 35;
    v125 = (v123 + 3);
  }

  *(v122 + 8) = v125;
  v134 = *a1;
  v135 = *(*a1 + 8);
  v136 = *(*a1 + 16);
  if (v135 >= v136)
  {
    v138 = 0xAAAAAAAAAAAAAAABLL * ((v135 - *v134) >> 3);
    v139 = v138 + 1;
    if (v138 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v140 = 0xAAAAAAAAAAAAAAABLL * ((v136 - *v134) >> 3);
    if (2 * v140 > v139)
    {
      v139 = 2 * v140;
    }

    if (v140 >= 0x555555555555555)
    {
      v141 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v141 = v139;
    }

    if (v141)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v141);
    }

    v142 = 24 * v138;
    *v142 = 0x1BB343378E1EE5BLL;
    *(v142 + 8) = "md::ls::StyleDataKeyHandle]";
    *(v142 + 16) = 26;
    v137 = 24 * v138 + 24;
    v143 = *(v134 + 8) - *v134;
    v144 = 24 * v138 - v143;
    memcpy((v142 - v143), *v134, v143);
    v145 = *v134;
    *v134 = v144;
    *(v134 + 8) = v137;
    *(v134 + 16) = 0;
    if (v145)
    {
      operator delete(v145);
    }
  }

  else
  {
    *v135 = 0x1BB343378E1EE5BLL;
    v135[1] = "md::ls::StyleDataKeyHandle]";
    v135[2] = 26;
    v137 = (v135 + 3);
  }

  *(v134 + 8) = v137;
  v146 = *a1;
  v147 = *(*a1 + 8);
  v148 = *(*a1 + 16);
  if (v147 >= v148)
  {
    v150 = 0xAAAAAAAAAAAAAAABLL * ((v147 - *v146) >> 3);
    v151 = v150 + 1;
    if (v150 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v152 = 0xAAAAAAAAAAAAAAABLL * ((v148 - *v146) >> 3);
    if (2 * v152 > v151)
    {
      v151 = 2 * v152;
    }

    if (v152 >= 0x555555555555555)
    {
      v153 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v153 = v151;
    }

    if (v153)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v153);
    }

    v154 = 24 * v150;
    *v154 = 0x3AC919C8A5243F9;
    *(v154 + 8) = "md::ls::StyleSSAODataKeyHandle]";
    *(v154 + 16) = 30;
    v149 = 24 * v150 + 24;
    v155 = *(v146 + 8) - *v146;
    v156 = 24 * v150 - v155;
    memcpy((v154 - v155), *v146, v155);
    v157 = *v146;
    *v146 = v156;
    *(v146 + 8) = v149;
    *(v146 + 16) = 0;
    if (v157)
    {
      operator delete(v157);
    }
  }

  else
  {
    *v147 = 0x3AC919C8A5243F9;
    v147[1] = "md::ls::StyleSSAODataKeyHandle]";
    v147[2] = 30;
    v149 = (v147 + 3);
  }

  *(v146 + 8) = v149;
  v158 = *a1;
  v159 = *(*a1 + 8);
  v160 = *(*a1 + 16);
  if (v159 >= v160)
  {
    v162 = 0xAAAAAAAAAAAAAAABLL * ((v159 - *v158) >> 3);
    v163 = v162 + 1;
    if (v162 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v164 = 0xAAAAAAAAAAAAAAABLL * ((v160 - *v158) >> 3);
    if (2 * v164 > v163)
    {
      v163 = 2 * v164;
    }

    if (v164 >= 0x555555555555555)
    {
      v165 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v165 = v163;
    }

    if (v165)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v165);
    }

    v166 = 24 * v162;
    *v166 = 0xA50DD2A5BD75DBD6;
    *(v166 + 8) = "md::ls::StyleEmissiveDataKeyHandle]";
    *(v166 + 16) = 34;
    v161 = 24 * v162 + 24;
    v167 = *(v158 + 8) - *v158;
    v168 = 24 * v162 - v167;
    memcpy((v166 - v167), *v158, v167);
    v169 = *v158;
    *v158 = v168;
    *(v158 + 8) = v161;
    *(v158 + 16) = 0;
    if (v169)
    {
      operator delete(v169);
    }
  }

  else
  {
    *v159 = 0xA50DD2A5BD75DBD6;
    v159[1] = "md::ls::StyleEmissiveDataKeyHandle]";
    v159[2] = 34;
    v161 = (v159 + 3);
  }

  *(v158 + 8) = v161;
  v170 = *a1;
  v171 = *(*a1 + 8);
  v172 = *(*a1 + 16);
  if (v171 >= v172)
  {
    v174 = 0xAAAAAAAAAAAAAAABLL * ((v171 - *v170) >> 3);
    v175 = v174 + 1;
    if (v174 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v176 = 0xAAAAAAAAAAAAAAABLL * ((v172 - *v170) >> 3);
    if (2 * v176 > v175)
    {
      v175 = 2 * v176;
    }

    if (v176 >= 0x555555555555555)
    {
      v177 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v177 = v175;
    }

    if (v177)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v177);
    }

    v178 = 24 * v174;
    *v178 = 0xFA89E73840C3EC51;
    *(v178 + 8) = "md::ls::ColorCorrectionDataKeyHandle]";
    *(v178 + 16) = 36;
    v173 = 24 * v174 + 24;
    v179 = *(v170 + 8) - *v170;
    v180 = 24 * v174 - v179;
    memcpy((v178 - v179), *v170, v179);
    v181 = *v170;
    *v170 = v180;
    *(v170 + 8) = v173;
    *(v170 + 16) = 0;
    if (v181)
    {
      operator delete(v181);
    }
  }

  else
  {
    *v171 = 0xFA89E73840C3EC51;
    v171[1] = "md::ls::ColorCorrectionDataKeyHandle]";
    v171[2] = 36;
    v173 = (v171 + 3);
  }

  *(v170 + 8) = v173;
  v182 = *a1;
  v183 = *(*a1 + 8);
  v184 = *(*a1 + 16);
  if (v183 >= v184)
  {
    v186 = 0xAAAAAAAAAAAAAAABLL * ((v183 - *v182) >> 3);
    v187 = v186 + 1;
    if (v186 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v188 = 0xAAAAAAAAAAAAAAABLL * ((v184 - *v182) >> 3);
    if (2 * v188 > v187)
    {
      v187 = 2 * v188;
    }

    if (v188 >= 0x555555555555555)
    {
      v189 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v189 = v187;
    }

    if (v189)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v189);
    }

    v190 = 24 * v186;
    *v190 = 0x96F87A2692FE4013;
    *(v190 + 8) = "md::ls::StyleCameraConstantDataHandle]";
    *(v190 + 16) = 37;
    v185 = 24 * v186 + 24;
    v191 = *(v182 + 8) - *v182;
    v192 = 24 * v186 - v191;
    memcpy((v190 - v191), *v182, v191);
    v193 = *v182;
    *v182 = v192;
    *(v182 + 8) = v185;
    *(v182 + 16) = 0;
    if (v193)
    {
      operator delete(v193);
    }
  }

  else
  {
    *v183 = 0x96F87A2692FE4013;
    v183[1] = "md::ls::StyleCameraConstantDataHandle]";
    v183[2] = 37;
    v185 = (v183 + 3);
  }

  *(v182 + 8) = v185;
  v194 = *a1;
  v195 = *(*a1 + 8);
  v196 = *(*a1 + 16);
  if (v195 >= v196)
  {
    v198 = 0xAAAAAAAAAAAAAAABLL * ((v195 - *v194) >> 3);
    v199 = v198 + 1;
    if (v198 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v200 = 0xAAAAAAAAAAAAAAABLL * ((v196 - *v194) >> 3);
    if (2 * v200 > v199)
    {
      v199 = 2 * v200;
    }

    if (v200 >= 0x555555555555555)
    {
      v201 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v201 = v199;
    }

    if (v201)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v201);
    }

    v202 = 24 * v198;
    *v202 = 0xA3F884E4E2541296;
    *(v202 + 8) = "md::ls::ColorDataHandle]";
    *(v202 + 16) = 23;
    v197 = 24 * v198 + 24;
    v203 = *(v194 + 8) - *v194;
    v204 = 24 * v198 - v203;
    memcpy((v202 - v203), *v194, v203);
    v205 = *v194;
    *v194 = v204;
    *(v194 + 8) = v197;
    *(v194 + 16) = 0;
    if (v205)
    {
      operator delete(v205);
    }
  }

  else
  {
    *v195 = 0xA3F884E4E2541296;
    v195[1] = "md::ls::ColorDataHandle]";
    v195[2] = 23;
    v197 = (v195 + 3);
  }

  *(v194 + 8) = v197;
  v206 = *a1;
  v207 = *(*a1 + 8);
  v208 = *(*a1 + 16);
  if (v207 >= v208)
  {
    v210 = 0xAAAAAAAAAAAAAAABLL * ((v207 - *v206) >> 3);
    v211 = v210 + 1;
    if (v210 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v212 = 0xAAAAAAAAAAAAAAABLL * ((v208 - *v206) >> 3);
    if (2 * v212 > v211)
    {
      v211 = 2 * v212;
    }

    if (v212 >= 0x555555555555555)
    {
      v213 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v213 = v211;
    }

    if (v213)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v213);
    }

    v214 = 24 * v210;
    *v214 = 0x71CBA64B1A9CA230;
    *(v214 + 8) = "md::ls::IndexRange]";
    *(v214 + 16) = 18;
    v209 = 24 * v210 + 24;
    v215 = *(v206 + 8) - *v206;
    v216 = 24 * v210 - v215;
    memcpy((v214 - v215), *v206, v215);
    v217 = *v206;
    *v206 = v216;
    *(v206 + 8) = v209;
    *(v206 + 16) = 0;
    if (v217)
    {
      operator delete(v217);
    }
  }

  else
  {
    *v207 = 0x71CBA64B1A9CA230;
    v207[1] = "md::ls::IndexRange]";
    v207[2] = 18;
    v209 = (v207 + 3);
  }

  *(v206 + 8) = v209;
  v218 = *a1;
  v219 = *(*a1 + 8);
  v220 = *(*a1 + 16);
  if (v219 >= v220)
  {
    v222 = 0xAAAAAAAAAAAAAAABLL * ((v219 - *v218) >> 3);
    v223 = v222 + 1;
    if (v222 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v224 = 0xAAAAAAAAAAAAAAABLL * ((v220 - *v218) >> 3);
    if (2 * v224 > v223)
    {
      v223 = 2 * v224;
    }

    if (v224 >= 0x555555555555555)
    {
      v225 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v225 = v223;
    }

    if (v225)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v225);
    }

    v226 = 24 * v222;
    *v226 = 0xD5AD9B8C3FE62EE8;
    *(v226 + 8) = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    *(v226 + 16) = 46;
    v221 = 24 * v222 + 24;
    v227 = *(v218 + 8) - *v218;
    v228 = 24 * v222 - v227;
    memcpy((v226 - v227), *v218, v227);
    v229 = *v218;
    *v218 = v228;
    *(v218 + 8) = v221;
    *(v218 + 16) = 0;
    if (v229)
    {
      operator delete(v229);
    }
  }

  else
  {
    *v219 = 0xD5AD9B8C3FE62EE8;
    v219[1] = "md::ls::StyleGroundOcclusionConstantDataHandle]";
    v219[2] = 46;
    v221 = (v219 + 3);
  }

  *(v218 + 8) = v221;
  v230 = *a1;
  v231 = *(*a1 + 8);
  v232 = *(*a1 + 16);
  if (v231 >= v232)
  {
    v234 = 0xAAAAAAAAAAAAAAABLL * ((v231 - *v230) >> 3);
    v235 = v234 + 1;
    if (v234 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v236 = 0xAAAAAAAAAAAAAAABLL * ((v232 - *v230) >> 3);
    if (2 * v236 > v235)
    {
      v235 = 2 * v236;
    }

    if (v236 >= 0x555555555555555)
    {
      v237 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v237 = v235;
    }

    if (v237)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v237);
    }

    v238 = 24 * v234;
    *v238 = 0x9705908F280836EDLL;
    *(v238 + 8) = "md::ls::SharedMaterialZIndexHandle]";
    *(v238 + 16) = 34;
    v233 = 24 * v234 + 24;
    v239 = *(v230 + 8) - *v230;
    v240 = 24 * v234 - v239;
    memcpy((v238 - v239), *v230, v239);
    v241 = *v230;
    *v230 = v240;
    *(v230 + 8) = v233;
    *(v230 + 16) = 0;
    if (v241)
    {
      operator delete(v241);
    }
  }

  else
  {
    *v231 = 0x9705908F280836EDLL;
    v231[1] = "md::ls::SharedMaterialZIndexHandle]";
    v231[2] = 34;
    v233 = (v231 + 3);
  }

  *(v230 + 8) = v233;
  v242 = *a1;
  v243 = *(*a1 + 8);
  v244 = *(*a1 + 16);
  if (v243 >= v244)
  {
    v246 = 0xAAAAAAAAAAAAAAABLL * ((v243 - *v242) >> 3);
    v247 = v246 + 1;
    if (v246 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v248 = 0xAAAAAAAAAAAAAAABLL * ((v244 - *v242) >> 3);
    if (2 * v248 > v247)
    {
      v247 = 2 * v248;
    }

    if (v248 >= 0x555555555555555)
    {
      v249 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v249 = v247;
    }

    if (v249)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v249);
    }

    v250 = 24 * v246;
    *v250 = 0x3218EFD67197A145;
    *(v250 + 8) = "md::ls::NormalsHandle]";
    *(v250 + 16) = 21;
    v245 = 24 * v246 + 24;
    v251 = *(v242 + 8) - *v242;
    v252 = 24 * v246 - v251;
    memcpy((v250 - v251), *v242, v251);
    v253 = *v242;
    *v242 = v252;
    *(v242 + 8) = v245;
    *(v242 + 16) = 0;
    if (v253)
    {
      operator delete(v253);
    }
  }

  else
  {
    *v243 = 0x3218EFD67197A145;
    v243[1] = "md::ls::NormalsHandle]";
    v243[2] = 21;
    v245 = (v243 + 3);
  }

  *(v242 + 8) = v245;
  v254 = *a1;
  v255 = *(*a1 + 8);
  v256 = *(*a1 + 16);
  if (v255 >= v256)
  {
    v258 = 0xAAAAAAAAAAAAAAABLL * ((v255 - *v254) >> 3);
    v259 = v258 + 1;
    if (v258 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v260 = 0xAAAAAAAAAAAAAAABLL * ((v256 - *v254) >> 3);
    if (2 * v260 > v259)
    {
      v259 = 2 * v260;
    }

    if (v260 >= 0x555555555555555)
    {
      v261 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v261 = v259;
    }

    if (v261)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v261);
    }

    v262 = 24 * v258;
    *v262 = 0xAF179EFD8A4C83D4;
    *(v262 + 8) = "md::ls::InstanceTransformHandle]";
    *(v262 + 16) = 31;
    v257 = 24 * v258 + 24;
    v263 = *(v254 + 8) - *v254;
    v264 = 24 * v258 - v263;
    memcpy((v262 - v263), *v254, v263);
    v265 = *v254;
    *v254 = v264;
    *(v254 + 8) = v257;
    *(v254 + 16) = 0;
    if (v265)
    {
      operator delete(v265);
    }
  }

  else
  {
    *v255 = 0xAF179EFD8A4C83D4;
    v255[1] = "md::ls::InstanceTransformHandle]";
    v255[2] = 31;
    v257 = (v255 + 3);
  }

  *(v254 + 8) = v257;
  v266 = *a1;
  v267 = *(*a1 + 8);
  v268 = *(*a1 + 16);
  if (v267 >= v268)
  {
    v270 = 0xAAAAAAAAAAAAAAABLL * ((v267 - *v266) >> 3);
    v271 = v270 + 1;
    if (v270 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v272 = 0xAAAAAAAAAAAAAAABLL * ((v268 - *v266) >> 3);
    if (2 * v272 > v271)
    {
      v271 = 2 * v272;
    }

    if (v272 >= 0x555555555555555)
    {
      v273 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v273 = v271;
    }

    if (v273)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v273);
    }

    v274 = 24 * v270;
    *v274 = 0xCBB77B1CBD05D7C5;
    *(v274 + 8) = "md::ls::UVsHandle]";
    *(v274 + 16) = 17;
    v269 = 24 * v270 + 24;
    v275 = *(v266 + 8) - *v266;
    v276 = 24 * v270 - v275;
    memcpy((v274 - v275), *v266, v275);
    v277 = *v266;
    *v266 = v276;
    *(v266 + 8) = v269;
    *(v266 + 16) = 0;
    if (v277)
    {
      operator delete(v277);
    }
  }

  else
  {
    *v267 = 0xCBB77B1CBD05D7C5;
    v267[1] = "md::ls::UVsHandle]";
    v267[2] = 17;
    v269 = (v267 + 3);
  }

  *(v266 + 8) = v269;
  v278 = *a1;
  v279 = *(*a1 + 8);
  v280 = *(*a1 + 16);
  if (v279 >= v280)
  {
    v282 = 0xAAAAAAAAAAAAAAABLL * ((v279 - *v278) >> 3);
    v283 = v282 + 1;
    if (v282 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v284 = 0xAAAAAAAAAAAAAAABLL * ((v280 - *v278) >> 3);
    if (2 * v284 > v283)
    {
      v283 = 2 * v284;
    }

    if (v284 >= 0x555555555555555)
    {
      v285 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v285 = v283;
    }

    if (v285)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v285);
    }

    v286 = 24 * v282;
    *v286 = 0x8E45E81B6E5A8E0ELL;
    *(v286 + 8) = "md::ls::StyleRouteLineMaskDataKeyHandle]";
    *(v286 + 16) = 39;
    v281 = 24 * v282 + 24;
    v287 = *(v278 + 8) - *v278;
    v288 = 24 * v282 - v287;
    memcpy((v286 - v287), *v278, v287);
    v289 = *v278;
    *v278 = v288;
    *(v278 + 8) = v281;
    *(v278 + 16) = 0;
    if (v289)
    {
      operator delete(v289);
    }
  }

  else
  {
    *v279 = 0x8E45E81B6E5A8E0ELL;
    v279[1] = "md::ls::StyleRouteLineMaskDataKeyHandle]";
    v279[2] = 39;
    v281 = (v279 + 3);
  }

  *(v278 + 8) = v281;
  v290 = *a1;
  v291 = *(*a1 + 8);
  v292 = *(*a1 + 16);
  if (v291 >= v292)
  {
    v294 = 0xAAAAAAAAAAAAAAABLL * ((v291 - *v290) >> 3);
    v295 = v294 + 1;
    if (v294 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v296 = 0xAAAAAAAAAAAAAAABLL * ((v292 - *v290) >> 3);
    if (2 * v296 > v295)
    {
      v295 = 2 * v296;
    }

    if (v296 >= 0x555555555555555)
    {
      v297 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v297 = v295;
    }

    if (v297)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v297);
    }

    v298 = 24 * v294;
    *v298 = 0xD443D3DCBB78491ALL;
    *(v298 + 8) = "md::ls::ElevationHandle]";
    *(v298 + 16) = 23;
    v293 = 24 * v294 + 24;
    v299 = *(v290 + 8) - *v290;
    v300 = 24 * v294 - v299;
    memcpy((v298 - v299), *v290, v299);
    v301 = *v290;
    *v290 = v300;
    *(v290 + 8) = v293;
    *(v290 + 16) = 0;
    if (v301)
    {
      operator delete(v301);
    }
  }

  else
  {
    *v291 = 0xD443D3DCBB78491ALL;
    v291[1] = "md::ls::ElevationHandle]";
    v291[2] = 23;
    v293 = (v291 + 3);
  }

  *(v290 + 8) = v293;
  v302 = *a1;
  v303 = *(*a1 + 8);
  v304 = *(*a1 + 16);
  if (v303 >= v304)
  {
    v306 = 0xAAAAAAAAAAAAAAABLL * ((v303 - *v302) >> 3);
    v307 = v306 + 1;
    if (v306 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v308 = 0xAAAAAAAAAAAAAAABLL * ((v304 - *v302) >> 3);
    if (2 * v308 > v307)
    {
      v307 = 2 * v308;
    }

    if (v308 >= 0x555555555555555)
    {
      v309 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v309 = v307;
    }

    if (v309)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v309);
    }

    v310 = 24 * v306;
    *v310 = 0xDD9825BCFA7911B2;
    *(v310 + 8) = "md::ls::TextureHandleForType<DaVinci::DiffuseTexture>]";
    *(v310 + 16) = 53;
    v305 = 24 * v306 + 24;
    v311 = *(v302 + 8) - *v302;
    v312 = 24 * v306 - v311;
    memcpy((v310 - v311), *v302, v311);
    v313 = *v302;
    *v302 = v312;
    *(v302 + 8) = v305;
    *(v302 + 16) = 0;
    if (v313)
    {
      operator delete(v313);
    }
  }

  else
  {
    *v303 = 0xDD9825BCFA7911B2;
    v303[1] = "md::ls::TextureHandleForType<DaVinci::DiffuseTexture>]";
    v303[2] = 53;
    v305 = (v303 + 3);
  }

  *(v302 + 8) = v305;
  v314 = *a1;
  v315 = *(*a1 + 8);
  v316 = *(*a1 + 16);
  if (v315 >= v316)
  {
    v318 = 0xAAAAAAAAAAAAAAABLL * ((v315 - *v314) >> 3);
    v319 = v318 + 1;
    if (v318 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v320 = 0xAAAAAAAAAAAAAAABLL * ((v316 - *v314) >> 3);
    if (2 * v320 > v319)
    {
      v319 = 2 * v320;
    }

    if (v320 >= 0x555555555555555)
    {
      v321 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v321 = v319;
    }

    if (v321)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v321);
    }

    v322 = 24 * v318;
    *v322 = 0xDC98991DB7473274;
    *(v322 + 8) = "md::ls::LandCoverSettingsConstantDataHandle]";
    *(v322 + 16) = 43;
    v317 = 24 * v318 + 24;
    v323 = *(v314 + 8) - *v314;
    v324 = 24 * v318 - v323;
    memcpy((v322 - v323), *v314, v323);
    v325 = *v314;
    *v314 = v324;
    *(v314 + 8) = v317;
    *(v314 + 16) = 0;
    if (v325)
    {
      operator delete(v325);
    }
  }

  else
  {
    *v315 = 0xDC98991DB7473274;
    v315[1] = "md::ls::LandCoverSettingsConstantDataHandle]";
    v315[2] = 43;
    v317 = (v315 + 3);
  }

  *(v314 + 8) = v317;
  v326 = *a1;
  v327 = *(*a1 + 8);
  v328 = *(*a1 + 16);
  if (v327 >= v328)
  {
    v330 = 0xAAAAAAAAAAAAAAABLL * ((v327 - *v326) >> 3);
    v331 = v330 + 1;
    if (v330 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v332 = 0xAAAAAAAAAAAAAAABLL * ((v328 - *v326) >> 3);
    if (2 * v332 > v331)
    {
      v331 = 2 * v332;
    }

    if (v332 >= 0x555555555555555)
    {
      v333 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v333 = v331;
    }

    if (v333)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v333);
    }

    v334 = 24 * v330;
    *v334 = 0xEAA0B82FC49F7277;
    *(v334 + 8) = "md::ls::ShadowConstantDataHandle]";
    *(v334 + 16) = 32;
    v329 = 24 * v330 + 24;
    v335 = *(v326 + 8) - *v326;
    v336 = 24 * v330 - v335;
    memcpy((v334 - v335), *v326, v335);
    v337 = *v326;
    *v326 = v336;
    *(v326 + 8) = v329;
    *(v326 + 16) = 0;
    if (v337)
    {
      operator delete(v337);
    }
  }

  else
  {
    *v327 = 0xEAA0B82FC49F7277;
    v327[1] = "md::ls::ShadowConstantDataHandle]";
    v327[2] = 32;
    v329 = (v327 + 3);
  }

  *(v326 + 8) = v329;
  v338 = *a1;
  v339 = *(*a1 + 8);
  v340 = *(*a1 + 16);
  if (v339 >= v340)
  {
    v342 = 0xAAAAAAAAAAAAAAABLL * ((v339 - *v338) >> 3);
    v343 = v342 + 1;
    if (v342 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v344 = 0xAAAAAAAAAAAAAAABLL * ((v340 - *v338) >> 3);
    if (2 * v344 > v343)
    {
      v343 = 2 * v344;
    }

    if (v344 >= 0x555555555555555)
    {
      v345 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v345 = v343;
    }

    if (v345)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v345);
    }

    v346 = 24 * v342;
    *v346 = 0x1EBB3E0519E8FF9DLL;
    *(v346 + 8) = "md::ls::PrepassConstantDataHandle]";
    *(v346 + 16) = 33;
    v341 = 24 * v342 + 24;
    v347 = *(v338 + 8) - *v338;
    v348 = 24 * v342 - v347;
    memcpy((v346 - v347), *v338, v347);
    v349 = *v338;
    *v338 = v348;
    *(v338 + 8) = v341;
    *(v338 + 16) = 0;
    if (v349)
    {
      operator delete(v349);
    }
  }

  else
  {
    *v339 = 0x1EBB3E0519E8FF9DLL;
    v339[1] = "md::ls::PrepassConstantDataHandle]";
    v339[2] = 33;
    v341 = (v339 + 3);
  }

  *(v338 + 8) = v341;
  v350 = *a1;
  v351 = *(*a1 + 8);
  v352 = *(*a1 + 16);
  if (v351 >= v352)
  {
    v354 = 0xAAAAAAAAAAAAAAABLL * ((v351 - *v350) >> 3);
    v355 = v354 + 1;
    if (v354 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v356 = 0xAAAAAAAAAAAAAAABLL * ((v352 - *v350) >> 3);
    if (2 * v356 > v355)
    {
      v355 = 2 * v356;
    }

    if (v356 >= 0x555555555555555)
    {
      v357 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v357 = v355;
    }

    if (v357)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v357);
    }

    v358 = 24 * v354;
    *v358 = 0x9292F9031FE6DB5;
    *(v358 + 8) = "md::ls::ClippingConstantDataHandle]";
    *(v358 + 16) = 34;
    v353 = 24 * v354 + 24;
    v359 = *(v350 + 8) - *v350;
    v360 = 24 * v354 - v359;
    memcpy((v358 - v359), *v350, v359);
    v361 = *v350;
    *v350 = v360;
    *(v350 + 8) = v353;
    *(v350 + 16) = 0;
    if (v361)
    {
      operator delete(v361);
    }
  }

  else
  {
    *v351 = 0x9292F9031FE6DB5;
    v351[1] = "md::ls::ClippingConstantDataHandle]";
    v351[2] = 34;
    v353 = (v351 + 3);
  }

  *(v350 + 8) = v353;
  v362 = *a1;
  v363 = *(*a1 + 8);
  v364 = *(*a1 + 16);
  if (v363 >= v364)
  {
    v366 = 0xAAAAAAAAAAAAAAABLL * ((v363 - *v362) >> 3);
    v367 = v366 + 1;
    if (v366 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v368 = 0xAAAAAAAAAAAAAAABLL * ((v364 - *v362) >> 3);
    if (2 * v368 > v367)
    {
      v367 = 2 * v368;
    }

    if (v368 >= 0x555555555555555)
    {
      v369 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v369 = v367;
    }

    if (v369)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v369);
    }

    v370 = 24 * v366;
    *v370 = 0xD02B5FD100F36AA2;
    *(v370 + 8) = "md::ls::PlanarParametersCacheKeyHandle]";
    *(v370 + 16) = 38;
    v365 = 24 * v366 + 24;
    v371 = *(v362 + 8) - *v362;
    v372 = 24 * v366 - v371;
    memcpy((v370 - v371), *v362, v371);
    v373 = *v362;
    *v362 = v372;
    *(v362 + 8) = v365;
    *(v362 + 16) = 0;
    if (v373)
    {
      operator delete(v373);
    }
  }

  else
  {
    *v363 = 0xD02B5FD100F36AA2;
    v363[1] = "md::ls::PlanarParametersCacheKeyHandle]";
    v363[2] = 38;
    v365 = (v363 + 3);
  }

  *(v362 + 8) = v365;
  v374 = *a1;
  v375 = *(*a1 + 8);
  v376 = *(*a1 + 16);
  if (v375 >= v376)
  {
    v378 = 0xAAAAAAAAAAAAAAABLL * ((v375 - *v374) >> 3);
    v379 = v378 + 1;
    if (v378 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v380 = 0xAAAAAAAAAAAAAAABLL * ((v376 - *v374) >> 3);
    if (2 * v380 > v379)
    {
      v379 = 2 * v380;
    }

    if (v380 >= 0x555555555555555)
    {
      v381 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v381 = v379;
    }

    if (v381)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v381);
    }

    v382 = 24 * v378;
    *v382 = 0x1D932F2BF291491;
    *(v382 + 8) = "md::ls::TextureHandleForType<DaVinci::TexTexture>]";
    *(v382 + 16) = 49;
    v377 = 24 * v378 + 24;
    v383 = *(v374 + 8) - *v374;
    v384 = 24 * v378 - v383;
    memcpy((v382 - v383), *v374, v383);
    v385 = *v374;
    *v374 = v384;
    *(v374 + 8) = v377;
    *(v374 + 16) = 0;
    if (v385)
    {
      operator delete(v385);
    }
  }

  else
  {
    *v375 = 0x1D932F2BF291491;
    v375[1] = "md::ls::TextureHandleForType<DaVinci::TexTexture>]";
    v375[2] = 49;
    v377 = (v375 + 3);
  }

  *(v374 + 8) = v377;
  v386 = *a1;
  v387 = *(*a1 + 8);
  v388 = *(*a1 + 16);
  if (v387 >= v388)
  {
    v390 = 0xAAAAAAAAAAAAAAABLL * ((v387 - *v386) >> 3);
    v391 = v390 + 1;
    if (v390 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v392 = 0xAAAAAAAAAAAAAAABLL * ((v388 - *v386) >> 3);
    if (2 * v392 > v391)
    {
      v391 = 2 * v392;
    }

    if (v392 >= 0x555555555555555)
    {
      v393 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v393 = v391;
    }

    if (v393)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v393);
    }

    v394 = 24 * v390;
    *v394 = 0xCE03281732FA0019;
    *(v394 + 8) = "md::ls::TextureHandleForType<DaVinci::EmissiveTexture>]";
    *(v394 + 16) = 54;
    v389 = 24 * v390 + 24;
    v395 = *(v386 + 8) - *v386;
    v396 = 24 * v390 - v395;
    memcpy((v394 - v395), *v386, v395);
    v397 = *v386;
    *v386 = v396;
    *(v386 + 8) = v389;
    *(v386 + 16) = 0;
    if (v397)
    {
      operator delete(v397);
    }
  }

  else
  {
    *v387 = 0xCE03281732FA0019;
    v387[1] = "md::ls::TextureHandleForType<DaVinci::EmissiveTexture>]";
    v387[2] = 54;
    v389 = (v387 + 3);
  }

  *(v386 + 8) = v389;
  v398 = *a1;
  v399 = *(*a1 + 8);
  v400 = *(*a1 + 16);
  if (v399 >= v400)
  {
    v402 = 0xAAAAAAAAAAAAAAABLL * ((v399 - *v398) >> 3);
    v403 = v402 + 1;
    if (v402 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v404 = 0xAAAAAAAAAAAAAAABLL * ((v400 - *v398) >> 3);
    if (2 * v404 > v403)
    {
      v403 = 2 * v404;
    }

    if (v404 >= 0x555555555555555)
    {
      v405 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v405 = v403;
    }

    if (v405)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v405);
    }

    v406 = 24 * v402;
    *v406 = 0xD2D99CA7D5B116C8;
    *(v406 + 8) = "md::ls::TextureHandleForType<DaVinci::OverlayTexture>]";
    *(v406 + 16) = 53;
    v401 = 24 * v402 + 24;
    v407 = *(v398 + 8) - *v398;
    v408 = 24 * v402 - v407;
    memcpy((v406 - v407), *v398, v407);
    v409 = *v398;
    *v398 = v408;
    *(v398 + 8) = v401;
    *(v398 + 16) = 0;
    if (v409)
    {
      operator delete(v409);
    }
  }

  else
  {
    *v399 = 0xD2D99CA7D5B116C8;
    v399[1] = "md::ls::TextureHandleForType<DaVinci::OverlayTexture>]";
    v399[2] = 53;
    v401 = (v399 + 3);
  }

  *(v398 + 8) = v401;
  v410 = *a1;
  v411 = *(*a1 + 8);
  v412 = *(*a1 + 16);
  if (v411 >= v412)
  {
    v414 = 0xAAAAAAAAAAAAAAABLL * ((v411 - *v410) >> 3);
    v415 = v414 + 1;
    if (v414 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v416 = 0xAAAAAAAAAAAAAAABLL * ((v412 - *v410) >> 3);
    if (2 * v416 > v415)
    {
      v415 = 2 * v416;
    }

    if (v416 >= 0x555555555555555)
    {
      v417 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v417 = v415;
    }

    if (v417)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v417);
    }

    v418 = 24 * v414;
    *v418 = 0xDF0018B9242ADFDBLL;
    *(v418 + 8) = "md::ls::BlendRasterConstantDataHandle]";
    *(v418 + 16) = 37;
    v413 = 24 * v414 + 24;
    v419 = *(v410 + 8) - *v410;
    v420 = 24 * v414 - v419;
    memcpy((v418 - v419), *v410, v419);
    v421 = *v410;
    *v410 = v420;
    *(v410 + 8) = v413;
    *(v410 + 16) = 0;
    if (v421)
    {
      operator delete(v421);
    }
  }

  else
  {
    *v411 = 0xDF0018B9242ADFDBLL;
    v411[1] = "md::ls::BlendRasterConstantDataHandle]";
    v411[2] = 37;
    v413 = (v411 + 3);
  }

  *(v410 + 8) = v413;
  v422 = *a1;
  v423 = *(*a1 + 8);
  v424 = *(*a1 + 16);
  if (v423 >= v424)
  {
    v426 = 0xAAAAAAAAAAAAAAABLL * ((v423 - *v422) >> 3);
    v427 = v426 + 1;
    if (v426 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v428 = 0xAAAAAAAAAAAAAAABLL * ((v424 - *v422) >> 3);
    if (2 * v428 > v427)
    {
      v427 = 2 * v428;
    }

    if (v428 >= 0x555555555555555)
    {
      v429 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v429 = v427;
    }

    if (v429)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v429);
    }

    v430 = 24 * v426;
    *v430 = 0xDC66BF6D06F6D0BALL;
    *(v430 + 8) = "md::ls::RasterOverlayConstantDataHandle]";
    *(v430 + 16) = 39;
    v425 = 24 * v426 + 24;
    v431 = *(v422 + 8) - *v422;
    v432 = 24 * v426 - v431;
    memcpy((v430 - v431), *v422, v431);
    v433 = *v422;
    *v422 = v432;
    *(v422 + 8) = v425;
    *(v422 + 16) = 0;
    if (v433)
    {
      operator delete(v433);
    }
  }

  else
  {
    *v423 = 0xDC66BF6D06F6D0BALL;
    v423[1] = "md::ls::RasterOverlayConstantDataHandle]";
    v423[2] = 39;
    v425 = (v423 + 3);
  }

  *(v422 + 8) = v425;
  v434 = *a1;
  v435 = *(*a1 + 8);
  v436 = *(*a1 + 16);
  if (v435 >= v436)
  {
    v438 = 0xAAAAAAAAAAAAAAABLL * ((v435 - *v434) >> 3);
    v439 = v438 + 1;
    if (v438 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v440 = 0xAAAAAAAAAAAAAAABLL * ((v436 - *v434) >> 3);
    if (2 * v440 > v439)
    {
      v439 = 2 * v440;
    }

    if (v440 >= 0x555555555555555)
    {
      v441 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v441 = v439;
    }

    if (v441)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v441);
    }

    v442 = 24 * v438;
    *v442 = 0x7D9191A7B57B7B35;
    *(v442 + 8) = "md::ls::FlyoverCommonTransformConstantDataHandle]";
    *(v442 + 16) = 48;
    v437 = 24 * v438 + 24;
    v443 = *(v434 + 8) - *v434;
    v444 = 24 * v438 - v443;
    memcpy((v442 - v443), *v434, v443);
    v445 = *v434;
    *v434 = v444;
    *(v434 + 8) = v437;
    *(v434 + 16) = 0;
    if (v445)
    {
      operator delete(v445);
    }
  }

  else
  {
    *v435 = 0x7D9191A7B57B7B35;
    v435[1] = "md::ls::FlyoverCommonTransformConstantDataHandle]";
    v435[2] = 48;
    v437 = (v435 + 3);
  }

  *(v434 + 8) = v437;
  v446 = *a1;
  v447 = *(*a1 + 8);
  v448 = *(*a1 + 16);
  if (v447 >= v448)
  {
    v450 = 0xAAAAAAAAAAAAAAABLL * ((v447 - *v446) >> 3);
    v451 = v450 + 1;
    if (v450 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v452 = 0xAAAAAAAAAAAAAAABLL * ((v448 - *v446) >> 3);
    if (2 * v452 > v451)
    {
      v451 = 2 * v452;
    }

    if (v452 >= 0x555555555555555)
    {
      v453 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v453 = v451;
    }

    if (v453)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v453);
    }

    v454 = 24 * v450;
    *v454 = 0x81BF69EEE736436;
    *(v454 + 8) = "md::ls::FlyoverCommonS2TransformHandle]";
    *(v454 + 16) = 38;
    v449 = 24 * v450 + 24;
    v455 = *(v446 + 8) - *v446;
    v456 = 24 * v450 - v455;
    memcpy((v454 - v455), *v446, v455);
    v457 = *v446;
    *v446 = v456;
    *(v446 + 8) = v449;
    *(v446 + 16) = 0;
    if (v457)
    {
      operator delete(v457);
    }
  }

  else
  {
    *v447 = 0x81BF69EEE736436;
    v447[1] = "md::ls::FlyoverCommonS2TransformHandle]";
    v447[2] = 38;
    v449 = (v447 + 3);
  }

  *(v446 + 8) = v449;
  v458 = *a1;
  v459 = *(*a1 + 8);
  v460 = *(*a1 + 16);
  if (v459 >= v460)
  {
    v462 = 0xAAAAAAAAAAAAAAABLL * ((v459 - *v458) >> 3);
    v463 = v462 + 1;
    if (v462 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v464 = 0xAAAAAAAAAAAAAAABLL * ((v460 - *v458) >> 3);
    if (2 * v464 > v463)
    {
      v463 = 2 * v464;
    }

    if (v464 >= 0x555555555555555)
    {
      v465 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v465 = v463;
    }

    if (v465)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v465);
    }

    v466 = 24 * v462;
    *v466 = 0x5B12559DCF20DC9ALL;
    *(v466 + 8) = "md::ls::FlyoverCommonTexcoordsHandle]";
    *(v466 + 16) = 36;
    v461 = 24 * v462 + 24;
    v467 = *(v458 + 8) - *v458;
    v468 = 24 * v462 - v467;
    memcpy((v466 - v467), *v458, v467);
    v469 = *v458;
    *v458 = v468;
    *(v458 + 8) = v461;
    *(v458 + 16) = 0;
    if (v469)
    {
      operator delete(v469);
    }
  }

  else
  {
    *v459 = 0x5B12559DCF20DC9ALL;
    v459[1] = "md::ls::FlyoverCommonTexcoordsHandle]";
    v459[2] = 36;
    v461 = (v459 + 3);
  }

  *(v458 + 8) = v461;
  v470 = *a1;
  v471 = *(*a1 + 8);
  v472 = *(*a1 + 16);
  if (v471 >= v472)
  {
    v474 = 0xAAAAAAAAAAAAAAABLL * ((v471 - *v470) >> 3);
    v475 = v474 + 1;
    if (v474 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v476 = 0xAAAAAAAAAAAAAAABLL * ((v472 - *v470) >> 3);
    if (2 * v476 > v475)
    {
      v475 = 2 * v476;
    }

    if (v476 >= 0x555555555555555)
    {
      v477 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v477 = v475;
    }

    if (v477)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v477);
    }

    v478 = 24 * v474;
    *v478 = 0xB70B6DE024A5B9DALL;
    *(v478 + 8) = "md::ls::FlyoverCommonMaterialHandle]";
    *(v478 + 16) = 35;
    v473 = 24 * v474 + 24;
    v479 = *(v470 + 8) - *v470;
    v480 = 24 * v474 - v479;
    memcpy((v478 - v479), *v470, v479);
    v481 = *v470;
    *v470 = v480;
    *(v470 + 8) = v473;
    *(v470 + 16) = 0;
    if (v481)
    {
      operator delete(v481);
    }
  }

  else
  {
    *v471 = 0xB70B6DE024A5B9DALL;
    v471[1] = "md::ls::FlyoverCommonMaterialHandle]";
    v471[2] = 35;
    v473 = (v471 + 3);
  }

  *(v470 + 8) = v473;
  v482 = *a1;
  v483 = *(*a1 + 8);
  v484 = *(*a1 + 16);
  if (v483 >= v484)
  {
    v486 = 0xAAAAAAAAAAAAAAABLL * ((v483 - *v482) >> 3);
    v487 = v486 + 1;
    if (v486 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v488 = 0xAAAAAAAAAAAAAAABLL * ((v484 - *v482) >> 3);
    if (2 * v488 > v487)
    {
      v487 = 2 * v488;
    }

    if (v488 >= 0x555555555555555)
    {
      v489 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v489 = v487;
    }

    if (v489)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v489);
    }

    v490 = 24 * v486;
    *v490 = 0x5E4DB6CB13CB5848;
    *(v490 + 8) = "md::ls::FlyoverClipConstantDataHandle]";
    *(v490 + 16) = 37;
    v485 = 24 * v486 + 24;
    v491 = *(v482 + 8) - *v482;
    v492 = 24 * v486 - v491;
    memcpy((v490 - v491), *v482, v491);
    v493 = *v482;
    *v482 = v492;
    *(v482 + 8) = v485;
    *(v482 + 16) = 0;
    if (v493)
    {
      operator delete(v493);
    }
  }

  else
  {
    *v483 = 0x5E4DB6CB13CB5848;
    v483[1] = "md::ls::FlyoverClipConstantDataHandle]";
    v483[2] = 37;
    v485 = (v483 + 3);
  }

  *(v482 + 8) = v485;
  v494 = *a1;
  v495 = *(*a1 + 8);
  v496 = *(*a1 + 16);
  if (v495 >= v496)
  {
    v498 = 0xAAAAAAAAAAAAAAABLL * ((v495 - *v494) >> 3);
    v499 = v498 + 1;
    if (v498 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v500 = 0xAAAAAAAAAAAAAAABLL * ((v496 - *v494) >> 3);
    if (2 * v500 > v499)
    {
      v499 = 2 * v500;
    }

    if (v500 >= 0x555555555555555)
    {
      v501 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v501 = v499;
    }

    if (v501)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v501);
    }

    v502 = 24 * v498;
    *v502 = 0xBAA35DF429A7267FLL;
    *(v502 + 8) = "md::ls::TextureHandleForType<Flyover::DiffuseTexture>]";
    *(v502 + 16) = 53;
    v497 = 24 * v498 + 24;
    v503 = *(v494 + 8) - *v494;
    v504 = 24 * v498 - v503;
    memcpy((v502 - v503), *v494, v503);
    v505 = *v494;
    *v494 = v504;
    *(v494 + 8) = v497;
    *(v494 + 16) = 0;
    if (v505)
    {
      operator delete(v505);
    }
  }

  else
  {
    *v495 = 0xBAA35DF429A7267FLL;
    v495[1] = "md::ls::TextureHandleForType<Flyover::DiffuseTexture>]";
    v495[2] = 53;
    v497 = (v495 + 3);
  }

  *(v494 + 8) = v497;
  v506 = *a1;
  v507 = *(*a1 + 8);
  v508 = *(*a1 + 16);
  if (v507 >= v508)
  {
    v510 = 0xAAAAAAAAAAAAAAABLL * ((v507 - *v506) >> 3);
    v511 = v510 + 1;
    if (v510 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v512 = 0xAAAAAAAAAAAAAAABLL * ((v508 - *v506) >> 3);
    if (2 * v512 > v511)
    {
      v511 = 2 * v512;
    }

    if (v512 >= 0x555555555555555)
    {
      v513 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v513 = v511;
    }

    if (v513)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v513);
    }

    v514 = 24 * v510;
    *v514 = 0xD49B968135FE1A73;
    *(v514 + 8) = "md::ls::TextureHandleForType<Flyover::NightTexture>]";
    *(v514 + 16) = 51;
    v509 = 24 * v510 + 24;
    v515 = *(v506 + 8) - *v506;
    v516 = 24 * v510 - v515;
    memcpy((v514 - v515), *v506, v515);
    v517 = *v506;
    *v506 = v516;
    *(v506 + 8) = v509;
    *(v506 + 16) = 0;
    if (v517)
    {
      operator delete(v517);
    }
  }

  else
  {
    *v507 = 0xD49B968135FE1A73;
    v507[1] = "md::ls::TextureHandleForType<Flyover::NightTexture>]";
    v507[2] = 51;
    v509 = (v507 + 3);
  }

  *(v506 + 8) = v509;
  v518 = *a1;
  v519 = *(*a1 + 8);
  v520 = *(*a1 + 16);
  if (v519 >= v520)
  {
    v522 = 0xAAAAAAAAAAAAAAABLL * ((v519 - *v518) >> 3);
    v523 = v522 + 1;
    if (v522 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v524 = 0xAAAAAAAAAAAAAAABLL * ((v520 - *v518) >> 3);
    if (2 * v524 > v523)
    {
      v523 = 2 * v524;
    }

    if (v524 >= 0x555555555555555)
    {
      v525 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v525 = v523;
    }

    if (v525)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v525);
    }

    v526 = 24 * v522;
    *v526 = 0x985FB09D9DF9959FLL;
    *(v526 + 8) = "md::ls::HasStyleAttributeRasterSet]";
    *(v526 + 16) = 34;
    v521 = 24 * v522 + 24;
    v527 = *(v518 + 8) - *v518;
    v528 = 24 * v522 - v527;
    memcpy((v526 - v527), *v518, v527);
    v529 = *v518;
    *v518 = v528;
    *(v518 + 8) = v521;
    *(v518 + 16) = 0;
    if (v529)
    {
      operator delete(v529);
    }
  }

  else
  {
    *v519 = 0x985FB09D9DF9959FLL;
    v519[1] = "md::ls::HasStyleAttributeRasterSet]";
    v519[2] = 34;
    v521 = (v519 + 3);
  }

  *(v518 + 8) = v521;
  v530 = *a1;
  v531 = *(*a1 + 8);
  v532 = *(*a1 + 16);
  if (v531 >= v532)
  {
    v534 = 0xAAAAAAAAAAAAAAABLL * ((v531 - *v530) >> 3);
    v535 = v534 + 1;
    if (v534 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v536 = 0xAAAAAAAAAAAAAAABLL * ((v532 - *v530) >> 3);
    if (2 * v536 > v535)
    {
      v535 = 2 * v536;
    }

    if (v536 >= 0x555555555555555)
    {
      v537 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v537 = v535;
    }

    if (v537)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v537);
    }

    v538 = 24 * v534;
    *v538 = 0x9D7520A01DC69D83;
    *(v538 + 8) = "md::ls::HasMaterialRaster]";
    *(v538 + 16) = 25;
    v533 = 24 * v534 + 24;
    v539 = *(v530 + 8) - *v530;
    v540 = 24 * v534 - v539;
    memcpy((v538 - v539), *v530, v539);
    v541 = *v530;
    *v530 = v540;
    *(v530 + 8) = v533;
    *(v530 + 16) = 0;
    if (v541)
    {
      operator delete(v541);
    }
  }

  else
  {
    *v531 = 0x9D7520A01DC69D83;
    v531[1] = "md::ls::HasMaterialRaster]";
    v531[2] = 25;
    v533 = (v531 + 3);
  }

  *(v530 + 8) = v533;
  v542 = *a1;
  v543 = *(*a1 + 8);
  v544 = *(*a1 + 16);
  if (v543 >= v544)
  {
    v546 = 0xAAAAAAAAAAAAAAABLL * ((v543 - *v542) >> 3);
    v547 = v546 + 1;
    if (v546 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v548 = 0xAAAAAAAAAAAAAAABLL * ((v544 - *v542) >> 3);
    if (2 * v548 > v547)
    {
      v547 = 2 * v548;
    }

    if (v548 >= 0x555555555555555)
    {
      v549 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v549 = v547;
    }

    if (v549)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v549);
    }

    v550 = 24 * v546;
    *v550 = 0x11BB47B172EB0B40;
    *(v550 + 8) = "md::ls::NeedsClimateTint]";
    *(v550 + 16) = 24;
    v545 = 24 * v546 + 24;
    v551 = *(v542 + 8) - *v542;
    v552 = 24 * v546 - v551;
    memcpy((v550 - v551), *v542, v551);
    v553 = *v542;
    *v542 = v552;
    *(v542 + 8) = v545;
    *(v542 + 16) = 0;
    if (v553)
    {
      operator delete(v553);
    }
  }

  else
  {
    *v543 = 0x11BB47B172EB0B40;
    v543[1] = "md::ls::NeedsClimateTint]";
    v543[2] = 24;
    v545 = (v543 + 3);
  }

  *(v542 + 8) = v545;
  v554 = *a1;
  v555 = *(*a1 + 8);
  v556 = *(*a1 + 16);
  if (v555 >= v556)
  {
    v558 = 0xAAAAAAAAAAAAAAABLL * ((v555 - *v554) >> 3);
    v559 = v558 + 1;
    if (v558 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v560 = 0xAAAAAAAAAAAAAAABLL * ((v556 - *v554) >> 3);
    if (2 * v560 > v559)
    {
      v559 = 2 * v560;
    }

    if (v560 >= 0x555555555555555)
    {
      v561 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v561 = v559;
    }

    if (v561)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v561);
    }

    v562 = 24 * v558;
    *v562 = 0xA0C97F52893883B7;
    *(v562 + 8) = "md::ls::CustomRenderState]";
    *(v562 + 16) = 25;
    v557 = 24 * v558 + 24;
    v563 = *(v554 + 8) - *v554;
    v564 = 24 * v558 - v563;
    memcpy((v562 - v563), *v554, v563);
    v565 = *v554;
    *v554 = v564;
    *(v554 + 8) = v557;
    *(v554 + 16) = 0;
    if (v565)
    {
      operator delete(v565);
    }
  }

  else
  {
    *v555 = 0xA0C97F52893883B7;
    v555[1] = "md::ls::CustomRenderState]";
    v555[2] = 25;
    v557 = (v555 + 3);
  }

  *(v554 + 8) = v557;
  v566 = *a1;
  v567 = *(*a1 + 8);
  v568 = *(*a1 + 16);
  if (v567 >= v568)
  {
    v570 = 0xAAAAAAAAAAAAAAABLL * ((v567 - *v566) >> 3);
    v571 = v570 + 1;
    if (v570 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v572 = 0xAAAAAAAAAAAAAAABLL * ((v568 - *v566) >> 3);
    if (2 * v572 > v571)
    {
      v571 = 2 * v572;
    }

    if (v572 >= 0x555555555555555)
    {
      v573 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v573 = v571;
    }

    if (v573)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v573);
    }

    v574 = 24 * v570;
    *v574 = 0xE103B5C60804137ELL;
    *(v574 + 8) = "md::ls::ColorRampDataHandle]";
    *(v574 + 16) = 27;
    v569 = 24 * v570 + 24;
    v575 = *(v566 + 8) - *v566;
    v576 = 24 * v570 - v575;
    memcpy((v574 - v575), *v566, v575);
    v577 = *v566;
    *v566 = v576;
    *(v566 + 8) = v569;
    *(v566 + 16) = 0;
    if (v577)
    {
      operator delete(v577);
    }
  }

  else
  {
    *v567 = 0xE103B5C60804137ELL;
    v567[1] = "md::ls::ColorRampDataHandle]";
    v567[2] = 27;
    v569 = (v567 + 3);
  }

  *(v566 + 8) = v569;
  v578 = *a1;
  v579 = *(*a1 + 8);
  v580 = *(*a1 + 16);
  if (v579 >= v580)
  {
    v582 = 0xAAAAAAAAAAAAAAABLL * ((v579 - *v578) >> 3);
    v583 = v582 + 1;
    if (v582 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v584 = 0xAAAAAAAAAAAAAAABLL * ((v580 - *v578) >> 3);
    if (2 * v584 > v583)
    {
      v583 = 2 * v584;
    }

    if (v584 >= 0x555555555555555)
    {
      v585 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v585 = v583;
    }

    if (v585)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v585);
    }

    v586 = 24 * v582;
    *v586 = 0x7931433C9A6EB2C6;
    *(v586 + 8) = "md::ls::SharedUniqueID]";
    *(v586 + 16) = 22;
    v581 = 24 * v582 + 24;
    v587 = *(v578 + 8) - *v578;
    v588 = 24 * v582 - v587;
    memcpy((v586 - v587), *v578, v587);
    v589 = *v578;
    *v578 = v588;
    *(v578 + 8) = v581;
    *(v578 + 16) = 0;
    if (v589)
    {
      operator delete(v589);
    }
  }

  else
  {
    *v579 = 0x7931433C9A6EB2C6;
    v579[1] = "md::ls::SharedUniqueID]";
    v579[2] = 22;
    v581 = (v579 + 3);
  }

  *(v578 + 8) = v581;
  v590 = *a1;
  v591 = *(*a1 + 8);
  v592 = *(*a1 + 16);
  if (v591 >= v592)
  {
    v594 = 0xAAAAAAAAAAAAAAABLL * ((v591 - *v590) >> 3);
    v595 = v594 + 1;
    if (v594 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v596 = 0xAAAAAAAAAAAAAAABLL * ((v592 - *v590) >> 3);
    if (2 * v596 > v595)
    {
      v595 = 2 * v596;
    }

    if (v596 >= 0x555555555555555)
    {
      v597 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v597 = v595;
    }

    if (v597)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v597);
    }

    v598 = 24 * v594;
    *v598 = 0x7087983DEF28DBFELL;
    *(v598 + 8) = "md::ls::IsOpaque]";
    *(v598 + 16) = 16;
    v593 = 24 * v594 + 24;
    v599 = *(v590 + 8) - *v590;
    v600 = 24 * v594 - v599;
    memcpy((v598 - v599), *v590, v599);
    v601 = *v590;
    *v590 = v600;
    *(v590 + 8) = v593;
    *(v590 + 16) = 0;
    if (v601)
    {
      operator delete(v601);
    }
  }

  else
  {
    *v591 = 0x7087983DEF28DBFELL;
    v591[1] = "md::ls::IsOpaque]";
    v591[2] = 16;
    v593 = (v591 + 3);
  }

  *(v590 + 8) = v593;
  v602 = *a1;
  v603 = *(*a1 + 8);
  v604 = *(*a1 + 16);
  if (v603 >= v604)
  {
    v606 = 0xAAAAAAAAAAAAAAABLL * ((v603 - *v602) >> 3);
    v607 = v606 + 1;
    if (v606 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v608 = 0xAAAAAAAAAAAAAAABLL * ((v604 - *v602) >> 3);
    if (2 * v608 > v607)
    {
      v607 = 2 * v608;
    }

    if (v608 >= 0x555555555555555)
    {
      v609 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v609 = v607;
    }

    if (v609)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v609);
    }

    v610 = 24 * v606;
    *v610 = 0x73F0259EC1934FB1;
    *(v610 + 8) = "md::ls::IsTransparent]";
    *(v610 + 16) = 21;
    v605 = 24 * v606 + 24;
    v611 = *(v602 + 8) - *v602;
    v612 = 24 * v606 - v611;
    memcpy((v610 - v611), *v602, v611);
    v613 = *v602;
    *v602 = v612;
    *(v602 + 8) = v605;
    *(v602 + 16) = 0;
    if (v613)
    {
      operator delete(v613);
    }
  }

  else
  {
    *v603 = 0x73F0259EC1934FB1;
    v603[1] = "md::ls::IsTransparent]";
    v603[2] = 21;
    v605 = (v603 + 3);
  }

  *(v602 + 8) = v605;
  v614 = *a1;
  v615 = *(*a1 + 8);
  v616 = *(*a1 + 16);
  if (v615 >= v616)
  {
    v618 = 0xAAAAAAAAAAAAAAABLL * ((v615 - *v614) >> 3);
    v619 = v618 + 1;
    if (v618 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v620 = 0xAAAAAAAAAAAAAAABLL * ((v616 - *v614) >> 3);
    if (2 * v620 > v619)
    {
      v619 = 2 * v620;
    }

    if (v620 >= 0x555555555555555)
    {
      v621 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v621 = v619;
    }

    if (v621)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v621);
    }

    v622 = 24 * v618;
    *v622 = 0x499CE17DBD9A1615;
    *(v622 + 8) = "md::ls::NeedsZBias]";
    *(v622 + 16) = 18;
    v617 = 24 * v618 + 24;
    v623 = *(v614 + 8) - *v614;
    v624 = 24 * v618 - v623;
    memcpy((v622 - v623), *v614, v623);
    v625 = *v614;
    *v614 = v624;
    *(v614 + 8) = v617;
    *(v614 + 16) = 0;
    if (v625)
    {
      operator delete(v625);
    }
  }

  else
  {
    *v615 = 0x499CE17DBD9A1615;
    v615[1] = "md::ls::NeedsZBias]";
    v615[2] = 18;
    v617 = (v615 + 3);
  }

  *(v614 + 8) = v617;
  v626 = *a1;
  v627 = *(*a1 + 8);
  v628 = *(*a1 + 16);
  if (v627 >= v628)
  {
    v630 = 0xAAAAAAAAAAAAAAABLL * ((v627 - *v626) >> 3);
    v631 = v630 + 1;
    if (v630 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v632 = 0xAAAAAAAAAAAAAAABLL * ((v628 - *v626) >> 3);
    if (2 * v632 > v631)
    {
      v631 = 2 * v632;
    }

    if (v632 >= 0x555555555555555)
    {
      v633 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v633 = v631;
    }

    if (v633)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v633);
    }

    v634 = 24 * v630;
    *v634 = 0x98A9F01DBB8BCCCELL;
    *(v634 + 8) = "md::ls::PreserveHeight]";
    *(v634 + 16) = 22;
    v629 = 24 * v630 + 24;
    v635 = *(v626 + 8) - *v626;
    v636 = 24 * v630 - v635;
    memcpy((v634 - v635), *v626, v635);
    v637 = *v626;
    *v626 = v636;
    *(v626 + 8) = v629;
    *(v626 + 16) = 0;
    if (v637)
    {
      operator delete(v637);
    }
  }

  else
  {
    *v627 = 0x98A9F01DBB8BCCCELL;
    v627[1] = "md::ls::PreserveHeight]";
    v627[2] = 22;
    v629 = (v627 + 3);
  }

  *(v626 + 8) = v629;
  v638 = *a1;
  v639 = *(*a1 + 8);
  v640 = *(*a1 + 16);
  if (v639 >= v640)
  {
    v642 = 0xAAAAAAAAAAAAAAABLL * ((v639 - *v638) >> 3);
    v643 = v642 + 1;
    if (v642 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v644 = 0xAAAAAAAAAAAAAAABLL * ((v640 - *v638) >> 3);
    if (2 * v644 > v643)
    {
      v643 = 2 * v644;
    }

    if (v644 >= 0x555555555555555)
    {
      v645 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v645 = v643;
    }

    if (v645)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v645);
    }

    v646 = 24 * v642;
    *v646 = 0xE53EF176130D7769;
    *(v646 + 8) = "md::ls::InstanceCount]";
    *(v646 + 16) = 21;
    v641 = 24 * v642 + 24;
    v647 = *(v638 + 8) - *v638;
    v648 = 24 * v642 - v647;
    memcpy((v646 - v647), *v638, v647);
    v649 = *v638;
    *v638 = v648;
    *(v638 + 8) = v641;
    *(v638 + 16) = 0;
    if (v649)
    {
      operator delete(v649);
    }
  }

  else
  {
    *v639 = 0xE53EF176130D7769;
    v639[1] = "md::ls::InstanceCount]";
    v639[2] = 21;
    v641 = (v639 + 3);
  }

  *(v638 + 8) = v641;
  v650 = *a1;
  v651 = *(*a1 + 8);
  v652 = *(*a1 + 16);
  if (v651 >= v652)
  {
    v654 = 0xAAAAAAAAAAAAAAABLL * ((v651 - *v650) >> 3);
    v655 = v654 + 1;
    if (v654 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v656 = 0xAAAAAAAAAAAAAAABLL * ((v652 - *v650) >> 3);
    if (2 * v656 > v655)
    {
      v655 = 2 * v656;
    }

    if (v656 >= 0x555555555555555)
    {
      v657 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v657 = v655;
    }

    if (v657)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v657);
    }

    v658 = 24 * v654;
    *v658 = 0x76B9BA390004E44ELL;
    *(v658 + 8) = "md::ls::IsDecal]";
    *(v658 + 16) = 15;
    v653 = 24 * v654 + 24;
    v659 = *(v650 + 8) - *v650;
    v660 = 24 * v654 - v659;
    memcpy((v658 - v659), *v650, v659);
    v661 = *v650;
    *v650 = v660;
    *(v650 + 8) = v653;
    *(v650 + 16) = 0;
    if (v661)
    {
      operator delete(v661);
    }
  }

  else
  {
    *v651 = 0x76B9BA390004E44ELL;
    v651[1] = "md::ls::IsDecal]";
    v651[2] = 15;
    v653 = (v651 + 3);
  }

  *(v650 + 8) = v653;
  v662 = *a1;
  v663 = *(*a1 + 8);
  v664 = *(*a1 + 16);
  if (v663 >= v664)
  {
    v666 = 0xAAAAAAAAAAAAAAABLL * ((v663 - *v662) >> 3);
    v667 = v666 + 1;
    if (v666 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v668 = 0xAAAAAAAAAAAAAAABLL * ((v664 - *v662) >> 3);
    if (2 * v668 > v667)
    {
      v667 = 2 * v668;
    }

    if (v668 >= 0x555555555555555)
    {
      v669 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v669 = v667;
    }

    if (v669)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v669);
    }

    v670 = 24 * v666;
    *v670 = 0x3E8485C60908F920;
    *(v670 + 8) = "md::ls::IsMaterial]";
    *(v670 + 16) = 18;
    v665 = 24 * v666 + 24;
    v671 = *(v662 + 8) - *v662;
    v672 = 24 * v666 - v671;
    memcpy((v670 - v671), *v662, v671);
    v673 = *v662;
    *v662 = v672;
    *(v662 + 8) = v665;
    *(v662 + 16) = 0;
    if (v673)
    {
      operator delete(v673);
    }
  }

  else
  {
    *v663 = 0x3E8485C60908F920;
    v663[1] = "md::ls::IsMaterial]";
    v663[2] = 18;
    v665 = (v663 + 3);
  }

  *(v662 + 8) = v665;
  v674 = *a1;
  v675 = *(*a1 + 8);
  v676 = *(*a1 + 16);
  if (v675 >= v676)
  {
    v678 = 0xAAAAAAAAAAAAAAABLL * ((v675 - *v674) >> 3);
    v679 = v678 + 1;
    if (v678 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v680 = 0xAAAAAAAAAAAAAAABLL * ((v676 - *v674) >> 3);
    if (2 * v680 > v679)
    {
      v679 = 2 * v680;
    }

    if (v680 >= 0x555555555555555)
    {
      v681 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v681 = v679;
    }

    if (v681)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v681);
    }

    v682 = 24 * v678;
    *v682 = 0x1223E23132DA4D6ALL;
    *(v682 + 8) = "md::ls::TriPlanar]";
    *(v682 + 16) = 17;
    v677 = 24 * v678 + 24;
    v683 = *(v674 + 8) - *v674;
    v684 = 24 * v678 - v683;
    memcpy((v682 - v683), *v674, v683);
    v685 = *v674;
    *v674 = v684;
    *(v674 + 8) = v677;
    *(v674 + 16) = 0;
    if (v685)
    {
      operator delete(v685);
    }
  }

  else
  {
    *v675 = 0x1223E23132DA4D6ALL;
    v675[1] = "md::ls::TriPlanar]";
    v675[2] = 17;
    v677 = (v675 + 3);
  }

  *(v674 + 8) = v677;
  v686 = *a1;
  v687 = *(*a1 + 8);
  v688 = *(*a1 + 16);
  if (v687 >= v688)
  {
    v690 = 0xAAAAAAAAAAAAAAABLL * ((v687 - *v686) >> 3);
    v691 = v690 + 1;
    if (v690 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v692 = 0xAAAAAAAAAAAAAAABLL * ((v688 - *v686) >> 3);
    if (2 * v692 > v691)
    {
      v691 = 2 * v692;
    }

    if (v692 >= 0x555555555555555)
    {
      v693 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v693 = v691;
    }

    if (v693)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v693);
    }

    v694 = 24 * v690;
    *v694 = 0x237F9D3BCC905318;
    *(v694 + 8) = "md::ls::IsMercator]";
    *(v694 + 16) = 18;
    v689 = 24 * v690 + 24;
    v695 = *(v686 + 8) - *v686;
    v696 = 24 * v690 - v695;
    memcpy((v694 - v695), *v686, v695);
    v697 = *v686;
    *v686 = v696;
    *(v686 + 8) = v689;
    *(v686 + 16) = 0;
    if (v697)
    {
      operator delete(v697);
    }
  }

  else
  {
    *v687 = 0x237F9D3BCC905318;
    v687[1] = "md::ls::IsMercator]";
    v687[2] = 18;
    v689 = (v687 + 3);
  }

  *(v686 + 8) = v689;
  v698 = *a1;
  v699 = *(*a1 + 8);
  v700 = *(*a1 + 16);
  if (v699 >= v700)
  {
    v702 = 0xAAAAAAAAAAAAAAABLL * ((v699 - *v698) >> 3);
    v703 = v702 + 1;
    if (v702 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v704 = 0xAAAAAAAAAAAAAAABLL * ((v700 - *v698) >> 3);
    if (2 * v704 > v703)
    {
      v703 = 2 * v704;
    }

    if (v704 >= 0x555555555555555)
    {
      v705 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v705 = v703;
    }

    if (v705)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v705);
    }

    v706 = 24 * v702;
    *v706 = 0x6E6C3F5AAEB152E5;
    *(v706 + 8) = "md::ls::SupportsStylizedShading]";
    *(v706 + 16) = 31;
    v701 = 24 * v702 + 24;
    v707 = *(v698 + 8) - *v698;
    v708 = 24 * v702 - v707;
    memcpy((v706 - v707), *v698, v707);
    v709 = *v698;
    *v698 = v708;
    *(v698 + 8) = v701;
    *(v698 + 16) = 0;
    if (v709)
    {
      operator delete(v709);
    }
  }

  else
  {
    *v699 = 0x6E6C3F5AAEB152E5;
    v699[1] = "md::ls::SupportsStylizedShading]";
    v699[2] = 31;
    v701 = (v699 + 3);
  }

  *(v698 + 8) = v701;
  v710 = *a1;
  v711 = *(*a1 + 8);
  v712 = *(*a1 + 16);
  if (v711 >= v712)
  {
    v714 = 0xAAAAAAAAAAAAAAABLL * ((v711 - *v710) >> 3);
    v715 = v714 + 1;
    if (v714 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v716 = 0xAAAAAAAAAAAAAAABLL * ((v712 - *v710) >> 3);
    if (2 * v716 > v715)
    {
      v715 = 2 * v716;
    }

    if (v716 >= 0x555555555555555)
    {
      v717 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v717 = v715;
    }

    if (v717)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v717);
    }

    v718 = 24 * v714;
    *v718 = 0xC48764EACEE66A08;
    *(v718 + 8) = "md::ls::SupportsSteepnessDarkening]";
    *(v718 + 16) = 34;
    v713 = 24 * v714 + 24;
    v719 = *(v710 + 8) - *v710;
    v720 = 24 * v714 - v719;
    memcpy((v718 - v719), *v710, v719);
    v721 = *v710;
    *v710 = v720;
    *(v710 + 8) = v713;
    *(v710 + 16) = 0;
    if (v721)
    {
      operator delete(v721);
    }
  }

  else
  {
    *v711 = 0xC48764EACEE66A08;
    v711[1] = "md::ls::SupportsSteepnessDarkening]";
    v711[2] = 34;
    v713 = (v711 + 3);
  }

  *(v710 + 8) = v713;
  v722 = *a1;
  v723 = *(*a1 + 8);
  v724 = *(*a1 + 16);
  if (v723 >= v724)
  {
    v726 = 0xAAAAAAAAAAAAAAABLL * ((v723 - *v722) >> 3);
    v727 = v726 + 1;
    if (v726 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v728 = 0xAAAAAAAAAAAAAAABLL * ((v724 - *v722) >> 3);
    if (2 * v728 > v727)
    {
      v727 = 2 * v728;
    }

    if (v728 >= 0x555555555555555)
    {
      v729 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v729 = v727;
    }

    if (v729)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v729);
    }

    v730 = 24 * v726;
    *v730 = 0x69465F3BE0BF85FBLL;
    *(v730 + 8) = "md::ls::FlyoverInstance]";
    *(v730 + 16) = 23;
    v725 = 24 * v726 + 24;
    v731 = *(v722 + 8) - *v722;
    v732 = 24 * v726 - v731;
    memcpy((v730 - v731), *v722, v731);
    v733 = *v722;
    *v722 = v732;
    *(v722 + 8) = v725;
    *(v722 + 16) = 0;
    if (v733)
    {
      operator delete(v733);
    }
  }

  else
  {
    *v723 = 0x69465F3BE0BF85FBLL;
    v723[1] = "md::ls::FlyoverInstance]";
    v723[2] = 23;
    v725 = (v723 + 3);
  }

  *(v722 + 8) = v725;
  v734 = *a1;
  v735 = *(*a1 + 8);
  v736 = *(*a1 + 16);
  if (v735 >= v736)
  {
    v738 = 0xAAAAAAAAAAAAAAABLL * ((v735 - *v734) >> 3);
    v739 = v738 + 1;
    if (v738 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v740 = 0xAAAAAAAAAAAAAAABLL * ((v736 - *v734) >> 3);
    if (2 * v740 > v739)
    {
      v739 = 2 * v740;
    }

    if (v740 >= 0x555555555555555)
    {
      v741 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v741 = v739;
    }

    if (v741)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v741);
    }

    v742 = 24 * v738;
    *v742 = 0x3EAAB620EAA88EC8;
    *(v742 + 8) = "md::ls::CustomZIndex]";
    *(v742 + 16) = 20;
    v737 = 24 * v738 + 24;
    v743 = *(v734 + 8) - *v734;
    v744 = 24 * v738 - v743;
    memcpy((v742 - v743), *v734, v743);
    v745 = *v734;
    *v734 = v744;
    *(v734 + 8) = v737;
    *(v734 + 16) = 0;
    if (v745)
    {
      operator delete(v745);
    }
  }

  else
  {
    *v735 = 0x3EAAB620EAA88EC8;
    v735[1] = "md::ls::CustomZIndex]";
    v735[2] = 20;
    v737 = (v735 + 3);
  }

  *(v734 + 8) = v737;
  v746 = *a1;
  v747 = *(*a1 + 8);
  v748 = *(*a1 + 16);
  if (v747 >= v748)
  {
    v750 = 0xAAAAAAAAAAAAAAABLL * ((v747 - *v746) >> 3);
    v751 = v750 + 1;
    if (v750 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_770;
    }

    v752 = 0xAAAAAAAAAAAAAAABLL * ((v748 - *v746) >> 3);
    if (2 * v752 > v751)
    {
      v751 = 2 * v752;
    }

    if (v752 >= 0x555555555555555)
    {
      v753 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v753 = v751;
    }

    if (v753)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v753);
    }

    v754 = 24 * v750;
    *v754 = 0x763953A644184BA9;
    *(v754 + 8) = "md::ls::RenderableHash]";
    *(v754 + 16) = 22;
    v749 = 24 * v750 + 24;
    v755 = *(v746 + 8) - *v746;
    v756 = 24 * v750 - v755;
    memcpy((v754 - v755), *v746, v755);
    v757 = *v746;
    *v746 = v756;
    *(v746 + 8) = v749;
    *(v746 + 16) = 0;
    if (v757)
    {
      operator delete(v757);
    }
  }

  else
  {
    *v747 = 0x763953A644184BA9;
    v747[1] = "md::ls::RenderableHash]";
    v747[2] = 22;
    v749 = (v747 + 3);
  }

  *(v746 + 8) = v749;
  v758 = *a1;
  v759 = *(*a1 + 8);
  v760 = *(*a1 + 16);
  if (v759 < v760)
  {
    *v759 = 0xCB8AA7FBA6BCD25CLL;
    v759[1] = "md::ls::PredefinedRenderState]";
    v759[2] = 29;
    v761 = (v759 + 3);
    goto LABEL_769;
  }

  v762 = 0xAAAAAAAAAAAAAAABLL * ((v759 - *v758) >> 3);
  v763 = v762 + 1;
  if (v762 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_770:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v764 = 0xAAAAAAAAAAAAAAABLL * ((v760 - *v758) >> 3);
  if (2 * v764 > v763)
  {
    v763 = 2 * v764;
  }

  if (v764 >= 0x555555555555555)
  {
    v765 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v765 = v763;
  }

  if (v765)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::TypeInfo>>(v765);
  }

  v766 = 24 * v762;
  *v766 = 0xCB8AA7FBA6BCD25CLL;
  *(v766 + 8) = "md::ls::PredefinedRenderState]";
  *(v766 + 16) = 29;
  v761 = 24 * v762 + 24;
  v767 = *(v758 + 8) - *v758;
  v768 = 24 * v762 - v767;
  memcpy((v766 - v767), *v758, v767);
  v769 = *v758;
  *v758 = v768;
  *(v758 + 8) = v761;
  *(v758 + 16) = 0;
  if (v769)
  {
    operator delete(v769);
  }

LABEL_769:
  *(v758 + 8) = v761;
}