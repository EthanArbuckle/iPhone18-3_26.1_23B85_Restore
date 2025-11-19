uint64_t **std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::piecewise_construct_t const&,std::tuple<md::TileSelectionTileSetType const&>,std::tuple<>>(void *a1, unsigned __int16 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v7 = *v5) == 0)
  {
LABEL_5:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v8 >= v2)
      {
        v8 %= v2;
      }
    }

    else
    {
      v8 &= v2 - 1;
    }

    if (v8 != v4)
    {
      goto LABEL_5;
    }

LABEL_15:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  if (*(v7 + 8) != a2)
  {
    goto LABEL_15;
  }

  return v7;
}

void sub_1B29CE5E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_8Lighting23StylizedShadingSettingsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14968;
  a2[1] = v2;
  return result;
}

void *gdc::VirtualTileIterator::VirtualTileIterator(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = 0;
  a1[2] = a3;
  if (a2 == a3)
  {
    a1[1] = a2;
  }

  else
  {
    v9 = *(a2 + 116);
    *v8 = *(a2 + 112);
    v10 = *(a2 + 128);
    v11 = *(a2 + 136);
    v4 = (a2 + 264);
    do
    {
      v5 = v4 - 112;
      if (v4 - 112 == a1[2])
      {
        break;
      }

      v6 = geo::QuadTile::operator==(v4, v8);
      v4 += 152;
    }

    while (v6);
    a1[1] = v5;
  }

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>(void)::metadata >= 0x200)
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

unsigned __int8 *geo::linear_map<md::LabelStyle::StyleQueryOptions,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::equal_to<md::LabelStyle::StyleQueryOptions>,std::allocator<std::pair<md::LabelStyle::StyleQueryOptions,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>,std::vector<std::pair<md::LabelStyle::StyleQueryOptions,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>>::operator[](unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_10;
  }

  v5 = *a1;
  while (*a2 != *v5 || a2[1] != v5[1])
  {
    v5 += 24;
    if (v5 == v4)
    {
      goto LABEL_10;
    }
  }

  if (v5 == v4)
  {
LABEL_10:
    v7 = *a2;
    if (v3 == v4)
    {
      goto LABEL_19;
    }

    v5 = *a1;
    while (*v5 != *a2 || v5[1] != v7 >> 8)
    {
      v5 += 24;
      if (v5 == v4)
      {
        goto LABEL_19;
      }
    }

    if (v5 == v4)
    {
LABEL_19:
      v9 = a1[2];
      if (v4 >= v9)
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3);
        v12 = v11 + 1;
        if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v3) >> 3);
        if (2 * v13 > v12)
        {
          v12 = 2 * v13;
        }

        if (v13 >= 0x555555555555555)
        {
          v14 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          if (v14 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v15 = 24 * v11;
        *v15 = v7;
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
        v10 = 24 * v11 + 24;
        v16 = *a1;
        v17 = a1[1] - *a1;
        v18 = 24 * v11 - v17;
        memcpy((v15 - v17), *a1, v17);
        *a1 = v18;
        a1[1] = v10;
        a1[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v4 = v7;
        v10 = (v4 + 24);
        *(v4 + 1) = 0;
        *(v4 + 2) = 0;
      }

      a1[1] = v10;
      v5 = (v10 - 24);
    }
  }

  return v5 + 8;
}

uint64_t md::LabelStyle::LabelStyle(uint64_t a1, void *a2, void *a3, char a4, char a5, uint64_t a6, char a7, float a8)
{
  *a1 = *a2;
  v10 = a2[1];
  *(a1 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *a3;
  v11 = a3[1];
  *(a1 + 24) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 88) = a8;
  *(a1 + 92) = a4;
  *(a1 + 93) = a5;
  *(a1 + 94) = a6;
  *(a1 + 102) = a7;
  *(a1 + 104) = 0x3F800000437F0000;
  *(a1 + 112) = 0xFC00FC00FC00FC00;
  *(a1 + 120) = 256;
  *(a1 + 122) = 0;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 136) = -1;
  *(a1 + 140) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 236) = 0u;
  *(a1 + 247) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 377) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 359) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 442) = 0u;
  *v17 = 0;
  v12 = geo::linear_map<md::LabelStyle::StyleQueryOptions,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::equal_to<md::LabelStyle::StyleQueryOptions>,std::allocator<std::pair<md::LabelStyle::StyleQueryOptions,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>,std::vector<std::pair<md::LabelStyle::StyleQueryOptions,std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>>::operator[]((a1 + 64), v17);
  v14 = *a2;
  v13 = a2[1];
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(v12 + 1);
  *v12 = v14;
  *(v12 + 1) = v13;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  return a1;
}

void sub_1B29CEC88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v2[56];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = 0;
  while (1)
  {
    v6 = v2[v5 + 54];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v5 -= 2;
    if (v5 == -4)
    {
      v7 = v2[50];
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v8 = 0;
      v9 = v2 + 48;
      while (1)
      {
        v10 = v9[v8];
        v9[v8] = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        v8 -= 2;
        if (v8 == -4)
        {
          std::vector<std::pair<std::pair<md::LabelStyle::StyleQueryOptions,md::LabelStyleGroupType>,std::unique_ptr<md::LabelStyleGroupInfo>>>::__destroy_vector::operator()[abi:nn200100](va);
          v11 = v2[41];
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v11);
          }

          std::vector<md::components::Material>::__destroy_vector::operator()[abi:nn200100](va);
          v12 = 7;
          while (1)
          {
            v13 = v2[v12];
            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v13);
            }

            v12 -= 2;
            if (v12 == 3)
            {
              v14 = v2[3];
              if (v14)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v14);
              }

              v15 = v2[1];
              if (v15)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v15);
              }

              _Unwind_Resume(a1);
            }
          }
        }
      }
    }
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>()
{
  {
    v0 = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>();
    v1 = 0;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>(void)::metadata = v0;
    v2 = 0xCBF29CE484222325;
    do
    {
      v2 = 0x100000001B3 * (v2 ^ aStdStringViewG_681[v1++ + 38]);
    }

    while (v1 != 103);
    qword_1EB83BEA8 = v2;
    unk_1EB83BEB0 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>]";
    qword_1EB83BEB8 = 103;
  }
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLightSpecularConfiguration>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLightSpecularConfiguration>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignLightSpecularConfiguration::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::MapDataType)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightSpecularConfiguration>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[287];
}

void md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::insert(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v7 = mdm::zone_mallocator::instance(a1);
  v8 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,void *>>(v7);
  v9 = v8;
  *v8 = 0;
  v8[1] = 0;
  v10 = a2[1];
  v8[2] = *a2;
  v8[3] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *a3;
  *(v8 + 2) = *a3;
  if (*(&v11 + 1))
  {
    atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
    v11 = *a3;
  }

  else
  {
    *(&v11 + 1) = 0;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  *v8 = a1;
  v8[1] = v12;
  *v12 = v8;
  *(a1 + 8) = v8;
  *(a1 + 16) = v13 + 1;
  v65 = v11;
  if (*(&v11 + 1))
  {
    atomic_fetch_add_explicit((*(&v11 + 1) + 16), 1uLL, memory_order_relaxed);
    v14 = *a3;
  }

  else
  {
    v14 = v11;
  }

  v15 = v14 == 0;
  v16 = *a2;
  v17 = std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>::operator()[abi:nn200100](*a2);
  v18 = v17;
  v19 = *(a1 + 40);
  if (!v19)
  {
    goto LABEL_26;
  }

  v20 = vcnt_s8(v19);
  v20.i16[0] = vaddlv_u8(v20);
  v21 = v20.u32[0];
  if (v20.u32[0] > 1uLL)
  {
    v3 = v17;
    if (v17 >= v19)
    {
      v3 = v17 % v19;
    }
  }

  else
  {
    v3 = (v19 - 1) & v17;
  }

  v22 = *(*(a1 + 32) + 8 * v3);
  if (!v22 || (v23 = *v22) == 0)
  {
LABEL_26:
    v25 = mdm::zone_mallocator::instance(v17);
    v26 = pthread_rwlock_rdlock((v25 + 32));
    if (v26)
    {
      geo::read_write_lock::logFailure(v26, "read lock", v27);
    }

    v28 = malloc_type_zone_malloc(*v25, 0x40uLL, 0x10200407684D401uLL);
    atomic_fetch_add((v25 + 24), 1u);
    geo::read_write_lock::unlock((v25 + 32));
    *v28 = 0;
    v28[1] = v18;
    v30 = a2[1];
    v28[2] = *a2;
    v28[3] = v30;
    if (v30)
    {
      atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
    }

    *(v28 + 2) = v65;
    v28[6] = v9;
    *(v28 + 56) = v15;
    v31 = (*(a1 + 72) + 1);
    v32 = *(a1 + 80);
    if (v19 && (v32 * v19) >= v31)
    {
LABEL_75:
      v50 = *(a1 + 32);
      v51 = *(v50 + 8 * v3);
      if (v51)
      {
        *v28 = *v51;
      }

      else
      {
        *v28 = *(a1 + 56);
        *(a1 + 56) = v28;
        *(v50 + 8 * v3) = a1 + 56;
        if (!*v28)
        {
LABEL_84:
          ++*(a1 + 72);
          goto LABEL_92;
        }

        v52 = *(*v28 + 8);
        if ((v19 & (v19 - 1)) != 0)
        {
          if (v52 >= v19)
          {
            v52 %= v19;
          }
        }

        else
        {
          v52 &= v19 - 1;
        }

        v51 = (*(a1 + 32) + 8 * v52);
      }

      *v51 = v28;
      goto LABEL_84;
    }

    v33 = 1;
    if (v19 >= 3)
    {
      v33 = (v19 & (v19 - 1)) != 0;
    }

    v34 = v33 | (2 * v19);
    v35 = vcvtps_u32_f32(v31 / v32);
    if (v34 <= v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = v34;
    }

    if (v36 == 1)
    {
      v36 = 2;
    }

    else if ((v36 & (v36 - 1)) != 0)
    {
      prime = std::__next_prime(v36);
      v36 = prime;
    }

    v19 = *(a1 + 40);
    if (v36 > v19)
    {
      goto LABEL_42;
    }

    if (v36 < v19)
    {
      prime = vcvtps_u32_f32(*(a1 + 72) / *(a1 + 80));
      if (v19 < 3 || (v45 = vcnt_s8(v19), v45.i16[0] = vaddlv_u8(v45), v45.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v46 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v46;
        }
      }

      if (v36 <= prime)
      {
        v36 = prime;
      }

      if (v36 >= v19)
      {
        v19 = *(a1 + 40);
      }

      else
      {
        if (v36)
        {
LABEL_42:
          v37 = mdm::zone_mallocator::instance(prime);
          v38 = pthread_rwlock_rdlock((v37 + 32));
          if (v38)
          {
            geo::read_write_lock::logFailure(v38, "read lock", v39);
          }

          v40 = malloc_type_zone_malloc(*v37, 8 * v36, 0x2004093837F09uLL);
          atomic_fetch_add((v37 + 24), 1u);
          geo::read_write_lock::unlock((v37 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> **,0>((a1 + 32), v40);
          v41 = 0;
          *(a1 + 40) = v36;
          do
          {
            *(*(a1 + 32) + 8 * v41++) = 0;
          }

          while (v36 != v41);
          v42 = *(a1 + 56);
          if (v42)
          {
            v43 = v42[1];
            v44 = vcnt_s8(v36);
            v44.i16[0] = vaddlv_u8(v44);
            if (v44.u32[0] > 1uLL)
            {
              if (v43 >= v36)
              {
                v43 %= v36;
              }
            }

            else
            {
              v43 &= v36 - 1;
            }

            *(*(a1 + 32) + 8 * v43) = a1 + 56;
            v47 = *v42;
            if (*v42)
            {
              do
              {
                v48 = v47[1];
                if (v44.u32[0] > 1uLL)
                {
                  if (v48 >= v36)
                  {
                    v48 %= v36;
                  }
                }

                else
                {
                  v48 &= v36 - 1;
                }

                if (v48 != v43)
                {
                  v49 = *(a1 + 32);
                  if (!*(v49 + 8 * v48))
                  {
                    *(v49 + 8 * v48) = v42;
                    goto LABEL_66;
                  }

                  *v42 = *v47;
                  *v47 = **(v49 + 8 * v48);
                  **(v49 + 8 * v48) = v47;
                  v47 = v42;
                }

                v48 = v43;
LABEL_66:
                v42 = v47;
                v47 = *v47;
                v43 = v48;
              }

              while (v47);
            }
          }

          v19 = v36;
          goto LABEL_70;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *> *> **,0>((a1 + 32), 0);
        v19 = 0;
        *(a1 + 40) = 0;
      }
    }

LABEL_70:
    if ((v19 & (v19 - 1)) != 0)
    {
      if (v18 >= v19)
      {
        v3 = v18 % v19;
      }

      else
      {
        v3 = v18;
      }
    }

    else
    {
      v3 = (v19 - 1) & v18;
    }

    goto LABEL_75;
  }

  while (1)
  {
    v24 = v23[1];
    if (v24 == v18)
    {
      break;
    }

    if (v21 > 1)
    {
      if (v24 >= v19)
      {
        v24 %= v19;
      }
    }

    else
    {
      v24 &= v19 - 1;
    }

    if (v24 != v3)
    {
      goto LABEL_26;
    }

LABEL_25:
    v23 = *v23;
    if (!v23)
    {
      goto LABEL_26;
    }
  }

  v17 = md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>::operator()(v23[2], v16);
  if ((v17 & 1) == 0)
  {
    goto LABEL_25;
  }

  v53 = v23[5];
  *(v23 + 2) = v65;
  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
  }

  v23[6] = v9;
  *(v23 + 56) = v15;
LABEL_92:
  while (1)
  {
    v60 = *(a1 + 16);
    if (v60 <= *(a1 + 88))
    {
      break;
    }

    v54 = *a1;
    v55 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>((a1 + 32), *(*a1 + 16));
    if (v55 && v55[6] == v54)
    {
      v55[6] = a1;
      v54 = *a1;
    }

    v57 = *v54;
    v56 = v54[1];
    *(v57 + 8) = v56;
    *v56 = v57;
    *(a1 + 16) = v60 - 1;
    std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>((v54 + 2));
    v59 = mdm::zone_mallocator::instance(v58);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__list_node<md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::ListEntry,void *>>(v59, v54);
  }

  v61 = *(a1 + 104) + 1;
  *(a1 + 104) = v61;
  if (v61 >= 0x65)
  {
    *(a1 + 104) = 0;
    v62 = *(a1 + 56);
    if (v62)
    {
      v63 = 0;
      do
      {
        while (1)
        {
          if ((*(v62 + 56) & 1) == 0)
          {
            v64 = *(v62 + 40);
            if (!v64 || *(v64 + 8) == -1)
            {
              break;
            }
          }

          v62 = *v62;
          ++v63;
          if (!v62)
          {
            goto LABEL_104;
          }
        }

        v62 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,mdm::zone_mallocator>>::erase((a1 + 32), v62);
      }

      while (v62);
    }

    else
    {
      v63 = 0;
    }

LABEL_104:
    *(a1 + 100) = v63;
  }
}

void sub_1B29CF56C(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,md::LabelCachingStore<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::shared_ptr<md::LabelStyle>,std::weak_ptr<md::LabelStyle>,md::LabelPtrHash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,md::LabelPtrEqual<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>>::MapEntry>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::__emplace_unique_key_args<gdc::LayerDataStatus,std::piecewise_construct_t const&,std::tuple<gdc::LayerDataStatus&&>,std::tuple<>>(void *a1, int a2)
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

LABEL_12:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_12;
  }

  return v6;
}

void sub_1B29CF818(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_8Lighting26LightSpecularConfigurationEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A14898;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_8Lighting26LightSpecularConfigurationEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14898;
  a2[1] = v2;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4 != v2[5])
      {
        free(v4);
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

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignColorCorrectionFactor>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignColorCorrectionFactor>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignColorCorrectionFactor::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(void)::metadata >= 0x200)
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

uint64_t md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::enumerateGEOVectorObjects(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  for (i = *(result + 32); v2 != i; result = std::function<void ()(GeoCodecsFeature const*)>::operator()(*(a2 + 24), v5))
  {
    v5 = *v2;
    v2 += 3;
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>();
    *algn_1EB83BFA8 = 0x31572B1B4D58BE2BLL;
    qword_1EB83BFB0 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>]";
    qword_1EB83BFB8 = 97;
  }
}

double gdc::VirtualTileIterator::tileKey(gdc::VirtualTileIterator *this, uint64_t a2)
{
  result = *(a2 + 116);
  *(this + 4) = result;
  *this = *(a2 + 112);
  *(this + 2) = *(a2 + 128);
  *(this + 24) = *(a2 + 136);
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::ColorCorrectionFactor>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[297];
}

void sub_1B29CFE28(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void md::LabelLayerDataSource::createLayerData(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 **a3@<X2>, void *a4@<X8>)
{
  gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(&v15, *(a1 + 592), *a3, a3[1]);
  v8 = *(a1 + 824);
  if (v8 && (v9 = std::__shared_weak_count::lock(v8), (v14 = v9) != 0))
  {
    if (*(a1 + 816))
    {
      memset(__p, 0, sizeof(__p));
      gdc::LayerDataSource::populateLoadMetadataListFromMap(*a3, a3[1], __p);
      v10 = *(a2 + 16);
      gdc::ResourceKey::getInt32(v10, 2u);
      gdc::ResourceKey::getInt32(v10, 1u);
      gdc::ResourceKey::getInt32(v10, 0);
      gdc::ResourceKey::getInt32(v10, 3u);
      operator new();
    }

    *a4 = 0;
    a4[1] = 0;
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  v11 = v16;
  if (v16)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

void sub_1B29D0040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v23);
  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a22);
  }

  _Unwind_Resume(a1);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci21ColorCorrectionFactorEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A136B8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci21ColorCorrectionFactorEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A136B8;
  a2[1] = v2;
  return result;
}

uint64_t md::MapTileData::MapTileData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v10 = (a1 + 664);
  v11 = gdc::LayerData::LayerData(a1, a2);
  gdc::Tiled::Tiled((v11 + 168), *(a2 + 16), v12, v13);
  *a1 = &unk_1F2A2F4B8;
  *(a1 + 640) = &unk_1F2A2F4F8;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0;
  *v10 = *a3;
  *(a1 + 680) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a1 + 688) = 0;
  v10[2] = xmmword_1B33AFF10;
  *(a1 + 712) = 0x80000000800000;
  *(a1 + 720) = a5;
  v14 = +[VKDebugSettings sharedSettings];
  LODWORD(a3) = [v14 preserveModelTile];

  if (a3)
  {
    v16 = *a4;
    v15 = a4[1];
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 648) = v16;
    v17 = *(a1 + 656);
    *(a1 + 656) = v15;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }
  }

  if (*a4)
  {
    operator new();
  }

  return a1;
}

void sub_1B29D03B4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    v1[84] = v4;
    operator delete(v4);
  }

  v5 = v1[82];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *v1 = &unk_1F2A60328;
  v6 = v1[4];
  if (v6 != v1[6])
  {
    free(v6);
  }

  _Unwind_Resume(exception_object);
}

BOOL gdc::LayerDataCollector::hasExternalDependencies(gdc::LayerDataCollector *this, gdc::LayerDataCollector *a2, int a3, unint64_t a4)
{
  while (this != a2)
  {
    if (*this == a3)
    {
      a2 = this;
      break;
    }

    this = (this + 32);
  }

  v4 = *(a2 + 1);
  if (0x8E38E38E38E38E39 * ((*(a2 + 2) - v4) >> 4) <= a4)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return *(v4 + 144 * a4 + 136) != 0;
}

uint64_t gdc::LayerDataCollector::status(gdc::LayerDataCollector *this, gdc::LayerDataCollector *a2, int a3, unint64_t a4)
{
  while (1)
  {
    if (this == a2)
    {
      return 0;
    }

    if (*this == a3)
    {
      break;
    }

    this = (this + 32);
  }

  if (this == a2)
  {
    return 0;
  }

  v4 = *(this + 1);
  if (0x8E38E38E38E38E39 * ((*(this + 2) - v4) >> 4) <= a4)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return *(v4 + 144 * a4 + 128);
}

uint64_t gdc::LayerData::LayerData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2A60328;
  *(a1 + 8) = atomic_fetch_add(gdc::LayerData::nextId(void)::idGenerator, 1u) + 1;
  gdc::LayerDataRequestKey::LayerDataRequestKey(a1 + 16, a2);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = 1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::__unordered_map_hasher<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::hash<gdc::LayerDataStatus>,std::equal_to<gdc::LayerDataStatus>,true>,std::__unordered_map_equal<gdc::LayerDataStatus,std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>,std::equal_to<gdc::LayerDataStatus>,std::hash<gdc::LayerDataStatus>,true>,std::allocator<std::__hash_value_type<gdc::LayerDataStatus,std::unordered_map<md::MapDataType,unsigned long>>>>::__emplace_unique_key_args<gdc::LayerDataStatus,std::piecewise_construct_t const&,std::tuple<gdc::LayerDataStatus const&>,std::tuple<>>(void *a1, int a2)
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

LABEL_12:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_12;
  }

  return v6;
}

void sub_1B29D07CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unordered_set<md::TransitNode *>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(void)::metadata >= 0x200)
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

void *md::LabelLayerData::LabelLayerData(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a3)
  {
    v6 = *(*a3 + 24);
    v7 = v6[1];
    v10 = *v6;
    v11 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
    v10 = 0;
    v11 = 0;
  }

  md::MapTileData::MapTileData(a1, a2, a4, &v10, 1);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  *a1 = &unk_1F2A30740;
  a1[80] = &unk_1F2A30780;
  v8 = a3[1];
  a1[91] = *a3;
  a1[92] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1B29D0B20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<std::__hash_value_type<md::MapDataType,unsigned long>,std::__unordered_map_hasher<md::MapDataType,std::__hash_value_type<md::MapDataType,unsigned long>,std::hash<md::MapDataType>,std::equal_to<md::MapDataType>,true>,std::__unordered_map_equal<md::MapDataType,std::__hash_value_type<md::MapDataType,unsigned long>,std::equal_to<md::MapDataType>,std::hash<md::MapDataType>,true>,std::allocator<std::__hash_value_type<md::MapDataType,unsigned long>>>::__emplace_unique_key_args<md::MapDataType,std::piecewise_construct_t const&,std::tuple<md::MapDataType const&>,std::tuple<>>(void *a1, unsigned __int16 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_19:
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
      goto LABEL_19;
    }

LABEL_8:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  if (*(v6 + 8) != a2)
  {
    goto LABEL_8;
  }

  return v6;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>();
    *algn_1EB83BF58 = 0x9C1597C84433D2CALL;
    qword_1EB83BF60 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>]";
    qword_1EB83BF68 = 81;
  }
}

gdc::Tiled *gdc::Tiled::Tiled(gdc::Tiled *this, int32x2_t *a2, float a3, float a4)
{
  gdc::Tiled::tileFromLayerDataKey(this, a2);
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  *(this + 10) = 0x3FF0000000000000;
  *(this + 88) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(this + 104) = xmmword_1B33B0520;
  *(this + 120) = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  *(this + 55) = 0;
  *(this + 56) = 0;
  v5 = 1 << *(this + 1);
  v6 = ((v5 + ~*(this + 1)) + 0.5) / v5;
  v7 = exp(v6 * 6.28318531 + -3.14159265);
  v8 = atan(v7);
  v9 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v8 * 114.591559 + -90.0) / (1.0 / v5);
  __powidf2();
  *(this + 114) = v9;
  *&v10 = v10 * 0.0000000249532021;
  *(this + 115) = v9;
  *(this + 116) = LODWORD(v10);
  v12 = 0;
  v13 = 0;
  gdc::Tiled::setZBoundsInMeters(this, &v13, &v12);
  return this;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignStyleConstantData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void *gdc::VirtualTileIterator::operator++(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  *a1 = v2;
  if (v3 != v2)
  {
    v9 = *(v2 + 116);
    *v8 = *(v2 + 112);
    v10 = *(v2 + 128);
    v11 = *(v2 + 136);
    v4 = (v2 + 264);
    do
    {
      v5 = v4 - 112;
      if (v4 - 112 == a1[2])
      {
        break;
      }

      v6 = geo::QuadTile::operator==(v4, v8);
      v4 += 152;
    }

    while (v6);
    a1[1] = v5;
  }

  return a1;
}

