md::TerrainDebugOptions *md::TerrainDebugOptions::TerrainDebugOptions(md::TerrainDebugOptions *this, VKDebugSettings *a2)
{
  v3 = a2;
  *this = 16842752;
  *(this + 4) = 1;
  *this = [(VKDebugSettings *)v3 daVinciDebugRasterStyleAttribute];
  *(this + 2) = [(VKDebugSettings *)v3 daVinciAridityGroundTintingEnabled];
  *(this + 3) = [(VKDebugSettings *)v3 daVinciTemperatureGroundTintingEnabled];
  *(this + 4) = [(VKDebugSettings *)v3 daVinciMaterialRastersEnabled];

  return this;
}

void md::SceneStateManager::reset(md::SceneStateManager *this)
{
  md::SceneStateManager::clear(this);
  v3 = *(this + 6);
  v2 = *(this + 7);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 32;
      std::__tree<gdc::LayerDataWithWorld>::destroy(*(v2 - 16));
      v2 = v4;
    }

    while (v4 != v3);
  }

  *(this + 7) = v3;
  *(this + 280) = 0;
}

void std::vector<std::shared_ptr<md::TextDataString>,geo::allocator_adapter<std::shared_ptr<md::TextDataString>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](std::__shared_weak_count *a1)
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
          std::__shared_weak_count::__release_shared[abi:nn200100](a1);
        }

        v3 = (v3 - 16);
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1->~__shared_weak_count_0 = v2;
    v6 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::TextDataString>>(v6, v4);
  }
}

void std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>>>::__deallocate_node(*(a1 + 16));
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

void std::codecvt_utf8_utf16<char16_t,1114111ul,(std::codecvt_mode)0>::~codecvt_utf8_utf16[abi:nn200100]()
{
  MEMORY[0x1B8C61F80]();

  JUMPOUT(0x1B8C62190);
}

uint64_t md::CartographicTiledVectorRenderLayer<HillshadeRenderable>::~CartographicTiledVectorRenderLayer(void *a1)
{
  *a1 = &unk_1F2A2EE38;
  v2 = a1[44];
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  if (v3 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = **v3;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      ggl::RenderItem::~RenderItem((v5 + 1));
      MEMORY[0x1B8C62190](v5, 0x10F0C40137B0629);
      ++v3;
    }

    while (v3 != v4);
    v2 = a1[44];
  }

  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  if (v7 == v8)
  {
    goto LABEL_11;
  }

  do
  {
    v9 = *v7;
    v10 = **v7;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    ggl::RenderItem::~RenderItem((v9 + 1));
    MEMORY[0x1B8C62190](v9, 0x10F0C40137B0629);
    ++v7;
  }

  while (v7 != v8);
  v2 = a1[44];
  if (v2)
  {
LABEL_11:
    md::CartographicTiledRenderResources::~CartographicTiledRenderResources(v2);
    MEMORY[0x1B8C62190]();
  }

  return md::CartographicTiledRenderLayer<HillshadeRenderable>::~CartographicTiledRenderLayer(a1);
}

uint64_t *std::list<std::unique_ptr<gdc::SelectionContext>>::resize(uint64_t *result)
{
  v1 = result[2];
  if (v1 >= 2)
  {
    v2 = *(result[1] + 8);

    return std::list<std::unique_ptr<gdc::SelectionContext>>::erase(result, v2, result);
  }

  else if (!v1)
  {
    operator new();
  }

  return result;
}

uint64_t md::LineLabelFeature::publicName(md::LineLabelFeature *this, unint64_t a2)
{
  v2 = *(this + 48);
  v3 = *(this + 49) - v2;
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

uint64_t md::CartographicTiledRenderLayer<HillshadeRenderable>::~CartographicTiledRenderLayer(uint64_t a1)
{
  *a1 = &unk_1F2A2BE20;
  v2 = *(a1 + 320);
  if (v2)
  {
    *(a1 + 328) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 296);
  if (v3)
  {
    *(a1 + 304) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 272);
  if (v4)
  {
    *(a1 + 280) = v4;
    operator delete(v4);
  }

  geo::Pool<HillshadeRenderable>::disposeElements(a1 + 224);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 232));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 160));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(*(a1 + 104));
  v5 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  std::__function::__value_func<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::~__value_func[abi:nn200100](a1 + 56);
  *a1 = &unk_1F2A16858;
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  return a1;
}

mdm::zone_mallocator *std::__split_buffer<md::TextDataEntry,geo::allocator_adapter<md::TextDataEntry,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  for (i = *(a1 + 2); i != v3; i = *(a1 + 2))
  {
    *(a1 + 2) = i - 56;
    std::__destroy_at[abi:nn200100]<md::TextDataEntry,0>(i - 56);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextDataEntry>(v5, v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(HillshadeRenderable *,HillshadeRenderable *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::~PolygonRenderLayer(void *a1)
{
  md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::~PolygonRenderLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *gss::defaultValueForKey<gss::PropertyID,unsigned int>(int a1)
{
  if (a1 <= 274)
  {
    if (a1 <= 191)
    {
      if (a1 > 178)
      {
        if (a1 <= 182)
        {
          if (a1 == 179)
          {
            return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelIconGlyphStyle;
          }

          if (a1 == 181)
          {
            return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelIconGlyphBlendMode;
          }
        }

        else
        {
          switch(a1)
          {
            case 183:
              return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelIconBadgeLightBlendMode;
            case 185:
              return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelIconGlowBlendMode;
            case 189:
              return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelIconSize;
          }
        }
      }

      else if (a1 <= 167)
      {
        if (a1 == 123)
        {
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelTextVisibility;
        }

        if (a1 == 167)
        {
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelTextOrientation;
        }
      }

      else
      {
        switch(a1)
        {
          case 168:
            return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelTextAlternateOrientations;
          case 169:
            return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelLayoutStyle;
          case 170:
            return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelIconStyle;
        }
      }
    }

    else if (a1 <= 212)
    {
      if (a1 <= 208)
      {
        if (a1 == 192)
        {
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelAnnotationIconSize;
        }

        if (a1 == 207)
        {
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultShieldSize;
        }
      }

      else
      {
        switch(a1)
        {
          case 209:
            return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelIconTextSource;
          case 210:
            return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelTextSource;
          case 212:
            return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelIconColorSource;
        }
      }
    }

    else if (a1 > 224)
    {
      switch(a1)
      {
        case 225:
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelAlternateTextPositions;
        case 233:
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelOffsetPosition;
        case 236:
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelCollisionOverlayGroup;
      }
    }

    else
    {
      switch(a1)
      {
        case 213:
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelColorSource;
        case 223:
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelPositioningMode;
        case 224:
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelDefaultTextPosition;
      }
    }
  }

  else if (a1 > 367)
  {
    if (a1 <= 382)
    {
      if (a1 <= 374)
      {
        if (a1 == 368)
        {
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelSecondaryAnnotationImageSource;
        }

        if (a1 == 374)
        {
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelAnnotationLayout;
        }
      }

      else
      {
        switch(a1)
        {
          case 375:
            return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelAnnotation2Layout;
          case 376:
            return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelAnnotation2TextSource;
          case 377:
            return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelAnnotation2ImageSource;
        }
      }
    }

    else if (a1 > 469)
    {
      switch(a1)
      {
        case 470:
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelCollisionExclusionGroups;
        case 477:
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelAnnotationOffsetPosition;
        case 480:
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultManeuverDisplayMode;
      }
    }

    else
    {
      switch(a1)
      {
        case 383:
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultAlt1LabelIconImageSource;
        case 384:
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultAlt2LabelIconImageSource;
        case 454:
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultExternalFeatureCategory;
      }
    }
  }

  else if (a1 <= 333)
  {
    if (a1 <= 314)
    {
      if (a1 == 275)
      {
        return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelShieldVariant;
      }

      if (a1 == 287)
      {
        return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelAnnotationColorSource;
      }
    }

    else
    {
      switch(a1)
      {
        case 315:
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelTextPlacementSource;
        case 316:
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultNavLabelShieldSize;
        case 328:
          return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelTextSizingMode;
      }
    }
  }

  else if (a1 > 342)
  {
    switch(a1)
    {
      case 343:
        return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelMeshPositioningMode;
      case 365:
        return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelAnnotationImageSource;
      case 367:
        return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelSecondaryAnnotationTextSource;
    }
  }

  else
  {
    switch(a1)
    {
      case 334:
        return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultPickedLabelBalloonBehavior;
      case 339:
        return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultLabelAnnotationTextSource;
      case 341:
        return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::kDefaultTransitPlacement;
    }
  }

  return &gss::defaultValueForKey<gss::PropertyID,unsigned int>(gss::PropertyID)::_defaultValue;
}

void *md::World::layerDataTypesForSelectionSetType(void *result, uint64_t *a2, int a3)
{
  *result = 0u;
  *(result + 1) = 0u;
  *(result + 8) = 1065353216;
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      if (*(v4 + 10) == a3 && *(v4 + 18) != 2)
      {
        result = std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short>(v5, *(v4 + 8));
      }

      v4 = *v4;
    }

    while (v4);
  }

  return result;
}

uint64_t md::PolygonRenderLayer<(md::MapDataType)41,md::MapTileDataRenderable<md::PolygonTileData>>::~PolygonRenderLayer(void *a1)
{
  *a1 = &unk_1F2A0FF60;
  v2 = a1[59];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  a1[47] = &unk_1F2A4E720;
  v3 = a1[49];
  if (v3)
  {
    a1[50] = v3;
    operator delete(v3);
  }

  std::unique_ptr<md::PolygonRenderResources>::~unique_ptr[abi:nn200100](a1 + 46);

  return md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::~CartographicTiledVectorRenderLayer(a1);
}

mdm::zone_mallocator *std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      v3 = *v2;
      v4 = mdm::zone_mallocator::instance(result);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::~PolygonRenderLayer(void *a1)
{
  md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::~PolygonRenderLayer(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_unique_key_args<unsigned short,unsigned short>(void *result, unsigned __int16 a2)
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

LABEL_10:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 8) != a2)
  {
    goto LABEL_10;
  }

  return result;
}

std::__shared_weak_count *std::vector<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator>>::push_back[abi:nn200100](std::__shared_weak_count *result, uint64_t a2)
{
  v3 = result;
  shared_owners = result->__shared_owners_;
  shared_weak_owners = result->__shared_weak_owners_;
  if (shared_owners >= shared_weak_owners)
  {
    v7 = (shared_owners - result->__vftable) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = shared_weak_owners - result->__vftable;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v21 = result + 1;
    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[16 * v7];
    v14 = &v12[16 * v10];
    *v13 = *a2;
    v6 = v13 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v15 = v3->__shared_owners_ - v3->__vftable;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], v3->__vftable, v15);
    v17 = v3->__vftable;
    v3->__vftable = v16;
    v3->__shared_owners_ = v6;
    v18 = v3->__shared_weak_owners_;
    v3->__shared_weak_owners_ = v14;
    v19.__shared_weak_owners_ = v17;
    v20 = v18;
    v19.__vftable = v17;
    v19.__shared_owners_ = v17;
    result = std::__split_buffer<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator> &>::~__split_buffer(&v19);
  }

  else
  {
    *shared_owners = *a2;
    v6 = shared_owners + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3->__shared_owners_ = v6;
  return result;
}

uint64_t md::PendingSceneLogic::updateSelectionContextMap(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != a3)
  {
    while (*a2 != result)
    {
      a2 += 16;
      if (a2 == a3)
      {
        return result;
      }
    }

    if (a2 != a3)
    {
      v8 = *(*(a2 + 2) + 16);
      if (v8)
      {
        gdc::TileSetSelectionContext::TileSetSelectionContext(v9, a4, a5, a6);
        *(v8 + 8) = v9[1];
        if (v8 != v9)
        {
          *(v8 + 48) = v11;
          std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned short,void *> *>>((v8 + 16), v10[2]);
        }

        *(v8 + 56) = v12;
        v9[0] = &unk_1F2A61128;
        std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v10);
        std::unordered_set<unsigned short>::unordered_set(v9, a7);
        gdc::SelectionContext::setLayerDataTypes(v8, v9);
        return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v9);
      }
    }
  }

  return result;
}

uint64_t md::PolygonRenderLayer<(md::MapDataType)1,md::MapTileDataRenderable<md::PolygonTileData>>::~PolygonRenderLayer(void *a1)
{
  *a1 = &unk_1F2A0FE28;
  v2 = a1[59];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  a1[47] = &unk_1F2A4E720;
  v3 = a1[49];
  if (v3)
  {
    a1[50] = v3;
    operator delete(v3);
  }

  std::unique_ptr<md::PolygonRenderResources>::~unique_ptr[abi:nn200100](a1 + 46);

  return md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::~CartographicTiledVectorRenderLayer(a1);
}

gss::zone_mallocator *std::__split_buffer<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator> &>::~__split_buffer(gss::zone_mallocator *a1)
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
    v5 = gss::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<gss::StyleAttribute,unsigned short>>(v5, v4);
  }

  return a1;
}

void md::RasterRenderLayer::~RasterRenderLayer(md::RasterRenderLayer *this)
{
  md::RasterRenderLayer::~RasterRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A26AB0;
  std::unique_ptr<md::RasterRenderResources>::reset[abi:nn200100](this + 47, 0);
  v2 = *(this + 45);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::~CartographicTiledRenderLayer(this);
}

double gdc::TileSetSelectionContext::TileSetSelectionContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *a1 = &unk_1F2A610B8;
  *(a1 + 8) = a4;
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  return result;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelFeature *,geo::allocator_adapter<md::LabelFeature *,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
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
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeature *>(v5, v4);
  }

  return a1;
}

void std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned short,void *> *>>(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      do
      {
        *(v6 + 16) = *(a2 + 8);
        v8 = *v6;
        std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__node_insert_multi(a1, v6);
        a2 = *a2;
        if (v8)
        {
          v9 = a2 == 0;
        }

        else
        {
          v9 = 1;
        }

        v6 = v8;
      }

      while (!v9);
    }

    if (v8)
    {
      do
      {
        v10 = *v8;
        operator delete(v8);
        v8 = v10;
      }

      while (v10);
    }
  }

  if (a2)
  {
    std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::__emplace_multi<unsigned short const&>();
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::HasStyleAttributeRasterSet>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::HasStyleAttributeRasterSet>();
    unk_1EB83C690 = 0x985FB09D9DF9959FLL;
    qword_1EB83C698 = "md::ls::HasStyleAttributeRasterSet]";
    qword_1EB83C6A0 = 34;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::HasStyleAttributeRasterSet>(void)::metadata >= 0x200)
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

uint64_t md::LabelPoint::mercatorPoint(md::LabelPoint *this)
{
  if ((*(this + 45) & 1) == 0 && *(this + 46) == 1)
  {
    v12 = 0.0;
    v13 = 0uLL;
    geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(this, &v12);
    v11 = *&v13;
    v2 = tan(v12 * 0.5 + 0.785398163);
    v3 = log(v2);
    v4.f64[0] = v11;
    v4.f64[1] = v3;
    __asm { FMOV            V1.2D, #0.5 }

    *(this + 24) = vmlaq_f64(_Q1, vdupq_n_s64(0x3FC45F306DC9C883uLL), v4);
    *(this + 45) = 1;
  }

  return this + 24;
}

void gdc::SelectionContext::setLayerDataTypes(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((a1 + 16));
  v4 = *a2;
  *a2 = 0;
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 32) = v8;
  *(a1 + 24) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 40) = v10;
  *(a1 + 48) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 24);
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

    *(*(a1 + 16) + 8 * v11) = a1 + 32;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::vector<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::TextureWithReverseAlpha::Pos2DUVPipelineSetup *>(v2, v1);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(void)::metadata >= 0x200)
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

uint64_t gdc::LayerDataManager::requestLayerDataKeys(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = result;
    do
    {
      for (i = *(v6 + 16); i != v6 + 8; i = *(i + 8))
      {
        for (j = *(*(i + 16) + 32); j; j = *j)
        {
          v10 = *(v7 + 8);
          v11 = *(v7 + 16);
          if (v10 != v11)
          {
            while (*(j + 8) != *v10)
            {
              v10 += 12;
              if (v10 == v11)
              {
                goto LABEL_12;
              }
            }

            if (v10 != v11)
            {
              result = (*(**(v10 + 2) + 24))(*(v10 + 2), *(i + 16), a4);
            }
          }

LABEL_12:
          ;
        }
      }

      v6 += 32;
    }

    while (v6 != a3);
  }

  return result;
}

void *md::UniLineLabelFeature::mergeAdditionalAttributes(void *result, uint64_t a2, void *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *&v5 = 0x100010002;
    std::vector<GeoCodecsFeatureStylePair>::vector[abi:nn200100](&__p, &v5, 1uLL);
    std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,FeatureStyleAttributes const&,0>();
  }

  v3 = a3[1];
  *result = *a3;
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1B29B2508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void md::SingleGEOResourceDataRequester::requestDataKeys(md::SingleGEOResourceDataRequester *this, const gdc::SelectionContext *a2, char a3)
{
  v4 = *(this + 1);
  if (v4)
  {
    v35 = *(a2 + 1);
    v6 = (*(*v4 + 32))(v4, *(this + 12));
    if ((v6 & 0x100000000) != 0)
    {
      v7 = v6;
      v8 = (*(**(this + 1) + 24))(*(this + 1), *(this + 12));
      if (v9)
      {
        v10 = v8;
        v11 = HIDWORD(v8);
        if (*(this + 32) == 1)
        {
          v10 = *(this + 7);
        }

        if (*(this + 40) == 1)
        {
          LODWORD(v11) = *(this + 9);
        }

        v12 = *(a2 + 8);
        v13 = *v12;
        v14 = v7;
        if (v7)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          v16 = 0;
        }

        else
        {
          if (v7 >= v13)
          {
            v16 = 0;
          }

          else
          {
            v16 = 0;
            do
            {
              ++v16;
              v14 *= 2;
            }

            while (v14 < v13);
          }

          if (v14 > v13)
          {
            do
            {
              --v16;
              v32 = v14 > 2 * v13;
              v13 *= 2;
            }

            while (v32);
          }
        }

        v49 = 0;
        v50 = 0;
        v51 = 0;
        v17 = *(v12 + 3);
        if (v17)
        {
          v34 = -v16 & ~(-v16 >> 31);
          do
          {
            v18 = *(v17 + 17);
            v19 = 1 << v18;
            v20 = *(v17 + 6);
            v21 = (*(v17 + 5) % v19 + v19) % v19;
            v44[0] = *(v17 + 16);
            v44[1] = v18;
            v45 = v21;
            v46 = (v20 % v19 + v19) % v19;
            v47 = 0;
            v48 = 1;
            if (v18)
            {
              v22 = v18 - 1;
              if (v34 < v18 - 1)
              {
                v22 = v34;
              }

              v23 = v18 >= v22;
              LODWORD(v18) = v18 - v22;
              if (!v23)
              {
                LODWORD(v18) = 0;
              }
            }

            if (v10 <= v18 && v11 >= v18)
            {
              v50 = v49;
              v24 = **(a2 + 8);
              v25 = (*(**(this + 1) + 32))(*(this + 1), *(this + 12));
              if ((v25 & 0x100000000) == 0)
              {
                v33 = std::__throw_bad_optional_access[abi:nn200100]();
                if (v49)
                {
                  v50 = v49;
                  operator delete(v49);
                }

                _Unwind_Resume(v33);
              }

              v7 = v7 & 0xFFFFFFFFFF000000 | *(this + 22) | (*(this + 46) << 16);
              md::TileAdjustmentHelpers::adjustTileForSizeAndResourceType(v24, v25, *(this + 12), *(this + 1), v44, v7, &v49);
              v27 = v49;
              v26 = v50;
              while (v27 != v26)
              {
                v28 = *(this + 9);
                if (!v28 || (std::function<BOOL ()(geo::QuadTile const&)>::operator()(v28), (v29 & 1) != 0))
                {
                  (*(*this + 80))(v43, this, v27);
                  if (a3)
                  {
                    v30 = 1;
                  }

                  else
                  {
                    v30 = *(this + 4);
                  }

                  gdc::Tiled::mapDataKeyFromTile(v40, 0, v43, *(this + 11), v30);
                  gdc::LayerDataCollector::addDataKey(v35, v40, (v17 + 2));
                  if (geo::codec::VectorTile::hasComputedJunctions(*(this + 20)))
                  {
                    if (a3)
                    {
                      v31 = 1;
                    }

                    else
                    {
                      v31 = *(this + 4);
                    }

                    gdc::Tiled::mapDataKeyFromTile(v37, 1u, v43, *(this + 11), v31);
                    gdc::LayerDataCollector::addDataKey(v35, v37, (v17 + 2));
                    if (v38 != v39)
                    {
                      free(v38);
                    }
                  }

                  if (v41 != v42)
                  {
                    free(v41);
                  }
                }

                v27 += 32;
              }
            }

            v17 = *v17;
          }

          while (v17);
          if (v49)
          {
            v50 = v49;
            operator delete(v49);
          }
        }
      }
    }
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>();
    *algn_1EB83C848 = 0x9FD60998017D8C7FLL;
    qword_1EB83C850 = "md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>]";
    qword_1EB83C858 = 60;
  }
}

