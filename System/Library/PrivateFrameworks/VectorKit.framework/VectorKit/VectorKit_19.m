uint64_t gdc::LayerDataStore::invalidateAllData(uint64_t this)
{
  for (i = *(this + 8); i != this; i = *(i + 8))
  {
    *(*(i + 128) + 152) = 1;
  }

  return this;
}

void gdc::LayerDataStore::clearAllData(gdc::LayerDataStore *this)
{
  std::__list_imp<geo::MarkedLRUCache<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry>>::clear(this);
  if (*(this + 6))
  {
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(*(this + 5));
    *(this + 5) = 0;
    v2 = *(this + 4);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(this + 3) + 8 * i) = 0;
      }
    }

    *(this + 6) = 0;
  }

  *(this + 8) = this;
  *(this + 9) = 0;
}

void std::__list_imp<geo::MarkedLRUCache<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry>>::clear(uint64_t *a1)
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
        std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>,0>(v2 + 2);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

__n128 geo::linear_set<md::TileSelectionTileSetType,std::less<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>,std::vector<md::TileSelectionTileSetType>>::operator=(__n128 *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    result = *a1;
    v3 = a1[1].n128_u64[0];
    a1->n128_u64[1] = 0;
    a1[1].n128_u64[0] = 0;
    a1->n128_u64[0] = 0;
    *a1 = *a2;
    a1[1].n128_u64[0] = a2[1].n128_u64[0];
    *a2 = result;
    a2[1].n128_u64[0] = v3;
  }

  return result;
}

void *md::TileSelectionLogic::configurationDidChange(md::TileSelectionLogic *this)
{
  v2 = 0;
  v15 = *MEMORY[0x1E69E9840];
  do
  {
    v14[md::TileSelectionTileSetTypeList[v2++]] = -1;
  }

  while (v2 != 9);
  v3 = *(*(this + 15) + 24);
  v13[0] = &unk_1F2A213E8;
  v13[1] = v14;
  v13[2] = this;
  v13[3] = v13;
  gdc::LayerDataManager::forEachLayer(*(v3 + 8), *(v3 + 16), v13);
  std::__function::__value_func<void ()(unsigned short,gdc::LayerDataSource *,gdc::DataKeyRequester *)>::~__value_func[abi:nn200100](v13);
  for (i = 0; i != 9; ++i)
  {
    v5 = md::TileSelectionTileSetTypeList[i];
    v6 = v14[v5];
    if (v6 == -1)
    {
      v14[v5] = 256;
    }

    else
    {
      v7 = *(this + v5 + 16);
      if (v7)
      {
        gdc::TileSelector::setSelectionTileSize(v7, v6);
      }
    }
  }

  *(this + 78) = -1;
  v12[0] = &unk_1F2A21430;
  v12[1] = this;
  v12[2] = v14;
  v12[3] = v12;
  gdc::LayerDataManager::forEachLayer(*(v3 + 8), *(v3 + 16), v12);
  std::__function::__value_func<void ()(unsigned short,gdc::LayerDataSource *,gdc::DataKeyRequester *)>::~__value_func[abi:nn200100](v12);
  if (*(this + 78) == -1)
  {
    *(this + 78) = 1;
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v8 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(this + 78);
    v11[0] = 67109120;
    v11[1] = v9;
    _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_DEBUG, "Min visible zoom: %d", v11, 8u);
  }

  gdc::GlobeTileSelector::purgeCache(*(this + 17));
  gdc::GlobeTileSelector::purgeCache(*(this + 23));
  return gdc::GlobeTileSelector::purgeCache(*(this + 24));
}

uint64_t md::SingleGEOResourceDataRequester::minRequiredTileSizeForTileSet(md::SingleGEOResourceDataRequester *this)
{
  v2 = (*(**(this + 1) + 32))(*(this + 1), *(this + 12));
  if (v2 & 0x100000000) != 0 && (v3 = v2, v4 = (*(**(this + 1) + 24))(*(this + 1), *(this + 12)), (v5))
  {
    if (*(this + 11) != 13 && (*(this + 32) & 1) != 0)
    {
      v6 = *(this + 7);
      v7 = v4 >= v6;
      v8 = v4 - v6;
      if (v8 != 0 && v7)
      {
        v3 = (exp2(-v8) * v3);
      }
    }

    v9 = v3 & 0xFFFFFF00;
    v10 = v3;
    v11 = 0x100000000;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
  }

  return v11 | v9 | v10;
}

void std::__function::__func<md::TileSelectionLogic::configurationDidChange(void)::$_0,std::allocator<md::TileSelectionLogic::configurationDidChange(void)::$_0>,void ()(unsigned short,gdc::LayerDataSource *,gdc::DataKeyRequester *)>::operator()(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *(a1 + 16);
  v7 = (*(**a4 + 64))();
  if ((v7 & 0x100000000) != 0)
  {
    v8 = v7;
    v9 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((*(v6 + 120) + 136), v5);
    if (v9)
    {
      v10 = *(v9 + 10);
    }

    else
    {
      v10 = 0;
    }

    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v11 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if (v5 > 0x51)
      {
        v12 = "<Invalid>";
      }

      else
      {
        v12 = off_1E7B30210[v5];
      }

      if (v10 > 8)
      {
        v13 = "<Invalid>";
      }

      else
      {
        v13 = off_1E7B3B318[v10];
      }

      v18 = 136315650;
      v19 = v12;
      v20 = 1024;
      v21 = v8;
      v22 = 2080;
      v23 = v13;
      _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_DEBUG, "Layer %s wants grid size %d for tile selection set: %s", &v18, 0x1Cu);
    }

    v14 = *(a1 + 8);
    if (*(v14 + 4 * v10) > v8)
    {
      if (v8 <= 0x7F)
      {
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v15 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          if (v5 > 0x51)
          {
            v16 = "<Invalid>";
          }

          else
          {
            v16 = off_1E7B30210[v5];
          }

          v18 = 136315394;
          v19 = v16;
          v20 = 1024;
          v21 = v8;
          _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_DEBUG, "Layer %s wants grid size %d. This is probably a bug!", &v18, 0x12u);
        }

        v14 = *(a1 + 8);
      }

      if (v8 <= 0x80)
      {
        v17 = 128;
      }

      else
      {
        v17 = v8;
      }

      *(v14 + 4 * v10) = v17;
    }
  }
}

uint64_t gdc::LayerDataManager::forEachLayer(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    while (1)
    {
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
      v12 = *v5;
      v10 = v7;
      v11 = v6;
      v8 = *(a3 + 24);
      if (!v8)
      {
        break;
      }

      result = (*(*v8 + 48))(v8, &v12, &v11, &v10);
      v5 += 24;
      if (v5 == a2)
      {
        return result;
      }
    }

    v9 = std::__throw_bad_function_call[abi:nn200100]();
    return gdc::DataKeyRequester::minRequiredTileSizeForTileSet(v9);
  }

  return result;
}

uint64_t md::SequentialGEOResourceDataRequester::minRequiredTileSizeForTileSet(md::SequentialGEOResourceDataRequester *this)
{
  ActiveResourceType = md::SequentialGEOResourceDataRequester::getActiveResourceType(this);
  v3 = (*(**(this + 1) + 32))(*(this + 1), ActiveResourceType);
  if (v3 & 0x100000000) != 0 && (v4 = v3, v5 = (*(**(this + 1) + 24))(*(this + 1), ActiveResourceType), (v6))
  {
    if (*(this + 11) != 13 && (*(this + 32) & 1) != 0)
    {
      v7 = *(this + 7);
      v8 = v5 >= v7;
      v9 = v5 - v7;
      if (v9 != 0 && v8)
      {
        v4 = (exp2(-v9) * v4);
      }
    }

    v10 = v4 & 0xFFFFFF00;
    v11 = v4;
    v12 = 0x100000000;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  return v12 | v10 | v11;
}

uint64_t std::__function::__value_func<void ()(unsigned short,gdc::LayerDataSource *,gdc::DataKeyRequester *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<md::TileSelectionLogic::configurationDidChange(void)::$_1,std::allocator<md::TileSelectionLogic::configurationDidChange(void)::$_1>,void ()(unsigned short,gdc::LayerDataSource *,gdc::DataKeyRequester *)>::operator()(uint64_t a1, unsigned __int16 *a2, uint64_t a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *a2;
  v7 = *a4;
  v8 = *(a1 + 8);
  v9 = (*(**a4 + 64))(*a4);
  v10 = (*(*v7 + 48))(v7);
  v12 = v11;
  v13 = std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>((*(v8 + 120) + 136), v5);
  if (v13)
  {
    v14 = *(v13 + 18) == 0;
    if ((v9 & 0x100000000) != 0 && (v12 & 1) != 0 && !*(v13 + 18))
    {
      v15 = *(*(a1 + 16) + 4 * *(v13 + 10));
      v16 = (*(*v7 + 40))(v7);
      v18 = v17;
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v19 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        if (v6 > 0x51)
        {
          v20 = "<Invalid>";
        }

        else
        {
          v20 = off_1E7B30210[v6];
        }

        v24 = HIDWORD(v16);
        v25 = log2((v9 / v15));
        v30 = 136316418;
        if ((v16 & 0x100000000) != 0)
        {
          v26 = v16;
        }

        else
        {
          v26 = -1;
        }

        v31 = v20;
        v32 = 2048;
        if ((v18 & 0x100000000) != 0)
        {
          v27 = v18;
        }

        else
        {
          v27 = -1;
        }

        v33 = v25;
        v34 = 1024;
        v35 = v10;
        v36 = 1024;
        v37 = HIDWORD(v10);
        v38 = 1024;
        v39 = v26;
        v40 = 1024;
        v41 = v27;
        _os_log_impl(&dword_1B2754000, v19, OS_LOG_TYPE_DEBUG, "Layer: %s Tile Adjust: %f, Download: %d, %d, Visible: %d, %d", &v30, 0x2Eu);
      }

      else
      {
        v24 = HIDWORD(v16);
      }

      v28 = *(v8 + 312);
      if (v24)
      {
        v29 = v16;
      }

      else
      {
        v29 = v10;
      }

      if (v29 >= v10)
      {
        v29 = v10;
      }

      if (v29 < v28)
      {
        v28 = v29;
      }

      *(v8 + 312) = v28;
      return;
    }
  }

  else
  {
    v14 = 0;
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v21 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    if (v6 > 0x51)
    {
      v22 = "<Invalid>";
    }

    else
    {
      v22 = off_1E7B30210[v6];
    }

    v23 = "n";
    if (v14)
    {
      v23 = "y";
    }

    v30 = 136315394;
    v31 = v22;
    v32 = 2080;
    v33 = *&v23;
    _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_DEBUG, "Skipping Layer: %s, isRequired: %s", &v30, 0x16u);
  }
}

void *gdc::GlobeTileSelector::purgeCache(gdc::GlobeTileSelector *this)
{
  if (*(this + 29))
  {
    v2 = *(this + 28);
    if (v2)
    {
      do
      {
        v3 = *v2;
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    *(this + 28) = 0;
    v4 = *(this + 27);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*(this + 26) + 8 * i) = 0;
      }
    }

    *(this + 29) = 0;
  }

  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(this + 31);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 8);
  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(this + 13);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 17);

  return std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(this + 22);
}

void ***std::unique_ptr<gdc::LogicExecutionGraph>::~unique_ptr[abi:nn200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<gdc::LogicExecutionNode>::__destroy_vector::operator()[abi:nn200100](&v4);
    MEMORY[0x1B8C62190](v2, 0x20C40960023A9);
  }

  return a1;
}

void *md::CartographicMapEngineMode::didBecomeActive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = a2 + 40960;
  v8 = *(a2 + 41928);
  v9 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8 + 16), 0x87BA2765F9E38E05);
  if (v9)
  {
    v10 = v9[5];
  }

  else
  {
    v10 = 0;
  }

  v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8 + 16), 0xAF46DE79C836B0D8);
  if (v11)
  {
    if (v10)
    {
      v12 = v11[5];
      if (v12)
      {
        v13 = *a4;
        v14 = a4[1];
        while (v13 != v14)
        {
          if (*v13 == 6)
          {
            if (v13 != v14)
            {
              v15 = 2 * (*(v13 + 8) != 0);
              goto LABEL_14;
            }

            break;
          }

          v13 += 16;
        }

        v15 = 0;
LABEL_14:
        v16 = +[VKPlatform sharedPlatform];
        v17 = [v16 tilePrefetchNumberOfScreens];
        v18 = *a4;
        v19 = a4[1];
        while (1)
        {
          if (v18 == v19)
          {
            goto LABEL_21;
          }

          if (*v18 == 7)
          {
            break;
          }

          v18 += 16;
        }

        if (v18 == v19)
        {
LABEL_21:
          v21 = 1;
          goto LABEL_22;
        }

        v20 = *(v18 + 8);
        v21 = v20 == 0;
        if (v20)
        {
          v22 = 1000;
          goto LABEL_23;
        }

LABEL_22:
        v22 = 0;
LABEL_23:
        *(v12 + 328) = v15;
        if (*(v7 + 1072) == 1)
        {
          v23 = 0;
        }

        else
        {
          v23 = *(a1 + 616);
        }

        *(v10 + 224) = v23;
        if (*(v10 + 240) != v22 || *(v10 + 252) != v17)
        {
          *(v10 + 240) = v22;
          *(v10 + 252) = v17;
          if (v21)
          {
            *(v10 + 256) = 0x7FFFFFFFFFFFFFFFLL;
          }
        }

        md::TileSelectionLogic::configurationDidChange(v12);

        v8 = *(v7 + 968);
      }
    }
  }

  v24 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8 + 16), 0x2FED70A4459DFCA1uLL);
  if (v24)
  {
    v25 = v24[5];
    if (v25)
    {
      if (*(v25 + 168) != 6)
      {
        md::StyleLogic::setMapMode(v24[5], 0, 0.0);
      }

      md::StyleLogic::setGroundMode(v25, 0);
      v8 = *(v7 + 968);
    }
  }

  v26 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8 + 16), 0xDAD5CEE0DC5FF509);
  if (v26)
  {
    v27 = v26[5];
    if (v27)
    {
      *(v27 + 168) = 0;
    }
  }

  v28 = *(*(a3 + 41672) + 40);
  if (*(*(a3 + 41672) + 48) == v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = *v28;
  }

  if (*(a1 + 644) == 1)
  {
    v30 = (a1 + 628);
    v31 = (v29 + 56);
    v32 = *(v29 + 72);
    if (v32 == 1)
    {
      for (i = 0; i != 16; i += 4)
      {
        *(v31 + i) = *(v30 + i);
      }
    }

    else
    {
      if (v32)
      {
        v34 = 0;
      }

      else
      {
        *v31 = *v30;
        v34 = 1;
      }

      *(v29 + 72) = v34;
    }
  }

  else if (*(v29 + 72))
  {
    *(v29 + 72) = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v7 + 968) + 16), 0x17767EADC5B287BuLL);
  if (result)
  {
    v36 = result[5];
    if (v36)
    {
      *(v36 + 288) = 0;
    }
  }

  return result;
}

void md::StandardMapEngineMode::didBecomeActive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  md::CartographicMapEngineMode::didBecomeActive(a1, a2, a3, a4);
  v6 = *(*(a3 + 41672) + 40);
  v7 = *(*(a3 + 41672) + 48) - v6;
  if (v7 < 0xF0)
  {
    return;
  }

  v8 = v6[29];
  if (v7 >= 0xF8)
  {
    v9 = v6[30];
    if (v7 >= 0x101)
    {
      v10 = v6[32];
      if (!v8)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  if (v8)
  {
LABEL_6:
    md::DaVinciGroundRenderLayer::setSupportsVKM(v8, *(a1 + 648));
  }

LABEL_7:
  if (v9)
  {
    md::DaVinciGroundRenderLayer::setSupportsVKM(v9, *(a1 + 648));
  }

  if (v10)
  {
    v11 = *(a1 + 648);

    md::DaVinciGroundRenderLayer::setSupportsVKM(v10, v11);
  }
}

void md::StyleLogic::setMapMode(uint64_t a1, int a2, float a3)
{
  if (*(a1 + 168) != a2)
  {
    v7 = *(a1 + 1184);
    if (v7)
    {
      [v7 stop];
    }

    gss::ClientStyleState<gss::PropertyID>::setTargetClientStyleAttribute(*(a1 + 208), 0x10000u, a2);
    gss::ClientStyleState<gss::ScenePropertyID>::setTargetClientStyleAttribute(*(a1 + 224), 0x10000u, a2);
    *(a1 + 168) = a2;

    md::StyleLogic::queueStyleTransition(a1, a3);
  }
}

void md::StyleLogic::setGroundMode(uint64_t a1, int a2)
{
  if (*(a1 + 173) != a2)
  {
    v8 = v2;
    v9 = v3;
    *(a1 + 173) = a2;
    gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(a1 + 208), 0x10051u, a2);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(a1 + 224), 0x10051u, *(a1 + 173));
    v6 = 4;
    geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((a1 + 1128), &v6);
    v5 = **(a1 + 1240);
    if (v5)
    {
      v7 = 12;
      md::MapEngine::setNeedsTick(v5, &v7);
    }
  }
}

void md::DaVinciGroundRenderLayer::setSupportsVKM(md::DaVinciGroundRenderLayer *this, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(this + 33) != a2)
  {
    *(this + 33) = a2;
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v3 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(this + 3704);
      v5 = *(this + 33);
      v6[0] = 67109376;
      v6[1] = v4;
      v7 = 1024;
      v8 = v5;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[FeatureFlag]DaVinciGroundRenderLayer(%d):%d", v6, 0xEu);
    }
  }
}

void md::LabelLayerDataSource::didDeactivate(md::LabelLayerDataSource *this)
{
  v2 = *(this + 103);
  *(this + 51) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1B2904124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  gdc::ReferenceCountedAccess<unsigned long>::~ReferenceCountedAccess(va);

  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(md::VKCameraRegionChange &)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v8 = v7;
      (*(*v3 + 24))(v3, v7);
    }

    else
    {
      v8 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 != a1)
  {
    v4 = v8;
    v5 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v5 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<void ()(md::VKCameraRegionChange &)>::~__value_func[abi:nn200100](v7);
  return a1;
}

void *gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::ReferenceCountedAccess(void *a1, __int128 *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[5] = 0;
  a1[9] = 0;
  std::function<void ()(md::VKCameraRegionChange &)>::operator=((a1 + 2), (a2 + 1));
  std::function<void ()(md::VKCameraRegionChange &)>::operator=((a1 + 6), (a2 + 3));
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = a1[1];
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return a1;
}

void sub_1B29044E4(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(md::VKCameraRegionChange &)>::~__value_func[abi:nn200100](v1 + 48);
  std::__function::__value_func<void ()(md::VKCameraRegionChange &)>::~__value_func[abi:nn200100](v1 + 16);
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::VKCameraRegionChange &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    if (v2)
    {
      if (*(v2 + 8) == 1)
      {
        v3 = a1[9];
        if (v3)
        {
          (*(*v3 + 48))(v3);
          v4 = a1[1];
          *a1 = 0;
          a1[1] = 0;
          if (v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v4);
          }
        }
      }
    }
  }

  std::__function::__value_func<void ()(md::VKCameraRegionChange &)>::~__value_func[abi:nn200100]((a1 + 6));
  std::__function::__value_func<void ()(md::VKCameraRegionChange &)>::~__value_func[abi:nn200100]((a1 + 2));
  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return a1;
}

void sub_1B2904624(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(md::VKCameraRegionChange &)>::~__value_func[abi:nn200100](v1 + 48);
  std::__function::__value_func<void ()(md::VKCameraRegionChange &)>::~__value_func[abi:nn200100](v1 + 16);
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::operator=(uint64_t a1, __int128 *a2)
{
  v8[10] = *MEMORY[0x1E69E9840];
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::ReferenceCountedAccess(v8, a1);
  std::function<void ()(md::VKCameraRegionChange &)>::operator=(a1 + 16, (a2 + 1));
  std::function<void ()(md::VKCameraRegionChange &)>::operator=(a1 + 48, (a2 + 3));
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v8);
  return a1;
}

uint64_t std::function<void ()(unsigned long &)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v8 = v7;
      (*(*v3 + 24))(v3, v7);
    }

    else
    {
      v8 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 != a1)
  {
    v4 = v8;
    v5 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v5 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<void ()(unsigned long &)>::~__value_func[abi:nn200100](v7);
  return a1;
}

void *gdc::ReferenceCountedAccess<unsigned long>::ReferenceCountedAccess(void *a1, __int128 *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[5] = 0;
  a1[9] = 0;
  std::function<void ()(unsigned long &)>::operator=((a1 + 2), (a2 + 1));
  std::function<void ()(unsigned long &)>::operator=((a1 + 6), (a2 + 3));
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = a1[1];
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  return a1;
}

void sub_1B2904A78(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(unsigned long &)>::~__value_func[abi:nn200100](v1 + 48);
  std::__function::__value_func<void ()(unsigned long &)>::~__value_func[abi:nn200100](v1 + 16);
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned long &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *gdc::ReferenceCountedAccess<unsigned long>::~ReferenceCountedAccess(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    if (v2)
    {
      if (*(v2 + 8) == 1)
      {
        v3 = a1[9];
        if (v3)
        {
          (*(*v3 + 48))(v3);
          v4 = a1[1];
          *a1 = 0;
          a1[1] = 0;
          if (v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v4);
          }
        }
      }
    }
  }

  std::__function::__value_func<void ()(unsigned long &)>::~__value_func[abi:nn200100]((a1 + 6));
  std::__function::__value_func<void ()(unsigned long &)>::~__value_func[abi:nn200100]((a1 + 2));
  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return a1;
}