uint64_t std::__function::__func<md::SceneStateManager::updateSceneTileSet(md::SceneTileSet &,md::TileSelectionTileSetType)::$_0,std::allocator<md::SceneStateManager::updateSceneTileSet(md::SceneTileSet &,md::TileSelectionTileSetType)::$_0>,void ()(md::MapDataType)>::operator()(uint64_t result, unsigned __int16 *a2)
{
  v2 = *a2;
  if (v2 >= 0x52)
  {
    abort();
  }

  *(*(result + 8) + ((v2 >> 3) & 0x1FF8)) |= 1 << v2;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::Style>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[295];
}

void gdc::Tiled::setZBoundsInMeters(unsigned __int8 *a1, double *a2, double *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = 1 << a1[1];
  v7 = *(a1 + 2);
  v8 = 1.0 / v6;
  v9 = (v6 + ~*(a1 + 1));
  v10 = *a2;
  v11 = *a3;
  *(a1 + 55) = *a2;
  *(a1 + 56) = v11;
  *(a1 + 39) = v8;
  *(a1 + 20) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 44) = v8;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 49) = v8;
  *(a1 + 50) = 0;
  *(a1 + 424) = xmmword_1B33B0740;
  *(a1 + 17) = v8 * v7;
  v12.f64[0] = v8;
  v12.f64[1] = v10;
  v13 = vdupq_lane_s64(0x3E5ACB157F7410BCLL, 0);
  v13.f64[0] = v9;
  v14 = vmulq_f64(v12, v13);
  *(a1 + 51) = v8 * v7;
  *(a1 + 52) = *&v14.f64[0];
  *(a1 + 9) = v14;
  *(a1 + 20) = v8 * v7 + v8;
  *(a1 + 21) = v14.f64[0] + v8;
  *(a1 + 22) = v11 * 0.0000000249532021;
  if (*a1 == 255)
  {
    v41 = v8 * v7;
    v42 = v14.f64[0];
    v43 = v8 + v7 * v8;
    v44 = v8 + v9 * v8;
    gdc::GlobeTileUtils::boundsFromMercatorRect(buf, &v41, v10, v11);
    geo::OrientedBox<double,3u,double,double>::operator=((a1 + 32), buf);
    geo::OrientedBox<double,3u,double,double>::toMatrix(buf, a1 + 2);
    v15 = v48;
    *(a1 + 248) = *&v47[32];
    v16 = v49;
    v17 = v50;
    *(a1 + 264) = v15;
    *(a1 + 280) = v16;
    *(a1 + 296) = v17;
    v18 = v46;
    *(a1 + 184) = *buf;
    *(a1 + 200) = v18;
    v19 = *&v47[16];
    *(a1 + 216) = *v47;
    *(a1 + 232) = v19;
  }

  else
  {
    v41 = v8 * v7;
    v42 = v14.f64[0];
    v43 = v8 + v7 * v8;
    v44 = v8 + v9 * v8;
    gdc::GlobeTileUtils::boundsFromMercatorRect(buf, &v41, v10, v11);
    geo::OrientedBox<double,3u,double,double>::operator=((a1 + 32), buf);
    *(a1 + 23) = 0x3FF0000000000000;
    *(a1 + 12) = 0u;
    *(a1 + 13) = 0u;
    *(a1 + 28) = 0x3FF0000000000000;
    *(a1 + 232) = 0u;
    *(a1 + 248) = 0u;
    *(a1 + 33) = 0x3FF0000000000000;
    *(a1 + 17) = 0u;
    *(a1 + 18) = 0u;
    *(a1 + 38) = 0x3FF0000000000000;
  }

  v21 = *(a1 + 47);
  v20 = *(a1 + 48);
  v22 = *(a1 + 51);
  v23 = *(a1 + 52);
  v24 = *(a1 + 45);
  v25 = *(a1 + 46);
  v27 = *(a1 + 43);
  v26 = *(a1 + 44);
  v28 = *(a1 + 53);
  v29 = *(a1 + 54);
  v30 = *(a1 + 49);
  v31 = *(a1 + 50);
  v32 = *(a1 + 41);
  v34 = *(a1 + 39);
  v33 = *(a1 + 40);
  if (((v20 * v22 - v23 * v21) * v24 + (v26 * v21 - v27 * v20) * v28 + (v27 * v23 - v26 * v22) * v30) * *(a1 + 42) + (v33 * v27 * v28 + v32 * (v26 * v22) + v34 * v23 * v24) * v31 + (v32 * (v27 * v20) + v33 * v21 * v24 + v34 * v26 * v30) * v29 + (v32 * (v23 * v21) + v33 * v22 * v30 + v34 * v20 * v28) * v25 == v29 * v32 * (v26 * v21) + v25 * v32 * (v20 * v22) + v31 * v28 * (v34 * v26) + (v32 * (v27 * v23) + v33 * v22 * v24) * v31 + (v33 * v21 * v28 + v34 * v23 * v30) * v25 + (v33 * v27 * v30 + v34 * v20 * v24) * v29)
  {
    if (GEOGetGeoDisplayCoreDefaultLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoDisplayCoreDefaultLog::onceToken, &__block_literal_global_56374);
    }

    v35 = GEOGetGeoDisplayCoreDefaultLog::log;
    if (os_log_type_enabled(GEOGetGeoDisplayCoreDefaultLog::log, OS_LOG_TYPE_ERROR))
    {
      v37 = *(a1 + 1);
      v36 = *(a1 + 2);
      v38 = a1[1];
      v39 = *a2;
      v40 = *a3;
      *buf = 67110914;
      *&buf[4] = v36;
      *&buf[8] = 1024;
      *&buf[10] = v37;
      *&buf[14] = 1024;
      LODWORD(v46) = v38;
      WORD2(v46) = 2048;
      *(&v46 + 6) = v39;
      HIWORD(v46) = 2048;
      *v47 = v40;
      *&v47[8] = 2080;
      *&v47[10] = "_transformData.mercatorMatrix.determinant() != 0";
      *&v47[18] = 2080;
      *&v47[20] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/Tiled.cpp";
      *&v47[28] = 1024;
      *&v47[30] = 89;
      _os_log_impl(&dword_1B2754000, v35, OS_LOG_TYPE_ERROR, "Tile (x:%d y:%d level:%d) does not have an invertable matrix with zbounds min:%f max:%f: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x42u);
    }
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci5StyleEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A14078;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

unint64_t gdc::LayerDataCollector::getData(gdc::LayerDataCollector *this, gdc::LayerDataCollector *a2, int a3, unint64_t a4)
{
  while (this != a2)
  {
    if (*this == a3)
    {
      a2 = this;
      break;
    }

    this = (this + 32);
  }

  v4 = *(a2 + 1);
  if (0x8E38E38E38E38E39 * ((*(a2 + 2) - v4) >> 4) <= a4)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return v4 + 144 * a4 + 112;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci5StyleEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14078;
  a2[1] = v2;
  return result;
}

uint64_t geo::OrientedBox<double,3u,double,double>::toMatrix(uint64_t result, __int128 *a2)
{
  v2 = 0;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v44 = 0;
  v47 = 0x3FF0000000000000;
  do
  {
    *&v34[v2] = *(a2 + v2 * 8 + 80) - *(a2 + v2 * 8 + 56);
    ++v2;
  }

  while (v2 != 3);
  v3 = 0;
  v45 = *(a2 + 56);
  v46 = *(a2 + 9);
  v38 = v34[0];
  *&v41 = v34[1];
  *(&v43 + 1) = v34[2];
  v4 = *(a2 + 3);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  v8 = v5 + v5;
  v9 = (v5 + v5) * v5;
  v10 = (v6 + v6) * v6;
  v11 = v4 + v4;
  v12 = (v4 + v4) * v5;
  v13 = (v6 + v6) * v7;
  v14 = v12 - v13;
  v15 = v6 * (v4 + v4);
  v16 = v7 * v8;
  v17 = v13 + v12;
  v18 = v7 * v8 + v15;
  v48[0] = 1.0 - (v9 + v10);
  v48[1] = v17;
  v19 = 1.0 - (v4 + v4) * v4;
  v20 = v8 * v6;
  v21 = v7 * v11;
  v48[6] = v18;
  v48[7] = v20 - v21;
  v48[2] = v15 - v16;
  v48[3] = v14;
  v48[4] = v19 - v10;
  v48[5] = v21 + v20;
  v48[8] = v19 - v9;
  v22 = v34;
  v23 = v48;
  do
  {
    v24 = 0;
    v25 = v22;
    do
    {
      *v25 = *&v23[v24];
      v25 += 4;
      v24 += 3;
    }

    while (v24 != 9);
    ++v3;
    ++v22;
    ++v23;
  }

  while (v3 != 3);
  v26 = 0;
  v34[3] = 0;
  v34[7] = 0;
  v34[11] = 0;
  v35 = *a2;
  v36 = *(a2 + 2);
  v37 = 0x3FF0000000000000;
  v27 = v34;
  do
  {
    v28 = 0;
    v29 = &v38;
    do
    {
      v30 = 0;
      v31 = 0.0;
      v32 = v27;
      do
      {
        v33 = *v32;
        v32 += 4;
        v31 = v31 + *&v29[v30++] * v33;
      }

      while (v30 != 4);
      *(result + 8 * (4 * v28++ + v26)) = v31;
      v29 += 4;
    }

    while (v28 != 4);
    ++v26;
    ++v27;
  }

  while (v26 != 4);
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::StyleDataKeyHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::StyleDataKeyHandle>();
    unk_1EB83D110 = 0x1BB343378E1EE5BLL;
    qword_1EB83D118 = "md::ls::StyleDataKeyHandle]";
    qword_1EB83D120 = 26;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleDataKeyHandle>(void)::metadata >= 0x200)
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

char *std::__function::__func<ecs2::ForwardToExecute<md::ita::PushRenderItems>,std::allocator<ecs2::ForwardToExecute<md::ita::PushRenderItems>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<md::ita::PushRenderItems,md::ls::RenderItemID const&,md::ls::ItemsPrepared const&>(*(a2 + 8), (a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void md::SceneStateManager::updateMerged(md::SceneStateManager *this)
{
  v2 = (this + 232);
  *(this + 30) = *(this + 29);
  v3 = *(this + 23);
  v4 = *(this + 24);
  while (v3 != v4)
  {
    geo::linear_set<md::TileSelectionTileSetType,std::less<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>,std::vector<md::TileSelectionTileSetType>>::insert(v2, v3);
    v3 += 2;
  }

  v6 = *(this + 26);
  v5 = *(this + 27);
  while (v6 != v5)
  {
    geo::linear_set<md::TileSelectionTileSetType,std::less<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>,std::vector<md::TileSelectionTileSetType>>::insert(v2, v6);
    v6 += 2;
  }
}

void geo::codec::VectorTile::debugInfoPerChapterAndChapterDetails(geo::codec::VectorTile *this, uint64_t a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = *(a2 + 1952);
  prime = *(a2 + 1928);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    std::__hash_table<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::__unordered_map_hasher<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::hash<std::variant<ChapterType,DetailType>>,std::equal_to<std::variant<ChapterType,DetailType>>,true>,std::__unordered_map_equal<std::variant<ChapterType,DetailType>,std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>,std::equal_to<std::variant<ChapterType,DetailType>>,std::hash<std::variant<ChapterType,DetailType>>,true>,std::allocator<std::__hash_value_type<std::variant<ChapterType,DetailType>,DebugChapterInfo>>>::__do_rehash<true>(this, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 1928));
    v5 = *(this + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(this + 3) / *(this + 8));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  v10 = *(a2 + 1936);
  if (!v10)
  {
    return;
  }

  do
  {
    v11 = *(v10 + 5);
    if (v11 == -1)
    {
      v12 = 299792458;
    }

    else
    {
      v12 = (off_1F2A5FAA8[v11])(&v29, v10 + 2);
      v13 = *(v10 + 5);
      if (v13 != -1)
      {
        goto LABEL_24;
      }
    }

    v13 = -1;
LABEL_24:
    v14 = __ROR8__(v13 + 16, 16);
    v15 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v14 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ v12)))) ^ ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v14 ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ v12)))) >> 47))) ^ v13;
    v16 = *(this + 8);
    if (!*&v16)
    {
      goto LABEL_58;
    }

    v17 = vcnt_s8(v16);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      v18 = v15;
      if (v15 >= *&v16)
      {
        v18 = v15 % *&v16;
      }
    }

    else
    {
      v18 = v15 & (*&v16 - 1);
    }

    v19 = *(*this + 8 * v18);
    if (!v19 || (v20 = *v19) == 0)
    {
LABEL_58:
      operator new();
    }

    if (v17.u32[0] < 2uLL)
    {
      while (1)
      {
        v21 = v20[1];
        if (v21 == v15)
        {
          v22 = *(v20 + 5);
          v23 = *(v10 + 5);
          if (v22 != -1 && v23 == v22)
          {
            v31 = &v30;
            if ((off_1F2A5FAB8[v22])(&v31, v20 + 2, v10 + 2))
            {
              goto LABEL_56;
            }
          }

          else if (v23 == v22)
          {
            goto LABEL_56;
          }
        }

        else if ((v21 & (*&v16 - 1)) != v18)
        {
          goto LABEL_58;
        }

        v20 = *v20;
        if (!v20)
        {
          goto LABEL_58;
        }
      }
    }

    while (1)
    {
      v25 = v20[1];
      if (v25 == v15)
      {
        break;
      }

      if (v25 >= *&v16)
      {
        v25 %= *&v16;
      }

      if (v25 != v18)
      {
        goto LABEL_58;
      }

LABEL_45:
      v20 = *v20;
      if (!v20)
      {
        goto LABEL_58;
      }
    }

    v26 = *(v20 + 5);
    v27 = *(v10 + 5);
    if (v26 == -1 || v27 != v26)
    {
      if (v27 == v26)
      {
        goto LABEL_56;
      }

      goto LABEL_45;
    }

    v31 = &v30;
    if (((off_1F2A5FAB8[v26])(&v31, v20 + 2, v10 + 2) & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_56:
    v10 = *v10;
  }

  while (v10);
}

char *std::vector<md::TileExclusionArea>::__assign_with_size[abi:nn200100]<md::TileExclusionArea*,md::TileExclusionArea*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  result = *a1;
  if (0x8E38E38E38E38E39 * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x8E38E38E38E38E39 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x1C71C71C71C71C7)
      {
        v11 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x38E38E38E38E38ELL)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::TileExclusionArea>>(v11);
      }
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = *(a1 + 8);
  if (0x8E38E38E38E38E39 * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5 + 8);
      *(result + 2) = *(v5 + 16);
      *(result + 3) = *(v5 + 24);
      v20 = *(v5 + 32);
      v21 = *(v5 + 48);
      *(result + 8) = *(v5 + 64);
      *(result + 2) = v20;
      *(result + 3) = v21;
      v5 += 72;
      result += 72;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v13 = a2 + v12 - result;
    if (v12 != result)
    {
      do
      {
        *result = *v5;
        *(result + 1) = *(v5 + 8);
        *(result + 2) = *(v5 + 16);
        *(result + 3) = *(v5 + 24);
        v14 = *(v5 + 32);
        v15 = *(v5 + 48);
        *(result + 8) = *(v5 + 64);
        *(result + 2) = v14;
        *(result + 3) = v15;
        v5 += 72;
        result += 72;
      }

      while (v5 != v13);
      v12 = *(a1 + 8);
    }

    v16 = v12;
    if (v13 != a3)
    {
      v16 = v12;
      do
      {
        *v16 = *v13;
        v17 = *(v13 + 16);
        v18 = *(v13 + 32);
        v19 = *(v13 + 48);
        *(v16 + 8) = *(v13 + 64);
        *(v16 + 2) = v18;
        *(v16 + 3) = v19;
        *(v16 + 1) = v17;
        v13 += 72;
        v16 += 72;
      }

      while (v13 != a3);
    }

    *(a1 + 8) = v16;
  }

  return result;
}

void *gdc::Context::get<md::PendingSceneContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x9F2276D081C2CB20);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x9F2276D081C2CB20)
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

void gdc::LayerDataSource::updateLayerData(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t *a4, uint64_t a5, char a6)
{
  v58 = *MEMORY[0x1E69E9840];
  rep = std::chrono::steady_clock::now().__d_.__rep_;
  (*(*a1 + 112))(&v48, a1, a3, a4, a5);
  std::mutex::lock((a1 + 480));
  v13.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  gdc::Sampler::addSample(a1 + 544, (v13.__d_.__rep_ - rep) * 0.000000001);
  std::mutex::unlock((a1 + 480));
  if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
  }

  v14 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
  if (os_log_type_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log, OS_LOG_TYPE_DEBUG))
  {
    v15 = (*(**(a1 + 584) + 16))(*(a1 + 584));
    gdc::LayerDataRequestKey::keysInt32Str(&__p, a3);
    v16 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = v15;
    v52 = 2080;
    *v53 = v16;
    *&v53[8] = 2048;
    v54 = a5;
    _os_log_impl(&dword_1B2754000, v14, OS_LOG_TYPE_DEBUG, "%s Created Layer Data: %s @ Time: %lld", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v17 = v48;
  if (v48)
  {
    v18 = *a4;
    v19 = a4[1];
    if (*a4 != v19)
    {
      v20 = 0;
      do
      {
        for (i = *(v18 + 24); i; i = *i)
        {
          v22 = i[14];
          v23 = *(v22 + 112);
          if (v23 < 1)
          {
            v24 = 0;
            if (v20)
            {
LABEL_17:
              if (v24 < 1 || v24 >= v20)
              {
                continue;
              }
            }
          }

          else
          {
            v24 = *(v22 + 96) + v23;
            if (v20)
            {
              goto LABEL_17;
            }
          }

          v20 = v24;
        }

        v18 += 48;
      }

      while (v18 != v19);
      if (v20 > 0)
      {
        v48[19] = v20;
        v25 = __OFSUB__(v20, a5);
        v26 = v20 - a5;
        if ((v26 < 0) ^ v25 | (v26 == 0))
        {
          gdc::LayerDataSource::requestUpdate(a1);
        }

        else
        {
          std::mutex::lock((a1 + 304));
          (*(**(a1 + 368) + 24))(*(a1 + 368), 0, v26 * 0.001);
          std::mutex::unlock((a1 + 304));
        }

        v17 = v48;
      }
    }

    v17[16] = a2;
    *(v17 + 160) = a6;
    v42 = *(a1 + 16);
    v31 = (v42 + 80);
    std::mutex::lock((v42 + 80));
    *buf = a3;
    v43 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,std::piecewise_construct_t const&,std::tuple<gdc::LayerDataRequestKey const&>,std::tuple<>>((v42 + 144), a3);
    v45 = v48;
    v44 = v49;
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v46 = v43[17];
    v43[16] = v45;
    v43[17] = v44;
    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v46);
    }

    v47 = *(v42 + 272);
    if (v47)
    {
      (*(*v47 + 48))(v47, &v48);
    }

    goto LABEL_64;
  }

  if (GEOGetGeoDisplayCoreDefaultLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGeoDisplayCoreDefaultLog::onceToken, &__block_literal_global_56374);
  }

  v27 = GEOGetGeoDisplayCoreDefaultLog::log;
  if (os_log_type_enabled(GEOGetGeoDisplayCoreDefaultLog::log, OS_LOG_TYPE_ERROR))
  {
    v28 = (*(**(a1 + 584) + 16))(*(a1 + 584));
    (*(*a1 + 136))(buf, a1, a3);
    v29 = v53[9] >= 0 ? buf : *buf;
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = v28;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v29;
    _os_log_impl(&dword_1B2754000, v27, OS_LOG_TYPE_ERROR, "%s Failed to create layer data for key: %s", &__p, 0x16u);
    if ((v53[9] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  v30 = *(a1 + 16);
  v31 = (v30 + 80);
  std::mutex::lock((v30 + 80));
  gdc::LayerDataRequestKey::LayerDataRequestKey(buf, a3);
  v57 = a2;
  v32 = v56;
  v33 = *(v30 + 192);
  if (!*&v33)
  {
    goto LABEL_53;
  }

  v34 = vcnt_s8(v33);
  v34.i16[0] = vaddlv_u8(v34);
  v35 = v34.u32[0];
  if (v34.u32[0] > 1uLL)
  {
    v36 = v56;
    if (v56 >= *&v33)
    {
      v36 = v56 % *&v33;
    }
  }

  else
  {
    v36 = (*&v33 - 1) & v56;
  }

  v37 = *(*(v30 + 184) + 8 * v36);
  if (!v37 || (v38 = *v37) == 0)
  {
LABEL_53:
    operator new();
  }

  v39 = buf[0];
  v40 = *&buf[8];
  while (1)
  {
    v41 = v38[1];
    if (v41 == v32)
    {
      break;
    }

    if (v35 > 1)
    {
      if (v41 >= *&v33)
      {
        v41 %= *&v33;
      }
    }

    else
    {
      v41 &= *&v33 - 1;
    }

    if (v41 != v36)
    {
      goto LABEL_53;
    }

LABEL_52:
    v38 = *v38;
    if (!v38)
    {
      goto LABEL_53;
    }
  }

  if (*(v38 + 16) != v39 || *(v38 + 12) != v40 || !gdc::GenericKey::operator==((v38 + 4), &v53[2]))
  {
    goto LABEL_52;
  }

  if (*&v53[2] != v55)
  {
    free(*&v53[2]);
  }

LABEL_64:
  std::mutex::unlock(v31);
  if (v49)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v49);
  }
}

void md::ita::OnLayoutEndTask::operator()(uint64_t **a1)
{
  v2 = ecs2::ExecutionTask<md::PassListProvider *,md::LayoutContextProvider *>::service<md::PassListProvider>(a1);
  v3 = (*(*v2 + 16))(v2);
  v4 = *ecs2::ExecutionTask<md::PassListProvider *,md::LayoutContextProvider *>::service<md::LayoutContextProvider>(a1);
  v5 = (*v4)();
  v6 = objc_autoreleasePoolPush();
  (*(*v3 + 80))(v3, v5);

  objc_autoreleasePoolPop(v6);
}

uint64_t md::Logic<md::PendingRegistryLogic,md::PendingRegistryContext,md::LogicDependencies<gdc::TypeList<md::PendingSceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA8300AA8F44B09FFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::get<md::PendingSceneContext>(*(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,std::piecewise_construct_t const&,std::tuple<gdc::LayerDataRequestKey const&>,std::tuple<>>(void *a1, unsigned __int8 *a2)
{
  v2 = *(a2 + 13);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_21;
  }

  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 13);
    if (v2 >= *&v3)
    {
      v7 = v2 % *&v3;
    }
  }

  else
  {
    v7 = (*&v3 - 1) & v2;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_21:
    operator new();
  }

  v10 = *a2;
  v11 = *(a2 + 4);
  while (1)
  {
    v12 = v9[1];
    if (v12 == v2)
    {
      break;
    }

    if (v6 > 1)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v7)
    {
      goto LABEL_21;
    }

LABEL_20:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_21;
    }
  }

  if (*(v9 + 16) != v10 || *(v9 + 12) != v11 || !gdc::GenericKey::operator==((v9 + 4), (a2 + 16)))
  {
    goto LABEL_20;
  }

  return v9;
}