geo::QuadTile *md::TileAdjustmentHelpers::adjustTileForSizeAndResourceType(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v12 = 0;
  if (a1 && a2)
  {
    v13 = a1;
    v14 = a2;
    if (a2 >= a1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        ++v12;
        v14 *= 2;
      }

      while (v14 < a1);
    }

    if (v14 > a1)
    {
      do
      {
        --v12;
        v15 = v14 > 2 * v13;
        v13 *= 2;
      }

      while (v15);
    }
  }

  v16 = *(a5 + 1);
  result = (*(*a4 + 24))(a4, a3);
  if (v18)
  {
    v19 = v12 + v16;
    v20 = a6 & 0xFFFFFF;
    v21 = result >> 32;
    v22 = a6;
    if (result < a6)
    {
      v22 = result;
    }

    v23 = BYTE1(v20);
    if (BYTE1(v20) <= HIDWORD(result))
    {
      v23 = HIDWORD(result);
    }

    if ((a6 & 0x10000) != 0)
    {
      LODWORD(v21) = v23;
    }

    else
    {
      v22 = result;
    }

    if (v22 > v19)
    {
      v19 = v22;
    }

    if (v21 < v19)
    {
      v19 = v21;
    }

    v24 = *(a5 + 1) - v19;

    return md::TileAdjustmentHelpers::enumerateResourceTilesWithZAdjustment(v24, a3, a4, a5, v20, a7);
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[387];
}

geo::QuadTile *md::TileAdjustmentHelpers::enumerateResourceTilesWithZAdjustment(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v47 = a5;
  v48 = BYTE2(a5);
  v43 = a3;
  v44 = a2;
  v45 = &v47;
  v46 = a6;
  if (a1 < 0)
  {
    v25 = -a1;
    geo::QuadTile::begin(&v35, a4, -a1);
    while (1)
    {
      geo::QuadTile::end(v31, a4, v25);
      if (!geo::QuadTileIterator::operator!=(&v35, v31))
      {
        break;
      }

      v32 = v40;
      *v31 = v39;
      v33 = v41;
      v34 = v42;
      md::TileAdjustmentHelpers::enumerateResourceTilesWithZAdjustment(int,unsigned short,gdc::ResourceManifestInformer const*,geo::QuadTile const&,std::optional<gm::Range<unsigned char>>,std::vector<geo::QuadTile> &)::$_0::operator()(&v43, v31);
      ++v38;
      LOBYTE(v39) = v35;
      HIBYTE(v39) = BYTE1(v35) + v37;
      v40.i32[0] = (HIDWORD(v35) << v37) + v38 / (1 << v37);
      v40.i32[1] = (v36 << v37) + v38 % (1 << v37);
      v41 = 0;
      v42 = 1;
    }
  }

  else
  {
    v8 = *(a4 + 1);
    if (*(a4 + 1))
    {
      v10 = 0;
      v24 = a1;
      if (v8 < a1)
      {
        v24 = *(a4 + 1);
      }

      LOBYTE(v8) = v8 - v24;
      v9 = vshl_s32(*(a4 + 4), vneg_s32(vdup_n_s32(v24)));
      v11 = 1;
    }

    else
    {
      v9 = *(a4 + 4);
      v10 = *(a4 + 16);
      v11 = *(a4 + 24);
    }

    v12 = *a4;
    v27 = v8;
    v28 = v9;
    v26 = v12;
    v29 = v10;
    v30 = v11;
    (*(*a3 + 16))(&v35, a3, a2, &v26);
    if (v37 == 1)
    {
      v13 = v27;
      if (v27 >= HIBYTE(v47))
      {
        v14 = HIBYTE(v47);
      }

      else
      {
        v14 = v27;
      }

      v15 = (v27 >= v47) & ((v47 | (v48 << 16)) >> 16);
      if (!v15)
      {
        v14 = 0;
      }

      if (v15 == 1 && v14 > BYTE1(v35))
      {
        if (v27)
        {
          v17 = 0;
          LOBYTE(v14) = v27 - v14;
          if (v27 >= v14)
          {
            v14 = v14;
          }

          else
          {
            v14 = v27;
          }

          v13 = v27 - v14;
          v18 = vshl_s32(v28, vneg_s32(vdup_n_s32(v14)));
          v19 = 1;
        }

        else
        {
          v18 = v28;
          v17 = v29;
          v19 = v30;
        }

        v31[1] = v13;
        v32 = v18;
        v31[0] = v26;
        v33 = v17;
        v34 = v19;
        std::vector<geo::QuadTile>::emplace_back<geo::QuadTile>(a6, v31);
      }

      else
      {
        std::vector<geo::QuadTile>::push_back[abi:nn200100](a6, &v35);
      }
    }
  }

  v20 = *(a6 + 8);
  v21 = 126 - 2 * __clz((v20 - *a6) >> 5);
  if (v20 == *a6)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  std::__introsort<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,false>(*a6, v20, v22, 1);
  result = std::__unique[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<geo::QuadTile *>,std::__wrap_iter<geo::QuadTile *>,std::__equal_to &>(*a6, *(a6 + 8));
  if (*(a6 + 8) != result)
  {
    *(a6 + 8) = result;
  }

  return result;
}

void std::vector<ggl::Clut::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Clut::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Clut::Pos2DUVPipelineSetup *>(v2, v1);
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci18TemperatureTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A12E98;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci18TemperatureTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A12E98;
  a2[1] = v2;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geo::QuadTile>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::vector<geo::QuadTile>::__emplace_back_slow_path<geo::QuadTile const&>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  __p[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geo::QuadTile>>(v6);
  }

  v7 = (32 * v2);
  __p[0] = 0;
  __p[1] = v7;
  *(v7 + 24) = 0;
  *(v7 + 2) = *(a2 + 4);
  *v7 = *a2;
  *(v7 + 2) = *(a2 + 16);
  *(v7 + 24) = *(a2 + 24);
  __p[2] = (32 * v2 + 32);
  __p[3] = 0;
  std::vector<geo::QuadTile>::__swap_out_circular_buffer(a1, __p);
  v8 = a1[1];
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v8;
}

void std::vector<ggl::Textured::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Textured::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Textured::Pos2DUVPipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::TemperatureTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::vector<geo::QuadTile>::push_back[abi:nn200100](void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<geo::QuadTile>::__emplace_back_slow_path<geo::QuadTile const&>(a1, a2);
  }

  else
  {
    *(v3 + 24) = 0;
    *(v3 + 4) = *(a2 + 4);
    *v3 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void *geo::codec::vectorTileGetLocalizedLabelForNativeLabel(void *result, unint64_t a2, void *a3, void *a4)
{
  if (a2 && result)
  {
    v4 = result[108];
    v5 = result[109];
    if (v4 <= a2)
    {
      v6 = v5 >= a2;
      v7 = v5 == a2;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if (v7 || !v6)
    {
      goto LABEL_26;
    }

    v8 = a3;
    v9 = a4;
    v10 = a2 - v4;
    v11 = result[136];
    v12 = result;
    v13 = result[137];
    __key = v10;
    result = bsearch(&__key, v11, (v13 - v11) >> 5, 0x20uLL, geo::codec::compareSearchingLocalizationTableEntries);
    if (!result)
    {
      goto LABEL_23;
    }

    v14 = result[1];
    if (v14 == -1)
    {
      goto LABEL_23;
    }

    v15 = 114;
    if (result[3])
    {
      v15 = 128;
    }

    v16 = &v12[v15];
    v17 = v12[v15];
    if (v14 >= v16[1] - v17)
    {
LABEL_23:
      a4 = v9;
      if (v9)
      {
        *v9 = 0;
      }

      a3 = v8;
      goto LABEL_26;
    }

    a4 = v9;
    if (v9)
    {
      *v9 = result[2];
    }

    a3 = v8;
    if (!v17)
    {
LABEL_26:
      if (a3)
      {
        *a3 = 0;
      }

      if (a4)
      {
        *a4 = 0;
      }

      return result;
    }

    if (v8)
    {
      *v8 = v17 + v14;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
      *a4 = 0;
    }
  }

  return result;
}

uint64_t md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::~CartographicTiledRenderLayer(uint64_t a1)
{
  *a1 = &unk_1F2A2B5F8;
  v2 = *(a1 + 320);
  if (v2)
  {
    *(a1 + 328) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 296);
  if (v3)
  {
    *(a1 + 304) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 272);
  if (v4)
  {
    *(a1 + 280) = v4;
    operator delete(v4);
  }

  geo::Pool<md::MapTileDataRenderable<md::RasterTileData>>::disposeElements(a1 + 224);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 232));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 208));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 184));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 160));
  std::__tree<gdc::LayerDataWithWorld>::destroy(*(a1 + 136));
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::__deallocate_node(*(a1 + 104));
  v5 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  std::__function::__value_func<BOOL ()(md::MapTileDataRenderable<md::RasterTileData> *,md::MapTileDataRenderable<md::RasterTileData> *)>::~__value_func[abi:nn200100](a1 + 56);
  *a1 = &unk_1F2A16858;
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 16) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t *std::vector<geo::QuadTile>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = 0;
    do
    {
      v6 = v4 + v5;
      *(v6 + 24) = 0;
      *(v6 + 4) = *(v2 + v5 + 4);
      *v6 = *(v2 + v5);
      *(v6 + 16) = *(v2 + v5 + 16);
      *(v6 + 24) = *(v2 + v5 + 24);
      v5 += 32;
    }

    while (v2 + v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void md::ita::AssignAridityTextureIndex::operator()(uint64_t **a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = ecs2::ExecutionTask<md::RenderLayerProvider *>::service<md::RenderLayerProvider>(a1);
  v3 = (*(*v2 + 48))(v2);
  v4 = *(v3 + 2824);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v3 + 2824;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= 0x9A;
    v8 = v6 < 0x9A;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != v3 + 2824 && *(v5 + 32) <= 0x9Au)
  {
    v9 = *(v5 + 40);
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  v13 = v9;
  v10 = +[VKDebugSettings sharedSettings];
  md::TerrainDebugOptions::TerrainDebugOptions(v12, v10);

  v11 = ecs2::ExecutionTask<md::PassListProvider *,md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
  operator new();
}

geo::QuadTile *std::__unique[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<geo::QuadTile *>,std::__wrap_iter<geo::QuadTile *>,std::__equal_to &>(geo::QuadTile *this, geo::QuadTile *a2)
{
  v2 = a2;
  if (this != a2)
  {
    v3 = this;
    if ((this + 32) != a2)
    {
      while (1)
      {
        if (*(v3 + 24) == 1)
        {
          geo::QuadTile::computeHash(v3);
          *(v3 + 24) = 0;
        }

        v4 = *(v3 + 2);
        if (*(v3 + 56))
        {
          v7 = (*(v3 + 33) + ((*(v3 + 32) - 0x61C8864680B583EBLL) << 6) + ((*(v3 + 32) - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*(v3 + 32) - 0x61C8864680B583EBLL);
          v8 = (*(v3 + 9) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583EBLL) ^ v7;
          v5 = (*(v3 + 10) + (v8 << 6) + (v8 >> 2) - 0x61C8864680B583EBLL) ^ v8;
          *(v3 + 6) = v5;
          *(v3 + 56) = 0;
        }

        else
        {
          v5 = *(v3 + 6);
        }

        if (v4 == v5 && *v3 == *(v3 + 32) && *(v3 + 1) == *(v3 + 33) && *(v3 + 1) == *(v3 + 9) && *(v3 + 2) == *(v3 + 10))
        {
          break;
        }

        v6 = (v3 + 64);
        v3 = (v3 + 32);
        if (v6 == v2)
        {
          v3 = v2;
          break;
        }
      }

      if (v3 != v2)
      {
        for (i = v3 + 64; i != v2; i += 32)
        {
          if (*(v3 + 24) == 1)
          {
            geo::QuadTile::computeHash(v3);
            *(v3 + 24) = 0;
          }

          v10 = *(v3 + 2);
          if (i[24])
          {
            v13 = (i[1] + ((*i - 0x61C8864680B583EBLL) << 6) + ((*i - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*i - 0x61C8864680B583EBLL);
            v14 = (*(i + 1) + (v13 << 6) + (v13 >> 2) - 0x61C8864680B583EBLL) ^ v13;
            v11 = (*(i + 2) + (v14 << 6) + (v14 >> 2) - 0x61C8864680B583EBLL) ^ v14;
            *(i + 2) = v11;
            i[24] = 0;
          }

          else
          {
            v11 = *(i + 2);
          }

          if (v10 != v11 || *v3 != *i || *(v3 + 1) != i[1] || *(v3 + 1) != *(i + 1) || *(v3 + 2) != *(i + 2))
          {
            v12 = *i;
            *(v3 + 41) = *(i + 9);
            *(v3 + 2) = v12;
            v3 = (v3 + 32);
          }
        }

        return (v3 + 32);
      }
    }
  }

  return v2;
}

void md::GlobeRasterRenderLayer::~GlobeRasterRenderLayer(md::GlobeRasterRenderLayer *this)
{
  *this = &unk_1F2A10910;
  std::unique_ptr<md::GlobeRasterRenderResources>::reset[abi:nn200100](this + 44, 0);
  md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::~CartographicTiledRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A10910;
  std::unique_ptr<md::GlobeRasterRenderResources>::reset[abi:nn200100](this + 44, 0);

  md::CartographicTiledRenderLayer<md::MapTileDataRenderable<md::RasterTileData>>::~CartographicTiledRenderLayer(this);
}

void std::__introsort<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,false>(unint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a1;
LABEL_2:
  v9 = a3 - 1;
  while (1)
  {
    a1 = v8;
    a3 = v9;
    v10 = (a2 - v8) >> 5;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3uLL:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>(v8, (v8 + 32), a2 - 2);
          return;
        case 4uLL:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>(v8, v8 + 32, (v8 + 64), (a2 - 2));
          return;
        case 5uLL:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>(v8, v8 + 32, v8 + 64, v8 + 96, (a2 - 2));
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v31 = *(a2 - 31);
        v32 = *(v8 + 1);
        if (v31 == v32)
        {
          v33 = *(a2 - 7);
          v34 = *(v8 + 4);
          v35 = v33 < v34;
          if (v33 == v34)
          {
            v35 = *(a2 - 6) < *(v8 + 8);
          }

          if (!v35)
          {
            return;
          }
        }

        else if (v31 >= v32)
        {
          return;
        }

        v46 = *v8;
        v47 = *(v8 + 16);
        v48 = *(v8 + 24);
        v49 = *(v8 + 4);
        v50 = *(a2 - 23);
        *v8 = *(a2 - 2);
        *(v8 + 9) = v50;
        *(a2 - 32) = v46;
        *(a2 - 31) = v32;
        *(a2 - 28) = v49;
        *(a2 - 2) = v47;
        *(a2 - 8) = v48;
        return;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (a3 == -1)
    {
      if (v8 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,geo::QuadTile *>(v8, a2, a2);
      }

      return;
    }

    v36 = v10 >> 1;
    v37 = v8 + 32 * (v10 >> 1);
    if (v10 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>((v8 + 32 * (v10 >> 1)), v8, a2 - 2);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>(v8, (v8 + 32 * (v10 >> 1)), a2 - 2);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>((v8 + 32), (v37 - 32), a2 - 4);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>((v8 + 64), (v8 + 32 + 32 * v36), a2 - 6);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,0>((v37 - 32), v37, (v8 + 32 + 32 * v36));
      v38 = *v8;
      v39 = *(v8 + 16);
      v40 = *(v8 + 24);
      v41 = *(v8 + 4);
      v42 = *v37;
      *(v8 + 9) = *(v37 + 9);
      *v8 = v42;
      *v37 = v38;
      *(v37 + 4) = v41;
      *(v37 + 16) = v39;
      *(v37 + 24) = v40;
    }

    if ((a4 & 1) == 0)
    {
      v51 = *(v8 - 31);
      v52 = *(v8 + 1);
      if (v51 == v52)
      {
        v53 = *(v8 - 28);
        v54 = *(v8 + 4);
        v55 = v53 < v54;
        if (v53 == v54)
        {
          v55 = *(v8 - 24) < *(v8 + 8);
        }

        if (!v55)
        {
LABEL_67:
          v8 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,geo::QuadTile *,QuadTileCompare &>(v8, a2);
          a4 = 0;
          goto LABEL_2;
        }
      }

      else if (v51 >= v52)
      {
        goto LABEL_67;
      }
    }

    v43 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,geo::QuadTile *,QuadTileCompare &>(v8, a2);
    if ((v44 & 1) == 0)
    {
      goto LABEL_57;
    }

    v45 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *>(v8, v43);
    v8 = v43 + 32;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *>(v43 + 32, a2))
    {
      a2 = v43;
      if (v45)
      {
        return;
      }

      goto LABEL_1;
    }

    v9 = a3 - 1;
    if (!v45)
    {
LABEL_57:
      std::__introsort<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,false>(a1, v43, a3, a4 & 1);
      a4 = 0;
      v8 = v43 + 32;
      goto LABEL_2;
    }
  }

  if ((a4 & 1) == 0)
  {

    std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *>(v8, a2);
    return;
  }

  if (v8 == a2)
  {
    return;
  }

  v11 = v8 + 32;
  if ((v8 + 32) == a2)
  {
    return;
  }

  v12 = 0;
  v13 = v8;
  do
  {
    v14 = v13;
    v13 = v11;
    v15 = *(v11 + 1);
    v16 = *(v14 + 1);
    if (v15 == v16)
    {
      v17 = *(v13 + 4);
      v18 = *(v14 + 4);
      v19 = v17 < v18;
      if (v17 == v18)
      {
        v19 = *(v13 + 8) < *(v14 + 8);
      }

      if (!v19)
      {
        goto LABEL_33;
      }
    }

    else if (v15 >= v16)
    {
      goto LABEL_33;
    }

    v20 = *(v14 + 33);
    v21 = *(v14 + 36);
    v22 = *v13;
    v23 = *(v14 + 48);
    v24 = *(v14 + 56);
    for (i = v12; ; i -= 32)
    {
      v26 = v8 + i;
      *(v26 + 32) = *(v8 + i);
      *(v26 + 41) = *(v8 + i + 9);
      if (!i)
      {
        v30 = v8;
        goto LABEL_32;
      }

      v27 = *(v26 - 31);
      if (v20 == v27)
      {
        break;
      }

      if (v20 >= v27)
      {
        goto LABEL_31;
      }

LABEL_29:
      ;
    }

    v28 = *(v8 + i - 28);
    v29 = v21 < v28;
    if (v21 == v28)
    {
      v29 = SHIDWORD(v21) < *(v8 + i - 24);
    }

    if (v29)
    {
      goto LABEL_29;
    }

LABEL_31:
    v30 = v8 + i;
LABEL_32:
    *v30 = v22;
    *(v30 + 1) = v20;
    *(v30 + 2) = v56;
    *(v30 + 4) = v21;
    *(v30 + 16) = v23;
    *(v30 + 24) = v24;
LABEL_33:
    v11 = v13 + 32;
    v12 += 32;
  }

  while ((v13 + 32) != a2);
}

double md::SingleGEOResourceDataRequester::resolveTile@<D0>(const geo::QuadTile *a1@<X1>, uint64_t a2@<X8>)
{
  result = *(a1 + 4);
  *(a2 + 4) = result;
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 2);
  *(a2 + 24) = *(a1 + 24);
  return result;
}

void ggl::DaVinci::GlobeTexturedPipelineState::~GlobeTexturedPipelineState(ggl::DaVinci::GlobeTexturedPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<GeoCodecsLabelLineAttribute *,geo::allocator_adapter<GeoCodecsLabelLineAttribute *,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<GeoCodecsLabelLineAttribute *>(v2, v1);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(void)::metadata >= 0x200)
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

void gdc::LayerDataCollector::addDataKey(gdc::LayerDataCollector *this, const gdc::LayerDataRequestKey *a2, const geo::QuadTile *a3)
{
  v6 = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>(this + 6, a2);
  if (v6)
  {
    v34 = v6[16];
  }

  else
  {
    v7 = *(a2 + 4);
    v8 = geo::linear_map<unsigned short,std::vector<gdc::LayerDataHolder>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>,std::vector<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>>::operator[](this + 3, v7);
    v34 = 0x8E38E38E38E38E39 * ((*(v8 + 1) - *v8) >> 4);
    v9 = geo::linear_map<unsigned short,std::vector<gdc::LayerDataHolder>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>,std::vector<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>>::operator[](this + 3, v7);
    v33 = 1;
    v32 = 0;
    v10 = *(v9 + 1);
    v11 = *(v9 + 2);
    if (v10 >= v11)
    {
      v13 = 0x8E38E38E38E38E39 * ((v10 - *v9) >> 4);
      v14 = v13 + 1;
      if (v13 + 1 > 0x1C71C71C71C71C7)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v15 = 0x8E38E38E38E38E39 * ((v11 - *v9) >> 4);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0xE38E38E38E38E3)
      {
        v16 = 0x1C71C71C71C71C7;
      }

      else
      {
        v16 = v14;
      }

      v27 = v9;
      if (v16)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataHolder>>(v16);
      }

      v17 = 144 * v13;
      std::construct_at[abi:nn200100]<gdc::LayerDataHolder,gdc::LayerDataRequestKey const&,decltype(nullptr),gdc::LayerDataStatus,BOOL,gdc::LayerDataHolder*>(v17, a2, &v33, &v32);
      v12 = v17 + 144;
      v18 = *(v9 + 1);
      v19 = v17 + *v9 - v18;
      std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataHolder>,gdc::LayerDataHolder*>(*v9, v18, v19);
      v20 = *v9;
      *v9 = v19;
      v24[0] = v20;
      v24[1] = v20;
      *(v9 + 1) = v12;
      v25 = v20;
      v21 = *(v9 + 2);
      *(v9 + 2) = 0;
      v26 = v21;
      std::__split_buffer<gdc::LayerDataHolder>::~__split_buffer(v24);
    }

    else
    {
      v12 = std::construct_at[abi:nn200100]<gdc::LayerDataHolder,gdc::LayerDataRequestKey const&,decltype(nullptr),gdc::LayerDataStatus,BOOL,gdc::LayerDataHolder*>(v10, a2, &v33, &v32) + 144;
    }

    *(v9 + 1) = v12;
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,unsigned long>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,unsigned long>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,unsigned long>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,unsigned long>>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey const&,unsigned long &>(this + 6, a2);
  }

  gdc::LayerDataRequestKey::LayerDataRequestKey(v24, a2);
  v29 = *(a3 + 4);
  v28 = *a3;
  v30 = *(a3 + 2);
  v31 = *(a3 + 24);
  v22 = *(this + 1);
  if (v22 >= *(this + 2))
  {
    v23 = std::vector<gdc::LayerDataIndex>::__emplace_back_slow_path<gdc::LayerKeyPair &,unsigned long &>(this, v24, &v34);
  }

  else
  {
    v23 = std::construct_at[abi:nn200100]<gdc::LayerDataIndex,gdc::LayerKeyPair &,unsigned long &,gdc::LayerDataIndex*>(v22, v24, &v34) + 152;
  }

  *(this + 1) = v23;
  if (v25 != v27)
  {
    free(v25);
  }
}

unsigned __int16 *geo::linear_map<unsigned short,std::vector<gdc::LayerDataHolder>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>,std::vector<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>>::operator[](unsigned __int16 **a1, unsigned __int16 a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_7;
  }

  v5 = *a1;
  while (*v5 != a2)
  {
    v5 += 16;
    if (v5 == v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 == v4)
  {
LABEL_7:
    v18 = a2;
    memset(v19, 0, sizeof(v19));
    memset(v17, 0, sizeof(v17));
    if (v3 == v4)
    {
      goto LABEL_13;
    }

    v5 = v3;
    while (*v5 != a2)
    {
      v5 += 16;
      if (v5 == v4)
      {
        goto LABEL_13;
      }
    }

    if (v5 == v4)
    {
LABEL_13:
      v6 = a1[2];
      if (v4 >= v6)
      {
        v8 = (v4 - v3) >> 5;
        if ((v8 + 1) >> 59)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v9 = v6 - v3;
        v10 = v9 >> 4;
        if (v9 >> 4 <= (v8 + 1))
        {
          v10 = v8 + 1;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFE0)
        {
          v11 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>>(v11);
        }

        v12 = 32 * v8;
        *v12 = a2;
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
        *(32 * v8 + 8) = 0;
        std::vector<gdc::LayerDataHolder>::__init_with_size[abi:nn200100]<gdc::LayerDataHolder*,gdc::LayerDataHolder*>(32 * v8 + 8, 0, 0, 0);
        v7 = 32 * v8 + 32;
        v13 = a1[1] - *a1;
        v14 = v12 - v13;
        memcpy((v12 - v13), *a1, v13);
        v15 = *a1;
        *a1 = v14;
        a1[1] = v7;
        a1[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v4 = a2;
        *(v4 + 2) = 0;
        *(v4 + 3) = 0;
        *(v4 + 1) = 0;
        std::vector<gdc::LayerDataHolder>::__init_with_size[abi:nn200100]<gdc::LayerDataHolder*,gdc::LayerDataHolder*>((v4 + 4), 0, 0, 0);
        v7 = (v4 + 16);
      }

      a1[1] = v7;
      v5 = (v7 - 32);
    }

    v20 = v19;
    std::vector<gdc::LayerDataHolder>::__destroy_vector::operator()[abi:nn200100](&v20);
    v20 = v17;
    std::vector<gdc::LayerDataHolder>::__destroy_vector::operator()[abi:nn200100](&v20);
  }

  return v5 + 4;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>();
    unk_1EB83C950 = 0x563FF6883E9740F7;
    qword_1EB83C958 = "md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>]";
    qword_1EB83C960 = 56;
  }
}

void ggl::DaVinci::GlobeTexturedMesh::~GlobeTexturedMesh(ggl::DaVinci::GlobeTexturedMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::AridityTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[396];
}

mdm::zone_mallocator *std::__split_buffer<md::LabelLineStitchSegment,geo::allocator_adapter<md::LabelLineStitchSegment,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v2 = *(a1 + 2);
  if (v2 != *(a1 + 1))
  {
    *(a1 + 2) = (v2 - *(a1 + 1) - 136) % 0x88uLL + *(a1 + 1);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineStitchSegment>(v4, v3);
  }

  return a1;
}

void std::vector<gdc::LayerDataHolder>::__init_with_size[abi:nn200100]<gdc::LayerDataHolder*,gdc::LayerDataHolder*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1C71C71C71C71C8)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataHolder>>(a4);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataHolder>>(unint64_t a1)
{
  if (a1 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci14AridityTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A125A8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::DaVinci::GlobeTextured>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::DaVinci::GlobeTextured>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci14AridityTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A125A8;
  a2[1] = v2;
  return result;
}

void std::vector<gdc::LayerDataHolder>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 18;
        std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::LayerDataRequestKey::LayerDataRequestKey(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = a1 + 48;
  *(a1 + 24) = a1 + 48;
  *(a1 + 32) = a1 + 48;
  *(a1 + 40) = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>((a1 + 16), *(a2 + 16), *(a2 + 24));
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelLineSegmentInfo,geo::allocator_adapter<md::LabelLineSegmentInfo,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineSegmentInfo>(v5, v4);
  }

  return a1;
}

