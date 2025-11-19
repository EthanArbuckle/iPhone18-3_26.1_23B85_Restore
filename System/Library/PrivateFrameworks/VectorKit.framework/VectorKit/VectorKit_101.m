void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A142A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleRouteLineMask>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci20StyleGroundOcclusionEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A141D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A141F8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A141D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleGroundOcclusion>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci18StyleEmissiveColorEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14108;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14128;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14108;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleEmissiveColor>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci5StyleEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14038;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A14058;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A14038;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci10StyleColorEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13F68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13F88;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13F68;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci19StyleCameraLightingEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13E98;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13EB8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13E98;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci10StyleBlendEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13DC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13DE8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13DC8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleBlend>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci6ShadowEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13CF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13D18;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13CF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci16RenderTargetSizeEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13C28;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13C48;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13C28;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RenderTargetSize>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci13RasterOverlayEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13B58;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13B78;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13B58;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci16PlanarParametersEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13A88;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13AA8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13A88;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::PlanarParameters>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci13MaterialStyleEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A139B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A139D8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A139B8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::MaterialStyle>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci16GroundAtmosphereEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A138E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13908;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A138E8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GroundAtmosphere>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci18GradientParametersEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13818;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13838;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13818;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::GradientParameters>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci14ElevatedStrokeEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13748;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13768;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13748;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci21ColorCorrectionFactorEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13678;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13698;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13678;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_8Blending14SRGBBlendStyleEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A135A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A135C8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A135A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINS9_7DaVinci3UVsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A134D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A134F8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A134D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::UVs>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINS9_7DaVinci7NormalsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13408;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13428;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13408;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Normals>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINS9_7DaVinci10ElevationsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13338;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13358;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13338;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::Elevations>>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls26RequiresShaderDeviceDataIDIN3ggl15DeviceDataTypedINS9_7DaVinci17InstanceTransformEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EEclEOSP_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13268;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13288;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13268;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderDeviceDataID<ggl::DeviceDataTyped<ggl::DaVinci::InstanceTransform>>,64ul>::~storage(a1);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(a2);
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
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
    v58 = a2;
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
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7Flyover12NightTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13198;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A131B8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A13198;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::NightTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13150;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(a2);
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
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
    v58 = a2;
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
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7Flyover14DiffuseTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A130C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A130E8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A130C8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A13080;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(a2);
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
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
    v58 = a2;
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
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7Flyover17AtmosphereTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12FF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A13018;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12FF8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A12FB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci10TexTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12F28;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A12F48;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12F28;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci18TemperatureTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12E58;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A12E78;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12E58;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci12StyleTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12D88;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A12DA8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12D88;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci17StyleIndexTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12CB8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A12CD8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12CB8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>,64ul>::~storage(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci13ShadowTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A12C28;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci13ShadowTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci13ShadowTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A12C28;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12BE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A12C08;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12BE8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>,64ul>::~storage(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::ShadowTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[502];
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci16RouteMaskTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci16RouteMaskTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A12B58;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12B18;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A12B38;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12B18;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci14OverlayTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12A48;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A12A68;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12A48;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci16OcclusionTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12978;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A12998;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12978;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci16Gradient2TextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A128A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A128C8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A128A8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci16Gradient1TextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A127D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A127F8;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A127D8;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci15EmissiveTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12708;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A12728;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12708;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>,64ul>::~storage(a1);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 20);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>(a2);
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
    v56 = *(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
    v57 = *(a1 + 8);
    *(v56 + 8) = *(a1 + 16);
    *v56 = v57;
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v59 = v5;
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
    v58 = a2;
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
    a2 = v58;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28) + 12 * (v27 & 0x3F);
  v5 = v59;
  v52 = *(a1 + 8);
  *(v51 + 8) = *(a1 + 16);
  *v51 = v52;
  v53 = *(v7 + 152);
  for (i = *(v7 + 160); v53 != i; v53 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v53 + 24), v4);
  }

LABEL_54:
  v55 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v55 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>(void)::metadata) = *(a2 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci14DiffuseTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12638;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A12658;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12638;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>,64ul>::~storage(a1);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>(ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A125F0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci14AridityTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12568;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A12588;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12568;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>,64ul>::~storage(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci14AmbientTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EEclEOSM_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(v3);
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
        v16 = *(v15 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 12 * (v14 & 0x3F);
        v17 = *(v15 + ((v13 >> 3) & 0x1FF8)) + 12 * (v13 & 0x3F);
        v18 = *(v17 + 8);
        v19 = *v17;
        v20 = *(v16 + 8);
        *v17 = *v16;
        *(v17 + 8) = v20;
        *v16 = v19;
        *(v16 + 8) = v18;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12470;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A12490;
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

void ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A12470;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::RequiresShaderTextureID<DaVinci::AmbientTexture>,64ul>::~storage(a1);
}

__n128 std::__function::__func<md::ita::MarkPipelineDataRequirements::operator()(ecs2::Query<md::ls::RenderItemID const&,md::ls::NeedsFunctionConstantsUpdate const&,md::ls::DataIDSetToUse const&,md::ls::RequiredPipelinePoolID const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::MarkPipelineDataRequirements::operator()(ecs2::Query<md::ls::RenderItemID const&,md::ls::NeedsFunctionConstantsUpdate const&,md::ls::DataIDSetToUse const&,md::ls::RequiredPipelinePoolID const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::RenderItemID const&,md::ls::NeedsFunctionConstantsUpdate const&,md::ls::DataIDSetToUse const&,md::ls::RequiredPipelinePoolID const&,md::ls::PipelineSetup &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A123E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::ita::AssignStyleConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A15370;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::StyleDataKeyHandle>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 12 * (v27 & 0x3F), v30 + 8 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>> const&,md::ls::StyleDataKeyHandle const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F0F810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>> const&,md::ls::StyleDataKeyHandle const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>> const&,md::ls::StyleDataKeyHandle const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignStyleConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>> const&,md::ls::StyleDataKeyHandle const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>> const&,md::ls::StyleDataKeyHandle const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>> const&,md::ls::StyleDataKeyHandle const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = (ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v8 + 177, *a4) - v8[181]) >> 3;
  v11 = v10 & 0x3F;
  v12 = (v10 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v13 = (*(v8[190] + v12) + 16 * v11);
  ++*(*(v8[184] + v12) + 24 * v11);
  v14 = md::getCachedHandle<md::ConstantDataStorage<ggl::DaVinci::Style>,geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::StyleCacheKey,ggl::ConstantDataTyped<ggl::DaVinci::Style>,md::StyleCacheKeyHasher>(v8[167], v8[168], v13);
  v15 = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(v8 + 123, v14);
  if (v15)
  {
    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  if (*a3 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a3 + 4), v16);
  }

  if (*(a3 + 1) == 1)
  {
    v17 = *(a3 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v17, v16);
  }
}

uint64_t std::__function::__func<md::ita::AssignStyleConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>> const&,md::ls::StyleDataKeyHandle const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>> const&,md::ls::StyleDataKeyHandle const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>> const&,md::ls::StyleDataKeyHandle const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15370;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignColorCorrectionFactor::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A153B8;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ColorCorrectionDataKeyHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::ColorCorrectionDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F0FDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::ColorCorrectionDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::ColorCorrectionDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignColorCorrectionFactor::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::ColorCorrectionDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignColorCorrectionFactor::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::ColorCorrectionDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::ColorCorrectionDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = md::getStorage<geo::handle<md::CachedKey<md::ColorCorrectionKey>>,md::CachedKey<md::ColorCorrectionKey>,md::CachedKey<md::ColorCorrectionKey>*>(v8 + 717, *a3);
  v11 = std::__hash_table<std::__hash_value_type<md::ColorCorrectionKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>>,std::__unordered_map_hasher<md::ColorCorrectionKey,std::__hash_value_type<md::ColorCorrectionKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>>,md::ColorCorrectionKeyHasher,std::equal_to<md::ColorCorrectionKey>,true>,std::__unordered_map_equal<md::ColorCorrectionKey,std::__hash_value_type<md::ColorCorrectionKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>>,std::equal_to<md::ColorCorrectionKey>,md::ColorCorrectionKeyHasher,true>,std::allocator<std::__hash_value_type<md::ColorCorrectionKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::ColorCorrectionFactor>>>>>::find<md::ColorCorrectionKey>(v8 + 707, v10);
  if (v11)
  {
    v12 = v11[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = md::getStorage<geo::handle<md::ConstantDataResource<ggl::DaVinci::Style>>,md::ConstantDataStorage<ggl::DaVinci::Style>,ggl::ConstantDataTyped<ggl::DaVinci::Style> *>(v8 + 663, v12);
  if (v13)
  {
    v14 = *v13;
  }

  else
  {
    v14 = 0;
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v14);
  }

  if (*(a4 + 1) == 1)
  {
    v15 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v15, v14);
  }
}

uint64_t std::__function::__func<md::ita::AssignColorCorrectionFactor::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::ColorCorrectionDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignColorCorrectionFactor::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::ColorCorrectionDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::ColorCorrectionDataKeyHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A153B8;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignFlyoverMaterialConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v59[5] = *MEMORY[0x1E69E9840];
  v57[0] = &unk_1F2A15400;
  v57[1] = a1;
  v58 = v57;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonMaterialHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v59[0] = v4;
  v59[1] = v5;
  v59[2] = v6;
  v59[3] = v7;
  v9 = 1;
  v10 = v4;
  v11 = v59;
  v59[4] = v8;
  do
  {
    if (*(v59[v9] + 40) - *(v59[v9] + 32) < *(v10 + 40) - *(v10 + 32))
    {
      v10 = v59[v9];
      v11 = &v59[v9];
    }

    ++v9;
  }

  while (v9 != 5);
  v12 = *(*v11 + 32);
  v13 = *(*v11 + 40);
  v50 = v12;
  v51 = v13;
  v52 = v4;
  v53 = v5;
  v54 = v6;
  v55 = v7;
  v56 = v8;
  while (v12 != v13 && !ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v50, *v12, v12[1]))
  {
    v12 += 2;
    v50 = v12;
  }

  v14 = v50;
  if (v50 == v13)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
  }

  else
  {
    v48 = a2;
    v15 = v52;
    v16 = v53;
    v17 = v54;
    v18 = v55;
    v19 = v56;
    v49 = _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
    v22 = v51;
    do
    {
      v23 = v14[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v29 = *(*(v16 + 56) + ((v28 >> 3) & 0x1FF8));
      v30 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v31 = *(*(v17 + 56) + ((v30 >> 3) & 0x1FF8));
      v32 = *(v18 + 32);
      v33 = *(*(v18 + 8) + v25) + 4 * v24;
      v34 = *(*(*(v19 + 8) + v25) + 4 * v24 + 2);
      v35 = *(*(v19 + 56) + ((v34 >> 3) & 0x1FF8));
      v36 = *(v33 + 2);
      *(v49 + 104 * *v20 + 24) = *v14;
      if (!v58)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v58 + 48))(v58, v27 + 8 * (v26 & 0x3F), v29 + 8 * (v28 & 0x3F), v31 + 12 * (v30 & 0x3F), v32 + 4 * v36, v35 + 8 * (v34 & 0x3F));
      ++v21;
      v37 = v14 + 2;
      while (1)
      {
        v14 = v37;
        v50 = v37;
        if (v37 == v22)
        {
          break;
        }

        v38 = ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v50, *v37, v37[1]);
        v37 = v14 + 2;
        if (v38)
        {
          v39 = v14;
          goto LABEL_17;
        }
      }

      v39 = v22;