void std::__function::__func<ecs2::ForwardToExecute<md::ita::OnLayoutEndTask>,std::allocator<ecs2::ForwardToExecute<md::ita::OnLayoutEndTask>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::OnLayoutEndTask::operator()((a1 + 8));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

uint64_t *ecs2::ExecutionTask<md::PassListProvider *,md::LayoutContextProvider *>::service<md::LayoutContextProvider>(uint64_t **a1)
{
  v1 = a1[2];
  if (!v1)
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
      v1 = 0;
    }

    else
    {
      v1 = v4[3];
      v6 = v4[4];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }
    }

    a1[2] = v1;
  }

  return v1;
}

void gdc::LayerDataSource::requestUpdate(gdc::LayerDataSource *this)
{
  std::mutex::lock((this + 376));
  v2 = *(this + 58);
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  std::mutex::unlock((this + 376));
}

char *ecs2::Runtime::_entities<PrepareFrameForEncode,md::ita::FrameHandle const&,md::ls::RenderTargetToPrepare const&>(uint64_t a1, uint64_t a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = ecs2::BasicRegistry<void>::storage<md::ita::FrameHandle>(a1);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RenderTargetToPrepare>(a1);
  v6 = v5;
  if (*(v5 + 40) - *(v5 + 32) >= *(v4 + 40) - *(v4 + 32))
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = *(v7 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v49, *(v7 + 32), v8, v4, v5);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v42, v8, v8, v4, v6);
  v41 = v50;
  v39 = *v49;
  v40 = *&v49[16];
  v36 = *v49;
  v37 = *&v49[16];
  v38 = v50;
  v9 = *v49;
  v35 = v42;
  if (*v49 == v42)
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v12 = 0;
  }

  else
  {
    _ZTWN4ecs27Runtime11_localStateE();
    result = _ZTWN4ecs27Runtime11_stackIndexE();
    v12 = 0;
    v34 = v37;
    do
    {
      v13 = *(*(*(v34 + 8) + ((v9[1] >> 3) & 0x1FF8)) + 4 * (v9[1] & 0x3FLL) + 2);
      v14 = *(*(v34 + 56) + ((v13 >> 3) & 0x1FF8));
      v15 = result;
      v16 = v11;
      *(v11 + 104 * *result + 24) = *v9;
      v17 = *(a2 + 8);
      if (!v17)
      {
        v17 = ecs2::service<md::FrameService>(***a2, *(**a2 + 8));
        *(a2 + 8) = v17;
      }

      v18 = v13 & 0x3F;
      v19 = (*(*v17 + 56))(v43, v17, *(v14 + 8 * v18));
      if (v44 == 1)
      {
        v20 = v43[1];
        v21 = ecs2::ExecutionTaskContext::currentEntity(v19);
        v46 = &unk_1F2A1D9C8;
        *&v47 = v20;
        DWORD2(v47) = v21;
        v48 = &v46;
        HIDWORD(v47) = 0;
        *&v49[24] = v49;
        *v49 = &unk_1F2A1D9C8;
        *&v49[8] = v47;
        *&v49[20] = 0;
        LODWORD(v50) = 0;
        ecs2::Runtime::queueCommand();
        if (v50 != -1)
        {
          (off_1F2A1D8B8[v50])(&v45, v49);
        }

        LODWORD(v50) = -1;
        v22 = std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v46);
        if (v44)
        {
          v23 = v43[0];
          v24 = ecs2::ExecutionTaskContext::currentEntity(v22);
          v46 = &unk_1F2A1DA98;
          *&v47 = v23;
          DWORD2(v47) = v24;
          v48 = &v46;
          HIDWORD(v47) = 0;
          *&v49[24] = v49;
          *v49 = &unk_1F2A1DA98;
          *&v49[8] = v47;
          *&v49[20] = 0;
          LODWORD(v50) = 0;
          ecs2::Runtime::queueCommand();
          if (v50 != -1)
          {
            (off_1F2A1D8B8[v50])(&v45, v49);
          }

          LODWORD(v50) = -1;
          std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v46);
          (*(*v17 + 72))(v17, *(v14 + 8 * v18), 3);
          (*(*v17 + 72))(v17, *(v14 + 8 * v18), 0);
          v25 = (*(*v17 + 72))(v17, *(v14 + 8 * v18), 1);
          ecs2::ExecutionTaskContext::currentEntity(v25);
          operator new();
        }

        std::__throw_bad_optional_access[abi:nn200100]();
      }

      ++v12;
      v26 = *(&v36 + 1);
      v27 = v9 + 2;
      do
      {
        v9 = v27;
        *&v36 = v27;
        if (v27 == v26)
        {
          break;
        }

        v28 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(&v36, *v27, v27[1]);
        v27 = v9 + 2;
      }

      while (!v28);
      v11 = v16;
      result = v15;
    }

    while (v9 != v35);
  }

  *(v11 + 104 * *result + 24) = -65536;
  v29 = v11 + 104 * *result;
  v30 = *(v29 + 92);
  *(v29 + 92) = v30 + 1;
  *(v29 + 4 * v30 + 28) = v12;
  v31 = v11 + 104 * *result;
  v33 = *(v31 + 92);
  v32 = (v31 + 92);
  if (v33 > 0xF)
  {
    *v32 = 0;
  }

  return result;
}

uint64_t md::Logic<md::PendingRegistryLogic,md::PendingRegistryContext,md::LogicDependencies<gdc::TypeList<md::PendingSceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xA8300AA8F44B09FFLL)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = gdc::Context::get<md::PendingSceneContext>(*(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

void std::__destroy_at[abi:nn200100]<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>,0>(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[1];
  if (v3 != a1[3])
  {

    free(v3);
  }
}

char *std::__function::__func<ecs2::ForwardToExecute<PrepareFrameForEncode>,std::allocator<ecs2::ForwardToExecute<PrepareFrameForEncode>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = ecs2::Runtime::_entities<PrepareFrameForEncode,md::ita::FrameHandle const&,md::ls::RenderTargetToPrepare const&>(*(a2 + 8), a1 + 8);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ita::FrameHandle>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ita::FrameHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ita::FrameHandle>();
    unk_1EB83B800 = 0x8004EB719AAADA5BLL;
    qword_1EB83B808 = "md::ita::FrameHandle]";
    qword_1EB83B810 = 20;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ita::FrameHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ita::FrameHandle>(void)::metadata >= 0x200)
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

uint64_t std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:nn200100]<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>,0>(v2 + 2);
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

void md::RegistryManager::update(uint64_t a1, uint64_t a2, md::SceneContext *a3, os_signpost_id_t a4)
{
  v177 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 328);
  for (i = *(a1 + 336); i != v7; std::unique_ptr<gdc::Registry>::reset[abi:nn200100](i, 0))
  {
    --i;
  }

  *(a1 + 336) = v7;
  v9 = *(a1 + 352);
  v10 = *(a1 + 360);
  if (v9 != v10)
  {
    do
    {
      v11 = GEOGetVectorKitRegistryManagerLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(*(v9 + 104) + 40);
        stringForKey(__p, v9);
        v13 = __p;
        if (__p[23] < 0)
        {
          v13 = *__p;
        }

        *buf = 67109378;
        *&buf[4] = v12;
        *&buf[8] = 2080;
        *&buf[10] = v13;
        _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_DEBUG, "[RegistryDestroyed] Registry:%d key:%s", buf, 0x12u);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::__erase_unique<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>((a1 + 304), v9);
      v9 += 112;
    }

    while (v9 != v10);
    v9 = *(a1 + 352);
    v10 = *(a1 + 360);
  }

  while (v10 != v9)
  {
    v10 -= 112;
    std::__destroy_at[abi:nn200100]<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,0>(v10);
  }

  *(a1 + 360) = v9;
  *(a1 + 464) = *(a1 + 456);
  *(a1 + 896) = *(a1 + 888);
  *(a1 + 920) = *(a1 + 912);
  if (GEOGetVectorKitPerformanceDetailsLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceDetailsLog_onceToken, &__block_literal_global_25);
  }

  v14 = GEOGetVectorKitPerformanceDetailsLog_log;
  v15 = v14;
  if (a4 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v14))
  {
    *__p = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v15, OS_SIGNPOST_INTERVAL_BEGIN, a4, "SynchPoint", &unk_1B3514CAA, __p, 2u);
  }

  std::mutex::lock((a1 + 144));
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 256), a1 + 280);
  std::__tree<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>::destroy(*(a1 + 264));
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = a1 + 264;
  std::mutex::unlock((a1 + 144));
  std::mutex::lock((a1 + 80));
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100]((a1 + 208), a1 + 232);
  std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::destroy(*(a1 + 216));
  *(a1 + 208) = a1 + 216;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  std::mutex::unlock((a1 + 80));
  if (GEOGetVectorKitPerformanceDetailsLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceDetailsLog_onceToken, &__block_literal_global_25);
  }

  v16 = GEOGetVectorKitPerformanceDetailsLog_log;
  v17 = v16;
  if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *__p = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v17, OS_SIGNPOST_INTERVAL_END, a4, "SynchPoint", &unk_1B3514CAA, __p, 2u);
  }

  v18 = *(a1 + 280);
  v19 = (a1 + 288);
  if (v18 != (a1 + 288))
  {
    do
    {
      v124 = std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::find<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>(a1 + 304, (v18 + 4));
      if (a1 + 312 == v124)
      {
        v133 = std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::find<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>(a1 + 232, (v18 + 4));
        v134 = GEOGetVectorKitRegistryManagerLog();
        v135 = v134;
        if (a1 + 240 == v133)
        {
          if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
          {
            stringForKey(buf, (v18 + 4));
            v160 = buf;
            if (buf[23] < 0)
            {
              v160 = *buf;
            }

            *__p = 136315906;
            *&__p[4] = v160;
            *&__p[12] = 2080;
            *&__p[14] = "false";
            *&__p[22] = 2080;
            *v172 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/RegistryManager.mm";
            *&v172[8] = 1024;
            *v173 = 175;
            _os_log_impl(&dword_1B2754000, v135, OS_LOG_TYPE_ERROR, "No registry for key:%s to destroy: Assertion with expression - %s : Failed in file - %s line - %i", __p, 0x26u);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          goto LABEL_198;
        }

        if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
        {
          stringForKey(__p, (v18 + 4));
          v161 = __p;
          if (__p[23] < 0)
          {
            v161 = *__p;
          }

          *buf = 136315138;
          *&buf[4] = v161;
          _os_log_impl(&dword_1B2754000, v135, OS_LOG_TYPE_DEBUG, "Key:%s is both incoming and outgoing, do nothing", buf, 0xCu);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        v129 = (a1 + 232);
        v130 = v133;
      }

      else
      {
        v125 = GEOGetVectorKitRegistryManagerLog();
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
        {
          v126 = *(*(v124 + 136) + 40);
          stringForKey(__p, (v18 + 4));
          v127 = __p;
          if (__p[23] < 0)
          {
            v127 = *__p;
          }

          *buf = 67109378;
          *&buf[4] = v126;
          *&buf[8] = 2080;
          *&buf[10] = v127;
          _os_log_impl(&dword_1B2754000, v125, OS_LOG_TYPE_DEBUG, "[RegistryDestructionQueued] Registry:%d key:%s", buf, 0x12u);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        v128 = *(v124 + 136);
        if (std::binary_search[abi:nn200100]<std::__wrap_iter<gdc::Registry **>,gdc::Registry *,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0>(*(a1 + 384), *(a1 + 392), v128) && *(v124 + 128) == 1)
        {
          *__p = v128;
          std::vector<md::FrameGraphPass *>::emplace_back<md::FrameGraphPass * const&>(a1 + 912, __p);
          v128 = *(v124 + 136);
        }

        *__p = *(v128 + 40);
        geo::linear_set<unsigned short,std::less<unsigned short>,std::allocator<unsigned short>,std::vector<unsigned short>>::insert((a1 + 456), __p);
        std::vector<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>::emplace_back<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> const&,std::unique_ptr<gdc::Registry>>((a1 + 352), v124 + 32, (v124 + 136));
        v129 = (a1 + 304);
        v130 = v124;
      }

      std::map<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>::erase[abi:nn200100](v129, v130);
LABEL_198:
      v131 = v18[1];
      if (v131)
      {
        do
        {
          v132 = v131;
          v131 = *v131;
        }

        while (v131);
      }

      else
      {
        do
        {
          v132 = v18[2];
          v74 = *v132 == v18;
          v18 = v132;
        }

        while (!v74);
      }

      v18 = v132;
    }

    while (v132 != v19);
  }

  v20 = *(a1 + 232);
  v21 = (a1 + 240);
  if (v20 != (a1 + 240))
  {
    v139 = a1 + 312;
    v140 = &dword_1B2754000;
    v141 = "[RegistryAdded] Registry:%d key:%s";
    do
    {
      v142 = std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::find<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>(a1 + 304, (v20 + 4));
      v143 = GEOGetVectorKitRegistryManagerLog();
      v144 = v143;
      if (v139 == v142)
      {
        if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
        {
          v153 = v141;
          v154 = v140;
          v155 = *(v20[17] + 40);
          stringForKey(__p, (v20 + 4));
          v156 = __p;
          if (__p[23] < 0)
          {
            v156 = *__p;
          }

          *buf = 67109378;
          *&buf[4] = v155;
          *&buf[8] = 2080;
          *&buf[10] = v156;
          v140 = v154;
          v157 = v154;
          v141 = v153;
          _os_log_impl(v157, v144, OS_LOG_TYPE_DEBUG, v153, buf, 0x12u);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        if (*(v20 + 32) == 1)
        {
          *__p = v20[17];
          std::vector<md::FrameGraphPass *>::emplace_back<md::FrameGraphPass * const&>(a1 + 888, __p);
        }

        std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::__emplace_unique_key_args<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> const,std::unique_ptr<gdc::Registry>>>(a1 + 304, (v20 + 4));
      }

      else
      {
        if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
        {
          v162 = v139;
          v145 = v141;
          v146 = v140;
          v147 = *(*(v142 + 136) + 40);
          stringForKey(buf, (v20 + 4));
          v148 = buf;
          if (buf[23] < 0)
          {
            v148 = *buf;
          }

          v149 = *(v20[17] + 40);
          *__p = 67110402;
          *&__p[4] = v147;
          *&__p[8] = 2080;
          *&__p[10] = v148;
          *&__p[18] = 1024;
          *&__p[20] = v149;
          *v172 = 2080;
          *&v172[2] = "false";
          *v173 = 2080;
          *&v173[2] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/RegistryManager.mm";
          v174 = 1024;
          v175 = 193;
          v140 = v146;
          _os_log_impl(v146, v144, OS_LOG_TYPE_ERROR, "Already have a registry(id:%d) associated with the key:%s for a new incoming registry(id:%d): Assertion with expression - %s : Failed in file - %s line - %i", __p, 0x32u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v141 = v145;
          v139 = v162;
        }

        std::vector<std::unique_ptr<md::RibbonSection<md::Ribbons::DaVinciTrafficRibbonDescriptor>>>::push_back[abi:nn200100](a1 + 328, (v142 + 136));
        v150 = v20[17];
        v20[17] = 0;
        std::unique_ptr<gdc::Registry>::reset[abi:nn200100]((v142 + 136), v150);
      }

      v151 = v20[1];
      if (v151)
      {
        do
        {
          v152 = v151;
          v151 = *v151;
        }

        while (v151);
      }

      else
      {
        do
        {
          v152 = v20[2];
          v74 = *v152 == v20;
          v20 = v152;
        }

        while (!v74);
      }

      v20 = v152;
    }

    while (v152 != v21);
  }

  std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::destroy(*(a1 + 240));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = v21;
  std::__tree<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>::destroy(*(a1 + 288));
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = v19;
  v22 = (a2 + 128);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a2 + 128));
  *(a2 + 120) = a2 + 128;
  v163 = (a2 + 120);
  *(a2 + 136) = 0;
  *(a2 + 128) = 0;
  v23 = (a2 + 152);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a2 + 152));
  v24 = 0;
  *(a2 + 144) = a2 + 152;
  v25 = (a2 + 144);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = &buf[8];
  do
  {
    v26 = md::SceneContext::layerDataInView(a3, kMapDataTypesWithRegistries[v24]);
    if (*v26 != v26 + 1)
    {
      std::__tree<md::LayerDataIdentWithWorld>::__emplace_unique_impl<gdc::LayerDataWithWorld const&>();
    }

    ++v24;
  }

  while (v24 != 6);
  v27 = *(a2 + 168);
  v28 = a2 + 176;
  v29 = *(a2 + 120);
  v169 = &buf[8];
  v170 = *buf;
  v167 = (a2 + 176);
  v168 = v27;
  v165 = a2 + 120;
  v166 = v29;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<md::LayerDataIdentWithWorld,std::__tree_node<md::LayerDataIdentWithWorld,void *> *,long> &,std::__tree_const_iterator<md::LayerDataIdentWithWorld,std::__tree_node<md::LayerDataIdentWithWorld,void *> *,long> &,std::__tree_const_iterator<md::LayerDataIdentWithWorld,std::__tree_node<md::LayerDataIdentWithWorld,void *> *,long> &,std::__tree_const_iterator<md::LayerDataIdentWithWorld,std::__tree_node<md::LayerDataIdentWithWorld,void *> *,long> &,std::insert_iterator<std::set<md::LayerDataIdentWithWorld>> &>(__p, &v170, &v169, &v168, &v167, &v165);
  v30 = *(a2 + 168);
  v31 = *(a2 + 144);
  v169 = (a2 + 176);
  v170 = v30;
  v167 = &buf[8];
  v168 = *buf;
  v165 = a2 + 144;
  v166 = v31;
  std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<md::LayerDataIdentWithWorld,std::__tree_node<md::LayerDataIdentWithWorld,void *> *,long> &,std::__tree_const_iterator<md::LayerDataIdentWithWorld,std::__tree_node<md::LayerDataIdentWithWorld,void *> *,long> &,std::__tree_const_iterator<md::LayerDataIdentWithWorld,std::__tree_node<md::LayerDataIdentWithWorld,void *> *,long> &,std::__tree_const_iterator<md::LayerDataIdentWithWorld,std::__tree_node<md::LayerDataIdentWithWorld,void *> *,long> &,std::insert_iterator<std::set<md::LayerDataIdentWithWorld>> &>(__p, &v170, &v169, &v168, &v167, &v165);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((a2 + 80));
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(a2);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((a2 + 40));
  v32 = *buf;
  if (*buf != &buf[8])
  {
    do
    {
      *__p = *(v32 + 7);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>(a2, *__p);
      v33 = *(v32 + 1);
      if (v33)
      {
        do
        {
          v34 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v34 = *(v32 + 2);
          v74 = *v34 == v32;
          v32 = v34;
        }

        while (!v74);
      }

      v32 = v34;
    }

    while (v34 != &buf[8]);
  }

  v35 = *v25;
  if (*v25 != v23)
  {
    do
    {
      *__p = *(v35 + 7);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>((a2 + 40), *__p);
      v115 = v35[1];
      if (v115)
      {
        do
        {
          v116 = v115;
          v115 = *v115;
        }

        while (v115);
      }

      else
      {
        do
        {
          v116 = v35[2];
          v74 = *v116 == v35;
          v35 = v116;
        }

        while (!v74);
      }

      v35 = v116;
    }

    while (v116 != v23);
  }

  v36 = *v163;
  if (*v163 != v22)
  {
    do
    {
      *__p = *(v36 + 7);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>((a2 + 80), *__p);
      v136 = v36[1];
      if (v136)
      {
        do
        {
          v137 = v136;
          v136 = *v136;
        }

        while (v136);
      }

      else
      {
        do
        {
          v137 = v36[2];
          v74 = *v137 == v36;
          v36 = v137;
        }

        while (!v74);
      }

      v36 = v137;
    }

    while (v137 != v22);
  }

  *(a1 + 392) = *(a1 + 384);
  *(a1 + 416) = *(a1 + 408);
  *(a1 + 440) = *(a1 + 432);
  *(a1 + 488) = *(a1 + 480);
  v37 = *(a1 + 304);
  if (v37 != (a1 + 312))
  {
    do
    {
      v38 = v37[17];
      v165 = v38;
      if (*(v37 + 32))
      {
        v54 = *(a1 + 392);
        if (v54 >= *(a1 + 400))
        {
          v55 = std::vector<gdc::Registry *>::__emplace_back_slow_path<gdc::Registry *&>(a1 + 384, &v165);
        }

        else
        {
          *v54 = v38;
          v55 = (v54 + 1);
        }

        *(a1 + 392) = v55;
        goto LABEL_52;
      }

      if (!gdc::Context::context<md::MapDataType>(v38))
      {
        gdc::Context::setContext<md::MapDataType,md::MapDataType>();
      }

      v39 = *(v37 + 8);
      v40 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>(a2, v39);
      if (v40)
      {
        v41 = v40;
        v42 = *(a1 + 392);
        if (v42 >= *(a1 + 400))
        {
          v43 = std::vector<gdc::Registry *>::__emplace_back_slow_path<gdc::Registry *&>(a1 + 384, &v165);
        }

        else
        {
          *v42 = v165;
          v43 = (v42 + 1);
          *(a1 + 392) = v43;
        }

        *(a1 + 392) = v43;
        std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase(a2, v41);
        v44 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>((a2 + 80), *(v37 + 8));
        if (!v44)
        {
          goto LABEL_52;
        }

        v45 = v44;
        v46 = *(a1 + 440);
        if (v46 >= *(a1 + 448))
        {
          v47 = std::vector<gdc::Registry *>::__emplace_back_slow_path<gdc::Registry *&>(a1 + 432, &v165);
        }

        else
        {
          *v46 = v165;
          v47 = (v46 + 1);
        }

        *(a1 + 440) = v47;
        for (j = *(a1 + 16); j; j = *j)
        {
          *__p = v165;
          std::__function::__value_func<std::unique_ptr<gdc::EntityCollector> ()(gdc::Registry *)>::operator()[abi:nn200100](&v170, j[7], __p);
          if (v170)
          {
            (*(*v170 + 16))(v170, v165);
            *__p = &v165;
            v49 = std::__hash_table<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>>>::__emplace_unique_key_args<gdc::Registry *,std::piecewise_construct_t const&,std::tuple<gdc::Registry * const&>,std::tuple<>>((a1 + 40), v165);
            geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>::emplace<std::pair<unsigned long,unsigned int> const&,std::unique_ptr<gdc::EntityCollector>>((v49 + 3), j + 2, &v170);
            v50 = v170;
            v170 = 0;
            if (v50)
            {
              (*(*v50 + 8))(v50);
            }
          }
        }

        v51 = (a2 + 80);
      }

      else
      {
        v56 = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>((a2 + 40), v39);
        if (!v56)
        {
          v122 = *(a1 + 488);
          if (v122 >= *(a1 + 496))
          {
            v123 = std::vector<gdc::Registry *>::__emplace_back_slow_path<gdc::Registry *&>(a1 + 480, &v165);
          }

          else
          {
            *v122 = v165;
            v123 = (v122 + 1);
          }

          *(a1 + 488) = v123;
          goto LABEL_52;
        }

        v45 = v56;
        v57 = *(a1 + 416);
        if (v57 >= *(a1 + 424))
        {
          v59 = std::vector<gdc::Registry *>::__emplace_back_slow_path<gdc::Registry *&>(a1 + 408, &v165);
          v58 = v165;
        }

        else
        {
          v58 = v165;
          *v57 = v165;
          v59 = (v57 + 1);
        }

        *(a1 + 416) = v59;
        std::__hash_table<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>>>::__erase_unique<gdc::Registry *>((a1 + 40), v58);
        v51 = (a2 + 40);
      }

      std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase(v51, v45);
LABEL_52:
      v52 = v37[1];
      if (v52)
      {
        do
        {
          v53 = v52;
          v52 = *v52;
        }

        while (v52);
      }

      else
      {
        do
        {
          v53 = v37[2];
          v74 = *v53 == v37;
          v37 = v53;
        }

        while (!v74);
      }

      v37 = v53;
    }

    while (v53 != (a1 + 312));
  }

  v60 = *(a1 + 888);
  if (v60 != *(a1 + 896))
  {
    v61 = *(a1 + 440);
    if (v61 < *(a1 + 448))
    {
      *v61 = *v60;
      v138 = (v61 + 1);
    }

    else
    {
      v138 = std::vector<gdc::Registry *>::__emplace_back_slow_path<gdc::Registry *&>(a1 + 432, v60);
    }

    *(a1 + 440) = v138;
    gdc::Context::setContext<md::components::NonTiled>();
  }

  v62 = *(a1 + 912);
  v63 = *(a1 + 920);
  if (v62 != v63)
  {
    v117 = *(a1 + 416);
    do
    {
      if (v117 >= *(a1 + 424))
      {
        v117 = std::vector<gdc::Registry *>::__emplace_back_slow_path<gdc::Registry *&>(a1 + 408, v62);
      }

      else
      {
        *v117++ = *v62;
      }

      *(a1 + 416) = v117;
      ++v62;
    }

    while (v62 != v63);
  }

  v64 = *(a1 + 352);
  v65 = *(a1 + 360);
  while (v64 != v65)
  {
    std::__hash_table<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>>>::__erase_unique<gdc::Registry *>((a1 + 40), *(v64 + 104));
    if (!*(v64 + 96))
    {
      v158 = *v64;
      if (std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::find<unsigned int>((a2 + 40), *v64))
      {
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__erase_unique<unsigned int>((a2 + 40), v158);
      }
    }

    v64 += 112;
  }

  if (*(a2 + 24))
  {
    v66 = GEOGetVectorKitRegistryManagerLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "layerDataSets.keys.active.empty()";
      *&__p[12] = 2080;
      *&__p[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/RegistryManager.mm";
      *&__p[22] = 1024;
      *v172 = 484;
      _os_log_impl(&dword_1B2754000, v66, OS_LOG_TYPE_ERROR, "Tracking a LayerData with no associated Registry: Assertion with expression - %s : Failed in file - %s line - %i", __p, 0x1Cu);
    }
  }

  if (*(a2 + 104))
  {
    v67 = GEOGetVectorKitRegistryManagerLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "layerDataSets.keys.entering.empty()";
      *&__p[12] = 2080;
      *&__p[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/RegistryManager.mm";
      *&__p[22] = 1024;
      *v172 = 486;
      _os_log_impl(&dword_1B2754000, v67, OS_LOG_TYPE_ERROR, "Tracking a LayerData with no associated Registry: Assertion with expression - %s : Failed in file - %s line - %i", __p, 0x1Cu);
    }
  }

  v68 = *(a1 + 480);
  v69 = *(a1 + 488);
  if (v68 != v69)
  {
    v70 = *(a1 + 464);
    while (1)
    {
      if (*(a1 + 456) != v70)
      {
        v71 = *(*v68 + 40);
        v72 = *(a1 + 456);
        while (1)
        {
          v73 = *v72;
          if (v73 == v71)
          {
            break;
          }

          ++v72;
          v74 = v71 < v73 || v72 == v70;
          if (v74)
          {
            goto LABEL_96;
          }
        }

        if (v72 != v70)
        {
          break;
        }
      }

LABEL_96:
      v68 += 8;
      if (v68 == v69)
      {
        goto LABEL_97;
      }
    }

    v118 = GEOGetVectorKitRegistryManagerLog();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "!std::any_of(begin(_registries.cached), end(_registries.cached), f)";
      *&__p[12] = 2080;
      *&__p[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/RegistryManager.mm";
      *&__p[22] = 1024;
      *v172 = 492;
      _os_log_impl(&dword_1B2754000, v118, OS_LOG_TYPE_ERROR, "Destroying registry should not be present in any cached set: Assertion with expression - %s : Failed in file - %s line - %i", __p, 0x1Cu);
    }
  }

LABEL_97:
  v75 = *(a1 + 432);
  v76 = *(a1 + 440);
  if (v75 != v76)
  {
    v77 = *(a1 + 464);
    while (1)
    {
      if (*(a1 + 456) != v77)
      {
        v78 = *(*v75 + 40);
        v79 = *(a1 + 456);
        while (1)
        {
          v80 = *v79;
          if (v80 == v78)
          {
            break;
          }

          ++v79;
          if (v78 < v80 || v79 == v77)
          {
            goto LABEL_109;
          }
        }

        if (v79 != v77)
        {
          break;
        }
      }

LABEL_109:
      v75 += 8;
      if (v75 == v76)
      {
        goto LABEL_110;
      }
    }

    v119 = GEOGetVectorKitRegistryManagerLog();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "!std::any_of(begin(_registries.entering), end(_registries.entering), f)";
      *&__p[12] = 2080;
      *&__p[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/RegistryManager.mm";
      *&__p[22] = 1024;
      *v172 = 493;
      _os_log_impl(&dword_1B2754000, v119, OS_LOG_TYPE_ERROR, "Destroying registry should not be present in any entering set: Assertion with expression - %s : Failed in file - %s line - %i", __p, 0x1Cu);
    }
  }

LABEL_110:
  v82 = *(a1 + 408);
  v83 = *(a1 + 416);
  if (v82 != v83)
  {
    v84 = *(a1 + 464);
    while (1)
    {
      if (*(a1 + 456) != v84)
      {
        v85 = *(*v82 + 40);
        v86 = *(a1 + 456);
        while (1)
        {
          v87 = *v86;
          if (v87 == v85)
          {
            break;
          }

          ++v86;
          if (v85 < v87 || v86 == v84)
          {
            goto LABEL_122;
          }
        }

        if (v86 != v84)
        {
          break;
        }
      }

LABEL_122:
      v82 += 8;
      if (v82 == v83)
      {
        goto LABEL_123;
      }
    }

    v120 = GEOGetVectorKitRegistryManagerLog();
    if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "!std::any_of(begin(_registries.exiting), end(_registries.exiting), f)";
      *&__p[12] = 2080;
      *&__p[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/RegistryManager.mm";
      *&__p[22] = 1024;
      *v172 = 494;
      _os_log_impl(&dword_1B2754000, v120, OS_LOG_TYPE_ERROR, "Destroying registry should not be present in any exiting set: Assertion with expression - %s : Failed in file - %s line - %i", __p, 0x1Cu);
    }
  }

LABEL_123:
  v89 = *(a1 + 384);
  v90 = *(a1 + 392);
  if (v89 != v90)
  {
    v91 = *(a1 + 464);
    v92 = *(a1 + 384);
    while (1)
    {
      if (*(a1 + 456) != v91)
      {
        v93 = *(*v92 + 40);
        v94 = *(a1 + 456);
        while (1)
        {
          v95 = *v94;
          if (v95 == v93)
          {
            break;
          }

          ++v94;
          if (v93 < v95 || v94 == v91)
          {
            goto LABEL_135;
          }
        }

        if (v94 != v91)
        {
          break;
        }
      }

LABEL_135:
      if (++v92 == v90)
      {
        goto LABEL_136;
      }
    }

    v121 = GEOGetVectorKitRegistryManagerLog();
    if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "!std::any_of(begin(_registries.active), end(_registries.active), f)";
      *&__p[12] = 2080;
      *&__p[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/RegistryManager.mm";
      *&__p[22] = 1024;
      *v172 = 495;
      _os_log_impl(&dword_1B2754000, v121, OS_LOG_TYPE_ERROR, "Destroying registry should not be present in any active set: Assertion with expression - %s : Failed in file - %s line - %i", __p, 0x1Cu);
    }

    v89 = *(a1 + 384);
    v90 = *(a1 + 392);
  }

LABEL_136:
  v97 = 126 - 2 * __clz(v90 - v89);
  if (v90 == v89)
  {
    v98 = 0;
  }

  else
  {
    v98 = v97;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,false>(v89, v90, v98, 1);
  v99 = *(a1 + 432);
  v100 = *(a1 + 440);
  v101 = 126 - 2 * __clz(v100 - v99);
  if (v100 == v99)
  {
    v102 = 0;
  }

  else
  {
    v102 = v101;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,false>(v99, v100, v102, 1);
  v103 = *(a1 + 408);
  v104 = *(a1 + 416);
  v105 = 126 - 2 * __clz(v104 - v103);
  if (v104 == v103)
  {
    v106 = 0;
  }

  else
  {
    v106 = v105;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,false>(v103, v104, v106, 1);
  v107 = *(a1 + 480);
  v108 = *(a1 + 488);
  v109 = 126 - 2 * __clz(v108 - v107);
  if (v108 == v107)
  {
    v110 = 0;
  }

  else
  {
    v110 = v109;
  }

  std::__introsort<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,false>(v107, v108, v110, 1);
  v111 = *(a1 + 328);
  v112 = *(a1 + 336);
  while (v111 != v112)
  {
    *__p = *v111;
    std::vector<md::FrameGraphPass *>::emplace_back<md::FrameGraphPass * const&>(a1 + 408, __p);
    v159 = *v111++;
    std::__hash_table<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,geo::linear_map<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>,std::equal_to<std::pair<unsigned long,unsigned int>>,std::allocator<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>,std::vector<std::pair<std::pair<unsigned long,unsigned int>,std::unique_ptr<gdc::EntityCollector>>>>>>>::__erase_unique<gdc::Registry *>((a1 + 40), v159);
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a2 + 176));
  v113 = *&buf[8];
  *(a2 + 168) = *buf;
  *(a2 + 176) = v113;
  v114 = *&buf[16];
  *(a2 + 184) = *&buf[16];
  if (v114)
  {
    v113[2] = v28;
    *buf = &buf[8];
    *&buf[8] = 0;
    *&buf[16] = 0;
    v113 = 0;
  }

  else
  {
    *(a2 + 168) = v28;
  }

  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v113);
}

void std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = v4 - 48;
        std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::shared_ptr<gdc::Resource>>>>::~__hash_table((v4 - 40));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RenderTargetToPrepare>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderTargetToPrepare>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RenderTargetToPrepare>();
    unk_1EB83CC60 = 0x90024251D45E5EE8;
    qword_1EB83CC68 = "md::ls::RenderTargetToPrepare]";
    qword_1EB83CC70 = 29;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderTargetToPrepare>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RenderTargetToPrepare>(void)::metadata >= 0x200)
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