uint64_t std::construct_at[abi:nn200100]<gdc::LayerDataHolder,gdc::LayerDataRequestKey const&,decltype(nullptr),gdc::LayerDataStatus,BOOL,gdc::LayerDataHolder*>(uint64_t a1, uint64_t a2, _DWORD *a3, _BYTE *a4)
{
  gdc::LayerDataRequestKey::LayerDataRequestKey(v9, a2);
  LODWORD(a3) = *a3;
  LOBYTE(a4) = *a4;
  *a1 = v9[0];
  *(a1 + 8) = v10;
  *(a1 + 16) = a1 + 48;
  *(a1 + 24) = a1 + 48;
  *(a1 + 32) = a1 + 48;
  *(a1 + 40) = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>((a1 + 16), v11, v12);
  v7 = v15;
  *(a1 + 80) = v14;
  *(a1 + 96) = v7;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a3;
  *(a1 + 132) = a4;
  *(a1 + 136) = 0;
  if (v11 != v13)
  {
    free(v11);
  }

  return a1;
}

void std::vector<ggl::DaVinci::GlobeTexturedPipelineSetup *,geo::allocator_adapter<ggl::DaVinci::GlobeTexturedPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::DaVinci::GlobeTexturedPipelineSetup *>(v2, v1);
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::NeedsFunctionConstantsUpdate const&,md::ls::HasStyleAttributeRasterSet const&,md::ls::RequiresShaderTextureID<DaVinci::AridityTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__shared_ptr_pointer<md::RasterSharedRenderResources *,std::shared_ptr<md::RasterSharedRenderResources>::__shared_ptr_default_delete<md::RasterSharedRenderResources,md::RasterSharedRenderResources>,std::allocator<md::RasterSharedRenderResources>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

BOOL std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,unsigned long>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,unsigned long>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,unsigned long>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,unsigned long>>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey const&,unsigned long &>(void *a1, unsigned __int8 *a2)
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

  if (*(v9 + 16) != v10)
  {
    goto LABEL_20;
  }

  if (*(v9 + 12) != v11)
  {
    goto LABEL_20;
  }

  result = gdc::GenericKey::operator==((v9 + 4), (a2 + 16));
  if (!result)
  {
    goto LABEL_20;
  }

  return result;
}

void md::RasterSharedRenderResourcesInternal::~RasterSharedRenderResourcesInternal(md::RasterSharedRenderResourcesInternal *this)
{
  *this = &unk_1F2A26A90;
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }
}

{
  md::RasterSharedRenderResourcesInternal::~RasterSharedRenderResourcesInternal(this);

  JUMPOUT(0x1B8C62190);
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::LayerDataHolder>,gdc::LayerDataHolder*>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(a3, v6);
      *(a3 + 112) = *(v6 + 112);
      *(v6 + 112) = 0;
      *(v6 + 120) = 0;
      *(a3 + 128) = *(v6 + 128);
      v6 += 144;
      a3 += 144;
    }

    while (v6 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>,0>(v5);
      v5 += 18;
    }

    while (v5 != a2);
  }
}

uint64_t md::LabelLineSegmentImpl::vertexInfo(md::LabelLineSegmentImpl *this, uint64_t a2)
{
  return *(this + 10) + 4 * a2;
}

{
  return *(this + 10) + 4 * a2;
}

uint64_t std::__split_buffer<gdc::LayerDataHolder>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>,0>((i - 144));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleTextureIndex>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignStyleTextureIndex::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t std::vector<gdc::LayerDataIndex>::__emplace_back_slow_path<gdc::LayerKeyPair &,unsigned long &>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1AF286BCA1AF286)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataIndex>>(v6);
  }

  v7 = std::construct_at[abi:nn200100]<gdc::LayerDataIndex,gdc::LayerKeyPair &,unsigned long &,gdc::LayerDataIndex*>(152 * v3, a2, a3);
  v9 = *a1;
  v8 = a1[1];
  v10 = v7 - &v8[-*a1];
  v11 = v7 + 152;
  if (v8 != *a1)
  {
    v12 = 0;
    v13 = -8 * (&v8[-*a1] >> 3) + 152 * v3;
    do
    {
      v14 = gdc::LayerDataRequestKey::LayerDataRequestKey(v13 + v12, &v9[v12]);
      *(v14 + 136) = 0;
      *(v14 + 116) = *&v9[v12 + 116];
      *(v14 + 112) = *&v9[v12 + 112];
      *(v14 + 128) = *&v9[v12 + 128];
      *(v14 + 136) = v9[v12 + 136];
      *(v14 + 144) = *&v9[v12 + 144];
      v12 += 152;
    }

    while (&v9[v12] != v8);
    do
    {
      v15 = *(v9 + 2);
      if (v15 != *(v9 + 4))
      {
        free(v15);
      }

      v9 += 152;
    }

    while (v9 != v8);
  }

  v16 = *a1;
  *a1 = v10;
  a1[1] = v11;
  a1[2] = 0;
  if (v16)
  {
    operator delete(v16);
  }

  return v11;
}

uint64_t md::FixedLabelLineSegment<4ul>::vertexInfo(uint64_t a1, uint64_t a2)
{
  return a1 + 4 * a2 + 240;
}

{
  return a1 + 4 * a2 + 240;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>();
    unk_1EB83C9A0 = 0x57EF686AEB2B6CD0;
    qword_1EB83C9A8 = "md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>]";
    qword_1EB83C9B0 = 54;
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataIndex>>(unint64_t a1)
{
  if (a1 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(void)::metadata >= 0x200)
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

uint64_t md::FixedLabelLineSegment<2ul>::vertexInfo(uint64_t a1, uint64_t a2)
{
  return a1 + 4 * a2 + 144;
}

{
  return a1 + 4 * a2 + 144;
}

void ggl::TextureWithReverseAlpha::Pos2DUVPipelineState::~Pos2DUVPipelineState(ggl::TextureWithReverseAlpha::Pos2DUVPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::construct_at[abi:nn200100]<gdc::LayerDataIndex,gdc::LayerKeyPair &,unsigned long &,gdc::LayerDataIndex*>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  gdc::LayerDataRequestKey::LayerDataRequestKey(v9, a2);
  v17 = *(a2 + 116);
  v16 = *(a2 + 112);
  v18 = *(a2 + 128);
  v19 = *(a2 + 136);
  v6 = *a3;
  *a1 = v9[0];
  *(a1 + 8) = v10;
  *(a1 + 16) = a1 + 48;
  *(a1 + 24) = a1 + 48;
  *(a1 + 32) = a1 + 48;
  *(a1 + 40) = 32;
  geo::small_vector_base<unsigned char>::append<unsigned char const*>((a1 + 16), v11, v12);
  v7 = v15;
  *(a1 + 80) = v14;
  *(a1 + 96) = v7;
  *(a1 + 116) = v17;
  *(a1 + 112) = v16;
  *(a1 + 128) = v18;
  *(a1 + 136) = v19;
  *(a1 + 144) = v6;
  if (v11 != v13)
  {
    free(v11);
  }

  return a1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::StyleTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[398];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci12StyleTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A12DC8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void ggl::Clut::Pos2DUVPipelineState::~Pos2DUVPipelineState(ggl::Clut::Pos2DUVPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__vdeallocate(gss::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v3 = gss::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::pair<gss::StyleAttribute,unsigned short>>(v3, v1);
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>,0>(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[2];
  if (v3 != a1[4])
  {

    free(v3);
  }
}

BOOL gdc::GenericKey::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64) && (v2 = *a1, v4 = *(a1 + 8) - v2, v5 = *a2, v4 == *(a2 + 8) - v5))
  {
    return memcmp(v2, v5, v4) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci12StyleTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A12DC8;
  a2[1] = v2;
  return result;
}

void std::vector<BOOL,geo::allocator_adapter<BOOL,mdm::zone_mallocator>>::push_back(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL,geo::allocator_adapter<BOOL,mdm::zone_mallocator>>::reserve(a1, v7);
    v4 = *(a1 + 8);
  }

  *(a1 + 8) = v4 + 1;
  v8 = *a1;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = v8[v9] | v10;
  }

  else
  {
    v11 = v8[v9] & ~v10;
  }

  v8[v9] = v11;
}

void ggl::Textured::Pos2DUVPipelineState::~Pos2DUVPipelineState(ggl::Textured::Pos2DUVPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

double md::RegionalResourceSetFetcher::resourceTileForTile@<D0>(const geo::QuadTile *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  result = *(a1 + 4);
  *(a2 + 4) = result;
  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = 1;
  return result;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<geo::allocator_adapter<md::TextDataEntry,mdm::zone_mallocator>,md::TextDataEntry*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *(a3 + 8) = *(v5 + 8);
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = *(v5 + 48);
      *(a3 + 24) = *(v5 + 24);
      *(a3 + 40) = *(v5 + 40);
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      *(v5 + 40) = 0;
      v5 += 56;
      a3 += 56;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:nn200100]<md::TextDataEntry,0>(v4);
      v4 += 56;
    }

    while (v4 != a2);
  }
}

void md::InjectedFeaturesDataRequester::requestDataKeys(md::InjectedFeaturesDataRequester *this, const gdc::SelectionContext *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 1);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  std::vector<geo::QuadTile>::reserve(&v32, *(*(a2 + 8) + 32));
  v4 = *(*(a2 + 8) + 24);
  if (v4)
  {
    v5 = v33;
    do
    {
      v11 = *(v4 + 17);
      v12 = (*(v4 + 5) % (1 << v11) + (1 << v11)) % (1 << v11);
      v13 = (*(v4 + 6) % (1 << v11) + (1 << v11)) % (1 << v11);
      v14 = *(v4 + 16);
      v35.i8[0] = v14;
      v35.i8[1] = v11;
      v35.i32[1] = v12;
      v36 = v13;
      v38 = 0;
      v39 = 1;
      v15 = **(a2 + 8);
      v28 = 0x1200000000;
      LOBYTE(v29) = 1;
      md::TileAdjustmentHelpers::adjustTileForSizeAndRange(v22, v15, 0x100u, &v28, &v35);
      if (v27)
      {
        v16 = v22[1];
      }

      else
      {
        v16 = v11;
      }

      BYTE1(v28) = v16;
      v17 = v23;
      v18 = v24;
      if (!v27)
      {
        v17 = v12;
        v18 = v13;
      }

      HIDWORD(v28) = v17;
      v29 = v18;
      v19 = v22[0];
      if (!v27)
      {
        v19 = v14;
      }

      LOBYTE(v28) = v19;
      v20 = v25;
      if (!v27)
      {
        v20 = 0;
      }

      v30 = v20;
      v21 = v26;
      if (!v27)
      {
        v21 = 1;
      }

      v31 = v21;
      if (v5 >= v34)
      {
        v5 = std::vector<geo::QuadTile>::__emplace_back_slow_path<geo::QuadTile const&>(&v32, &v28);
      }

      else
      {
        *(v5 + 1) = v16;
        *(v5 + 1) = v17;
        *(v5 + 2) = v18;
        *v5 = v19;
        *(v5 + 2) = v20;
        *(v5 + 24) = v31;
        v5 = (v5 + 32);
      }

      v33 = v5;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v5 = v33;
  }

  v6 = 126 - 2 * __clz((v5 - v32) >> 5);
  if (v5 == v32)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,QuadTileCompare &,geo::QuadTile *,false>(v32, v5, v7, 1);
  v8 = std::__unique[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<geo::QuadTile *>,std::__wrap_iter<geo::QuadTile *>,std::__equal_to &>(v32, v33);
  v9 = v32;
  v10 = v33;
  if (v8 != v33)
  {
    v33 = v8;
    v10 = v8;
  }

  if (v32 != v10)
  {
    do
    {
      v35 = vrev64_s32(*(v9 + 4));
      v36 = *(v9 + 1);
      v37 = *v9;
      gdc::LayerDataRequestKey::LayerDataRequestKey(v22, 0, 62, &v35, 4);
      gdc::LayerDataCollector::addDataKey(v3, v22, v9);
      if (v25 != v27)
      {
        free(v25);
      }

      v9 = (v9 + 32);
    }

    while (v9 != v10);
    v9 = v32;
  }

  if (v9)
  {
    v33 = v9;
    operator delete(v9);
  }
}

void sub_1B29B609C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleIndexTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleIndexTextureIndex>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignStyleIndexTextureIndex::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>();
    *algn_1EB83C868 = 0xC69E45AA7591636ELL;
    qword_1EB83C870 = "md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>]";
    qword_1EB83C878 = 59;
  }
}

void *std::vector<geo::QuadTile>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::QuadTile>>(a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

uint64_t md::TileAdjustmentHelpers::adjustTileForSizeAndRange(uint64_t result, unsigned int a2, unsigned int a3, int *a4, char *a5)
{
  v5 = 0;
  if (a2 && a3)
  {
    v6 = a2;
    v7 = a3;
    if (a3 >= a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        ++v5;
        v7 *= 2;
      }

      while (v7 < a2);
    }

    if (v7 > a2)
    {
      do
      {
        --v5;
        v8 = v7 > 2 * v6;
        v6 *= 2;
      }

      while (v8);
    }
  }

  if (*(a4 + 8) != 1)
  {
    goto LABEL_21;
  }

  v9 = a5[1];
  v10 = v5 + v9;
  if (*a4 > v10)
  {
    v10 = *a4;
  }

  if (a4[1] < v10)
  {
    v10 = a4[1];
  }

  LOBYTE(v11) = v9 - v10;
  if ((v9 - v10) >= 0)
  {
    if (a5[1])
    {
      v12 = 0;
      if (v9 >= v11)
      {
        v11 = v11;
      }

      else
      {
        v11 = a5[1];
      }

      LOBYTE(v9) = v9 - v11;
      v13 = vshl_s32(*(a5 + 4), vneg_s32(vdup_n_s32(v11)));
      v14 = 1;
    }

    else
    {
      v13 = *(a5 + 4);
      v12 = *(a5 + 2);
      v14 = a5[24];
    }

    v15 = *a5;
    *(result + 1) = v9;
    *(result + 4) = v13;
    *result = v15;
    *(result + 16) = v12;
    *(result + 24) = v14;
    v16 = 1;
  }

  else
  {
LABEL_21:
    v16 = 0;
    *result = 0;
  }

  *(result + 32) = v16;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(void)::metadata >= 0x200)
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