LABEL_17:
      ;
    }

    while (v39 != v13);
    v40 = *(v48 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v40 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v40 + 4096);
    v41 = v49;
  }

  *(v41 + 104 * *v20 + 24) = -65536;
  v42 = v41 + 104 * *v20;
  v43 = *(v42 + 92);
  *(v42 + 92) = v43 + 1;
  *(v42 + 4 * v43 + 28) = v21;
  v44 = v41 + 104 * *v20;
  v46 = *(v44 + 92);
  v45 = (v44 + 92);
  if (v46 >= 0x10)
  {
    *v45 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonMaterialHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v57);
}

void sub_1B2F103F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonMaterialHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonMaterialHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignFlyoverMaterialConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonMaterialHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverMaterialConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonMaterialHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonMaterialHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a6);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a6);
  v11 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v9 + 1135, *a3);
  if (v11 == v9[1140] || (v12 = (v11 - v9[1139]) >> 3, v13 = (v12 >> 3) & 0x1FFFFFFFFFFFFFF8, v14 = *(v9[1148] + v13), ++*(*(v9[1142] + v13) + 24 * (v12 & 0x3F)), !v14))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v14 + 24 * (v12 & 0x3F));
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v15);
  }

  if (*(a4 + 1) == 1)
  {
    v16 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v16, v15);
  }
}

uint64_t std::__function::__func<md::ita::AssignFlyoverMaterialConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonMaterialHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverMaterialConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonMaterialHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonMaterialHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15400;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignFlyoverTexcoordsConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v59[5] = *MEMORY[0x1E69E9840];
  v57[0] = &unk_1F2A15448;
  v57[1] = a1;
  v58 = v57;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTexcoordsHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v59[0] = v4;
  v59[1] = v5;
  v59[2] = v6;
  v59[3] = v7;
  v9 = 1;
  v10 = v4;
  v11 = v59;
  v59[4] = v8;
  do
  {
    if (*(v59[v9] + 40) - *(v59[v9] + 32) < *(v10 + 40) - *(v10 + 32))
    {
      v10 = v59[v9];
      v11 = &v59[v9];
    }

    ++v9;
  }

  while (v9 != 5);
  v12 = *(*v11 + 32);
  v13 = *(*v11 + 40);
  v50 = v12;
  v51 = v13;
  v52 = v4;
  v53 = v5;
  v54 = v6;
  v55 = v7;
  v56 = v8;
  while (v12 != v13 && !ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v50, *v12, v12[1]))
  {
    v12 += 2;
    v50 = v12;
  }

  v14 = v50;
  if (v50 == v13)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
  }

  else
  {
    v48 = a2;
    v15 = v52;
    v16 = v53;
    v17 = v54;
    v18 = v55;
    v19 = v56;
    v49 = _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
    v22 = v51;
    do
    {
      v23 = v14[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v29 = *(*(v16 + 56) + ((v28 >> 3) & 0x1FF8));
      v30 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v31 = *(*(v17 + 56) + ((v30 >> 3) & 0x1FF8));
      v32 = *(v18 + 32);
      v33 = *(*(v18 + 8) + v25) + 4 * v24;
      v34 = *(*(*(v19 + 8) + v25) + 4 * v24 + 2);
      v35 = *(*(v19 + 56) + ((v34 >> 3) & 0x1FF8));
      v36 = *(v33 + 2);
      *(v49 + 104 * *v20 + 24) = *v14;
      if (!v58)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v58 + 48))(v58, v27 + 8 * (v26 & 0x3F), v29 + 8 * (v28 & 0x3F), v31 + 12 * (v30 & 0x3F), v32 + 4 * v36, v35 + 8 * (v34 & 0x3F));
      ++v21;
      v37 = v14 + 2;
      while (1)
      {
        v14 = v37;
        v50 = v37;
        if (v37 == v22)
        {
          break;
        }

        v38 = ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v50, *v37, v37[1]);
        v37 = v14 + 2;
        if (v38)
        {
          v39 = v14;
          goto LABEL_17;
        }
      }

      v39 = v22;
LABEL_17:
      ;
    }

    while (v39 != v13);
    v40 = *(v48 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v40 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v40 + 4096);
    v41 = v49;
  }

  *(v41 + 104 * *v20 + 24) = -65536;
  v42 = v41 + 104 * *v20;
  v43 = *(v42 + 92);
  *(v42 + 92) = v43 + 1;
  *(v42 + 4 * v43 + 28) = v21;
  v44 = v41 + 104 * *v20;
  v46 = *(v44 + 92);
  v45 = (v44 + 92);
  if (v46 >= 0x10)
  {
    *v45 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTexcoordsHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v57);
}

void sub_1B2F10A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTexcoordsHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTexcoordsHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignFlyoverTexcoordsConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTexcoordsHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverTexcoordsConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTexcoordsHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTexcoordsHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a6);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a6);
  v11 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v9 + 1099, *a3);
  if (v11 == v9[1104] || (v12 = (v11 - v9[1103]) >> 3, v13 = (v12 >> 3) & 0x1FFFFFFFFFFFFFF8, v14 = *(v9[1112] + v13), ++*(*(v9[1106] + v13) + 24 * (v12 & 0x3F)), !v14))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v14 + 24 * (v12 & 0x3F));
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v15);
  }

  if (*(a4 + 1) == 1)
  {
    v16 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v16, v15);
  }
}

uint64_t std::__function::__func<md::ita::AssignFlyoverTexcoordsConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTexcoordsHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverTexcoordsConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTexcoordsHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTexcoordsHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15448;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::PipelineSetup &,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignFlyoverSharedConstantData::operator()(ecs2::Query<md::ls::FlyoverSharedConstants const&>,ecs2::Query<md::ls::PipelineSetup &,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> const&>)::$_1,std::allocator<md::ita::AssignFlyoverSharedConstantData::operator()(ecs2::Query<md::ls::FlyoverSharedConstants const&>,ecs2::Query<md::ls::PipelineSetup &,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> const&>)::$_1>,void ()(md::ls::PipelineSetup &,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> const&)>::operator()(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  md::VKMRenderResourcesStore::getPipelineDataSet(**(a1 + 8), *a2);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(**(a1 + 8), *a2);
  v8 = Pipeline;
  v9 = **(a1 + 16);
  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v9);
  }

  if (*(a4 + 1) == 1)
  {
    v10 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(v8, v10, v9);
  }
}

__n128 std::__function::__func<md::ita::AssignFlyoverSharedConstantData::operator()(ecs2::Query<md::ls::FlyoverSharedConstants const&>,ecs2::Query<md::ls::PipelineSetup &,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> const&>)::$_1,std::allocator<md::ita::AssignFlyoverSharedConstantData::operator()(ecs2::Query<md::ls::FlyoverSharedConstants const&>,ecs2::Query<md::ls::PipelineSetup &,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> const&>)::$_1>,void ()(md::ls::PipelineSetup &,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A154D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls22FlyoverSharedConstantsEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverSharedConstants>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::FlyoverSharedConstants>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverSharedConstants,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D318;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::FlyoverSharedConstants,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::FlyoverSharedConstants,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A1D338;
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

void ecs2::storage<ecs2::Entity,md::ls::FlyoverSharedConstants,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::FlyoverSharedConstants,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::FlyoverSharedConstants,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A1D318;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::FlyoverSharedConstants,64ul>::~storage(a1);
}