void std::__function::__alloc_func<gdc::LayerDataSource::processLayerDataRequests(gdc::ResourceManager *,geo::TaskGroup *,long long)::$_0,std::allocator<gdc::LayerDataSource::processLayerDataRequests(gdc::ResourceManager *,geo::TaskGroup *,long long)::$_0>,void ()(void)>::destroy[abi:nn200100](uint64_t a1)
{
  v3 = (a1 + 128);
  std::vector<std::pair<unsigned short,std::unordered_map<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>>>>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 32);
  if (v2 != *(a1 + 48))
  {

    free(v2);
  }
}

void std::__function::__func<gdc::LayerDataSource::processLayerDataRequests(gdc::ResourceManager *,geo::TaskGroup *,long long)::$_0,std::allocator<gdc::LayerDataSource::processLayerDataRequests(gdc::ResourceManager *,geo::TaskGroup *,long long)::$_0>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<gdc::LayerDataSource::processLayerDataRequests(gdc::ResourceManager *,geo::TaskGroup *,long long)::$_0,std::allocator<gdc::LayerDataSource::processLayerDataRequests(gdc::ResourceManager *,geo::TaskGroup *,long long)::$_0>,void ()(void)>::destroy[abi:nn200100](a1 + 8);

  operator delete(a1);
}

void *md::MapEngineFrameService::prepareForEncode@<X0>(void *result@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = result[11];
  if (a2 >= ((result[12] - v5) >> 3) || ((v6 = *(v5 + 8 * a2)) != 0 ? (v7 = (v6 ^ a2) >> 32 == 0) : (v7 = 0), !v7 || (v9 = result, v10 = 8 * *(v5 + 8 * a2) + result[14], result[15] == v10)))
  {
    LOBYTE(v8) = 0;
LABEL_7:
    *a3 = 0;
    goto LABEL_18;
  }

  v11 = *v10;
  *(v11 + 120) = *(*v10 + 120) + 1;
  v8 = *(v11 + 56);
  if (!v8)
  {
    goto LABEL_7;
  }

  v12 = result[1];
  v13 = *v12;
  v14 = *(v12 + 8);
  if (v13 == v14)
  {
    goto LABEL_11;
  }

  while (*v13 != 0x6AA8CA9CFB198BBFLL)
  {
    v15 = 0;
    v13 += 5;
    if (v13 == v14)
    {
      goto LABEL_12;
    }
  }

  if (v13 == v14)
  {
LABEL_11:
    v15 = 0;
  }

  else
  {
    v15 = v13[3];
    v18 = v13[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }
  }

LABEL_12:
  *(v11 + 64) = (*(*v15 + 16))(v15);
  result = (*(*v15 + 24))(v15, *(v11 + 16));
  if (*v11 == 1)
  {
    v16 = *(v11 + 56);
    v17 = *(v16 + 184);
    if (!v17)
    {
      v17 = *(v16 + 88);
    }

    ggl::RenderQueue::addTextureToSynchronize(*(v11 + 64), v17);
    result = gdc::ServiceLocator::resolve<md::YFlipPassInjector>(**(v9 + 8), *(*(v9 + 8) + 8));
    if (result)
    {
      result = (*(*result + 16))(result, *(v11 + 64), *(v11 + 56));
    }
  }

  else
  {
    if (*(v11 + 72))
    {
      operator new();
    }

    if (*(v11 + 40) && (*(v11 + 24) & 1) == 0)
    {
      result = md::MapEngineFrameService::makeDrawableReady(v9, a2);
    }
  }

  *a3 = *(v11 + 56);
  LOBYTE(v8) = 1;
LABEL_18:
  a3[16] = v8;
  return result;
}

os_log_t __GEOGetVectorKitPerformanceDetailsLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit", "PerformanceDetails");
  GEOGetVectorKitPerformanceDetailsLog_log = result;
  return result;
}

void __destroy_helper_block_8_40c37_ZTSNSt3__110shared_ptrIN3geo4TaskEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void md::MapEngineCompatabilityServiceImpl::produceRenderQueue(md::MapEngineCompatabilityServiceImpl *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(this + 1);
  v2 = *(v1 + 41952);
  v3 = *(v1 + 41960);
  if (*(&v2 + 1))
  {
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(v1 + 42096);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(v1 + 42256);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *(v1 + 42024);
  if (v6)
  {
    v7 = *(v6 + 48);
  }

  else
  {
    v7 = -1;
  }

  v8 = *(v1 + 42232);
  *(v8 + 4) = v7;
  *(v8 + 8) = *(v1 + 42032);
  v9 = *(v1 + 42240);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v10 = GEOGetVectorKitPerformanceLog_log;
  v11 = v10;
  v12 = *(v1 + 42080);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "RenderLayout", &unk_1B3514CAA, buf, 2u);
  }

  md::PassList::rootRenderQueue(*(*(v1 + 41680) + 24));
  md::LayoutContext::frameState(*(v1 + 41896));
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1B29D5954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  _Unwind_Resume(a1);
}

void ___ZN3geo9TaskQueue14queueAsyncTaskENSt3__110shared_ptrINS_4TaskEEEP16dispatch_group_s_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && (*(a1 + 64) & 1) == 0)
  {
    dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  }

  v3 = atomic_load((*(a1 + 40) + 32));
  if ((v3 & 1) == 0)
  {
    v4 = *(*(a1 + 40) + 24);
    if (!v4)
    {
      v7 = std::__throw_bad_function_call[abi:nn200100]();
      std::__tree<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>::destroy(v7);
      return;
    }

    (*(*v4 + 48))(v4);
    atomic_store(1u, (*(a1 + 40) + 33));
  }

  v5 = *(a1 + 56);
  if (v5 && *(a1 + 64) == 1)
  {
    dispatch_group_leave(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    dispatch_semaphore_signal(v6);
  }
}

void std::__tree<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>::destroy(*a1);
    std::__tree<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>::destroy(a1[1]);
    v2 = *(a1 + 32);
    if (v2 != -1)
    {
      (off_1F2A026C0[v2])(&v3, a1 + 4);
    }

    operator delete(a1);
  }
}

void std::__function::__func<gdc::LayerDataSource::processLayerDataRequests(gdc::ResourceManager *,geo::TaskGroup *,long long)::$_0,std::allocator<gdc::LayerDataSource::processLayerDataRequests(gdc::ResourceManager *,geo::TaskGroup *,long long)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
  }

  v3 = *(a1 + 8);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
    if (os_signpost_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "LayerDataDecodeDispatched", &unk_1B3514CAA, buf, 2u);
    }
  }

  gdc::LayerDataSource::updateLayerData(v2, *(a1 + 168), (a1 + 24), (a1 + 136), *(a1 + 160), *(a1 + 176));
  if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
  }

  v5 = *(a1 + 8);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
    if (os_signpost_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v6, OS_SIGNPOST_INTERVAL_END, v5, "LayerDataDecodeDispatched", &unk_1B3514CAA, v10, 2u);
      if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
      }
    }
  }

  v7 = *(a1 + 8);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
    if (os_signpost_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B2754000, v8, OS_SIGNPOST_INTERVAL_END, v7, "LayerDataDecode", &unk_1B3514CAA, v9, 2u);
    }
  }
}

void std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::destroy(a1[1]);
    std::__destroy_at[abi:nn200100]<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void sub_1B29D6134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v20);
  operator delete(v22);
  std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::find<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<[abi:nn200100]<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || std::operator<[abi:nn200100]<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

void std::__function::__func<md::PassList::rootRenderQueue(void)::$_0,std::allocator<md::PassList::rootRenderQueue(void)::$_0>,void ()(md::FrameGraphPass const&,md::RenderQueueBase &,ggl::RenderTarget *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, ggl::RenderTarget **a4)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    v5 = *(a2 + 48);
    if (v5 == (*a4 == 0))
    {
      ggl::RenderQueue::attachPass(*(*(a1 + 8) + 16), *a4, v4, v5 == 1);
    }
  }
}

void md::ResourceInfo::setResourceNames(std::allocator<std::string> *this, NSArray *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v3 = [(NSArray *)v21 count];
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - *this) >> 3) < v3)
  {
    if (v3 <= 0xAAAAAAAAAAAAAAALL)
    {
      v26.__end_cap_.__value_ = this;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v3);
    }

LABEL_26:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v21;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v22 + 1) + 8 * i) UTF8String];
        v9 = v8;
        if (v8 && *v8)
        {
          v11 = *(this + 1);
          v10 = *(this + 2);
          if (v11 >= v10)
          {
            v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *this) >> 3);
            v14 = v13 + 1;
            if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_26;
            }

            v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *this) >> 3);
            if (2 * v15 > v14)
            {
              v14 = 2 * v15;
            }

            if (v15 >= 0x555555555555555)
            {
              v16 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v16 = v14;
            }

            v26.__end_cap_.__value_ = this;
            if (v16)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v16);
            }

            v26.__first_ = 0;
            v26.__begin_ = (24 * v13);
            v26.__end_ = (24 * v13);
            v26.__end_cap_.__value_ = 0;
            std::allocator_traits<std::allocator<std::string>>::construct[abi:nn200100]<std::string,char const*&,void,0>((24 * v13), v9);
            v12 = v26.__end_ + 1;
            v17 = *(this + 1) - *this;
            v18 = v26.__begin_ - v17;
            memcpy(v26.__begin_ - v17, *this, v17);
            v19 = *this;
            *this = v18;
            *(this + 1) = v12;
            v20 = *(this + 2);
            *(this + 2) = v26.__end_cap_.__value_;
            v26.__end_ = v19;
            v26.__end_cap_.__value_ = v20;
            v26.__first_ = v19;
            v26.__begin_ = v19;
            std::__split_buffer<std::string>::~__split_buffer(&v26);
          }

          else
          {
            std::allocator_traits<std::allocator<std::string>>::construct[abi:nn200100]<std::string,char const*&,void,0>(*(this + 1), v8);
            v12 = v11 + 1;
            *(this + 1) = v12;
          }

          *(this + 1) = v12;
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }
}

void std::vector<md::FrameGraphPass *>::emplace_back<md::FrameGraphPass * const&>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t std::function<void ()(md::FrameGraphPass const&,md::RenderQueueBase &,ggl::RenderTarget *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  if (a1)
  {
    return (*(*a1 + 48))(a1, a2, a3, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::__emplace_unique_key_args<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> const,std::unique_ptr<gdc::Registry>>>(v5);
}

void *std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::__emplace_unique_key_args<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey> const,std::unique_ptr<gdc::Registry>>>(uint64_t a1, uint64_t a2)
{
  result = std::__tree<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::__map_value_compare<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,std::less<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>,true>,std::allocator<std::__value_type<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>>>::__find_equal<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>>(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void ggl::RenderQueue::attachPass(ggl::RenderQueue *this, ggl::RenderTarget *a2, ggl::RenderQueue *a3, char a4)
{
  v9 = *(this + 17);
  v8 = *(this + 18);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a3 + 18);
  *(a3 + 17) = v9;
  *(a3 + 18) = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v12 = *(this + 10);
  v11 = *(this + 11);
  if (v12 >= v11)
  {
    v14 = *(this + 9);
    v15 = v12 - v14;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v14) >> 3);
    v17 = v16 + 1;
    if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v14) >> 3);
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x555555555555555)
    {
      v19 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v17;
    }

    v27[4] = this + 96;
    if (v19)
    {
      v20 = ggl::zone_mallocator::instance(v10);
      v21 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::RenderQueue::Pass>(v20, v19);
      v14 = *(this + 9);
      v15 = *(this + 10) - v14;
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[24 * v16];
    v23 = &v21[24 * v19];
    *v22 = a2;
    *(v22 + 1) = a3;
    v22[16] = a4;
    v13 = v22 + 24;
    v24 = &v22[-v15];
    memcpy(&v22[-v15], v14, v15);
    v25 = *(this + 9);
    *(this + 9) = v24;
    *(this + 10) = v13;
    v26 = *(this + 11);
    *(this + 11) = v23;
    v27[2] = v25;
    v27[3] = v26;
    v27[0] = v25;
    v27[1] = v25;
    std::__split_buffer<ggl::RenderQueue::Pass,geo::allocator_adapter<ggl::RenderQueue::Pass,ggl::zone_mallocator> &>::~__split_buffer(v27);
  }

  else
  {
    *v12 = a2;
    *(v12 + 8) = a3;
    v13 = (v12 + 24);
    *(v12 + 16) = a4;
  }

  *(this + 10) = v13;
}

gdc::Registry *std::__destroy_at[abi:nn200100]<std::pair<std::variant<gdc::LayerDataKeyIdPair,md::NonTiledRegistryKey>,std::unique_ptr<gdc::Registry>>,0>(uint64_t a1)
{
  result = std::unique_ptr<gdc::Registry>::reset[abi:nn200100]((a1 + 104), 0);
  v3 = *(a1 + 96);
  if (v3 != -1)
  {
    result = (off_1F2A026C0[v3])(&v4, a1);
  }

  *(a1 + 96) = -1;
  return result;
}