void md::SkyRenderLayer::~SkyRenderLayer(md::SkyRenderLayer *this)
{
  *this = &unk_1F2A53DA8;
  std::unique_ptr<md::SkyRenderResources>::reset[abi:nn200100](this + 6, 0);
  *this = &unk_1F2A16858;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A53DA8;
  std::unique_ptr<md::SkyRenderResources>::reset[abi:nn200100](this + 6, 0);
  *this = &unk_1F2A16858;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

unsigned __int8 *gdc::LayerDataRequestKey::LayerDataRequestKey(unsigned __int8 *a1, unsigned __int8 a2, __int16 a3, int *a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  gdc::GenericKey::GenericKey(a1 + 2, a4, a5);
  v6 = (*(a1 + 10) + ((*(a1 + 4) - 0x61C8864680B583EBLL) << 6) + ((*(a1 + 4) - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*(a1 + 4) - 0x61C8864680B583EBLL);
  *(a1 + 11) = v6;
  a1[96] = 0;
  a1[100] = 0;
  *(a1 + 13) = (v6 + ((*a1 - 0x61C8864680B583EBLL) << 6) + ((*a1 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a1 - 0x61C8864680B583EBLL);
  return a1;
}

void geo::small_vector_base<geo::Unit<geo::MeterUnitDescription,double>>::grow(uint64_t **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = (1 << -__clz(v5 + 1));
  if (v5 >= 0xFFFFFFFFFFFFFFFELL)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 <= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  v10 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
  v11 = *a1;
  v12 = a1[1];
  if (*a1 != v12)
  {
    v13 = v10;
    v14 = *a1;
    do
    {
      v15 = *v14++;
      *v13++ = v15;
    }

    while (v14 != v12);
  }

  if (v3 != v6)
  {
    free(v11);
  }

  *a1 = v10;
  a1[1] = (v10 + v4 - v3);
  a1[3] = v9;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::StyleIndexTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[389];
}

uint64_t *std::vector<md::LabelLineStitchSegment,geo::allocator_adapter<md::LabelLineStitchSegment,mdm::zone_mallocator>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      v6 = *(v2 + 16);
      *v5 = *v2;
      *(v5 + 16) = v6;
      v7 = *(v2 + 32);
      *(v5 + 48) = *(v2 + 48);
      *(v5 + 32) = v7;
      *(v5 + 56) = *(v2 + 56);
      v8 = *(v2 + 72);
      *(v5 + 75) = *(v2 + 75);
      *(v5 + 72) = v8;
      v9 = *(v2 + 80);
      *(v5 + 96) = *(v2 + 96);
      *(v5 + 80) = v9;
      *(v5 + 104) = *(v2 + 104);
      v10 = *(v2 + 120);
      *(v5 + 123) = *(v2 + 123);
      *(v5 + 120) = v10;
      *(v5 + 128) = *(v2 + 128);
      v2 += 136;
      v5 += 136;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v11 = result[1];
  result[1] = a2[2];
  a2[2] = v11;
  v12 = result[2];
  result[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

void ggl::Fog::FogPipelineSetup::~FogPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::S2ResourceDataRequester::requestDataKeys(md::S2ResourceDataRequester *this, const gdc::SelectionContext *a2, char a3)
{
  if (*(this + 1))
  {
    v3 = *(*(a2 + 8) + 24);
    if (v3)
    {
      v6 = *(a2 + 1);
      do
      {
        v7 = *(v3 + 17);
        v8 = 1;
        v9 = 1 << v7;
        v10 = *(v3 + 6);
        v11 = (*(v3 + 5) % v9 + v9) % v9;
        v15[0] = *(v3 + 16);
        v15[1] = v7;
        v16 = v11;
        v17 = (v10 % v9 + v9) % v9;
        v18 = 0;
        v19 = 1;
        if ((a3 & 1) == 0)
        {
          v8 = *(this + 4);
        }

        gdc::Tiled::mapDataKeyFromTile(v12, 0, v15, *(this + 11), v8);
        gdc::LayerDataCollector::addDataKey(v6, v12, (v3 + 2));
        if (v13 != v14)
        {
          free(v13);
        }

        v3 = *v3;
      }

      while (v3);
    }
  }
}

void ggl::Fog::FogPipelineState::~FogPipelineState(ggl::Fog::FogPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci17StyleIndexTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A12CF8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

std::__shared_weak_count *geo::codec::roadFeatureCrossings(std::__shared_weak_count *this, const GeoCodecsRoadFeature *a2, void *a3, unint64_t *a4)
{
  *a3 = 0;
  if (this)
  {
    if (WORD1(this[6].__vftable) && LODWORD(this[4].__vftable) > a2 && (shared_owners = this->__shared_owners_) != 0)
    {
      v5 = this;
      this = std::__shared_weak_count::lock(shared_owners);
      if (this)
      {
        v8 = v5->__vftable;
        if (v5->__vftable && (shared_weak_owners = v5[5].__shared_weak_owners_, v10 = WORD1(v5[6].__vftable), v8[18].__get_deleter >= (shared_weak_owners + v10)) && (on_zero_shared_weak = v8[18].__on_zero_shared_weak) != 0)
        {
          if (WORD1(v5[6].__vftable))
          {
            v12 = 0;
            v13 = 0;
            v14 = (on_zero_shared_weak + 12 * shared_weak_owners);
            v15 = v14;
            do
            {
              v16 = *v15;
              v15 += 6;
              v17 = v16 == a2;
              if (v16 == a2)
              {
                ++v13;
              }

              if (v17 && v12 == 0)
              {
                v12 = v14;
              }

              v14 = v15;
              --v10;
            }

            while (v10);
          }

          else
          {
            v13 = 0;
            v12 = 0;
          }

          *a3 = v13;
        }

        else
        {
          v12 = 0;
        }

        if (!atomic_fetch_add(&this->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v18 = this;
          (this->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v18);
        }

        return v12;
      }
    }

    else
    {
      return 0;
    }
  }

  return this;
}

void gdc::LayerDataManager::preloadLayerDataKeys(void *a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = a1;
    do
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(&v8, (v3 + 2));
      std::vector<md::MuninJunction *>::vector[abi:nn200100](__p, v3 + 16);
      v5 = *a2;
      v4 = a2[1];
      if (*a2 == v4)
      {
        goto LABEL_9;
      }

      v6 = *a2;
      while (v9 != *v6)
      {
        v6 += 24;
        if (v6 == v4)
        {
          goto LABEL_9;
        }
      }

      if (v6 == v4)
      {
LABEL_9:
        v14 = 1065353216;
        v15 = v9;
        memset(v13, 0, sizeof(v13));
        memset(v16, 0, sizeof(v16));
        v17 = 1065353216;
        while (v5 != v4)
        {
          if (v9 == *v5)
          {
            if (v5 != v4)
            {
              goto LABEL_18;
            }

            break;
          }

          v5 += 24;
        }

        if (v4 >= a2[2])
        {
          v7 = std::vector<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>>>::__emplace_back_slow_path<std::pair<unsigned short,std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>> const&>(a2, &v15);
        }

        else
        {
          *v4 = v9;
          v7 = (v4 + 24);
          std::unordered_set<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::unordered_set((v4 + 4), v16);
        }

        a2[1] = v7;
        v5 = (v7 - 48);
LABEL_18:
        std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table(v16);
        std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table(v13);
        v6 = v5;
      }

      std::__hash_table<gdc::LayerDataRequestKey,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,std::allocator<gdc::LayerDataRequestKey>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,gdc::LayerDataRequestKey const&>(v6 + 1, &v8);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v10 != v11)
      {
        free(v10);
      }

      v3 = *v3;
    }

    while (v3);
  }
}

uint64_t md::LabelLine::flagNameOrStyleChanges(uint64_t this, uint64_t a2, int a3, int a4)
{
  v4 = (a2 - this) >> 4;
  if (v4 >= 2)
  {
    v5 = v4 - 1;
    v6 = (this + 16);
    do
    {
      if (a3)
      {
        v7 = *(*(v6 - 2) + 38) != *(*v6 + 38);
        if (a4)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v7 = 0;
        if (a4)
        {
LABEL_7:
          v8 = *(*(v6 - 2) + 40) != *(*v6 + 40);
          goto LABEL_8;
        }
      }

      v8 = 0;
LABEL_8:
      if (v7 || v8)
      {
        if (*(v6 - 8) == 1)
        {
          *(v6 - 6) = 1;
        }

        else
        {
          *(v6 - 7) = 1;
        }

        if (v6[8] == 1)
        {
          v6[9] = 1;
        }

        else
        {
          v6[10] = 1;
        }
      }

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  return this;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci17StyleIndexTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A12CF8;
  a2[1] = v2;
  return result;
}

void gdc::LayerDataManager::createDataRequests(void *a1, uint64_t *a2, unsigned __int16 **a3, uint64_t a4)
{
  std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::clear(a1[7] + 216);
  v8 = *a2;
  v7 = a2[1];
  v24 = v7;
  while (v8 != v7)
  {
    for (i = *(v8 + 16); i != v8 + 8; i = *(i + 8))
    {
      for (j = *(*(i + 16) + 32); j; j = *j)
      {
        v11 = a1[1];
        v12 = a1[2];
        if (v11 != v12)
        {
          v13 = *(j + 8);
          while (v13 != *v11)
          {
            v11 += 12;
            if (v11 == v12)
            {
              goto LABEL_13;
            }
          }

          if (v11 != v12)
          {
            v14 = *(v11 + 1);
            v15 = *(*(i + 16) + 8);
            v16 = *geo::linear_map<unsigned short,std::vector<gdc::LayerDataHolder>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>,std::vector<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>>::operator[]((v15 + 24), *(j + 8));
            v17 = geo::linear_map<unsigned short,std::vector<gdc::LayerDataHolder>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>,std::vector<std::pair<unsigned short,std::vector<gdc::LayerDataHolder>>>>::operator[]((v15 + 24), v13);
            gdc::LayerDataSource::createLayerDataRequests(v14, v16, *(v17 + 1), a4, a1[7]);
          }
        }

LABEL_13:
        ;
      }
    }

    v8 += 32;
    v7 = v24;
  }

  v18 = a1[1];
  for (k = a1[2]; v18 != k; v18 += 3)
  {
    v20 = *a3;
    v21 = a3[1];
    if (*a3 != v21)
    {
      while (*v18 != *v20)
      {
        v20 += 24;
        if (v20 == v21)
        {
          goto LABEL_23;
        }
      }

      if (v20 != v21)
      {
        gdc::LayerDataSource::createLayerDataRequests(v18[1], (v20 + 4), a4, a1[7]);
      }
    }

LABEL_23:
    ;
  }

  v22 = a1[7];

  gdc::ResourceManager::finishBatch(v22);
}

void std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::__deallocate_node(*(a1 + 16));
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

void gdc::LayerDataSource::createLayerDataRequests(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = a4;
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](a1 + 25);
  v20[0] = 0;
  v20[1] = 0;
  v22 = 0u;
  *v23 = 0u;
  gdc::LayerDataRequestKey::LayerDataRequestKey(v14, 0, 0xFFFF, &v22, 8);
  for (; a2 != a3; a2 += 144)
  {
    gdc::LayerDataRequestKey::LayerDataRequestKey(&v22, a2);
    v9 = v22;
    if (v22 != v14[0] || (v10 = WORD4(v22), WORD4(v22) != v15) || v25 != v18 || v23[1] - v23[0] != v16[1] - v16[0] || memcmp(v23[0], v16[0], v23[1] - v23[0]))
    {
      v13 = 0;
      if (gdc::LayerDataSource::shouldCreateLayerDataRequest(a1, &v22, a4, &v13))
      {
        v11 = a1[8] + v20[v22];
        if (v11 < (*(*a1 + 128))(a1))
        {
          ++v20[v22];
          ++a1[36];
          operator new();
        }
      }

      gdc::LayerDataSource::_updateRequestTimestamp(a1, &v22, &v21);
      v9 = v22;
      v10 = WORD4(v22);
    }

    v14[0] = v9;
    v15 = v10;
    geo::small_vector_base<unsigned char>::copy(v16, v23, &v17);
    v18 = v25;
    v19 = v26;
    if (v23[0] != v24)
    {
      free(v23[0]);
    }
  }

  gdc::LayerDataSource::createLayerDataRequests(a1, a1 + 25, a4, a5);
  if (v16[0] != v16[2])
  {
    free(v16[0]);
  }
}

void ggl::Sky::SkyPipelineState::~SkyPipelineState(ggl::Sky::SkyPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::LayerDataSource::shouldCreateLayerDataRequest(const gdc::LayerDataRequestKey **this, const gdc::LayerDataRequestKey *a2, uint64_t a3, BOOL *a4)
{
  if (std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>(this + 5, a2) || std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>(this + 10, a2) || std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>(this + 15, a2))
  {
    v8 = 0;
  }

  else
  {
    gdc::LayerDataStore::get(&v14, this[2], a2);
    v10 = v14;
    if (!v14 || ((v11 = *(v14 + 152), v11 > 0) ? (v12 = v11 < a3) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), *a4 = v13, v12))
    {
      v8 = 1;
    }

    else
    {
      v8 = *(v10 + 160) ^ 1;
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }
  }

  return v8 & 1;
}

void **geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::~fast_shared_ptr(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*v2)-- == 1)
    {
      *(v2 + 1) = &unk_1F2A579A0;
      v4 = *(v2 + 10);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      v9.__vftable = (v2 + 32);
      std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v9);
      v5 = *(v2 + 3);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      v6 = *a1;
      v7 = mdm::zone_mallocator::instance(v5);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(v7, v6);
      *a1 = 0;
    }
  }

  return a1;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignOverlayTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignOverlayTextureIndex>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignOverlayTextureIndex::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(void)::metadata >= 0x200)
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

void md::GridRenderLayer::~GridRenderLayer(md::GridRenderLayer *this)
{
  *this = &unk_1F29E5458;
  std::unique_ptr<md::GridRenderResources>::reset[abi:nn200100](this + 6, 0);
  *this = &unk_1F2A16858;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E5458;
  std::unique_ptr<md::GridRenderResources>::reset[abi:nn200100](this + 6, 0);
  *this = &unk_1F2A16858;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>();
    unk_1EB83C900 = 0x954EA3109050D2A9;
    qword_1EB83C908 = "md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>]";
    qword_1EB83C910 = 56;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::OverlayTexture>>();
    *algn_1EB83CE38 = 0xD2D99CA7D5B116C8;
    qword_1EB83CE40 = "md::ls::TextureHandleForType<DaVinci::OverlayTexture>]";
    qword_1EB83CE48 = 53;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::OverlayTexture>>(void)::metadata >= 0x200)
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

void std::__list_imp<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry,std::allocator<geo::MarkedLRUCache<md::GridRenderResources::TileMeshEntry,std::shared_ptr<md::GridTileRenderable>,md::GridRenderResources::TileMeshEntryHash,std::equal_to<md::GridRenderResources::TileMeshEntry>>::CacheEntry>>::clear(uint64_t *a1)
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
        v6 = v2[8];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

const void **std::vector<std::shared_ptr<gdc::Resource>>::push_back[abi:nn200100](const void **result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v15[4] = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::MuninRoadLabel>>>(v9);
    }

    v10 = (16 * v6);
    *v10 = *a2;
    v5 = 16 * v6 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy(v10 - v11, *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = std::__split_buffer<std::shared_ptr<md::MuninRoadLabel>>::~__split_buffer(v15);
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v2[1] = v5;
  return result;
}

void geo::small_vector_base<unsigned char>::copy(void **a1, char **a2, void *a3)
{
  if (a1 != a2)
  {
    v7 = *a1;
    if (v7 != a1[2])
    {
      free(v7);
    }

    *a1 = a3;
    a1[1] = a3;
    a1[2] = a3;
    a1[3] = 32;
    v8 = *a2;
    v9 = a2[1];

    geo::small_vector_base<unsigned char>::append<unsigned char const*>(a1, v8, v9);
  }
}

mdm::zone_mallocator *std::__split_buffer<md::TileLabelLine const*,geo::allocator_adapter<md::TileLabelLine const*,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
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
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TileLabelLine const*>(v5, v4);
  }

  return a1;
}

void gdc::LayerDataSource::createLayerDataRequests(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v102 = *MEMORY[0x1E69E9840];
  (*(*a1 + 72))(a1, *a2, a2[1]);
  std::vector<gdc::ResourceKey>::clear[abi:nn200100]((a1 + 224));
  v7 = *(a1 + 208) - *(a1 + 200);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 240) - *(a1 + 224)) >> 5) < v7 >> 4)
  {
    if ((v7 >> 4) <= 0x2AAAAAAAAAAAAAALL)
    {
      *&v94[16] = a1 + 224;
      std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::ResourceKey>>(v7 >> 4);
    }

LABEL_152:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  log = (a1 + 224);
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    do
    {
      v10 = *v8;
      if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
      {
        dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
      }

      v11 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
      if (os_log_type_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log, OS_LOG_TYPE_DEBUG))
      {
        v12 = (*(**(a1 + 584) + 16))(*(a1 + 584));
        gdc::LayerDataRequestKey::keysInt32Str(&__p, *v8);
        p_p = &__p;
        if (v94[7] < 0)
        {
          p_p = __p;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = v12;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
        _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_DEBUG, "%s Requesting layer data for: %s", &buf, 0x16u);
        if ((v94[7] & 0x80000000) != 0)
        {
          operator delete(__p);
        }

        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }
      }

      v14 = *v8;
      v15 = *(*v8 + 112);
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v16 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_signpost_enabled(GEOGetGeoDisplayCoreResourceLoadingLog::log))
        {
          v17 = *(v10 + 2);
          v18 = *v17;
          v19 = v17[1];
          v20 = v17[2];
          v21 = v10[4];
          v22 = *v10;
          v23 = "<Invalid>";
          if (v22 == 1)
          {
            v23 = "Preliminary";
          }

          v24 = v22 == 0;
          v25 = "Standard";
          if (!v24)
          {
            v25 = v23;
          }

          LODWORD(__p) = 67110146;
          HIDWORD(__p) = v18;
          LOWORD(v93) = 1024;
          *(&v93 + 2) = v19;
          HIWORD(v93) = 1024;
          *v94 = v20;
          *&v94[4] = 1024;
          *&v94[6] = v21;
          *&v94[10] = 2080;
          *&v94[12] = v25;
          _os_signpost_emit_with_name_impl(&dword_1B2754000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "LayerDataRequest", "tileKey=%d.%d.%d type=%d requestType=%s", &__p, 0x24u);
          v14 = *v8;
        }
      }

      gdc::LayerDataRequestKey::LayerDataRequestKey(&__p, v14);
      v97 = *v8;
      v26 = *(v8 + 8);
      v98 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,std::pair<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>((a1 + 40), &__p);
      if (v98)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v98);
      }

      if (*v94 != *&v94[16])
      {
        free(*v94);
      }

      v8 += 16;
    }

    while (v8 != v9);
  }

  for (i = *(*(a1 + 272) + 24); i; i = *i)
  {
    if (!*(i + 28))
    {
      v29 = *(a1 + 232);
      v28 = *(a1 + 240);
      if (v29 >= v28)
      {
        v32 = 0xAAAAAAAAAAAAAAABLL * ((v29 - log->isa) >> 5);
        v33 = v32 + 1;
        if (v32 + 1 > 0x2AAAAAAAAAAAAAALL)
        {
          goto LABEL_152;
        }

        v34 = 0xAAAAAAAAAAAAAAABLL * ((v28 - log->isa) >> 5);
        if (2 * v34 > v33)
        {
          v33 = 2 * v34;
        }

        if (v34 >= 0x155555555555555)
        {
          v35 = 0x2AAAAAAAAAAAAAALL;
        }

        else
        {
          v35 = v33;
        }

        *&v94[16] = a1 + 224;
        if (v35)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::ResourceKey>>(v35);
        }

        v36 = 96 * v32;
        __p = 0;
        v93 = v36;
        *v94 = v36;
        *&v94[8] = 0;
        v37 = i[2];
        *(v36 + 8) = v36 + 40;
        *v36 = v37;
        *(v36 + 16) = v36 + 40;
        *(v36 + 24) = v36 + 40;
        *(v36 + 32) = 32;
        geo::small_vector_base<unsigned char>::append<unsigned char const*>((v36 + 8), i[3], i[4]);
        *(v36 + 72) = i[11];
        *(v36 + 80) = *(i + 6);
        *v94 += 96;
        v38 = *(a1 + 224);
        v39 = *(a1 + 232);
        v40 = v93 + v38 - v39;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::ResourceKey>,gdc::ResourceKey*>(v38, v39, v40);
        v41 = *(a1 + 224);
        *(a1 + 224) = v40;
        v42 = *(a1 + 240);
        v89 = *v94;
        *(a1 + 232) = *v94;
        *v94 = v41;
        *&v94[8] = v42;
        __p = v41;
        v93 = v41;
        std::__split_buffer<gdc::ResourceKey>::~__split_buffer(&__p);
        v31 = v89;
      }

      else
      {
        v30 = i[2];
        *(v29 + 8) = v29 + 40;
        *v29 = v30;
        *(v29 + 16) = v29 + 40;
        *(v29 + 24) = v29 + 40;
        *(v29 + 32) = 32;
        geo::small_vector_base<unsigned char>::append<unsigned char const*>((v29 + 8), i[3], i[4]);
        *(v29 + 72) = i[11];
        *(v29 + 80) = *(i + 6);
        v31 = v29 + 96;
        *(a1 + 232) = v29 + 96;
      }

      *(a1 + 232) = v31;
    }
  }

  v43 = *(a1 + 224);
  v44 = *(a1 + 232);
  v45 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v44 - v43) >> 5));
  if (v44 == v43)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45;
  }

  std::__introsort<std::_ClassicAlgPolicy,gdc::ResourceKeyLessThan &,gdc::ResourceKey *,false>(v43, v44, v46, 1);
  v48 = *(a1 + 224);
  v47 = *(a1 + 232);
  if (v48 != v47)
  {
    for (j = 0; ; j += 96)
    {
      v50 = (v48 + j);
      if ((v48 + j + 96) == v47)
      {
        break;
      }

      if (*v50 == v50[96] && *(v48 + j + 2) == *(v48 + j + 98) && gdc::GenericKey::operator==(v48 + j + 8, v48 + j + 104))
      {
        if (v50 == v47)
        {
          goto LABEL_73;
        }

        if (v50 + 192 != v47)
        {
          v53 = v48 + j;
          do
          {
            if (*v50 != *(v53 + 192) || *(v50 + 1) != *(v53 + 194) || !gdc::GenericKey::operator==((v50 + 8), v53 + 200))
            {
              *(v50 + 12) = *(v53 + 192);
              if ((v53 + 96) != v50)
              {
                geo::small_vector_base<unsigned char>::move((v50 + 104), v53 + 200, v50 + 136);
              }

              *(v50 + 21) = *(v53 + 264);
              *(v50 + 11) = *(v53 + 272);
              v50 += 96;
            }

            v54 = (v53 + 288);
            v53 += 96;
          }

          while (v54 != v47);
          v48 = *(a1 + 224);
          v47 = *(a1 + 232);
        }

        v51 = v50 + 96;
        goto LABEL_54;
      }
    }

    goto LABEL_73;
  }

  v51 = *(a1 + 224);