uint64_t std::__function::__func<md::ita::AssignFlyoverSharedConstantData::operator()(ecs2::Query<md::ls::FlyoverSharedConstants const&>,ecs2::Query<md::ls::PipelineSetup &,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> const&>)::$_0,std::allocator<md::ita::AssignFlyoverSharedConstantData::operator()(ecs2::Query<md::ls::FlyoverSharedConstants const&>,ecs2::Query<md::ls::PipelineSetup &,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> const&>)::$_0>,void ()(md::ls::FlyoverSharedConstants const&)>::operator()(uint64_t a1, unint64_t *a2)
{
  result = md::VKMRenderResourcesStore::getConstantData<ggl::FlyoverCommon::Shared>(**(a1 + 16), *a2);
  **(a1 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::ita::AssignFlyoverSharedConstantData::operator()(ecs2::Query<md::ls::FlyoverSharedConstants const&>,ecs2::Query<md::ls::PipelineSetup &,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> const&>)::$_0,std::allocator<md::ita::AssignFlyoverSharedConstantData::operator()(ecs2::Query<md::ls::FlyoverSharedConstants const&>,ecs2::Query<md::ls::PipelineSetup &,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>> const&>)::$_0>,void ()(md::ls::FlyoverSharedConstants const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A15490;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t md::ita::AssignFlyoverAtmosphereTextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v47[3] = *MEMORY[0x1E69E9840];
  v45[0] = &unk_1F2A15520;
  v45[1] = a1;
  v46 = v45;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v47[0] = v4;
  v47[1] = v5;
  v7 = 1;
  v8 = v4;
  v9 = v47;
  v47[2] = v6;
  do
  {
    if (*(v47[v7] + 40) - *(v47[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = v47[v7];
      v9 = &v47[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v10 = *(*v9 + 32);
  v11 = *(*v9 + 40);
  v40 = v10;
  v41 = v11;
  v42 = v4;
  v43 = v5;
  v44 = v6;
  while (v10 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v40, *v10, v10[1]))
  {
    v10 += 2;
    v40 = v10;
  }

  v12 = v40;
  if (v40 == v11)
  {
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
  }

  else
  {
    v39 = a2;
    v13 = v42;
    v14 = v43;
    v15 = v44;
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
    v19 = v41;
    do
    {
      v20 = v12[1];
      v21 = v20 & 0x3F;
      v22 = (v20 >> 3) & 0x1FF8;
      v23 = *(*(*(v13 + 8) + v22) + 4 * v21 + 2);
      v24 = *(*(v13 + 56) + ((v23 >> 3) & 0x1FF8));
      v25 = *(*(*(v14 + 8) + v22) + 4 * v21 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v22) + 4 * v21 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      *(v16 + 104 * *v17 + 24) = *v12;
      if (!v46)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v46 + 48))(v46, v24 + 8 * (v23 & 0x3F), v26 + 12 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F));
      ++v18;
      v29 = v12 + 2;
      while (1)
      {
        v12 = v29;
        v40 = v29;
        if (v29 == v19)
        {
          break;
        }

        v30 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v40, *v29, v29[1]);
        v29 = v12 + 2;
        if (v30)
        {
          v31 = v12;
          goto LABEL_17;
        }
      }

      v31 = v19;
LABEL_17:
      ;
    }

    while (v31 != v11);
    v32 = *(v39 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v32 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v32 + 4096);
  }

  *(v16 + 104 * *v17 + 24) = -65536;
  v33 = v16 + 104 * *v17;
  v34 = *(v33 + 92);
  *(v33 + 92) = v34 + 1;
  *(v33 + 4 * v34 + 28) = v18;
  v35 = v16 + 104 * *v17;
  v37 = *(v35 + 92);
  v36 = (v35 + 92);
  if (v37 >= 0x10)
  {
    *v36 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v45);
}

void sub_1B2F115E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::ita::AssignFlyoverAtmosphereTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverAtmosphereTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = *(a1 + 8);
  v6 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v5);
  v7 = ecs2::ExecutionTask<md::LayoutContextProvider *,md::RenderLayerProvider *>::service<md::RenderLayerProvider>(v5);
  v8 = *((*(*v7 + 56))(v7) + 1256);
  PipelineDataSet = md::VKMRenderResourcesStore::getPipelineDataSet(v6, *a4);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v6, *a4);
  v11 = gdc::typeIndex<Flyover::AtmosphereTexture>();
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(PipelineDataSet, v11);
  if (result)
  {
    {
      if (v15)
      {
        md::typeToIntMap(v15);
        md::setTextureForPipeline<Flyover::AtmosphereTexture>(std::unordered_set<unsigned long> const&,ggl::PipelineSetup *,ggl::Texture *)::typeBindingInfoMap = &md::typeToIntMap(void)::typeToIntMap;
      }
    }

    result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(md::setTextureForPipeline<Flyover::AtmosphereTexture>(std::unordered_set<unsigned long> const&,ggl::PipelineSetup *,ggl::Texture *)::typeBindingInfoMap, v11);
    if (!result)
    {
      abort();
    }

    v13 = *(result + 24);
    v14 = *(result + 28);
    if (v13 != -1)
    {
      result = ggl::PipelineSetup::setTextureData(Pipeline, v13, v8);
    }

    if (v14 != -1)
    {

      return ggl::PipelineSetup::setTextureData(Pipeline, v14, v8);
    }
  }

  return result;
}

uint64_t std::__function::__func<md::ita::AssignFlyoverAtmosphereTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverAtmosphereTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::AtmosphereTexture> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15520;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignFlyoverDiffuseTextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v59[5] = *MEMORY[0x1E69E9840];
  v57[0] = &unk_1F2A15568;
  v57[1] = a1;
  v58 = v57;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::DiffuseTexture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v59[0] = v4;
  v59[1] = v5;
  v59[2] = v6;
  v59[3] = v7;
  v9 = 1;
  v10 = v4;
  v11 = v59;
  v59[4] = v8;
  do
  {
    if (*(v59[v9] + 40) - *(v59[v9] + 32) < *(v10 + 40) - *(v10 + 32))
    {
      v10 = v59[v9];
      v11 = &v59[v9];
    }

    ++v9;
  }

  while (v9 != 5);
  v12 = *(*v11 + 32);
  v13 = *(*v11 + 40);
  v50 = v12;
  v51 = v13;
  v52 = v4;
  v53 = v5;
  v54 = v6;
  v55 = v7;
  v56 = v8;
  while (v12 != v13 && !ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v50, *v12, v12[1]))
  {
    v12 += 2;
    v50 = v12;
  }

  v14 = v50;
  if (v50 == v13)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
  }

  else
  {
    v48 = a2;
    v15 = v52;
    v16 = v53;
    v17 = v54;
    v18 = v55;
    v19 = v56;
    v49 = _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
    v22 = v51;
    do
    {
      v23 = v14[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v29 = *(*(v16 + 56) + ((v28 >> 3) & 0x1FF8));
      v30 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v31 = *(*(v17 + 56) + ((v30 >> 3) & 0x1FF8));
      v32 = *(v18 + 32);
      v33 = *(*(v18 + 8) + v25) + 4 * v24;
      v34 = *(*(*(v19 + 8) + v25) + 4 * v24 + 2);
      v35 = *(*(v19 + 56) + ((v34 >> 3) & 0x1FF8));
      v36 = *(v33 + 2);
      *(v49 + 104 * *v20 + 24) = *v14;
      if (!v58)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v58 + 48))(v58, v27 + 8 * (v26 & 0x3F), v29 + 12 * (v28 & 0x3F), v31 + 16 * (v30 & 0x3F), v32 + 4 * v36, v35 + 8 * (v34 & 0x3F));
      ++v21;
      v37 = v14 + 2;
      while (1)
      {
        v14 = v37;
        v50 = v37;
        if (v37 == v22)
        {
          break;
        }

        v38 = ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v50, *v37, v37[1]);
        v37 = v14 + 2;
        if (v38)
        {
          v39 = v14;
          goto LABEL_17;
        }
      }

      v39 = v22;
LABEL_17:
      ;
    }

    while (v39 != v13);
    v40 = *(v48 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v40 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v40 + 4096);
    v41 = v49;
  }

  *(v41 + 104 * *v20 + 24) = -65536;
  v42 = v41 + 104 * *v20;
  v43 = *(v42 + 92);
  *(v42 + 92) = v43 + 1;
  *(v42 + 4 * v43 + 28) = v21;
  v44 = v41 + 104 * *v20;
  v46 = *(v44 + 92);
  v45 = (v44 + 92);
  if (v46 >= 0x10)
  {
    *v45 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture> const&,md::ls::TextureHandleForType<Flyover::DiffuseTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v57);
}