uint64_t *md::SceneContext::layerDataInView(md::SceneContext *this, int a2)
{
  v2 = *this;
  {
    v9 = a2;
    v8 = v2;
    v2 = v8;
    a2 = v9;
    if (v7)
    {
      qword_1ED65AC10 = 0;
      qword_1ED65AC08 = 0;
      md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet = &qword_1ED65AC08;
      v2 = v8;
      a2 = v9;
    }
  }

  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  if (v3 == v4)
  {
    return &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
  }

  result = &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
  v6 = v3;
  while (*v6 != a2)
  {
    v6 += 16;
    if (v6 == v4)
    {
      return result;
    }
  }

  if (v6 == v4)
  {
    return &md::SceneStateManager::layerDataInView(unsigned short)const::kEmptySet;
  }

  while (*v3 != a2)
  {
    v3 += 16;
    if (v3 == v4)
    {
      v3 = v4;
      return (v3 + 4);
    }
  }

  return (v3 + 4);
}

void gdc::LayerDataSource::getResourceFromMap<md::GEOVectorTileResource>(void *a1, int a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  gdc::LayerDataSource::getResourceFromMap(v6, a2, a3, a4);
  v5 = v6[1];
  *a1 = v6[0];
  a1[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);

    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

__n128 std::__set_difference[abi:nn200100]<std::__less<void,void>,std::__tree_const_iterator<md::LayerDataIdentWithWorld,std::__tree_node<md::LayerDataIdentWithWorld,void *> *,long> &,std::__tree_const_iterator<md::LayerDataIdentWithWorld,std::__tree_node<md::LayerDataIdentWithWorld,void *> *,long> &,std::__tree_const_iterator<md::LayerDataIdentWithWorld,std::__tree_node<md::LayerDataIdentWithWorld,void *> *,long> &,std::__tree_const_iterator<md::LayerDataIdentWithWorld,std::__tree_node<md::LayerDataIdentWithWorld,void *> *,long> &,std::insert_iterator<std::set<md::LayerDataIdentWithWorld>> &>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_43:
    v35 = *a6;
    goto LABEL_44;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    v15 = *(v8 + 7);
    v16 = *(v8 + 32);
    v17 = v16;
    v18 = *(i + 32);
    v19 = *(i + 7);
    if (v16 == v18 ? v15 < v19 : v16 < v18)
    {
      std::insert_iterator<std::set<md::LayerDataIdentWithWorld>>::operator=[abi:nn200100](a6, v8 + 28);
      v21 = *a2;
      v22 = *(*a2 + 8);
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v21[2];
          v24 = *v23 == v21;
          v21 = v23;
        }

        while (!v24);
      }

      *a2 = v23;
    }

    else
    {
      v25 = v19 < v15;
      if (v17 != v18)
      {
        v25 = v18 < v17;
      }

      if (v25)
      {
        v26 = i[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = i[2];
            v24 = *v27 == i;
            i = v27;
          }

          while (!v24);
        }
      }

      else
      {
        v28 = v8[1];
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v8[2];
            v24 = *v29 == v8;
            v8 = v29;
          }

          while (!v24);
        }

        *a2 = v29;
        v30 = *a4;
        v31 = *(*a4 + 8);
        if (v31)
        {
          do
          {
            v27 = v31;
            v31 = *v31;
          }

          while (v31);
        }

        else
        {
          do
          {
            v27 = v30[2];
            v24 = *v27 == v30;
            v30 = v27;
          }

          while (!v24);
        }
      }

      *a4 = v27;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_43;
    }
  }

  v35 = *a6;
  if (v8 != v9)
  {
    do
    {
      std::insert_iterator<std::set<md::LayerDataIdentWithWorld>>::operator=[abi:nn200100](&v35, v8 + 28);
      v32 = v8[1];
      if (v32)
      {
        do
        {
          v33 = v32;
          v32 = *v32;
        }

        while (v32);
      }

      else
      {
        do
        {
          v33 = v8[2];
          v24 = *v33 == v8;
          v8 = v33;
        }

        while (!v24);
      }

      v8 = v33;
    }

    while (v33 != v9);
    v8 = v9;
  }

LABEL_44:
  result = v35;
  *a1 = v8;
  *(a1 + 8) = result;
  return result;
}

void *gdc::LayerDataSource::getResourceFromMap(void *result, int a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  while (1)
  {
    if (a3 == a4)
    {
      goto LABEL_9;
    }

    if (*a3 == a2)
    {
      break;
    }

    a3 += 24;
  }

  if (a3 == a4 || *(a3 + 4) != 1)
  {
LABEL_9:
    *result = 0;
    result[1] = 0;
    return result;
  }

  v4 = *(a3 + 3);
  v6 = *(v4 + 112);
  v5 = *(v4 + 120);
  *result = v6;
  result[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::vector<gdc::Registry *>::__emplace_back_slow_path<gdc::Registry *&>(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 2 > v3)
  {
    v3 = v5 >> 2;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v6);
  }

  *(8 * v2) = *a2;
  v7 = 8 * v2 + 8;
  v8 = *(a1 + 8) - *a1;
  v9 = (8 * v2 - v8);
  memcpy(v9, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void gdc::LayerDataSource::populateLoadMetadataListFromMap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      v5 = *(v4 + 24);
      if (v5)
      {
        v6 = *(a3 + 8);
        do
        {
          v7 = v5[14];
          v18 = *(v7 + 120);
          v19 = *(v7 + 136);
          v8 = *(a3 + 16);
          if (v6 >= v8)
          {
            v10 = *a3;
            v11 = v6 - *a3;
            v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3) + 1;
            if (v12 > 0xAAAAAAAAAAAAAAALL)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v13 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 3);
            if (2 * v13 > v12)
            {
              v12 = 2 * v13;
            }

            if (v13 >= 0x555555555555555)
            {
              v14 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v14 = v12;
            }

            if (v14)
            {
              if (v14 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            v15 = 8 * (v11 >> 3);
            *v15 = v18;
            *(v15 + 16) = v19;
            v6 = v15 + 24;
            v16 = v15 - v11;
            memcpy((v15 - v11), v10, v11);
            *a3 = v16;
            *(a3 + 8) = v6;
            *(a3 + 16) = 0;
            if (v10)
            {
              operator delete(v10);
            }
          }

          else
          {
            v9 = *(v7 + 120);
            *(v6 + 16) = *(v7 + 136);
            *v6 = v9;
            v6 += 24;
          }

          *(a3 + 8) = v6;
          v5 = *v5;
        }

        while (v5);
      }

      v4 += 48;
    }

    while (v4 != a2);
  }
}

uint64_t md::LabelLayerDataSource::toLabelTileType(int a1)
{
  if (a1 > 24)
  {
    if (a1 == 80)
    {
      v9 = 15;
    }

    else
    {
      v9 = 0;
    }

    if (a1 == 74)
    {
      v2 = 17;
    }

    else
    {
      v2 = v9;
    }

    if (a1 == 73)
    {
      v10 = 14;
    }

    else
    {
      v10 = 0;
    }

    if (a1 == 69)
    {
      v11 = 16;
    }

    else
    {
      v11 = v10;
    }

    if (a1 <= 73)
    {
      v2 = v11;
    }

    if (a1 == 66)
    {
      v12 = 13;
    }

    else
    {
      v12 = 0;
    }

    if (a1 == 26)
    {
      v13 = 6;
    }

    else
    {
      v13 = v12;
    }

    if (a1 == 25)
    {
      v7 = 5;
    }

    else
    {
      v7 = v13;
    }

    v8 = a1 <= 68;
  }

  else
  {
    if (a1 == 24)
    {
      v1 = 12;
    }

    else
    {
      v1 = 0;
    }

    if (a1 == 23)
    {
      v2 = 11;
    }

    else
    {
      v2 = v1;
    }

    if (a1 == 22)
    {
      v3 = 10;
    }

    else
    {
      v3 = 0;
    }

    if (a1 == 21)
    {
      v4 = 9;
    }

    else
    {
      v4 = v3;
    }

    if (a1 <= 22)
    {
      v2 = v4;
    }

    if (a1 == 20)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    if (a1 == 19)
    {
      v6 = 3;
    }

    else
    {
      v6 = v5;
    }

    if (a1 == 13)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v8 = a1 <= 20;
  }

  if (v8)
  {
    return v7;
  }

  else
  {
    return v2;
  }
}

ggl::zone_mallocator *std::__split_buffer<ggl::RenderQueue::Pass,geo::allocator_adapter<ggl::RenderQueue::Pass,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v2 = *(a1 + 2);
  if (v2 != *(a1 + 1))
  {
    *(a1 + 2) = (v2 - *(a1 + 1) - 24) % 0x18uLL + *(a1 + 1);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::ShaderLibrary::ComputeShaderEntry>(v4, v3);
  }

  return a1;
}

uint64_t *std::__introsort<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,false>(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 1;
    v9 = v7;
LABEL_3:
    v10 = a3 - 1;
    while (1)
    {
      v7 = v9;
      a3 = v10;
      v11 = a2 - v9;
      if (v11 > 2)
      {
        switch(v11)
        {
          case 3uLL:

            return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,0>(v9, v9 + 1, a2 - 1);
          case 4uLL:

            return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,0>(v9, v9 + 1, v9 + 2, a2 - 1);
          case 5uLL:

            return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1);
        }
      }

      else
      {
        if (v11 < 2)
        {
          return result;
        }

        if (v11 == 2)
        {
          v21 = *v9;
          if (*(*v8 + 40) < *(*v9 + 40))
          {
            *v9 = *v8;
            *v8 = v21;
          }

          return result;
        }
      }

      if (v11 <= 23)
      {
        if (a4)
        {
          if (v9 != a2)
          {
            v12 = v9 + 1;
            if (v9 + 1 != a2)
            {
              v13 = 8;
              v14 = v9;
              do
              {
                v16 = *v14;
                v15 = v14[1];
                v14 = v12;
                v17 = *(v15 + 40);
                if (v17 < *(v16 + 40))
                {
                  v18 = v13;
                  while (1)
                  {
                    *(v9 + v18) = v16;
                    v19 = v18 - 8;
                    if (v18 == 8)
                    {
                      break;
                    }

                    v16 = *(v9 + v18 - 16);
                    v18 -= 8;
                    if (v17 >= *(v16 + 40))
                    {
                      v20 = (v9 + v19);
                      goto LABEL_22;
                    }
                  }

                  v20 = v9;
LABEL_22:
                  *v20 = v15;
                }

                v12 = v14 + 1;
                v13 += 8;
              }

              while (v14 + 1 != a2);
            }
          }
        }

        else
        {

          return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **>(v9, a2);
        }

        return result;
      }

      if (a3 == -1)
      {

        return std::__partial_sort[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,gdc::Registry **>(v9, a2, a2);
      }

      v22 = v11 >> 1;
      v23 = &v9[v11 >> 1];
      if (v11 < 0x81)
      {
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,0>(&v9[v11 >> 1], v9, a2 - 1);
      }

      else
      {
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,0>(v9, &v9[v11 >> 1], a2 - 1);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,0>(v9 + 1, v23 - 1, a2 - 2);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,0>(v9 + 2, &v9[v22 + 1], a2 - 3);
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,0>(v23 - 1, v23, &v9[v22 + 1]);
        v24 = *v9;
        *v9 = *v23;
        *v23 = v24;
      }

      if ((a4 & 1) == 0 && *(*(v9 - 1) + 40) >= *(*v9 + 40))
      {
        result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,gdc::Registry **,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &>(v9, a2);
        v9 = result;
        a4 = 0;
        goto LABEL_3;
      }

      v25 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,gdc::Registry **,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &>(v9, a2);
      if ((v26 & 1) == 0)
      {
        goto LABEL_44;
      }

      v27 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **>(v9, v25);
      v9 = v25 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **>(v25 + 1, a2);
      if (result)
      {
        break;
      }

      v10 = a3 - 1;
      if (!v27)
      {
LABEL_44:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RegistryManager::update(md::RegistryManager::LayerDataSets &,md::SceneContext const&,unsigned long long,BOOL)::$_0 &,gdc::Registry **,false>(v7, v25, a3, a4 & 1);
        a4 = 0;
        v9 = v25 + 1;
        goto LABEL_3;
      }
    }

    a2 = v25;
    if (!v27)
    {
      continue;
    }

    return result;
  }
}

void sub_1B29D785C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a23);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a14);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a9);
  MEMORY[0x1B8C62190](v37, v38);
  _Unwind_Resume(a1);
}

double md::Logic<md::OverlaysLogic,md::OverlaysContext,md::LogicDependencies<gdc::TypeList<md::PendingSceneContext,md::ElevationContext,md::CameraContext,md::PendingRegistryContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1065353216;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = 257;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 200) = 0;
  return result;
}

void *md::LogicDependencies<gdc::TypeList<md::PendingSceneContext,md::ElevationContext,md::CameraContext,md::PendingRegistryContext>,gdc::TypeList<>>::resolveDependencies(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x9F2276D081C2CB20);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x9F2276D081C2CB20))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x8BD499FBD96FBB9ELL);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0x8BD499FBD96FBB9ELL))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v10 && (v11 = v10[5], *(v11 + 8) == 0x1AF456233693CD46))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xA8300AA8F44B09FFLL);
  v14 = *(result[5] + 32);
  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  a1[3] = v14;
  return result;
}

void md::LabelFeaturePool::prepareAddFeaturesForTile(uint64_t a1, unint64_t **a2)
{
  v93 = *MEMORY[0x1E69E9840];
  md::LabelFeaturePool::flushRemovedTiles(a1);
  v5 = **a2;
  if (!v5)
  {
    v5 = (*a2)[2];
  }

  std::mutex::lock(a1);
  LOBYTE(v89) = 0;
  v90 = 0u;
  v87 = 0u;
  v84 = 0;
  v86 = 0;
  v81 = 0u;
  LOBYTE(v80) = 0;
  v77 = 0;
  v78 = 0u;
  v75 = 0;
  LOBYTE(v71) = 0;
  v72 = 0u;
  v69 = 0u;
  v66 = 0;
  v68 = 0;
  memset(v63, 0, sizeof(v63));
  v64 = 0x3F800000uLL;
  v65 = 0;
  memset(v67, 0, sizeof(v67));
  DWORD2(v69) = 1065353216;
  v70 = 0uLL;
  memset(&v71 + 1, 0, 15);
  v73 = 0x3F800000uLL;
  v74 = 0;
  memset(v76, 0, sizeof(v76));
  DWORD2(v78) = 1065353216;
  v79 = 0uLL;
  memset(&v80 + 1, 0, 15);
  v82 = 0x3F800000uLL;
  v83 = 0;
  memset(v85, 0, sizeof(v85));
  DWORD2(v87) = 1065353216;
  memset(&v89 + 1, 0, 15);
  *v91 = 0x3F800000uLL;
  v88 = 0uLL;
  v7 = 0x9DDFEA08EB382D69 * ((8 * (v5 & 0x1FFFFFFF) + 8) ^ HIDWORD(v5));
  *&v91[16] = 0;
  v92 = 1;
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v7 >> 47) ^ v7)) >> 47));
  v9 = *(a1 + 464);
  if (!v9)
  {
    goto LABEL_20;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v2 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v5) ^ (v7 >> 47) ^ v7)) >> 47));
    if (v8 >= v9)
    {
      v2 = v8 % v9;
    }
  }

  else
  {
    v2 = v8 & (v9 - 1);
  }

  v11 = *(*(a1 + 456) + 8 * v2);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_20:
    v14 = mdm::zone_mallocator::instance(v6);
    v15 = pthread_rwlock_rdlock((v14 + 32));
    if (v15)
    {
      geo::read_write_lock::logFailure(v15, "read lock", v16);
    }

    v17 = malloc_type_zone_malloc(*v14, 0x1B8uLL, 0x10E0040F3A411ABuLL);
    atomic_fetch_add((v14 + 24), 1u);
    geo::read_write_lock::unlock((v14 + 32));
    *v17 = 0;
    *(v17 + 1) = v8;
    *(v17 + 2) = v5;
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__hash_table((v17 + 24), v63);
    prime = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__hash_table((v17 + 80), &v64 + 1);
    v19 = v70;
    v70 = 0uLL;
    v20 = *(&v71 + 1);
    *(v17 + 20) = *(&v71 + 1);
    *(v17 + 136) = v19;
    v17[152] = v71;
    *(v17 + 153) = 0;
    *(v17 + 39) = 0;
    v17[168] = v72;
    v21 = *(&v72 + 1);
    *(v17 + 22) = *(&v72 + 1);
    *(v17 + 46) = v73;
    if (v21)
    {
      v22 = *(v20 + 8);
      if ((*(&v19 + 1) & (*(&v19 + 1) - 1)) != 0)
      {
        if (v22 >= *(&v19 + 1))
        {
          v22 %= *(&v19 + 1);
        }
      }

      else
      {
        v22 &= *(&v19 + 1) - 1;
      }

      *(v19 + 8 * v22) = v17 + 160;
      *(&v71 + 1) = 0;
      *(&v72 + 1) = 0;
    }

    v23 = *(&v73 + 1);
    v24 = v74;
    *(&v73 + 1) = 0;
    v74 = 0;
    v25 = *&v76[7];
    *(v17 + 27) = *&v76[7];
    *(v17 + 24) = v23;
    *(v17 + 25) = v24;
    v17[208] = v75;
    *(v17 + 209) = 0;
    *(v17 + 53) = 0;
    v17[224] = v77;
    v26 = v78;
    *(v17 + 29) = v78;
    *(v17 + 60) = DWORD2(v78);
    if (v26)
    {
      v27 = *(v25 + 8);
      if ((v24 & (v24 - 1)) != 0)
      {
        if (v27 >= v24)
        {
          v27 %= v24;
        }
      }

      else
      {
        v27 &= v24 - 1;
      }

      *(v23 + 8 * v27) = v17 + 216;
      *&v76[7] = 0;
      *&v78 = 0;
    }

    v28 = v79;
    v79 = 0uLL;
    *(v17 + 248) = v28;
    v17[264] = v80;
    *(v17 + 67) = 0;
    *(v17 + 265) = 0;
    v29 = *(&v80 + 1);
    *(v17 + 34) = *(&v80 + 1);
    v17[280] = v81;
    v30 = *(&v81 + 1);
    *(v17 + 36) = *(&v81 + 1);
    *(v17 + 74) = v82;
    if (v30)
    {
      v31 = *(v29 + 8);
      if ((*(&v28 + 1) & (*(&v28 + 1) - 1)) != 0)
      {
        if (v31 >= *(&v28 + 1))
        {
          v31 %= *(&v28 + 1);
        }
      }

      else
      {
        v31 &= *(&v28 + 1) - 1;
      }

      *(v28 + 8 * v31) = v17 + 272;
      *(&v80 + 1) = 0;
      *(&v81 + 1) = 0;
    }

    v32 = *(&v82 + 1);
    v33 = v83;
    *(&v82 + 1) = 0;
    v83 = 0;
    *(v17 + 38) = v32;
    *(v17 + 39) = v33;
    v17[320] = v84;
    *(v17 + 81) = 0;
    *(v17 + 321) = 0;
    v34 = *&v85[7];
    *(v17 + 41) = *&v85[7];
    v17[336] = v86;
    v35 = v87;
    *(v17 + 43) = v87;
    *(v17 + 88) = DWORD2(v87);
    if (v35)
    {
      v36 = *(v34 + 8);
      if ((v33 & (v33 - 1)) != 0)
      {
        if (v36 >= v33)
        {
          v36 %= v33;
        }
      }

      else
      {
        v36 &= v33 - 1;
      }

      *(v32 + 8 * v36) = v17 + 328;
      *&v85[7] = 0;
      *&v87 = 0;
    }

    v37 = v88;
    v88 = 0uLL;
    *(v17 + 360) = v37;
    v17[376] = v89;
    *(v17 + 95) = 0;
    *(v17 + 377) = 0;
    v38 = *(&v89 + 1);
    *(v17 + 48) = *(&v89 + 1);
    v17[392] = v90;
    v39 = *(&v90 + 1);
    *(v17 + 50) = *(&v90 + 1);
    *(v17 + 102) = *v91;
    if (v39)
    {
      v40 = *(v38 + 8);
      if ((*(&v37 + 1) & (*(&v37 + 1) - 1)) != 0)
      {
        if (v40 >= *(&v37 + 1))
        {
          v40 %= *(&v37 + 1);
        }
      }

      else
      {
        v40 &= *(&v37 + 1) - 1;
      }

      *(v37 + 8 * v40) = v17 + 384;
      *(&v89 + 1) = 0;
      *(&v90 + 1) = 0;
    }

    *(v17 + 26) = *&v91[8];
    *&v91[8] = 0;
    *&v91[16] = 0;
    *(v17 + 108) = v92;
    v17[436] = BYTE4(v92);
    v41 = (*(a1 + 496) + 1);
    v42 = *(a1 + 504);
    if (v9 && (v42 * v9) >= v41)
    {
LABEL_98:
      v60 = *(a1 + 456);
      v61 = *(v60 + 8 * v2);
      if (v61)
      {
        *v17 = *v61;
      }

      else
      {
        *v17 = *(a1 + 480);
        *(a1 + 480) = v17;
        *(v60 + 8 * v2) = a1 + 480;
        if (!*v17)
        {
LABEL_107:
          ++*(a1 + 496);
          md::LabelFeaturePoolTileInfo::~LabelFeaturePoolTileInfo(v63);
          goto LABEL_108;
        }

        v62 = *(*v17 + 8);
        if ((v9 & (v9 - 1)) != 0)
        {
          if (v62 >= v9)
          {
            v62 %= v9;
          }
        }

        else
        {
          v62 &= v9 - 1;
        }

        v61 = (*(a1 + 456) + 8 * v62);
      }

      *v61 = v17;
      goto LABEL_107;
    }

    v43 = v9 < 3 || (v9 & (v9 - 1)) != 0;
    v44 = v43 | (2 * v9);
    v45 = vcvtps_u32_f32(v41 / v42);
    if (v44 <= v45)
    {
      v46 = v45;
    }

    else
    {
      v46 = v44;
    }

    if (v46 == 1)
    {
      v46 = 2;
    }

    else if ((v46 & (v46 - 1)) != 0)
    {
      prime = std::__next_prime(v46);
      v46 = prime;
    }

    v9 = *(a1 + 464);
    if (v46 > v9)
    {
      goto LABEL_65;
    }

    if (v46 < v9)
    {
      prime = vcvtps_u32_f32(*(a1 + 496) / *(a1 + 504));
      if (v9 < 3 || (v55 = vcnt_s8(v9), v55.i16[0] = vaddlv_u8(v55), v55.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v56 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v56;
        }
      }

      if (v46 <= prime)
      {
        v46 = prime;
      }

      if (v46 >= v9)
      {
        v9 = *(a1 + 464);
      }

      else
      {
        if (v46)
        {
LABEL_65:
          v47 = mdm::zone_mallocator::instance(prime);
          v48 = pthread_rwlock_rdlock((v47 + 32));
          if (v48)
          {
            geo::read_write_lock::logFailure(v48, "read lock", v49);
          }

          v50 = malloc_type_zone_malloc(*v47, 8 * v46, 0x2004093837F09uLL);
          atomic_fetch_add((v47 + 24), 1u);
          geo::read_write_lock::unlock((v47 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *> *> **,0>((a1 + 456), v50);
          v51 = 0;
          *(a1 + 464) = v46;
          do
          {
            *(*(a1 + 456) + 8 * v51++) = 0;
          }

          while (v46 != v51);
          v52 = *(a1 + 480);
          if (v52)
          {
            v53 = v52[1];
            v54 = vcnt_s8(v46);
            v54.i16[0] = vaddlv_u8(v54);
            if (v54.u32[0] > 1uLL)
            {
              if (v53 >= v46)
              {
                v53 %= v46;
              }
            }

            else
            {
              v53 &= v46 - 1;
            }

            *(*(a1 + 456) + 8 * v53) = a1 + 480;
            v57 = *v52;
            if (*v52)
            {
              do
              {
                v58 = v57[1];
                if (v54.u32[0] > 1uLL)
                {
                  if (v58 >= v46)
                  {
                    v58 %= v46;
                  }
                }

                else
                {
                  v58 &= v46 - 1;
                }

                if (v58 != v53)
                {
                  v59 = *(a1 + 456);
                  if (!*(v59 + 8 * v58))
                  {
                    *(v59 + 8 * v58) = v52;
                    goto LABEL_89;
                  }

                  *v52 = *v57;
                  *v57 = **(v59 + 8 * v58);
                  **(v59 + 8 * v58) = v57;
                  v57 = v52;
                }

                v58 = v53;
LABEL_89:
                v52 = v57;
                v57 = *v57;
                v53 = v58;
              }

              while (v57);
            }
          }

          v9 = v46;
          goto LABEL_93;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *> *> **,0>((a1 + 456), 0);
        v9 = 0;
        *(a1 + 464) = 0;
      }
    }

LABEL_93:
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v2 = v8 % v9;
      }

      else
      {
        v2 = v8;
      }
    }

    else
    {
      v2 = (v9 - 1) & v8;
    }

    goto LABEL_98;
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v8)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
    {
      if (v13 >= v9)
      {
        v13 %= v9;
      }
    }

    else
    {
      v13 &= v9 - 1;
    }

    if (v13 != v2)
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

  if (v12[2] != v5)
  {
    goto LABEL_19;
  }

  md::LabelFeaturePoolTileInfo::~LabelFeaturePoolTileInfo(v63);
  ++*(v12 + 108);