LABEL_54:
  if (v51 == v47)
  {
LABEL_73:
    v51 = v47;
    goto LABEL_74;
  }

  while (v47 != v51)
  {
    v52 = *(v47 - 11);
    if (v52 != *(v47 - 9))
    {
      free(v52);
    }

    v47 -= 96;
  }

  *(a1 + 232) = v51;
  v48 = *(a1 + 224);
LABEL_74:
  if (v48 != v51)
  {
    v55 = v48;
    while (1)
    {
      v56 = *(v55 + 2);
      v55 += 96;
      if (v51 == v55 || v56 != *(v55 + 2))
      {
        break;
      }

      v57 = v48;
LABEL_91:
      v48 = v57;
      if (v51 == v55)
      {
        return;
      }
    }

    v59 = *(a4 + 56);
    v58 = *(a4 + 64);
    while (1)
    {
      if (v59 == v58)
      {
        goto LABEL_90;
      }

      if (*v59 == v56)
      {
        break;
      }

      v59 += 3;
    }

    if (v59 == v58)
    {
      goto LABEL_90;
    }

    v60 = *(a4 + 32);
    v61 = *(a4 + 40);
    while (1)
    {
      if (v60 == v61)
      {
        goto LABEL_90;
      }

      if (*v60 == v56)
      {
        break;
      }

      v60 += 8;
    }

    if (v60 == v61 || v55 == v48)
    {
LABEL_90:
      v57 = v55;
      goto LABEL_91;
    }

    while (1)
    {
      __p = *v48;
      v93 = v95;
      *v94 = v95;
      *&v94[8] = v95;
      *&v94[16] = 32;
      geo::small_vector_base<unsigned char>::append<unsigned char const*>(&v93, *(v48 + 8), *(v48 + 16));
      v95[4] = *(v48 + 72);
      v96 = *(v48 + 80);
      if (std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((a4 + 96), &__p))
      {
        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }

        v62 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          v63 = (*(**(a4 + 448) + 16))(*(a4 + 448));
          gdc::ResourceKey::keysInt32Str(&buf, &__p);
          p_buf = &buf;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          LODWORD(v99.__r_.__value_.__l.__data_) = 136315394;
          *(v99.__r_.__value_.__r.__words + 4) = v63;
          WORD2(v99.__r_.__value_.__r.__words[1]) = 2080;
          *(&v99.__r_.__value_.__r.__words[1] + 6) = p_buf;
          _os_log_impl(&dword_1B2754000, v62, OS_LOG_TYPE_DEBUG, "%s Requesting in progress resource: %s", &v99, 0x16u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }
      }

      else if (std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((a4 + 136), &__p))
      {
        if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
        {
          dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
        }

        v65 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
        {
          v66 = (*(**(a4 + 448) + 16))(*(a4 + 448));
          gdc::ResourceKey::keysInt32Str(&buf, &__p);
          v67 = &buf;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v67 = buf.__r_.__value_.__r.__words[0];
          }

          LODWORD(v99.__r_.__value_.__l.__data_) = 136315394;
          *(v99.__r_.__value_.__r.__words + 4) = v66;
          WORD2(v99.__r_.__value_.__r.__words[1]) = 2080;
          *(&v99.__r_.__value_.__r.__words[1] + 6) = v67;
          _os_log_impl(&dword_1B2754000, v65, OS_LOG_TYPE_DEBUG, "%s Requesting failed resource: %s", &v99, 0x16u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        v68 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((*(a4 + 312) + 8), &__p);
        if (v68)
        {
          *(v68 + 28) = 3;
        }
      }

      else if (!std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((a4 + 216), &__p))
      {
        gdc::ResourceStore::resource(&v90, v59[1], &__p);
        v69 = v90;
        if (!v90)
        {
          goto LABEL_130;
        }

        *(v90 + 104) = a3;
        v70 = *(v69 + 112);
        if (v70 < 1 || *(v69 + 96) + v70 >= a3)
        {
          if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
          }

          v81 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            v82 = v81;
            v83 = (*(**(a4 + 448) + 16))(*(a4 + 448));
            gdc::ResourceKey::keysInt32Str(&v99, &__p);
            v84 = *(v69 + 128);
            v85 = v99.__r_.__value_.__r.__words[0];
            if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v85 = &v99;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
            *(buf.__r_.__value_.__r.__words + 4) = v83;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v85;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
            v101 = v84;
            v81 = v82;
            _os_log_impl(&dword_1B2754000, v82, OS_LOG_TYPE_DEBUG, "%s Requested resource already arrived: %s, %llu", &buf, 0x20u);
            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v99.__r_.__value_.__l.__data_);
            }
          }

          v79 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((*(a4 + 312) + 8), &__p);
          if (v79)
          {
            v80 = 2;
LABEL_148:
            *(v79 + 28) = v80;
          }
        }

        else
        {
          if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
          }

          v71 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
          {
            loga = v71;
            v72 = (*(**(a4 + 448) + 16))(*(a4 + 448));
            gdc::ResourceKey::keysInt32Str(&buf, &__p);
            v73 = &buf;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v73 = buf.__r_.__value_.__r.__words[0];
            }

            LODWORD(v99.__r_.__value_.__l.__data_) = 136315394;
            *(v99.__r_.__value_.__r.__words + 4) = v72;
            WORD2(v99.__r_.__value_.__r.__words[1]) = 2080;
            *(&v99.__r_.__value_.__r.__words[1] + 6) = v73;
            v71 = loga;
            _os_log_impl(&dword_1B2754000, loga, OS_LOG_TYPE_DEBUG, "%s Requested resource expired: %s", &v99, 0x16u);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          gdc::ResourceStore::erase(v59[1], v69);
          v74 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((*(a4 + 312) + 8), v69);
          if (v74)
          {
            *(v74 + 28) = 0;
          }

          v75 = geo::linear_map<unsigned short,gdc::ResourceFetcher *,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,gdc::ResourceFetcher *>>,std::vector<std::pair<unsigned short,gdc::ResourceFetcher *>>>::operator[]((a4 + 32), *(v69 + 2));
          (*(**v75 + 48))(*v75, v69);
LABEL_130:
          if (GEOGetGeoDisplayCoreResourceLoadingLog::onceToken != -1)
          {
            dispatch_once(&GEOGetGeoDisplayCoreResourceLoadingLog::onceToken, &__block_literal_global_5_56382);
          }

          v76 = GEOGetGeoDisplayCoreResourceLoadingLog::log;
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
          {
            v77 = (*(**(a4 + 448) + 16))(*(a4 + 448));
            gdc::ResourceKey::keysInt32Str(&buf, &__p);
            v78 = &buf;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v78 = buf.__r_.__value_.__r.__words[0];
            }

            LODWORD(v99.__r_.__value_.__l.__data_) = 136315394;
            *(v99.__r_.__value_.__r.__words + 4) = v77;
            WORD2(v99.__r_.__value_.__r.__words[1]) = 2080;
            *(&v99.__r_.__value_.__r.__words[1] + 6) = v78;
            _os_log_impl(&dword_1B2754000, v76, OS_LOG_TYPE_DEBUG, "%s Requesting resource: %s", &v99, 0x16u);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::__emplace_unique_key_args<gdc::ResourceKey,gdc::ResourceKey const&>((a4 + 216), &__p);
          v79 = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>((*(a4 + 312) + 8), &__p);
          if (v79)
          {
            v80 = 1;
            goto LABEL_148;
          }
        }

        if (v91)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v91);
        }
      }

      if (v93 != *&v94[8])
      {
        free(v93);
      }

      v48 += 96;
      v57 = v55;
      if (v48 == v55)
      {
        goto LABEL_91;
      }
    }
  }
}

void sub_1B29B8CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, void *a18, uint64_t a19, void *a20)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  if (a18 != a20)
  {
    free(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::OverlayTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[394];
}

void md::SingleGEOResourceLayerDataSource::constructRequests(uint64_t a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (a2 != a3)
  {
    v14[8] = v3;
    v14[9] = v4;
    v6 = a2;
    do
    {
      v8 = *v6;
      *&v9 = gdc::Tiled::tileFromLayerDataKey(v14, *(*v6 + 2));
      (*(*a1 + 144))(&v11, a1, *v8, v14, *(v8 + 14), *(v8 + 12) & 0xFFFFFFFFFFLL, v9);
      v10 = *v6;
      v6 += 2;
      gdc::LayerDataRequest::request(v10, &v11, 0);
      if (v12 != v13)
      {
        free(v12);
      }
    }

    while (v6 != a3);
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci14OverlayTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A12A88;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t md::FixedLabelLineSegment<4ul>::points(uint64_t a1)
{
  return a1 + 48;
}

{
  return a1 + 48;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci14OverlayTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A12A88;
  a2[1] = v2;
  return result;
}

uint64_t md::FixedLabelLineSegment<2ul>::points(uint64_t a1)
{
  return a1 + 48;
}

{
  return a1 + 48;
}

int32x2_t gdc::Tiled::tileFromLayerDataKey(uint64_t a1, int32x2_t *a2)
{
  v2 = a2[1].i32[0];
  *a1 = a2[1].i32[1];
  *(a1 + 1) = v2;
  result = vrev64_s32(*a2);
  *(a1 + 4) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return result;
}

void std::__shared_ptr_emplace<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>,geo::allocator_adapter<ggl::VertexDataTyped<ggl::CommonMesh::BufferPos4>,ggl::zone_mallocator>>::__on_zero_shared_weak(ggl::zone_mallocator *a1)
{
  v2 = ggl::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v2, a1);
}

void *std::unique_ptr<md::LineLabelStyleEntry>::reset[abi:nn200100](void *result, uint64_t a2)
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

    v6 = v2[3];
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = v2[1];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

mdm::zone_mallocator *std::__split_buffer<md::TextDataStringInfo::TextFragment,geo::allocator_adapter<md::TextDataStringInfo::TextFragment,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v2 = *(a1 + 1);
  if (*(a1 + 2) != v2)
  {
    *(a1 + 2) = v2;
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TextDataStringInfo::TextFragment>(v4, v3);
  }

  return a1;
}

void ggl::Grid::GridUVPipelineState::~GridUVPipelineState(ggl::Grid::GridUVPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

uint64_t md::RegionMetaLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = -4;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

uint64_t std::__shared_ptr_pointer<ggl::Grid::GridUVPipelineState *,std::shared_ptr<ggl::Grid::GridUVPipelineState>::__shared_ptr_default_delete<ggl::Grid::GridUVPipelineState,ggl::Grid::GridUVPipelineState>,std::allocator<ggl::Grid::GridUVPipelineState>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignEmissiveTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignEmissiveTextureIndex>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignEmissiveTextureIndex::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(void)::metadata >= 0x200)
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

uint64_t gdc::ResourceKey::ResourceKey(uint64_t a1, char a2, __int16 a3, int *a4, uint64_t a5, uint64_t a6, int a7)
{
  *a1 = a2;
  *(a1 + 2) = a3;
  *(a1 + 4) = a7;
  gdc::GenericKey::GenericKey((a1 + 8), a4, a5);
  *(a1 + 88) = a6;
  return a1;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>();
    unk_1EB83C8E0 = 0x19CB8E83B6F501F6;
    qword_1EB83C8E8 = "md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>]";
    qword_1EB83C8F0 = 57;
  }
}

void ggl::Grid::GridPipelineSetup::~GridPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t **gdc::LayerDataRequest::request(void *a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 2);
  if (a3)
  {
    v6 = a1[18];
    v7 = a1[19];
    v8 = a1 + 18;
    if (v6 != v7)
    {
      v9 = a1[18];
      while (v5 != *v9)
      {
        v9 += 24;
        if (v9 == v7)
        {
          goto LABEL_21;
        }
      }

      if (v9 != v7)
      {
        while (v5 != *v6)
        {
          v6 += 24;
          if (v6 == v7)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_20;
      }
    }
  }

  else
  {
    v6 = a1[15];
    v7 = a1[16];
    v8 = a1 + 15;
    if (v6 != v7)
    {
      v10 = a1[15];
      while (v5 != *v10)
      {
        v10 += 24;
        if (v10 == v7)
        {
          goto LABEL_21;
        }
      }

      if (v10 != v7)
      {
        while (v5 != *v6)
        {
          v6 += 24;
          if (v6 == v7)
          {
LABEL_19:
            v6 = v7;
            break;
          }
        }

LABEL_20:
        result = std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>(v6 + 1, a2);
        if (result)
        {
          return result;
        }
      }
    }
  }

LABEL_21:
  v12 = geo::linear_map<unsigned short,std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>>>,std::vector<std::pair<unsigned short,std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>>>>::operator[](v8, v5);
  std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::__emplace_unique_key_args<gdc::ResourceKey,gdc::ResourceKey const&>(v12, a2);
  v13 = a1[24];

  return gdc::ResourceStatusContainer::incrementResourceReference(v13, a2);
}

void ggl::Grid::GridPipelineState::~GridPipelineState(ggl::Grid::GridPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

unsigned __int16 *geo::linear_map<unsigned short,std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short,std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>>>,std::vector<std::pair<unsigned short,std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>>>>::operator[](uint64_t *a1, unsigned __int16 a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_7;
  }

  v5 = *a1;
  while (*v5 != a2)
  {
    v5 += 48;
    if (v5 == v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 == v4)
  {
LABEL_7:
    v30 = 1065353216;
    v31 = a2;
    memset(v32, 0, sizeof(v32));
    memset(v29, 0, sizeof(v29));
    v33 = 1065353216;
    if (v3 == v4)
    {
      goto LABEL_13;
    }

    v5 = v3;
    while (*v5 != a2)
    {
      v5 += 48;
      if (v5 == v4)
      {
        goto LABEL_13;
      }
    }

    if (v5 == v4)
    {
LABEL_13:
      v6 = a1[2];
      if (v4 >= v6)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 4);
        v9 = v8 + 1;
        if (v8 + 1 > 0x555555555555555)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v3) >> 4);
        if (2 * v10 > v9)
        {
          v9 = 2 * v10;
        }

        if (v10 >= 0x2AAAAAAAAAAAAAALL)
        {
          v11 = 0x555555555555555;
        }

        else
        {
          v11 = v9;
        }

        if (v11)
        {
          if (v11 <= 0x555555555555555)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        *(48 * v8) = a2;
        v7 = 48 * v8 + 48;
        std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::unordered_set(48 * v8 + 8, v32);
        v13 = *a1;
        v12 = a1[1];
        v14 = 48 * v8 - (v12 - *a1);
        if (v12 != *a1)
        {
          v15 = 0;
          v16 = -16 * ((v12 - *a1) >> 4) + 48 * v8;
          do
          {
            v17 = v13 + v15;
            v18 = v16 + v15;
            v19 = *(v13 + v15);
            v20 = *(v13 + v15 + 8);
            v21 = *(v13 + v15 + 16);
            *(v17 + 8) = 0;
            *(v18 + 8) = v20;
            *(v18 + 16) = v21;
            *(v17 + 16) = 0;
            v22 = *(v13 + v15 + 32);
            v23 = *(v13 + v15 + 40);
            v24 = *(v13 + v15 + 24);
            *v18 = v19;
            *(v16 + v15 + 24) = v24;
            *(v18 + 32) = v22;
            *(v18 + 40) = v23;
            if (v22)
            {
              v25 = *(v24 + 8);
              v26 = *(v18 + 16);
              if ((v26 & (v26 - 1)) != 0)
              {
                if (v25 >= v26)
                {
                  v25 %= v26;
                }
              }

              else
              {
                v25 &= v26 - 1;
              }

              *(v20 + 8 * v25) = v16 + v15 + 24;
              *(v13 + v15 + 24) = 0;
              *(v13 + v15 + 32) = 0;
            }

            v15 += 48;
          }

          while (v13 + v15 != v12);
          do
          {
            std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::~__hash_table(v13 + 8);
            v13 += 48;
          }

          while (v13 != v12);
        }

        v27 = *a1;
        *a1 = v14;
        a1[1] = v7;
        a1[2] = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v4 = a2;
        v7 = (v4 + 48);
        std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::unordered_set((v4 + 8), v32);
      }

      a1[1] = v7;
      v5 = (v7 - 48);
    }

    std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::~__hash_table(v32);
    std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::~__hash_table(v29);
  }

  return (v5 + 8);
}

unsigned int *_ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELi0EEEvT1_SO_SO_SO_SO_T0_(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 >= v5)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v7;
      *a3 = v5;
      v9 = *(a2 + 2);
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v9;
      v10 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v10;
        v11 = *(result + 2);
        *(result + 2) = *(a2 + 2);
        *(a2 + 2) = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      *result = v7;
      *a3 = v6;
      v8 = *(result + 2);
      *(result + 2) = *(a3 + 2);
      *(a3 + 2) = v8;
LABEL_9:
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v12 = *(result + 2);
    *(result + 2) = *(a2 + 2);
    *(a2 + 2) = v12;
    v5 = *a3;
    if (*a3 < v6)
    {
      *a2 = v5;
      *a3 = v6;
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v12;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*a4 < v5)
  {
    *a3 = *a4;
    *a4 = v5;
    v13 = *(a3 + 2);
    *(a3 + 2) = *(a4 + 2);
    *(a4 + 2) = v13;
    v14 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v14;
      v15 = *(a2 + 2);
      *(a2 + 2) = *(a3 + 2);
      *(a3 + 2) = v15;
      v16 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v16;
        v17 = *(result + 2);
        *(result + 2) = *(a2 + 2);
        *(a2 + 2) = v17;
      }
    }
  }

  v18 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v18;
    v19 = *(a4 + 2);
    *(a4 + 2) = *(a5 + 2);
    *(a5 + 2) = v19;
    v20 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v20;
      v21 = *(a3 + 2);
      *(a3 + 2) = *(a4 + 2);
      *(a4 + 2) = v21;
      v22 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v22;
        v23 = *(a2 + 2);
        *(a2 + 2) = *(a3 + 2);
        *(a3 + 2) = v23;
        v24 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v24;
          v25 = *(result + 2);
          *(result + 2) = *(a2 + 2);
          *(a2 + 2) = v25;
        }
      }
    }
  }

  return result;
}

uint64_t std::unordered_set<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::__emplace_unique_key_args<gdc::ResourceKey,gdc::ResourceKey const&>(a1, i + 16);
  }

  return a1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::EmissiveTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[392];
}

uint64_t std::__shared_ptr_pointer<ggl::Grid::GridPipelineState *,std::shared_ptr<ggl::Grid::GridPipelineState>::__shared_ptr_default_delete<ggl::Grid::GridPipelineState,ggl::Grid::GridPipelineState>,std::allocator<ggl::Grid::GridPipelineState>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci15EmissiveTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A12748;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

BOOL std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::__emplace_unique_key_args<gdc::ResourceKey,gdc::ResourceKey const&>(void *a1, unsigned __int8 *a2)
{
  v2 = (*(a2 + 1) + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583EBLL);
  v3 = (*(a2 + 9) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EBLL) ^ v2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = (*(a2 + 9) + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583EBLL) ^ v2;
    if (v3 >= *&v4)
    {
      v8 = v3 % *&v4;
    }
  }

  else
  {
    v8 = v3 & (*&v4 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = *(v10 + 1);
    if (v11 == v3)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  result = gdc::ResourceKey::operator==(v10 + 16, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci15EmissiveTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A12748;
  a2[1] = v2;
  return result;
}

void *std::vector<std::shared_ptr<md::TextDataString>,geo::allocator_adapter<std::shared_ptr<md::TextDataString>,mdm::zone_mallocator>>::__init_with_size[abi:nn200100]<std::shared_ptr<md::TextDataString>*,std::shared_ptr<md::TextDataString>*>(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = result;
    v8 = mdm::zone_mallocator::instance(result);
    result = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::TextDataString>>(v8, a4);
    *v7 = result;
    v7[1] = result;
    for (v7[2] = &result[2 * a4]; a2 != a3; result += 2)
    {
      v9 = a2[1];
      *result = *a2;
      result[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
    }

    v7[1] = result;
  }

  return result;
}

double gm::Box<double,2>::lerped(float64x2_t *a1, float64x2_t a2, float64_t a3)
{
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = a1[1].f64[v6];
    v8 = a1->f64[v6];
    if (v5)
    {
      break;
    }

    v5 = 1;
    v6 = 1;
  }

  while (v7 >= v8);
  if (v7 >= v8)
  {
    a2.f64[1] = a3;
    *&v9 = *&vmlaq_f64(*a1, a2, vsubq_f64(a1[1], *a1));
  }

  else
  {
    v12 = v3;
    v13 = v4;
    memset_pattern16(&v11, &unk_1B33B25A0, 0x10uLL);
    return *&v11;
  }

  return v9;
}

uint64_t gdc::ResourceStatusContainer::incrementResourceReference(gdc::ResourceStatusContainer *this, const gdc::ResourceKey *a2)
{
  v4 = std::__hash_table<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>>>::__emplace_unique_key_args<gdc::ResourceKey,std::piecewise_construct_t const&,std::tuple<gdc::ResourceKey const&>,std::tuple<>>(this + 1, a2);
  v4[15] = (v4[15] + 1);
  v5 = *(this + 7);
  if (!v5)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v5;
      if (!gdc::ResourceKeyLessThan::operator()(a2, v5 + 32))
      {
        break;
      }

      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    result = gdc::ResourceKeyLessThan::operator()(v6 + 32, a2);
    if (!result)
    {
      return result;
    }

    v5 = *(v6 + 1);
    if (!v5)
    {
      goto LABEL_7;
    }
  }
}