void sub_1B2F11C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture> const&,md::ls::TextureHandleForType<Flyover::DiffuseTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture> const&,md::ls::TextureHandleForType<Flyover::DiffuseTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::ita::AssignFlyoverDiffuseTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture> const&,md::ls::TextureHandleForType<Flyover::DiffuseTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverDiffuseTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture> const&,md::ls::TextureHandleForType<Flyover::DiffuseTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture> const&,md::ls::TextureHandleForType<Flyover::DiffuseTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, TextureHandle *a4, uint64_t a5, unint64_t *a6)
{
  v8 = *(a1 + 8);
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v8);
  v10 = v8[2];
  if (!v10)
  {
    v11 = **v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_3;
    }

    while (*v12 != 0x348A0B0E758C07C2)
    {
      v10 = 0;
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_4;
      }
    }

    if (v12 == v13)
    {
LABEL_3:
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

LABEL_4:
    v8[2] = v10;
  }

  PipelineDataSet = md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a6);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a6);
  TextureStorageTracked = mre::GGLResourceStore::getTextureStorageTracked(v10, *a4);
  if (TextureStorageTracked)
  {
    v17 = *TextureStorageTracked;
  }

  else
  {
    v17 = 0;
  }

  v18 = gdc::typeIndex<Flyover::DiffuseTexture>();
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(PipelineDataSet, v18);
  if (result)
  {
    {
      if (v23)
      {
        md::typeToIntMap(v23);
        md::setTextureForPipeline<Flyover::DiffuseTexture>(std::unordered_set<unsigned long> const&,ggl::PipelineSetup *,ggl::Texture *)::typeBindingInfoMap = &md::typeToIntMap(void)::typeToIntMap;
      }
    }

    result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(md::setTextureForPipeline<Flyover::DiffuseTexture>(std::unordered_set<unsigned long> const&,ggl::PipelineSetup *,ggl::Texture *)::typeBindingInfoMap, v18);
    if (!result)
    {
      abort();
    }

    v20 = *(result + 24);
    v21 = *(result + 28);
    if (v20 != -1)
    {
      result = ggl::PipelineSetup::setTextureData(Pipeline, v20, v17);
    }

    if (v21 != -1)
    {

      return ggl::PipelineSetup::setTextureData(Pipeline, v21, v17);
    }
  }

  return result;
}

uint64_t std::__function::__func<md::ita::AssignFlyoverDiffuseTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture> const&,md::ls::TextureHandleForType<Flyover::DiffuseTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverDiffuseTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture> const&,md::ls::TextureHandleForType<Flyover::DiffuseTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::DiffuseTexture> const&,md::ls::TextureHandleForType<Flyover::DiffuseTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15568;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignFlyoverNightTextureIndex::operator()(uint64_t a1, uint64_t a2)
{
  v59[5] = *MEMORY[0x1E69E9840];
  v57[0] = &unk_1F2A155B0;
  v57[1] = a1;
  v58 = v57;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<Flyover::NightTexture>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<Flyover::NightTexture>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v59[0] = v4;
  v59[1] = v5;
  v59[2] = v6;
  v59[3] = v7;
  v9 = 1;
  v10 = v4;
  v11 = v59;
  v59[4] = v8;
  do
  {
    if (*(v59[v9] + 40) - *(v59[v9] + 32) < *(v10 + 40) - *(v10 + 32))
    {
      v10 = v59[v9];
      v11 = &v59[v9];
    }

    ++v9;
  }

  while (v9 != 5);
  v12 = *(*v11 + 32);
  v13 = *(*v11 + 40);
  v50 = v12;
  v51 = v13;
  v52 = v4;
  v53 = v5;
  v54 = v6;
  v55 = v7;
  v56 = v8;
  while (v12 != v13 && !ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v50, *v12, v12[1]))
  {
    v12 += 2;
    v50 = v12;
  }

  v14 = v50;
  if (v50 == v13)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
  }

  else
  {
    v48 = a2;
    v15 = v52;
    v16 = v53;
    v17 = v54;
    v18 = v55;
    v19 = v56;
    v49 = _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
    v22 = v51;
    do
    {
      v23 = v14[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v29 = *(*(v16 + 56) + ((v28 >> 3) & 0x1FF8));
      v30 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v31 = *(*(v17 + 56) + ((v30 >> 3) & 0x1FF8));
      v32 = *(v18 + 32);
      v33 = *(*(v18 + 8) + v25) + 4 * v24;
      v34 = *(*(*(v19 + 8) + v25) + 4 * v24 + 2);
      v35 = *(*(v19 + 56) + ((v34 >> 3) & 0x1FF8));
      v36 = *(v33 + 2);
      *(v49 + 104 * *v20 + 24) = *v14;
      if (!v58)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v58 + 48))(v58, v27 + 8 * (v26 & 0x3F), v29 + 12 * (v28 & 0x3F), v31 + 16 * (v30 & 0x3F), v32 + 4 * v36, v35 + 8 * (v34 & 0x3F));
      ++v21;
      v37 = v14 + 2;
      while (1)
      {
        v14 = v37;
        v50 = v37;
        if (v37 == v22)
        {
          break;
        }

        v38 = ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v50, *v37, v37[1]);
        v37 = v14 + 2;
        if (v38)
        {
          v39 = v14;
          goto LABEL_17;
        }
      }

      v39 = v22;
LABEL_17:
      ;
    }

    while (v39 != v13);
    v40 = *(v48 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v40 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v40 + 4096);
    v41 = v49;
  }

  *(v41 + 104 * *v20 + 24) = -65536;
  v42 = v41 + 104 * *v20;
  v43 = *(v42 + 92);
  *(v42 + 92) = v43 + 1;
  *(v42 + 4 * v43 + 28) = v21;
  v44 = v41 + 104 * *v20;
  v46 = *(v44 + 92);
  v45 = (v44 + 92);
  if (v46 >= 0x10)
  {
    *v45 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::NightTexture> const&,md::ls::TextureHandleForType<Flyover::NightTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v57);
}

void sub_1B2F12314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::NightTexture> const&,md::ls::TextureHandleForType<Flyover::NightTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::NightTexture> const&,md::ls::TextureHandleForType<Flyover::NightTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__func<md::ita::AssignFlyoverNightTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::NightTexture> const&,md::ls::TextureHandleForType<Flyover::NightTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverNightTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::NightTexture> const&,md::ls::TextureHandleForType<Flyover::NightTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::NightTexture> const&,md::ls::TextureHandleForType<Flyover::NightTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, TextureHandle *a4, uint64_t a5, unint64_t *a6)
{
  v8 = *(a1 + 8);
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v8);
  v10 = v8[2];
  if (!v10)
  {
    v11 = **v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v12 == v13)
    {
      goto LABEL_3;
    }

    while (*v12 != 0x348A0B0E758C07C2)
    {
      v10 = 0;
      v12 += 5;
      if (v12 == v13)
      {
        goto LABEL_4;
      }
    }

    if (v12 == v13)
    {
LABEL_3:
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

LABEL_4:
    v8[2] = v10;
  }

  PipelineDataSet = md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a6);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a6);
  TextureStorageTracked = mre::GGLResourceStore::getTextureStorageTracked(v10, *a4);
  if (TextureStorageTracked)
  {
    v17 = *TextureStorageTracked;
  }

  else
  {
    v17 = 0;
  }

  v18 = gdc::typeIndex<Flyover::NightTexture>();
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(PipelineDataSet, v18);
  if (result)
  {
    {
      if (v23)
      {
        md::typeToIntMap(v23);
        md::setTextureForPipeline<Flyover::NightTexture>(std::unordered_set<unsigned long> const&,ggl::PipelineSetup *,ggl::Texture *)::typeBindingInfoMap = &md::typeToIntMap(void)::typeToIntMap;
      }
    }

    result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(md::setTextureForPipeline<Flyover::NightTexture>(std::unordered_set<unsigned long> const&,ggl::PipelineSetup *,ggl::Texture *)::typeBindingInfoMap, v18);
    if (!result)
    {
      abort();
    }

    v20 = *(result + 24);
    v21 = *(result + 28);
    if (v20 != -1)
    {
      result = ggl::PipelineSetup::setTextureData(Pipeline, v20, v17);
    }

    if (v21 != -1)
    {

      return ggl::PipelineSetup::setTextureData(Pipeline, v21, v17);
    }
  }

  return result;
}