LABEL_108:
  std::mutex::unlock(a1);
}

void sub_1B29D8270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  geo::read_write_lock::unlock((v11 + 32));
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v10);
  md::LabelFeaturePoolTileInfo::~LabelFeaturePoolTileInfo(&a9);
  std::mutex::unlock(v9);
  _Unwind_Resume(a1);
}

uint64_t md::Logic<md::OverlaysLogic,md::OverlaysContext,md::LogicDependencies<gdc::TypeList<md::PendingSceneContext,md::ElevationContext,md::CameraContext,md::PendingRegistryContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[5] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xADE8F13E6C18D970)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::PendingSceneContext,md::ElevationContext,md::CameraContext,md::PendingRegistryContext>,gdc::TypeList<>>::resolveDependencies(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

void md::LabelFeaturePool::flushRemovedTiles(md::LabelFeaturePool *this)
{
  v309[2] = *MEMORY[0x1E69E9840];
  v1 = this + 632;
  v2 = atomic_load(this + 632);
  if (v2)
  {
    v3 = this;
    std::mutex::lock(this);
    v4 = atomic_load(v1);
    if ((v4 & 1) == 0)
    {
LABEL_601:
      std::mutex::unlock(v3);
      return;
    }

    v306 = 0uLL;
    v307 = 0;
    std::mutex::lock((v3 + 568));
    v299 = *(v3 + 40);
    v306 = v299;
    *(v3 + 40) = 0u;
    v307 = *(v3 + 82);
    *(v3 + 82) = 0;
    atomic_store(0, v3 + 632);
    std::mutex::unlock((v3 + 568));
    v5 = v299;
    if (v299 == *(&v299 + 1))
    {
LABEL_600:
      *buf = &v306;
      std::vector<std::shared_ptr<md::LabelSourceTile>,geo::allocator_adapter<std::shared_ptr<md::LabelSourceTile>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](buf);
      goto LABEL_601;
    }

    v289 = (v3 + 200);
    v290 = (v3 + 256);
    v291 = (v3 + 424);
    v298 = (v3 + 512);
    v292 = (v3 + 368);
    v293 = (v3 + 536);
    v288 = (v3 + 312);
    v300 = v3;
    while (1)
    {
      v6 = *v5;
      v7 = **v5;
      v294 = v5;
      if (!v7)
      {
        break;
      }

      v8 = v6[1];
      v303 = **v5;
      v304 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v3 + 57, v7);
      if (v9)
      {
        v295 = v9;
        v10 = *(v9 + 108);
        *(v9 + 108) = v10 - 1;
        if (v10 <= 1)
        {
          for (i = v9[41]; i; i = *i)
          {
            v12 = i[2];
            if (v12)
            {
              v13 = (v12 + 8);
            }

            else
            {
              v13 = 0;
            }

            v14 = v13[1];
            std::mutex::lock((v14 + 8));
            v15 = v303;
            v16 = v304;
            if (v304)
            {
              atomic_fetch_add_explicit(&v304->__shared_owners_, 1uLL, memory_order_relaxed);
              v17 = v13[3];
              v18 = v13[4];
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
              v19 = v16;
            }

            else
            {
              v19 = 0;
              v17 = v13[3];
              v18 = v13[4];
            }

            while (1)
            {
              if (v17 == v18)
              {
                v17 = v18;
                goto LABEL_21;
              }

              if (v17[1] == v15)
              {
                break;
              }

              v17 += 3;
            }

            if (v17 != v18)
            {
              for (j = v17 + 3; j != v18; j += 3)
              {
                v40 = j[1];
                if (v40 != v15)
                {
                  *v17 = *j;
                  v41 = j[2];
                  j[1] = 0;
                  j[2] = 0;
                  v42 = v17[2];
                  v17[1] = v40;
                  v17[2] = v41;
                  if (v42)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
                  }

                  v17 += 3;
                }
              }
            }

LABEL_21:
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v19);
            }

            std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::erase(v13 + 3, v17, v13[4]);
            v20 = v13[3];
            v21 = v13[4];
            if (v13[8] == v15)
            {
              if (v20 == v21)
              {
                goto LABEL_27;
              }

              std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>::operator=[abi:nn200100](v13 + 7, v20);
              v20 = v13[3];
              v21 = v13[4];
            }

            if (v20 == v21)
            {
LABEL_27:
              v22 = v13[1];
              *(v22 + 152) = 0;
              atomic_store(1u, (v22 + 146));
            }

            if (v16)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v16);
            }

            std::mutex::unlock((v14 + 8));
            v23 = i[2];
            if (v23)
            {
              v24 = v23 + 8;
            }

            else
            {
              v24 = 0;
            }

            v25 = *(v24 + 8);
            v26 = v303;
            v27 = v304;
            if (v304)
            {
              atomic_fetch_add_explicit(&v304->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::mutex::lock((v25 + 248));
            v28 = (v25 + 328);
            v29 = *(v25 + 328);
            v30 = *(v25 + 336);
            if (v29 >= v30)
            {
              v32 = *(v25 + 320);
              v33 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v32) >> 4);
              v34 = v33 + 1;
              if (v33 + 1 > 0x555555555555555)
              {
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v35 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v32) >> 4);
              if (2 * v35 > v34)
              {
                v34 = 2 * v35;
              }

              if (v35 >= 0x2AAAAAAAAAAAAAALL)
              {
                v36 = 0x555555555555555;
              }

              else
              {
                v36 = v34;
              }

              v309[0] = v25 + 344;
              if (v36)
              {
                v37 = mdm::zone_mallocator::instance(v29);
                v38 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::PointLabelFeature::WorkUnit>(v37, v36);
              }

              else
              {
                v38 = 0;
              }

              *buf = v38;
              *&buf[8] = &v38[48 * v33];
              *&buf[16] = *&buf[8];
              *&buf[24] = &v38[48 * v36];
              std::construct_at[abi:nn200100]<md::PointLabelFeature::WorkUnit,std::shared_ptr<geo::codec::VectorTile> &,md::PointLabelFeature::WorkUnit*>(*&buf[8], v26, v27);
              *&buf[16] += 48;
              v43 = *(v25 + 320);
              v44 = *(v25 + 328);
              v45 = *&buf[8] + v43 - v44;
              std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::PointLabelFeature::WorkUnit,mdm::zone_mallocator>,md::PointLabelFeature::WorkUnit*>(v43, v44, v45);
              v46 = *(v25 + 320);
              *(v25 + 320) = v45;
              v47 = *(v25 + 336);
              v296 = *&buf[16];
              *v28 = *&buf[16];
              *&buf[16] = v46;
              *&buf[24] = v47;
              *buf = v46;
              *&buf[8] = v46;
              std::__split_buffer<md::PointLabelFeature::WorkUnit,geo::allocator_adapter<md::PointLabelFeature::WorkUnit,mdm::zone_mallocator> &>::~__split_buffer(buf);
              v31 = v296;
            }

            else
            {
              v31 = std::construct_at[abi:nn200100]<md::PointLabelFeature::WorkUnit,std::shared_ptr<geo::codec::VectorTile> &,md::PointLabelFeature::WorkUnit*>(v29, v26, v27) + 48;
              *v28 = v31;
            }

            *(v25 + 328) = v31;
            atomic_store(1u, (v25 + 312));
            std::mutex::unlock((v25 + 248));
            if (v27)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v27);
            }

            v48 = i[2];
            v49 = v48 + 8;
            if (!v48)
            {
              v49 = 0;
            }

            if (*(v49 + 24) == *(v49 + 32))
            {
              v50 = md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::hash(*(v49 + 56), *(v49 + 88));
              v51 = *(v300 + 352);
              if (v51)
              {
                v52 = v50;
                v53 = vcnt_s8(v51);
                v53.i16[0] = vaddlv_u8(v53);
                v54 = v53.u32[0];
                if (v53.u32[0] > 1uLL)
                {
                  v55 = v50;
                  if (v50 >= *&v51)
                  {
                    v55 = v50 % *&v51;
                  }
                }

                else
                {
                  v55 = (*&v51 - 1) & v50;
                }

                v56 = *(v300 + 43);
                v57 = *(v56 + 8 * v55);
                if (v57)
                {
                  v58 = *v57;
                  if (*v57)
                  {
                    v59 = *&v51 - 1;
                    do
                    {
                      v60 = v58[1];
                      if (v60 == v52)
                      {
                        v61 = v58[2];
                        if (v61)
                        {
                          v62 = v61 + 8;
                        }

                        else
                        {
                          v62 = 0;
                        }

                        if (!md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::compare(v62, *(v48 + 64), *(v48 + 96)))
                        {
                          v63 = v58[1];
                          if (v54 > 1)
                          {
                            if (v63 >= *&v51)
                            {
                              v63 %= *&v51;
                            }
                          }

                          else
                          {
                            v63 &= v59;
                          }

                          v64 = *(v56 + 8 * v63);
                          do
                          {
                            v65 = v64;
                            v64 = *v64;
                          }

                          while (v64 != v58);
                          if (v65 == v292)
                          {
                            goto LABEL_100;
                          }

                          v66 = v65[1];
                          if (v54 > 1)
                          {
                            if (v66 >= *&v51)
                            {
                              v66 %= *&v51;
                            }
                          }

                          else
                          {
                            v66 &= v59;
                          }

                          if (v66 != v63)
                          {
LABEL_100:
                            if (!*v58)
                            {
                              goto LABEL_101;
                            }

                            v67 = *(*v58 + 1);
                            if (v54 > 1)
                            {
                              if (v67 >= *&v51)
                              {
                                v67 %= *&v51;
                              }
                            }

                            else
                            {
                              v67 &= v59;
                            }

                            if (v67 != v63)
                            {
LABEL_101:
                              *(v56 + 8 * v63) = 0;
                            }
                          }

                          v68 = *v58;
                          if (*v58)
                          {
                            v69 = v68[1];
                            if (v54 > 1)
                            {
                              if (v69 >= *&v51)
                              {
                                v69 %= *&v51;
                              }
                            }

                            else
                            {
                              v69 &= v59;
                            }

                            if (v69 != v63)
                            {
                              *(*(v300 + 43) + 8 * v69) = v65;
                              v68 = *v58;
                            }
                          }

                          *v65 = v68;
                          *v58 = 0;
                          --*(v300 + 48);
                          std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v58);
                          break;
                        }
                      }

                      else
                      {
                        if (v54 > 1)
                        {
                          if (v60 >= *&v51)
                          {
                            v60 %= *&v51;
                          }
                        }

                        else
                        {
                          v60 &= v59;
                        }

                        if (v60 != v55)
                        {
                          break;
                        }
                      }

                      v58 = *v58;
                    }

                    while (v58);
                  }
                }
              }
            }
          }

          for (k = v295[6]; k; k = *k)
          {
            v117 = k + 2;
            v116 = k[2];
            if (v116)
            {
              v118 = (v116 + 8);
            }

            else
            {
              v118 = 0;
            }

            md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::removeTile(v118, &v303);
            if (*v117)
            {
              v119 = *v117 + 8;
            }

            else
            {
              v119 = 0;
            }

            (*(**(v119 + 8) + 648))(*(v119 + 8), &v303);
            if (*v117)
            {
              v120 = *v117 + 8;
            }

            else
            {
              v120 = 0;
            }

            if (*(v120 + 24) == *(v120 + 32))
            {
              std::__hash_table<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::FeatureHash<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,mdm::zone_mallocator>>::__erase_unique<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>(v300 + 8, k + 2);
            }
          }

          for (m = v295[13]; m; m = *m)
          {
            v123 = m + 2;
            v122 = m[2];
            if (v122)
            {
              v124 = (v122 + 8);
            }

            else
            {
              v124 = 0;
            }

            md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::removeTile(v124, &v303);
            if (*v123)
            {
              v125 = *v123 + 8;
            }

            else
            {
              v125 = 0;
            }

            (*(**(v125 + 8) + 648))(*(v125 + 8), &v303);
            if (*v123)
            {
              v126 = *v123 + 8;
            }

            else
            {
              v126 = 0;
            }

            if (*(v126 + 24) == *(v126 + 32))
            {
              std::__hash_table<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::FeatureHash<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,mdm::zone_mallocator>>::__erase_unique<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>(v300 + 15, m + 2);
            }
          }

          for (n = v295[27]; n; n = *n)
          {
            v128 = n[2];
            if (v128)
            {
              v129 = (v128 + 8);
            }

            else
            {
              v129 = 0;
            }

            v130 = v129[1];
            std::mutex::lock((v130 + 8));
            v132 = v303;
            v131 = v304;
            if (v304)
            {
              atomic_fetch_add_explicit(&v304->__shared_owners_, 1uLL, memory_order_relaxed);
              v133 = v129[3];
              v134 = v129[4];
              atomic_fetch_add_explicit(&v131->__shared_owners_, 1uLL, memory_order_relaxed);
              v135 = v131;
            }

            else
            {
              v135 = 0;
              v133 = v129[3];
              v134 = v129[4];
            }

            while (1)
            {
              if (v133 == v134)
              {
                v133 = v134;
                goto LABEL_249;
              }

              if (v133[1] == v132)
              {
                break;
              }

              v133 += 3;
            }

            if (v133 != v134)
            {
              for (ii = v133 + 3; ii != v134; ii += 3)
              {
                v152 = ii[1];
                if (v152 != v132)
                {
                  *v133 = *ii;
                  v153 = ii[2];
                  ii[1] = 0;
                  ii[2] = 0;
                  v154 = v133[2];
                  v133[1] = v152;
                  v133[2] = v153;
                  if (v154)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v154);
                  }

                  v133 += 3;
                }
              }
            }

LABEL_249:
            if (v135)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v135);
            }

            v136 = v129[4];
            if (v133 != v136)
            {
              while (v136 != v133)
              {
                v137 = *(v136 - 1);
                if (v137)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v137);
                }

                v136 -= 3;
              }

              v129[4] = v133;
            }

            v138 = v129[3];
            if (v129[8] == v132)
            {
              if (v138 == v133)
              {
                goto LABEL_266;
              }

              v129[7] = *v138;
              v140 = v138[1];
              v139 = v138[2];
              if (v139)
              {
                atomic_fetch_add_explicit((v139 + 8), 1uLL, memory_order_relaxed);
              }

              v141 = v129[9];
              v129[8] = v140;
              v129[9] = v139;
              if (v141)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v141);
              }

              v138 = v129[3];
              v133 = v129[4];
            }

            if (v138 == v133)
            {
LABEL_266:
              v142 = v129[1];
              *(v142 + 152) = 0;
              atomic_store(1u, (v142 + 146));
            }

            if (v131)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v131);
            }

            std::mutex::unlock((v130 + 8));
            v143 = n[2];
            if (v143)
            {
              v144 = v143 + 8;
            }

            else
            {
              v144 = 0;
            }

            (*(**(v144 + 8) + 648))();
            v145 = n[2];
            if (v145)
            {
              v146 = v145 + 8;
            }

            else
            {
              v146 = 0;
            }

            if (*(v146 + 24) == *(v146 + 32))
            {
              v147 = *(v300 + 240);
              if (v147)
              {
                v148 = ((*(v146 + 88) << 6) - 0x61C8864680B583EBLL + (*(v146 + 88) >> 2) + *(*(v146 + 56) + 24)) ^ *(v146 + 88);
                v149 = vcnt_s8(v147);
                v149.i16[0] = vaddlv_u8(v149);
                if (v149.u32[0] > 1uLL)
                {
                  v150 = ((*(v146 + 88) << 6) - 0x61C8864680B583EBLL + (*(v146 + 88) >> 2) + *(*(v146 + 56) + 24)) ^ *(v146 + 88);
                  if (v148 >= *&v147)
                  {
                    v150 = v148 % *&v147;
                  }
                }

                else
                {
                  v150 = v148 & (*&v147 - 1);
                }

                v155 = *(v300 + 29);
                v156 = *(v155 + 8 * v150);
                if (v156)
                {
                  v157 = *v156;
                  if (*v156)
                  {
                    v158 = *&v147 - 1;
                    do
                    {
                      v159 = v157[1];
                      if (v159 == v148)
                      {
                        v160 = v157[2];
                        if (v160)
                        {
                          v161 = v160 + 8;
                        }

                        else
                        {
                          v161 = 0;
                        }

                        if (v161[88] == *(v145 + 96) && *(*(v161 + 7) + 24) == *(*(v145 + 64) + 24))
                        {
                          v162 = v157[1];
                          if (v149.u32[0] > 1uLL)
                          {
                            if (v162 >= *&v147)
                            {
                              v162 %= *&v147;
                            }
                          }

                          else
                          {
                            v162 &= v158;
                          }

                          v163 = *(v155 + 8 * v162);
                          do
                          {
                            v164 = v163;
                            v163 = *v163;
                          }

                          while (v163 != v157);
                          if (v164 == v290)
                          {
                            goto LABEL_325;
                          }

                          v165 = v164[1];
                          if (v149.u32[0] > 1uLL)
                          {
                            if (v165 >= *&v147)
                            {
                              v165 %= *&v147;
                            }
                          }

                          else
                          {
                            v165 &= v158;
                          }

                          if (v165 != v162)
                          {
LABEL_325:
                            if (!*v157)
                            {
                              goto LABEL_326;
                            }

                            v166 = *(*v157 + 1);
                            if (v149.u32[0] > 1uLL)
                            {
                              if (v166 >= *&v147)
                              {
                                v166 %= *&v147;
                              }
                            }

                            else
                            {
                              v166 &= v158;
                            }

                            if (v166 != v162)
                            {
LABEL_326:
                              *(v155 + 8 * v162) = 0;
                            }
                          }

                          v167 = *v157;
                          if (*v157)
                          {
                            v168 = v167[1];
                            if (v149.u32[0] > 1uLL)
                            {
                              if (v168 >= *&v147)
                              {
                                v168 %= *&v147;
                              }
                            }

                            else
                            {
                              v168 &= v158;
                            }

                            if (v168 != v162)
                            {
                              *(*(v300 + 29) + 8 * v168) = v164;
                              v167 = *v157;
                            }
                          }

                          *v164 = v167;
                          *v157 = 0;
                          --*(v300 + 34);
                          std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v157);
                          break;
                        }
                      }

                      else
                      {
                        if (v149.u32[0] > 1uLL)
                        {
                          if (v159 >= *&v147)
                          {
                            v159 %= *&v147;
                          }
                        }

                        else
                        {
                          v159 &= v158;
                        }

                        if (v159 != v150)
                        {
                          break;
                        }
                      }

                      v157 = *v157;
                    }

                    while (v157);
                  }
                }
              }
            }
          }

          for (jj = v295[20]; jj; jj = *jj)
          {
            v170 = jj[2];
            if (v170)
            {
              v171 = (v170 + 8);
            }

            else
            {
              v171 = 0;
            }

            v172 = v171[1];
            std::mutex::lock((v172 + 8));
            v173 = v303;
            v174 = v304;
            if (v304)
            {
              atomic_fetch_add_explicit(&v304->__shared_owners_, 1uLL, memory_order_relaxed);
              v175 = v171[3];
              v176 = v171[4];
              atomic_fetch_add_explicit(&v174->__shared_owners_, 1uLL, memory_order_relaxed);
              v177 = v174;
            }

            else
            {
              v177 = 0;
              v175 = v171[3];
              v176 = v171[4];
            }

            while (1)
            {
              if (v175 == v176)
              {
                v175 = v176;
                goto LABEL_346;
              }

              if (v175[1] == v173)
              {
                break;
              }

              v175 += 3;
            }

            if (v175 != v176)
            {
              for (kk = v175 + 3; kk != v176; kk += 3)
              {
                v190 = kk[1];
                if (v190 != v173)
                {
                  *v175 = *kk;
                  v191 = kk[2];
                  kk[1] = 0;
                  kk[2] = 0;
                  v192 = v175[2];
                  v175[1] = v190;
                  v175[2] = v191;
                  if (v192)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v192);
                  }

                  v175 += 3;
                }
              }
            }