uint64_t geo::codec::compareSearchingLocalizationTableEntries(geo::codec *this, void *a2, const void *a3)
{
  if (*a2 > *this)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *this;
  }
}

uint64_t md::ita::AssignRouteMaskTextureIndex::operator()(uint64_t **a1, uint64_t a2)
{
  v51[3] = *MEMORY[0x1E69E9840];
  v4 = ecs2::ExecutionTask<md::PassListProvider *,md::LayoutContextProvider *>::service<md::PassListProvider>(a1);
  result = (*(*v4 + 8))(v4);
  v43 = result;
  if (result)
  {
    v42 = ecs2::ExecutionTask<md::PassListProvider *,md::VKMRenderResourcesStore *>::service<md::VKMRenderResourcesStore>(a1);
    v49[0] = &unk_1F2A161B8;
    v49[1] = &v42;
    v49[2] = &v43;
    v50 = v49;
    v6 = *(a2 + 8);
    v7 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v6);
    v8 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture>>(v6);
    v9 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v6);
    v51[0] = v7;
    v51[1] = v8;
    v10 = 1;
    v11 = v7;
    v12 = v51;
    v51[2] = v9;
    do
    {
      if (*(v51[v10] + 40) - *(v51[v10] + 32) < *(v11 + 40) - *(v11 + 32))
      {
        v11 = v51[v10];
        v12 = &v51[v10];
      }

      ++v10;
    }

    while (v10 != 3);
    v13 = *(*v12 + 32);
    v14 = *(*v12 + 40);
    v44 = v13;
    v45 = v14;
    v46 = v7;
    v47 = v8;
    v48 = v9;
    while (v13 != v14 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v44, *v13, v13[1]))
    {
      v13 += 2;
      v44 = v13;
    }

    v15 = v44;
    if (v44 == v14)
    {
      v19 = _ZTWN4ecs27Runtime11_localStateE();
      v20 = _ZTWN4ecs27Runtime11_stackIndexE();
      v21 = 0;
    }

    else
    {
      v41 = a2;
      v16 = v46;
      v17 = v47;
      v18 = v48;
      v19 = _ZTWN4ecs27Runtime11_localStateE();
      v20 = _ZTWN4ecs27Runtime11_stackIndexE();
      v21 = 0;
      v22 = v45;
      do
      {
        v23 = v15[1];
        v24 = v23 & 0x3F;
        v25 = (v23 >> 3) & 0x1FF8;
        v26 = *(*(*(v16 + 8) + v25) + 4 * v24 + 2);
        v27 = *(*(v16 + 56) + ((v26 >> 3) & 0x1FF8));
        v28 = *(*(*(v17 + 8) + v25) + 4 * v24 + 2);
        v29 = *(*(v17 + 56) + ((v28 >> 3) & 0x1FF8));
        v30 = *(*(*(v18 + 8) + v25) + 4 * v24 + 2);
        v31 = *(*(v18 + 56) + ((v30 >> 3) & 0x1FF8));
        *(v19 + 104 * *v20 + 24) = *v15;
        if (!v50)
        {
          std::__throw_bad_function_call[abi:nn200100]();
        }

        (*(*v50 + 48))(v50, v27 + 8 * (v26 & 0x3F), v29 + 12 * (v28 & 0x3F), v31 + 8 * (v30 & 0x3F));
        ++v21;
        v32 = v15 + 2;
        while (1)
        {
          v15 = v32;
          v44 = v32;
          if (v32 == v22)
          {
            break;
          }

          v33 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v44, *v32, v32[1]);
          v32 = v15 + 2;
          if (v33)
          {
            v34 = v15;
            goto LABEL_18;
          }
        }

        v34 = v22;
LABEL_18:
        ;
      }

      while (v34 != v14);
      v35 = *(v41 + 8);
      {
        ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
        *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
        qword_1EB83D950 = "md::ls::PipelineSetup]";
        qword_1EB83D958 = 21;
      }

      *(v35 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v35 + 4096);
    }

    *(v19 + 104 * *v20 + 24) = -65536;
    v36 = v19 + 104 * *v20;
    v37 = *(v36 + 92);
    *(v36 + 92) = v37 + 1;
    *(v36 + 4 * v37 + 28) = v21;
    v38 = v19 + 104 * *v20;
    v40 = *(v38 + 92);
    v39 = (v38 + 92);
    if (v40 >= 0x10)
    {
      *v39 = 0;
    }

    return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v49);
  }

  return result;
}

void sub_1B29BA688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::RouteMaskTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::__unordered_map_hasher<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,true>,std::__unordered_map_equal<gdc::ResourceKey,std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>,std::equal_to<gdc::ResourceKey>,gdc::ResourceKeyHash,true>,std::allocator<std::__hash_value_type<gdc::ResourceKey,gdc::ResourceStatusItem>>>::__emplace_unique_key_args<gdc::ResourceKey,std::piecewise_construct_t const&,std::tuple<gdc::ResourceKey const&>,std::tuple<>>(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  v4 = (v3 + ((v2 - 0x61C8864680B583EBLL) << 6) + ((v2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v2 - 0x61C8864680B583EBLL);
  v5 = *(a2 + 9) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583EBLL;
  v6 = v5 ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_20;
  }

  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v5 ^ v4;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v6)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
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

  if (*(v13 + 16) != v2 || *(v13 + 9) != v3 || !gdc::GenericKey::operator==((v13 + 3), (a2 + 8)))
  {
    goto LABEL_19;
  }

  return v13;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignRouteMaskTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignRouteMaskTextureIndex>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignRouteMaskTextureIndex::operator()((a1 + 8), a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t md::ita::AssignOcclusionTextureIndex::operator()(uint64_t **a1, uint64_t a2)
{
  v74[3] = *MEMORY[0x1E69E9840];
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

    a1[1] = v4;
  }

  v9 = a1[2];
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

    a1[2] = v9;
  }

  result = (*(*v9 + 8))(v9);
  if (result)
  {
    v15 = result;
    v16 = *((*(*v4 + 48))(v4) + 2704);
    v18 = *v16;
    v17 = v16[1];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }

    v66 = v18;
    if (!md::FrameGraph::renderQueueForPass(*(v15 + 8), 3))
    {
      goto LABEL_31;
    }

    v19 = +[VKDebugSettings sharedSettings];
    v20 = [v19 daVinciSSAODepthAwareUpsampleEnabled];

    if (v20)
    {
      v21 = *(v15 + 160);
      if (!v21)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v21 = *(v15 + 144);
      if (!v21)
      {
LABEL_30:
        v66 = v21;
LABEL_31:
        v24 = a1[3];
        if (!v24)
        {
          v25 = **a1;
          v26 = *v25;
          v27 = *(v25 + 8);
          if (v26 == v27)
          {
            goto LABEL_35;
          }

          while (*v26 != 0x41D4E9297E100630)
          {
            v26 += 5;
            if (v26 == v27)
            {
              goto LABEL_35;
            }
          }

          if (v26 == v27)
          {
LABEL_35:
            v24 = 0;
          }

          else
          {
            v24 = v26[3];
            v28 = v26[4];
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
              std::__shared_weak_count::__release_shared[abi:nn200100](v28);
            }
          }

          a1[3] = v24;
        }

        v65 = v24;
        v72[0] = &unk_1F2A16128;
        v72[1] = &v65;
        v72[2] = &v66;
        v73 = v72;
        v29 = *(a2 + 8);
        v30 = ecs2::BasicRegistry<void>::storage<md::ls::ItemsPrepared>(v29);
        v31 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(v29);
        v32 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v29);
        v74[0] = v30;
        v74[1] = v31;
        v33 = 1;
        v34 = v30;
        v35 = v74;
        v74[2] = v32;
        do
        {
          if (*(v74[v33] + 40) - *(v74[v33] + 32) < *(v34 + 40) - *(v34 + 32))
          {
            v34 = v74[v33];
            v35 = &v74[v33];
          }

          ++v33;
        }

        while (v33 != 3);
        v36 = *(*v35 + 32);
        v37 = *(*v35 + 40);
        v67 = v36;
        v68 = v37;
        v69 = v30;
        v70 = v31;
        v71 = v32;
        while (v36 != v37 && !ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v67, *v36, v36[1]))
        {
          v36 += 2;
          v67 = v36;
        }

        v38 = v67;
        if (v67 == v37)
        {
          v42 = _ZTWN4ecs27Runtime11_localStateE();
          v43 = _ZTWN4ecs27Runtime11_stackIndexE();
          v44 = 0;
        }

        else
        {
          v64 = a2;
          v39 = v69;
          v40 = v70;
          v41 = v71;
          v42 = _ZTWN4ecs27Runtime11_localStateE();
          v43 = _ZTWN4ecs27Runtime11_stackIndexE();
          v44 = 0;
          v45 = v68;
          do
          {
            v46 = v38[1];
            v47 = v46 & 0x3F;
            v48 = (v46 >> 3) & 0x1FF8;
            v49 = *(*(*(v39 + 8) + v48) + 4 * v47 + 2);
            v50 = *(*(v39 + 56) + ((v49 >> 3) & 0x1FF8));
            v51 = *(*(*(v40 + 8) + v48) + 4 * v47 + 2);
            v52 = *(*(v40 + 56) + ((v51 >> 3) & 0x1FF8));
            v53 = *(*(*(v41 + 8) + v48) + 4 * v47 + 2);
            v54 = *(*(v41 + 56) + ((v53 >> 3) & 0x1FF8));
            *(v42 + 104 * *v43 + 24) = *v38;
            if (!v73)
            {
              std::__throw_bad_function_call[abi:nn200100]();
            }

            (*(*v73 + 48))(v73, v50 + 8 * (v49 & 0x3F), v52 + 12 * (v51 & 0x3F), v54 + 8 * (v53 & 0x3F));
            ++v44;
            v55 = v38 + 2;
            while (1)
            {
              v38 = v55;
              v67 = v55;
              if (v55 == v45)
              {
                break;
              }

              v56 = ecs2::ViewIterator<void,std::tuple<md::ls::BaseMapTileHandle const&,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const&,md::ls::TileStyleDataKeyHandle &>,std::tuple<>>::containsAll<md::ls::BaseMapTileHandle const,md::ls::TileProjectionTypeT<(md::ls::TileProjectionType)0> const,md::ls::TileStyleDataKeyHandle>(&v67, *v55, v55[1]);
              v55 = v38 + 2;
              if (v56)
              {
                v57 = v38;
                goto LABEL_56;
              }
            }

            v57 = v45;
LABEL_56:
            ;
          }

          while (v57 != v37);
          v58 = *(v64 + 8);
          {
            ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
            *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
            qword_1EB83D950 = "md::ls::PipelineSetup]";
            qword_1EB83D958 = 21;
          }

          *(v58 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v58 + 4096);
        }

        *(v42 + 104 * *v43 + 24) = -65536;
        v59 = v42 + 104 * *v43;
        v60 = *(v59 + 92);
        *(v59 + 92) = v60 + 1;
        *(v59 + 4 * v60 + 28) = v44;
        v61 = v42 + 104 * *v43;
        v63 = *(v61 + 92);
        v62 = (v61 + 92);
        if (v63 >= 0x10)
        {
          *v62 = 0;
        }

        return std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v72);
      }
    }

    v22 = *(v21 + 32);
    v23 = *(*(v15 + 8) + 96);
    if (v22 >= (*(*(v15 + 8) + 104) - v23) >> 3)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(*(v23 + 8 * v22) + 16);
    }

    goto LABEL_30;
  }

  return result;
}

uint64_t gdc::ResourceKeyLessThan::operator()(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a2 + 1);
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    v5 = *a1;
    v6 = *a2;
    v4 = v5 >= v6;
    if (v5 == v6)
    {
      return gdc::GenericKey::operator<(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
    }
  }

  return !v4;
}

double std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignOcclusionTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignOcclusionTextureIndex>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  md::ita::AssignOcclusionTextureIndex::operator()((a1 + 8), a2);
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::ResourceKey>>(unint64_t a1)
{
  if (a1 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t *ecs2::ExecutionTask<md::VKMRenderResourcesStore *,md::PassListProvider *>::service<md::PassListProvider>(uint64_t **a1)
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

void std::vector<gdc::ResourceKey>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 96)
  {
    v4 = *(i - 88);
    if (v4 != *(i - 72))
    {
      free(v4);
    }
  }

  a1[1] = v2;
}