uint64_t std::__function::__func<md::ita::AssignFlyoverNightTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::NightTexture> const&,md::ls::TextureHandleForType<Flyover::NightTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverNightTextureIndex::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::NightTexture> const&,md::ls::TextureHandleForType<Flyover::NightTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<Flyover::NightTexture> const&,md::ls::TextureHandleForType<Flyover::NightTexture> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A155B0;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignFlyoverTransformConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v59[5] = *MEMORY[0x1E69E9840];
  v57[0] = &unk_1F2A155F8;
  v57[1] = a1;
  v58 = v57;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonTransformConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v59[0] = v4;
  v59[1] = v5;
  v59[2] = v6;
  v59[3] = v7;
  v9 = 1;
  v10 = v4;
  v11 = v59;
  v59[4] = v8;
  do
  {
    if (*(v59[v9] + 40) - *(v59[v9] + 32) < *(v10 + 40) - *(v10 + 32))
    {
      v10 = v59[v9];
      v11 = &v59[v9];
    }

    ++v9;
  }

  while (v9 != 5);
  v12 = *(*v11 + 32);
  v13 = *(*v11 + 40);
  v50 = v12;
  v51 = v13;
  v52 = v4;
  v53 = v5;
  v54 = v6;
  v55 = v7;
  v56 = v8;
  while (v12 != v13 && !ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v50, *v12, v12[1]))
  {
    v12 += 2;
    v50 = v12;
  }

  v14 = v50;
  if (v50 == v13)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
  }

  else
  {
    v48 = a2;
    v15 = v52;
    v16 = v53;
    v17 = v54;
    v18 = v55;
    v19 = v56;
    v49 = _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
    v22 = v51;
    do
    {
      v23 = v14[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v29 = *(*(v16 + 56) + ((v28 >> 3) & 0x1FF8));
      v30 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v31 = *(*(v17 + 56) + ((v30 >> 3) & 0x1FF8));
      v32 = *(v18 + 32);
      v33 = *(*(v18 + 8) + v25) + 4 * v24;
      v34 = *(*(*(v19 + 8) + v25) + 4 * v24 + 2);
      v35 = *(*(v19 + 56) + ((v34 >> 3) & 0x1FF8));
      v36 = *(v33 + 2);
      *(v49 + 104 * *v20 + 24) = *v14;
      if (!v58)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v58 + 48))(v58, v27 + 8 * (v26 & 0x3F), v29 + 8 * (v28 & 0x3F), v31 + 12 * (v30 & 0x3F), v32 + 4 * v36, v35 + 8 * (v34 & 0x3F));
      ++v21;
      v37 = v14 + 2;
      while (1)
      {
        v14 = v37;
        v50 = v37;
        if (v37 == v22)
        {
          break;
        }

        v38 = ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v50, *v37, v37[1]);
        v37 = v14 + 2;
        if (v38)
        {
          v39 = v14;
          goto LABEL_17;
        }
      }

      v39 = v22;
LABEL_17:
      ;
    }

    while (v39 != v13);
    v40 = *(v48 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v40 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v40 + 4096);
    v41 = v49;
  }

  *(v41 + 104 * *v20 + 24) = -65536;
  v42 = v41 + 104 * *v20;
  v43 = *(v42 + 92);
  *(v42 + 92) = v43 + 1;
  *(v42 + 4 * v43 + 28) = v21;
  v44 = v41 + 104 * *v20;
  v46 = *(v44 + 92);
  v45 = (v44 + 92);
  if (v46 >= 0x10)
  {
    *v45 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v57);
}

void sub_1B2F129E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignFlyoverTransformConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverTransformConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  v10 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v9 + 1027, *a3);
  if (v10 == v9[1032] || (v11 = (v10 - v9[1031]) >> 3, v12 = (v11 >> 3) & 0x1FFFFFFFFFFFFFF8, v13 = *(v9[1040] + v12), ++*(*(v9[1034] + v12) + 24 * (v11 & 0x3F)), !v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v13 + 24 * (v11 & 0x3F));
  }

  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a6);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a6);
  v16 = Pipeline;
  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v14);
  }

  if (*(a4 + 1) == 1)
  {
    v17 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(v16, v17, v14);
  }
}

uint64_t std::__function::__func<md::ita::AssignFlyoverTransformConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverTransformConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonTransformConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A155F8;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignFlyoverS2TransformConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v59[5] = *MEMORY[0x1E69E9840];
  v57[0] = &unk_1F2A15640;
  v57[1] = a1;
  v58 = v57;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverCommonS2TransformHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v59[0] = v4;
  v59[1] = v5;
  v59[2] = v6;
  v59[3] = v7;
  v9 = 1;
  v10 = v4;
  v11 = v59;
  v59[4] = v8;
  do
  {
    if (*(v59[v9] + 40) - *(v59[v9] + 32) < *(v10 + 40) - *(v10 + 32))
    {
      v10 = v59[v9];
      v11 = &v59[v9];
    }

    ++v9;
  }

  while (v9 != 5);
  v12 = *(*v11 + 32);
  v13 = *(*v11 + 40);
  v50 = v12;
  v51 = v13;
  v52 = v4;
  v53 = v5;
  v54 = v6;
  v55 = v7;
  v56 = v8;
  while (v12 != v13 && !ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v50, *v12, v12[1]))
  {
    v12 += 2;
    v50 = v12;
  }

  v14 = v50;
  if (v50 == v13)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
  }

  else
  {
    v48 = a2;
    v15 = v52;
    v16 = v53;
    v17 = v54;
    v18 = v55;
    v19 = v56;
    v49 = _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
    v22 = v51;
    do
    {
      v23 = v14[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v29 = *(*(v16 + 56) + ((v28 >> 3) & 0x1FF8));
      v30 = *(v17 + 32);
      v31 = *(*(v17 + 8) + v25) + 4 * v24;
      v32 = *(*(*(v18 + 8) + v25) + 4 * v24 + 2);
      v33 = *(*(v18 + 56) + ((v32 >> 3) & 0x1FF8));
      v34 = *(*(*(v19 + 8) + v25) + 4 * v24 + 2);
      v35 = *(*(v19 + 56) + ((v34 >> 3) & 0x1FF8));
      v36 = *(v31 + 2);
      *(v49 + 104 * *v20 + 24) = *v14;
      if (!v58)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v58 + 48))(v58, v27 + 8 * (v26 & 0x3F), v29 + 8 * (v28 & 0x3F), v30 + 4 * v36, v33 + 12 * (v32 & 0x3F), v35 + 8 * (v34 & 0x3F));
      ++v21;
      v37 = v14 + 2;
      while (1)
      {
        v14 = v37;
        v50 = v37;
        if (v37 == v22)
        {
          break;
        }

        v38 = ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v50, *v37, v37[1]);
        v37 = v14 + 2;
        if (v38)
        {
          v39 = v14;
          goto LABEL_17;
        }
      }

      v39 = v22;
LABEL_17:
      ;
    }

    while (v39 != v13);
    v40 = *(v48 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v40 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v40 + 4096);
    v41 = v49;
  }

  *(v41 + 104 * *v20 + 24) = -65536;
  v42 = v41 + 104 * *v20;
  v43 = *(v42 + 92);
  *(v42 + 92) = v43 + 1;
  *(v42 + 4 * v43 + 28) = v21;
  v44 = v41 + 104 * *v20;
  v46 = *(v44 + 92);
  v45 = (v44 + 92);
  if (v46 >= 0x10)
  {
    *v45 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonS2TransformHandle const&,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v57);
}

void sub_1B2F13008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonS2TransformHandle const&,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonS2TransformHandle const&,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignFlyoverS2TransformConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonS2TransformHandle const&,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverS2TransformConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonS2TransformHandle const&,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonS2TransformHandle const&,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  v10 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v9 + 1063, *a3);
  if (v10 == v9[1068] || (v11 = (v10 - v9[1067]) >> 3, v12 = (v11 >> 3) & 0x1FFFFFFFFFFFFFF8, v13 = *(v9[1076] + v12), ++*(*(v9[1070] + v12) + 24 * (v11 & 0x3F)), !v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v13 + 24 * (v11 & 0x3F));
  }

  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a6);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a6);
  v16 = Pipeline;
  if (*a5 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a5 + 4), v14);
  }

  if (*(a5 + 1) == 1)
  {
    v17 = *(a5 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(v16, v17, v14);
  }
}

uint64_t std::__function::__func<md::ita::AssignFlyoverS2TransformConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonS2TransformHandle const&,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverS2TransformConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverCommonS2TransformHandle const&,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverCommonS2TransformHandle const&,md::ls::FlyoverInstance const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15640;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignFlyoverClipConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v59[5] = *MEMORY[0x1E69E9840];
  v57[0] = &unk_1F2A15688;
  v57[1] = a1;
  v58 = v57;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverClipConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::FlyoverInstance>(v3);
  v8 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v59[0] = v4;
  v59[1] = v5;
  v59[2] = v6;
  v59[3] = v7;
  v9 = 1;
  v10 = v4;
  v11 = v59;
  v59[4] = v8;
  do
  {
    if (*(v59[v9] + 40) - *(v59[v9] + 32) < *(v10 + 40) - *(v10 + 32))
    {
      v10 = v59[v9];
      v11 = &v59[v9];
    }

    ++v9;
  }

  while (v9 != 5);
  v12 = *(*v11 + 32);
  v13 = *(*v11 + 40);
  v50 = v12;
  v51 = v13;
  v52 = v4;
  v53 = v5;
  v54 = v6;
  v55 = v7;
  v56 = v8;
  while (v12 != v13 && !ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v50, *v12, v12[1]))
  {
    v12 += 2;
    v50 = v12;
  }

  v14 = v50;
  if (v50 == v13)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
  }

  else
  {
    v48 = a2;
    v15 = v52;
    v16 = v53;
    v17 = v54;
    v18 = v55;
    v19 = v56;
    v49 = _ZTWN4ecs27Runtime11_localStateE();
    v20 = _ZTWN4ecs27Runtime11_stackIndexE();
    v21 = 0;
    v22 = v51;
    do
    {
      v23 = v14[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v29 = *(*(v16 + 56) + ((v28 >> 3) & 0x1FF8));
      v30 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v31 = *(*(v17 + 56) + ((v30 >> 3) & 0x1FF8));
      v32 = *(v18 + 32);
      v33 = *(*(v18 + 8) + v25) + 4 * v24;
      v34 = *(*(*(v19 + 8) + v25) + 4 * v24 + 2);
      v35 = *(*(v19 + 56) + ((v34 >> 3) & 0x1FF8));
      v36 = *(v33 + 2);
      *(v49 + 104 * *v20 + 24) = *v14;
      if (!v58)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v58 + 48))(v58, v27 + 8 * (v26 & 0x3F), v29 + 8 * (v28 & 0x3F), v31 + 12 * (v30 & 0x3F), v32 + 4 * v36, v35 + 8 * (v34 & 0x3F));
      ++v21;
      v37 = v14 + 2;
      while (1)
      {
        v14 = v37;
        v50 = v37;
        if (v37 == v22)
        {
          break;
        }

        v38 = ecs2::ViewIterator<void,std::tuple<md::ls::TileMatrix const&,md::ls::LayerDataReference const&,md::ls::SupportsFragmentClip const&,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable> &,md::ls::TileClippingConstantDataHandle &>,std::tuple<>>::containsAll<md::ls::TileMatrix const,md::ls::LayerDataReference const,md::ls::SupportsFragmentClip const,md::ls::RequireTypedRenderableForLegacyReasons<md::DaVinciGroundRenderable>,md::ls::TileClippingConstantDataHandle>(&v50, *v37, v37[1]);
        v37 = v14 + 2;
        if (v38)
        {
          v39 = v14;
          goto LABEL_17;
        }
      }

      v39 = v22;
LABEL_17:
      ;
    }

    while (v39 != v13);
    v40 = *(v48 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v40 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v40 + 4096);
    v41 = v49;
  }

  *(v41 + 104 * *v20 + 24) = -65536;
  v42 = v41 + 104 * *v20;
  v43 = *(v42 + 92);
  *(v42 + 92) = v43 + 1;
  *(v42 + 4 * v43 + 28) = v21;
  v44 = v41 + 104 * *v20;
  v46 = *(v44 + 92);
  v45 = (v44 + 92);
  if (v46 >= 0x10)
  {
    *v45 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverClipConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v57);
}