void sub_1B2904BB8(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(unsigned long &)>::~__value_func[abi:nn200100](v1 + 48);
  std::__function::__value_func<void ()(unsigned long &)>::~__value_func[abi:nn200100](v1 + 16);
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

void md::World::setStyleManager(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  while (v4 != v5)
  {
    if (*v4 == 1)
    {
      if (v4 != v5)
      {
        v6 = *(v4 + 8);
        if (v6)
        {
          v7 = *a2;
          v8 = *(a2 + 8);
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::PolygonLayerDataSource::setStyleManager(v6, v7, v8);
          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v8);
          }
        }
      }

      break;
    }

    v4 += 16;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  while (v9 != v10)
  {
    if (*v9 == 59)
    {
      if (v9 != v10)
      {
        v11 = *(v9 + 8);
        if (v11)
        {
          v12 = *a2;
          v13 = *(a2 + 8);
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::PolygonLayerDataSource::setStyleManager(v11, v12, v13);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v13);
          }
        }
      }

      break;
    }

    v9 += 16;
  }

  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  if (v14 != v15)
  {
    v19 = *(a1 + 32);
    while (*v19 != 57)
    {
      v19 += 16;
      if (v19 == v15)
      {
        goto LABEL_22;
      }
    }

    if (v19 != v15)
    {
      v56 = *(v19 + 8);
      if (v56)
      {
        v58 = *a2;
        v57 = *(a2 + 8);
        if (v57)
        {
          atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
        }

        *(v56 + 784) = v58;
        v59 = *(v56 + 792);
        *(v56 + 792) = v57;
        if (v59)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v59);
        }

        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
      }
    }
  }

LABEL_22:
  if (v14 == v15)
  {
    goto LABEL_23;
  }

  v18 = v14;
  while (*v18 != 58)
  {
    v18 += 16;
    if (v18 == v15)
    {
      goto LABEL_23;
    }
  }

  if (v18 != v15)
  {
    v52 = *(v18 + 8);
    if (v52)
    {
      v54 = *a2;
      v53 = *(a2 + 8);
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1uLL, memory_order_relaxed);
      }

      *(v52 + 784) = v54;
      v55 = *(v52 + 792);
      *(v52 + 792) = v53;
      if (v55)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v55);
      }

      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
    }
  }

LABEL_23:
  while (v14 != v15)
  {
    if (*v14 == 41)
    {
      if (v14 != v15)
      {
        v49 = *(v14 + 8);
        if (v49)
        {
          v50 = *a2;
          v51 = *(a2 + 8);
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::PolygonLayerDataSource::setStyleManager(v49, v50, v51);
          if (v51)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v51);
          }
        }
      }

      break;
    }

    v14 += 16;
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  while (v16 != v17)
  {
    if (*v16 == 2)
    {
      if (v16 != v17)
      {
        v20 = *(v16 + 8);
        if (v20)
        {
          v21 = *a2;
          v22 = *(a2 + 8);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::TrafficLayerDataSource::setStyleManager(v20, v21, v22);
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v22);
          }
        }
      }

      break;
    }

    v16 += 16;
  }

  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  while (v23 != v24)
  {
    if (*v23 == 42)
    {
      if (v23 != v24)
      {
        v25 = *(v23 + 8);
        if (v25)
        {
          v26 = *a2;
          v27 = *(a2 + 8);
          if (v27)
          {
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::TrafficLayerDataSource::setStyleManager(v25, v26, v27);
          if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v27);
          }
        }
      }

      break;
    }

    v23 += 16;
  }

  v28 = *(a1 + 32);
  v29 = *(a1 + 40);
  while (v28 != v29)
  {
    if (*v28 == 3)
    {
      if (v28 != v29)
      {
        v30 = *(v28 + 8);
        if (v30)
        {
          v31 = *a2;
          v32 = *(a2 + 8);
          if (v32)
          {
            atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::TrafficLayerDataSource::setStyleManager(v30, v31, v32);
          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v32);
          }
        }
      }

      break;
    }

    v28 += 16;
  }

  v33 = *(a1 + 32);
  v34 = *(a1 + 40);
  while (v33 != v34)
  {
    if (*v33 == 52)
    {
      if (v33 != v34)
      {
        v35 = *(v33 + 8);
        if (v35)
        {
          v36 = *a2;
          v37 = *(a2 + 8);
          if (v37)
          {
            atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::TrafficLayerDataSource::setStyleManager(v35, v36, v37);
          if (v37)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v37);
          }
        }
      }

      break;
    }

    v33 += 16;
  }

  v38 = *(a1 + 32);
  v39 = *(a1 + 40);
  if (v38 == v39)
  {
    goto LABEL_89;
  }

  v40 = *(a1 + 32);
  while (*v40 != 53)
  {
    v40 += 16;
    if (v40 == v39)
    {
      goto LABEL_89;
    }
  }

  if (v40 != v39)
  {
    v41 = *(v40 + 8);
    if (v41)
    {
      v42 = *a2;
      v43 = *(a2 + 8);
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      md::TrafficLayerDataSource::setStyleManager(v41, v42, v43);
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v43);
      }

      *(v41 + 792) = 1;
      v38 = *(a1 + 32);
      v39 = *(a1 + 40);
    }
  }

LABEL_89:
  while (v38 != v39)
  {
    if (*v38 == 4)
    {
      if (v38 != v39)
      {
        v46 = *(v38 + 8);
        if (v46)
        {
          v47 = *a2;
          v48 = *(a2 + 8);
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::TrafficLayerDataSource::setStyleManager(v46, v47, v48);
          if (v48)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v48);
          }
        }
      }

      break;
    }

    v38 += 16;
  }

  v44 = *(a1 + 32);
  v45 = *(a1 + 40);
  while (v44 != v45)
  {
    if (*v44 == 65)
    {
      if (v44 != v45)
      {
        v60 = *(v44 + 8);
        if (v60)
        {
          v61 = *a2;
          v62 = *(a2 + 8);
          if (v62)
          {
            atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::TrafficLayerDataSource::setStyleManager(v60, v61, v62);
          if (v62)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v62);
          }
        }
      }

      break;
    }

    v44 += 16;
  }

  v63 = *(a1 + 32);
  v64 = *(a1 + 40);
  while (v63 != v64)
  {
    if (*v63 == 67)
    {
      if (v63 != v64)
      {
        v65 = *(v63 + 8);
        if (v65)
        {
          v66 = *a2;
          v67 = *(a2 + 8);
          if (v67)
          {
            atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::TrafficLayerDataSource::setStyleManager(v65, v66, v67);
          if (v67)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v67);
          }
        }
      }

      break;
    }

    v63 += 16;
  }

  v68 = *(a1 + 32);
  v69 = *(a1 + 40);
  while (v68 != v69)
  {
    if (*v68 == 68)
    {
      if (v68 != v69)
      {
        v70 = *(v68 + 8);
        if (v70)
        {
          v71 = *a2;
          v72 = *(a2 + 8);
          if (v72)
          {
            atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          md::TrafficLayerDataSource::setStyleManager(v70, v71, v72);
          if (v72)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v72);
          }
        }
      }

      break;
    }

    v68 += 16;
  }

  v73 = *(a1 + 32);
  v74 = *(a1 + 40);
  while (v73 != v74)
  {
    if (*v73 == 6)
    {
      if (v73 != v74)
      {
        v75 = *(v73 + 8);
        if (v75)
        {
          v76 = *a2;
          v77 = *(a2 + 8);
          if (v77)
          {
            atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
            v78 = (v75 + 784);
            v124 = v76;
            v125 = v77;
            atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v78 = (v75 + 784);
            v124 = *a2;
            v125 = 0;
          }

          std::atomic_store[abi:nn200100]<md::RegistryManager>(v78, &v124);
          if (v125)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v125);
          }

          if (v77)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v77);
          }
        }
      }

      break;
    }

    v73 += 16;
  }

  v79 = *(a1 + 32);
  v80 = *(a1 + 40);
  while (v79 != v80)
  {
    if (*v79 == 14)
    {
      if (v79 != v80)
      {
        v81 = *(v79 + 8);
        if (v81)
        {
          v82 = *a2;
          v83 = *(a2 + 8);
          if (v83)
          {
            atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
            v84 = (v81 + 760);
            v124 = v82;
            v125 = v83;
            atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v84 = (v81 + 760);
            v124 = *a2;
            v125 = 0;
          }

          std::atomic_store[abi:nn200100]<md::RegistryManager>(v84, &v124);
          if (v125)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v125);
          }

          if (v83)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v83);
          }
        }
      }

      break;
    }

    v79 += 16;
  }

  v85 = *(a1 + 32);
  v86 = *(a1 + 40);
  if (v85 != v86)
  {
    v101 = *(a1 + 32);
    while (*v101 != 16)
    {
      v101 += 16;
      if (v101 == v86)
      {
        goto LABEL_170;
      }
    }

    if (v101 != v86)
    {
      v122 = *(v101 + 8);
      if (v122)
      {
        v123 = *(a2 + 8);
        v124 = *a2;
        v125 = v123;
        if (v123)
        {
          atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::atomic_store[abi:nn200100]<md::RegistryManager>((v122 + 800), &v124);
        if (v125)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v125);
        }

        v85 = *(a1 + 32);
        v86 = *(a1 + 40);
      }
    }
  }

LABEL_170:
  if (v85 != v86)
  {
    v100 = v85;
    while (*v100 != 17)
    {
      v100 += 16;
      if (v100 == v86)
      {
        goto LABEL_171;
      }
    }

    if (v100 != v86)
    {
      v120 = *(v100 + 8);
      if (v120)
      {
        v121 = *(a2 + 8);
        v124 = *a2;
        v125 = v121;
        if (v121)
        {
          atomic_fetch_add_explicit(&v121->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::atomic_store[abi:nn200100]<md::RegistryManager>((v120 + 800), &v124);
        if (v125)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v125);
        }

        v85 = *(a1 + 32);
        v86 = *(a1 + 40);
      }
    }
  }

LABEL_171:
  if (v85 != v86)
  {
    v90 = v85;
    while (*v90 != 47)
    {
      v90 += 16;
      if (v90 == v86)
      {
        goto LABEL_172;
      }
    }

    if (v90 != v86)
    {
      v104 = *(v90 + 8);
      if (v104)
      {
        md::DaVinciCenterLineRoadsLayerDataSource::setStyleManager(v104, *a2, *(a2 + 8));
        v85 = *(a1 + 32);
        v86 = *(a1 + 40);
      }
    }
  }

LABEL_172:
  if (v85 != v86)
  {
    v98 = v85;
    while (*v98 != 33)
    {
      v98 += 16;
      if (v98 == v86)
      {
        goto LABEL_173;
      }
    }

    if (v98 != v86)
    {
      v113 = *(v98 + 8);
      if (v113)
      {
        md::DaVinciGroundLayerDataSource::setStyleManager(v113, *a2, *(a2 + 8));
        v85 = *(a1 + 32);
        v86 = *(a1 + 40);
      }
    }
  }

LABEL_173:
  if (v85 != v86)
  {
    v97 = v85;
    while (*v97 != 34)
    {
      v97 += 16;
      if (v97 == v86)
      {
        goto LABEL_174;
      }
    }

    if (v97 != v86)
    {
      v112 = *(v97 + 8);
      if (v112)
      {
        md::DaVinciGroundLayerDataSource::setStyleManager(v112, *a2, *(a2 + 8));
        v85 = *(a1 + 32);
        v86 = *(a1 + 40);
      }
    }
  }

LABEL_174:
  if (v85 != v86)
  {
    v96 = v85;
    while (*v96 != 54)
    {
      v96 += 16;
      if (v96 == v86)
      {
        goto LABEL_175;
      }
    }

    if (v96 != v86)
    {
      v111 = *(v96 + 8);
      if (v111)
      {
        md::DaVinciGroundLayerDataSource::setStyleManager(v111, *a2, *(a2 + 8));
        v85 = *(a1 + 32);
        v86 = *(a1 + 40);
      }
    }
  }

LABEL_175:
  if (v85 != v86)
  {
    v95 = v85;
    while (*v95 != 60)
    {
      v95 += 16;
      if (v95 == v86)
      {
        goto LABEL_176;
      }
    }

    if (v95 != v86)
    {
      v109 = *(v95 + 8);
      if (v109)
      {
        v110 = *(a2 + 8);
        v124 = *a2;
        v125 = v110;
        if (v110)
        {
          atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::atomic_store[abi:nn200100]<md::RegistryManager>((v109 + 784), &v124);
        if (v125)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v125);
        }

        v85 = *(a1 + 32);
        v86 = *(a1 + 40);
      }
    }
  }

LABEL_176:
  if (v85 != v86)
  {
    v94 = v85;
    while (*v94 != 44)
    {
      v94 += 16;
      if (v94 == v86)
      {
        goto LABEL_177;
      }
    }

    if (v94 != v86)
    {
      v108 = *(v94 + 8);
      if (v108)
      {
        md::DaVinciCenterLineRoadsLayerDataSource::setStyleManager(v108, *a2, *(a2 + 8));
        v85 = *(a1 + 32);
        v86 = *(a1 + 40);
      }
    }
  }

LABEL_177:
  if (v85 != v86)
  {
    v93 = v85;
    while (*v93 != 45)
    {
      v93 += 16;
      if (v93 == v86)
      {
        goto LABEL_178;
      }
    }

    if (v93 != v86)
    {
      v107 = *(v93 + 8);
      if (v107)
      {
        md::DaVinciCenterLineRoadsLayerDataSource::setStyleManager(v107, *a2, *(a2 + 8));
        v85 = *(a1 + 32);
        v86 = *(a1 + 40);
      }
    }
  }

LABEL_178:
  if (v85 != v86)
  {
    v89 = v85;
    while (*v89 != 46)
    {
      v89 += 16;
      if (v89 == v86)
      {
        goto LABEL_179;
      }
    }

    if (v89 != v86)
    {
      v103 = *(v89 + 8);
      if (v103)
      {
        md::DaVinciCenterLineRoadsLayerDataSource::setStyleManager(v103, *a2, *(a2 + 8));
        v85 = *(a1 + 32);
        v86 = *(a1 + 40);
      }
    }
  }

LABEL_179:
  if (v85 != v86)
  {
    v88 = v85;
    while (*v88 != 48)
    {
      v88 += 16;
      if (v88 == v86)
      {
        goto LABEL_180;
      }
    }

    if (v88 != v86)
    {
      v102 = *(v88 + 8);
      if (v102)
      {
        md::DaVinciCenterLineRoadsLayerDataSource::setStyleManager(v102, *a2, *(a2 + 8));
        v85 = *(a1 + 32);
        v86 = *(a1 + 40);
      }
    }
  }

LABEL_180:
  if (v85 != v86)
  {
    v92 = v85;
    while (*v92 != 49)
    {
      v92 += 16;
      if (v92 == v86)
      {
        goto LABEL_181;
      }
    }

    if (v92 != v86)
    {
      v106 = *(v92 + 8);
      if (v106)
      {
        md::DaVinciCenterLineRoadsLayerDataSource::setStyleManager(v106, *a2, *(a2 + 8));
        v85 = *(a1 + 32);
        v86 = *(a1 + 40);
      }
    }
  }

LABEL_181:
  if (v85 != v86)
  {
    v91 = v85;
    while (*v91 != 50)
    {
      v91 += 16;
      if (v91 == v86)
      {
        goto LABEL_182;
      }
    }

    if (v91 != v86)
    {
      v105 = *(v91 + 8);
      if (v105)
      {
        md::DaVinciCenterLineRoadsLayerDataSource::setStyleManager(v105, *a2, *(a2 + 8));
        v85 = *(a1 + 32);
        v86 = *(a1 + 40);
      }
    }
  }

LABEL_182:
  if (v85 != v86)
  {
    v99 = v85;
    while (*v99 != 12)
    {
      v99 += 16;
      if (v99 == v86)
      {
        goto LABEL_183;
      }
    }

    if (v99 != v86)
    {
      v114 = *(v99 + 8);
      if (v114)
      {
        md::OverlayLayerDataSource::setStyleManager(v114, *a2, *(a2 + 8));
        v85 = *(a1 + 32);
        v86 = *(a1 + 40);
      }
    }
  }

LABEL_183:
  if (v85 == v86)
  {
    goto LABEL_291;
  }

  v87 = v85;
  while (*v87 != 11)
  {
    v87 += 16;
    if (v87 == v86)
    {
      goto LABEL_291;
    }
  }

  if (v87 != v86)
  {
    v115 = *(v87 + 8);
    if (v115)
    {
      md::OverlayLayerDataSource::setStyleManager(v115, *a2, *(a2 + 8));
      v85 = *(a1 + 32);
      v86 = *(a1 + 40);
    }
  }

LABEL_291:
  while (v85 != v86)
  {
    if (*v85 == 64)
    {
      if (v85 != v86)
      {
        v116 = *(v85 + 8);
        if (v116)
        {
          v117 = *a2;
          v118 = *(a2 + 8);
          if (v118)
          {
            atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
            v119 = (v116 + 784);
            v124 = v117;
            v125 = v118;
            atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v119 = (v116 + 784);
            v124 = *a2;
            v125 = 0;
          }

          std::atomic_store[abi:nn200100]<md::RegistryManager>(v119, &v124);
          if (v125)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v125);
          }

          if (v118)
          {

            std::__shared_weak_count::__release_shared[abi:nn200100](v118);
          }
        }
      }

      return;
    }

    v85 += 16;
  }
}

void sub_1B2905764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::PolygonLayerDataSource::setStyleManager(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v4 = a2;
  v5 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::atomic_store[abi:nn200100]<md::RegistryManager>((a1 + 792), &v4);
  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void sub_1B2905844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::atomic_store[abi:nn200100]<md::RegistryManager>(uint64_t *a1, uint64_t *a2)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = *a1;
  *a1 = *a2;
  *a2 = v5;
  v6 = a1[1];
  a1[1] = a2[1];
  a2[1] = v6;

  std::__sp_mut::unlock(sp_mut);
}

void md::TrafficLayerDataSource::setStyleManager(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v4 = a2;
  v5 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::atomic_store[abi:nn200100]<md::RegistryManager>((a1 + 768), &v4);
  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void sub_1B2905934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::DaVinciCenterLineRoadsLayerDataSource::setStyleManager(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v4 = a2;
  v5 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::atomic_store[abi:nn200100]<md::RegistryManager>((a1 + 760), &v4);
  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void sub_1B29059B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::DaVinciGroundLayerDataSource::setStyleManager(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v4 = a2;
  v5 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::atomic_store[abi:nn200100]<md::RegistryManager>((a1 + 784), &v4);
  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void sub_1B2905A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::OverlayLayerDataSource::setStyleManager(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v4 = a2;
  v5 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::atomic_store[abi:nn200100]<md::RegistryManager>((a1 + 840), &v4);
  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void sub_1B2905AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void md::DaVinciGroundLayerDataSource::setRegistryManager(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v4 = a2;
  v5 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::atomic_store[abi:nn200100]<md::RegistryManager>((a1 + 816), &v4);
  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }
}

void sub_1B2905B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::World::setEnableGlobe(uint64_t this, uint64_t a2, char a3)
{
  if (this != a2)
  {
    v3 = this;
    while (*v3 != 44)
    {
      v3 += 16;
      if (v3 == a2)
      {
        goto LABEL_9;
      }
    }

    if (v3 != a2)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        *(v4 + 784) = a3;
      }
    }
  }

LABEL_9:
  if (this != a2)
  {
    v5 = this;
    while (*v5 != 45)
    {
      v5 += 16;
      if (v5 == a2)
      {
        goto LABEL_17;
      }
    }

    if (v5 != a2)
    {
      v6 = *(v5 + 8);
      if (v6)
      {
        *(v6 + 784) = a3;
      }
    }
  }

LABEL_17:
  if (this != a2)
  {
    v7 = this;
    while (*v7 != 46)
    {
      v7 += 16;
      if (v7 == a2)
      {
        goto LABEL_31;
      }
    }

    if (v7 != a2)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        *(v8 + 784) = a3;
        v9 = this;
        while (*v9 != 48)
        {
          v9 += 16;
          if (v9 == a2)
          {
            goto LABEL_31;
          }
        }

        if (v9 != a2)
        {
          v10 = *(v9 + 8);
          if (v10)
          {
            *(v10 + 784) = a3;
          }
        }
      }
    }
  }

LABEL_31:
  if (this != a2)
  {
    v11 = this;
    while (*v11 != 47)
    {
      v11 += 16;
      if (v11 == a2)
      {
        goto LABEL_39;
      }
    }

    if (v11 != a2)
    {
      v12 = *(v11 + 8);
      if (v12)
      {
        *(v12 + 784) = a3;
      }
    }
  }

LABEL_39:
  if (this == a2)
  {
    goto LABEL_49;
  }

  v13 = this;
  while (*v13 != 49)
  {
    v13 += 16;
    if (v13 == a2)
    {
      goto LABEL_49;
    }
  }

  if (v13 != a2)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      *(v14 + 784) = a3;
    }
  }

LABEL_49:
  while (this != a2)
  {
    if (*this == 52)
    {
      if (this != a2)
      {
        v15 = *(this + 8);
        if (v15)
        {
          *(v15 + 792) = a3;
        }
      }

      return this;
    }

    this += 16;
  }

  return this;
}