void md::GlobeSkyRenderLayer::~GlobeSkyRenderLayer(md::GlobeSkyRenderLayer *this)
{
  *this = &unk_1F2A02B08;
  std::unique_ptr<md::GlobeSkyRenderResources>::reset[abi:nn200100](this + 6, 0);
  *this = &unk_1F2A16858;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A02B08;
  std::unique_ptr<md::GlobeSkyRenderResources>::reset[abi:nn200100](this + 6, 0);
  *this = &unk_1F2A16858;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

uint64_t std::__split_buffer<gdc::ResourceKey>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 96;
    v4 = *(v2 - 88);
    if (v4 == *(v2 - 72))
    {
      v2 -= 96;
    }

    else
    {
      free(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<gdc::ResourceKey>,gdc::ResourceKey*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 8;
    v6 = a3 + 40;
    do
    {
      *(v6 - 40) = *(v5 - 8);
      geo::small_vector_base<unsigned char>::small_vector_base((v6 - 32), v5, v6);
      *(v6 + 32) = *(v5 + 64);
      *(v6 + 40) = *(v5 + 72);
      v7 = v5 + 88;
      v5 += 96;
      v6 += 96;
    }

    while (v7 != a2);
    do
    {
      v8 = *(v4 + 8);
      if (v8 != *(v4 + 24))
      {
        free(v8);
      }

      v4 += 96;
    }

    while (v4 != a2);
  }
}

void ggl::GlobeAtmosphere::BasePipelineState::~BasePipelineState(ggl::GlobeAtmosphere::BasePipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B29BB5CC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t md::PhysicalLabelFeature::styleIndexForFeature(uint64_t *a1)
{
  v4[2] = *MEMORY[0x1E69E9840];
  if (!(*(*a1 + 64))(a1))
  {
    v4[0] = 65570;
    std::vector<GeoCodecsFeatureStylePair>::vector[abi:nn200100](&__p, v4, 1uLL);
    std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,FeatureStyleAttributes const&,0>();
  }

  return md::LineLabelFeature::styleIndexForAttributes(a1, a1 + 52);
}

void sub_1B29BB740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(void)::metadata >= 0x200)
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

BOOL std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::__emplace_unique_key_args<gdc::LayerDataRequestKey,std::pair<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>(void *a1, unsigned __int8 *a2)
{
  v2 = *(a2 + 13);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_21;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  v5 = v4.u32[0];
  if (v4.u32[0] > 1uLL)
  {
    v6 = *(a2 + 13);
    if (v2 >= *&v3)
    {
      v6 = v2 % *&v3;
    }
  }

  else
  {
    v6 = (*&v3 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_21:
    operator new();
  }

  v9 = *a2;
  v10 = *(a2 + 4);
  while (1)
  {
    v11 = v8[1];
    if (v11 == v2)
    {
      break;
    }

    if (v5 > 1)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v6)
    {
      goto LABEL_21;
    }

LABEL_20:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  if (*(v8 + 16) != v9)
  {
    goto LABEL_20;
  }

  if (*(v8 + 12) != v10)
  {
    goto LABEL_20;
  }

  v12 = a2;
  result = gdc::GenericKey::operator==((v8 + 4), (a2 + 16));
  a2 = v12;
  if (!result)
  {
    goto LABEL_20;
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>();
    *algn_1EB82F448 = 0x561A1640388A2320;
    qword_1EB82F450 = "md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>]";
    qword_1EB82F458 = 58;
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<gdc::LayerDataRequestKey const,std::shared_ptr<gdc::LayerData>>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void FeatureStyleAttributes::FeatureStyleAttributes(FeatureStyleAttributes *this, const FeatureStyleAttributes *a2)
{
  *(this + 31) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 35) = 1;
  v4 = malloc_type_malloc(0x100uLL, 0x100004000313F17uLL);
  *this = v4;
  if (v4)
  {
    memcpy(v4, *a2, 8 * *(a2 + 33));
    *(this + 33) = *(a2 + 33);
    *(this + 35) = *(a2 + 35);
  }

  v5 = *(a2 + 32);
  if (*(a2 + 32))
  {
    v6 = *(a2 + 3);
    v7 = *(this + 3);
    if (*(this + 32) == v5)
    {
      if (!v7)
      {
        return;
      }

      v8 = 12 * v5;
      goto LABEL_11;
    }

    if (v7)
    {
      free(v7);
      *(this + 3) = 0;
      *(this + 32) = 0;
    }

    v8 = 12 * v5;
    v7 = malloc_type_malloc(12 * v5, 0x10000403E1C8BA9uLL);
    *(this + 3) = v7;
    if (v7)
    {
      *(this + 32) = v5;
LABEL_11:
      memcpy(v7, v6, v8);
    }
  }
}

void sub_1B29BBE50(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void ggl::GlobeStars::StarsPipelineState::~StarsPipelineState(ggl::GlobeStars::StarsPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

void std::__introsort<std::_ClassicAlgPolicy,gdc::ResourceKeyLessThan &,gdc::ResourceKey *,false>(unsigned __int8 *a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a1;
  v9 = a1 - 96;
  while (1)
  {
    v10 = a2 - v8;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 5);
    v12 = v11 - 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return;
    }

    if (v11 == 2)
    {
      v27 = (a2 - 96);
      if (gdc::ResourceKeyLessThan::operator()(v27, v8))
      {
        v26 = v8;
        v25 = v27;
        goto LABEL_76;
      }

      return;
    }

LABEL_9:
    v69 = a2;
    if (v10 <= 2303)
    {
      if (a4)
      {
        if (v8 != a2)
        {
          v29 = (v8 + 96);
          if (v8 + 96 != a2)
          {
            v30 = 0;
            v31 = v8;
            do
            {
              v32 = v29;
              if (gdc::ResourceKeyLessThan::operator()(v29, v31))
              {
                v75 = *v32;
                geo::small_vector_base<unsigned char>::small_vector_base(v76, (v31 + 13), v78);
                v79 = v31[21];
                v80 = *(v31 + 11);
                v33 = v30;
                while (1)
                {
                  v34 = v33;
                  v35 = v8 + v33;
                  *(v35 + 96) = *v35;
                  geo::small_vector_base<unsigned char>::move(v35 + 104, v35 + 8, (v35 + 136));
                  *(v35 + 168) = *(v35 + 72);
                  *(v35 + 176) = *(v35 + 80);
                  if (!v34)
                  {
                    break;
                  }

                  v33 = v34 - 96;
                  if ((gdc::ResourceKeyLessThan::operator()(&v75, (v34 - 96 + v8)) & 1) == 0)
                  {
                    v36 = v8 + v34;
                    v37 = (v8 + v34 + 80);
                    goto LABEL_88;
                  }
                }

                v37 = (v35 + 80);
                v36 = v8;
LABEL_88:
                *v36 = v75;
                if (v36 != &v75)
                {
                  geo::small_vector_base<unsigned char>::move(v36 + 8, v76, (v36 + 40));
                }

                *(v36 + 72) = v79;
                *v37 = v80;
                if (v76[0] != v77)
                {
                  free(v76[0]);
                }

                a2 = v69;
              }

              v29 = v32 + 96;
              v30 += 96;
              v31 = v32;
            }

            while (v32 + 96 != a2);
          }
        }
      }

      else if (v8 != a2)
      {
        v61 = (v8 + 96);
        if (v8 + 96 != a2)
        {
          v62 = (v8 + 176);
          do
          {
            v63 = v61;
            if (gdc::ResourceKeyLessThan::operator()(v61, v8))
            {
              v75 = *v63;
              geo::small_vector_base<unsigned char>::small_vector_base(v76, v8 + 104, v78);
              v79 = *(v8 + 168);
              v80 = *(v8 + 176);
              v64 = v62;
              do
              {
                v65 = (v64 - 11);
                *(v64 - 10) = *(v64 - 22);
                v66 = v64 - 168;
                geo::small_vector_base<unsigned char>::move(v64 - 72, v64 - 168, v64 - 40);
                *(v64 - 1) = *(v64 - 13);
                *v64 = *(v64 - 6);
                v68 = gdc::ResourceKeyLessThan::operator()(&v75, v64 - 272);
                v67 = v64 - 6;
                v64 -= 6;
              }

              while ((v68 & 1) != 0);
              *v65 = v75;
              if (v65 != &v75)
              {
                geo::small_vector_base<unsigned char>::move(v66, v76, v65 + 40);
              }

              *(v67 - 1) = v79;
              *v67 = v80;
              a2 = v69;
              if (v76[0] != v77)
              {
                free(v76[0]);
              }
            }

            v61 = v63 + 96;
            v62 += 6;
            v8 = v63;
          }

          while (v63 + 96 != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v38 = v12 >> 1;
        v39 = v12 >> 1;
        do
        {
          v40 = v39;
          if (v38 >= v39)
          {
            v41 = (2 * v39) | 1;
            v42 = v8 + 96 * v41;
            if (2 * v39 + 2 < v11 && gdc::ResourceKeyLessThan::operator()((v8 + 96 * v41), (v42 + 96)))
            {
              v42 += 96;
              v41 = 2 * v40 + 2;
            }

            v43 = v8 + 96 * v40;
            if ((gdc::ResourceKeyLessThan::operator()(v42, v43) & 1) == 0)
            {
              v75 = *v43;
              geo::small_vector_base<unsigned char>::small_vector_base(v76, v43 + 8, v78);
              v79 = *(v43 + 72);
              v80 = *(v43 + 80);
              do
              {
                v44 = v42;
                *v43 = *v42;
                if (v43 != v42)
                {
                  geo::small_vector_base<unsigned char>::move(v43 + 8, v42 + 8, (v43 + 40));
                }

                *(v43 + 72) = *(v42 + 72);
                *(v43 + 80) = *(v42 + 80);
                if (v38 < v41)
                {
                  break;
                }

                v45 = (2 * v41) | 1;
                v42 = v8 + 96 * v45;
                v46 = 2 * v41 + 2;
                if (v46 < v11 && gdc::ResourceKeyLessThan::operator()((v8 + 96 * v45), (v42 + 96)))
                {
                  v42 += 96;
                  v45 = v46;
                }

                v43 = v44;
                v41 = v45;
              }

              while (!gdc::ResourceKeyLessThan::operator()(v42, &v75));
              *v44 = v75;
              if (v44 != &v75)
              {
                geo::small_vector_base<unsigned char>::move(v44 + 8, v76, (v44 + 40));
              }

              *(v44 + 72) = v79;
              *(v44 + 80) = v80;
              if (v76[0] != v77)
              {
                free(v76[0]);
              }
            }
          }

          v39 = v40 - 1;
        }

        while (v40);
        v47 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 5);
        v48 = v69;
        do
        {
          if (v47 >= 2)
          {
            v70 = *v8;
            geo::small_vector_base<unsigned char>::small_vector_base(v71, v8 + 8, v72);
            v49 = 0;
            v73 = *(v8 + 72);
            v74 = *(v8 + 80);
            v50 = v8;
            do
            {
              v51 = v50 + 96 * v49;
              v52 = v51 + 96;
              v53 = 2 * v49;
              v49 = (2 * v49) | 1;
              v54 = v53 + 2;
              if (v53 + 2 < v47)
              {
                v55 = v51 + 192;
                if (gdc::ResourceKeyLessThan::operator()((v51 + 96), (v51 + 192)))
                {
                  v52 = v55;
                  v49 = v54;
                }
              }

              *v50 = *v52;
              if (v50 != v52)
              {
                geo::small_vector_base<unsigned char>::move(v50 + 8, v52 + 8, (v50 + 40));
              }

              *(v50 + 72) = *(v52 + 72);
              *(v50 + 80) = *(v52 + 80);
              v50 = v52;
            }

            while (v49 <= ((v47 - 2) >> 1));
            if (v52 == v48 - 96)
            {
              *v52 = v70;
              if (v52 != &v70)
              {
                geo::small_vector_base<unsigned char>::move(v52 + 8, v71, (v52 + 40));
              }

              *(v52 + 72) = v73;
              *(v52 + 80) = v74;
            }

            else
            {
              *v52 = *(v48 - 12);
              geo::small_vector_base<unsigned char>::move(v52 + 8, (v48 - 88), (v52 + 40));
              *(v52 + 72) = *(v48 - 3);
              *(v52 + 80) = *(v48 - 1);
              *(v48 - 12) = v70;
              if (v48 - 96 != &v70)
              {
                geo::small_vector_base<unsigned char>::move((v48 - 88), v71, v48 - 56);
              }

              *(v48 - 3) = v73;
              *(v48 - 1) = v74;
              v56 = v52 + 96 - v8;
              if (v56 >= 97)
              {
                v57 = (-2 - 0x5555555555555555 * (v56 >> 5)) >> 1;
                v58 = v8 + 96 * v57;
                if (gdc::ResourceKeyLessThan::operator()(v58, v52))
                {
                  v75 = *v52;
                  geo::small_vector_base<unsigned char>::small_vector_base(v76, v52 + 8, v78);
                  v79 = *(v52 + 72);
                  v80 = *(v52 + 80);
                  do
                  {
                    v59 = v58;
                    *v52 = *v58;
                    if (v52 != v58)
                    {
                      geo::small_vector_base<unsigned char>::move(v52 + 8, v58 + 8, (v52 + 40));
                    }

                    *(v52 + 72) = *(v58 + 72);
                    *(v52 + 80) = *(v58 + 80);
                    if (!v57)
                    {
                      break;
                    }

                    v57 = (v57 - 1) >> 1;
                    v58 = v8 + 96 * v57;
                    v52 = v59;
                  }

                  while ((gdc::ResourceKeyLessThan::operator()(v58, &v75) & 1) != 0);
                  *v59 = v75;
                  if (v59 != &v75)
                  {
                    geo::small_vector_base<unsigned char>::move(v59 + 8, v76, (v59 + 40));
                  }

                  *(v59 + 72) = v79;
                  *(v59 + 80) = v80;
                  if (v76[0] != v77)
                  {
                    free(v76[0]);
                  }
                }
              }
            }

            if (v71[0] != v71[2])
            {
              free(v71[0]);
            }
          }

          v48 -= 96;
        }

        while (v47-- > 2);
      }

      return;
    }

    v13 = v8 + 96 * (v11 >> 1);
    if (v10 <= 0x3000)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::ResourceKeyLessThan &,gdc::ResourceKey *,0>((v8 + 96 * (v11 >> 1)), v8, (a2 - 96));
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::ResourceKeyLessThan &,gdc::ResourceKey *,0>(v8, (v8 + 96 * (v11 >> 1)), (a2 - 96));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::ResourceKeyLessThan &,gdc::ResourceKey *,0>((v8 + 96), (v13 - 96), (a2 - 192));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::ResourceKeyLessThan &,gdc::ResourceKey *,0>((v8 + 192), (v13 + 96), (a2 - 288));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::ResourceKeyLessThan &,gdc::ResourceKey *,0>((v13 - 96), (v8 + 96 * (v11 >> 1)), (v13 + 96));
      v75 = *v8;
      geo::small_vector_base<unsigned char>::small_vector_base(v76, v8 + 8, v78);
      v79 = *(v8 + 72);
      v80 = *(v8 + 80);
      *v8 = *v13;
      geo::small_vector_base<unsigned char>::move(v8 + 8, v13 + 8, (v8 + 40));
      *(v8 + 72) = *(v13 + 72);
      *(v8 + 80) = *(v13 + 80);
      *v13 = v75;
      if (&v75 != v13)
      {
        geo::small_vector_base<unsigned char>::move(v13 + 8, v76, (v13 + 40));
      }

      *(v13 + 72) = v79;
      *(v13 + 80) = v80;
      if (v76[0] != v77)
      {
        free(v76[0]);
      }
    }

    --a3;
    if ((a4 & 1) == 0 && (gdc::ResourceKeyLessThan::operator()(v9, v8) & 1) == 0)
    {
      v75 = *v8;
      geo::small_vector_base<unsigned char>::small_vector_base(v76, v8 + 8, v78);
      v79 = *(v8 + 72);
      v80 = *(v8 + 80);
      if (gdc::ResourceKeyLessThan::operator()(&v75, (a2 - 96)))
      {
        a1 = v8;
        do
        {
          a1 += 96;
        }

        while ((gdc::ResourceKeyLessThan::operator()(&v75, a1) & 1) == 0);
      }

      else
      {
        v20 = (v8 + 96);
        do
        {
          a1 = v20;
          if (v20 >= a2)
          {
            break;
          }

          v21 = gdc::ResourceKeyLessThan::operator()(&v75, v20);
          v20 = a1 + 96;
        }

        while (!v21);
      }

      v22 = a2;
      if (a1 < a2)
      {
        v22 = a2;
        do
        {
          v22 -= 96;
        }

        while ((gdc::ResourceKeyLessThan::operator()(&v75, v22) & 1) != 0);
      }

      while (a1 < v22)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<gdc::ResourceKey *&,gdc::ResourceKey *&>(a1, v22);
        do
        {
          a1 += 96;
        }

        while (!gdc::ResourceKeyLessThan::operator()(&v75, a1));
        do
        {
          v22 -= 96;
        }

        while ((gdc::ResourceKeyLessThan::operator()(&v75, v22) & 1) != 0);
      }

      v23 = a1 - 96;
      if (a1 - 96 != v8)
      {
        *v8 = *(a1 - 12);
        geo::small_vector_base<unsigned char>::move(v8 + 8, (a1 - 88), (v8 + 40));
        *(v8 + 72) = *(a1 - 3);
        *(v8 + 80) = *(a1 - 1);
      }

      *v23 = v75;
      if (v23 != &v75)
      {
        geo::small_vector_base<unsigned char>::move((a1 - 88), v76, a1 - 56);
      }

      *(a1 - 3) = v79;
      *(a1 - 1) = v80;
      a2 = v69;
      if (v76[0] != v77)
      {
        free(v76[0]);
      }

      goto LABEL_68;
    }

    v75 = *v8;
    geo::small_vector_base<unsigned char>::small_vector_base(v76, v8 + 8, v78);
    v79 = *(v8 + 72);
    v80 = *(v8 + 80);
    v14 = v8;
    do
    {
      v15 = v14;
      v14 += 96;
    }

    while ((gdc::ResourceKeyLessThan::operator()(v14, &v75) & 1) != 0);
    v16 = v69;
    if (v15 == v8)
    {
      v16 = v69;
      do
      {
        if (v14 >= v16)
        {
          break;
        }

        v16 -= 96;
      }

      while ((gdc::ResourceKeyLessThan::operator()(v16, &v75) & 1) == 0);
    }

    else
    {
      do
      {
        v16 -= 96;
      }

      while (!gdc::ResourceKeyLessThan::operator()(v16, &v75));
    }

    if (v14 >= v16)
    {
      a1 = v14;
      a2 = v69;
    }

    else
    {
      v17 = v16;
      a1 = v14;
      a2 = v69;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<gdc::ResourceKey *&,gdc::ResourceKey *&>(a1, v17);
        do
        {
          a1 += 96;
        }

        while ((gdc::ResourceKeyLessThan::operator()(a1, &v75) & 1) != 0);
        do
        {
          v17 -= 12;
        }

        while (!gdc::ResourceKeyLessThan::operator()(v17, &v75));
      }

      while (a1 < v17);
    }

    v18 = a1 - 96;
    if (a1 - 96 != v8)
    {
      *v8 = *(a1 - 12);
      geo::small_vector_base<unsigned char>::move(v8 + 8, (a1 - 88), (v8 + 40));
      *(v8 + 72) = *(a1 - 3);
      *(v8 + 80) = *(a1 - 1);
    }

    *v18 = v75;
    if (v18 != &v75)
    {
      geo::small_vector_base<unsigned char>::move((a1 - 88), v76, a1 - 56);
    }

    *(a1 - 3) = v79;
    *(a1 - 1) = v80;
    if (v76[0] != v77)
    {
      free(v76[0]);
    }

    if (v14 < v16)
    {
      goto LABEL_46;
    }

    v19 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,gdc::ResourceKeyLessThan &,gdc::ResourceKey *>(v8, (a1 - 96));
    if (!std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,gdc::ResourceKeyLessThan &,gdc::ResourceKey *>(a1, a2))
    {
      if (v19)
      {
        goto LABEL_1;
      }

LABEL_46:
      std::__introsort<std::_ClassicAlgPolicy,gdc::ResourceKeyLessThan &,gdc::ResourceKey *,false>(v8, a1 - 96, a3, a4 & 1);
LABEL_68:
      a4 = 0;
      goto LABEL_1;
    }

    a2 = (a1 - 96);
    if (v19)
    {
      return;
    }
  }

  if (v11 == 3)
  {
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::ResourceKeyLessThan &,gdc::ResourceKey *,0>(v8, (v8 + 96), (a2 - 96));
    return;
  }

  if (v11 != 4)
  {
    if (v11 == 5)
    {
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,gdc::ResourceKeyLessThan &,gdc::ResourceKey *,0>(v8, (v8 + 96), (v8 + 192), (v8 + 288), (a2 - 96));
      return;
    }

    goto LABEL_9;
  }

  v24 = (a2 - 96);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::ResourceKeyLessThan &,gdc::ResourceKey *,0>(v8, (v8 + 96), (v8 + 192));
  if (gdc::ResourceKeyLessThan::operator()(v24, (v8 + 192)))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<gdc::ResourceKey *&,gdc::ResourceKey *&>((v8 + 192), v24);
    if (gdc::ResourceKeyLessThan::operator()((v8 + 192), (v8 + 96)))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<gdc::ResourceKey *&,gdc::ResourceKey *&>((v8 + 96), (v8 + 192));
      if (gdc::ResourceKeyLessThan::operator()((v8 + 96), v8))
      {
        v25 = (v8 + 96);
        v26 = v8;
LABEL_76:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<gdc::ResourceKey *&,gdc::ResourceKey *&>(v26, v25);
      }
    }
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>()
{
  v0 = &unk_1EB839000;
  {
    v0 = &unk_1EB839000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB839000;
    }
  }

  return v0[281];
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<gdc::ResourceKey *&,gdc::ResourceKey *&>(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  geo::small_vector_base<unsigned char>::small_vector_base(v5, (a1 + 1), v6);
  v7 = a1[9];
  v8 = *(a1 + 5);
  *a1 = *a2;
  if (a1 != a2)
  {
    geo::small_vector_base<unsigned char>::move((a1 + 1), (a2 + 1), a1 + 40);
  }

  a1[9] = a2[9];
  *(a1 + 5) = *(a2 + 5);
  *a2 = v4;
  if (&v4 != a2)
  {
    geo::small_vector_base<unsigned char>::move((a2 + 1), v5, a2 + 40);
  }

  a2[9] = v7;
  *(a2 + 5) = v8;
  if (v5[0] != v5[2])
  {
    free(v5[0]);
  }
}

uint64_t FeatureStyleAttributes::compareStylePairs(FeatureStyleAttributes *this, _DWORD *a2, const void *a3)
{
  if (*this < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *this > *a2;
  }
}

void FeatureStyleAttributes::replaceAttributes(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = 0;
    v5 = *(a1 + 33);
    do
    {
      v6 = *a1;
      if (v5)
      {
        v7 = 0;
        v8 = v5;
        v9 = *a1;
        do
        {
          v10 = *v9;
          v9 += 2;
          if (v10 == *(a2 + 8 * v4))
          {
            v6[2 * v7 + 1] = *(a2 + 4 + 8 * v4);
            goto LABEL_12;
          }

          ++v7;
        }

        while (v5 != v7);
        if (v5 <= 0x1Fu)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = 0;
LABEL_10:
        *&v6[2 * v8] = *(a2 + 8 * v4);
        v5 = *(a1 + 33) + 1;
        *(a1 + 33) = v5;
        *(a1 + 35) = 0;
      }

LABEL_12:
      ++v4;
    }

    while (v4 != a3);
  }

  if ((*(a1 + 35) & 1) == 0)
  {
    qsort(*a1, *(a1 + 33), 8uLL, FeatureStyleAttributes::compareStylePairs);
    *(a1 + 35) = 1;
  }
}