void sub_1B2F13628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverClipConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverClipConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignFlyoverClipConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverClipConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverClipConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverClipConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverClipConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v9 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v9, *a6);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v9, *a6);
  v11 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v9 + 991, *a3);
  if (v11 == v9[996] || (v12 = (v11 - v9[995]) >> 3, v13 = (v12 >> 3) & 0x1FFFFFFFFFFFFFF8, v14 = *(v9[1004] + v13), ++*(*(v9[998] + v13) + 24 * (v12 & 0x3F)), !v14))
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v14 + 24 * (v12 & 0x3F));
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v15);
  }

  if (*(a4 + 1) == 1)
  {
    v16 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v16, v15);
  }
}

uint64_t std::__function::__func<md::ita::AssignFlyoverClipConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverClipConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignFlyoverClipConstantData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::FlyoverClipConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::FlyoverClipConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>> const&,md::ls::FlyoverInstance const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15688;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignDepthPrePassConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A156D0;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassShadowConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 8 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F13BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignDepthPrePassConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignDepthPrePassConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = md::VKMRenderResourcesStore::getConstantData<ggl::DaVinci::Shadow>(v8, *a3);

  md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>(a4, Pipeline, v10);
}

void md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a1 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(a2, *(a1 + 4), a3);
  }

  if (*(a1 + 1) == 1)
  {
    v6 = *(a1 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(a2, v6, a3);
  }
}

uint64_t std::__function::__func<md::ita::AssignDepthPrePassConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignDepthPrePassConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A156D0;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignShadowConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A15718;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ShadowConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 8 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F141B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignShadowConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignShadowConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = md::VKMRenderResourcesStore::getConstantData<ggl::DaVinci::Shadow>(v8, *a3);

  md::setConstantDataForPipeline<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>(a4, Pipeline, v10);
}

uint64_t std::__function::__func<md::ita::AssignShadowConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignShadowConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ShadowConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15718;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignStyleShadowConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v46[0] = &unk_1F2A15760;
  v46[1] = a1;
  v47 = v46;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v48[0] = v4;
  v48[1] = v5;
  v7 = 1;
  v8 = v4;
  v9 = v48;
  v48[2] = v6;
  do
  {
    if (*(v48[v7] + 40) - *(v48[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = v48[v7];
      v9 = &v48[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v10 = *(*v9 + 32);
  v11 = *(*v9 + 40);
  v41 = v10;
  v42 = v11;
  v43 = v4;
  v44 = v5;
  v45 = v6;
  while (v10 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v10, v10[1]))
  {
    v10 += 2;
    v41 = v10;
  }

  v12 = v41;
  if (v41 == v11)
  {
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
  }

  else
  {
    v40 = a2;
    v13 = v43;
    v14 = v44;
    v15 = v45;
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
    v19 = v42;
    do
    {
      v20 = *(v13 + 32);
      v21 = v12[1];
      v22 = v21 & 0x3F;
      v23 = (v21 >> 3) & 0x1FF8;
      v24 = *(*(v13 + 8) + v23) + 4 * v22;
      v25 = *(*(*(v14 + 8) + v23) + 4 * v22 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v23) + 4 * v22 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(v24 + 2);
      *(v16 + 104 * *v17 + 24) = *v12;
      if (!v47)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v47 + 48))(v47, v20 + 4 * v29, v26 + 12 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F));
      ++v18;
      v30 = v12 + 2;
      while (1)
      {
        v12 = v30;
        v41 = v30;
        if (v30 == v19)
        {
          break;
        }

        v31 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v30, v30[1]);
        v30 = v12 + 2;
        if (v31)
        {
          v32 = v12;
          goto LABEL_17;
        }
      }

      v32 = v19;
LABEL_17:
      ;
    }

    while (v32 != v11);
    v33 = *(v40 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v33 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v33 + 4096);
  }

  *(v16 + 104 * *v17 + 24) = -65536;
  v34 = v16 + 104 * *v17;
  v35 = *(v34 + 92);
  *(v34 + 92) = v35 + 1;
  *(v34 + 4 * v35 + 28) = v18;
  v36 = v16 + 104 * *v17;
  v38 = *(v36 + 92);
  v37 = (v36 + 92);
  if (v38 >= 0x10)
  {
    *v37 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v46);
}

void sub_1B2F146BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignStyleShadowConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleShadowConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = *(a1 + 8);
  v7 = ecs2::ExecutionTask<md::RenderLayerProvider *>::service<md::RenderLayerProvider>(v6);
  v8 = ecs2::ExecutionTask<md::PassListProvider *,md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v6);
  v9 = (*(*v7 + 48))(v7);
  v10 = *(v9 + 1472);
  v11 = *(v9 + 1480);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a4);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a4);
  v13 = Pipeline;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*a3 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a3 + 4), v10);
  }

  if (*(a3 + 1) == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(v13, *(a3 + 8), v10);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);

    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

uint64_t std::__function::__func<md::ita::AssignStyleShadowConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleShadowConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleShadow>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15760;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignLinearDepthConstantData::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A157A8;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PrepassConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 8 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F14CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignLinearDepthConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignLinearDepthConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = md::VKMRenderResourcesStore::getConstantData<ggl::Tile::LinearDepth>(v8, *a3);
  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v10);
  }

  if (*(a4 + 1) == 1)
  {
    v11 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v11, v10);
  }
}

uint64_t std::__function::__func<md::ita::AssignLinearDepthConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignLinearDepthConstantData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::PrepassConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A157A8;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignLightSpecularConfiguration::operator()(uint64_t a1, uint64_t a2)
{
  v48[3] = *MEMORY[0x1E69E9840];
  v46[0] = &unk_1F2A157F0;
  v46[1] = a1;
  v47 = v46;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v48[0] = v4;
  v48[1] = v5;
  v7 = 1;
  v8 = v4;
  v9 = v48;
  v48[2] = v6;
  do
  {
    if (*(v48[v7] + 40) - *(v48[v7] + 32) < *(v8 + 40) - *(v8 + 32))
    {
      v8 = v48[v7];
      v9 = &v48[v7];
    }

    ++v7;
  }

  while (v7 != 3);
  v10 = *(*v9 + 32);
  v11 = *(*v9 + 40);
  v41 = v10;
  v42 = v11;
  v43 = v4;
  v44 = v5;
  v45 = v6;
  while (v10 != v11 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v10, v10[1]))
  {
    v10 += 2;
    v41 = v10;
  }

  v12 = v41;
  if (v41 == v11)
  {
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
  }

  else
  {
    v40 = a2;
    v13 = v43;
    v14 = v44;
    v15 = v45;
    v16 = _ZTWN4ecs27Runtime11_localStateE();
    v17 = _ZTWN4ecs27Runtime11_stackIndexE();
    v18 = 0;
    v19 = v42;
    do
    {
      v20 = *(v13 + 32);
      v21 = v12[1];
      v22 = v21 & 0x3F;
      v23 = (v21 >> 3) & 0x1FF8;
      v24 = *(*(v13 + 8) + v23) + 4 * v22;
      v25 = *(*(*(v14 + 8) + v23) + 4 * v22 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v23) + 4 * v22 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(v24 + 2);
      *(v16 + 104 * *v17 + 24) = *v12;
      if (!v47)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v47 + 48))(v47, v20 + 4 * v29, v26 + 12 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F));
      ++v18;
      v30 = v12 + 2;
      while (1)
      {
        v12 = v30;
        v41 = v30;
        if (v30 == v19)
        {
          break;
        }

        v31 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v41, *v30, v30[1]);
        v30 = v12 + 2;
        if (v31)
        {
          v32 = v12;
          goto LABEL_17;
        }
      }

      v32 = v19;