void md::World::setPreferredUnits(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 24) + 56);
  *(a1 + 400) = a2;
  v5 = gdc::ResourceManager::resourceFetcher(*(v4 + 32), *(v4 + 40), 44);
  if (v5 && *(v5 + 778) != a2)
  {
    *(v5 + 778) = a2;
    v6 = *(a1 + 80);
    v7 = *(a1 + 88);
    while (v6 != v7)
    {
      if (*v6 == 65)
      {
        if (v6 != v7)
        {
          v8 = *(v6 + 8);
          if (v8)
          {
            gdc::LayerDataStore::clearAllData(v8);
          }
        }

        break;
      }

      v6 += 16;
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    while (v9 != v10)
    {
      if (*v9 == 65)
      {
        if (v9 != v10)
        {
          v11 = *(v9 + 8);
          if (v11)
          {
            gdc::LayerDataSource::cancelAllLayerDataRequests(v11);
          }
        }

        break;
      }

      v9 += 16;
    }

    v12 = *(a1 + 80);
    v13 = *(a1 + 88);
    while (v12 != v13)
    {
      if (*v12 == 66)
      {
        if (v12 != v13)
        {
          v14 = *(v12 + 8);
          if (v14)
          {
            gdc::LayerDataStore::clearAllData(v14);
          }
        }

        break;
      }

      v12 += 16;
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    while (v15 != v16)
    {
      if (*v15 == 66)
      {
        if (v15 != v16)
        {
          v17 = *(v15 + 8);
          if (v17)
          {

            gdc::LayerDataSource::cancelAllLayerDataRequests(v17);
          }
        }

        return;
      }

      v15 += 16;
    }
  }
}

uint64_t std::__function::__value_func<void ()(long long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<md::MapEngineSetting,std::function<void ()(long long)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::MapEngineSetting,std::function<void ()(long long)>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<void ()(long long)>::~__value_func[abi:nn200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void gdc::LoadingStatusTracker::setWillStartLoadingCallback(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  std::function<void ()(void)>::operator=(a1 + 96, a2);

  std::mutex::unlock((a1 + 8));
}

void gdc::LoadingStatusTracker::setDidFinishLoadingCallback(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 8));
  std::__function::__value_func<void ()(NSError *)>::__value_func[abi:nn200100](v7, a2);
  v4 = a1 + 128;
  if ((a1 + 128) != v7)
  {
    v5 = v8;
    v6 = *(a1 + 152);
    if (v8 == v7)
    {
      if (v6 == v4)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 152) + 24))(*(a1 + 152), v7);
        (*(**(a1 + 152) + 32))(*(a1 + 152));
        *(a1 + 152) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1 + 128);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 152);
      }

      *(a1 + 152) = v4;
    }

    else if (v6 == v4)
    {
      (*(*v6 + 24))(*(a1 + 152), v7);
      (*(**(a1 + 152) + 32))(*(a1 + 152));
      *(a1 + 152) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 152);
      *(a1 + 152) = v5;
    }
  }

  std::__function::__value_func<void ()(NSError *)>::~__value_func[abi:nn200100](v7);

  std::mutex::unlock((a1 + 8));
}

uint64_t std::__function::__value_func<void ()(NSError *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(NSError *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t gdc::LoadingStatusTracker::setDidUpdateSceneStatusCallback(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 192);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      v9 = v8;
      (*(*v4 + 24))(v4, v8);
    }

    else
    {
      v9 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v3 != v8)
  {
    v5 = v9;
    v6 = *(a1 + 216);
    if (v9 == v8)
    {
      if (v6 == v3)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(**(a1 + 216) + 24))(*(a1 + 216), v8);
        (*(**(a1 + 216) + 32))(*(a1 + 216));
        *(a1 + 216) = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, v3);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = *(a1 + 216);
      }

      *(a1 + 216) = v3;
    }

    else if (v6 == v3)
    {
      (*(*v6 + 24))(*(a1 + 216), v8);
      (*(**(a1 + 216) + 32))(*(a1 + 216));
      *(a1 + 216) = v9;
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 216);
      *(a1 + 216) = v5;
    }
  }

  return std::__function::__value_func<void ()(gdc::SceneStatus)>::~__value_func[abi:nn200100](v8);
}

uint64_t std::__function::__value_func<void ()(gdc::SceneStatus)>::~__value_func[abi:nn200100](uint64_t a1)
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

void gdc::Timer::start(gdc::Timer *this, double a2, int a3)
{
  std::mutex::lock((this + 16));
  if (*(this + 10))
  {
    *(this + 96) = 1;
    *(this + 11) = CFAbsoluteTimeGetCurrent() + a2;
    v6 = a3 == 0;
    v7 = -1.0;
    if (a3)
    {
      v7 = a2;
    }

    *(this + 1) = v7;
    v8 = *(this + 10);
    if (v6)
    {
      v9 = -1;
    }

    else
    {
      v9 = (a2 * 1000000000.0);
    }

    v10 = dispatch_time(0, (a2 * 1000000000.0));
    dispatch_source_set_timer(v8, v10, v9, 0xF4240uLL);
  }

  std::mutex::unlock((this + 16));
}

void md::Monitorable<md::ConfigValue<GEOConfigKeyUint64,unsigned long long>>::setCallbackQueue(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 24))
  {
    GEOConfigRemoveBlockListener();
    v6 = *(a1 + 24);
    *(a1 + 24) = 0;
  }

  std::function<void ()(unsigned long long)>::operator=(a1 + 48, a3);
  v7 = *(a1 + 40);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = _GEOConfigAddBlockListenerForKey();
  v9 = *(a1 + 24);
  *(a1 + 24) = v8;

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }
}

void sub_1B2906868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  _Unwind_Resume(a1);
}

void md::MapEngine::updateLogicsFrequency(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 a5, int a6)
{
  v6 = (a1 + 41928);
  if (!*(a1 + 42032))
  {
    v7 = *v6;
    if (*v6)
    {
      if ((*(v7 + 146) & 1) == 0)
      {
        md::LogicManager::setVariableFrequency(*v6, 1);
        v7 = *v6;
LABEL_37:
        v22 = *(v7 + 200);
        v21 = (v7 + 200);
        if (v22 >= 2)
        {
          *v21 = 1;
        }

        return;
      }

      v13 = gdc::Context::get<md::StyleLogicContext>(a3);
      if (v13)
      {
        v14 = *(v13 + 85);
        if (a2 != 1 && v14 == 3)
        {
          a2 = *(a1 + 47632);
          goto LABEL_11;
        }

        if (v14 == 3)
        {
LABEL_11:
          if ((a5 & 1) != 0 && a4 != 1)
          {
            a4 = *(a1 + 47632);
          }

          v15 = 48032;
LABEL_16:
          if (*(v6[12] + 48) == 17)
          {
            v16 = 1;
          }

          else
          {
            v16 = a2;
          }

          v17 = overwriteVariableRate != 0 && v16 != 1;
          if (v17)
          {
            v18 = overwriteVariableRate;
          }

          else
          {
            v18 = a4;
          }

          if (overwriteVariableRate != 0 && v16 != 1)
          {
            v16 = overwriteVariableRate;
          }

          *(v7 + 192) = *(a1 + v15);
          if (v16 == *(v7 + 168))
          {
            if (a5)
            {
              v19 = a5;
            }

            else
            {
              v19 = 1;
            }

            if (!v17)
            {
              v19 = a5;
            }

            v20 = *(v7 + 160);
            if (v20 == v19 && (v19 & 1) != 0)
            {
              if (v18 == *(v7 + 152))
              {
LABEL_36:
                if (!a6)
                {
                  return;
                }

                goto LABEL_37;
              }
            }

            else if (v20 == v19)
            {
              goto LABEL_36;
            }
          }

          *(a1 + 176) = v16;
          goto LABEL_36;
        }
      }

      v15 = 47952;
      goto LABEL_16;
    }
  }
}

void md::LogicManager::setVariableFrequency(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 168) != a2)
  {
    v4 = GEOGetVectorKitVLRLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = 134217984;
      v6 = a2;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_DEBUG, "[VLR] Update Logics Frequency to %zu", &v5, 0xCu);
    }
  }

  *(a1 + 168) = a2;
}

id GEOGetVectorKitVLRLog(void)
{
  if (GEOGetVectorKitVLRLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVLRLog(void)::onceToken, &__block_literal_global_22380);
  }

  v1 = GEOGetVectorKitVLRLog(void)::log;

  return v1;
}

void ___ZL21GEOGetVectorKitVLRLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "VLR");
  v1 = GEOGetVectorKitVLRLog(void)::log;
  GEOGetVectorKitVLRLog(void)::log = v0;
}

uint64_t __copy_helper_block_ea8_32c47_ZTSNSt3__18weak_ptrIN2md17RunLoopControllerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B2906D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id *md::MapEngine::setDisplayRate(md::MapEngine *this, uint64_t a2, double a3, double a4, double a5)
{
  result = *(this + 17);
  if (result)
  {
    if (*(this + 5264) <= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *(this + 5264);
    }

    if (*(this + 42105) == 1)
    {
      v8 = -1;
    }

    else
    {
      v9 = +[VKPlatform sharedPlatform];
      v10 = [v9 explicitDefaultRefreshRate];

      result = *(this + 17);
      if (v10)
      {
        v11 = (v7 + 1) > 1;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        if (v7 == -1)
        {
          v8 = 0;
        }

        else
        {
          v8 = v7;
        }
      }

      else
      {
        v8 = v10;
      }
    }

    return ggl::DisplayLink::setFrameRate(result, v8, a3, a4, a5);
  }

  return result;
}

id *md::RunLoopController::_updateDisplayRate(md::RunLoopController *this, double a2, double a3, double a4)
{
  result = *this;
  if (result)
  {
    if ((*result[5233] & 1) == 0)
    {
      return md::MapEngine::setDisplayRate(result, *(this + 1), a2, a3, a4);
    }
  }

  return result;
}

uint64_t ggl::DisplayLink::setFrameRate(id *this, int a2, double a3, double a4, double a5)
{
  if (a2 <= 0)
  {
    [this[9] maximumRefreshRate];
    a4 = 1.0;
    a3 = 1.0 / v6;
    a2 = llround(a3);
  }

  v7 = this[9];

  *&a3 = a2;
  *&a4 = a2;
  *&a5 = a2;
  return [v7 setPreferredFrameRateRange:{a3, a4, a5}];
}

uint64_t __assign_helper_atomic_property_(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(GEOResourceManifestManager *)>::__value_func[abi:nn200100](v6, a2);
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

  return std::__function::__value_func<void ()(GEOResourceManifestManager *)>::~__value_func[abi:nn200100](v6);
}

uint64_t std::__function::__value_func<void ()(GEOResourceManifestManager *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(GEOResourceManifestManager *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(GEOExperimentConfiguration *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t __assign_helper_atomic_property__7(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(GEOExperimentConfiguration *)>::__value_func[abi:nn200100](v6, a2);
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

  return std::__function::__value_func<void ()(GEOExperimentConfiguration *)>::~__value_func[abi:nn200100](v6);
}

uint64_t std::__function::__value_func<void ()(GEOExperimentConfiguration *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void sub_1B2907990(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(a1);
}

void sub_1B2907C00(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

ggl::MetalSurface *ggl::MetalSurface::MetalSurface(ggl::MetalSurface *this)
{
  v2 = objc_alloc_init(MEMORY[0x1E69793F0]);
  *this = &unk_1F2A5C188;
  *(this + 1) = v2;
  *(this + 2) = v2;
  return this;
}

uint64_t ggl::MetalSwapchain::MetalSwapchain(uint64_t a1, void *a2, void *a3, int *a4)
{
  v49[5] = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v7 = a2[1];
  *a1 = &unk_1F2A5CFA8;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *a3;
  v10 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v9 = *(a1 + 24);
  }

  *(a1 + 40) = 0;
  v46 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v11 = *a4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v12 = a4[1];
  *(a1 + 96) = 0;
  *(a1 + 64) = v11;
  *(a1 + 88) = v12;
  *(a1 + 104) = 0;
  v13 = *(v9 + 16);
  md::LabelExternalPointFeature::incident(v13);
  objc_claimAutoreleasedReturnValue();
  v48[0] = @"bounds";
  v14 = [MEMORY[0x1E695DFB0] null];
  v49[0] = v14;
  v48[1] = @"position";
  v15 = [MEMORY[0x1E695DFB0] null];
  v49[1] = v15;
  v48[2] = @"contentsScale";
  v16 = [MEMORY[0x1E695DFB0] null];
  v49[2] = v16;
  v48[3] = @"hidden";
  v17 = [MEMORY[0x1E695DFB0] null];
  v45 = a3;
  v49[3] = v17;
  v48[4] = @"contents";
  v18 = [MEMORY[0x1E695DFB0] null];
  v49[4] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:5];
  [v13 setActions:v19];

  v20 = *(*(a1 + 24) + 16);
  md::LabelExternalPointFeature::incident(v20);
  [objc_claimAutoreleasedReturnValue() setOpaque:1];

  v21 = *(*(a1 + 24) + 16);
  md::LabelExternalPointFeature::incident(v21);
  [objc_claimAutoreleasedReturnValue() setHidden:0];

  v22 = *MEMORY[0x1E6979DD0];
  v23 = *(*(a1 + 24) + 16);
  md::LabelExternalPointFeature::incident(v23);
  [objc_claimAutoreleasedReturnValue() setContentsGravity:v22];

  v24 = *(*(a1 + 24) + 16);
  md::LabelExternalPointFeature::incident(v24);
  [objc_claimAutoreleasedReturnValue() setPresentsWithTransaction:1];

  v25 = *(*(a1 + 24) + 16);
  md::LabelExternalPointFeature::incident(v25);
  [objc_claimAutoreleasedReturnValue() setFramebufferOnly:0];

  v26 = *a4 - 1;
  if (v26 > 0x2A)
  {
    v27 = 0;
  }

  else
  {
    v27 = qword_1B341CA70[v26];
  }

  v28 = *(*(a1 + 24) + 16);
  md::LabelExternalPointFeature::incident(v28);
  [objc_claimAutoreleasedReturnValue() setPixelFormat:v27];

  v29 = *(*(a1 + 24) + 16);
  md::LabelExternalPointFeature::incident(v29);
  [objc_claimAutoreleasedReturnValue() setFenceEnabled:1];

  v30 = *(*a2 + 104);
  v31 = *(*(a1 + 24) + 16);
  md::LabelExternalPointFeature::incident(v31);
  [objc_claimAutoreleasedReturnValue() setDevice:v30];

  v32 = a4[1];
  v33 = *(*(a1 + 24) + 16);
  md::LabelExternalPointFeature::incident(v33);
  [objc_claimAutoreleasedReturnValue() setMaximumDrawableCount:v32];

  if (*(a4 + 8) == 1)
  {
    v34 = *(*(a1 + 24) + 16);
    md::LabelExternalPointFeature::incident(v34);
    [objc_claimAutoreleasedReturnValue() setValue:MEMORY[0x1E695E118] forKey:@"disableProMotionCompatibility"];
  }

  v35 = *(*(a1 + 24) + 16);
  md::LabelExternalPointFeature::incident(v35);
  objc_claimAutoreleasedReturnValue();
  v36 = objc_opt_respondsToSelector();

  if (v36)
  {
    v37 = *(*(a1 + 24) + 16);
    md::LabelExternalPointFeature::incident(v37);
    [objc_claimAutoreleasedReturnValue() setWantsIOSurfaceCompression:1];
  }

  v38 = *v45;
  [*(*v45 + 16) contentsScale];
  v40 = v39;
  [*(v38 + 16) bounds];
  ggl::MetalSwapchain::resize(a1, (v41 * v40), (v42 * v40));
  v43 = (2 * a4[1]);
  *(a1 + 96) = v43;
  std::vector<std::shared_ptr<ggl::MetalSwapchainDrawable>>::resize(v46, v43);
  return a1;
}

void sub_1B2908118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, void **a13)
{
  a13 = a11;
  std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&a13);
  v16 = *(v13 + 32);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  v17 = *(v13 + 16);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  _Unwind_Resume(a1);
}

double ggl::MetalSurface::extents(id *this)
{
  [this[2] contentsScale];
  v3 = v2;
  [this[2] bounds];
  return v4 * v3;
}

void ggl::MetalSwapchain::resize(void *a1, unint64_t a2, unint64_t a3)
{
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](a1 + 5);
  std::vector<std::shared_ptr<ggl::MetalSwapchainDrawable>>::resize(a1 + 5, a1[12]);
  a1[13] = 0;
  a1[9] = a2;
  a1[10] = a3;
  v6 = md::LabelExternalPointFeature::incident(*(a1[3] + 16));
  [v6 setDrawableSize:{a2, a3}];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *geo::_retain_ptr<VKCamera * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2A203A8;
  a1[1] = 0;
  v3 = *(a2 + 8);
  v4 = a1[1];
  a1[1] = v3;

  return a1;
}

uint64_t geo::_retain_ptr<VKARWalkingFeatureSet * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;

  return a1;
}

void gss::CartoStyle<gss::PropertyID>::initConditionalStyleList(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 120) & 1) == 0)
  {
    v33 = 0;
    v31 = &v32;
    v32 = 0;
    if (*(a1 + 32))
    {
      v4 = 0;
      v5 = *(a1 + 24);
      v6 = &v5[*(a1 + 32)];
      do
      {
        v7 = (*(a2 + 64) + 16 * *v5);
        gss::CartoStyle<gss::PropertyID>::initConditionalStyleList(*v7, a2);
        v8 = *(*v7 + 64);
        if (*(*v7 + 64))
        {
          v9 = *(*v7 + 56);
          v10 = 16 * v8;
          do
          {
            LODWORD(v30) = *(*v9 + 152);
            v29[0] = &v30;
            *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,unsigned int>,gss::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v31, v30, v29) + 8) = v4++;
            v9 += 16;
            v10 -= 16;
          }

          while (v10);
        }

        ++v5;
      }

      while (v5 != v6);
      if (v33 && a2)
      {
        v11 = v33 + *(a1 + 64);
        memset(v29, 0, 13);
        if ((v11 - 0x10000) >= 0xFFFFFFFFFFFF0001)
        {
          geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,gss::zone_mallocator>>::reallocate(v29, v11);
        }

        if (*(a1 + 32))
        {
          v12 = 0;
          v13 = *(a1 + 24);
          v14 = &v13[*(a1 + 32)];
          do
          {
            v15 = *(*(a2 + 64) + 16 * *v13);
            if (*(v15 + 64))
            {
              v16 = *(v15 + 56);
              v17 = 16 * *(v15 + 64);
              do
              {
                v28 = *(*v16 + 152);
                v30 = &v28;
                if (v12 == *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,unsigned int>,gss::zone_mallocator>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(&v31, v28, &v30) + 8))
                {
                  v18 = LOWORD(v29[1]);
                  if (LOWORD(v29[1]) != 0xFFFFLL && (BYTE4(v29[1]) & 1) == 0 && LOWORD(v29[1]) >= WORD1(v29[1]))
                  {
                    geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,gss::zone_mallocator>>::reallocate(v29, LOWORD(v29[1]) + 1);
                    v18 = LOWORD(v29[1]);
                  }

                  v19 = *v16;
                  *&v29[0][4 * v18] = *v16;
                  if (*(&v19 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v19 + 1) + 8), 1uLL, memory_order_relaxed);
                    LOWORD(v18) = v29[1];
                  }

                  LOWORD(v29[1]) = v18 + 1;
                }

                ++v12;
                ++v16;
                v17 -= 16;
              }

              while (v17);
            }

            ++v13;
          }

          while (v13 != v14);
        }

        v20 = *(a1 + 56);
        v21 = *(a1 + 64);
        v22 = LOWORD(v29[1]);
        if (WORD1(v29[1]) - LOWORD(v29[1]) < v21)
        {
          v23 = v21 + LOWORD(v29[1]) > WORD1(v29[1]) && (v21 + LOWORD(v29[1])) >> 16 == 0;
          if (v23 && (BYTE4(v29[1]) & 1) == 0)
          {
            geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,gss::zone_mallocator>>::reallocate(v29, v21 + LOWORD(v29[1]));
            v22 = LOWORD(v29[1]);
          }
        }

        if (v21)
        {
          v24 = &v20[2 * v21];
          v25 = &v29[0][4 * v22];
          do
          {
            *v25 = *v20;
            v26 = v20[1];
            v25[1] = v26;
            if (v26)
            {
              atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
            }

            v20 += 2;
            v25 += 2;
          }

          while (v20 != v24);
        }

        v27 = v22 + v21;
        LOWORD(v29[1]) = v27;
        if ((BYTE4(v29[1]) & 1) == 0 && WORD1(v29[1]) != v27)
        {
          geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,gss::zone_mallocator>>::reallocate(v29, v27);
        }

        geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(a1 + 56);
        *(a1 + 56) = v29[0];
        *(a1 + 64) = v29[1];
        *(a1 + 68) = BYTE4(v29[1]);
        memset(v29, 0, 13);
        *(a1 + 120) = 1;
        geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(v29);
      }
    }

    std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,unsigned int>,gss::zone_mallocator>>::destroy(v32);
  }
}

void sub_1B2908990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(&a11);
  std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,geo::allocator_adapter<std::__value_type<unsigned int,unsigned int>,gss::zone_mallocator>>::destroy(a15);
  _Unwind_Resume(a1);
}

void geo::intern_vector<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,unsigned short,geo::allocator_adapter<std::shared_ptr<gss::ConditionalStyle<gss::PropertyID>>,gss::zone_mallocator>>::deallocateStorage(uint64_t a1)
{
  v1 = a1;
  if ((*(a1 + 12) & 1) == 0)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*(a1 + 8))
      {
        v3 = 16 * *(a1 + 8);
        v4 = v2 + 1;
        do
        {
          a1 = *v4;
          if (*v4)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](a1);
          }

          v4 += 2;
          v3 -= 16;
        }

        while (v3);
        v2 = *v1;
      }

      v5 = gss::zone_mallocator::instance(a1);
      v6 = pthread_rwlock_rdlock((v5 + 32));
      if (v6)
      {
        geo::read_write_lock::logFailure(v6, "read lock", v7);
      }

      if (v2)
      {
        atomic_fetch_add((v5 + 24), 0xFFFFFFFF);
      }

      malloc_zone_free(*v5, v2);
      geo::read_write_lock::unlock((v5 + 32));
    }
  }

  *(v1 + 5) = 0;
  *v1 = 0;
}