char **geo::small_vector_base<unsigned char>::small_vector_base(char **result, uint64_t a2, char *a3)
{
  *result = a3;
  result[1] = a3;
  result[2] = a3;
  v3 = *(a2 + 16);
  result[3] = *(a2 + 24);
  v4 = *a2;
  if (*a2 == v3)
  {
    result[1] = &a3[*(a2 + 8) - v4];
    v6 = *(a2 + 8);
    while (v4 != v6)
    {
      v7 = *v4++;
      *a3++ = v7;
    }
  }

  else
  {
    v5 = *(a2 + 8);
    *result = v4;
    result[1] = v5;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci16OcclusionTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A129B8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci16OcclusionTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A129B8;
  a2[1] = v2;
  return result;
}

void geo::small_vector_base<unsigned char>::move(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a1 != a2)
  {
    v6 = *a1;
    if (v6 != *(a1 + 16))
    {
      free(v6);
    }

    *(a1 + 16) = a3;
    if (*a2 == *(a2 + 16))
    {
      *a1 = a3;
      v8 = *a2;
      *(a1 + 8) = &a3[*(a2 + 8) - *a2];
      v9 = *(a2 + 8);
      while (v8 != v9)
      {
        v10 = *v8++;
        *a3++ = v10;
      }
    }

    else
    {
      v7 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v7;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    *(a1 + 24) = *(a2 + 24);
  }
}

uint64_t **std::__hash_table<gdc::ResourceKey,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>,std::allocator<gdc::ResourceKey>>::find<gdc::ResourceKey>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = (v5 + ((v4 - 0x61C8864680B583EBLL) << 6) + ((v4 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v4 - 0x61C8864680B583EBLL);
  v7 = (*(a2 + 9) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
  v8 = vcnt_s8(v2);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = (*(a2 + 9) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
    if (v7 >= *&v2)
    {
      v10 = v7 % *&v2;
    }
  }

  else
  {
    v10 = (*&v2 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v13 == v7)
    {
      if (*(i + 16) == v4 && *(i + 9) == v5 && gdc::GenericKey::operator==((i + 3), (a2 + 8)))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v2)
        {
          v13 %= *&v2;
        }
      }

      else
      {
        v13 &= *&v2 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = (v5 + ((v4 - 0x61C8864680B583EBLL) << 6) + ((v4 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v4 - 0x61C8864680B583EBLL);
  v7 = (*(a2 + 9) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
  v8 = vcnt_s8(v2);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = (*(a2 + 9) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
    if (v7 >= *&v2)
    {
      v10 = v7 % *&v2;
    }
  }

  else
  {
    v10 = (*&v2 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  for (i = *v11; i; i = *i)
  {
    v13 = i[1];
    if (v7 == v13)
    {
      if (*(i + 16) == v4 && *(i + 9) == v5 && gdc::GenericKey::operator==((i + 3), (a2 + 8)))
      {
        return i;
      }
    }

    else
    {
      if (v9 > 1)
      {
        if (v13 >= *&v2)
        {
          v13 %= *&v2;
        }
      }

      else
      {
        v13 &= *&v2 - 1;
      }

      if (v13 != v10)
      {
        return 0;
      }
    }
  }

  return i;
}

md::LabelLineStitchSegment *md::LabelLineStitchSegment::LabelLineStitchSegment(md::LabelLineStitchSegment *this, const md::LabelLineSegment *a2)
{
  *this = a2;
  *(this + 8) = 0u;
  v3 = this + 8;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 2139095039;
  *(this + 38) = 0;
  *(this + 78) = 0;
  *(this + 5) = 0u;
  v4 = this + 80;
  *(this + 30) = 2139095039;
  v5 = (this + 120);
  *(this + 6) = 0u;
  *(this + 14) = 0;
  *(this + 62) = 0;
  *(this + 126) = 0;
  *(this + 64) = 1;
  md::LabelLineStitchSegment::point(&v8, this, 0);
  *(this + 2) = v8;
  *(this + 6) = v9;
  *(this + 56) = v10;
  *(this + 18) = v11[0];
  *(this + 75) = *(v11 + 3);
  if (*this)
  {
    v6 = (*(**this + 16))(*this);
  }

  else if (*v3)
  {
    v6 = *(*v3 + 56);
  }

  else
  {
    v6 = 0;
  }

  md::LabelLineStitchSegment::point(&v8, this, v6 - 1);
  *v4 = v8;
  *(v4 + 2) = v9;
  *(this + 104) = v10;
  *v5 = v11[0];
  *(v5 + 3) = *(v11 + 3);
  return this;
}

uint64_t std::__function::__value_func<void ()(md::ls::ItemsPrepared const&,md::ls::RequiresShaderTextureID<DaVinci::OcclusionTexture> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t md::PhysicalLabelFeature::updateText(md::PhysicalLabelFeature *this, const void *a2, char a3)
{
  v12 = *MEMORY[0x1E69E9840];
  std::vector<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,mdm::zone_mallocator>>::clear[abi:nn200100]((this + 384));
  v5 = (*(*this + 64))(this);
  v6 = *(this + 24);
  if (v5)
  {
    v8 = &unk_1F2A37AE8;
    v9 = this;
    LOBYTE(v10) = a3;
    v11 = &v8;
    memset(&v10 + 1, 0, 7);
    md::LabelLineStore::enumerateLabelLineSegments(*(v6 + 96), *(v6 + 104), &v8);
  }

  else
  {
    v8 = &unk_1F2A37B30;
    v9 = this;
    LOBYTE(v10) = a3;
    v11 = &v8;
    memset(&v10 + 1, 0, 7);
    md::LabelLineStore::enumerateLabelLineSegments(*(v6 + 96), *(v6 + 104), &v8);
  }

  return std::__function::__value_func<void ()(std::unique_ptr<md::LabelLineSegment> const&)>::~__value_func[abi:nn200100](&v8);
}

void sub_1B29BD2F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::unique_ptr<md::LabelLineSegment> const&)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<md::PhysicalLabelFeature::updateText(void const*,BOOL)::$_1,std::allocator<md::PhysicalLabelFeature::updateText(void const*,BOOL)::$_1>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (!*(*a2 + 32))
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      result = (*(**(result + 8) + 680))(*(result + 8), v3, *(result + 16));
      *(v2 + 38) = result;
    }
  }

  return result;
}

uint64_t gdc::ResourceStore::resource(uint64_t this, int8x8_t *a2, unsigned __int8 *a3)
{
  v3 = this;
  v4 = a2[34];
  if (!*&v4)
  {
    goto LABEL_20;
  }

  v5 = *a3;
  v6 = *(a3 + 1);
  v7 = (v6 + ((v5 - 0x61C8864680B583EBLL) << 6) + ((v5 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (v5 - 0x61C8864680B583EBLL);
  v8 = (*(a3 + 9) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583EBLL) ^ v7;
  v9 = vcnt_s8(v4);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = (*(a3 + 9) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583EBLL) ^ v7;
    if (v8 >= *&v4)
    {
      v11 = v8 % *&v4;
    }
  }

  else
  {
    v11 = (*&v4 - 1) & v8;
  }

  v12 = *(*&a2[33] + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_20:
    *v3 = 0;
    v3[1] = 0;
    return this;
  }

  v22 = a3;
  while (1)
  {
    v14 = v13[1];
    if (v8 == v14)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v4)
      {
        v14 %= *&v4;
      }
    }

    else
    {
      v14 &= *&v4 - 1;
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

  if (*(v13 + 16) != v5)
  {
    goto LABEL_19;
  }

  if (*(v13 + 9) != v6)
  {
    goto LABEL_19;
  }

  v15 = a2;
  v16 = v3;
  v17 = v6;
  this = gdc::GenericKey::operator==((v13 + 3), (a3 + 8));
  v6 = v17;
  v3 = v16;
  a3 = v22;
  a2 = v15;
  if ((this & 1) == 0)
  {
    goto LABEL_19;
  }

  *v16 = 0;
  v16[1] = 0;
  this = v13[15];
  if (this)
  {
    this = std::__shared_weak_count::lock(this);
    v16[1] = this;
    if (this)
    {
      v18 = v13[14];
      *v3 = v18;
      if (v18)
      {
        v19 = this;
        v20 = v15 + 344;
        this = geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::find(v20, v22);
        if (v20 == this)
        {
          v21 = *(v22 + 1);
          v23 = *v22;
          v24[0] = v25;
          v24[1] = v25;
          v24[2] = v25;
          v24[3] = 32;
          geo::small_vector_base<unsigned char>::append<unsigned char const*>(v24, v21, *(v22 + 2));
          v25[4] = *(v22 + 9);
          v26 = *(v22 + 5);
          v27 = v18;
          v28 = v19;
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
          geo::MarkedLRUCache<gdc::ResourceKey,std::shared_ptr<gdc::Resource>,gdc::ResourceKeyHash,std::equal_to<gdc::ResourceKey>>::insert(v20, &v23);
        }
      }
    }
  }

  return this;
}

uint64_t md::LabelLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = 2147483646;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

uint64_t gdc::GenericKey::operator<(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 - a1;
  if (a2 - a1 < (a4 - a3))
  {
    return 1;
  }

  if (a2 - a1 > (a4 - a3))
  {
    return 0;
  }

  if (v4 < 4)
  {
LABEL_9:
    v10 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    if ((v4 & 0xFFFFFFFFFFFFFFFCLL) == v4)
    {
LABEL_12:
      v13 = 0;
    }

    else
    {
      while (1)
      {
        v11 = *(a1 + v10);
        v12 = *(a3 + v10);
        if (v11 != v12)
        {
          break;
        }

        if (++v10 >= v4)
        {
          goto LABEL_12;
        }
      }

      LODWORD(v10) = v11 < v12;
      v13 = 1;
    }

    return v13 & v10;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = 4 * v6;
      v8 = *(a1 + v7);
      v9 = *(a3 + v7);
      if (v8 != v9)
      {
        return v8 < v9;
      }

      if (v4 >> 2 == ++v6)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignTexTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignTexTextureIndex>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignTexTextureIndex::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,gdc::ResourceKeyLessThan &,gdc::ResourceKey *,0>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = gdc::ResourceKeyLessThan::operator()(a2, a1);
  v7 = gdc::ResourceKeyLessThan::operator()(a3, a2);
  if (v6)
  {
    if (v7)
    {
      v8 = a1;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<gdc::ResourceKey *&,gdc::ResourceKey *&>(a1, a2);
      if (!gdc::ResourceKeyLessThan::operator()(a3, a2))
      {
        return;
      }

      v8 = a2;
    }

    v9 = a3;
  }

  else
  {
    if (!v7)
    {
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<gdc::ResourceKey *&,gdc::ResourceKey *&>(a2, a3);
    if (!gdc::ResourceKeyLessThan::operator()(a2, a1))
    {
      return;
    }

    v8 = a1;
    v9 = a2;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<gdc::ResourceKey *&,gdc::ResourceKey *&>(v8, v9);
}

void md::SelectedDaVinciPolygonLayerDataSource::constructRequests(uint64_t a1, void **a2, void **a3)
{
  if (*(a1 + 824))
  {
    v7 = a2 == a3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v22 = v6;
    v23 = v5;
    v24 = v3;
    v25 = v4;
    v9 = a2;
    do
    {
      gdc::Tiled::tileFromLayerDataKey(v20, (*v9)[2]);
      v11 = *(a1 + 816);
      if (v11)
      {
        v12 = vrev64_s32(v21);
        v13 = v20[1];
        do
        {
          v14 = v11[2];
          v19[0] = v12;
          v19[2] = v14;
          v19[1] = v13;
          if (((*v9)[12] & 0x100000000) != 0)
          {
            v15 = (*v9)[12];
          }

          else
          {
            v15 = 2147483646;
          }

          gdc::ResourceKey::ResourceKey(v16, *(a1 + 592), v19, 24, (*v9)[14], v15);
          gdc::LayerDataRequest::request(*v9, v16, 0);
          if (v17 != v18)
          {
            free(v17);
          }

          v11 = *v11;
        }

        while (v11);
      }

      v9 += 2;
    }

    while (v9 != a3);
  }
}

void **geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::~fast_shared_ptr(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*v2)-- == 1)
    {
      *(v2 + 1) = &unk_1F2A57A08;
      v4 = *(v2 + 10);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      v9.__vftable = (v2 + 32);
      std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v9);
      v5 = *(v2 + 3);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
      }

      v6 = *a1;
      v7 = mdm::zone_mallocator::instance(v5);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>::_fast_shared_ptr_control>(v7, v6);
      *a1 = 0;
    }
  }

  return a1;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>();
    unk_1EB83C9C0 = 0xC5F6E84B67A27720;
    qword_1EB83C9C8 = "md::ls::RequiresShaderTextureID<DaVinci::TexTexture>]";
    qword_1EB83C9D0 = 52;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(void)::metadata >= 0x200)
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

uint64_t md::DaVinciCenterLineRoadsLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = 2147483646;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

uint64_t md::ElevatedStrokeLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = 2147483646;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::TexTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[400];
}

void md::DaVinciMaterialLayerDataSource::constructRequests(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      gdc::LayerDataRequestKey::LayerDataRequestKey(v12, *v4);
      UInt64 = gdc::ResourceKey::getUInt64(v13, 0);
      v6 = **v4;
      v7 = *(*v4 + 112);
      v15[0] = UInt64;
      gdc::ResourceKey::ResourceKey(&v9, v6, 36, v15, 1, v7);
      v8 = *v4;
      v4 += 2;
      gdc::LayerDataRequest::request(v8, &v9, 1);
      if (v10 != v11)
      {
        free(v10);
      }

      if (v13 != v14)
      {
        free(v13);
      }
    }

    while (v4 != a3);
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci10TexTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A12F68;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void md::DaVinciGroundLayerDataSource::constructRequests(void **a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *&v6 = gdc::Tiled::tileFromLayerDataKey(v24, *(*v4 + 16));
      (*(*a1[3] + 16))(v22, v6);
      if (v23 == 1)
      {
        ((*a1)[18])(&v16, a1, **v4, v22, *(*v4 + 112), *(*v4 + 96) & 0xFFFFFFFFFFLL);
        gdc::LayerDataRequest::request(*v4, &v16, 0);
        if (BYTE1(v22[0]) < v24[1])
        {
          gdc::LayerDataRequestKey::LayerDataRequestKey(v13, *v4);
          v7 = v16;
          v8[0] = v11;
          v8[1] = v11;
          v9 = v11;
          v10 = 32;
          geo::small_vector_base<unsigned char>::append<unsigned char const*>(v8, v17, v18);
          v11[4] = v20;
          v12 = v21;
          gdc::LayerDataSource::extendLifeTimeOfResourceToKeyUsage(a1, v13, &v7);
          if (v8[0] != v9)
          {
            free(v8[0]);
          }

          if (v14 != v15)
          {
            free(v14);
          }
        }

        if (v17 != v19)
        {
          free(v17);
        }
      }

      v4 += 2;
    }

    while (v4 != a3);
  }
}

void sub_1B29BE230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, void *a39)
{
  if (a24 != a26)
  {
    free(a24);
  }

  if (a37 != a39)
  {
    free(a37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::DaVinciGroundLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = 2147483646;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci10TexTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A12F68;
  a2[1] = v2;
  return result;
}

void md::SelectedLabelLayerDataSource::constructRequests(uint64_t a1, void **a2, void **a3)
{
  if (*(a1 + 896))
  {
    v5 = a2 == a3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v18 = v3;
    v19 = v4;
    v7 = a2;
    do
    {
      v9 = *v7;
      gdc::Tiled::tileFromLayerDataKey(v16, (*v7)[2]);
      v15 = 0;
      v14[0] = vrev64_s32(v17);
      v14[1] = v16[1];
      v15 = **(a1 + 896);
      if ((*(v9 + 96) & 0x100000000) != 0)
      {
        v10 = *(v9 + 96);
      }

      else
      {
        v10 = 2147483646;
      }

      gdc::ResourceKey::ResourceKey(v11, *(a1 + 592), v14, 24, *(v9 + 112), v10);
      gdc::LayerDataRequest::request(*v7, v11, 0);
      if (v12 != v13)
      {
        free(v12);
      }

      v7 += 2;
    }

    while (v7 != a3);
  }
}

uint64_t md::DaVinciMetaLayerDataSource::resourceKeyForType@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 592);
  if ((a5 & 0x100000000) != 0)
  {
    v7 = a5;
  }

  else
  {
    v7 = -4;
  }

  v10 = vrev64_s32(*(a3 + 4));
  v8 = *a3;
  v11 = a3[1];
  v12 = v8;
  return gdc::ResourceKey::ResourceKey(a6, a2, v6, &v10, 4, a4, v7);
}

void md::RegionalResourceLayerDataSource::constructRequests(uint64_t a1, void **a2, void **a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = [MEMORY[0x1E69A2478] modernManager];
      v7 = [v6 activeTileGroup];

      for (i = 0; i < [v7 attributionsCount]; ++i)
      {
        v9 = [v7 attributionAtIndex:i];
        for (j = 0; j < [v9 regionsCount]; ++j)
        {
          v31 = 0;
          v32 = 0uLL;
          if (v9)
          {
            [v9 regionAtIndex:j];
            v11 = HIDWORD(v32);
            v12 = v32;
            v13 = *(&v32 + 4);
            v14 = v31;
          }

          else
          {
            v14 = 0;
            v13 = 0;
            v12 = 0;
            v11 = 0;
          }

          v26 = v11;
          v27 = v12;
          v28 = v13;
          v29 = v14;
          if (md::TiledGEOResourceFetcher::regionContainsTile(&v26, v33))
          {
            v15 = *(a1 + 760);
            v16 = (*v4)[14];
            v34 = i;
            v35 = v15;
            gdc::ResourceKey::ResourceKey(&v26, 0, 19, &v34, 2, v16, -1073741827);
            gdc::LayerDataRequest::request(*v4, &v26, 0);
            if (v28 != v30)
            {
              free(v28);
            }

            break;
          }
        }
      }

      for (k = 0; k < [v7 regionalResourcesCount]; ++k)
      {
        v18 = [v7 regionalResourceAtIndex:k];
        for (m = 0; m < [v18 regionsCount]; ++m)
        {
          v31 = 0;
          v32 = 0uLL;
          if (v18)
          {
            [v18 regionAtIndex:m];
            v20 = HIDWORD(v32);
            v21 = v32;
            v22 = *(&v32 + 4);
            v23 = v31;
          }

          else
          {
            v23 = 0;
            v22 = 0;
            v21 = 0;
            v20 = 0;
          }

          v26 = v20;
          v27 = v21;
          v28 = v22;
          v29 = v23;
          if (md::TiledGEOResourceFetcher::regionContainsTile(&v26, v33))
          {
            v24 = *(a1 + 760);
            v25 = (*v4)[14];
            v34 = k;
            v35 = v24;
            gdc::ResourceKey::ResourceKey(&v26, 0, 18, &v34, 2, v25, -1073741827);
            gdc::LayerDataRequest::request(*v4, &v26, 0);
            if (v28 != v30)
            {
              free(v28);
            }

            break;
          }
        }
      }

      v4 += 2;
    }

    while (v4 != a3);
  }
}

uint64_t gss::StylesheetQuery<gss::PropertyID>::StylesheetQuery(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t **a4, uint64_t a5)
{
  v10[0] = a2;
  v10[1] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::Queryable<gss::PropertyID>::Queryable(a1, v10);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  *a1 = &unk_1F2A5B638;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  if ((a1 + 240) != a4)
  {
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::pair<gss::StyleAttribute,unsigned short>*,std::pair<gss::StyleAttribute,unsigned short>*>((a1 + 240), *a4, a4[1], a4[1] - *a4);
  }

  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 256;
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(a1 + 272, a5);
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  return a1;
}

void sub_1B29BE868(_Unwind_Exception *a1)
{
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v2);
  gss::Queryable<gss::PropertyID>::~Queryable(v1);
  _Unwind_Resume(a1);
}

void sub_1B29BE888()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v0);
  }

  JUMPOUT(0x1B29BE880);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignTileElevatedStrokeData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignTileElevatedStrokeData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignTileElevatedStrokeData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t gss::Queryable<gss::PropertyID>::Queryable(uint64_t a1, void *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = &unk_1F2A5B690;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 0;
  geo::read_write_lock::read_write_lock((a1 + 32));
  v6 = *a2;
  if (*a2)
  {
    v7 = *(v6 + 520);
    v8 = *(v6 + 528);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      v9 = *(*a2 + 520);
      v10 = *(*a2 + 528);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = *(v9 + 264) - 1;
        std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      }

      else
      {
        v11 = *(v9 + 264) - 1;
      }
    }

    else
    {
      v11 = 0;
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 232) = v11;
  return a1;
}

void sub_1B29BE9B8(_Unwind_Exception *a1)
{
  v3 = v2;
  std::unique_ptr<gss::RenderStyle<gss::PropertyID>>::reset[abi:nn200100](v3, 0);
  v5 = *(v1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::__unordered_map_hasher<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<gss::StyleKey>,std::equal_to<gss::StyleKey>,true>,std::__unordered_map_equal<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::equal_to<gss::StyleKey>,std::hash<gss::StyleKey>,true>,geo::allocator_adapter<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,gss::zone_mallocator>>::__emplace_unique_key_args<gss::StyleKey,std::piecewise_construct_t const&,std::tuple<gss::StyleKey&&>,std::tuple<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>> &>>(float *a1, uint64_t *a2, uint64_t ***a3, void **a4)
{
  v9 = std::__unordered_map_hasher<gss::StyleKey,std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,std::hash<gss::StyleKey>,std::equal_to<gss::StyleKey>,true>::operator()[abi:nn200100](a2);
  v10 = v9;
  v11 = *(a1 + 1);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v11)
      {
        v4 = v9 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      v15 = *v14;
      if (*v14)
      {
        v49 = a4;
        v16 = *a2;
        v17 = a2[1];
        while (1)
        {
          v18 = v15[1];
          if (v18 == v10)
          {
            v9 = gss::FeatureAttributeSet::operator==(v15[2], v15[3], v16, v17);
            if (v9)
            {
              v9 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator==<geo::allocator_adapter<unsigned char,gss::zone_mallocator>>(v15 + 6, (a2 + 4));
              if (v9)
              {
                return v15;
              }
            }
          }

          else
          {
            if (v13 > 1)
            {
              if (v18 >= v11)
              {
                v18 %= v11;
              }
            }

            else
            {
              v18 &= v11 - 1;
            }

            if (v18 != v4)
            {
LABEL_20:
              a4 = v49;
              break;
            }
          }

          v15 = *v15;
          if (!v15)
          {
            goto LABEL_20;
          }
        }
      }
    }
  }

  v19 = gss::zone_mallocator::instance(v9);
  v20 = pthread_rwlock_rdlock((v19 + 32));
  if (v20)
  {
    geo::read_write_lock::logFailure(v20, "read lock", v21);
  }

  v15 = malloc_type_zone_malloc(*v19, 0x58uLL, 0x103004003330742uLL);
  atomic_fetch_add((v19 + 24), 1u);
  geo::read_write_lock::unlock((v19 + 32));
  *v15 = 0;
  v15[1] = v10;
  v22 = *a3;
  v23 = *a4;
  gss::FeatureAttributeSet::FeatureAttributeSet(v15 + 2, v22);
  v15[6] = 0;
  v15[7] = 0;
  *(v15 + 32) = 256;
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy((v15 + 6), (v22 + 4));
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::shrink_to_fit((v15 + 6));
  v25 = v23[1];
  v15[9] = *v23;
  v15[10] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 16), 1uLL, memory_order_relaxed);
  }

  v26 = (*(a1 + 5) + 1);
  v27 = a1[12];
  if (!v11 || (v27 * v11) < v26)
  {
    v28 = 1;
    if (v11 >= 3)
    {
      v28 = (v11 & (v11 - 1)) != 0;
    }

    v29 = v28 | (2 * v11);
    v30 = vcvtps_u32_f32(v26 / v27);
    if (v29 <= v30)
    {
      v31 = v30;
    }

    else
    {
      v31 = v29;
    }

    if (v31 == 1)
    {
      v31 = 2;
    }

    else if ((v31 & (v31 - 1)) != 0)
    {
      prime = std::__next_prime(v31);
      v31 = prime;
    }

    v11 = *(a1 + 1);
    if (v31 > v11)
    {
      goto LABEL_37;
    }

    if (v31 < v11)
    {
      prime = vcvtps_u32_f32(*(a1 + 5) / a1[12]);
      if (v11 < 3 || (v40 = vcnt_s8(v11), v40.i16[0] = vaddlv_u8(v40), v40.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v41 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v41;
        }
      }

      if (v31 <= prime)
      {
        v31 = prime;
      }

      if (v31 >= v11)
      {
        v11 = *(a1 + 1);
      }

      else
      {
        if (v31)
        {
LABEL_37:
          v32 = gss::zone_mallocator::instance(prime);
          v33 = pthread_rwlock_rdlock((v32 + 32));
          if (v33)
          {
            geo::read_write_lock::logFailure(v33, "read lock", v34);
          }

          v35 = malloc_type_zone_malloc(*v32, 8 * v31, 0x2004093837F09uLL);
          atomic_fetch_add((v32 + 24), 1u);
          geo::read_write_lock::unlock((v32 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> *,gss::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> **,0>(a1, v35);
          v36 = 0;
          *(a1 + 1) = v31;
          do
          {
            *(*a1 + 8 * v36++) = 0;
          }

          while (v31 != v36);
          v37 = *(a1 + 3);
          if (v37)
          {
            v38 = v37[1];
            v39 = vcnt_s8(v31);
            v39.i16[0] = vaddlv_u8(v39);
            if (v39.u32[0] > 1uLL)
            {
              if (v38 >= v31)
              {
                v38 %= v31;
              }
            }

            else
            {
              v38 &= v31 - 1;
            }

            *(*a1 + 8 * v38) = a1 + 6;
            v42 = *v37;
            if (*v37)
            {
              do
              {
                v43 = v42[1];
                if (v39.u32[0] > 1uLL)
                {
                  if (v43 >= v31)
                  {
                    v43 %= v31;
                  }
                }

                else
                {
                  v43 &= v31 - 1;
                }

                if (v43 != v38)
                {
                  v44 = *a1;
                  if (!*(*a1 + 8 * v43))
                  {
                    *(v44 + 8 * v43) = v37;
                    goto LABEL_61;
                  }

                  *v37 = *v42;
                  *v42 = **(v44 + 8 * v43);
                  **(v44 + 8 * v43) = v42;
                  v42 = v37;
                }

                v43 = v38;
LABEL_61:
                v37 = v42;
                v42 = *v42;
                v38 = v43;
              }

              while (v42);
            }
          }

          v11 = v31;
          goto LABEL_65;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> *,gss::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<gss::StyleKey,std::weak_ptr<gss::StylesheetQuery<gss::PropertyID>>>,void *> *> **,0>(a1, 0);
        v11 = 0;
        *(a1 + 1) = 0;
      }
    }

LABEL_65:
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v45 = *a1;
  v46 = *(*a1 + 8 * v4);
  if (v46)
  {
    *v15 = *v46;
LABEL_78:
    *v46 = v15;
    goto LABEL_79;
  }

  *v15 = *(a1 + 3);
  *(a1 + 3) = v15;
  *(v45 + 8 * v4) = a1 + 6;
  if (*v15)
  {
    v47 = *(*v15 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v47 >= v11)
      {
        v47 %= v11;
      }
    }

    else
    {
      v47 &= v11 - 1;
    }

    v46 = (*a1 + 8 * v47);
    goto LABEL_78;
  }

LABEL_79:
  ++*(a1 + 5);
  return v15;
}