LABEL_17:
      ;
    }

    while (v32 != v11);
    v33 = *(v40 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v33 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v33 + 4096);
  }

  *(v16 + 104 * *v17 + 24) = -65536;
  v34 = v16 + 104 * *v17;
  v35 = *(v34 + 92);
  *(v34 + 92) = v35 + 1;
  *(v34 + 4 * v35 + 28) = v18;
  v36 = v16 + 104 * *v17;
  v38 = *(v36 + 92);
  v37 = (v36 + 92);
  if (v38 >= 0x10)
  {
    *v37 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v46);
}

void sub_1B2F151E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignLightSpecularConfiguration::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignLightSpecularConfiguration::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = *(a1 + 8);
  v7 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v6);
  v8 = v6[2];
  if (!v8)
  {
    v9 = **v6;
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v10 == v11)
    {
      goto LABEL_3;
    }

    while (*v10 != 0x22D45F5AAD4BF408)
    {
      v8 = 0;
      v10 += 5;
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    if (v10 == v11)
    {
LABEL_3:
      v8 = 0;
    }

    else
    {
      v8 = v10[3];
      v20 = v10[4];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v20);
      }
    }

LABEL_6:
    v6[2] = v8;
  }

  v12 = (**v8)(v8);
  v13 = md::LayoutContext::get<md::LightingLogicContext>(*(v12 + 8));
  if (v13)
  {
    v14 = v13[4];
    md::VKMRenderResourcesStore::getPipelineDataSet(v7, *a4);
    Pipeline = md::VKMRenderResourcesStore::getPipeline(v7, *a4);
    v16 = Pipeline;
    if (*a3)
    {
      v17 = 4;
    }

    else
    {
      if (*(a3 + 1) != 1)
      {
        goto LABEL_15;
      }

      v17 = 8;
    }

    v18 = *(a3 + v17);
    if (v18 == -1)
    {
      if (!*a3)
      {
LABEL_15:
        if (*(a3 + 1) == 1)
        {
          v19 = *(a3 + 8);

          ggl::PipelineSetup::setConstantDataWithoutCheck(v16, v19, v14);
        }

        return;
      }
    }

    else
    {
      ggl::PipelineSetup::setResetFlag(Pipeline, v18, 0, 0);
      if ((*a3 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    ggl::PipelineSetup::setConstantDataWithoutCheck(v16, *(a3 + 4), v14);
    goto LABEL_15;
  }
}

uint64_t std::__function::__func<md::ita::AssignLightSpecularConfiguration::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignLightSpecularConfiguration::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A157F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::SupportsStylizedShading const&,md::ls::SupportsSteepnessDarkening const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignLightStylizedShadingSettings::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::SupportsStylizedShading const&,md::ls::SupportsSteepnessDarkening const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignLightStylizedShadingSettings::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::SupportsStylizedShading const&,md::ls::SupportsSteepnessDarkening const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::SupportsStylizedShading const&,md::ls::SupportsSteepnessDarkening const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v8 = *a4;
  v9 = *(a1 + 8);
  v10 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(v9);
  v11 = v9[2];
  if (!v11)
  {
    v12 = **v9;
    v13 = *v12;
    v14 = *(v12 + 8);
    if (v13 == v14)
    {
      goto LABEL_3;
    }

    while (*v13 != 0x22D45F5AAD4BF408)
    {
      v11 = 0;
      v13 += 5;
      if (v13 == v14)
      {
        goto LABEL_6;
      }
    }

    if (v13 == v14)
    {
LABEL_3:
      v11 = 0;
    }

    else
    {
      v11 = v13[3];
      v23 = v13[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v23);
      }
    }

LABEL_6:
    v9[2] = v11;
  }

  v15 = (**v11)(v11);
  v16 = md::LayoutContext::get<md::LightingLogicContext>(*(v15 + 8));
  if (v16)
  {
    v17 = v16;
    md::VKMRenderResourcesStore::getPipelineDataSet(v10, *a6);
    Pipeline = md::VKMRenderResourcesStore::getPipeline(v10, *a6);
    v19 = Pipeline;
    v20 = 6;
    if (!v8)
    {
      v20 = 8;
    }

    v21 = v17[v20];
    if (*a5 == 1)
    {
      ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a5 + 4), v21);
    }

    if (*(a5 + 1) == 1)
    {
      v22 = *(a5 + 8);

      ggl::PipelineSetup::setConstantDataWithoutCheck(v19, v22, v21);
    }
  }
}

uint64_t std::__function::__func<md::ita::AssignLightStylizedShadingSettings::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::SupportsStylizedShading const&,md::ls::SupportsSteepnessDarkening const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignLightStylizedShadingSettings::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::SupportsStylizedShading const&,md::ls::SupportsSteepnessDarkening const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::SupportsStylizedShading const&,md::ls::SupportsSteepnessDarkening const*,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::StylizedShadingSettings>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15838;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignPositionScaleInfo::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A15880;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::PendingRenderItemSetup>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::PositionScaleInfoConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 16 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::PositionScaleInfoConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F15AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::PositionScaleInfoConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::PendingRenderItemSetup const&,md::ls::PositionScaleInfoConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignPositionScaleInfo::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::PositionScaleInfoConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignPositionScaleInfo::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::PositionScaleInfoConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::PositionScaleInfoConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v8 + 1197, *a3);
  if (v10 == v8[1202] || (v11 = (v10 - v8[1201]) >> 3, v12 = (v11 >> 3) & 0x1FFFFFFFFFFFFFF8, v13 = *(v8[1210] + v12), ++*(*(v8[1204] + v12) + 24 * (v11 & 0x3F)), !v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v13 + 24 * (v11 & 0x3F));
  }

  if (*a4)
  {
    v15 = 4;
  }

  else
  {
    if (*(a4 + 1) != 1)
    {
      goto LABEL_12;
    }

    v15 = 8;
  }

  v16 = *(a4 + v15);
  if (v16 != -1)
  {
    ggl::PipelineSetup::setResetFlag(Pipeline, v16, 0, 0);
    if ((*a4 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*a4)
  {
LABEL_11:
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v14);
  }

LABEL_12:
  if (*(a4 + 1) == 1)
  {
    v17 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v17, v14);
  }
}

uint64_t std::__function::__func<md::ita::AssignPositionScaleInfo::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::PositionScaleInfoConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignPositionScaleInfo::operator()(ecs2::Query<md::ls::PendingRenderItemSetup const&,md::ls::PositionScaleInfoConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::PendingRenderItemSetup const&,md::ls::PositionScaleInfoConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::PositionScaleInfo>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15880;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignTileViewData::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A158C8;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ViewConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 8 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ViewConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F160F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ViewConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ViewConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignTileViewData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ViewConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignTileViewData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ViewConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ViewConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = md::VKMRenderResourcesStore::getConstantData<ggl::Tile::View>(v8, *a3);
  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v10);
  }

  if (*(a4 + 1) == 1)
  {
    v11 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v11, v10);
  }
}

uint64_t std::__function::__func<md::ita::AssignTileViewData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ViewConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignTileViewData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ViewConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::ViewConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::View>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A158C8;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignStyleColorData::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A15910;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleColorConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::StyleColorConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F16678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::StyleColorConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::StyleColorConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28StyleColorConstantDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleColorConstantDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleColorConstantDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::StyleColorConstantDataHandle>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleColorConstantDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleColorConstantDataHandle>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleColorConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35778;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::StyleColorConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::StyleColorConstantDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A35798;
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

void ecs2::storage<ecs2::Entity,md::ls::StyleColorConstantDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::StyleColorConstantDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::StyleColorConstantDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A35778;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::StyleColorConstantDataHandle,64ul>::~storage(a1);
}

void std::__function::__func<md::ita::AssignStyleColorData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleColorConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleColorData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleColorConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::StyleColorConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(v8 + 1259, *a3);
  if (v10 == v8[1264] || (v11 = (v10 - v8[1263]) >> 3, v12 = (v11 >> 3) & 0x1FFFFFFFFFFFFFF8, v13 = *(v8[1272] + v12), ++*(*(v8[1266] + v12) + 24 * (v11 & 0x3F)), !v13))
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v13 + 24 * (v11 & 0x3F));
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v14);
  }

  if (*(a4 + 1) == 1)
  {
    v15 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, v15, v14);
  }
}

uint64_t std::__function::__func<md::ita::AssignStyleColorData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleColorConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignStyleColorData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::StyleColorConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::StyleColorConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleColor>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15910;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignRasterOverlayData::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A15958;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RasterOverlayConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 40 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RasterOverlayConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}