double gdc::CameraFrame<geo::Radians,double>::toRigidTransformMercator(uint64_t a1, double *a2, int a3)
{
  v6 = a2[5];
  v7 = a2[6];
  v8 = __sincos_stret(a2[4] * 0.5);
  v9 = __sincos_stret((v7 + v6) * 0.5);
  v10 = __sincos_stret((v6 - v7) * 0.5);
  *&v42 = v10.__cosval * v8.__sinval;
  *(&v42 + 1) = v10.__sinval * v8.__sinval;
  v43 = v9.__sinval * v8.__cosval;
  v44 = v9.__cosval * v8.__cosval;
  v45 = 0uLL;
  v46 = 0x3FF0000000000000;
  v41[0] = gm::Quaternion<double>::operator*(&v42, &v45);
  v41[1] = v11;
  v41[2] = v12;
  v13 = *a2;
  if (a3)
  {
    v17 = v13 * 0.5;
    v21 = 0.0000000249532021;
  }

  else
  {
    v14 = cos(v13 + v13) * -559.82 + 111132.92;
    v15 = v14 + cos(v13 * 4.0) * 1.175;
    v16 = v15 + cos(v13 * 6.0) * -0.0023;
    v17 = v13 * 0.5;
    v18 = tan(v13 * 0.5 + 0.78103484);
    v19 = log(v18);
    v20 = tan(v17 + 0.789761487);
    v21 = fabs((log(v20) - v19) * 0.159154943) / v16;
  }

  v22 = a2[2];
  v36 = a2[1];
  v23 = tan(v17 + 0.785398163);
  v24 = log(v23);
  v25 = 0;
  v26.f64[0] = v36;
  v26.f64[1] = v24;
  __asm { FMOV            V0.2D, #0.5 }

  v39 = vmlaq_f64(_Q0, vdupq_n_s64(0x3FC45F306DC9C883uLL), v26);
  v40 = v22 * 0.0000000249532021;
  v32 = a2[3] * v21;
  do
  {
    *(&v45 + v25 * 8) = v32 * *&v41[v25];
    ++v25;
  }

  while (v25 != 3);
  v33 = 0;
  v37 = v45;
  v38 = v46;
  do
  {
    *(&v45 + v33 * 8) = *(&v37 + v33 * 8) + v39.f64[v33];
    ++v33;
  }

  while (v33 != 3);
  v34 = v46;
  *a1 = v45;
  *(a1 + 16) = v34;
  result = *&v42;
  *(a1 + 24) = v42;
  *(a1 + 40) = v43;
  *(a1 + 48) = v9.__cosval * v8.__cosval;
  return result;
}

double gm::Quaternion<double>::operator*(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  *&v6.f64[0] = vdupq_laneq_s64(v5, 1).u64[0];
  v6.f64[1] = *a2;
  *&v7.f64[0] = vdupq_laneq_s64(v4, 1).u64[0];
  v8.f64[0] = v7.f64[0];
  v8.f64[1] = *a1;
  v9 = -(*a2 * v4.f64[0] - *a1 * v5.f64[0]);
  v23 = vmlaq_f64(vnegq_f64(vmulq_f64(v8, v5)), v4, v6);
  v24 = v9;
  do
  {
    *&v27[v2 * 8] = v23.f64[v2] + v23.f64[v2];
    ++v2;
  }

  while (v2 != 3);
  v10 = 0;
  v11 = *v27;
  v12 = *&v27[8];
  v25 = *v27;
  v26 = *&v27[8];
  v13 = *(a1 + 24);
  do
  {
    *&v27[v10] = *(&v25 + v10) * v13;
    v10 += 8;
  }

  while (v10 != 24);
  v14 = 0;
  v21 = *v27;
  v22 = *&v27[16];
  do
  {
    *&v27[v14] = *(&v21 + v14) + *(a2 + v14);
    v14 += 8;
  }

  while (v14 != 24);
  v15 = 0;
  v23 = *v27;
  v24 = *&v27[16];
  v16 = -(*&v11 * v4.f64[0] - v12.f64[0] * v3);
  v17 = vdupq_lane_s64(v11, 0);
  v17.f64[0] = v12.f64[1];
  v7.f64[1] = v3;
  v19 = vmlaq_f64(vnegq_f64(vmulq_f64(v12, v7)), v4, v17);
  v20 = v16;
  do
  {
    *&v27[v15 * 8] = v19.f64[v15] + v23.f64[v15];
    ++v15;
  }

  while (v15 != 3);
  return *v27;
}

void sub_1B2909330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(a1);
}

void gm::quaternionFromAngleAxis<double>(uint64_t a1, uint64_t a2, double a3)
{
  v13[0] = gm::Matrix<double,3,1>::normalized<int,void>(a2);
  v13[1] = v5;
  v13[2] = v6;
  v7 = a3 * 0.5;
  v8 = sin(v7);
  for (i = 0; i != 3; ++i)
  {
    *(&v14 + i * 8) = *&v13[i] * v8;
  }

  v12 = v14;
  v10 = v15;
  v11 = cos(v7);
  *a1 = v12;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
}

double gm::Matrix<double,3,1>::normalized<int,void>(uint64_t a1)
{
  v1 = 0;
  v2 = 0.0;
  do
  {
    v2 = v2 + *(a1 + v1) * *(a1 + v1);
    v1 += 8;
  }

  while (v1 != 24);
  v3 = 0;
  v4 = 1.0 / sqrt(v2);
  do
  {
    *(&v6 + v3) = *(a1 + v3) * v4;
    v3 += 8;
  }

  while (v3 != 24);
  return v6;
}

uint64_t gss::ClientStyleState<gss::PropertyID>::targetMapDisplayStyle(uint64_t a1)
{
  gss::ClientStyleState<gss::PropertyID>::targetClientStyleAttributes(v2, a1);
  gss::DisplayStyle::DisplayStyle(&v3, v2);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v2);
  return v3;
}

void gss::ClientStyleState<gss::PropertyID>::targetClientStyleAttributes(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a2 + 16));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(a1, a2 + 240);
  v6 = pthread_rwlock_unlock((a2 + 16));
  if (v6)
  {

    geo::read_write_lock::logFailure(v6, "unlock", v7);
  }
}

uint64_t gss::DisplayStyle::DisplayStyle(uint64_t a1, uint64_t a2)
{
  *a1 = 0x1010000000000;
  v5 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a2, 0x10001u);
  v6 = *(a2 + 12);
  if (v5 == v6)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v2 = (*a2 + *(a2 + 8) + 2 * v5);
    v7 = *v2;
  }

  *a1 = v7;
  v8 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a2, 0x1000Du);
  if (v8 == v6)
  {
    v9 = 0;
  }

  else
  {
    if (v8 < v6)
    {
      v2 = (*a2 + *(a2 + 8) + 2 * v8);
    }

    v9 = *v2;
  }

  *(a1 + 1) = v9;
  v10 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a2, 0x1000Eu);
  v11 = *(a2 + 12);
  if (v10 == v11)
  {
    v12 = 0;
  }

  else
  {
    if (v10 < v11)
    {
      v2 = (*a2 + *(a2 + 8) + 2 * v10);
    }

    v12 = *v2;
  }

  *(a1 + 2) = v12;
  v13 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a2, 0x10084u);
  if (v13 == v11)
  {
    v14 = 0;
  }

  else
  {
    if (v13 < v11)
    {
      v2 = (*a2 + *(a2 + 8) + 2 * v13);
    }

    v14 = *v2;
  }

  *(a1 + 3) = v14;
  v15 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a2, 0x10033u);
  v16 = *(a2 + 12);
  if (v15 == v16)
  {
    v17 = 0;
  }

  else
  {
    if (v15 < v16)
    {
      v2 = (*a2 + *(a2 + 8) + 2 * v15);
    }

    v17 = *v2;
  }

  *(a1 + 4) = v17;
  v18 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a2, 0x1003Cu);
  if (v18 == v16)
  {
    v19 = 1;
  }

  else
  {
    if (v18 < v16)
    {
      v2 = (*a2 + *(a2 + 8) + 2 * v18);
    }

    v19 = *v2;
  }

  *(a1 + 5) = v19;
  v20 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a2, 0x10045u);
  v21 = *(a2 + 12);
  if (v20 == v21)
  {
    v22 = 1;
  }

  else
  {
    if (v20 < v21)
    {
      v2 = (*a2 + *(a2 + 8) + 2 * v20);
    }

    v22 = *v2;
  }

  *(a1 + 6) = v22;
  v23 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(a2, 0x1003Du);
  if (v23 == v21)
  {
    v24 = 0;
  }

  else
  {
    v25 = (*a2 + *(a2 + 8) + 2 * v23);
    if (v23 >= v21)
    {
      v25 = v2;
    }

    v24 = *v25;
  }

  *(a1 + 7) = v24;
  return a1;
}

double md::GridLogic::_defaultMutedBackgroundColor(md::GridLogic *this)
{
  {
    v3 = this;
    this = v3;
    if (v2)
    {
      geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(&md::GridLogic::_defaultMutedBackgroundColor(void)::_defaultMutedBackgroundLinearColor, &kDefaultMutedBackgroundColor);
      this = v3;
    }
  }

  result = *&md::GridLogic::_defaultMutedBackgroundColor(void)::_defaultMutedBackgroundLinearColor;
  *this = md::GridLogic::_defaultMutedBackgroundColor(void)::_defaultMutedBackgroundLinearColor;
  return result;
}

void md::StyleLogic::setUsage(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 174) != a2 || *(a1 + 175) != a3)
  {
    *(a1 + 174) = a2;
    *(a1 + 175) = a3;
    gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(a1 + 208), 0x10071u, a2);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(a1 + 224), 0x10071u, *(a1 + 174));
    gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(a1 + 208), 0x10072u, *(a1 + 175));
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(a1 + 224), 0x10072u, *(a1 + 175));
    v5 = 4;
    geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((a1 + 1128), &v5);
    v4 = **(a1 + 1240);
    if (v4)
    {
      v6 = 12;
      md::MapEngine::setNeedsTick(v4, &v6);
    }
  }
}

void md::StyleLogic::setMapKitClientMode(uint64_t a1, int a2)
{
  if (*(a1 + 176) != a2)
  {
    v8 = v2;
    v9 = v3;
    *(a1 + 176) = a2;
    gss::ClientStyleState<gss::PropertyID>::setClientStyleAttribute(*(a1 + 208), 0x1007Eu, a2);
    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(*(a1 + 224), 0x1007Eu, *(a1 + 176));
    if (*(a1 + 175))
    {
      v6 = 4;
      geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert((a1 + 1128), &v6);
      v5 = **(a1 + 1240);
      if (v5)
      {
        v7 = 12;
        md::MapEngine::setNeedsTick(v5, &v7);
      }
    }
  }
}

void sub_1B290A71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&a38);
  objc_destroyWeak((v42 - 160));
  objc_destroyWeak((v42 - 120));
  objc_destroyWeak((v42 - 112));
  _Unwind_Resume(a1);
}

void md::HomeQueueScheduler::waitForSynchronization(md::HomeQueueScheduler *this, const char *a2)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v4 = (this + 176);
  v8 = (this + 176);
  v9 = 1;
  std::mutex::lock((this + 176));
  if (*(this + 292) != 1 || md::InplaceRunLoop::isRunning(this))
  {
    goto LABEL_3;
  }

  v5.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v14[0] = &unk_1F2A17990;
  v14[1] = &v8;
  v14[3] = v14;
  md::InplaceRunLoop::start(this, v14);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v14);
  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v7 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = a2;
    v12 = 2048;
    v13 = (v6.__d_.__rep_ - v5.__d_.__rep_) * 0.000001;
    _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "Waited for synchronization with background (reason:%s, %f ms)", buf, 0x16u);
  }

  if (v9)
  {
    v4 = v8;
LABEL_3:
    std::mutex::unlock(v4);
  }
}

uint64_t geo::TaskQueue::barrierSync(uint64_t a1, uint64_t a2)
{
  v16[4] = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v9 = *(a1 + 40);
    v10 = md::LabelExternalPointFeature::incident(v9);
    dispatch_sync(v10, &__block_literal_global_740);

    v5 = *(a1 + 16);
    md::LabelExternalPointFeature::incident(v5);
    objc_claimAutoreleasedReturnValue();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3321888768;
    v15[2] = ___ZN3geo9TaskQueue11barrierSyncENSt3__18functionIFvvEEE_block_invoke_2;
    v15[3] = &__block_descriptor_64_ea8_32c27_ZTSNSt3__18functionIFvvEEE_e5_v8__0l;
    v6 = v16;
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v16, a2);
    v8 = v15;
    goto LABEL_6;
  }

  v4 = *(a1 + 57);
  v5 = *(a1 + 16);
  md::LabelExternalPointFeature::incident(v5);
  objc_claimAutoreleasedReturnValue();
  if (v4 != 1)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3321888768;
    v11[2] = ___ZN3geo9TaskQueue11barrierSyncENSt3__18functionIFvvEEE_block_invoke_2_2;
    v11[3] = &__block_descriptor_64_ea8_32c27_ZTSNSt3__18functionIFvvEEE_e5_v8__0l;
    v6 = v12;
    std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v12, a2);
    v8 = v11;
LABEL_6:
    dispatch_barrier_sync(v5, v8);
    goto LABEL_4;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN3geo9TaskQueue11barrierSyncENSt3__18functionIFvvEEE_block_invoke_1;
  block[3] = &__block_descriptor_64_ea8_32c27_ZTSNSt3__18functionIFvvEEE_e5_v8__0l;
  v6 = v14;
  std::__function::__value_func<void ()(void)>::__value_func[abi:nn200100](v14, a2);
  dispatch_async_and_wait(v5, block);
LABEL_4:

  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v6);
}

uint64_t md::MapEngine::clearScene(md::MapEngine *this)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v1 = *(*(this + 11) + 8);
  v3[0] = &unk_1F2A268F8;
  v3[1] = this;
  v3[3] = v3;
  geo::TaskQueue::barrierSync(v1, v3);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v3);
}

void sub_1B290AE58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::MapEngine::clearScene(void)::$_0,std::allocator<md::MapEngine::clearScene(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A268F8;
  a2[1] = v2;
  return result;
}

uint64_t ___ZN3geo9TaskQueue11barrierSyncENSt3__18functionIFvvEEE_block_invoke_1(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:nn200100]();
    return std::function<void ()(md::LogicBase *)>::operator()(v5);
  }
}

uint64_t std::function<void ()(md::LogicBase *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__func<md::MapEngine::clearScene(void)::$_0,std::allocator<md::MapEngine::clearScene(void)::$_0>,void ()(void)>::operator()(v3);
}

void std::__function::__func<md::MapEngine::clearScene(void)::$_0,std::allocator<md::MapEngine::clearScene(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(v1 + 41928);
  v5[0] = &unk_1F2A55D68;
  v6 = v5;
  for (i = *(v2 + 32); i; i = *i)
  {
    std::function<void ()(md::LogicBase *)>::operator()(v6, i[5]);
  }

  std::__function::__value_func<void ()(md::LogicBase *)>::~__value_func[abi:nn200100](v5);
  md::World::clearAllData(*(v1 + 41704));
  (*(**(v1 + 41680) + 40))(*(v1 + 41680));
  v4 = **(v1 + 208);
  if (v4)
  {
    LOBYTE(v5[0]) = 5;
    md::MapEngine::setNeedsTick(v4, v5);
  }
}

void sub_1B290B020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(md::LogicBase *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t gdc::LayerDataSource::cancelAllLayerDataRequests(gdc::LayerDataSource *this)
{
  v28 = *MEMORY[0x1E69E9840];
  if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
  }

  v2 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
  if (os_log_type_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log, OS_LOG_TYPE_DEBUG))
  {
    v3 = (*(**(this + 73) + 16))(*(this + 73));
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v3;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_DEBUG, "%s cancelAllLayerDataRequests", &buf, 0xCu);
  }

  v4 = *(this + 7);
  if (v4)
  {
    v5 = GEOGetGeoDisplayCoreResourceLoadingLog::onceToken;
    do
    {
      if (v5 != -1)
      {
        dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
      }

      v6 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
      if (os_log_type_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log, OS_LOG_TYPE_DEBUG))
      {
        v7 = (*(**(this + 73) + 16))(*(this + 73));
        gdc::LayerDataRequestKey::keysInt32Str(&buf, v4[16]);
        p_buf = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        *v26 = 136315394;
        *&v26[4] = v7;
        *&v26[12] = 2080;
        *&v26[14] = p_buf;
        _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_DEBUG, "%s Cancelling layer data request: %s", v26, 0x16u);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }
      }

      v9 = v4[16][14];
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && (v10 = GEOGetGeoDisplayCoreResourceLoadingLog::log, os_signpost_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log)))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_signpost_emit_with_name_impl(&dword_1B2754000, v10, OS_SIGNPOST_INTERVAL_END, v9, "LayerDataRequest", "status=cancelled", &buf, 2u);
        v5 = GEOGetGeoDisplayCoreResourceLoadingLog::onceToken;
      }

      else
      {
        v5 = -1;
      }

      v4 = *v4;
    }

    while (v4);
    v11 = *(this + 7);
    memset(v26, 0, sizeof(v26));
    for (i = 1065353216; v11; v11 = *v11)
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(&buf, (v11 + 2));
      v12 = v11[17];
      v24 = v11[16];
      v25 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey const&>(v26, &buf);
      if (*(v24 + 209) == 1)
      {
        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(this + 20, *(v24 + 112));
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v25);
      }

      if (buf.__r_.__value_.__r.__words[2] != v23)
      {
        free(buf.__r_.__value_.__r.__words[2]);
      }
    }
  }

  else
  {
    memset(v26, 0, sizeof(v26));
    i = 1065353216;
  }

  for (j = *(this + 12); j; j = *j)
  {
    std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey const&>(v26, (j + 2));
  }

  for (k = *(this + 17); k; k = *k)
  {
    std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey const&>(v26, (k + 2));
  }

  v15 = *(this + 59);
  v16 = *&v26[16];
  if (v15)
  {
    v17 = *&v26[16] == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    do
    {
      *&buf.__r_.__value_.__l.__data_ = 0uLL;
      gdc::LayerDataRequestTracker::_processKey(v15, v16 + 16, &buf, 1);
      v16 = *v16;
    }

    while (v16);
  }

  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::clear(this + 40);
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::clear(this + 80);
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::clear(this + 120);
  v18 = *(this + 2);
  std::mutex::lock((v18 + 80));
  if (*(v18 + 168))
  {
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(*(v18 + 160));
    *(v18 + 160) = 0;
    v19 = *(v18 + 152);
    if (v19)
    {
      for (m = 0; m != v19; ++m)
      {
        *(*(v18 + 144) + 8 * m) = 0;
      }
    }

    *(v18 + 168) = 0;
  }

  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::clear(v18 + 184);
  std::mutex::unlock((v18 + 80));
  return std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table(v26);
}

void gdc::LayerDataManager::cancelAllRequests(gdc::LayerDataManager *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  while (v2 != v3)
  {
    gdc::LayerDataSource::cancelAllLayerDataRequests(*(v2 + 8));
    v2 += 24;
  }

  v4 = *(this + 7);

  gdc::ResourceManager::cleanupResources(v4);
}

os_log_t __GEOGetGeoDisplayCoreResourceLoadingLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit", "ResourceLoading");
  GEOGetGeoDisplayCoreResourceLoadingLog::log = result;
  return result;
}