LABEL_346:
            if (v177)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v177);
            }

            std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::erase(v171 + 3, v175, v171[4]);
            v178 = v171[3];
            v179 = v171[4];
            if (v171[8] == v173)
            {
              if (v178 == v179)
              {
                goto LABEL_352;
              }

              std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>::operator=[abi:nn200100](v171 + 7, v178);
              v178 = v171[3];
              v179 = v171[4];
            }

            if (v178 == v179)
            {
LABEL_352:
              v180 = v171[1];
              *(v180 + 152) = 0;
              atomic_store(1u, (v180 + 146));
            }

            if (v174)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v174);
            }

            std::mutex::unlock((v172 + 8));
            v181 = jj[2];
            if (v181)
            {
              v182 = v181 + 8;
            }

            else
            {
              v182 = 0;
            }

            (*(**(v182 + 8) + 648))();
            v183 = jj[2];
            if (v183)
            {
              v184 = v183 + 8;
            }

            else
            {
              v184 = 0;
            }

            if (*(v184 + 24) == *(v184 + 32))
            {
              v185 = *(v300 + 184);
              if (v185)
              {
                v186 = (*(*(v184 + 56) + 40) - 0x61C8864680B583EBLL + (*(v184 + 88) << 6) + (*(v184 + 88) >> 2)) ^ *(v184 + 88);
                v187 = vcnt_s8(v185);
                v187.i16[0] = vaddlv_u8(v187);
                if (v187.u32[0] > 1uLL)
                {
                  v188 = (*(*(v184 + 56) + 40) - 0x61C8864680B583EBLL + (*(v184 + 88) << 6) + (*(v184 + 88) >> 2)) ^ *(v184 + 88);
                  if (v186 >= *&v185)
                  {
                    v188 = v186 % *&v185;
                  }
                }

                else
                {
                  v188 = v186 & (*&v185 - 1);
                }

                v193 = *(v300 + 22);
                v194 = *(v193 + 8 * v188);
                if (v194)
                {
                  v195 = *v194;
                  if (*v194)
                  {
                    v196 = *&v185 - 1;
                    do
                    {
                      v197 = v195[1];
                      if (v197 == v186)
                      {
                        v198 = v195[2];
                        if (v198)
                        {
                          v199 = v198 + 8;
                        }

                        else
                        {
                          v199 = 0;
                        }

                        if (v199[88] == *(v183 + 96) && *(*(v199 + 7) + 40) == *(*(v183 + 64) + 40))
                        {
                          v200 = v195[1];
                          if (v187.u32[0] > 1uLL)
                          {
                            if (v200 >= *&v185)
                            {
                              v200 %= *&v185;
                            }
                          }

                          else
                          {
                            v200 &= v196;
                          }

                          v201 = *(v193 + 8 * v200);
                          do
                          {
                            v202 = v201;
                            v201 = *v201;
                          }

                          while (v201 != v195);
                          if (v202 == v289)
                          {
                            goto LABEL_411;
                          }

                          v203 = v202[1];
                          if (v187.u32[0] > 1uLL)
                          {
                            if (v203 >= *&v185)
                            {
                              v203 %= *&v185;
                            }
                          }

                          else
                          {
                            v203 &= v196;
                          }

                          if (v203 != v200)
                          {
LABEL_411:
                            if (!*v195)
                            {
                              goto LABEL_412;
                            }

                            v204 = *(*v195 + 1);
                            if (v187.u32[0] > 1uLL)
                            {
                              if (v204 >= *&v185)
                              {
                                v204 %= *&v185;
                              }
                            }

                            else
                            {
                              v204 &= v196;
                            }

                            if (v204 != v200)
                            {
LABEL_412:
                              *(v193 + 8 * v200) = 0;
                            }
                          }

                          v205 = *v195;
                          if (*v195)
                          {
                            v206 = v205[1];
                            if (v187.u32[0] > 1uLL)
                            {
                              if (v206 >= *&v185)
                              {
                                v206 %= *&v185;
                              }
                            }

                            else
                            {
                              v206 &= v196;
                            }

                            if (v206 != v200)
                            {
                              *(*(v300 + 22) + 8 * v206) = v202;
                              v205 = *v195;
                            }
                          }

                          *v202 = v205;
                          *v195 = 0;
                          --*(v300 + 27);
                          std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v195);
                          break;
                        }
                      }

                      else
                      {
                        if (v187.u32[0] > 1uLL)
                        {
                          if (v197 >= *&v185)
                          {
                            v197 %= *&v185;
                          }
                        }

                        else
                        {
                          v197 &= v196;
                        }

                        if (v197 != v188)
                        {
                          break;
                        }
                      }

                      v195 = *v195;
                    }

                    while (v195);
                  }
                }
              }
            }
          }

          for (mm = v295[48]; mm; mm = *mm)
          {
            v208 = mm[2];
            if (v208)
            {
              v209 = (v208 + 8);
            }

            else
            {
              v209 = 0;
            }

            v210 = v209[1];
            std::mutex::lock((v210 + 8));
            v212 = v303;
            v211 = v304;
            if (v304)
            {
              atomic_fetch_add_explicit(&v304->__shared_owners_, 1uLL, memory_order_relaxed);
              v213 = v209[3];
              v214 = v209[4];
              atomic_fetch_add_explicit(&v211->__shared_owners_, 1uLL, memory_order_relaxed);
              v215 = v211;
            }

            else
            {
              v215 = 0;
              v213 = v209[3];
              v214 = v209[4];
            }

            while (1)
            {
              if (v213 == v214)
              {
                v213 = v214;
                goto LABEL_432;
              }

              if (v213[1] == v212)
              {
                break;
              }

              v213 += 3;
            }

            if (v213 != v214)
            {
              for (nn = v213 + 3; nn != v214; nn += 3)
              {
                v235 = nn[1];
                if (v235 != v212)
                {
                  *v213 = *nn;
                  v236 = nn[2];
                  nn[1] = 0;
                  nn[2] = 0;
                  v237 = v213[2];
                  v213[1] = v235;
                  v213[2] = v236;
                  if (v237)
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](v237);
                  }

                  v213 += 3;
                }
              }
            }

LABEL_432:
            if (v215)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v215);
            }

            v216 = v209[4];
            if (v213 != v216)
            {
              while (v216 != v213)
              {
                v217 = *(v216 - 1);
                if (v217)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v217);
                }

                v216 -= 3;
              }

              v209[4] = v213;
            }

            v218 = v209[3];
            if (v209[8] == v212)
            {
              if (v218 == v213)
              {
                goto LABEL_449;
              }

              v209[7] = *v218;
              v220 = v218[1];
              v219 = v218[2];
              if (v219)
              {
                atomic_fetch_add_explicit((v219 + 8), 1uLL, memory_order_relaxed);
              }

              v221 = v209[9];
              v209[8] = v220;
              v209[9] = v219;
              if (v221)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v221);
              }

              v218 = v209[3];
              v213 = v209[4];
            }

            if (v218 == v213)
            {
LABEL_449:
              v222 = v209[1];
              *(v222 + 152) = 0;
              atomic_store(1u, (v222 + 146));
            }

            if (v211)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v211);
            }

            std::mutex::unlock((v210 + 8));
            v223 = mm[2];
            if (v223)
            {
              v224 = v223 + 8;
            }

            else
            {
              v224 = 0;
            }

            (*(**(v224 + 8) + 648))();
            v225 = mm[2];
            if (v225)
            {
              v226 = v225 + 8;
            }

            else
            {
              v226 = 0;
            }

            if (*(v226 + 24) == *(v226 + 32))
            {
              v227 = *(v226 + 88);
              v228 = md::TransitLineLabelFeature::transitLinkHash(*(v226 + 56));
              v229 = *(v300 + 408);
              if (v229)
              {
                v230 = (v228 - 0x61C8864680B583EBLL + (v227 << 6) + (v227 >> 2)) ^ v227;
                v231 = vcnt_s8(v229);
                v231.i16[0] = vaddlv_u8(v231);
                v232 = v231.u32[0];
                if (v231.u32[0] > 1uLL)
                {
                  v233 = (v228 - 0x61C8864680B583EBLL + (v227 << 6) + (v227 >> 2)) ^ v227;
                  if (v230 >= *&v229)
                  {
                    v233 = v230 % *&v229;
                  }
                }

                else
                {
                  v233 = v230 & (*&v229 - 1);
                }

                v238 = *(*(v300 + 50) + 8 * v233);
                if (v238)
                {
                  for (i1 = *v238; i1; i1 = *i1)
                  {
                    v240 = i1[1];
                    if (v240 == v230)
                    {
                      if (md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>>::operator()(i1[2], mm[2]))
                      {
                        v241 = *(v300 + 408);
                        v242 = i1[1];
                        v243 = vcnt_s8(v241);
                        v243.i16[0] = vaddlv_u8(v243);
                        if (v243.u32[0] > 1uLL)
                        {
                          if (v242 >= *&v241)
                          {
                            v242 %= *&v241;
                          }
                        }

                        else
                        {
                          v242 &= *&v241 - 1;
                        }

                        v244 = *(v300 + 50);
                        v245 = *(v244 + 8 * v242);
                        do
                        {
                          v246 = v245;
                          v245 = *v245;
                        }

                        while (v245 != i1);
                        if (v246 == v291)
                        {
                          goto LABEL_503;
                        }

                        v247 = v246[1];
                        if (v243.u32[0] > 1uLL)
                        {
                          if (v247 >= *&v241)
                          {
                            v247 %= *&v241;
                          }
                        }

                        else
                        {
                          v247 &= *&v241 - 1;
                        }

                        if (v247 != v242)
                        {
LABEL_503:
                          if (!*i1)
                          {
                            goto LABEL_504;
                          }

                          v248 = *(*i1 + 1);
                          if (v243.u32[0] > 1uLL)
                          {
                            if (v248 >= *&v241)
                            {
                              v248 %= *&v241;
                            }
                          }

                          else
                          {
                            v248 &= *&v241 - 1;
                          }

                          if (v248 != v242)
                          {
LABEL_504:
                            *(v244 + 8 * v242) = 0;
                          }
                        }

                        v249 = *i1;
                        if (*i1)
                        {
                          v250 = v249[1];
                          if (v243.u32[0] > 1uLL)
                          {
                            if (v250 >= *&v241)
                            {
                              v250 %= *&v241;
                            }
                          }

                          else
                          {
                            v250 &= *&v241 - 1;
                          }

                          if (v250 != v242)
                          {
                            *(*(v300 + 50) + 8 * v250) = v246;
                            v249 = *i1;
                          }
                        }

                        *v246 = v249;
                        *i1 = 0;
                        --*(v300 + 55);
                        std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, i1);
                        break;
                      }
                    }

                    else
                    {
                      if (v232 > 1)
                      {
                        if (v240 >= *&v229)
                        {
                          v240 %= *&v229;
                        }
                      }

                      else
                      {
                        v240 &= *&v229 - 1;
                      }

                      if (v240 != v233)
                      {
                        break;
                      }
                    }
                  }
                }
              }
            }
          }

          v251 = geo::codec::VectorTile::removedFeatureIDs(v303);
          v252 = *v251;
          v253 = *(v251 + 8);
          while (v252 != v253)
          {
            v255 = *v252;
            v254 = v252[1];
            v256 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>(v298, *v252);
            if (v256)
            {
              v257 = v256;
              v259 = v256[3];
              v258 = v256[4];
              v260 = v256[5];
              v261 = v258;
              if (v258 != v260)
              {
                v261 = v258;
                while (*v261 != v254)
                {
                  v261 += 8;
                  if (v261 == v260)
                  {
                    goto LABEL_545;
                  }
                }
              }

              if (v261 != v260)
              {
                if (v261 + 8 != v260)
                {
                  memmove(v261, v261 + 8, ((v260 - v261 - 16) & 0xFFFFFFFFFFFFFFF8) + 8);
                }

                v262 = v260 - 8;
                v257[5] = v260 - 8;
                if (v258 == v260 - 8)
                {
                  v259 = 0;
                }

                else
                {
                  v263 = v258 + 8;
                  if (v258 + 8 != v262)
                  {
                    v264 = *v258;
                    v265 = (v258 + 8);
                    do
                    {
                      v267 = *v265++;
                      v266 = v267;
                      v268 = v264 >= v267;
                      if (v264 <= v267)
                      {
                        v264 = v266;
                      }

                      if (!v268)
                      {
                        v258 = v263;
                      }

                      v263 = v265;
                    }

                    while (v265 != v262);
                  }

                  v259 = *v258;
                }

                if (v259 != v257[3])
                {
                  v257[3] = v259;
                  v269 = v292;
                  while (1)
                  {
                    v269 = *v269;
                    if (!v269)
                    {
                      break;
                    }

                    v270 = v269[2];
                    if (v270)
                    {
                      v271 = v270 + 8;
                    }

                    else
                    {
                      v271 = 0;
                    }

                    if ((*(**(v271 + 8) + 160))(*(v271 + 8)) == v255)
                    {
                      v272 = v269[2];
                      if (v272)
                      {
                        v273 = v272 + 8;
                      }

                      else
                      {
                        v273 = 0;
                      }

                      md::PointLabelFeature::setPOIUpdateRemoveVersion(*(v273 + 8), v259);
                      break;
                    }
                  }
                }
              }

LABEL_545:
              if (md::DebugStreamingPOIFeatureID)
              {
                v274 = md::DebugStreamingPOIFeatureID == v255;
              }

              else
              {
                v274 = 0;
              }

              if (v274)
              {
                if (GEOGetVectorKitStreamingPOILog_onceToken != -1)
                {
                  dispatch_once(&GEOGetVectorKitStreamingPOILog_onceToken, &__block_literal_global_69);
                }

                v275 = GEOGetVectorKitStreamingPOILog_log;
                if (os_log_type_enabled(v275, OS_LOG_TYPE_DEBUG))
                {
                  md::HighlightHelper::debugTileToString(&__p, v303 + 4);
                  p_p = &__p;
                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    p_p = __p.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315906;
                  *&buf[4] = p_p;
                  *&buf[12] = 2048;
                  *&buf[14] = v255;
                  *&buf[22] = 2048;
                  *&buf[24] = v254;
                  LOWORD(v309[0]) = 2048;
                  *(v309 + 2) = v259;
                  _os_log_impl(&dword_1B2754000, v275, OS_LOG_TYPE_DEBUG, "LabelFeaturePool::removeFeatureID, tile:%s featureID:%llu, removeVersion:%llu -> newVersion:%llu", buf, 0x2Au);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }
                }

                if (v257[4] == v257[5])
                {
                  if (GEOGetVectorKitStreamingPOILog_onceToken != -1)
                  {
                    dispatch_once(&GEOGetVectorKitStreamingPOILog_onceToken, &__block_literal_global_69);
                  }

                  v277 = GEOGetVectorKitStreamingPOILog_log;
                  if (os_log_type_enabled(v277, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1B2754000, v277, OS_LOG_TYPE_DEBUG, "LabelFeaturePool::clear removeFeatureID", buf, 2u);
                  }
                }
              }

              if (v257[4] == v257[5])
              {
                v278 = *(v300 + 520);
                v279 = v257[1];
                v280 = vcnt_s8(v278);
                v280.i16[0] = vaddlv_u8(v280);
                if (v280.u32[0] > 1uLL)
                {
                  if (v279 >= *&v278)
                  {
                    v279 %= *&v278;
                  }
                }

                else
                {
                  v279 &= *&v278 - 1;
                }

                v281 = *(*v298 + 8 * v279);
                do
                {
                  v282 = v281;
                  v281 = *v281;
                }

                while (v281 != v257);
                if (v282 == v293)
                {
                  goto LABEL_581;
                }

                v283 = v282[1];
                if (v280.u32[0] > 1uLL)
                {
                  if (v283 >= *&v278)
                  {
                    v283 %= *&v278;
                  }
                }

                else
                {
                  v283 &= *&v278 - 1;
                }

                if (v283 != v279)
                {
LABEL_581:
                  if (!*v257)
                  {
                    goto LABEL_582;
                  }

                  v284 = *(*v257 + 8);
                  if (v280.u32[0] > 1uLL)
                  {
                    if (v284 >= *&v278)
                    {
                      v284 %= *&v278;
                    }
                  }

                  else
                  {
                    v284 &= *&v278 - 1;
                  }

                  if (v284 != v279)
                  {
LABEL_582:
                    *(*v298 + 8 * v279) = 0;
                  }
                }

                v285 = *v257;
                if (*v257)
                {
                  v286 = *(v285 + 8);
                  if (v280.u32[0] > 1uLL)
                  {
                    if (v286 >= *&v278)
                    {
                      v286 %= *&v278;
                    }
                  }

                  else
                  {
                    v286 &= *&v278 - 1;
                  }

                  if (v286 != v279)
                  {
                    *(*v298 + 8 * v286) = v282;
                    v285 = *v257;
                  }
                }

                *v282 = v285;
                *v257 = 0;
                --*(v300 + 69);
                std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<unsigned long long,md::LabelFeaturePool::RemovedVersionInfo>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v257);
              }
            }

            v252 += 2;
          }

          v3 = v300;
          std::__hash_table<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,std::equal_to<void *>,std::hash<void *>,true>,geo::allocator_adapter<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,mdm::zone_mallocator>>::erase(v300 + 57, v295);
        }
      }

      v287 = v304;
      if (!v304)
      {
        goto LABEL_595;
      }

LABEL_594:
      std::__shared_weak_count::__release_shared[abi:nn200100](v287);
LABEL_595:
      v5 = v294 + 2;
      if (v294 + 2 == *(&v299 + 1))
      {
        goto LABEL_600;
      }
    }

    v70 = v6[2];
    v71 = v6[3];
    v301 = v70;
    v302 = v71;
    if (v71)
    {
      atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v72 = std::__hash_table<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::__unordered_map_hasher<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,std::__unordered_map_equal<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,std::equal_to<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,std::vector<gm::Matrix<float,3,1>>>,mdm::zone_mallocator>>::find<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v3 + 57, v70);
    if (!v72 || (v73 = *(v72 + 108), v74 = __OFSUB__(v73, 1), --v73, *(v72 + 108) = v73, !((v73 < 0) ^ v74 | (v73 == 0))))
    {
LABEL_598:
      v287 = v302;
      if (!v302)
      {
        goto LABEL_595;
      }

      goto LABEL_594;
    }

    v297 = v72;
    v75 = v72[34];
    if (!v75)
    {
LABEL_597:
      v3 = v300;
      std::__hash_table<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,std::equal_to<void *>,std::hash<void *>,true>,geo::allocator_adapter<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,mdm::zone_mallocator>>::erase(v300 + 57, v297);
      goto LABEL_598;
    }

    while (1)
    {
      v76 = v75[2];
      if (v76)
      {
        v77 = (v76 + 8);
      }

      else
      {
        v77 = 0;
      }

      v78 = v77[1];
      std::mutex::lock((v78 + 8));
      if (v302)
      {
        atomic_fetch_add_explicit(&v302->__shared_owners_, 1uLL, memory_order_relaxed);
        v79 = v77[3];
        v80 = v77[4];
        atomic_fetch_add_explicit(&v302->__shared_owners_, 1uLL, memory_order_relaxed);
        v81 = v302;
      }

      else
      {
        v81 = 0;
        v79 = v77[3];
        v80 = v77[4];
      }

      while (1)
      {
        if (v79 == v80)
        {
          v79 = v80;
          goto LABEL_126;
        }

        if (v79[1] == v301)
        {
          break;
        }

        v79 += 3;
      }

      if (v79 != v80)
      {
        for (i2 = v79 + 3; i2 != v80; i2 += 3)
        {
          v98 = i2[1];
          if (v98 != v301)
          {
            *v79 = *i2;
            v99 = i2[2];
            i2[1] = 0;
            i2[2] = 0;
            v100 = v79[2];
            v79[1] = v98;
            v79[2] = v99;
            if (v100)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v100);
            }

            v79 += 3;
          }
        }
      }

LABEL_126:
      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v81);
      }

      v82 = v77[4];
      if (v79 != v82)
      {
        while (v82 != v79)
        {
          v83 = *(v82 - 1);
          if (v83)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v83);
          }

          v82 -= 3;
        }

        v77[4] = v79;
      }

      v84 = v77[3];
      if (v77[8] == v301)
      {
        if (v84 == v79)
        {
          goto LABEL_143;
        }

        v77[7] = *v84;
        v86 = v84[1];
        v85 = v84[2];
        if (v85)
        {
          atomic_fetch_add_explicit((v85 + 8), 1uLL, memory_order_relaxed);
        }

        v87 = v77[9];
        v77[8] = v86;
        v77[9] = v85;
        if (v87)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v87);
        }

        v84 = v77[3];
        v79 = v77[4];
      }

      if (v84 == v79)
      {
LABEL_143:
        v88 = v77[1];
        *(v88 + 152) = 0;
        atomic_store(1u, (v88 + 146));
      }

      if (v302)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v302);
      }

      std::mutex::unlock((v78 + 8));
      v89 = v75[2];
      if (v89)
      {
        v90 = v89 + 8;
      }

      else
      {
        v90 = 0;
      }

      (*(**(v90 + 8) + 656))();
      v91 = v75[2];
      if (v91)
      {
        v92 = v91 + 8;
      }

      else
      {
        v92 = 0;
      }

      if (*(v92 + 24) == *(v92 + 32))
      {
        v93 = *(v300 + 296);
        if (v93)
        {
          v94 = (*(*(v92 + 56) + 16) - 0x61C8864680B583EBLL + (*(v92 + 88) << 6) + (*(v92 + 88) >> 2)) ^ *(v92 + 88);
          v95 = vcnt_s8(v93);
          v95.i16[0] = vaddlv_u8(v95);
          if (v95.u32[0] > 1uLL)
          {
            v96 = (*(*(v92 + 56) + 16) - 0x61C8864680B583EBLL + (*(v92 + 88) << 6) + (*(v92 + 88) >> 2)) ^ *(v92 + 88);
            if (v94 >= *&v93)
            {
              v96 = v94 % *&v93;
            }
          }

          else
          {
            v96 = v94 & (*&v93 - 1);
          }

          v101 = *(v300 + 36);
          v102 = *(v101 + 8 * v96);
          if (v102)
          {
            v103 = *v102;
            if (*v102)
            {
              v104 = *&v93 - 1;
              do
              {
                v105 = v103[1];
                if (v105 == v94)
                {
                  v106 = v103[2];
                  if (v106)
                  {
                    v107 = v106 + 8;
                  }

                  else
                  {
                    v107 = 0;
                  }

                  if (v107[88] == *(v91 + 96) && *(*(v107 + 7) + 16) == *(*(v91 + 64) + 16))
                  {
                    v108 = v103[1];
                    if (v95.u32[0] > 1uLL)
                    {
                      if (v108 >= *&v93)
                      {
                        v108 %= *&v93;
                      }
                    }

                    else
                    {
                      v108 &= v104;
                    }

                    v109 = *(v101 + 8 * v108);
                    do
                    {
                      v110 = v109;
                      v109 = *v109;
                    }

                    while (v109 != v103);
                    if (v110 == v288)
                    {
                      goto LABEL_202;
                    }

                    v111 = v110[1];
                    if (v95.u32[0] > 1uLL)
                    {
                      if (v111 >= *&v93)
                      {
                        v111 %= *&v93;
                      }
                    }

                    else
                    {
                      v111 &= v104;
                    }

                    if (v111 != v108)
                    {
LABEL_202:
                      if (!*v103)
                      {
                        goto LABEL_203;
                      }

                      v112 = *(*v103 + 1);
                      if (v95.u32[0] > 1uLL)
                      {
                        if (v112 >= *&v93)
                        {
                          v112 %= *&v93;
                        }
                      }

                      else
                      {
                        v112 &= v104;
                      }

                      if (v112 != v108)
                      {
LABEL_203:
                        *(v101 + 8 * v108) = 0;
                      }
                    }

                    v113 = *v103;
                    if (*v103)
                    {
                      v114 = v113[1];
                      if (v95.u32[0] > 1uLL)
                      {
                        if (v114 >= *&v93)
                        {
                          v114 %= *&v93;
                        }
                      }

                      else
                      {
                        v114 &= v104;
                      }

                      if (v114 != v108)
                      {
                        *(*(v300 + 36) + 8 * v114) = v110;
                        v113 = *v103;
                      }
                    }

                    *v110 = v113;
                    *v103 = 0;
                    --*(v300 + 41);
                    std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v103);
                    break;
                  }
                }

                else
                {
                  if (v95.u32[0] > 1uLL)
                  {
                    if (v105 >= *&v93)
                    {
                      v105 %= *&v93;
                    }
                  }

                  else
                  {
                    v105 &= v104;
                  }

                  if (v105 != v96)
                  {
                    break;
                  }
                }

                v103 = *v103;
              }

              while (v103);
            }
          }
        }
      }

      v75 = *v75;
      if (!v75)
      {
        goto LABEL_597;
      }
    }
  }
}

void sub_1B29D9FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  a32 = v33 - 176;
  std::vector<std::shared_ptr<md::LabelSourceTile>,geo::allocator_adapter<std::shared_ptr<md::LabelSourceTile>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a32);
  std::mutex::unlock(v32);
  _Unwind_Resume(a1);
}