void sub_1B2F16FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RasterOverlayConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RasterOverlayConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignRasterOverlayData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RasterOverlayConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignRasterOverlayData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RasterOverlayConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RasterOverlayConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = Pipeline;
  v11 = *a3 >> 6;
  v12 = v8[1368];
  if (v11 < (v8[1369] - v12) >> 3 && (v13 = *(v12 + 8 * v11)) != 0 && (v14 = (v13 + 16 * (*a3 & 0x3FLL)), *v14 == HIDWORD(*a3)))
  {
    v15 = v8[1371];
    v16 = v15 + 8 * v14[1];
    v17 = v8[1372];
  }

  else
  {
    v17 = v8[1372];
    v15 = v8[1371];
    v16 = v17;
  }

  if (v16 == v17 || (v18 = (v16 - v15) >> 3, v19 = (v18 >> 3) & 0x1FFFFFFFFFFFFFF8, v20 = *(v8[1380] + v19), ++*(*(v8[1374] + v19) + 24 * (v18 & 0x3F)), !v20))
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v20 + 24 * (v18 & 0x3F));
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v21);
  }

  if (*(a4 + 1) == 1)
  {
    v22 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(v10, v22, v21);
  }
}

uint64_t std::__function::__func<md::ita::AssignRasterOverlayData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RasterOverlayConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignRasterOverlayData::operator()(ecs2::Query<md::ls::ItemsPrepared const&,md::ls::RasterOverlayConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::ItemsPrepared const&,md::ls::RasterOverlayConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::RasterOverlay>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A15958;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignSRGBBlendStyleData::operator()(uint64_t a1, uint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v51[0] = &unk_1F2A159A0;
  v51[1] = a1;
  v52 = v51;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::NeedsFunctionConstantsUpdate>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::BlendRasterConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v53[0] = v4;
  v53[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v53;
  v53[2] = v6;
  v53[3] = v7;
  do
  {
    if (*(v53[v8] + 40) - *(v53[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v53[v8];
      v10 = &v53[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v45 = v11;
  v46 = v12;
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v11, v11[1]))
  {
    v11 += 2;
    v45 = v11;
  }

  v13 = v45;
  if (v45 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v44 = a2;
    v14 = v47;
    v15 = v48;
    v16 = v49;
    v17 = v50;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v46;
    do
    {
      v22 = *(v14 + 32);
      v23 = v13[1];
      v24 = v23 & 0x3F;
      v25 = (v23 >> 3) & 0x1FF8;
      v26 = *(*(*(v15 + 8) + v25) + 4 * v24 + 2);
      v27 = *(*(v15 + 56) + ((v26 >> 3) & 0x1FF8));
      v28 = *(*(v14 + 8) + v25) + 4 * v24;
      v29 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      v33 = *(v28 + 2);
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v52)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v52 + 48))(v52, v22 + 4 * v33, v27 + 8 * (v26 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v34 = v13 + 2;
      while (1)
      {
        v13 = v34;
        v45 = v34;
        if (v34 == v21)
        {
          break;
        }

        v35 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v45, *v34, v34[1]);
        v34 = v13 + 2;
        if (v35)
        {
          v36 = v13;
          goto LABEL_17;
        }
      }

      v36 = v21;
LABEL_17:
      ;
    }

    while (v36 != v12);
    v37 = *(v44 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v37 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v37 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v38 = v18 + 104 * *v19;
  v39 = *(v38 + 92);
  *(v38 + 92) = v39 + 1;
  *(v38 + 4 * v39 + 28) = v20;
  v40 = v18 + 104 * *v19;
  v42 = *(v40 + 92);
  v41 = (v40 + 92);
  if (v42 >= 0x10)
  {
    *v41 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::BlendRasterConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v51);
}

void sub_1B2F175F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::BlendRasterConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::BlendRasterConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::ita::AssignSRGBBlendStyleData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::BlendRasterConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignSRGBBlendStyleData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::BlendRasterConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::BlendRasterConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>> const&,md::ls::PipelineSetup &)>::operator()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5)
{
  v8 = ecs2::ExecutionTask<md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(*(a1 + 8));
  md::VKMRenderResourcesStore::getPipelineDataSet(v8, *a5);
  Pipeline = md::VKMRenderResourcesStore::getPipeline(v8, *a5);
  v10 = Pipeline;
  v11 = *a3 >> 6;
  v12 = v8[1234];
  if (v11 < (v8[1235] - v12) >> 3 && (v13 = *(v12 + 8 * v11)) != 0 && (v14 = (v13 + 16 * (*a3 & 0x3FLL)), *v14 == HIDWORD(*a3)))
  {
    v15 = v8[1237];
    v16 = v15 + 8 * v14[1];
    v17 = v8[1238];
  }

  else
  {
    v17 = v8[1238];
    v15 = v8[1237];
    v16 = v17;
  }

  if (v16 == v17 || (v18 = (v16 - v15) >> 3, v19 = (v18 >> 3) & 0x1FFFFFFFFFFFFFF8, v20 = *(v8[1246] + v19), ++*(*(v8[1240] + v19) + 24 * (v18 & 0x3F)), !v20))
  {
    v21 = 0;
  }

  else
  {
    v21 = *(v20 + 24 * (v18 & 0x3F));
  }

  if (*a4 == 1)
  {
    ggl::PipelineSetup::setConstantDataWithoutCheck(Pipeline, *(a4 + 4), v21);
  }

  if (*(a4 + 1) == 1)
  {
    v22 = *(a4 + 8);

    ggl::PipelineSetup::setConstantDataWithoutCheck(v10, v22, v21);
  }
}

uint64_t std::__function::__func<md::ita::AssignSRGBBlendStyleData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::BlendRasterConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>> const&,md::ls::PipelineSetup &>)::$_0,std::allocator<md::ita::AssignSRGBBlendStyleData::operator()(ecs2::Query<md::ls::NeedsFunctionConstantsUpdate const&,md::ls::BlendRasterConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>> const&,md::ls::PipelineSetup &>)::$_0>,void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::BlendRasterConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Blending::SRGBBlendStyle>> const&,md::ls::PipelineSetup &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A159A0;
  a2[1] = v2;
  return result;
}

uint64_t md::ita::AssignTileElevatedStrokeData::operator()(uint64_t a1, uint64_t a2)
{
  v52[4] = *MEMORY[0x1E69E9840];
  v50[0] = &unk_1F2A15A70;
  v50[1] = a1;
  v51 = v50;
  v3 = *(a2 + 8);
  v4 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v3);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::ElevatedStrokeConstantDataHandle>(v3);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>>>(v3);
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v3);
  v52[0] = v4;
  v52[1] = v5;
  v8 = 1;
  v9 = v4;
  v10 = v52;
  v52[2] = v6;
  v52[3] = v7;
  do
  {
    if (*(v52[v8] + 40) - *(v52[v8] + 32) < *(v9 + 40) - *(v9 + 32))
    {
      v9 = v52[v8];
      v10 = &v52[v8];
    }

    ++v8;
  }

  while (v8 != 4);
  v11 = *(*v10 + 32);
  v12 = *(*v10 + 40);
  v44 = v11;
  v45 = v12;
  v46 = v4;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  while (v11 != v12 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v11, v11[1]))
  {
    v11 += 2;
    v44 = v11;
  }

  v13 = v44;
  if (v44 == v12)
  {
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
  }

  else
  {
    v43 = a2;
    v14 = v46;
    v15 = v47;
    v16 = v48;
    v17 = v49;
    v18 = _ZTWN4ecs27Runtime11_localStateE();
    v19 = _ZTWN4ecs27Runtime11_stackIndexE();
    v20 = 0;
    v21 = v45;
    do
    {
      v22 = v13[1];
      v23 = v22 & 0x3F;
      v24 = (v22 >> 3) & 0x1FF8;
      v25 = *(*(*(v14 + 8) + v24) + 4 * v23 + 2);
      v26 = *(*(v14 + 56) + ((v25 >> 3) & 0x1FF8));
      v27 = *(*(*(v15 + 8) + v24) + 4 * v23 + 2);
      v28 = *(*(v15 + 56) + ((v27 >> 3) & 0x1FF8));
      v29 = *(*(*(v16 + 8) + v24) + 4 * v23 + 2);
      v30 = *(*(v16 + 56) + ((v29 >> 3) & 0x1FF8));
      v31 = *(*(*(v17 + 8) + v24) + 4 * v23 + 2);
      v32 = *(*(v17 + 56) + ((v31 >> 3) & 0x1FF8));
      *(v18 + 104 * *v19 + 24) = *v13;
      if (!v51)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v51 + 48))(v51, v26 + 8 * (v25 & 0x3F), v28 + 8 * (v27 & 0x3F), v30 + 12 * (v29 & 0x3F), v32 + 8 * (v31 & 0x3F));
      ++v20;
      v33 = v13 + 2;
      while (1)
      {
        v13 = v33;
        v44 = v33;
        if (v33 == v21)
        {
          break;
        }

        v34 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v44, *v33, v33[1]);
        v33 = v13 + 2;
        if (v34)
        {
          v35 = v13;
          goto LABEL_17;
        }
      }

      v35 = v21;
LABEL_17:
      ;
    }

    while (v35 != v12);
    v36 = *(v43 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v36 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v36 + 4096);
  }

  *(v18 + 104 * *v19 + 24) = -65536;
  v37 = v18 + 104 * *v19;
  v38 = *(v37 + 92);
  *(v37 + 92) = v38 + 1;
  *(v37 + 4 * v38 + 28) = v20;
  v39 = v18 + 104 * *v19;
  v41 = *(v39 + 92);
  v40 = (v39 + 92);
  if (v41 >= 0x10)
  {
    *v40 = 0;
  }

  return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::ElevatedStrokeConstantDataHandle const&,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ElevatedStroke>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v50);
}