void std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void gdc::ResourceManager::cleanupResources(gdc::ResourceManager *this)
{
  v75 = *MEMORY[0x1E69E9840];
  if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
  {
    dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
  }

  v2 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = (*(**(this + 56) + 16))(*(this + 56));
    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_DEBUG, "%s cleanupResourceRequests", buf, 0xCu);
  }

  memset(v64, 0, sizeof(v64));
  v65 = 1065353216;
  memset(v62, 0, sizeof(v62));
  v63 = 1065353216;
  v4 = *(this + 39);
  v67[0] = &unk_1F2A60820;
  v67[1] = this;
  v68 = v67;
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = (v4 + 56);
    while (*(v5 + 15) >= 1)
    {
      v7 = *v5;
LABEL_68:
      v5 = v7;
      if (!v7)
      {
        goto LABEL_69;
      }
    }

    if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
    {
      dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
    }

    v8 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = (*(**(v4 + 72) + 16))(*(v4 + 72));
      gdc::ResourceKey::keysInt32Str(&__p, v5 + 16);
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v11 = *(v5 + 28);
      v12 = "<Invalid>";
      if (v11 <= 4)
      {
        v12 = off_1E7B58750[v11];
      }

      *buf = 136315650;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = p_p;
      *&buf[22] = 2080;
      v70 = v12;
      _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_DEBUG, "%s Removing %s from Resource status container, status is: %s", buf, 0x20u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v13 = this;
    v14 = *(v5 + 28);
    *buf = *(v5 + 2);
    *&buf[8] = v72;
    *&buf[16] = v72;
    v70 = v72;
    v71 = 32;
    geo::small_vector_base<unsigned char>::append<unsigned char const*>(&buf[8], *(v5 + 3), *(v5 + 4));
    v72[4] = *(v5 + 11);
    v73 = *(v5 + 6);
    v74 = v14;
    v15 = *v6;
    if (*v6)
    {
      v16 = (v4 + 56);
      v17 = *v6;
      do
      {
        v18 = gdc::ResourceKeyLessThan::operator()(v17 + 32, v5 + 16);
        if (v18)
        {
          v19 = 1;
        }

        else
        {
          v19 = 0;
        }

        if (!v18)
        {
          v16 = v17;
        }

        v17 = v17[v19];
      }

      while (v17);
      if (v16 != v6 && (gdc::ResourceKeyLessThan::operator()(v5 + 16, v16 + 32) & 1) == 0)
      {
        v20 = v16[1];
        v21 = v16;
        if (v20)
        {
          do
          {
            v22 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v22 = v21[2];
            v23 = *v22 == v21;
            v21 = v22;
          }

          while (!v23);
        }

        if (*(v4 + 48) == v16)
        {
          *(v4 + 48) = v22;
        }

        --*(v4 + 64);
        std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v15, v16);
        v24 = v16[5];
        if (v24 != v16[7])
        {
          free(v24);
        }

        operator delete(v16);
      }
    }

    v25 = *(v4 + 16);
    v7 = *v5;
    v26 = *(v5 + 1);
    v27 = vcnt_s8(v25);
    v27.i16[0] = vaddlv_u8(v27);
    if (v27.u32[0] > 1uLL)
    {
      this = v13;
      if (v26 >= *&v25)
      {
        v26 %= *&v25;
      }
    }

    else
    {
      v26 &= *&v25 - 1;
      this = v13;
    }

    v28 = *(v4 + 8);
    v29 = *(v28 + 8 * v26);
    do
    {
      v30 = v29;
      v29 = *v29;
    }

    while (v29 != v5);
    if (v30 == (v4 + 24))
    {
      goto LABEL_104;
    }

    v31 = v30[1];
    if (v27.u32[0] > 1uLL)
    {
      if (v31 >= *&v25)
      {
        v31 %= *&v25;
      }
    }

    else
    {
      v31 &= *&v25 - 1;
    }

    v32 = *v5;
    if (v31 != v26)
    {
LABEL_104:
      if (v7)
      {
        v33 = *(v7 + 1);
        if (v27.u32[0] > 1uLL)
        {
          if (v33 >= *&v25)
          {
            v33 %= *&v25;
          }
        }

        else
        {
          v33 &= *&v25 - 1;
        }

        v32 = *v5;
        if (v33 == v26)
        {
          goto LABEL_58;
        }
      }

      *(v28 + 8 * v26) = 0;
      v32 = *v5;
    }

    if (!v32)
    {
LABEL_64:
      *v30 = v32;
      *v5 = 0;
      --*(v4 + 32);
      std::__hash_node_destructor<std::allocator<std::__hash_node<gdc::ResourceKey,void *>>>::operator()[abi:nn200100](1, v5);
      if (v68)
      {
        (*(*v68 + 48))(v68, buf);
      }

      if (*&buf[8] != v70)
      {
        free(*&buf[8]);
      }

      goto LABEL_68;
    }

LABEL_58:
    v34 = *(v32 + 1);
    if (v27.u32[0] > 1uLL)
    {
      if (v34 >= *&v25)
      {
        v34 %= *&v25;
      }
    }

    else
    {
      v34 &= *&v25 - 1;
    }

    if (v34 != v26)
    {
      *(*(v4 + 8) + 8 * v34) = v30;
      v32 = *v5;
    }

    goto LABEL_64;
  }

LABEL_69:
  std::__function::__value_func<void ()(std::pair<gdc::ResourceKey,gdc::ResourceStatus> const&)>::~__value_func[abi:nn200100](v67);
  std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::~__hash_table(v62);
  std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::~__hash_table(v64);
  v35 = *(this + 7);
  v36 = *(this + 8);
  if (v35 != v36)
  {
    v61 = *(this + 39);
    v37 = (v61 + 56);
    do
    {
      v39 = *(v35 + 8);
      v38 = *(v35 + 16);
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v40 = *(v61 + 48);
      if (v40 != v37)
      {
        do
        {
          geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::find((v39 + 43), v40 + 32);
          v41 = *(v40 + 1);
          if (v41)
          {
            do
            {
              v42 = v41;
              v41 = *v41;
            }

            while (v41);
          }

          else
          {
            do
            {
              v42 = *(v40 + 2);
              v23 = *v42 == v40;
              v40 = v42;
            }

            while (!v23);
          }

          v40 = v42;
        }

        while (v42 != v37);
      }

      v43 = v39[44];
      v44 = v39[51];
      if (v43 != v44)
      {
        v45 = 0;
        v46 = v39[49] + 1;
        do
        {
          if (!--v46)
          {
            break;
          }

          v47 = *(v43 + 16);
          v48 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>(v39 + 46, v43 + 16);
          if (v48)
          {
            std::__hash_table<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,std::__list_iterator<geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::CacheEntry,void *>>>>::erase(v39 + 46, v48);
            v44 = v39[51];
          }

          v45 += v47;
          v43 = *(v43 + 1);
        }

        while (v43 != v44);
        v49 = v39[44];
        if (v49 != v43)
        {
          v50 = *(*v43 + 8);
          v51 = *v49;
          *(v51 + 8) = v50;
          *v50 = v51;
          do
          {
            v52 = *(v49 + 1);
            --v39[45];
            std::__destroy_at[abi:nn200100]<std::pair<gdc::ResourceKey const,std::shared_ptr<gdc::Resource>>,0>(v49 + 2);
            operator delete(v49);
            v49 = v52;
          }

          while (v52 != v43);
        }

        v53 = v39[52];
        v54 = v53 >= v45;
        v55 = v53 - v45;
        if (!v54)
        {
          v55 = 0;
        }

        v39[52] = v55;
      }

      v56 = v39[35];
      if (v56)
      {
        do
        {
          v57 = v56[15];
          if (v57 && (v58 = std::__shared_weak_count::lock(v57)) != 0 && (v59 = v56[14], std::__shared_weak_count::__release_shared[abi:nn200100](v58), v59))
          {
            v60 = *v56;
          }

          else
          {
            v60 = *v56;
            std::__hash_table<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::__unordered_map_hasher<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::hash<gdc::EntityId>,std::equal_to<gdc::EntityId>,true>,std::__unordered_map_equal<gdc::EntityId,std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>,std::equal_to<gdc::EntityId>,std::hash<gdc::EntityId>,true>,std::allocator<std::__hash_value_type<gdc::EntityId,std::unordered_map<int,VKTimedAnimation * {__strong}>>>>::remove(buf, v39 + 33, v56);
            std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::ResourceKey,std::weak_ptr<gdc::Resource>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::ResourceKey,std::weak_ptr<gdc::Resource>>,void *>>>>::~unique_ptr[abi:nn200100](buf);
          }

          v56 = v60;
        }

        while (v60);
      }

      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v38);
      }

      v35 += 24;
    }

    while (v35 != v36);
  }
}

uint64_t std::__function::__value_func<void ()(std::pair<gdc::ResourceKey,gdc::ResourceStatus> const&)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3 != v1[5])
      {
        free(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void md::AssetInjectionLogic::reset(md::AssetInjectionLogic *this)
{
  v104 = *MEMORY[0x1E69E9840];
  v1 = +[VKDebugSettings sharedSettings];
  v2 = [v1 enableInjectedAssets];

  if (v2)
  {
    if (*(this + 18))
    {
      std::__hash_table<std::shared_ptr<md::SharedResource>,std::hash<std::shared_ptr<md::SharedResource>>,std::equal_to<std::shared_ptr<md::SharedResource>>,std::allocator<std::shared_ptr<md::SharedResource>>>::__deallocate_node(*(this + 17));
      *(this + 17) = 0;
      v3 = *(this + 16);
      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          *(*(this + 15) + 8 * i) = 0;
        }
      }

      *(this + 18) = 0;
    }

    if (*(this + 23))
    {
      std::__hash_table<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<std::shared_ptr<md::InjectedAsset>>>>>::__deallocate_node(*(this + 22));
      *(this + 22) = 0;
      v5 = *(this + 21);
      if (v5)
      {
        for (j = 0; j != v5; ++j)
        {
          *(*(this + 20) + 8 * j) = 0;
        }
      }

      *(this + 23) = 0;
    }

    v7 = objc_alloc(MEMORY[0x1E695DFF8]);
    v8 = GEOResourceDevResourcesPath();
    v9 = [v7 initFileURLWithPath:v8 isDirectory:1];

    v10 = [v9 URLByAppendingPathComponent:@"InjectedAssets.json"];

    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v75 = v10;
    v12 = [v10 path];
    LODWORD(v10) = [v11 fileExistsAtPath:v12];

    if (v10)
    {
      v100 = 0;
      v72 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v75];
      v73 = [MEMORY[0x1E696ACB0] JSONObjectWithData:? options:? error:?];
      v13 = 0;
      if (v13)
      {
        v14 = v72;
        v15 = v73;
        v72 = v13;
        v73 = v14;
      }

      else
      {
        [v73 objectForKey:@"Assets"];
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        obj = v97 = 0u;
        v77 = [obj countByEnumeratingWithState:&v96 objects:v103 count:16];
        if (v77)
        {
          v76 = *v97;
          do
          {
            for (k = 0; k != v77; ++k)
            {
              if (*v97 != v76)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v96 + 1) + 8 * k);
              v94 = 0;
              v95 = 0;
              v84 = v16;
              v17 = [v16 objectForKey:@"ModelID"];
              v18 = [MEMORY[0x1E696AE88] scannerWithString:v17];
              [v18 scanUnsignedLongLong:&v94];

              v19 = [v84 objectForKey:@"MaterialMapID"];
              v20 = [MEMORY[0x1E696AE88] scannerWithString:v19];
              [v20 scanUnsignedLongLong:&v95];

              v21 = [v84 objectForKey:@"MaterialID"];
              v22 = v21;
              if (v21)
              {
                v92 = 0u;
                v93 = 0u;
                v90 = 0u;
                v91 = 0u;
                v23 = v21;
                v24 = [v23 countByEnumeratingWithState:&v90 objects:v102 count:16];
                if (v24)
                {
                  v83 = 0;
                  v25 = *v91;
                  do
                  {
                    for (m = 0; m != v24; ++m)
                    {
                      if (*v91 != v25)
                      {
                        objc_enumerationMutation(v23);
                      }

                      v27 = [MEMORY[0x1E696AE88] scannerWithString:*(*(&v90 + 1) + 8 * m)];
                      v87 = 0;
                      [v27 scanUnsignedLongLong:&v87];
                      v28 = v83;
                      v29 = v83 >> 3;
                      if (((v83 >> 3) + 1) >> 61)
                      {
                        std::__throw_bad_array_new_length[abi:nn200100]();
                      }

                      if (v83 >> 3 != -1)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((v83 >> 3) + 1);
                      }

                      *(8 * v29) = v87;
                      v83 = 8 * v29 + 8;
                      memcpy(0, 0, v28);
                    }

                    v24 = [v23 countByEnumeratingWithState:&v90 objects:v102 count:16];
                  }

                  while (v24);
                }
              }

              v30 = [v84 objectForKey:@"Transforms"];
              memset(v89, 0, sizeof(v89));
              v79 = v30;
              if ([v79 countByEnumeratingWithState:v89 objects:v101 count:16])
              {
                v31 = *v89[1];
                v85 = [*v89[1] objectForKey:@"TileKey"];
                v32 = [v85 objectAtIndexedSubscript:0];
                [v32 intValue];

                v33 = [v85 objectAtIndexedSubscript:1];
                [v33 intValue];

                v34 = [v85 objectAtIndexedSubscript:2];
                [v34 intValue];

                v35 = [v31 objectForKey:@"Transform"];
                v36 = [v35 objectForKey:@"Scale"];
                v37 = [v36 objectAtIndexedSubscript:0];
                [v37 floatValue];
                v82 = v38;

                v39 = [v36 objectAtIndexedSubscript:1];
                [v39 floatValue];
                v81 = v40;

                v41 = [v36 objectAtIndexedSubscript:2];
                [v41 floatValue];
                v43 = v42;

                v44 = [v35 objectForKey:@"Translation"];
                v45 = [v44 objectAtIndexedSubscript:0];
                [v45 floatValue];
                v47 = v46;

                v48 = [v44 objectAtIndexedSubscript:1];
                [v48 floatValue];
                v50 = v49;

                v51 = [v44 objectAtIndexedSubscript:2];
                [v51 floatValue];
                v53 = v52;

                v54 = [v35 objectForKey:@"Rotation"];
                v55 = [v54 objectAtIndexedSubscript:0];
                [v55 floatValue];
                v57 = v56;
                v58 = [v54 objectAtIndexedSubscript:1];
                [v58 floatValue];
                v60 = v59;
                v61 = [v54 objectAtIndexedSubscript:2];
                [v61 floatValue];
                v63 = v62;
                v64 = [v54 objectAtIndexedSubscript:3];
                [v64 floatValue];
                v66 = v65;

                v86[0] = v47;
                v86[1] = v50;
                v86[2] = v53;
                v86[3] = v57;
                v86[4] = v60;
                v86[5] = v63;
                v86[6] = v66;
                v86[7] = v82;
                v86[8] = v81;
                v86[9] = v43;
                v67 = &v87;
                geo::Transform<float>::toMatrix(&v87, v86);
                v68 = 0;
                for (n = &v88; ; n = (n + 4))
                {
                  v70 = 0;
                  v71 = n;
                  do
                  {
                    *v71 = v67[v70];
                    v71 = (v71 + 12);
                    v70 += 2;
                  }

                  while (v70 != 8);
                  ++v68;
                  v67 = (v67 + 4);
                  if (v68 == 3)
                  {
                    operator new();
                  }
                }
              }
            }

            v77 = [obj countByEnumeratingWithState:&v96 objects:v103 count:16];
          }

          while (v77);
        }

        v15 = obj;
      }
    }
  }
}

void md::OverlaysLogic::reset(md::OverlaysLogic *this)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = *(this + 93);
  if (v2)
  {
    v9[0] = &unk_1F2A18598;
    v9[3] = v9;
    geo::TaskQueue::barrierSync(v2, v9);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v9);
  }

  v8[0] = &unk_1F2A185E0;
  v8[1] = this;
  v8[3] = v8;
  md::OverlaysLogic::_forEachOverlayLevelAndFallback(v8);
  std::__function::__value_func<void ()(VKOverlayLevel,VKOverlayResourceFallbackableMode)>::~__value_func[abi:nn200100](v8);
  std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::clear(this + 672);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::MaterialData>>>>::clear(this + 600);
  *(this + 182) = 0;
  v3 = +[VKDebugSettings sharedSettings];
  *(this + 922) = [v3 daVinciUseCollisionMesh];

  v4 = gdc::ResourceManager::downloadZoomRange(*(this + 94), 6);
  if (v5)
  {
    *(this + 924) = v4;
  }

  v7 = *(this + 21);
  v6 = (this + 168);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v7);
  *v6 = 0;
  v6[1] = 0;
  *(v6 - 1) = v6;
}

void sub_1B290CA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3geo9TaskQueue11barrierSyncENSt3__18functionIFvvEEE_block_invoke_2_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x1B290CAECLL);
  }

  v3 = *(*v2 + 48);

  return v3();
}

void std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,std::__unordered_map_hasher<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyHash,md::SurfaceKeyEqual,true>,std::__unordered_map_equal<md::SurfaceKey,std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>,md::SurfaceKeyEqual,md::SurfaceKeyHash,true>,std::allocator<std::__hash_value_type<md::SurfaceKey,std::unordered_map<unsigned long,std::shared_ptr<ggl::IOSurfaceTexture>>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,geo::linear_map<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>,std::equal_to<unsigned char>,std::allocator<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>,std::vector<std::pair<unsigned char,std::list<std::shared_ptr<ggl::IOSurfaceTexture>>>>>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void md::VenueLogic::reset(md::VenueLogic *this)
{
  if (*(this + 29))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::__deallocate_node(*(this + 28));
    *(this + 28) = 0;
    v2 = *(this + 27);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(this + 26) + 8 * i) = 0;
      }
    }

    *(this + 29) = 0;
  }

  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 31);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 36);
  *(this + 60) = 0;
  *(this + 568) = 0u;
  if (*(this + 78))
  {
    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(*(this + 77));
    *(this + 77) = 0;
    v4 = *(this + 76);
    if (v4)
    {
      for (j = 0; j != v4; ++j)
      {
        *(*(this + 75) + 8 * j) = 0;
      }
    }

    *(this + 78) = 0;
  }
}

void *md::MaterialLogic::reset(md::MaterialLogic *this)
{
  v2 = *(this + 15);
  if (*(v2 + 40))
  {
    std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(*(v2 + 32));
    *(v2 + 32) = 0;
    v3 = *(v2 + 24);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*(v2 + 16) + 8 * i) = 0;
      }
    }

    *(v2 + 40) = 0;
  }

  gms::MaterialManager<ggl::Texture2D>::clearCaches(v2);

  return std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 24);
}

double md::FlyoverCompleteTileDataLogic::reset(md::FlyoverCompleteTileDataLogic *this)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v2 = *(this + 76);
  if (v2)
  {
    while (1)
    {
      v3 = v2[3];
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v5 = v2[17];
      v4 = v2[18];
      if (!v4)
      {
        break;
      }

      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_store(1u, (v5 + 32));
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      if (v3)
      {
        goto LABEL_6;
      }

LABEL_7:
      v2 = *v2;
      if (!v2)
      {
        goto LABEL_11;
      }
    }

    atomic_store(1u, (v5 + 32));
    if (!v3)
    {
      goto LABEL_7;
    }

LABEL_6:
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    goto LABEL_7;
  }

LABEL_11:
  v6 = *(*(this + 22) + 128);
  v18[0] = &unk_1F2A3CD28;
  v18[3] = v18;
  geo::TaskQueue::barrierSync(v6, v18);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v18);
  md::FlyoverCompleteTileDataLogic::collectDrapings(this);
  if (*(this + 77))
  {
    std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>>>::__deallocate_node(*(this + 76));
    *(this + 76) = 0;
    v7 = *(this + 75);
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        *(*(this + 74) + 8 * i) = 0;
      }
    }

    *(this + 77) = 0;
  }

  std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::clear(this + 632);
  std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::clear(this + 672);
  std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::clear(this + 184);
  std::__list_imp<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,std::allocator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry>>::clear(this + 33);
  if (*(this + 39))
  {
    v9 = *(this + 38);
    if (v9)
    {
      do
      {
        v10 = *v9;
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    *(this + 38) = 0;
    v11 = *(this + 37);
    if (v11)
    {
      for (j = 0; j != v11; ++j)
      {
        *(*(this + 36) + 8 * j) = 0;
      }
    }

    *(this + 39) = 0;
  }

  *(this + 41) = this + 264;
  *(this + 42) = 0;
  std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>>>::clear(this + 344);
  std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>>>::clear(this + 384);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 92);
  if (*(this + 58))
  {
    v13 = *(this + 57);
    if (v13)
    {
      do
      {
        v14 = *v13;
        operator delete(v13);
        v13 = v14;
      }

      while (v14);
    }

    *(this + 57) = 0;
    v15 = *(this + 56);
    if (v15)
    {
      for (k = 0; k != v15; ++k)
      {
        *(*(this + 55) + 8 * k) = 0;
      }
    }

    *(this + 58) = 0;
  }

  std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(this + 60);
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 101);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 90));
  *(this + 89) = this + 720;
  *(this + 45) = 0u;
  std::__tree<std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>,std::__map_value_compare<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,true>,std::allocator<std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>>>::destroy(*(this + 98));
  *(this + 97) = this + 784;
  result = 0.0;
  *(this + 49) = 0u;
  return result;
}

void md::FlyoverCompleteTileDataLogic::collectDrapings(md::FlyoverCompleteTileDataLogic *this)
{
  std::mutex::lock((this + 528));
  v2 = *(this + 632);
  v3 = *(this + 84);
  *(this + 79) = v3;
  v4 = *(this + 85);
  *(this + 42) = v2;
  v5 = *(this + 81);
  v6 = *(this + 86);
  v7 = *(this + 82);
  v8 = *(this + 87);
  LODWORD(v2) = *(this + 166);
  v9 = *(this + 176);
  *(this + 80) = v4;
  *(this + 81) = v6;
  *(this + 86) = v5;
  *(this + 82) = v8;
  *(this + 87) = v7;
  *(this + 166) = v9;
  *(this + 176) = v2;
  if (v8)
  {
    v10 = *(v6 + 8);
    if ((v4 & (v4 - 1)) != 0)
    {
      if (v10 >= v4)
      {
        v10 %= v4;
      }
    }

    else
    {
      v10 &= v4 - 1;
    }

    *(v3 + 8 * v10) = this + 648;
  }

  if (v7)
  {
    v11 = *(*(this + 86) + 8);
    v12 = *(this + 85);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*(this + 84) + 8 * v11) = this + 688;
  }

  std::mutex::unlock((this + 528));
  v13 = *(this + 76);
  if (v13)
  {
    v14 = (this + 592);
    while (1)
    {
      v15 = atomic_load((v13[17] + 33));
      if (v15)
      {
        break;
      }

      v16 = atomic_load((v13[17] + 32));
      if (v16)
      {
        break;
      }

      v20 = *v13;
LABEL_45:
      v13 = v20;
      if (!v20)
      {
        return;
      }
    }

    v17 = *(this + 600);
    v18 = v13[1];
    v19 = vcnt_s8(v17);
    v19.i16[0] = vaddlv_u8(v19);
    if (v19.u32[0] > 1uLL)
    {
      if (v18 >= *&v17)
      {
        v18 %= *&v17;
      }
    }

    else
    {
      v18 &= *&v17 - 1;
    }

    v20 = *v13;
    v21 = *(*v14 + 8 * v18);
    do
    {
      v22 = v21;
      v21 = *v21;
    }

    while (v21 != v13);
    if (v22 == (this + 608))
    {
      goto LABEL_48;
    }

    v23 = v22[1];
    if (v19.u32[0] > 1uLL)
    {
      if (v23 >= *&v17)
      {
        v23 %= *&v17;
      }
    }

    else
    {
      v23 &= *&v17 - 1;
    }

    v24 = *v13;
    if (v23 != v18)
    {
LABEL_48:
      if (v20)
      {
        v25 = v20[1];
        if (v19.u32[0] > 1uLL)
        {
          if (v25 >= *&v17)
          {
            v25 %= *&v17;
          }
        }

        else
        {
          v25 &= *&v17 - 1;
        }

        v24 = *v13;
        if (v25 == v18)
        {
          goto LABEL_38;
        }
      }

      *(*v14 + 8 * v18) = 0;
      v24 = *v13;
    }

    if (!v24)
    {
LABEL_44:
      *v22 = v24;
      *v13 = 0;
      --*(this + 77);
      v27[0] = v13;
      v27[1] = this + 592;
      v28 = 1;
      memset(v29, 0, sizeof(v29));
      std::unique_ptr<std::__hash_node<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,std::shared_ptr<geo::Task>>,void *>>>>::~unique_ptr[abi:nn200100](v27);
      goto LABEL_45;
    }

LABEL_38:
    v26 = v24[1];
    if (v19.u32[0] > 1uLL)
    {
      if (v26 >= *&v17)
      {
        v26 %= *&v17;
      }
    }

    else
    {
      v26 &= *&v17 - 1;
    }

    if (v26 != v18)
    {
      *(*v14 + 8 * v26) = v22;
      v24 = *v13;
    }

    goto LABEL_44;
  }
}