void md::OverlaysLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = *MEMORY[0x1E69E9840];
  md::OverlayContainer::flushCommandQueue(*(a1 + 712));
  v8 = *(a1 + 712);
  *(a4 + 160) = v8;
  v48 = a4;
  *(a4 + 168) = *(a1 + 152);
  if (*(v8 + 345) == 1)
  {
    v52[0] = &unk_1F2A183A0;
    v52[1] = a1;
    v52[3] = v52;
    md::OverlaysLogic::_forEachOverlayLevelAndFallback(v52);
    std::__function::__value_func<void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::~__value_func[abi:nn200100](v52);
    std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::clear(a1 + 672);
    v8 = *(a1 + 712);
    *(v8 + 345) = 0;
  }

  v10 = *(a3 + 8);
  v9 = *(a3 + 16);
  v11 = v10[1];
  *(a1 + 921) = v11;
  v12 = fabs(*(gdc::Camera::cameraFrame(v9) + 32));
  v13 = *(v8 + 320) != 0;
  *(a1 + 920) = v12 > 0.0001;
  *(v48 + 209) = v13;
  v15 = v12 <= 0.0001 || (v11 & 1) != 0 || *v10 != 1 || (v14 = *(v48 + 160), v14[21] != v14[20]) || v14[24] != v14[23];
  *(v48 + 177) = v15;
  v51[0] = &unk_1F2A183E8;
  v51[1] = a1;
  v51[2] = v48;
  v51[3] = v51;
  md::OverlaysLogic::_forEachOverlayLevelAndFallback(v51);
  std::__function::__value_func<void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::~__value_func[abi:nn200100](v51);
  if (!*(v48 + 152))
  {
    *(v48 + 152) = *(a1 + 744);
  }

  v49 = a1;
  v16 = *(a1 + 712);
  std::mutex::lock((v16 + 232));
  v17 = *(v16 + 348);
  std::mutex::unlock((v16 + 232));
  v18 = v49;
  if (v17 != *(v49 + 728))
  {
    buf = 0u;
    v68 = 0u;
    LODWORD(v69) = 1065353216;
    v61 = 0u;
    v62 = 0u;
    v63 = 1.0;
    v58 = 0u;
    v59 = 0u;
    v60 = 1065353216;
    md::OverlayContainer::belowOverlays(&v53, *(v49 + 712));
    v20 = v53;
    v19 = v54;
    v64 = &v53;
    std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v64);
    if (v19 != v20)
    {
      md::OverlayContainer::belowOverlays(&v53, *(v49 + 712));
      std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(&buf, vcvtps_u32_f32((0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 3)) / *&v69));
      v64 = &v53;
      std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v64);
      md::OverlayContainer::belowOverlays(&v53, *(v49 + 712));
      v21 = v53;
      for (i = v54; v21 != i; v21 += 24)
      {
        geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v64, v21);
        v23 = v65;
        LODWORD(v57[0]) = [v23 identifier];
        v50 = DWORD2(v68);
        std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,unsigned int,unsigned int>(&buf, v57[0]);

        v24 = v65;
        v25 = [v24 rasterTileProvider];

        if (v25 && [(VKRasterTileOverlayProviderData *)v25 keyframesCount]>= 2)
        {
          v26 = v65;
          v50 = [v26 identifier];
          md::OverlaysContext::KeyframeAnimationParameters::KeyframeAnimationParameters(v57, v25);
          std::__hash_table<std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>>>::__emplace_unique_key_args<unsigned int,unsigned int,md::OverlaysContext::KeyframeAnimationParameters>(&v58, v50);
        }

        v64 = off_1F2A2D550;
      }

      v64 = &v53;
      std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v64);
    }

    md::OverlayContainer::aboveOverlays(&v53, *(v49 + 712));
    v28 = v53;
    v27 = v54;
    v64 = &v53;
    std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v64);
    if (v27 != v28)
    {
      md::OverlayContainer::aboveOverlays(&v53, *(v49 + 712));
      std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(&v61, vcvtps_u32_f32((0xAAAAAAAAAAAAAAABLL * ((v54 - v53) >> 3)) / v63));
      v64 = &v53;
      std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v64);
      md::OverlayContainer::aboveOverlays(&v53, *(v49 + 712));
      v29 = v53;
      for (j = v54; v29 != j; v29 += 24)
      {
        geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v64, v29);
        v31 = v65;
        LODWORD(v57[0]) = [v31 identifier];
        v50 = DWORD2(v62);
        std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,unsigned int,unsigned int>(&v61, v57[0]);

        v32 = v65;
        v33 = [v32 rasterTileProvider];

        if (v33 && [(VKRasterTileOverlayProviderData *)v33 keyframesCount]>= 2)
        {
          v34 = v65;
          v50 = [v34 identifier];
          md::OverlaysContext::KeyframeAnimationParameters::KeyframeAnimationParameters(v57, v33);
          std::__hash_table<std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>>>::__emplace_unique_key_args<unsigned int,unsigned int,md::OverlaysContext::KeyframeAnimationParameters>(&v58, v50);
        }

        v64 = off_1F2A2D550;
      }

      v64 = &v53;
      std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v64);
    }

    v18 = v49;
    *(v49 + 728) = v17;
    std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__move_assign(v48, &buf);
    std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__move_assign(v48 + 40, &v61);
    std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__move_assign(v48 + 112, &v58);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v58);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v61);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&buf);
  }

  md::OverlayContainer::belowOverlays(&buf, *(v18 + 712));
  md::OverlaysLogic::updateKeyframeAnimationOverrides(buf, *(&buf + 1), v48);
  *&v61 = &buf;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v61);
  md::OverlayContainer::aboveOverlays(&buf, *(v49 + 712));
  md::OverlaysLogic::updateKeyframeAnimationOverrides(buf, *(&buf + 1), v48);
  *&v61 = &buf;
  std::vector<geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v61);
  v35 = *(v49 + 136);
  v64 = &unk_1F2A18140;
  v66 = &v64;
  md::RegistryManager::entering(&buf, v35, &v64);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v64);
  md::FilteredIterator<std::vector<gdc::Registry *>>::begin(&v61, &buf);
  md::FilteredIterator<std::vector<gdc::Registry *>>::end(&v58, &buf);
  while (*(&v58 + 1) != *(&v61 + 1))
  {
    v57[0] = **(&v61 + 1);
    LOWORD(v50) = *(v57[0] + 40);
    v53 = &v50;
    std::__tree<std::__value_type<unsigned short,gdc::Registry *>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,gdc::Registry *>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,gdc::Registry *>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(v49 + 160, v50)[5] = v57[0];
    if (*(v49 + 922) == 1)
    {
      v53 = &unk_1F2A18188;
      v54 = v57;
      v56 = &v53;
      md::overlayComponents::forEachTagInRegistry<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>(v57[0], &v53);
      std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](&v53);
      v53 = &unk_1F2A181D0;
      v54 = v57;
      v56 = &v53;
      md::overlayComponents::forEachTagInRegistry<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>,md::overlayComponents::FoundationMeshType<(gss::MeshType)21>,md::overlayComponents::FoundationMeshType<(gss::MeshType)23>>(v57[0], &v53);
    }

    else
    {
      v53 = &unk_1F2A18218;
      v54 = v57;
      v56 = &v53;
      md::overlayComponents::forEachTagInRegistry<md::overlayComponents::FoundationMeshType<(gss::MeshType)3>,md::overlayComponents::FoundationMeshType<(gss::MeshType)21>,md::overlayComponents::FoundationMeshType<(gss::MeshType)23>,md::overlayComponents::FoundationMeshType<(gss::MeshType)0>,md::overlayComponents::FoundationMeshType<(gss::MeshType)2>,md::overlayComponents::FoundationMeshType<(gss::MeshType)20>>(v57[0], &v53);
    }

    std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](&v53);
    md::FilteredIterator<std::vector<gdc::Registry *>>::operator++(&v61);
  }

  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v59);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v62);
  v36 = *(v49 + 136);
  v57[0] = &unk_1F2A18140;
  v57[3] = v57;
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::__value_func[abi:nn200100](&v58, v57);
  md::FilteredIterator<std::vector<gdc::Registry *>>::FilteredIterator(&v61, v36 + 408, &v58, *(v36 + 408));
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v58);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v57);
  md::FilteredIterator<std::vector<gdc::Registry *>>::begin(&v58, &v61);
  md::FilteredIterator<std::vector<gdc::Registry *>>::end(&v53, &v61);
  while (v54 != *(&v58 + 1))
  {
    std::__tree<std::__value_type<unsigned short,gdc::Registry *>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,gdc::Registry *>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,gdc::Registry *>>>::__erase_unique<unsigned short>((v49 + 160), *(**(&v58 + 1) + 40));
    md::FilteredIterator<std::vector<gdc::Registry *>>::operator++(&v58);
  }

  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v55);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v59);
  v37 = *(v49 + 136);
  v38 = *(v37 + 456);
  v39 = *(v37 + 464);
  while (v38 != v39)
  {
    v47 = *v38++;
    std::__tree<std::__value_type<unsigned short,gdc::Registry *>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,gdc::Registry *>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,gdc::Registry *>>>::__erase_unique<unsigned short>((v49 + 160), v47);
  }

  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v62);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&v68);
  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x9F2276D081C2CB20);
  v40 = gdc::Registry::storage<md::overlayComponents::TileIsInView>(*(v49 + 152));
  v41 = v40;
  if (v40[29])
  {
    v42 = v40[28];
    if (v42)
    {
      v43 = v40[31];
      v44 = v40[7];
      v45 = (v40[8] - v44) >> 3;
      do
      {
        *&buf = v44;
        *(&buf + 1) = v45;
        *&v61 = v43;
        v46 = v42[6];
        if (!v46)
        {
          std::__throw_bad_function_call[abi:nn200100]();
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        (*(*v46 + 48))(v46, &v61, &buf);
        v42 = *v42;
      }

      while (v42);
    }
  }

  v41[8] = v41[7];
  v41[11] = v41[10];
  *(&v62 + 1) = 0;
  operator new();
}

void sub_1B29DB928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__function::__value_func<void ()(gdc::Entity)>::~__value_func[abi:nn200100](&a49);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&a61);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](&a67);
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v67 - 208);
  _Unwind_Resume(a1);
}

void md::OverlayContainer::flushCommandQueue(md::OverlayContainer *this)
{
  std::mutex::lock((this + 48));
  v2 = *(this + 7);
  *(this + 7) = *(this + 136);
  *(this + 136) = v2;
  v3 = *(this + 16);
  *(this + 16) = *(this + 19);
  *(this + 19) = v3;
  std::mutex::unlock((this + 48));
  v4 = *(this + 17);
  v5 = *(this + 18);
  if (v4 != v5)
  {
    do
    {
      std::invoke[abi:nn200100]<std::function<void ()(void)> &>(*(v4 + 32));
      v4 += 40;
    }

    while (v4 != v5);
    v4 = *(this + 17);
    v5 = *(this + 18);
  }

  for (; v5 != v4; v5 -= 40)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5 - 32);
  }

  *(this + 18) = v4;
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,geo::allocator_adapter<unsigned long long,mdm::zone_mallocator>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a2 = 0;
  *result = v2;
  *(result + 8) = v3;
  *(result + 16) = *(a2 + 16);
  a2[1] = 0;
  *(result + 20) = 0;
  *(result + 17) = 0;
  v4 = a2[3];
  *(result + 24) = v4;
  *(result + 32) = *(a2 + 32);
  v5 = a2[5];
  *(result + 40) = v5;
  *(result + 48) = *(a2 + 12);
  if (v5)
  {
    v6 = *(v4 + 8);
    v7 = *(result + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
      {
        v6 %= v7;
      }
    }

    else
    {
      v6 &= v7 - 1;
    }

    *(v2 + 8 * v6) = result + 24;
    a2[3] = 0;
    a2[5] = 0;
  }

  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2md13OverlaysLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_19PendingSceneContextENS2_16ElevationContextENS2_13CameraContextENS2_22PendingRegistryContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_15OverlaysContextEE3__1NS_9allocatorISM_EEFv14VKOverlayLevel33VKOverlayResourceFallbackableModeEEclEOSP_OSQ_(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 16) + 16 * *a2 + 80;
  if (!*(v3 + 8 * *a3))
  {
    *(v3 + 8 * *a3) = *(*(result + 8) + 16 * *a2 + 8 * *a3 + 640);
  }

  return result;
}

void std::__function::__func<md::MapEngine::_produceRenderQueue(void)::$_0,std::allocator<md::MapEngine::_produceRenderQueue(void)::$_0>,void ()(unsigned long,double,ggl::RenderTransactionErrorStatus)>::destroy_deallocate(void *a1)
{
  md::MapEngine::_produceRenderQueue(void)::$_0::~$_0(a1 + 1);

  operator delete(a1);
}

void md::LabelFeaturePoolTileInfo::~LabelFeaturePoolTileInfo(md::LabelFeaturePoolTileInfo *this)
{
  v2 = *(this + 50);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 45);
  while (v3)
  {
    v4 = v3;
    v3 = *v3;
    v5 = v4[2];
    if (v5)
    {
      v6 = (*v5)-- == 1;
      if (v6)
      {
        *(v5 + 8) = &unk_1F2A57AD8;
        v7 = *(v5 + 80);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        v48.__vftable = (v5 + 32);
        std::vector<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsTransitLink const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v48);
        v8 = *(v5 + 24);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v8);
        }

        v9 = v4[2];
        v10 = mdm::zone_mallocator::instance(v8);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(v10, v9);
        v4[2] = 0;
      }
    }

    v11 = mdm::zone_mallocator::instance(v2);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>,void *>>(v11, v4);
  }

  v12 = std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::TransitLineLabelFeature,GeoCodecsTransitLink,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 336));
  v13 = *(this + 38);
  while (v13)
  {
    v14 = v13;
    v13 = *v13;
    v15 = v14[2];
    if (v15)
    {
      v6 = (*v15)-- == 1;
      if (v6)
      {
        *(v15 + 8) = &unk_1F2A57B40;
        v16 = *(v15 + 80);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v16);
        }

        v48.__vftable = (v15 + 32);
        std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v48);
        v17 = *(v15 + 24);
        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v17);
        }

        v18 = v14[2];
        v19 = mdm::zone_mallocator::instance(v17);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(v19, v18);
        v14[2] = 0;
      }
    }

    v20 = mdm::zone_mallocator::instance(v12);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(v20, v14);
  }

  v21 = std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PointLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 280));
  v22 = *(this + 31);
  while (v22)
  {
    v23 = v22;
    v22 = *v22;
    v24 = v23[2];
    if (v24)
    {
      v6 = (*v24)-- == 1;
      if (v6)
      {
        *(v24 + 8) = &unk_1F2A57C88;
        v25 = *(v24 + 80);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v25);
        }

        v48.__vftable = (v24 + 32);
        std::vector<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,geo::allocator_adapter<std::pair<md::LabelClientTileOverlay const*,std::shared_ptr<md::LabelClientTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v48);
        v26 = *(v24 + 24);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v26);
        }

        v27 = v23[2];
        v28 = mdm::zone_mallocator::instance(v26);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>::_fast_shared_ptr_control>(v28, v27);
        v23[2] = 0;
      }
    }

    v29 = mdm::zone_mallocator::instance(v21);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>,void *>>(v29, v23);
  }

  v30 = std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::OverlayLineLabelFeature,md::LabelClientTileOverlay,md::LabelClientTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 224));
  v31 = *(this + 24);
  while (v31)
  {
    v32 = v31;
    v31 = *v31;
    v33 = v32[2];
    if (v33)
    {
      v6 = (*v33)-- == 1;
      if (v6)
      {
        *(v33 + 8) = &unk_1F2A57A70;
        v34 = *(v33 + 80);
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v34);
        }

        v48.__vftable = (v33 + 32);
        std::vector<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsContourLinesFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v48);
        v35 = *(v33 + 24);
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v35);
        }

        v36 = v32[2];
        v37 = mdm::zone_mallocator::instance(v35);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(v37, v36);
        v32[2] = 0;
      }
    }

    v38 = mdm::zone_mallocator::instance(v30);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(v38, v32);
  }

  v39 = std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::ContourLineLabelFeature,GeoCodecsContourLinesFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 168));
  v40 = *(this + 17);
  while (v40)
  {
    v41 = v40;
    v40 = *v40;
    v42 = v41[2];
    if (v42)
    {
      v6 = (*v42)-- == 1;
      if (v6)
      {
        *(v42 + 8) = &unk_1F2A57A08;
        v43 = *(v42 + 80);
        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v43);
        }

        v48.__vftable = (v42 + 32);
        std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v48);
        v44 = *(v42 + 24);
        if (v44)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v44);
        }

        v45 = v41[2];
        v46 = mdm::zone_mallocator::instance(v44);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(v46, v45);
        v41[2] = 0;
      }
    }

    v47 = mdm::zone_mallocator::instance(v39);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(v47, v41);
  }

  std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 112));
  std::__hash_table<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,md::LabelFeaturePoolTileInfo::FeatureHash<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,md::LabelFeaturePoolTileInfo::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,mdm::zone_mallocator>>::__deallocate_node(*(this + 10));
  std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100]((this + 56));
  std::__hash_table<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,md::LabelFeaturePoolTileInfo::FeatureHash<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,md::LabelFeaturePoolTileInfo::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,mdm::zone_mallocator>>::__deallocate_node(*(this + 3));

  std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::~unique_ptr[abi:nn200100](this);
}

void *md::MapEngine::_produceRenderQueue(void)::$_0::~$_0(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void md::OverlaysLogic::updateKeyframeAnimationOverrides(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      geo::_retain_ptr<VKOverlay * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&v12, v5);
      v6 = v13;
      v7 = [v6 rasterTileProvider];

      if (v7 && [v7 keyframesCount] >= 2)
      {
        v8 = v13;
        v9 = std::__hash_table<std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,md::OverlaysContext::KeyframeAnimationParameters>>>::find<unsigned int>(*(a3 + 112), *(a3 + 120), [v8 identifier]);
        if (!v9)
        {
          abort();
        }

        v10 = v9;

        v11 = [v7 keyframeIndexOverride];
        if (v11 < 0)
        {
          if (*(v10 + 44) == 1)
          {
            *(v10 + 44) = 0;
          }
        }

        else
        {
          *(v10 + 21) = v11;
          *(v10 + 44) = 1;
        }
      }

      v12 = off_1F2A2D550;
      v5 += 24;
    }

    while (v5 != a2);
  }
}

uint64_t std::__function::__func<md::MapEngine::_produceRenderQueue(void)::$_1,std::allocator<md::MapEngine::_produceRenderQueue(void)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A26748;
  a2[1] = v2;
  return result;
}

uint64_t md::RegistryManager::entering(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::__value_func[abi:nn200100](v8, a3);
  v5 = *(a2 + 432);
  *a1 = a2 + 432;
  a1[1] = v5;
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::__value_func[abi:nn200100]((a1 + 2), v8);
  if (a1[1] != *(*a1 + 8))
  {
    if (!v9)
    {
      v7 = std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100]((a1 + 2));
      std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v8);
      _Unwind_Resume(v7);
    }

    if (((*(*v9 + 48))(v9) & 1) == 0)
    {
      md::FilteredIterator<std::vector<gdc::Registry *>>::operator++(a1);
    }
  }

  return std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v8);
}

void std::__function::__func<md::MapEngine::_produceRenderQueue(void)::$_1,std::allocator<md::MapEngine::_produceRenderQueue(void)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v2 = GEOGetVectorKitPerformanceLog_log;
  v3 = v2;
  v4 = *(v1 + 42080);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RenderLayout", &unk_1B3514CAA, v5, 2u);
  }
}

uint64_t std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void md::MapEngine::_postRender(id *this, double a2)
{
  [this[5207] size];
  v2 = objc_autoreleasePoolPush();
  operator new();
}

void sub_1B29DC874(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void *gdc::Context::context<md::components::SharedTransformData>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x64A448A5CD5D38DBuLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x64A448A5CD5D38DBLL)
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

{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x64A448A5CD5D38DBuLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x64A448A5CD5D38DBLL)
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

void *std::__function::__func<md::OverlaysLogic::updateFoundationSet(void)::$_0,std::allocator<md::OverlaysLogic::updateFoundationSet(void)::$_0>,BOOL ()(gdc::Registry * const&)>::operator()(uint64_t a1, void **a2)
{
  v2 = *a2;
  result = gdc::Context::context<md::components::SharedTransformData>(*a2);
  if (result)
  {
    return (gdc::Context::context<md::overlayComponents::Overlayable>(v2) != 0);
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::FilteredIterator<std::vector<gdc::Registry *>>::operator++(uint64_t *a1)
{
  while (1)
  {
    v2 = *a1;
    v3 = a1[1] + 8;
    a1[1] = v3;
    if (v3 == *(v2 + 8))
    {
      return a1;
    }

    v4 = a1[5];
    if (!v4)
    {
      break;
    }

    if ((*(*v4 + 48))(v4))
    {
      return a1;
    }
  }

  v6 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::MapEngine::_postRender(double)::$_0,std::allocator<md::MapEngine::_postRender(double)::$_0>,void ()(void)>::operator()(v6);
}

uint64_t std::__function::__func<md::MapEngine::_postRender(double)::$_0,std::allocator<md::MapEngine::_postRender(double)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = v2 + 40960;
  md::LayoutContext::frameState(*(v2 + 41888));
  v5 = *(v4 + 632);
  if (v5 == 1)
  {
    v6 = *(v3 + 744);
    v7 = *(v6 + 39);
    v8 = 9.0;
    if (v7 >= 0x201)
    {
      v8 = ((2 * (4 / (v7 >> 9))) | 1);
    }

    if (v7 <= 0x200)
    {
      v7 = 512;
    }

    v9 = vcvtq_u64_f64(vaddq_f64(vdupq_lane_s64(*&v8, 0), vdivq_f64(*(a1 + 24), vdupq_lane_s64(COERCE__INT64(v7), 0))));
    md::World::purge(v6, v9.i64[0] * v9.i64[1]);
  }

  md::LogicManager::runLogicAfter(*(v3 + 968), *(v3 + 936), *(v3 + 768), v5);
  v10 = *(v3 + 984);

  return gdc::LoadingStatusTracker::didLayout(v10);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<void *,md::LabelFeaturePoolTileInfo>,void *> *> *>(v3, v2);
  }
}

uint64_t md::FilteredIterator<std::vector<gdc::Registry *>>::begin(uint64_t *a1, uint64_t **a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::__value_func[abi:nn200100](v8, (a2 + 2));
  v5 = **a2;
  *a1 = v4;
  a1[1] = v5;
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::__value_func[abi:nn200100]((a1 + 2), v8);
  if (a1[1] != *(*a1 + 8))
  {
    if (!v9)
    {
      v7 = std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100]((a1 + 2));
      std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v8);
      _Unwind_Resume(v7);
    }

    if (((*(*v9 + 48))(v9) & 1) == 0)
    {
      md::FilteredIterator<std::vector<gdc::Registry *>>::operator++(a1);
    }
  }

  return std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v8);
}

uint64_t md::FilteredIterator<std::vector<gdc::Registry *>>::end(uint64_t *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::__value_func[abi:nn200100](v8, (a2 + 2));
  v5 = *(*a2 + 8);
  *a1 = v4;
  a1[1] = v5;
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::__value_func[abi:nn200100]((a1 + 2), v8);
  if (a1[1] != *(*a1 + 8))
  {
    if (!v9)
    {
      v7 = std::__throw_bad_function_call[abi:nn200100]();
      std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100]((a1 + 2));
      std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v8);
      _Unwind_Resume(v7);
    }

    if (((*(*v9 + 48))(v9) & 1) == 0)
    {
      md::FilteredIterator<std::vector<gdc::Registry *>>::operator++(a1);
    }
  }

  return std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::~__value_func[abi:nn200100](v8);
}

uint64_t *md::FilteredIterator<std::vector<gdc::Registry *>>::FilteredIterator(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = a4;
  std::__function::__value_func<BOOL ()(gdc::Registry * const&)>::__value_func[abi:nn200100]((a1 + 2), a3);
  if (a1[1] != *(*a1 + 8) && (std::function<BOOL ()(gdc::Registry * const&)>::operator()(*(a3 + 24)) & 1) == 0)
  {
    md::FilteredIterator<std::vector<gdc::Registry *>>::operator++(a1);
  }

  return a1;
}

uint64_t gdc::Registry::storage<md::overlayComponents::TileIsInView>(uint64_t a1)
{
  v3 = 0x9956BFA43F1B46A6;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x9956BFA43F1B46A6);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t a2)
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

LABEL_10:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_10;
  }

  return v6;
}

uint64_t md::FixedLabelLineSegment<3ul>::points(uint64_t a1)
{
  return a1 + 48;
}

{
  return a1 + 48;
}