void std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,true>,std::__unordered_map_equal<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>,md::FlyoverOctilePairHash,true>,std::allocator<std::__hash_value_type<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::vector<md::MeshRenderable *>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::__unordered_map_hasher<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,true>,std::__unordered_map_equal<md::FlyoverCompleteTileDataLogic::DrapingTask,std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>,std::equal_to<md::FlyoverCompleteTileDataLogic::DrapingTask>,md::FlyoverCompleteTileDataLogic::DrapingTaskHash,true>,std::allocator<std::__hash_value_type<md::FlyoverCompleteTileDataLogic::DrapingTask,md::FlyoverCompleteTileDataLogic::MeshStorage>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__list_imp<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry,std::allocator<geo::MarkedLRUCache<std::pair<md::FlyoverOctile,md::FlyoverOctile>,std::list<md::FlyoverDynamicGeometry>,md::FlyoverOctilePairHash,std::equal_to<std::pair<md::FlyoverOctile,md::FlyoverOctile>>>::CacheEntry>>::clear(uint64_t *a1)
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
        std::__list_imp<md::FlyoverDynamicGeometry>::clear(v2 + 14);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::vector<md::FlyoverOctileInstance>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::__unordered_map_hasher<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,md::FlyoverOctileWorldHash,std::equal_to<md::FlyoverOctileWorld>,true>,std::__unordered_map_equal<md::FlyoverOctileWorld,std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>,std::equal_to<md::FlyoverOctileWorld>,md::FlyoverOctileWorldHash,true>,std::allocator<std::__hash_value_type<md::FlyoverOctileWorld,std::pair<std::vector<md::MeshRenderable *>,std::vector<md::FlyoverOctile>>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__tree<std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>,std::__map_value_compare<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,true>,std::allocator<std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>,std::__map_value_compare<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,true>,std::allocator<std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>,std::__map_value_compare<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>,md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfoCompare,true>,std::allocator<std::__value_type<md::FlyoverCompleteTileDataLogic::FlyoverOctileTileInfo,md::FlyoverCompleteTileDataLogic::TransitionInfo>>>::destroy(a1[1]);
    std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(a1[39]);

    operator delete(a1);
  }
}

void md::PendingSceneLogic::reset(md::PendingSceneLogic *this)
{
  v1 = *(this + 27);
  std::__list_imp<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry>>::clear(v1);
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::clear((v1 + 3));
  v1[8] = v1;
  v1[9] = 0;
}

void *std::__list_imp<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry>>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        std::__list_imp<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry>>::__delete_node[abi:nn200100](result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void md::MeshRenderableLogic::reset(md::MeshRenderableLogic *this)
{
  std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::clear(this + 296);
  *(this + 416) = 1;

  geo::Pool<md::TexturedRenderable>::disposeElements(this + 224);
}

void std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,std::vector<md::MeshRenderable *>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void geo::Pool<md::TexturedRenderable>::disposeElements(uint64_t a1)
{
  v23 = 0;
  v24 = 0;
  v22 = &v23;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v22, v2);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v24;
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
          v12 = (v11 + 304 * v10);
          v13 = v23;
          if (!v23)
          {
            goto LABEL_21;
          }

          v14 = &v23;
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
          if (v14 == &v23)
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
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v23);
}

void md::CollectRenderablesLogic<(md::MapDataType)79,md::FlyoverRenderable>::reset(uint64_t a1)
{
  v2 = gdc::ServiceLocator::resolve<md::RenderLayerProvider>(**(a1 + 128), *(*(a1 + 128) + 8));
  v3 = (*(*v2 + 56))(v2);
  md::FlyoverRenderResources::prunePools(v3);
  v4 = (*(*v2 + 48))(v2);
  md::DaVinciGroundRenderResources::prunePools(v4);
  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = *(v5 + 4112);
    v7 = *(v5 + 4128);
    if (*(v5 + 4104) == v6)
    {
      v12 = (v5 + 40960);
      HIWORD(v26) = (*(v5 + 4136) - v7) >> 2;
      LOWORD(v26) = 1;
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v5 + 4128, &v26);
      v8 = v26;
      v13 = v12[8];
      v14 = v12[9];
      if (v13 >= v14)
      {
        v16 = v12[7];
        v17 = (v13 - v16) >> 6;
        v18 = v17 + 1;
        if ((v17 + 1) >> 58)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v19 = v14 - v16;
        if (v19 >> 5 > v18)
        {
          v18 = v19 >> 5;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFC0)
        {
          v20 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v20);
        }

        v21 = (v17 << 6);
        v21[2] = 0u;
        v21[3] = 0u;
        *v21 = 0u;
        v21[1] = 0u;
        v15 = (v17 << 6) + 64;
        v22 = v12[7];
        v23 = v12[8] - v22;
        v24 = (v17 << 6) - v23;
        memcpy(v21 - v23, v22, v23);
        v25 = v12[7];
        v12[7] = v24;
        v12[8] = v15;
        v12[9] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        v13[2] = 0u;
        v13[3] = 0u;
        *v13 = 0u;
        v13[1] = 0u;
        v15 = (v13 + 4);
      }

      v12[8] = v15;
      v5 = *(a1 + 120);
    }

    else
    {
      v8 = *(v7 + 4 * *(v6 - 8));
      *(v5 + 4112) = v6 - 8;
    }

    v27 = 0;
    ecs2::BasicRegistry<void>::add<md::ls::RequestReset>(v5, v8, &v27);
    v9 = *(a1 + 144);
    if (v9 != *(a1 + 152))
    {
      cleanup(**(a1 + 128), *(*(a1 + 128) + 8), *(a1 + 120), *(v9 + 8));
      v10 = *v9;
      if (*v9)
      {
        v11 = *(a1 + 136);
        if (*(v11 + 16))
        {
          (**v10)(*v9);
          *v10 = *(v11 + 40);
          *(v11 + 40) = v10;
        }
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
    }

    *(a1 + 152) = v9;
    *(a1 + 240) = *(a1 + 232);
    *(a1 + 216) = *(a1 + 208);
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::FlyoverRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::FlyoverRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::FlyoverRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::FlyoverRenderable *,ecs2::Entity>>>>::clear((a1 + 168));
  }
}

void sub_1B290DB18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gdc::ServiceLocator::resolve<md::RenderLayerProvider>(void *a1, void *a2)
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

  v3 = a1[3];
  v2 = a1[4];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return v3;
}

void *md::FlyoverRenderResources::prunePools(void *this)
{
  v1 = this;
  v2 = this[140];
  v4 = *v2;
  v3 = *(v2 + 8);
  if (*v2 != v3)
  {
    do
    {
      this = *v4;
      if (*v4)
      {
        this = (*(*this + 8))(this);
        v3 = *(v2 + 8);
      }

      ++v4;
    }

    while (v4 != v3);
    v4 = *v2;
  }

  *(v2 + 8) = v4;
  v5 = v1[143];
  v7 = *v5;
  v6 = *(v5 + 8);
  if (*v5 != v6)
  {
    do
    {
      this = *v7;
      if (*v7)
      {
        this = (*(*this + 8))(this);
        v6 = *(v5 + 8);
      }

      ++v7;
    }

    while (v7 != v6);
    v7 = *v5;
  }

  *(v5 + 8) = v7;
  v8 = v1[146];
  v10 = *v8;
  v9 = *(v8 + 8);
  if (*v8 != v9)
  {
    do
    {
      this = *v10;
      if (*v10)
      {
        this = (*(*this + 8))(this);
        v9 = *(v8 + 8);
      }

      ++v10;
    }

    while (v10 != v9);
    v10 = *v8;
  }

  *(v8 + 8) = v10;
  v11 = v1[149];
  v13 = *v11;
  v12 = *(v11 + 8);
  if (*v11 != v12)
  {
    do
    {
      this = *v13;
      if (*v13)
      {
        this = (*(*this + 8))(this);
        v12 = *(v11 + 8);
      }

      ++v13;
    }

    while (v13 != v12);
    v13 = *v11;
  }

  *(v11 + 8) = v13;
  v14 = v1[152];
  v16 = *v14;
  v15 = *(v14 + 8);
  if (*v14 != v15)
  {
    do
    {
      this = *v16;
      if (*v16)
      {
        this = (*(*this + 8))(this);
        v15 = *(v14 + 8);
      }

      ++v16;
    }

    while (v16 != v15);
    v16 = *v14;
  }

  *(v14 + 8) = v16;
  v17 = v1[153];
  v19 = *v17;
  v18 = *(v17 + 8);
  if (*v17 != v18)
  {
    do
    {
      this = *v19;
      if (*v19)
      {
        this = (*(*this + 8))(this);
        v18 = *(v17 + 8);
      }

      ++v19;
    }

    while (v19 != v18);
    v19 = *v17;
  }

  *(v17 + 8) = v19;
  v20 = v1[154];
  v22 = *v20;
  v21 = *(v20 + 8);
  if (*v20 != v21)
  {
    do
    {
      this = *v22;
      if (*v22)
      {
        this = (*(*this + 8))(this);
        v21 = *(v20 + 8);
      }

      ++v22;
    }

    while (v22 != v21);
    v22 = *v20;
  }

  *(v20 + 8) = v22;
  v23 = v1[155];
  v25 = *v23;
  v24 = *(v23 + 8);
  if (*v23 != v24)
  {
    do
    {
      this = *v25;
      if (*v25)
      {
        this = (*(*this + 8))(this);
        v24 = *(v23 + 8);
      }

      ++v25;
    }

    while (v25 != v24);
    v25 = *v23;
  }

  *(v23 + 8) = v25;
  v26 = v1[156];
  v28 = *v26;
  v27 = *(v26 + 8);
  if (*v26 != v27)
  {
    do
    {
      this = *v28;
      if (*v28)
      {
        this = (*(*this + 8))(this);
        v27 = *(v26 + 8);
      }

      ++v28;
    }

    while (v28 != v27);
    v28 = *v26;
  }

  *(v26 + 8) = v28;
  return this;
}

void *md::DaVinciGroundRenderResources::prunePools(void *this)
{
  v1 = this;
  v2 = this[153];
  v4 = *v2;
  v3 = *(v2 + 8);
  if (*v2 != v3)
  {
    do
    {
      this = *v4;
      if (*v4)
      {
        this = (*(*this + 8))(this);
        v3 = *(v2 + 8);
      }

      ++v4;
    }

    while (v4 != v3);
    v4 = *v2;
  }

  *(v2 + 8) = v4;
  v5 = v1[155];
  v7 = *v5;
  v6 = *(v5 + 8);
  if (*v5 != v6)
  {
    do
    {
      this = *v7;
      if (*v7)
      {
        this = (*(*this + 8))(this);
        v6 = *(v5 + 8);
      }

      ++v7;
    }

    while (v7 != v6);
    v7 = *v5;
  }

  *(v5 + 8) = v7;
  v8 = v1[156];
  v10 = *v8;
  v9 = *(v8 + 8);
  if (*v8 != v9)
  {
    do
    {
      this = *v10;
      if (*v10)
      {
        this = (*(*this + 8))(this);
        v9 = *(v8 + 8);
      }

      ++v10;
    }

    while (v10 != v9);
    v10 = *v8;
  }

  *(v8 + 8) = v10;
  v11 = v1[157];
  v13 = *v11;
  v12 = *(v11 + 8);
  if (*v11 != v12)
  {
    do
    {
      this = *v13;
      if (*v13)
      {
        this = (*(*this + 8))(this);
        v12 = *(v11 + 8);
      }

      ++v13;
    }

    while (v13 != v12);
    v13 = *v11;
  }

  *(v11 + 8) = v13;
  v14 = v1[158];
  v16 = *v14;
  v15 = *(v14 + 8);
  if (*v14 != v15)
  {
    do
    {
      this = *v16;
      if (*v16)
      {
        this = (*(*this + 8))(this);
        v15 = *(v14 + 8);
      }

      ++v16;
    }

    while (v16 != v15);
    v16 = *v14;
  }

  *(v14 + 8) = v16;
  v17 = v1[159];
  v19 = *v17;
  v18 = *(v17 + 8);
  if (*v17 != v18)
  {
    do
    {
      this = *v19;
      if (*v19)
      {
        this = (*(*this + 8))(this);
        v18 = *(v17 + 8);
      }

      ++v19;
    }

    while (v19 != v18);
    v19 = *v17;
  }

  *(v17 + 8) = v19;
  v20 = v1[197];
  v22 = *v20;
  v21 = *(v20 + 8);
  if (*v20 != v21)
  {
    do
    {
      this = *v22;
      if (*v22)
      {
        this = (*(*this + 8))(this);
        v21 = *(v20 + 8);
      }

      ++v22;
    }

    while (v22 != v21);
    v22 = *v20;
  }

  *(v20 + 8) = v22;
  v23 = v1[198];
  v25 = *v23;
  v24 = *(v23 + 8);
  if (*v23 != v24)
  {
    do
    {
      this = *v25;
      if (*v25)
      {
        this = (*(*this + 8))(this);
        v24 = *(v23 + 8);
      }

      ++v25;
    }

    while (v25 != v24);
    v25 = *v23;
  }

  *(v23 + 8) = v25;
  v26 = v1[160];
  v28 = *v26;
  v27 = *(v26 + 8);
  if (*v26 != v27)
  {
    do
    {
      this = *v28;
      if (*v28)
      {
        this = (*(*this + 8))(this);
        v27 = *(v26 + 8);
      }

      ++v28;
    }

    while (v28 != v27);
    v28 = *v26;
  }

  *(v26 + 8) = v28;
  v29 = v1[161];
  v31 = *v29;
  v30 = *(v29 + 8);
  if (*v29 != v30)
  {
    do
    {
      this = *v31;
      if (*v31)
      {
        this = (*(*this + 8))(this);
        v30 = *(v29 + 8);
      }

      ++v31;
    }

    while (v31 != v30);
    v31 = *v29;
  }

  *(v29 + 8) = v31;
  v32 = v1[162];
  v34 = *v32;
  v33 = *(v32 + 8);
  if (*v32 != v33)
  {
    do
    {
      this = *v34;
      if (*v34)
      {
        this = (*(*this + 8))(this);
        v33 = *(v32 + 8);
      }

      ++v34;
    }

    while (v34 != v33);
    v34 = *v32;
  }

  *(v32 + 8) = v34;
  v35 = v1[163];
  v37 = *v35;
  v36 = *(v35 + 8);
  if (*v35 != v36)
  {
    do
    {
      this = *v37;
      if (*v37)
      {
        this = (*(*this + 8))(this);
        v36 = *(v35 + 8);
      }

      ++v37;
    }

    while (v37 != v36);
    v37 = *v35;
  }

  *(v35 + 8) = v37;
  v38 = v1[186];
  v40 = *v38;
  v39 = *(v38 + 8);
  if (*v38 != v39)
  {
    do
    {
      this = *v40;
      if (*v40)
      {
        this = (*(*this + 8))(this);
        v39 = *(v38 + 8);
      }

      ++v40;
    }

    while (v40 != v39);
    v40 = *v38;
  }

  *(v38 + 8) = v40;
  v41 = v1[187];
  v43 = *v41;
  v42 = *(v41 + 8);
  if (*v41 != v42)
  {
    do
    {
      this = *v43;
      if (*v43)
      {
        this = (*(*this + 8))(this);
        v42 = *(v41 + 8);
      }

      ++v43;
    }

    while (v43 != v42);
    v43 = *v41;
  }

  *(v41 + 8) = v43;
  v44 = v1[188];
  v46 = *v44;
  v45 = *(v44 + 8);
  if (*v44 != v45)
  {
    do
    {
      this = *v46;
      if (*v46)
      {
        this = (*(*this + 8))(this);
        v45 = *(v44 + 8);
      }

      ++v46;
    }

    while (v46 != v45);
    v46 = *v44;
  }

  *(v44 + 8) = v46;
  v47 = v1[189];
  v49 = *v47;
  v48 = *(v47 + 8);
  if (*v47 != v48)
  {
    do
    {
      this = *v49;
      if (*v49)
      {
        this = (*(*this + 8))(this);
        v48 = *(v47 + 8);
      }

      ++v49;
    }

    while (v49 != v48);
    v49 = *v47;
  }

  *(v47 + 8) = v49;
  v50 = v1[192];
  v52 = *v50;
  v51 = *(v50 + 8);
  if (*v50 != v51)
  {
    do
    {
      this = *v52;
      if (*v52)
      {
        this = (*(*this + 8))(this);
        v51 = *(v50 + 8);
      }

      ++v52;
    }

    while (v52 != v51);
    v52 = *v50;
  }

  *(v50 + 8) = v52;
  v53 = v1[194];
  v55 = *v53;
  v54 = *(v53 + 8);
  if (*v53 != v54)
  {
    do
    {
      this = *v55;
      if (*v55)
      {
        this = (*(*this + 8))(this);
        v54 = *(v53 + 8);
      }

      ++v55;
    }

    while (v55 != v54);
    v55 = *v53;
  }

  *(v53 + 8) = v55;
  v56 = v1[191];
  v58 = *v56;
  v57 = *(v56 + 8);
  if (*v56 != v57)
  {
    do
    {
      this = *v58;
      if (*v58)
      {
        this = (*(*this + 8))(this);
        v57 = *(v56 + 8);
      }

      ++v58;
    }

    while (v58 != v57);
    v58 = *v56;
  }

  *(v56 + 8) = v58;
  v59 = v1[193];
  v61 = *v59;
  v60 = *(v59 + 8);
  if (*v59 != v60)
  {
    do
    {
      this = *v61;
      if (*v61)
      {
        this = (*(*this + 8))(this);
        v60 = *(v59 + 8);
      }

      ++v61;
    }

    while (v61 != v60);
    v61 = *v59;
  }

  *(v59 + 8) = v61;
  v62 = v1[190];
  v64 = *v62;
  v63 = *(v62 + 8);
  if (*v62 != v63)
  {
    do
    {
      this = *v64;
      if (*v64)
      {
        this = (*(*this + 8))(this);
        v63 = *(v62 + 8);
      }

      ++v64;
    }

    while (v64 != v63);
    v64 = *v62;
  }

  *(v62 + 8) = v64;
  v65 = v1[195];
  v67 = *v65;
  v66 = *(v65 + 8);
  if (*v65 != v66)
  {
    do
    {
      this = *v67;
      if (*v67)
      {
        this = (*(*this + 8))(this);
        v66 = *(v65 + 8);
      }

      ++v67;
    }

    while (v67 != v66);
    v67 = *v65;
  }

  *(v65 + 8) = v67;
  v68 = v1[196];
  v70 = *v68;
  v69 = *(v68 + 8);
  if (*v68 != v69)
  {
    do
    {
      this = *v70;
      if (*v70)
      {
        this = (*(*this + 8))(this);
        v69 = *(v68 + 8);
      }

      ++v70;
    }

    while (v70 != v69);
    v70 = *v68;
  }

  *(v68 + 8) = v70;
  return this;
}

void ecs2::BasicRegistry<void>::add<md::ls::RequestReset>(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequestReset>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequestReset>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<md::ls::RequestReset>(a1);
  v8 = v7;
  v9 = WORD1(a2) >> 6;
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + (v14 & 0x3F)) = *a3;
    goto LABEL_41;
  }

  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v45);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v43 = v18 - v19;
    v44 = v16;
    v41 = v6;
    v42 = a3;
    v20 = v17 + 1;
    v21 = v17 + 1 - ((v18 - v19) >> 3);
    v22 = *(v8 + 72);
    if (v21 > (v22 - v18) >> 3)
    {
      v23 = v22 - v19;
      v24 = (v22 - v19) >> 2;
      if (v24 <= v20)
      {
        v24 = v17 + 1;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v25 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (!(v25 >> 61))
      {
        operator new();
      }

      goto LABEL_42;
    }

    v26 = 0;
    v27 = (v21 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v28 = vdupq_n_s64(v27);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v26), xmmword_1B33B0560)));
      if (v29.i8[0])
      {
        *(v18 + 8 * v26) = 0;
      }

      if (v29.i8[4])
      {
        *(v18 + 8 * v26 + 8) = 0;
      }

      v26 += 2;
    }

    while (v27 - ((v21 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v26);
    *(v8 + 64) = v18 + 8 * v21;
    v30 = *(v8 + 80);
    v31 = *(v8 + 88);
    v32 = (v31 - v30) >> 4;
    if (v32 <= v17)
    {
      v33 = v20 - v32;
      v34 = *(v8 + 96);
      if (v33 > (v34 - v31) >> 4)
      {
        v35 = v34 - v30;
        v36 = v35 >> 3;
        if (v35 >> 3 <= v20)
        {
          v36 = v17 + 1;
        }

        if (v35 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (!(v37 >> 60))
        {
          operator new();
        }

LABEL_42:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v33);
      *(v8 + 88) = v31 + 16 * v33;
      a3 = v42;
    }

    else if (v20 < v32)
    {
      *(v8 + 88) = v30 + 16 * v20;
    }

    v19 = *(v8 + 56);
    LOBYTE(v16) = v44;
    v6 = v41;
    if (v43 < *(v8 + 64) - v19)
    {
      operator new();
    }
  }

  *(*(v19 + 8 * v17) + (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequestReset>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequestReset>(void)::metadata) = *(a1 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequestReset>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequestReset>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequestReset>();
    unk_1EB83DA90 = 0xDACEFB85CDF2B135;
    qword_1EB83DA98 = "md::ls::RequestReset]";
    qword_1EB83DAA0 = 20;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequestReset>()
{
  v0 = &unk_1EB83F000;
  {
    v0 = &unk_1EB83F000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequestReset>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB83F000;
    }
  }

  return v0[64];
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequestReset>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequestReset>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequestReset>();
    unk_1EB83DA90 = 0xDACEFB85CDF2B135;
    qword_1EB83DA98 = "md::ls::RequestReset]";
    qword_1EB83DAA0 = 20;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequestReset>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequestReset>(void)::metadata >= 0x200)
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

uint64_t ecs2::sparse_set<ecs2::Entity,64ul>::sparse_set(uint64_t a1)
{
  *a1 = &unk_1F2A60B38;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::reserve((a1 + 8));
  std::vector<ecs2::Entity>::reserve((a1 + 32));
  return a1;
}

void sub_1B290EF74(_Unwind_Exception *exception_object)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls12RequestResetEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlS2_E_vEERS4_OSF_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A1A3E0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls12RequestResetEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A1A3E0;
  a2[1] = v2;
  return result;
}

void std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::FlyoverRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::FlyoverRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::FlyoverRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::FlyoverRenderable *,ecs2::Entity>>>>::clear(void *a1)
{
  if (a1[3])
  {
    v2 = a1[2];
    if (v2)
    {
      do
      {
        v3 = *v2;
        v4 = v2[4];
        if (v4 != v2[6])
        {
          free(v4);
        }

        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    a1[2] = 0;
    v5 = a1[1];
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    a1[3] = 0;
  }
}

void *md::TerrainMeshProviderLogic::reset(md::TerrainMeshProviderLogic *this)
{
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 16);

  return std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 21);
}

void md::CollectRenderablesLogic<(md::MapDataType)75,md::FlyoverRenderable>::reset(uint64_t a1)
{
  v2 = gdc::ServiceLocator::resolve<md::RenderLayerProvider>(**(a1 + 128), *(*(a1 + 128) + 8));
  v3 = (*(*v2 + 56))(v2);
  md::FlyoverRenderResources::prunePools(v3);
  v4 = (*(*v2 + 48))(v2);
  md::DaVinciGroundRenderResources::prunePools(v4);
  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = *(v5 + 4112);
    v7 = *(v5 + 4128);
    if (*(v5 + 4104) == v6)
    {
      v12 = (v5 + 40960);
      HIWORD(v26) = (*(v5 + 4136) - v7) >> 2;
      LOWORD(v26) = 1;
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v5 + 4128, &v26);
      v8 = v26;
      v13 = v12[8];
      v14 = v12[9];
      if (v13 >= v14)
      {
        v16 = v12[7];
        v17 = (v13 - v16) >> 6;
        v18 = v17 + 1;
        if ((v17 + 1) >> 58)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v19 = v14 - v16;
        if (v19 >> 5 > v18)
        {
          v18 = v19 >> 5;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFC0)
        {
          v20 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v20);
        }

        v21 = (v17 << 6);
        v21[2] = 0u;
        v21[3] = 0u;
        *v21 = 0u;
        v21[1] = 0u;
        v15 = (v17 << 6) + 64;
        v22 = v12[7];
        v23 = v12[8] - v22;
        v24 = (v17 << 6) - v23;
        memcpy(v21 - v23, v22, v23);
        v25 = v12[7];
        v12[7] = v24;
        v12[8] = v15;
        v12[9] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        v13[2] = 0u;
        v13[3] = 0u;
        *v13 = 0u;
        v13[1] = 0u;
        v15 = (v13 + 4);
      }

      v12[8] = v15;
      v5 = *(a1 + 120);
    }

    else
    {
      v8 = *(v7 + 4 * *(v6 - 8));
      *(v5 + 4112) = v6 - 8;
    }

    v27 = 0;
    ecs2::BasicRegistry<void>::add<md::ls::RequestReset>(v5, v8, &v27);
    v9 = *(a1 + 144);
    if (v9 != *(a1 + 152))
    {
      cleanup(**(a1 + 128), *(*(a1 + 128) + 8), *(a1 + 120), *(v9 + 8));
      v10 = *v9;
      if (*v9)
      {
        v11 = *(a1 + 136);
        if (*(v11 + 16))
        {
          (**v10)(*v9);
          *v10 = *(v11 + 40);
          *(v11 + 40) = v10;
        }
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
    }

    *(a1 + 152) = v9;
    *(a1 + 240) = *(a1 + 232);
    *(a1 + 216) = *(a1 + 208);
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::FlyoverRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::FlyoverRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::FlyoverRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::FlyoverRenderable *,ecs2::Entity>>>>::clear((a1 + 168));
  }
}

void sub_1B290F4A4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void md::StyleLogic::reset(std::__shared_weak_count **this)
{
  v2 = this;
  v3 = this[54];
  *(v2 + 53) = 0;
  *(v2 + 54) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(v2 + 56);
  *(v2 + 55) = 0;
  *(v2 + 56) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(v2 + 75);
  v6 = 0uLL;
  *(v2 + 37) = 0u;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    v6 = 0uLL;
  }

  v7 = *(v2 + 77);
  *(v2 + 38) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(v2 + 96);
  *(v2 + 95) = 0;
  *(v2 + 96) = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(v2 + 98);
  *(v2 + 97) = 0;
  *(v2 + 98) = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(v2 + 117);
  v11 = 0uLL;
  *(v2 + 58) = 0u;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    v11 = 0uLL;
  }

  v12 = *(v2 + 119);
  *(v2 + 59) = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v12);
  }

  v13 = *(v2 + 31);
  *(v2 + 30) = 0;
  *(v2 + 31) = 0;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  v72 = 0;
  *v73 = 0;
  *&v73[8] = 256;
  v70 = 0;
  *v71 = 0;
  *&v71[8] = 256;
  v14 = *(v2 + 28);
  if (v14)
  {
    gss::ClientStyleState<gss::ScenePropertyID>::sourceClientStyleAttributes(&v68, *(v2 + 28));
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v72);
    v15 = v68;
    v72 = v68;
    v16 = *v69;
    *v73 = *v69;
    v17 = *&v69[4];
    *&v73[4] = *&v69[4];
    *&v73[6] = *&v69[6];
    *&v69[8] = 256;
    v68 = 0;
    *v69 = 0;
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v68);
    gss::ClientStyleState<gss::ScenePropertyID>::targetClientStyleAttributes(&v68, *(v2 + 28));
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v70);
    v70 = v68;
    *v71 = *v69;
    *&v71[4] = *&v69[4];
    *&v71[6] = *&v69[6];
    *&v69[8] = 256;
    v68 = 0;
    *v69 = 0;
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v68);
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v17 = 0;
  }

  md::StyleLogic::updateConfiguration(v2, *(v2 + 274));
  v18 = *(v2 + 28);
  if (v18)
  {
    if (v14)
    {
      v68 = (v18 + 16);
      v19 = pthread_rwlock_wrlock((v18 + 16));
      v63 = v2;
      if (v19)
      {
        geo::read_write_lock::logFailure(v19, "write lock", v20);
      }

      if (v17)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = v15 + v16;
        do
        {
          if (!((v23 >= v17) | v21 & 1))
          {
            v22 = (v15 + 4 * v23);
            v1 = &v24[2 * v23];
          }

          v25 = *v1;
          v26 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v18 + 216, *v22);
          if ((v23 >= v17) | v21 & 1)
          {
            v27 = v21;
          }

          else
          {
            v27 = 1;
          }

          *v26 = v25;
          v28 = v23 + 1;
          if (v27)
          {
            v21 = 0;
          }

          else
          {
            v21 = v27;
          }

          if (v28 < v17)
          {
            ++v23;
          }

          else
          {
            v23 = v17;
          }
        }

        while (v28 < v17);
      }

      if ((*(v18 + 232) & 1) == 0 && (*(v18 + 233) & 1) == 0)
      {
        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(v18 + 216, *(v18 + 230), 1);
      }

      v29 = COERCE_FLOAT(atomic_load((v18 + 272)));
      v30 = v29 <= 0.0;
      v31 = 1;
      if (v30)
      {
        v31 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((v18 + 240), v18 + 216) ^ 1;
      }

      atomic_store(v31, (v18 + 270));
      atomic_fetch_add((v18 + 264), 1u);
      geo::write_lock_guard::~write_lock_guard(&v68);
      v32 = *(v63 + 28);
      v68 = (v32 + 16);
      v33 = pthread_rwlock_wrlock((v32 + 16));
      if (v33)
      {
        geo::read_write_lock::logFailure(v33, "write lock", v34);
      }

      v35 = *&v71[4];
      if (*&v71[4])
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = v70;
        v40 = v70 + *v71;
        do
        {
          if (!((v38 >= v35) | v36 & 1))
          {
            v37 = (v39 + 4 * v38);
            v1 = &v40[2 * v38];
          }

          v41 = *v1;
          v42 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v32 + 240, *v37);
          if ((v38 >= v35) | v36 & 1)
          {
            v43 = v36;
          }

          else
          {
            v43 = 1;
          }

          *v42 = v41;
          v44 = v38 + 1;
          if (v43)
          {
            v36 = 0;
          }

          else
          {
            v36 = v43;
          }

          if (v44 < v35)
          {
            ++v38;
          }

          else
          {
            v38 = v35;
          }
        }

        while (v44 < v35);
      }

      if ((*(v32 + 256) & 1) == 0 && (*(v32 + 257) & 1) == 0)
      {
        geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::reallocate(v32 + 240, *(v32 + 254), 1);
      }

      v45 = COERCE_FLOAT(atomic_load((v32 + 272)));
      v30 = v45 <= 0.0;
      v46 = 1;
      v2 = v63;
      if (v30)
      {
        v46 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>((v32 + 240), v32 + 216) ^ 1;
      }

      atomic_store(v46, (v32 + 270));
      atomic_fetch_add((v32 + 264), 1u);
      geo::write_lock_guard::~write_lock_guard(&v68);
    }

    else
    {
      v47 = gss::ClientStyleState<gss::PropertyID>::sourceMapDisplayStyle(*(v2 + 26));
      gss::ClientStyleState<gss::ScenePropertyID>::setSourceMapDisplayStyle(v18, v47);
      v48 = *(v2 + 28);
      v49 = gss::ClientStyleState<gss::PropertyID>::targetMapDisplayStyle(*(v2 + 26));
      gss::ClientStyleState<gss::ScenePropertyID>::setTargetMapDisplayStyle(v48, v49);
    }

    gss::ClientStyleState<gss::ScenePropertyID>::setBlendingFactor(*(v2 + 28), *(*(v2 + 26) + 272));
    v50 = *(v2 + 28);
    [*(v2 + 19) size];
    v52 = v51;
    [*(v2 + 19) size];
    v54 = fmin(v53, v52);
    if (v54 <= 250.0)
    {
      v55 = 0;
    }

    else if (v54 <= 450.0)
    {
      v55 = 1;
    }

    else if (v54 <= 850.0)
    {
      v55 = 2;
    }

    else
    {
      v55 = 3;
    }

    gss::ClientStyleState<gss::ScenePropertyID>::setClientStyleAttribute(v50, 0x10018u, v55);
  }

  v56 = *(v2 + 145);
  v57 = v56;
  v58 = *(v2 + 33);
  v66 = *(v2 + 32);
  v67 = v58;
  if (v58)
  {
    atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v56 setStyleManager:{&v66, v63}];
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v67);
  }

  v59 = *(v2 + 145);
  v60 = v59;
  v61 = *(v2 + 29);
  v64 = *(v2 + 28);
  v65 = v61;
  if (v61)
  {
    atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v59 setSceneClientStyleState:&v64];
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v65);
  }

  LOBYTE(v68) = 4;
  geo::linear_set<md::StyleManagerEvent,std::less<md::StyleManagerEvent>,std::allocator<md::StyleManagerEvent>,std::vector<md::StyleManagerEvent>>::insert(v2 + 141, &v68);
  v62 = **(v2 + 155);
  if (v62)
  {
    LOBYTE(v68) = 8;
    md::MapEngine::setNeedsTick(v62, &v68);
  }

  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v70);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v72);
}

void sub_1B290F9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, pthread_rwlock_t *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  geo::write_lock_guard::~write_lock_guard(va);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va1);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(va2);
  _Unwind_Resume(a1);
}

void gss::ClientStyleState<gss::ScenePropertyID>::sourceClientStyleAttributes(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a2 + 16));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(a1, a2 + 216);
  v6 = pthread_rwlock_unlock((a2 + 16));
  if (v6)
  {

    geo::read_write_lock::logFailure(v6, "unlock", v7);
  }
}

void gss::ClientStyleState<gss::ScenePropertyID>::targetClientStyleAttributes(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a2 + 16));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(a1, a2 + 240);

  geo::read_write_lock::unlock((a2 + 16));
}

uint64_t std::default_delete<gss::StylesheetManager<gss::ScenePropertyID>>::operator()[abi:nn200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 528);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v2);
    }

    geo::read_write_lock::~read_write_lock((v1 + 320));
    geo::read_write_lock::~read_write_lock((v1 + 120));
    v5.__vftable = (v1 + 88);
    std::vector<std::weak_ptr<gss::FeatureQueryImpl<gss::ScenePropertyID>>,geo::allocator_adapter<std::weak_ptr<gss::FeatureQueryImpl<gss::ScenePropertyID>>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v5);
    std::__hash_table<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,std::__unordered_map_hasher<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,std::hash<gss::StyleKey>,std::equal_to<gss::StyleKey>,true>,std::__unordered_map_equal<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,std::equal_to<gss::StyleKey>,std::hash<gss::StyleKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,gss::zone_mallocator>>::__deallocate_node(*(v1 + 56));
    std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> *,gss::zone_mallocator>>>::~unique_ptr[abi:nn200100]((v1 + 32));
    v3 = *(v1 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void geo::read_write_lock::~read_write_lock(pthread_rwlock_t *this)
{
  v1 = pthread_rwlock_destroy(this);
  if (v1)
  {
    geo::read_write_lock::logFailure(v1, "destruction", v2);
  }
}

void std::vector<std::weak_ptr<gss::FeatureQueryImpl<gss::ScenePropertyID>>,geo::allocator_adapter<std::weak_ptr<gss::FeatureQueryImpl<gss::ScenePropertyID>>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
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
        a1 = *(v3 - 1);
        if (a1)
        {
          std::__shared_weak_count::__release_weak(a1);
        }

        v3 = (v3 - 16);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = gss::zone_mallocator::instance(a1);
    v7 = pthread_rwlock_rdlock((v6 + 32));
    if (v7)
    {
      geo::read_write_lock::logFailure(v7, "read lock", v8);
    }

    if (v4)
    {
      atomic_fetch_add((v6 + 24), 0xFFFFFFFF);
    }

    malloc_zone_free(*v6, v4);

    geo::read_write_lock::unlock((v6 + 32));
  }
}

gss::zone_mallocator *std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> *,gss::zone_mallocator>>>::~unique_ptr[abi:nn200100](gss::zone_mallocator *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = gss::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *> *> *>(v3, v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,std::__unordered_map_hasher<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,std::hash<gss::StyleKey>,std::equal_to<gss::StyleKey>,true>,std::__unordered_map_equal<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,std::equal_to<gss::StyleKey>,std::hash<gss::StyleKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,gss::zone_mallocator>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = v1[10];
      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }

      geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage((v1 + 6));
      std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v1 + 2));
      v5 = gss::zone_mallocator::instance(v4);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::ScenePropertyID>>>,void *>>(v5, v1);
      v1 = v2;
    }

    while (v2);
  }
}

void md::CollectRenderablesLogic<(md::MapDataType)62,md::DaVinciGroundRenderable>::reset(uint64_t a1)
{
  v2 = gdc::ServiceLocator::resolve<md::RenderLayerProvider>(**(a1 + 128), *(*(a1 + 128) + 8));
  v3 = (*(*v2 + 56))(v2);
  md::FlyoverRenderResources::prunePools(v3);
  v4 = (*(*v2 + 48))(v2);
  md::DaVinciGroundRenderResources::prunePools(v4);
  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = *(v5 + 4112);
    v7 = *(v5 + 4128);
    if (*(v5 + 4104) == v6)
    {
      v12 = (v5 + 40960);
      HIWORD(v26) = (*(v5 + 4136) - v7) >> 2;
      LOWORD(v26) = 1;
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v5 + 4128, &v26);
      v8 = v26;
      v13 = v12[8];
      v14 = v12[9];
      if (v13 >= v14)
      {
        v16 = v12[7];
        v17 = (v13 - v16) >> 6;
        v18 = v17 + 1;
        if ((v17 + 1) >> 58)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v19 = v14 - v16;
        if (v19 >> 5 > v18)
        {
          v18 = v19 >> 5;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFC0)
        {
          v20 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v20);
        }

        v21 = (v17 << 6);
        v21[2] = 0u;
        v21[3] = 0u;
        *v21 = 0u;
        v21[1] = 0u;
        v15 = (v17 << 6) + 64;
        v22 = v12[7];
        v23 = v12[8] - v22;
        v24 = (v17 << 6) - v23;
        memcpy(v21 - v23, v22, v23);
        v25 = v12[7];
        v12[7] = v24;
        v12[8] = v15;
        v12[9] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        v13[2] = 0u;
        v13[3] = 0u;
        *v13 = 0u;
        v13[1] = 0u;
        v15 = (v13 + 4);
      }

      v12[8] = v15;
      v5 = *(a1 + 120);
    }

    else
    {
      v8 = *(v7 + 4 * *(v6 - 8));
      *(v5 + 4112) = v6 - 8;
    }

    v27 = 0;
    ecs2::BasicRegistry<void>::add<md::ls::RequestReset>(v5, v8, &v27);
    v9 = *(a1 + 144);
    if (v9 != *(a1 + 152))
    {
      cleanup(**(a1 + 128), *(*(a1 + 128) + 8), *(a1 + 120), *(v9 + 8));
      v10 = *v9;
      if (*v9)
      {
        v11 = *(a1 + 136);
        if (*(v11 + 16))
        {
          (**v10)(*v9);
          *v10 = *(v11 + 40);
          *(v11 + 40) = v10;
        }
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
    }

    *(a1 + 152) = v9;
    *(a1 + 240) = *(a1 + 232);
    *(a1 + 216) = *(a1 + 208);
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::clear(a1 + 168);
  }
}

void sub_1B2910180(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void md::CollectRenderablesLogic<(md::MapDataType)54,md::DaVinciGroundRenderable>::reset(uint64_t a1)
{
  v2 = gdc::ServiceLocator::resolve<md::RenderLayerProvider>(**(a1 + 128), *(*(a1 + 128) + 8));
  v3 = (*(*v2 + 56))(v2);
  md::FlyoverRenderResources::prunePools(v3);
  v4 = (*(*v2 + 48))(v2);
  md::DaVinciGroundRenderResources::prunePools(v4);
  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = *(v5 + 4112);
    v7 = *(v5 + 4128);
    if (*(v5 + 4104) == v6)
    {
      v12 = (v5 + 40960);
      HIWORD(v26) = (*(v5 + 4136) - v7) >> 2;
      LOWORD(v26) = 1;
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v5 + 4128, &v26);
      v8 = v26;
      v13 = v12[8];
      v14 = v12[9];
      if (v13 >= v14)
      {
        v16 = v12[7];
        v17 = (v13 - v16) >> 6;
        v18 = v17 + 1;
        if ((v17 + 1) >> 58)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v19 = v14 - v16;
        if (v19 >> 5 > v18)
        {
          v18 = v19 >> 5;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFC0)
        {
          v20 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v20);
        }

        v21 = (v17 << 6);
        v21[2] = 0u;
        v21[3] = 0u;
        *v21 = 0u;
        v21[1] = 0u;
        v15 = (v17 << 6) + 64;
        v22 = v12[7];
        v23 = v12[8] - v22;
        v24 = (v17 << 6) - v23;
        memcpy(v21 - v23, v22, v23);
        v25 = v12[7];
        v12[7] = v24;
        v12[8] = v15;
        v12[9] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        v13[2] = 0u;
        v13[3] = 0u;
        *v13 = 0u;
        v13[1] = 0u;
        v15 = (v13 + 4);
      }

      v12[8] = v15;
      v5 = *(a1 + 120);
    }

    else
    {
      v8 = *(v7 + 4 * *(v6 - 8));
      *(v5 + 4112) = v6 - 8;
    }

    v27 = 0;
    ecs2::BasicRegistry<void>::add<md::ls::RequestReset>(v5, v8, &v27);
    v9 = *(a1 + 144);
    if (v9 != *(a1 + 152))
    {
      cleanup(**(a1 + 128), *(*(a1 + 128) + 8), *(a1 + 120), *(v9 + 8));
      v10 = *v9;
      if (*v9)
      {
        v11 = *(a1 + 136);
        if (*(v11 + 16))
        {
          (**v10)(*v9);
          *v10 = *(v11 + 40);
          *(v11 + 40) = v10;
        }
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
    }

    *(a1 + 152) = v9;
    *(a1 + 240) = *(a1 + 232);
    *(a1 + 216) = *(a1 + 208);
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::clear(a1 + 168);
  }
}

void sub_1B2910524(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void md::CollectRenderablesLogic<(md::MapDataType)34,md::DaVinciGroundRenderable>::reset(uint64_t a1)
{
  v2 = gdc::ServiceLocator::resolve<md::RenderLayerProvider>(**(a1 + 128), *(*(a1 + 128) + 8));
  v3 = (*(*v2 + 56))(v2);
  md::FlyoverRenderResources::prunePools(v3);
  v4 = (*(*v2 + 48))(v2);
  md::DaVinciGroundRenderResources::prunePools(v4);
  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = *(v5 + 4112);
    v7 = *(v5 + 4128);
    if (*(v5 + 4104) == v6)
    {
      v12 = (v5 + 40960);
      HIWORD(v26) = (*(v5 + 4136) - v7) >> 2;
      LOWORD(v26) = 1;
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v5 + 4128, &v26);
      v8 = v26;
      v13 = v12[8];
      v14 = v12[9];
      if (v13 >= v14)
      {
        v16 = v12[7];
        v17 = (v13 - v16) >> 6;
        v18 = v17 + 1;
        if ((v17 + 1) >> 58)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v19 = v14 - v16;
        if (v19 >> 5 > v18)
        {
          v18 = v19 >> 5;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFC0)
        {
          v20 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v20);
        }

        v21 = (v17 << 6);
        v21[2] = 0u;
        v21[3] = 0u;
        *v21 = 0u;
        v21[1] = 0u;
        v15 = (v17 << 6) + 64;
        v22 = v12[7];
        v23 = v12[8] - v22;
        v24 = (v17 << 6) - v23;
        memcpy(v21 - v23, v22, v23);
        v25 = v12[7];
        v12[7] = v24;
        v12[8] = v15;
        v12[9] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        v13[2] = 0u;
        v13[3] = 0u;
        *v13 = 0u;
        v13[1] = 0u;
        v15 = (v13 + 4);
      }

      v12[8] = v15;
      v5 = *(a1 + 120);
    }

    else
    {
      v8 = *(v7 + 4 * *(v6 - 8));
      *(v5 + 4112) = v6 - 8;
    }

    v27 = 0;
    ecs2::BasicRegistry<void>::add<md::ls::RequestReset>(v5, v8, &v27);
    v9 = *(a1 + 144);
    if (v9 != *(a1 + 152))
    {
      cleanup(**(a1 + 128), *(*(a1 + 128) + 8), *(a1 + 120), *(v9 + 8));
      v10 = *v9;
      if (*v9)
      {
        v11 = *(a1 + 136);
        if (*(v11 + 16))
        {
          (**v10)(*v9);
          *v10 = *(v11 + 40);
          *(v11 + 40) = v10;
        }
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
    }

    *(a1 + 152) = v9;
    *(a1 + 240) = *(a1 + 232);
    *(a1 + 216) = *(a1 + 208);
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::clear(a1 + 168);
  }
}

void sub_1B29108C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void gdc::LayerDataCollector::clear(gdc::LayerDataCollector *this)
{
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::clear(this + 48);
  std::vector<gdc::LayerDataIndex>::clear[abi:nn200100](this);
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 32;
      v5 = (v2 - 24);
      std::vector<gdc::LayerDataHolder>::__destroy_vector::operator()[abi:nn200100](&v5);
      v2 = v4;
    }

    while (v4 != v3);
  }

  *(this + 4) = v3;
}

void std::vector<gdc::LayerDataIndex>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 152)
  {
    v4 = *(i - 136);
    if (v4 != *(i - 120))
    {
      free(v4);
    }
  }

  a1[1] = v2;
}

void md::ARRenderEntityGenerationLogic::reset(md::ARRenderEntityGenerationLogic *this)
{
  v2 = *(this + 15);
  if (v2 && *(this + 16))
  {
    v3 = gdc::Registry::storage<arComponents::AREnvironmentProbeTexture>(v2);
    v4 = gdc::Registry::storage<arComponents::AREnvironmentProbeTexture>(*(this + 16));
    v5 = v3[7];
    v6 = v3[8];
    if (v5 != v6)
    {
      v7 = (v3[10] + 8);
      do
      {
        v8 = *v7;
        if (*v7 && *(v8 + 3))
        {
          ggl::RenderDataHolder::resetRenderResource(v8);
        }

        v5 += 8;
        v7 += 3;
      }

      while (v5 != v6);
    }

    v9 = v4[7];
    v10 = v4[8];
    if (v9 != v10)
    {
      v11 = (v4[10] + 8);
      do
      {
        v12 = *v11;
        if (*v11)
        {
          if (*(v12 + 3))
          {
            ggl::RenderDataHolder::resetRenderResource(v12);
          }
        }

        v9 += 8;
        v11 += 3;
      }

      while (v9 != v10);
    }
  }
}

void md::CollectRenderablesLogic<(md::MapDataType)33,md::DaVinciGroundRenderable>::reset(uint64_t a1)
{
  v2 = gdc::ServiceLocator::resolve<md::RenderLayerProvider>(**(a1 + 128), *(*(a1 + 128) + 8));
  v3 = (*(*v2 + 56))(v2);
  md::FlyoverRenderResources::prunePools(v3);
  v4 = (*(*v2 + 48))(v2);
  md::DaVinciGroundRenderResources::prunePools(v4);
  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = *(v5 + 4112);
    v7 = *(v5 + 4128);
    if (*(v5 + 4104) == v6)
    {
      v12 = (v5 + 40960);
      HIWORD(v26) = (*(v5 + 4136) - v7) >> 2;
      LOWORD(v26) = 1;
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v5 + 4128, &v26);
      v8 = v26;
      v13 = v12[8];
      v14 = v12[9];
      if (v13 >= v14)
      {
        v16 = v12[7];
        v17 = (v13 - v16) >> 6;
        v18 = v17 + 1;
        if ((v17 + 1) >> 58)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v19 = v14 - v16;
        if (v19 >> 5 > v18)
        {
          v18 = v19 >> 5;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFC0)
        {
          v20 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v20);
        }

        v21 = (v17 << 6);
        v21[2] = 0u;
        v21[3] = 0u;
        *v21 = 0u;
        v21[1] = 0u;
        v15 = (v17 << 6) + 64;
        v22 = v12[7];
        v23 = v12[8] - v22;
        v24 = (v17 << 6) - v23;
        memcpy(v21 - v23, v22, v23);
        v25 = v12[7];
        v12[7] = v24;
        v12[8] = v15;
        v12[9] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        v13[2] = 0u;
        v13[3] = 0u;
        *v13 = 0u;
        v13[1] = 0u;
        v15 = (v13 + 4);
      }

      v12[8] = v15;
      v5 = *(a1 + 120);
    }

    else
    {
      v8 = *(v7 + 4 * *(v6 - 8));
      *(v5 + 4112) = v6 - 8;
    }

    v27 = 0;
    ecs2::BasicRegistry<void>::add<md::ls::RequestReset>(v5, v8, &v27);
    v9 = *(a1 + 144);
    if (v9 != *(a1 + 152))
    {
      cleanup(**(a1 + 128), *(*(a1 + 128) + 8), *(a1 + 120), *(v9 + 8));
      v10 = *v9;
      if (*v9)
      {
        v11 = *(a1 + 136);
        if (*(v11 + 16))
        {
          (**v10)(*v9);
          *v10 = *(v11 + 40);
          *(v11 + 40) = v10;
        }
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(1uLL);
    }

    *(a1 + 152) = v9;
    *(a1 + 240) = *(a1 + 232);
    *(a1 + 216) = *(a1 + 208);
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::clear(a1 + 168);
  }
}

void sub_1B2910E68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void md::LightingLogic::reset(md::LightingLogic *this)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = &unk_1F2A0ECE0;
  v3 = 0;
  geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(this + 232, &v2);
  v2 = &unk_1F2A0ECE0;

  *(this + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(this + 376) = 0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 45));
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 44) = this + 360;
}

void md::DrapingTaskScheduler::reset(int8x8_t *this)
{
  v23 = *MEMORY[0x1E69E9840];
  for (i = this[3]; i; i = *i)
  {
    v3 = md::FoundationKeyHash::operator()((i + 16));
    v4 = this[2];
    if (v4)
    {
      v5 = v3;
      v6 = vcnt_s8(v4);
      v6.i16[0] = vaddlv_u8(v6);
      v7 = v6.u32[0];
      if (v6.u32[0] > 1uLL)
      {
        v8 = v3;
        if (v3 >= *&v4)
        {
          v8 = v3 % *&v4;
        }
      }

      else
      {
        v8 = (*&v4 - 1) & v3;
      }

      v9 = *(*&this[1] + 8 * v8);
      if (v9)
      {
        for (j = *v9; j; j = *j)
        {
          v11 = *(j + 1);
          if (v11 == v5)
          {
            if (std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>::operator()[abi:nn200100](j + 16, i + 16))
            {
              if (GEOGetVectorKitDrapingLog_onceToken != -1)
              {
                dispatch_once(&GEOGetVectorKitDrapingLog_onceToken, &__block_literal_global_61);
              }

              v12 = GEOGetVectorKitDrapingLog_log;
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                md::to_string(&__p, (j + 16));
                p_p = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315138;
                v22 = p_p;
                _os_log_impl(&dword_1B2754000, v12, OS_LOG_TYPE_DEBUG, "Canceling draping task %s", buf, 0xCu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              for (k = *(j + 9); k; k = *k)
              {
                if (!atomic_load(k[9]))
                {
                  atomic_store(3u, k[9]);
                  atomic_store(1u, (k[9][1] + 32));
                }
              }

              break;
            }
          }

          else
          {
            if (v7 > 1)
            {
              if (v11 >= *&v4)
              {
                v11 %= *&v4;
              }
            }

            else
            {
              v11 &= *&v4 - 1;
            }

            if (v11 != v8)
            {
              break;
            }
          }
        }
      }
    }
  }

  v16 = *(*this + 128);
  v20[0] = &unk_1F29F0D18;
  v20[3] = v20;
  geo::TaskQueue::barrierSync(v16, v20);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v20);
  if (this[4])
  {
    std::__hash_table<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::__unordered_map_hasher<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,md::FoundationKeyHash,std::equal_to<md::FoundationKey>,true>,std::__unordered_map_equal<md::FoundationKey,std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>,std::equal_to<md::FoundationKey>,md::FoundationKeyHash,true>,std::allocator<std::__hash_value_type<md::FoundationKey,md::DrapingTaskEntry>>>::__deallocate_node(*&this[3]);
    this[3] = 0;
    v17 = this[2];
    if (v17)
    {
      v18 = 0;
      do
      {
        *(*&this[1] + 8 * v18++) = 0;
      }

      while (*&v17 != v18);
    }

    this[4] = 0;
  }
}

void sub_1B2911204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(md::LogicBase *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::IdentifiedResourceLogic::reset(gdc::LayerDataCollector **this)
{
  gdc::LayerDataCollector::clear(this[15]);
  v2 = this[16];

  gdc::LayerDataCollector::clear(v2);
}

void md::World::clearAllLayerData(md::World *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  while (v2 != v3)
  {
    gdc::LayerDataSource::cancelAllLayerDataRequests(*(v2 + 8));
    v2 += 16;
  }

  v5 = *(this + 10);
  v4 = *(this + 11);
  while (v5 != v4)
  {
    gdc::LayerDataStore::clearAllData(*(v5 + 8));
    v5 += 16;
  }
}

void md::World::clearAllData(md::World *this)
{
  md::World::clearAllLayerData(this);
  gdc::ResourceManager::cleanupResources(*(*(this + 3) + 56));
  v2 = *(this + 42);
  if (v2)
  {
    v3 = *v2;
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((*v2 + 8));
    std::__list_imp<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>>::clear((v3 + 48));
  }

  v4 = *(this + 44);
  if (v4)
  {
    if (v4[6])
    {
      v5 = v4[5];
      if (v5)
      {
        do
        {
          v6 = *v5;
          operator delete(v5);
          v5 = v6;
        }

        while (v6);
      }

      v4[5] = 0;
      v7 = v4[4];
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          *(v4[3] + 8 * i) = 0;
        }
      }

      v4[6] = 0;
    }

    std::__list_imp<std::pair<unsigned long long,unsigned char>>::clear(v4 + 8);

    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v4 + 11);
  }
}

void std::__list_imp<std::pair<geo::QuadTile,geo::small_vector<md::FlyoverRegionManager::RegionArea,2ul>>>::clear(uint64_t *a1)
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
        geo::small_vector_base<md::FlyoverRegionManager::RegionArea>::~small_vector_base((v2 + 6));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void *md::CartographicRenderer::clearScene(void *this)
{
  v1 = this[5];
  v2 = this[6];
  while (v1 != v2)
  {
    this = *v1;
    if (*v1)
    {
      this = (*(*this + 48))(this);
    }

    ++v1;
  }

  return this;
}

void md::CartographicTiledRenderLayer<HillshadeRenderable>::clearScene(uint64_t a1)
{
  if (*(a1 + 52) == 1)
  {
    v2 = *(a1 + 280);
    v8[0] = *(a1 + 272);
    v8[1] = v2;
    (*(*a1 + 120))(a1, v8);
  }

  if (*(a1 + 112))
  {
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(*(a1 + 104));
    *(a1 + 104) = 0;
    v3 = *(a1 + 96);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*(a1 + 88) + 8 * i) = 0;
      }
    }

    *(a1 + 112) = 0;
  }

  *(a1 + 280) = *(a1 + 272);
  geo::Pool<HillshadeRenderable>::disposeElements(a1 + 224);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 136) = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 160));
  *(a1 + 152) = a1 + 160;
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  v5 = (a1 + 184);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  v7 = *(a1 + 208);
  v6 = (a1 + 208);
  *(v6 - 4) = v5;
  *v5 = 0;
  *(v6 - 2) = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(v7);
  *v6 = 0;
  v6[1] = 0;
  *(v6 - 1) = v6;
}

void geo::Pool<HillshadeRenderable>::disposeElements(uint64_t a1)
{
  v23 = 0;
  v24 = 0;
  v22 = &v23;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v22, v2);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v24;
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
          v12 = (v11 + 408 * v10);
          v13 = v23;
          if (!v23)
          {
            goto LABEL_21;
          }

          v14 = &v23;
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
          if (v14 == &v23)
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
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v23);
}

void md::CartographicTiledRenderLayer<md::BuildingTileDataRenderable>::clearScene(uint64_t a1)
{
  if (*(a1 + 52) == 1)
  {
    v2 = *(a1 + 280);
    v8[0] = *(a1 + 272);
    v8[1] = v2;
    (*(*a1 + 120))(a1, v8);
  }

  if (*(a1 + 112))
  {
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(*(a1 + 104));
    *(a1 + 104) = 0;
    v3 = *(a1 + 96);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*(a1 + 88) + 8 * i) = 0;
      }
    }

    *(a1 + 112) = 0;
  }

  *(a1 + 280) = *(a1 + 272);
  geo::Pool<md::BuildingTileDataRenderable>::disposeElements(a1 + 224);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 136) = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 160));
  *(a1 + 152) = a1 + 160;
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  v5 = (a1 + 184);
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  v7 = *(a1 + 208);
  v6 = (a1 + 208);
  *(v6 - 4) = v5;
  *v5 = 0;
  *(v6 - 2) = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(v7);
  *v6 = 0;
  v6[1] = 0;
  *(v6 - 1) = v6;
}

void md::BuildingRenderLayer::renderablesWillLeaveView(uint64_t a1, uint64_t **a2)
{
  v3 = a1;
  v4 = *(a1 + 104);
  for (i = (a1 + 88); v4; v4 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,md::BuildingTileDataRenderable *>>>::erase(i, v4))
  {
    while (*(v4[16] + 412) > 0.0)
    {
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_6:
  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    goto LABEL_27;
  }

  v20 = v3;
  do
  {
    v21 = *v6;
    FillRect = grl::IconMetricsRenderResult::getFillRect(*(*v6 + 392));
    v9 = FillRect;
    v10 = *(FillRect + 104);
    v11 = *(v3 + 96);
    if (!*&v11)
    {
      goto LABEL_24;
    }

    v12 = v7;
    v13 = vcnt_s8(v11);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = v13.u32[0];
    if (v13.u32[0] > 1uLL)
    {
      v15 = *(FillRect + 104);
      if (v10 >= *&v11)
      {
        v15 = v10 % *&v11;
      }
    }

    else
    {
      v15 = (*&v11 - 1) & v10;
    }

    v16 = *(*i + 8 * v15);
    if (!v16 || (v17 = *v16) == 0)
    {
LABEL_24:
      operator new();
    }

    while (1)
    {
      v18 = *(v17 + 1);
      if (v18 == v10)
      {
        break;
      }

      if (v14 > 1)
      {
        if (v18 >= *&v11)
        {
          v18 %= *&v11;
        }
      }

      else
      {
        v18 &= *&v11 - 1;
      }

      if (v18 != v15)
      {
        goto LABEL_24;
      }

LABEL_23:
      v17 = *v17;
      if (!v17)
      {
        goto LABEL_24;
      }
    }

    if (!gdc::LayerDataRequestKey::operator==(v17 + 16, v9))
    {
      goto LABEL_23;
    }

    v7 = v12;
    v3 = v20;
    *(v17 + 16) = v21;
    ++v6;
  }

  while (v6 != v7);
  v6 = *a2;
  v7 = a2[1];
LABEL_27:
  if (*(*(v3 + 376) + 17) == 1)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  md::BuildingRenderLayer::animateTiles(v3, v6, v7, 1.0, 0.0, v19, 0.0);
}

void geo::Pool<md::BuildingTileDataRenderable>::disposeElements(uint64_t a1)
{
  v23 = 0;
  v24 = 0;
  v22 = &v23;
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::__emplace_unique_key_args<geo::Pool<gdc::FallbackNode>::Element *,geo::Pool<gdc::FallbackNode>::Element * const&>(&v22, v2);
      v2 = **v3;
      *v3 = v2;
    }

    while (v2);
    v4 = v24;
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
          v12 = (v11 + 776 * v10);
          v13 = v23;
          if (!v23)
          {
            goto LABEL_21;
          }

          v14 = &v23;
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
          if (v14 == &v23)
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
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v23);
}

void md::BuildingRenderLayer::animateTiles(uint64_t a1, uint64_t *a2, uint64_t *a3, float a4, float a5, float a6, float a7)
{
  v10 = a2;
  if (*(a1 + 408))
  {
    if (a2 != a3)
    {
      if (a4 <= a5)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      v15 = &__block_literal_global_5_13319;
      if (a5 > a4)
      {
        v15 = &__block_literal_global_13318;
      }

      v23 = v15;
      do
      {
        v16 = *v10;
        v17 = *v10 + 64;
        md::MercatorTerrainHeightCache::invalidateRect(*(a1 + 456), v17);
        v18 = [[VKTimedAnimation alloc] initWithDuration:0.449999988];
        *(v16 + 408) = v14;
        *(v16 + 412) = a4;
        *(v16 + 420) = a6;
        v19 = *(v16 + 432);
        md::LabelExternalPointFeature::incident(v19);
        [objc_claimAutoreleasedReturnValue() stop];
        v20 = MEMORY[0x1B8C62DA0](v23);
        [(VKTimedAnimation *)v18 setTimingFunction:VKAnimationCurveLinear];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = ___ZN2md19BuildingRenderLayer12animateTilesERKN3geo5sliceINSt3__111__wrap_iterIPKPNS_26BuildingTileDataRenderableEEEEEffff_block_invoke_3;
        v28[3] = &unk_1E7B34F48;
        v30 = a1;
        v31 = v16;
        v33 = a4;
        v34 = a5;
        v21 = v20;
        v35 = a6;
        v36 = a7;
        v29 = v21;
        v32 = v17;
        [(VKTimedAnimation *)v18 setStepHandler:v28];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = ___ZN2md19BuildingRenderLayer12animateTilesERKN3geo5sliceINSt3__111__wrap_iterIPKPNS_26BuildingTileDataRenderableEEEEEffff_block_invoke_4;
        v24[3] = &__block_descriptor_68_e8_v12__0B8l;
        v24[4] = a1;
        v24[5] = v16;
        v25 = a4;
        v26 = a5;
        v27 = a7;
        v24[6] = v17;
        [(VKAnimation *)v18 setCompletionHandler:v24];
        if (md::AnimationRunner::runAnimation(*(a1 + 464), &v18->super))
        {
          md::BuildingTileDataRenderable::setAnimation(v16, &v18->super);
        }

        ++v10;
      }

      while (v10 != a3);
    }
  }

  else if (a2 != a3)
  {
    do
    {
      v22 = *v10++;
      *(v22 + 408) = 1065353216;
      *(v22 + 412) = a5;
      *(v22 + 420) = a7;
    }

    while (v10 != a3);
  }
}