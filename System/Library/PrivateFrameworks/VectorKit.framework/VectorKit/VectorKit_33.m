long double gdc::NonFlatTileSelector::calculateLodConstant(gdc::NonFlatTileSelector *this, const gdc::Camera *a2, double a3)
{
  v3 = a2;
  v6 = *(this + 46);
  v5 = *(this + 47);
  v7 = v5 * v6;
  if (v5 >= v6)
  {
    v11 = *(this + 57);
  }

  else
  {
    if (v7 <= 0.0)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = v5 / v6;
    }

    v9 = tan(*(this + 57) * 0.5);
    v10 = atan(v9 * v8);
    v11 = v10 + v10;
  }

  v12 = tan(v11 * 0.5);
  return v12 * v12 * ((v3 * v3) * (4.0 * v6)) / (a3 * a3 * v5 * v7);
}

void **std::insert_iterator<std::set<objc_object  {objcproto14VKRouteOverlay}*>>::operator=[abi:nn200100](void **a1, unint64_t *a2)
{
  v3 = std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__emplace_hint_unique_key_args<objc_object  {objcproto14VKRouteOverlay}*,objc_object  {objcproto14VKRouteOverlay} const&>(*a1, a1[1], *a2);
  a1[1] = v3;
  v4 = v3[1];
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
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

uint64_t md::DaVinciGroundMetaData::flagsForPoint(uint64_t a1, double *a2)
{
  (*(**a1 + 16))(v21);
  if (v22)
  {
    gdc::Tiled::mapDataKeyFromTile(v18, 0, v21, 51, *(*(a1 + 16) + 16));
    gdc::LayerDataStore::get(&v16, *(a1 + 8), v18);
    v5 = v16;
    v4 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    if (v19 != v20)
    {
      free(v19);
    }

    if (v5)
    {
      v6 = 1;
      v7 = 1 << *(v5 + 169);
      v8 = 1.0 / v7;
      v9 = (*a2 - v8 * *(v5 + 176)) * v7;
      v10 = -(a2[1] - v8 * (v7 + ~*(v5 + 172))) * v7;
      v11.f32[0] = v10 + 1.0;
      v11.f32[1] = v9;
      v12 = vmin_s32(vmax_s32(vcvt_s32_f32(vrndm_f32(vmul_n_f32(v11, *(v5 + 808)))), 0), vdup_n_s32(*(v5 + 808) - 1));
      v13 = *(v5 + 808) * v12.u16[0] + v12.u16[2];
      v14 = (((1 << v13) & *(*(v5 + 736) + ((v13 >> 3) & 0x3FFFFFF8))) != 0) | (2 * (((1 << v13) & *(*(v5 + 760) + ((v13 >> 3) & 0x3FFFFFF8))) != 0));
    }

    else
    {
      v14 = 0;
      v6 = 0;
    }

    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

  return v14 | (v6 << 8);
}

uint64_t *std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__assign_multi<std::__tree_const_iterator<objc_object  {objcproto14VKRouteOverlay}*,std::__tree_node<objc_object  {objcproto14VKRouteOverlay}*,void *> *,long>>(uint64_t *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::_DetachedTreeCache::_DetachedTreeCache[abi:nn200100](&v17, result);
    v6 = v19;
    if (v19)
    {
      v7 = a2 == a3;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = (v5 + 1);
      v9 = a2;
      do
      {
        v10 = v9[4];
        v6[4] = v10;
        v11 = *v8;
        v12 = (v5 + 1);
        v13 = (v5 + 1);
        if (*v8)
        {
          do
          {
            while (1)
            {
              v12 = v11;
              if (v10 >= v11[4])
              {
                break;
              }

              v11 = *v11;
              v13 = v12;
              if (!*v12)
              {
                goto LABEL_13;
              }
            }

            v11 = v11[1];
          }

          while (v11);
          v13 = v12 + 1;
        }

LABEL_13:
        *v6 = 0;
        v6[1] = 0;
        v6[2] = v12;
        *v13 = v6;
        v14 = **v5;
        if (v14)
        {
          *v5 = v14;
          v6 = *v13;
        }

        std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v5[1], v6);
        ++v5[2];
        v19 = v18;
        if (v18)
        {
          v18 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v18);
        }

        v15 = v9[1];
        if (v15)
        {
          do
          {
            a2 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            a2 = v9[2];
            v7 = *a2 == v9;
            v9 = a2;
          }

          while (!v7);
        }

        v6 = v19;
        if (v19)
        {
          v16 = a2 == a3;
        }

        else
        {
          v16 = 1;
        }

        v9 = a2;
      }

      while (!v16);
    }

    result = std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::_DetachedTreeCache::~_DetachedTreeCache[abi:nn200100](&v17);
  }

  if (a2 != a3)
  {
    std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__emplace_multi<objc_object  {objcproto14VKRouteOverlay} const&>();
  }

  return result;
}

void *std::vector<gdc::Entity>::__assign_with_size[abi:nn200100]<gdc::Entity*,gdc::Entity*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<gdc::Entity>::__vallocate[abi:nn200100](v6, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void md::MapEngineConfiguration::createMode(int a1@<W1>, void *a2@<X8>)
{
  switch(a1)
  {
    case 0:
      operator new();
    case 1:
      operator new();
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
    case 5:
      operator new();
    case 6:
      operator new();
    case 7:
      operator new();
    case 8:
      operator new();
    case 9:
      operator new();
    case 10:
      operator new();
    case 11:
      operator new();
    case 12:
      operator new();
    case 17:
      operator new();
    default:
      *a2 = 0;
      return;
  }
}

uint64_t md::Logic<md::RouteOverlayLogic,md::RouteOverlayContext,md::LogicDependencies<gdc::TypeList<>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x13043386C0978CC2)
  {
    if (*(a3 + 32))
    {
      *&v5[2] = v3;
      v6 = v4;
      return (*(*result + 128))(result, a2, v5);
    }
  }

  return result;
}

md::InitialMapEngineMode *md::InitialMapEngineMode::InitialMapEngineMode(md::InitialMapEngineMode *this, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = md::CartographicMapEngineMode::CartographicMapEngineMode(this, 0);
  *v4 = &unk_1F2A27D80;
  *(v4 + 616) = 0;
  *(v4 + 49) = 0;
  *(v4 + 52) = 21;
  LOWORD(v14) = 2560;
  v17 = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert((v4 + 464), &v14);
  LOWORD(v14) = 5386;
  v17 = 0x3FD657184AE74487;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(this + 58, &v14);
  LOWORD(v14) = 2560;
  v17 = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(this + 64, &v14);
  LOWORD(v14) = 5386;
  v17 = 0x3FE0C152382D7365;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(this + 64, &v14);
  LOWORD(v14) = 768;
  v17 = 0;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(this + 61, &v14);
  LOWORD(v14) = 3843;
  v17 = 0x3FE38C35418A5BF6;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(this + 61, &v14);
  LOWORD(v14) = 4111;
  v17 = 0x3FF0C152382D7365;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(this + 61, &v14);
  LOWORD(v14) = 4624;
  v17 = 0x3FF38C35418A5BF6;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(this + 61, &v14);
  LOWORD(v14) = 5650;
  v17 = 0x3FF4F1A6C638D03FLL;
  geo::range_map<unsigned char,geo::Unit<geo::RadianUnitDescription,double>,std::less<unsigned char>,std::allocator<std::pair<gm::Range<unsigned char> const,geo::Unit<geo::RadianUnitDescription,double>>>>::insert(this + 61, &v14);
  if (a2)
  {
    v5 = +[VKDebugSettings sharedSettings];
    if ([v5 daVinciCameraController])
    {
      v6 = +[VKDebugSettings sharedSettings];
      v7 = [v6 daVinciCameraControllerForceMercatorZoom];

      if (v7)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      v9 = 4;
    }

    else
    {

      v9 = 4;
      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  *(this + 224) = v8;
  *(this + 225) = v9;
  v14 = 540213760;
  v15 = 7199;
  md::MapEngineMode::addRequiredRenderLayers(this, &v14, 6);
  if (a2)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    LOBYTE(v14) = 3;
  }

  md::MapEngineMode::addRequiredRenderLayers(this, &v14, 1);
  LOWORD(v14) = 10284;
  BYTE2(v14) = 18;
  md::MapEngineMode::addOptionalRenderLayers(this, &v14, 3);
  gdc::LogicExecutionGraphBuilder::addLogic<md::mun::MuninLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::VenueLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::AnchorLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::AssetInjectionLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::AssetLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::CameraLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::DrapingLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::ElevationLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::GeometryLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::GridLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::IdentifiedResourceLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LabelsLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LayerDataLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LoadingStatusLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LightingLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::LocalNorthLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::MapZoomLevelStyleLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::MaterialLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::MeshRenderableLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::NavigationLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::RouteLineLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::NonTiledAssetLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::OverlaysLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileSelectionLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PendingSceneLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PuckLocationAnimationTracingLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PuckLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::RegistryLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::PendingRegistryLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::ResolvedSceneLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::RouteOverlayLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SceneQueryLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SettingsLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SharedResourcesLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::SkyLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::StandardLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::StyleLogic>(this + 29);
  gdc::LogicExecutionGraphBuilder::addLogic<md::DebugDrawLogic>(this + 29);
  if (a2)
  {
    v10 = 1;
  }

  else
  {
    v10 = 3;
  }

  if (a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 4;
  }

  if (a2)
  {
    md::MapEngineMode::addTileSelectionTileSetType(this);
  }

  LOWORD(v14) = 10526;
  BYTE2(v14) = 42;
  md::MapEngineMode::addAllowedRenderLayers(this, &v14, 3);
  LOWORD(v14) = 51;
  HIWORD(v14) = v11;
  md::MapEngineMode::addRequiredMapDataTypes(this, &v14, 1);
  LOWORD(v14) = 27;
  HIWORD(v14) = a2;
  v15 = 55;
  v16 = a2;
  LOWORD(v17) = 56;
  WORD1(v17) = a2;
  WORD2(v17) = 62;
  HIWORD(v17) = a2;
  md::MapEngineMode::addOptionalMapDataTypes(this, &v14, 4);
  LOWORD(v14) = 63;
  v15 = 35;
  HIWORD(v14) = a2;
  if (a2)
  {
    v12 = 7;
  }

  else
  {
    v12 = 2;
  }

  v16 = v10;
  LOWORD(v17) = 20;
  WORD1(v17) = a2;
  WORD2(v17) = 24;
  HIWORD(v17) = a2;
  v18 = 69;
  v19 = a2;
  v20 = 11;
  v21 = v12;
  v22 = 12;
  v23 = v12;
  v24 = 71;
  v25 = v12;
  v26 = 72;
  v27 = v12;
  v28 = 74;
  v29 = a2;
  md::MapEngineMode::addAllowedMapDataTypes(this, &v14, 10);
  return this;
}

void sub_1B29EF19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(va);

  MEMORY[0x1B8C62190](v14, v15);
  _Unwind_Resume(a1);
}

void geo::small_vector_base<unsigned char>::grow(uint64_t a1, size_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
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

  v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
  v11 = v10;
  v12 = *a1;
  v13 = *(a1 + 8);
  if (*a1 != v13)
  {
    v14 = v10;
    do
    {
      v15 = *v12++;
      *v14++ = v15;
    }

    while (v12 != v13);
  }

  if (v3 != v6)
  {
    free(*a1);
  }

  *a1 = v11;
  *(a1 + 8) = &v11[v4 - v3];
  *(a1 + 24) = v9;
}

double md::Logic<md::NavigationLogic,md::NavigationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<md::RouteOverlayContext>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 8) = -1082130432;
  *(a1 + 16) = -1082130432;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 92) = 1072483533;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  return result;
}

void md::DaVinciBaseMapEngineMode::willBecomeInactive(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 41928);
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v3 + 16), 0x91E65CD7F1A7A7FALL);
  if (v4)
  {
    v5 = v4[5];
    if (v5)
    {
      *(v5 + 200) = 0;
    }
  }

  if (*(v3 + 146))
  {
    *(v3 + 146) = 0;
  }

  md::MapEngine::setNeedsLayoutContinuously(a2, 0, 0);
}

void *md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<md::RouteOverlayContext>>::resolveDependencies(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xE42D19AFCA302E68);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0xE42D19AFCA302E68))
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

  v10 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL)[5] + 32);
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x13043386C0978CC2uLL);
  if (result && (v12 = result[5], *(v12 + 8) == 0x13043386C0978CC2))
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  *a1 = v6;
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = v13;
  return result;
}

uint64_t md::Logic<md::NavigationLogic,md::NavigationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<md::RouteOverlayContext>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x1B8B241A8D896A1DLL)
  {
    v8[8] = v3;
    v8[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<md::RouteOverlayContext>>::resolveDependencies(v8, *(a2 + 8));
      return (*(*v7 + 144))(v7, a2, v8, v5);
    }
  }

  return result;
}

void gdc::Registry::~Registry(gdc::Registry *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::clear(this + 168);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::clear(this + 216);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::clear(this + 264);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>>>::clear(this + 312);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>>>::clear(this + 360);
  v2 = *(this + 53);
  if (v2)
  {
    do
    {
      std::function<void ()(gdc::Registry *)>::operator()(v2[6], this);
      v2 = *v2;
    }

    while (v2);
    v3 = *(this + 53);
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 54))
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>>>::__deallocate_node(v3);
    *(this + 53) = 0;
    v4 = *(this + 52);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*(this + 51) + 8 * i) = 0;
      }

      v3 = *(this + 53);
    }

    else
    {
      v3 = 0;
    }

    *(this + 54) = 0;
  }

  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>>>::__deallocate_node(v3);
  v6 = *(this + 51);
  *(this + 51) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>>>::~__hash_table(this + 360);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>>>::~__hash_table(this + 312);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::~__hash_table(this + 264);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::~__hash_table(this + 216);
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::~__hash_table(this + 168);
  v7 = *(this + 17);
  if (v7)
  {
    do
    {
      v8 = *v7;
      v9 = v7[3];
      v7[3] = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v10 = *(this + 15);
  *(this + 15) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(this + 12);
  if (v11)
  {
    v12 = *(this + 13);
    v13 = *(this + 12);
    if (v12 != v11)
    {
      do
      {
        v15 = *--v12;
        v14 = v15;
        *v12 = 0;
        if (v15)
        {
          std::default_delete<std::vector<gm::Matrix<float,2,1>>>::operator()[abi:nn200100](v14);
        }
      }

      while (v12 != v11);
      v13 = *(this + 12);
    }

    *(this + 13) = v11;
    operator delete(v13);
  }

  v16 = *(this + 9);
  if (v16)
  {
    *(this + 10) = v16;
    operator delete(v16);
  }

  v17 = *(this + 6);
  if (v17)
  {
    *(this + 7) = v17;
    operator delete(v17);
  }

  std::__hash_table<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::__unordered_map_hasher<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::hash<gdc::TypeInfo>,std::equal_to<gdc::TypeInfo>,true>,std::__unordered_map_equal<gdc::TypeInfo,std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>,std::equal_to<gdc::TypeInfo>,std::hash<gdc::TypeInfo>,true>,std::allocator<std::__hash_value_type<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>>>::~__hash_table(this);
}

void md::NavigationLogic::runBeforeLayout(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *a3;
  v8 = a3[1];
  v10 = a3[3];
  *a4 = *(*a3 + 85) == 3;
  objc_storeStrong((a4 + 40), *(a1 + 184));
  objc_storeStrong((a4 + 48), *(a1 + 160));
  *(a4 + 56) = *(a1 + 120);
  v11 = *(a1 + 128);
  *(a4 + 80) = *(a1 + 144);
  *(a4 + 64) = v11;
  *(a4 + 24) = 0xBFF0000000000000;
  *(a4 + 12) = *(a1 + 208);
  v12 = *(v9 + 96);
  if (*(a1 + 224) != v12)
  {
    *(a1 + 224) = v12;
    md::NavigationLogic::_updatePolygonSelection(a1);
  }

  if ((*a4 & 1) != 0 || *(v9 + 85) == 7)
  {
    if (v10 && (v17 = *(v10 + 23)) != 0)
    {
      v10 = v17;
      v4 = [v10 routeMatch];
      LODWORD(v18) = [v4 legIndex];
    }

    else
    {
      *(a4 + 4) = *(a1 + 200);
      v40 = *(a1 + 184);
      v10 = v40;
      if (!v40)
      {
        goto LABEL_17;
      }

      v4 = [v40 routeInfo];
      v41 = [v4 route];

      if (!v41)
      {
        goto LABEL_17;
      }

      v42 = [v10 routeInfo];
      v4 = [v42 route];

      LODWORD(v42) = *(a1 + 200);
      if (v42 >= [v4 pointCount] || (v18 = objc_msgSend(v4, "legIndexForStepIndex:", objc_msgSend(v4, "stepIndexForPointIndex:", *(a1 + 200))), v18 == 0x7FFFFFFFFFFFFFFFLL))
      {
LABEL_16:

LABEL_17:
        goto LABEL_6;
      }
    }

    *(a4 + 32) = v18;
    *(a4 + 36) = 1;
    goto LABEL_16;
  }

  *(a4 + 32) = 0;
  *(a4 + 36) = 0;
  *(a4 + 4) = *MEMORY[0x1E69A1918];
LABEL_6:
  if ((*v8 & 1) != 0 || (v13 = 0.0, (*(v9 + 88) - 3) <= 1))
  {
    md::LayoutContext::zoomAtCentrePoint(*(a2 + 8));
    v13 = (fminf(*(v8 + 16), 1.0) * 1.6216) / (1.0811 - fminf(fmaxf((v14 * -0.28571) + 4.8571, 0.0), 1.0));
  }

  *(a4 + 88) = v13;
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((a4 + 104));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::AssetData>>>>::swap(a4 + 104, a1 + 248);
  v15 = *(a1 + 304);
  v16 = v15;
  if (v15 && ([v15 currentSnappedSegment], v57 == 1))
  {
    v20 = *(v8 + 16);
    v19 = *(v8 + 20);
    [v16 currentSnappedSegment];
    if ((v57 & 1) == 0 || (v10 = &v53, v51 = v53, v52 = v54, [v16 currentSnappedSegment], (v57 & 1) == 0))
    {
      v43 = std::__throw_bad_optional_access[abi:nn200100]();

      _Unwind_Resume(v43);
    }

    v21 = 0;
    v22 = (v20 * v19);
    v49 = v55;
    v50 = v56;
    do
    {
      *(&v53 + v21) = *(&v49 + v21) - *(&v51 + v21);
      v21 += 8;
    }

    while (v21 != 24);
    v23 = v54;
    v24 = geo::WGS84::unitsPerMeterAtLatitude<geo::Radians,double>(*(a1 + 128));
    v25 = 0;
    v54 = v23 * v22 * v24;
    v26 = 0.0;
    do
    {
      v26 = v26 + *(&v53 + v25) * *(&v53 + v25);
      v25 += 8;
    }

    while (v25 != 24);
    v27 = 0;
    v28 = 1.0 / sqrt(v26);
    do
    {
      *(&v53 + v27) = *(&v53 + v27) * v28;
      v27 += 8;
    }

    while (v27 != 24);
    v48[0] = 0;
    v48[1] = 0;
    v48[2] = 0x3FF0000000000000;
    v30 = *(&v53 + 1);
    v29 = v54;
    v45 = *(&v53 + 1);
    v31 = *&v53;
    v46 = -*&v53;
    v47 = 0.0;
    v32 = gm::Matrix<double,3,1>::normalized<int,void>(&v45);
    v44[0] = -(v33 * v30 - v34 * v29);
    v44[1] = -(v32 * v29 - v33 * v31);
    v44[2] = -(v34 * v31 - v32 * v30);
    v35 = gm::Matrix<double,3,1>::normalized<int,void>(v44);
    v38 = 0;
    v45 = v35;
    v46 = v36;
    v47 = v37;
    v39 = 0.0;
    do
    {
      v39 = v39 + *(&v45 + v38 * 8) * *&v48[v38];
      ++v38;
    }

    while (v38 != 3);
    if (v39 <= 0.860000014)
    {
      v35 = 0.0;
      v36 = 0.0;
      v37 = 1.0;
    }

    *(a4 + 144) = v35;
    *(a4 + 152) = v36;
    *(a4 + 160) = v37;
  }

  else
  {
    *(a4 + 144) = 0;
    *(a4 + 152) = 0;
    *(a4 + 160) = 0x3FF0000000000000;
  }

  *(a4 + 168) = *(a1 + 240);
  *(a4 + 169) = *(a1 + 288);
}

void md::LayoutContext::zoomAtCentrePoint(md::LayoutContext *this)
{
  std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](this, 0xE42D19AFCA302E68);
  v2 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](this, 0x1AF456233693CD46uLL);
  if (v2)
  {
    v3 = v2[5];
    if (*(v3 + 8) == 0x1AF456233693CD46)
    {
      v4 = *(v3 + 32);
      if (v4)
      {
        v5 = *gdc::Camera::cameraFrame(*(v3 + 32));
        v6 = cos(v5 + v5) * -559.82 + 111132.92;
        v7 = v6 + cos(v5 * 4.0) * 1.175;
        v8 = v7 + cos(v5 * 6.0) * -0.0023;
        v9 = v5 * 0.5;
        v10 = tan(v5 * 0.5 + 0.78103484);
        v11 = log(v10);
        v12 = tan(v9 + 0.789761487);
        v13 = fabs((log(v12) - v11) * 0.159154943);
        v14 = grl::IconMetricsRenderResult::size(v4);
        log2(v13 * (*v14 * (v4[470] + v4[470])) / v8);
      }
    }
  }
}

void md::DaVinciMapEngineMode::~DaVinciMapEngineMode(md::DaVinciMapEngineMode *this)
{
  *this = &unk_1F2A58888;
  v2 = *(this + 82);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A58888;
  v2 = *(this + 82);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MapEngineMode::~MapEngineMode(this);
}

gdc::Registry *std::__shared_ptr_pointer<gdc::Registry *,std::shared_ptr<gdc::Registry>::__shared_ptr_default_delete<gdc::Registry,gdc::Registry>,std::allocator<gdc::Registry>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    gdc::Registry::~Registry(result);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__deallocate_node(*(a1 + 16));
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>>>::__deallocate_node(*(a1 + 16));
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

uint64_t md::Logic<md::NavigationLogic,md::NavigationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<md::RouteOverlayContext>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x1B8B241A8D896A1DLL)
  {
    v8[8] = v3;
    v8[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<md::RouteOverlayContext>>::resolveDependencies(v8, *(a2 + 8));
      return (*(*v7 + 128))(v7, a2, v8, v5);
    }
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *)>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__function::__value_func<void ()(gdc::Registry *)>::~__value_func[abi:nn200100]((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>,unsigned long)>::~__value_func[abi:nn200100]((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__function::__value_func<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::~__value_func[abi:nn200100]((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t md::Logic<md::RegistryLogic,md::RegistryContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFBD83FDA8879FF7ELL)
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

uint64_t md::Logic<md::RegistryLogic,md::RegistryContext,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0xFBD83FDA8879FF7ELL)
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

void md::RegistryLogic::runBeforeLayoutAtVariableRate(uint64_t *a1, os_signpost_id_t *a2, md::SceneContext **a3, void *a4)
{
  md::RegistryManager::update(a1[15], a1[15] + 696, *a3, a2[10]);
  *a4 = a1[15];
  v7 = +[VKDebugSettings sharedSettings];
  v8 = [v7 isLogicConsoleEnabled:0xDEBD99099DA2C65BLL];

  if (v8)
  {
    v11 = a1[15];
    v12 = *(v11 + 456);
    v13 = *(v11 + 464);
    while (v12 != v13)
    {
      v14 = *v12++;
      v25 = v14;
      md::LayoutContext::frameState(a2);
      v24 = *(v15 + 88);
      v26 = &v24;
      v16 = std::__tree<std::__value_type<double,std::vector<unsigned long long>>,std::__map_value_compare<double,std::__value_type<double,std::vector<unsigned long long>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::vector<unsigned long long>>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double &&>,std::tuple<>>((a1 + 17), v24);
      std::vector<unsigned long long>::emplace_back<unsigned short &>((v16 + 5), &v25);
    }

    v19 = a1[17];
    v17 = (a1 + 17);
    v18 = v19;
    if (v19 != v17 + 1)
    {
      do
      {
        md::LayoutContext::frameState(a2);
        if (*(v20 + 88) - *(v18 + 4) <= 30.0)
        {
          v22 = v18[1];
          if (v22)
          {
            do
            {
              v21 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v21 = v18[2];
              v23 = *v21 == v18;
              v18 = v21;
            }

            while (!v23);
          }
        }

        else
        {
          v21 = std::__tree<std::__value_type<double,std::vector<unsigned long long>>,std::__map_value_compare<double,std::__value_type<double,std::vector<unsigned long long>>,std::less<double>,true>,std::allocator<std::__value_type<double,std::vector<unsigned long long>>>>::erase(v17, v18);
        }

        v18 = v21;
      }

      while (v21 != (v17 + 1));
    }
  }

  else
  {
    v10 = a1[18];
    v9 = a1 + 18;
    std::__tree<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,std::__map_value_compare<md::FrameGraphPass *,std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>,md::FrameGraphPassLessThan,true>,std::allocator<std::__value_type<md::FrameGraphPass *,geo::linear_set<md::FrameGraphPass *,md::FrameGraphPassLessThan,std::allocator<md::FrameGraphPass *>,std::vector<md::FrameGraphPass *>>>>>::destroy(v10);
    *v9 = 0;
    v9[1] = 0;
    *(v9 - 1) = v9;
  }
}

void sub_1B29F0734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, void *a50)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v52 + 80);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v53);
  v55 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::~__hash_table(v52);
  MEMORY[0x1B8C62190](v55, 0x10F0C40EC263EC2);
  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(a50);
  v56 = __p;
  __p = 0;
  if (v56)
  {
    operator delete(v56);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a20);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a15);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::__deallocate_node(a12);
  if (a10)
  {
    operator delete(a10);
  }

  MEMORY[0x1B8C62190](v50, v51);
  _Unwind_Resume(a1);
}

double md::Logic<md::VenueLogic,md::VenueLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::SceneContext>,gdc::TypeList<>>>::allocateContext@<D0>(uint64_t a1@<X8>)
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
  *(a1 + 112) = 1065353216;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 292) = 1065353216;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 1065353216;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void md::CollectMapDataLogic<(md::MapDataType)34>::didBecomeInactive(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 != -65536)
  {
    ecs2::BasicRegistry<void>::destroy(*(a1 + 128), v1);
    *(a1 + 120) = -65536;
  }
}

void std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[3];
      if (v3)
      {
        v1[4] = v3;
        operator delete(v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)34>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)34>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)34>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)34>>(void)::metadata >= 0x200)
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[4];
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v3);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t md::Logic<md::VenueLogic,md::VenueLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x4927EB92E562CC46)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6 = *(a2 + 8);
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x1AF456233693CD46uLL);
      if (v7 && (v8 = v7[5], *(v8 + 8) == 0x1AF456233693CD46))
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = 0;
      }

      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x8BD499FBD96FBB9ELL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x8BD499FBD96FBB9ELL))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v6, 0x99BED48DEFBBD82BLL)[5] + 32);
      v14[0] = v9;
      v14[1] = v12;
      v14[2] = v13;
      return (*(*v5 + 144))(v5, a2, v14, v3);
    }
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)34>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)34>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)34>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)34>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)34>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)34>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)34>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)34>>();
    *algn_1EB82DD38 = 0x37B530CC735CB3B7;
    qword_1EB82DD40 = "SceneComponents::LayerDataActive<md::MapDataType::DaVinciGroundGlobe>]";
    qword_1EB82DD48 = 69;
  }
}

uint64_t md::VenueLogic::runBeforeLayout(uint64_t a1, md::LayoutContext **a2, uint64_t a3, uint64_t a4)
{
  v106 = *a3;
  v107 = *(a3 + 8);
  v5 = md::SceneContext::layerDataInView(*(a3 + 16), 6);
  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((a1 + 184));
  v6 = v5[2];
  if (v6 > (*(a1 + 200) - *(a1 + 184)) >> 4)
  {
    if (!(v6 >> 60))
    {
      *(&v119 + 1) = a1 + 184;
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<md::Venue const>>>(v6);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v9 = *v5;
  v7 = v5 + 1;
  v8 = v9;
  if (v9 != v7)
  {
    do
    {
      v10 = v8[4];
      if (v10)
      {
        v14 = *(v10 + 808);
        v15 = *(v10 + 816);
        while (v14 != v15)
        {
          v16 = *(v14 + 8);
          __p = *v14;
          *&v118 = v16;
          if (v16)
          {
            atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
          }

          std::vector<std::shared_ptr<md::Venue const>>::emplace_back<std::shared_ptr<md::Venue const>>((a1 + 184), &__p);
          if (v118)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v118);
          }

          v14 += 16;
        }
      }

      v11 = v8[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v8[2];
          _ZF = *v12 == v8;
          v8 = v12;
        }

        while (!_ZF);
      }

      v8 = v12;
    }

    while (v12 != v7);
  }

  v17 = *(a1 + 184);
  for (i = *(a1 + 192); v17 != i; v17 += 2)
  {
    v19 = *v17;
    v20 = **v17;
    __p = v20;
    *&v118 = v19;
    v21 = v17[1];
    *(&v118 + 1) = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,std::shared_ptr<md::Venue const>>>((a1 + 208), v20);
    if (*(&v118 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v118 + 1));
    }

    v22 = (*v17)[2];
    v23 = (*v17)[3];
    while (v22 != v23)
    {
      __p = *(v22 + 4);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>((a1 + 288), __p);
      v25 = *v22;
      v24 = *(v22 + 1);
      while (v25 != v24)
      {
        v26 = *(v25 + 144);
        v27 = *(v25 + 152);
        while (v26 != v27)
        {
          if (*(v26 + 24) != *(v26 + 16))
          {
            v28 = *(v26 + 8);
            if (v28)
            {
              *&v109 = *(v26 + 8);
              __p = &v109;
              v29 = std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<unsigned long long>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((a1 + 600), v28);
              std::vector<unsigned long long>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>(v29 + 3, v29[4], *(v26 + 16), *(v26 + 24), (*(v26 + 24) - *(v26 + 16)) >> 3);
            }
          }

          v26 += 40;
        }

        v25 += 184;
      }

      v22 += 120;
    }
  }

  v30 = gdc::Camera::cameraFrame(v106);
  v104 = *(v30 + 8);
  v31 = tan(*v30 * 0.5 + 0.785398163);
  v32 = log(v31);
  *&v33.f64[0] = v104;
  v33.f64[1] = v32;
  __asm { FMOV            V1.2D, #0.5 }

  v127 = vmlaq_f64(_Q1, vdupq_n_s64(0x3FC45F306DC9C883uLL), v33);
  md::LayoutContext::zoomAtCentrePoint(a2[1]);
  if (v38 > 17.5 && (*(a1 + 688) & 1) == 0)
  {
    *(a1 + 688) = 1;
    goto LABEL_43;
  }

  if (v38 < 17.3 && *(a1 + 688) == 1)
  {
    *(a1 + 688) = 0;
LABEL_43:
    md::VenueLogic::_runExtrusionAnimation(a1);
  }

  v39 = *(a1 + 568);
  v40 = *(a1 + 576);
  if (*v107 == 1)
  {
    v100 = md::LayoutContext::get<md::SettingsContext>(a2[1]);
    v101 = *v100;
    v102 = v100[1];
    while (v101 != v102)
    {
      if (*v101 == 21)
      {
        if (v101 != v102 && *(v101 + 8))
        {
          v103 = md::LayoutContext::cameraType(a2);
          v41 = gdc::ToCoordinateSystem(v103);
          goto LABEL_46;
        }

        break;
      }

      v101 += 16;
    }
  }

  v41 = 0;
LABEL_46:
  *(a1 + 496) = v41;
  v42 = +[VKDebugSettings sharedSettings];
  *(a1 + 560) = [v42 daVinciShowStackingVenues];

  v43 = *(a1 + 912);
  if (v43 && !(*(*v43 + 48))(v43))
  {
    v47 = *(a1 + 568);
    *(a1 + 480) = v47;
  }

  else
  {
    md::LayoutContext::zoomAtCentrePoint(a2[1]);
    v46 = md::VenueLogic::venueInProximityToWorldPoint(a1, &v127, v45);
    v47 = v46;
    *(a1 + 568) = v46;
    if (v46)
    {
      v46 = md::Venue::buildingInProximityToWorldPoint(*(v46 + 16), *(v46 + 24), &v127, v44);
    }

    *(a1 + 576) = v46;
    *(a1 + 480) = v47;
    v48 = *(a1 + 720);
    if (v48 && (v39 != v47 || v40 != v46))
    {
      __p = v47;
      *&v109 = v46;
      std::__function::__value_func<void ()(md::Venue const*,md::VenueBuilding const*)>::operator()[abi:nn200100](v48);
      v47 = *(a1 + 568);
    }
  }

  v49 = *(a1 + 752);
  if (v49 && v39 != v47)
  {
    __p = v47;
    v44 = std::__function::__value_func<void ()(md::Venue const*)>::operator()[abi:nn200100](v49);
    v47 = *(a1 + 568);
  }

  if (v47)
  {
    v50 = sqrt(geo::ConvexHull2<double>::distanceSquaredTo(v47[8], v47[9], &v127, v44));
  }

  else
  {
    v50 = 1.79769313e308;
  }

  *(a1 + 584) = v50;
  *(a1 + 336) = *(a1 + 328);
  v51 = *(a1 + 592);
  if (std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 600), v51))
  {
    v52 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 600), v51);
    if (!v52)
    {
      abort();
    }

    std::vector<gdc::Entity>::vector[abi:nn200100](&__p, v52 + 3);
    std::vector<unsigned long long>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned long long const*>,std::__wrap_iter<unsigned long long const*>>((a1 + 328), *(a1 + 336), __p, v118, (v118 - __p) >> 3);
    if (__p)
    {
      *&v118 = __p;
      operator delete(__p);
    }
  }

  v53 = md::LayoutContext::cameraType(a2);
  if (gdc::ToCoordinateSystem(v53))
  {
    v119 = 0u;
    v118 = 0u;
    v121 = 0u;
    v122 = 0u;
    v124 = 0u;
    v125 = 0u;
    __p = 0x3FF0000000000000;
    v120 = 0x3FF0000000000000;
    v123 = 0x3FF0000000000000;
    v126 = 0x3FF0000000000000;
    v54 = v106;
  }

  else
  {
    v54 = v106;
    md::calculateSkewMatrix(&__p, (v106 + 3112), *(v30 + 32));
  }

  v55 = 0;
  v56 = (v54 + 808);
  do
  {
    v57 = 0;
    p_p = &__p;
    do
    {
      v59 = 0;
      v60 = 0.0;
      v61 = v56;
      do
      {
        v62 = *v61;
        v61 += 4;
        v60 = v60 + *&p_p[v59++] * v62;
      }

      while (v59 != 4);
      *(&v109 + 4 * v57++ + v55) = v60;
      p_p += 4;
    }

    while (v57 != 4);
    ++v55;
    ++v56;
  }

  while (v55 != 4);
  v63 = v114;
  *(a1 + 416) = v113;
  *(a1 + 432) = v63;
  v64 = v116;
  *(a1 + 448) = v115;
  *(a1 + 464) = v64;
  v65 = v110;
  *(a1 + 352) = v109;
  *(a1 + 368) = v65;
  v66 = v112;
  *(a1 + 384) = v111;
  *(a1 + 400) = v66;
  *(a1 + 500) = *(v107 + 20) * *(v107 + 16);
  v67 = *(a1 + 480);
  if (v67)
  {
    v68 = *v67;
    if (*v67 != *(a1 + 552))
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>>>::clear(a1 + 512);
      v67 = *(a1 + 480);
      v68 = *v67;
    }

    *(a1 + 552) = v68;
    v69 = v67[2];
    for (j = v67[3]; v69 != j; v69 += 15)
    {
      md::FloorInfo::FloorInfo(v129, a1 + 208, v69);
      v128 = v69[3];
      *&v109 = &v128;
      v71 = std::__hash_table<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((a1 + 512), v128);
      v72 = v71;
      v74 = (v71 + 3);
      v73 = v71[3];
      if (v73 == v71[4] || *(v71 + 24) != v129[0])
      {
        *(v71 + 24) = v129[0];
        v71[4] = v73;
        std::vector<md::VenueLevelScale>::reserve(v71 + 3, 0xD37A6F4DE9BD37A7 * ((v69[1] - *v69) >> 3));
        v76 = v129[0];
        v78 = *v69;
        v77 = v69[1];
        while (v78 != v77)
        {
          v79 = *(v78 + 8);
          if (v79 <= v129[0])
          {
            v80 = v79 * 3.0;
            if (v79 <= 0)
            {
              v80 = 0.0;
            }

            if (*(v78 + 168) == 1)
            {
              *&v109 = v80;
              *(&v109 + 1) = 0x3FF0000000000000;
              v110 = *&v80;
              LOWORD(v111) = v79;
              *(&v111 + 1) = *(v78 + 176);
              LOBYTE(v112) = 1;
            }

            else
            {
              *&v109 = v80;
              *(&v109 + 1) = 0x3FF0000000000000;
              v110 = *&v80;
              LOWORD(v111) = v79;
              BYTE8(v111) = 0;
              LOBYTE(v112) = 0;
            }

            std::vector<md::VenueLevelScale>::push_back[abi:nn200100](v74, &v109);
          }

          v78 += 184;
        }

        std::sort[abi:nn200100]<std::__wrap_iter<md::VenueLevelScale *>,md::VenueLogic::updateVenueLevelScales(void)::$_0>(v72[3], v72[4], v75);
        v81 = v72[3];
        v82 = v72[4];
        if (v82 != v81)
        {
          v83 = 0;
          v84 = 0x6DB6DB6DB6DB6DB7 * ((v82 - v81) >> 3);
          if (v84 <= 1)
          {
            v84 = 1;
          }

          v85 = 60.0;
          v86 = v72[3];
          do
          {
            v87 = 1.0;
            if (v76 >= 11)
            {
              v87 = 0.0;
              if (v85 > 0.0)
              {
                v87 = 1.0;
                if (v85 * 0.0333333333 <= 1.0)
                {
                  v87 = v85 * 0.0333333333;
                }
              }
            }

            v86[1] = v87;
            if (v83)
            {
              v88 = (*(v86 - 7) - *v86) * v87;
              v86[3] = v88;
              v85 = v85 - v88;
            }

            ++v83;
            v86 += 7;
          }

          while (v84 != v83);
        }

        if (v81 != v82)
        {
          v89 = v82 - 56;
          if (v82 - 56 > v81)
          {
            v90 = v81 + 56;
            do
            {
              v91 = *(v90 - 8);
              v92 = *(v90 - 24);
              v93 = *(v90 - 40);
              v94 = *(v90 - 56);
              v96 = *(v89 + 16);
              v95 = *(v89 + 32);
              v97 = *(v89 + 48);
              *(v90 - 56) = *v89;
              *(v90 - 8) = v97;
              *(v90 - 24) = v95;
              *(v90 - 40) = v96;
              *v89 = v94;
              *(v89 + 16) = v93;
              *(v89 + 32) = v92;
              *(v89 + 48) = v91;
              v89 -= 56;
              _CF = v90 >= v89;
              v90 += 56;
            }

            while (!_CF);
            v81 = v72[3];
            v82 = v72[4];
          }
        }

        if (v81 != v82)
        {
          v98 = 0.0;
          do
          {
            if (*(v81 + 32) >= 1)
            {
              *(v81 + 16) = v98;
            }

            v98 = *(v81 + 24) + v98;
            v81 += 56;
          }

          while (v81 != v82);
        }
      }
    }
  }

  return md::VenueLogicContext::operator=(a4, a1 + 208);
}

void sub_1B29F17C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13LayerDataInfoILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)34>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)34>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)34>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)34>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)34>>(void)::metadata) = *(v3 + 4096);
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)34>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)34>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)34>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)34>>(void)::metadata >= 0x200)
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

uint64_t md::VenueLogic::venueInProximityToWorldPoint(uint64_t a1, float64x2_t *a2, __n128 a3)
{
  if (a3.n128_f32[0] > 0.0 && (16.0 - *(a1 + 692)) > a3.n128_f32[0])
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  md::VenueLogicContext::venuesInProximityToWorldPoint(&v8, a1 + 208, a2, a3);
  if (v9 == v8)
  {
    v7 = 0;
    v5 = 0;
    if (!v9)
    {
      return v5;
    }
  }

  else
  {
    v7 = *v8;
  }

  operator delete(v8);
  return v7;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)34>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInfo<(md::MapDataType)34>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)34>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInfo<(md::MapDataType)34>>(void)::localId;
    *algn_1EB82DE28 = 0xC9B0FCE1C0B0A859;
    qword_1EB82DE30 = "SceneComponents::LayerDataInfo<md::MapDataType::DaVinciGroundGlobe>]";
    qword_1EB82DE38 = 67;
  }
}

uint64_t md::VenueLogicContext::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 32) = *(a2 + 32);
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,void *> *>>(a1, *(a2 + 16));
    *(a1 + 72) = *(a2 + 72);
    std::__hash_table<std::__hash_value_type<unsigned long long,short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,short>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,short>,void *> *>>((a1 + 40), *(a2 + 56));
    *(a1 + 112) = *(a2 + 112);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(a1 + 80, *(a2 + 96));
    std::vector<gdc::Entity>::__assign_with_size[abi:nn200100]<gdc::Entity*,gdc::Entity*>((a1 + 120), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 3);
  }

  for (i = 144; i != 272; i += 8)
  {
    *(a1 + i) = *(a2 + i);
  }

  v5 = *(a2 + 272);
  *(a1 + 281) = *(a2 + 281);
  *(a1 + 272) = v5;
  if (a1 != a2)
  {
    *(a1 + 336) = *(a2 + 336);
    std::__hash_table<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,void *> *>>((a1 + 304), *(a2 + 320));
  }

  v6 = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 344) = v6;
  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)34>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)34>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)34>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)34>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)34>>(void)::metadata) = *(v3 + 4096);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,void *> *>>(void *a1, void *a2)
{
  v2 = a2;
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
        v9 = v2[3];
        v6[2] = v2[2];
        v10 = v2[4];
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = v6[4];
        v6[3] = v9;
        v6[4] = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        v8 = *v6;
        v12 = v6[2];
        v6[1] = v12;
        inserted = std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__node_insert_multi_prepare(a1, v12, v6 + 2);
        std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_perform(a1, v6, inserted);
        v2 = *v2;
        if (!v8)
        {
          break;
        }

        v6 = v8;
      }

      while (v2);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<md::Venue const>>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)34>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)34>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)34>>();
    unk_1EB82DCA0 = 0x5D358FB21220FE77;
    qword_1EB82DCA8 = "SceneComponents::LayerDataInView<md::MapDataType::DaVinciGroundGlobe>]";
    qword_1EB82DCB0 = 69;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,short>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,short>,void *> *>>(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_7;
  }

  for (i = 0; i != v4; ++i)
  {
    *(*a1 + 8 * i) = 0;
  }

  v6 = a1[2];
  a1[2] = 0;
  a1[3] = 0;
  if (v6)
  {
    while (a2)
    {
      v7 = a2[2];
      v6[2] = v7;
      *(v6 + 12) = *(a2 + 12);
      v8 = *v6;
      v6[1] = v7;
      inserted = std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__node_insert_multi_prepare(a1, v7, v6 + 2);
      std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_perform(a1, v6, inserted);
      a2 = *a2;
      v6 = v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v10 = *v6;
      operator delete(v6);
      v6 = v10;
    }

    while (v10);
  }

  else
  {
LABEL_7:
    if (a2)
    {
      operator new();
    }
  }
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_52;
  }

  for (i = 0; i != v4; ++i)
  {
    *(*a1 + 8 * i) = 0;
  }

  v6 = (a1 + 16);
  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (!v7)
  {
LABEL_52:
    if (a2)
    {
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_multi<unsigned long long const&>();
    }

    return;
  }

  while (1)
  {
    v8 = v7;
    if (!a2)
    {
      break;
    }

    v9 = a2[2];
    v7 = *v7;
    v8[1] = v9;
    v8[2] = v9;
    v10 = (*(a1 + 24) + 1);
    v11 = *(a1 + 32);
    if (!v4 || (v11 * v4) < v10)
    {
      v12 = 2 * v4;
      v13 = v4 < 3 || (v4 & (v4 - 1)) != 0;
      v14 = v13 | v12;
      v15 = vcvtps_u32_f32(v10 / v11);
      if (v14 <= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<false>(a1, v16);
      v4 = *(a1 + 8);
    }

    v17 = vcnt_s8(v4);
    v17.i16[0] = vaddlv_u8(v17);
    if (v17.u32[0] > 1uLL)
    {
      v18 = v9;
      if (v4 <= v9)
      {
        v18 = v9 % v4;
      }
    }

    else
    {
      v18 = (v4 - 1) & v9;
    }

    v19 = *a1;
    v20 = *(*a1 + 8 * v18);
    if (v20)
    {
      v21 = 0;
      do
      {
        v22 = v20;
        v20 = *v20;
        if (!v20)
        {
          break;
        }

        v23 = v20[1];
        if (v17.u32[0] > 1uLL)
        {
          v24 = v20[1];
          if (v23 >= v4)
          {
            v24 = v23 % v4;
          }
        }

        else
        {
          v24 = v23 & (v4 - 1);
        }

        if (v24 != v18)
        {
          break;
        }

        v25 = v23 == v9 && v20[2] == v8[2];
        v26 = v25 != (v21 & 1);
        v27 = v21 & v26;
        v21 |= v26;
      }

      while (v27 != 1);
    }

    else
    {
      v22 = 0;
    }

    v28 = v8[1];
    if (v17.u32[0] <= 1uLL)
    {
      v28 &= v4 - 1;
LABEL_34:
      if (v22)
      {
        goto LABEL_43;
      }

      goto LABEL_35;
    }

    if (v28 < v4)
    {
      goto LABEL_34;
    }

    v28 %= v4;
    if (v22)
    {
LABEL_43:
      *v8 = *v22;
      *v22 = v8;
      if (!*v8)
      {
        goto LABEL_39;
      }

      v29 = *(*v8 + 8);
      if (v17.u32[0] > 1uLL)
      {
        if (v29 >= v4)
        {
          v29 %= v4;
        }
      }

      else
      {
        v29 &= v4 - 1;
      }

      if (v29 == v28)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

LABEL_35:
    *v8 = *v6;
    *v6 = v8;
    *(v19 + 8 * v28) = v6;
    if (*v8)
    {
      v29 = *(*v8 + 8);
      if (v17.u32[0] > 1uLL)
      {
        if (v29 >= v4)
        {
          v29 %= v4;
        }
      }

      else
      {
        v29 &= v4 - 1;
      }

LABEL_38:
      *(*a1 + 8 * v29) = v8;
    }

LABEL_39:
    ++*(a1 + 24);
    a2 = *a2;
    if (!v7)
    {
      goto LABEL_52;
    }
  }

  do
  {
    v30 = *v8;
    operator delete(v8);
    v8 = v30;
  }

  while (v30);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,md::VenueBuildingLevelState>,void *> *>>(void *a1, uint64_t *a2)
{
  v2 = a2;
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
        v6[2] = v2[2];
        if (v6 != v2)
        {
          v9 = v2[3];
          v10 = v2[4];
          v11 = v10 - v9;
          v12 = v6[5];
          v13 = v6[3];
          if (v12 - v13 < (v10 - v9))
          {
            if (v13)
            {
              v6[4] = v13;
              operator delete(v13);
              v12 = 0;
              v6[3] = 0;
              v6[4] = 0;
              v6[5] = 0;
            }

            v14 = 0x6DB6DB6DB6DB6DB7 * (v11 >> 3);
            if (v14 <= 0x492492492492492)
            {
              v15 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3);
              if (2 * v15 > v14)
              {
                v14 = 2 * v15;
              }

              if (v15 >= 0x249249249249249)
              {
                v16 = 0x492492492492492;
              }

              else
              {
                v16 = v14;
              }

              std::vector<md::VenueLevelScale>::__vallocate[abi:nn200100]((v6 + 3), v16);
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v17 = v6[4];
          v18 = v17 - v13;
          if (v17 - v13 >= v11)
          {
            if (v10 != v9)
            {
              memmove(v13, v9, v10 - v9);
            }

            v6[4] = &v13[v11];
          }

          else
          {
            if (v17 != v13)
            {
              memmove(v6[3], v2[3], v17 - v13);
              v17 = v6[4];
            }

            v19 = &v9[v18];
            v20 = v10 - &v9[v18];
            if (v20)
            {
              memmove(v17, v19, v20);
            }

            v6[4] = &v17[v20];
          }
        }

        *(v6 + 24) = *(v2 + 24);
        v8 = *v6;
        v21 = v6[2];
        v6[1] = v21;
        inserted = std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__node_insert_multi_prepare(a1, v21, v6 + 2);
        std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_perform(a1, v6, inserted);
        v2 = *v2;
        if (v8)
        {
          v23 = v2 == 0;
        }

        else
        {
          v23 = 1;
        }

        v6 = v8;
      }

      while (!v23);
    }

    std::__hash_table<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::__unordered_map_hasher<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::hash<gdc::Registry *>,std::equal_to<gdc::Registry *>,true>,std::__unordered_map_equal<gdc::Registry *,std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>,std::equal_to<gdc::Registry *>,std::hash<gdc::Registry *>,true>,std::allocator<std::__hash_value_type<gdc::Registry *,std::vector<gdc::Entity>>>>::__deallocate_node(v8);
  }

  if (v2)
  {
    operator new();
  }
}

void std::__tree<gdc::LayerDataWithWorld>::__move_assign(void *a1, void *a2)
{
  v4 = a1 + 1;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a1[1]);
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  a1[2] = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

void *md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::ElevationContext,md::SceneContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x1AF456233693CD46))
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

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x99BED48DEFBBD82BLL);
  if (result && (v11 = result[5], *(v11 + 8) == 0x99BED48DEFBBD82BLL))
  {
    v12 = *(v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(void)::metadata) = *(v3 + 4096);
}

uint64_t md::Logic<md::VenueLogic,md::VenueLogicContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x4927EB92E562CC46)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::SceneContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::ElevationContext,md::SceneContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)34>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)34>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)34>>();
    unk_1EB82DCA0 = 0x5D358FB21220FE77;
    qword_1EB82DCA8 = "SceneComponents::LayerDataInView<md::MapDataType::DaVinciGroundGlobe>]";
    qword_1EB82DCB0 = 69;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)34>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)34>>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>();
    unk_1EB82DA30 = 0xCF15A221AD0F424CLL;
    qword_1EB82DA38 = "SceneComponents::LayerDataEnteringView<md::MapDataType::DaVinciGroundGlobe>]";
    qword_1EB82DA40 = 75;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>();
    unk_1EB82DA30 = 0xCF15A221AD0F424CLL;
    qword_1EB82DA38 = "SceneComponents::LayerDataEnteringView<md::MapDataType::DaVinciGroundGlobe>]";
    qword_1EB82DA40 = 75;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)34>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)34>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)34>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)34>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)34>>(void)::metadata) = *(v3 + 4096);
}

void *md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext>,gdc::TypeList<md::VenueLogicContext>>::resolveDependencies(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1AF456233693CD46uLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x1AF456233693CD46))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xFBD83FDA8879FF7ELL);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0xFBD83FDA8879FF7ELL))
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x1B8B241A8D896A1DuLL)[5] + 32);
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x4927EB92E562CC46uLL);
  if (result && (v12 = result[5], *(v12 + 8) == 0x4927EB92E562CC46))
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  *a1 = v6;
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = v13;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)34>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)34>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)34>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)34>>(void)::metadata >= 0x200)
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

uint64_t md::Logic<md::VenueModeSwitchLogic,md::VenueModeSwitchContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext>,gdc::TypeList<md::VenueLogicContext>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xB6D730E769EC7123)
  {
    v8[8] = v3;
    v8[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext>,gdc::TypeList<md::VenueLogicContext>>::resolveDependencies(v8, *(a2 + 8));
      return (*(*v7 + 144))(v7, a2, v8, v5);
    }
  }

  return result;
}

__n128 md::VenueModeSwitchLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v4 = *(a3 + 24);
  if (v4)
  {
    if (*(a1 + 160) == 1)
    {
      v5 = *(v4 + 272);
      if (v5)
      {
        if ((**(a3 + 16) & 1) == 0)
        {
          *(a1 + 168) = 1;
          *(a1 + 176) = v5 + 16;
          result = *(a1 + 168);
          *a4 = result;
        }
      }
    }
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)34>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)34>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)34>>();
    *algn_1EB82DB68 = 0xD0945B75B357CE1ALL;
    qword_1EB82DB70 = "SceneComponents::LayerDataExitingView<md::MapDataType::DaVinciGroundGlobe>]";
    qword_1EB82DB78 = 74;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>(void)::metadata) = *(v3 + 4096);
}

uint64_t md::Logic<md::VenueModeSwitchLogic,md::VenueModeSwitchContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext>,gdc::TypeList<md::VenueLogicContext>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0xB6D730E769EC7123)
  {
    v8[8] = v3;
    v8[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::RegistryContext,md::NavigationContext>,gdc::TypeList<md::VenueLogicContext>>::resolveDependencies(v8, *(a2 + 8));
      return (*(*v7 + 128))(v7, a2, v8, v5);
    }
  }

  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>();
    *algn_1EB82D998 = 0x4DEFD27D3EF066C8;
    qword_1EB82D9A0 = "SceneComponents::LayerDataPreviousInView<md::MapDataType::DaVinciGroundGlobe>]";
    qword_1EB82D9A8 = 77;
  }
}

void md::CollectMapDataLogic<(md::MapDataType)33>::didBecomeInactive(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 != -65536)
  {
    ecs2::BasicRegistry<void>::destroy(*(a1 + 128), v1);
    *(a1 + 120) = -65536;
  }
}

void md::CollectMapDataLogic<(md::MapDataType)34>::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 128);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>(v5);
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  if (v8 != v9)
  {
    v62 = *(v5 + 41016) + 4 * (v6 >> 5);
    do
    {
      *(v62 + (*(v8 + 2) << 6)) &= ~(1 << v6);
      v8 += 4;
    }

    while (v8 != v9);
  }

  v10 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>(v5);
  v11 = v10[37];
  v12 = v10[38];
  while (v11 != v12)
  {
    std::invoke[abi:nn200100]<std::function<void ()(void)> &>(*(v11 + 24));
    v11 += 32;
  }

    ;
  }

  *(v5 + 8 * v6) = *(v5 + 4096);
  v14 = *(a1 + 128);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>();
    unk_1EB82DC00 = 0x6EE431FCF9BF7D59;
    qword_1EB82DC08 = "SceneComponents::LayerDataDidExitView<md::MapDataType::DaVinciGroundGlobe>]";
    qword_1EB82DC10 = 74;
  }

  v15 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(void)::metadata;
  v16 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(v14);
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);
  if (v17 != v18)
  {
    v63 = *(v14 + 41016) + 4 * (v15 >> 5);
    do
    {
      *(v63 + (*(v17 + 2) << 6)) &= ~(1 << v15);
      v17 += 4;
    }

    while (v17 != v18);
  }

  v19 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(v14);
  v20 = v19[37];
  v21 = v19[38];
  while (v20 != v21)
  {
    std::invoke[abi:nn200100]<std::function<void ()(void)> &>(*(v20 + 24));
    v20 += 32;
  }

    ;
  }

  *(v14 + 8 * v15) = *(v14 + 4096);
  v23 = *a3;
  v24 = *(a1 + 128);
  if (*(a1 + 120) == -65536)
  {
    v25 = ecs2::BasicRegistry<void>::create(*(a1 + 128));
    *(a1 + 120) = v25;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataActive<(md::MapDataType)34>>(*(a1 + 128), v25);
    v26 = *(a1 + 128);
    v27 = *(a1 + 120);
    LOWORD(v71) = 34;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInfo<(md::MapDataType)34>>(v26, v27, &v71);
    v28 = *(a1 + 128);
    v29 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInView<(md::MapDataType)34>>(v28, v29, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
    v30 = *(a1 + 128);
    v31 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(v30, v31, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
    v32 = *(a1 + 128);
    v33 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataExitingView<(md::MapDataType)34>>(v32, v33, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
    v34 = *(a1 + 128);
    v35 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>(v34, v35, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
  }

  ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)34>>(v24);
  v36 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)34>>(v24);
  v37 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>(v24);
  v38 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(v24);
  v39 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)34>>(v24);
  v64[0] = v23;
  v64[1] = a1;
  v71 = v36;
  v72 = v37;
  v40 = 1;
  v41 = v36;
  v42 = &v71;
  v73 = v38;
  v74 = v39;
  do
  {
    if ((&v71)[v40][5] - (&v71)[v40][4] < (v41[5] - v41[4]))
    {
      v41 = (&v71)[v40];
      v42 = &(&v71)[v40];
    }

    ++v40;
  }

  while (v40 != 4);
  v44 = *(*v42 + 32);
  v43 = *(*v42 + 40);
  v65 = v44;
  v66 = v43;
  v67 = v36;
  v68 = v37;
  v69 = v38;
  v70 = v39;
  while (v44 != v43 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v65, *v44, v44[1]))
  {
    v44 += 2;
    v65 = v44;
  }

  v45 = v65;
  if (v65 != v43)
  {
    v46 = v68;
    v47 = v69;
    v48 = v70;
    v50 = v66;
    v49 = v67;
    do
    {
      v51 = *(v45 + 1);
      v52 = v51 & 0x3F;
      v53 = (v51 >> 3) & 0x1FF8;
      v54 = *(*(*(v49 + 8) + v53) + 4 * v52 + 2);
      v55 = (*(*(v49 + 56) + ((v54 >> 3) & 0x1FF8)) + 24 * (v54 & 0x3F));
      v56 = *(*(v46[1] + v53) + 4 * v52 + 2);
      v57 = (*(v46[7] + ((v56 >> 3) & 0x1FF8)) + 24 * (v56 & 0x3F));
      v58 = *(*(*(v47 + 8) + v53) + 4 * v52 + 2);
      v59 = *(*(*(v48 + 8) + v53) + 4 * v52 + 2);
      md::CollectMapDataLogic<(md::MapDataType)34>::updateVisibleMapData(md::SceneContext const&,ecs2::BasicRegistry<void> *)::{lambda(ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)34> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)34> &,SceneComponents::LayerDataExitingView<(md::MapDataType)34> &)#1}::operator()(v64, *v45, v55, v57, (*(*(v47 + 56) + ((v58 >> 3) & 0x1FF8)) + 24 * (v58 & 0x3F)), (*(*(v48 + 56) + ((v59 >> 3) & 0x1FF8)) + 24 * (v59 & 0x3F)));
      v60 = (v45 + 1);
      do
      {
        v45 = v60;
        v65 = v60;
        if (v60 == v50)
        {
          break;
        }

        v61 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v65, *v60, v60[1]);
        v60 = (v45 + 1);
      }

      while (!v61);
    }

    while (v45 != v43);
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>();
    *algn_1EB82DAC8 = 0x856479CF9EFCFDB9;
    qword_1EB82DAD0 = "SceneComponents::LayerDataDidEnterView<md::MapDataType::DaVinciGroundGlobe>]";
    qword_1EB82DAD8 = 75;
  }
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)34>,md::CollectMapDataContext<(md::MapDataType)34>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x412AFB1345D08930)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v6[0] = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](*(a2 + 8), 0x99BED48DEFBBD82BLL)[5] + 32);
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)33>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)33>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)33>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)33>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)33>>(void)::metadata) = *(v3 + 4096);
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>();
    *algn_1EB82DAC8 = 0x856479CF9EFCFDB9;
    qword_1EB82DAD0 = "SceneComponents::LayerDataDidEnterView<md::MapDataType::DaVinciGroundGlobe>]";
    qword_1EB82DAD8 = 75;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13LayerDataInfoILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)33>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)33>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)33>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)33>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)33>>(void)::metadata) = *(v3 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[151];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F3108;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3108;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)33>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)33>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)33>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)33>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)33>>(void)::metadata) = *(v3 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>(void)::metadata) = *(v3 + 4096);
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>();
    unk_1EB82DC00 = 0x6EE431FCF9BF7D59;
    qword_1EB82DC08 = "SceneComponents::LayerDataDidExitView<md::MapDataType::DaVinciGroundGlobe>]";
    qword_1EB82DC10 = 74;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(void)::metadata >= 0x200)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[160];
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)33>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)33>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)33>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)33>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)33>>(void)::metadata) = *(v3 + 4096);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F3170;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3170;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataActive<(md::MapDataType)34>>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)34>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)34>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)34>>(a1);
  v6 = v5;
  v7 = a2 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v7 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((a2 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v6 + 32, &v17);
    v13 = ((*(v6 + 40) - *(v6 + 32)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v13;
    v14 = *(v6 + 104);
    for (i = *(v6 + 112); v14 != i; v14 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v14 + 24), a2);
    }
  }

  v16 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v16 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)34>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)34>>(void)::metadata) = *(a1 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE33EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)33>>(void)::metadata) = *(v3 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)34>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)34>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[169];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F2308;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2308;
  a2[1] = v2;
  return result;
}

void md::HikingLogic::didBecomeInactive(md::HikingLogic *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    *&v6 = 0;
    (*(*v2 + 48))(v2, &v6);
  }

  v3 = *(this + 39);
  if (v3 && *(this + 280) == 1)
  {
    v6 = *(this + 264);
    v7 = 0;
    (*(*v3 + 48))(v3, &v6, &v7);
  }

  if (*(this + 224) == 1)
  {
    *(this + 224) = 0;
  }

  if (*(this + 280) == 1)
  {
    *(this + 280) = 0;
  }

  if (*(this + 184) == 1)
  {
    *(this + 184) = 0;
  }

  if (*(this + 200) == 1)
  {
    *(this + 200) = 0;
  }

  if (*(this + 337) == 1)
  {
    *(this + 337) = 0;
  }

  md::HikingLogic::deselectTrails(this);
  v4 = *(this + 46);
  if (v4)
  {
    [v4 stop];
    v5 = *(this + 46);
    if (v5)
    {
      *(this + 46) = 0;
    }
  }

  *(this + 87) = 0;
  *(this + 44) = 0;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInfo<(md::MapDataType)34>>(uint64_t a1, unint64_t a2, _WORD *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)34>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)34>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)34>>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 2 * (v14 & 0x3F)) = *a3;
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

  *(*(v19 + 8 * v17) + 2 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)34>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)34>>(void)::metadata) = *(a1 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13LayerDataInfoILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F31F8;
  a2[1] = v2;
  return result;
}

void md::HikingLogic::deselectTrails(md::HikingLogic *this)
{
  if (*(this + 328) == 1)
  {
    *(this + 328) = 0;
    v2 = *(this + 15);
    v3 = v2[4];
    v4 = v2[5];
    if (v3 != v4)
    {
      v5 = v2[4];
      while (*v5 != 68)
      {
        v5 += 16;
        if (v5 == v4)
        {
          goto LABEL_11;
        }
      }

      if (v5 != v4)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          if (std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(v2 + 17, 0x44u))
          {
            v15 = 0u;
            v16 = 0u;
            v17 = 1065353216;
            md::SelectedPolygonLayerDataSource::setSelectedPolygons(v6, &v15);
            std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v15);
            v2 = *(this + 15);
            v3 = v2[4];
            v4 = v2[5];
          }
        }
      }
    }

LABEL_11:
    if (v3 != v4)
    {
      v7 = v3;
      while (*v7 != 48)
      {
        v7 += 16;
        if (v7 == v4)
        {
          goto LABEL_20;
        }
      }

      if (v7 != v4)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          if (std::__hash_table<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned short,std::vector<geo::codec::DynamicTransform,geo::allocator_adapter<geo::codec::DynamicTransform,geo::mallocator>>>,geo::mallocator>>::find<unsigned short>(v2 + 17, 0x30u))
          {
            v15 = 0u;
            v16 = 0u;
            v17 = 1065353216;
            md::SelectedDaVinciRoadsLayerDataSource::setSelectedRoads(v8, &v15);
            std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&v15);
            v9 = *(this + 15);
            v3 = *(v9 + 32);
            v4 = *(v9 + 40);
          }
        }
      }
    }

LABEL_20:
    if (v3 == v4)
    {
      goto LABEL_30;
    }

    v10 = v3;
    while (*v10 != 73)
    {
      v10 += 16;
      if (v10 == v4)
      {
        goto LABEL_30;
      }
    }

    if (v10 != v4)
    {
      v11 = *(v10 + 8);
      if (v11)
      {
        md::SelectedLabelLayerDataSource::deselectRoadFeature(v11);
        v12 = *(this + 15);
        v3 = *(v12 + 32);
        v4 = *(v12 + 40);
      }
    }

LABEL_30:
    while (v3 != v4)
    {
      if (*v3 == 80)
      {
        if (v3 != v4)
        {
          v14 = *(v3 + 8);
          if (v14)
          {
            md::SelectedLabelLayerDataSource::deselectRoadFeature(v14);
          }
        }

        break;
      }

      v3 += 16;
    }

    v13 = **(this + 17);
    if (v13)
    {
      LOBYTE(v15) = 8;
      md::MapEngine::setNeedsTick(v13, &v15);
    }
  }
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInView<(md::MapDataType)34>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)34>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)34>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)34>>(a1);
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
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)34>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)34>>(void)::metadata) = *(a1 + 4096);
}

uint64_t md::EntityDebugHighlightLogic::didBecomeInactive(uint64_t this)
{
  if (*(this + 272) == 1)
  {
    *(this + 272) = 0;
  }

  return this;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)34>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)34>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[164];
}

void md::CollectMapDataLogic<(md::MapDataType)54>::didBecomeInactive(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 != -65536)
  {
    ecs2::BasicRegistry<void>::destroy(*(a1 + 128), v1);
    *(a1 + 120) = -65536;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)54>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)54>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)54>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)54>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)54>>(void)::metadata) = *(v3 + 4096);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F2390;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)54>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)54>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)54>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)54>>(void)::metadata >= 0x200)
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

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2390;
  a2[1] = v2;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)54>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)54>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)54>>();
    unk_1EB82DD10 = 0x4CFBA79336F4D604;
    qword_1EB82DD18 = "SceneComponents::LayerDataActive<md::MapDataType::DaVinciBuildings>]";
    qword_1EB82DD20 = 67;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13LayerDataInfoILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)54>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)54>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)54>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)54>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)54>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(a1);
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
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(void)::metadata) = *(a1 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)34>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[146];
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)54>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)54>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)54>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)54>>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)54>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInfo<(md::MapDataType)54>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)54>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInfo<(md::MapDataType)54>>(void)::localId;
    unk_1EB82DE00 = 0x8805FEC1BB70F9F2;
    qword_1EB82DE08 = "SceneComponents::LayerDataInfo<md::MapDataType::DaVinciBuildings>]";
    qword_1EB82DE10 = 65;
  }
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F24A0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)54>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)54>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)54>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)54>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)54>>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F24A0;
  a2[1] = v2;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)54>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)54>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)54>>();
    *algn_1EB82DC78 = 0x1C552FD37D4E4C4;
    qword_1EB82DC80 = "SceneComponents::LayerDataInView<md::MapDataType::DaVinciBuildings>]";
    qword_1EB82DC88 = 67;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataExitingView<(md::MapDataType)34>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)34>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)34>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)34>>(a1);
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
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)34>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)34>>(void)::metadata) = *(a1 + 4096);
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)54>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)54>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)54>>();
    *algn_1EB82DC78 = 0x1C552FD37D4E4C4;
    qword_1EB82DC80 = "SceneComponents::LayerDataInView<md::MapDataType::DaVinciBuildings>]";
    qword_1EB82DC88 = 67;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)54>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)54>>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>();
    *algn_1EB82DA08 = 0xF9F486144ED3B7F3;
    qword_1EB82DA10 = "SceneComponents::LayerDataEnteringView<md::MapDataType::DaVinciBuildings>]";
    qword_1EB82DA18 = 73;
  }
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)34>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)34>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[155];
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>();
    *algn_1EB82DA08 = 0xF9F486144ED3B7F3;
    qword_1EB82DA10 = "SceneComponents::LayerDataEnteringView<md::MapDataType::DaVinciBuildings>]";
    qword_1EB82DA18 = 73;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)54>>(void)::metadata >= 0x200)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F2528;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)54>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)54>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)54>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)54>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)54>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)54>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)54>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)54>>();
    unk_1EB82DB40 = 0x66049177CDB7058DLL;
    qword_1EB82DB48 = "SceneComponents::LayerDataExitingView<md::MapDataType::DaVinciBuildings>]";
    qword_1EB82DB50 = 72;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2528;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>(a1);
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
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>(void)::metadata) = *(a1 + 4096);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE54EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>(void)::metadata) = *(v3 + 4096);
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>(void)::metadata >= 0x200)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)34>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[141];
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)54>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)54>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)54>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)54>>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)54>>();
    unk_1EB82D970 = 0x641EA51881CC6BFLL;
    qword_1EB82D978 = "SceneComponents::LayerDataPreviousInView<md::MapDataType::DaVinciBuildings>]";
    qword_1EB82D980 = 75;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)62>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)62>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)62>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)62>>(void)::metadata >= 0x200)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F2418;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void md::CollectMapDataLogic<(md::MapDataType)62>::didBecomeInactive(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 != -65536)
  {
    ecs2::BasicRegistry<void>::destroy(*(a1 + 128), v1);
    *(a1 + 120) = -65536;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE34EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2418;
  a2[1] = v2;
  return result;
}

void md::CollectMapDataLogic<(md::MapDataType)34>::updateVisibleMapData(md::SceneContext const&,ecs2::BasicRegistry<void> *)::{lambda(ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)34> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)34> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)34> &,SceneComponents::LayerDataExitingView<(md::MapDataType)34> &)#1}::operator()(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v83 = *(a1 + 8);
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100](a3, a4);
  v12 = a3 + 1;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a3[1]);
  *a3 = (a3 + 1);
  a3[2] = 0;
  a3[1] = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a5[1]);
  *a5 = (a5 + 1);
  a5[2] = 0;
  a5[1] = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a6[1]);
  *a6 = (a6 + 1);
  a6[2] = 0;
  a6[1] = 0;
  v13 = md::SceneContext::layerDataInView(*a1, 34);
  std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(a3, *v13, v13 + 1);
  v14 = *a3;
  v15 = a4 + 1;
  v16 = *a4;
  v17 = *a5;
  v84 = a5;
  v85 = v17;
  if (v14 != a3 + 1)
  {
    if (v16 == v15)
    {
      v86 = a5;
      v87 = v17;
      if (v14 != v12)
      {
        do
        {
LABEL_34:
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v86, v14 + 32);
          v33 = *(v14 + 8);
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
              v34 = *(v14 + 16);
              v65 = *v34 == v14;
              v14 = v34;
            }

            while (!v65);
          }

          v14 = v34;
        }

        while (v34 != v12);
      }
    }

    else
    {
      while (1)
      {
        v18 = *(v14 + 32);
        v19 = *(v14 + 48);
        v20 = v19;
        v21 = *(v16 + 48);
        v22 = v16[4];
        if (v19 == v21 ? v18 < v22 : v19 < v21)
        {
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v84, v14 + 32);
          v24 = *(v14 + 8);
          if (v24)
          {
            do
            {
              v14 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v25 = v14;
              v14 = *(v14 + 16);
            }

            while (*v14 != v25);
          }
        }

        else
        {
          v26 = v22 < v18;
          if (v20 != v21)
          {
            v26 = v21 < v20;
          }

          if (v26)
          {
            v27 = v16[1];
            if (v27)
            {
              do
              {
                v16 = v27;
                v27 = *v27;
              }

              while (v27);
            }

            else
            {
              do
              {
                v28 = v16;
                v16 = v16[2];
              }

              while (*v16 != v28);
            }
          }

          else
          {
            v29 = *(v14 + 8);
            if (v29)
            {
              do
              {
                v30 = v29;
                v29 = *v29;
              }

              while (v29);
            }

            else
            {
              do
              {
                v30 = *(v14 + 16);
                v65 = *v30 == v14;
                v14 = v30;
              }

              while (!v65);
            }

            v31 = v16[1];
            if (v31)
            {
              do
              {
                v16 = v31;
                v31 = *v31;
              }

              while (v31);
            }

            else
            {
              do
              {
                v32 = v16;
                v16 = v16[2];
              }

              while (*v16 != v32);
            }

            v14 = v30;
          }
        }

        if (v14 == v12)
        {
          break;
        }

        if (v16 == v15)
        {
          v86 = v84;
          v87 = v85;
          goto LABEL_34;
        }
      }
    }
  }

  v35 = *a4;
  v36 = *a3;
  v37 = *a6;
  v84 = a6;
  v85 = v37;
  if (v35 != v15)
  {
    if (v36 == v12)
    {
      v86 = a6;
      v87 = v37;
      if (v35 != v15)
      {
        do
        {
LABEL_73:
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v86, (v35 + 4));
          v53 = v35[1];
          if (v53)
          {
            do
            {
              v54 = v53;
              v53 = *v53;
            }

            while (v53);
          }

          else
          {
            do
            {
              v54 = v35[2];
              v65 = *v54 == v35;
              v35 = v54;
            }

            while (!v65);
          }

          v35 = v54;
        }

        while (v54 != v15);
      }
    }

    else
    {
      while (1)
      {
        v38 = v35[4];
        v39 = *(v35 + 48);
        v40 = v39;
        v41 = *(v36 + 48);
        v42 = *(v36 + 32);
        if (v39 == v41 ? v38 < v42 : v39 < v41)
        {
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v84, (v35 + 4));
          v44 = v35[1];
          if (v44)
          {
            do
            {
              v35 = v44;
              v44 = *v44;
            }

            while (v44);
          }

          else
          {
            do
            {
              v45 = v35;
              v35 = v35[2];
            }

            while (*v35 != v45);
          }
        }

        else
        {
          v46 = v42 < v38;
          if (v40 != v41)
          {
            v46 = v41 < v40;
          }

          if (v46)
          {
            v47 = *(v36 + 8);
            if (v47)
            {
              do
              {
                v36 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v48 = v36;
                v36 = *(v36 + 16);
              }

              while (*v36 != v48);
            }
          }

          else
          {
            v49 = v35[1];
            if (v49)
            {
              do
              {
                v50 = v49;
                v49 = *v49;
              }

              while (v49);
            }

            else
            {
              do
              {
                v50 = v35[2];
                v65 = *v50 == v35;
                v35 = v50;
              }

              while (!v65);
            }

            v51 = *(v36 + 8);
            if (v51)
            {
              do
              {
                v36 = v51;
                v51 = *v51;
              }

              while (v51);
            }

            else
            {
              do
              {
                v52 = v36;
                v36 = *(v36 + 16);
              }

              while (*v36 != v52);
            }

            v35 = v50;
          }
        }

        if (v35 == v15)
        {
          break;
        }

        if (v36 == v12)
        {
          v86 = v84;
          v87 = v85;
          goto LABEL_73;
        }
      }
    }
  }

  v55 = a2 >> 22;
  v56 = (a2 >> 16) & 0x3F;
  if (a5[2])
  {
    v57 = *(v83 + 128);
    LODWORD(v86) = a2;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>();
    v58 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>(void)::metadata;
    v59 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>(v57);
    v60 = v59;
    v62 = (v59 + 8);
    v61 = *(v59 + 8);
    if (v55 >= (*(v59 + 16) - v61) >> 3)
    {
      std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v59 + 8), v55 + 1);
      v61 = *v62;
    }

    v63 = *(v61 + 8 * v55);
    if (!v63)
    {
      operator new();
    }

    v64 = (v63 + 4 * v56);
    v65 = *v64 == -1 && v64[1] == 0;
    if (v65)
    {
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v60 + 32, &v86);
      v66 = ((*(v60 + 40) - *(v60 + 32)) >> 2) - 1;
      *v64 = a2;
      v64[1] = v66;
      v67 = *(v60 + 104);
      for (i = *(v60 + 112); v67 != i; v67 += 32)
      {
        std::function<void ()(ecs2::Entity)>::operator()(*(v67 + 24), a2);
      }
    }

    v69 = *(v57 + 41016) + (WORD1(a2) << 6);
    *(v69 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v58;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>();
    *(v57 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)34>>(void)::metadata) = *(v57 + 4096);
  }

  if (a6[2])
  {
    v70 = *(v83 + 128);
    LODWORD(v86) = a2;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>();
    v71 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(void)::metadata;
    v72 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(v70);
    v73 = v72;
    v75 = (v72 + 8);
    v74 = *(v72 + 8);
    if (v55 >= (*(v72 + 16) - v74) >> 3)
    {
      std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v72 + 8), v55 + 1);
      v74 = *v75;
    }

    v76 = *(v74 + 8 * v55);
    if (!v76)
    {
      operator new();
    }

    v77 = (v76 + 4 * v56);
    if (*v77 == -1 && v77[1] == 0)
    {
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v73 + 32, &v86);
      v79 = ((*(v73 + 40) - *(v73 + 32)) >> 2) - 1;
      *v77 = a2;
      v77[1] = v79;
      v81 = *(v73 + 104);
      for (j = *(v73 + 112); v81 != j; v81 += 32)
      {
        std::function<void ()(ecs2::Entity)>::operator()(*(v81 + 24), a2);
      }
    }

    v82 = *(v70 + 41016) + (WORD1(a2) << 6);
    *(v82 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v71;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>();
    *(v70 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)34>>(void)::metadata) = *(v70 + 4096);
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)62>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)62>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)62>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)62>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)62>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)62>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)62>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)62>>();
    *algn_1EB82DCE8 = 0x6A4AF42FD3B2DA7ALL;
    qword_1EB82DCF0 = "SceneComponents::LayerDataActive<md::MapDataType::InjectedFeatures>]";
    qword_1EB82DCF8 = 67;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)62>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)62>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)62>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)62>>(void)::metadata >= 0x200)
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

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)34>,md::CollectMapDataContext<(md::MapDataType)34>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x412AFB1345D08930)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13LayerDataInfoILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)62>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)62>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)62>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)62>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)62>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)62>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInfo<(md::MapDataType)62>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)62>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInfo<(md::MapDataType)62>>(void)::localId;
    *algn_1EB82DDD8 = 0x63E9758EF1034754;
    qword_1EB82DDE0 = "SceneComponents::LayerDataInfo<md::MapDataType::InjectedFeatures>]";
    qword_1EB82DDE8 = 65;
  }
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)62>,md::CollectMapDataContext<(md::MapDataType)62>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x5A88E3C88DA0DCA1)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)62>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)62>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)62>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)62>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)62>>(void)::metadata) = *(v3 + 4096);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)62>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)62>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)62>>();
    unk_1EB82DC50 = 0x8E91716731470C3ALL;
    qword_1EB82DC58 = "SceneComponents::LayerDataInView<md::MapDataType::InjectedFeatures>]";
    qword_1EB82DC60 = 67;
  }
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>();
    *algn_1EB82DA78 = 0x394E7A690FBC8B4;
    qword_1EB82DA80 = "SceneComponents::LayerDataDidEnterView<md::MapDataType::InjectedFeatures>]";
    qword_1EB82DA88 = 73;
  }
}

void md::CollectMapDataLogic<(md::MapDataType)62>::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 128);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>(v5);
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  if (v8 != v9)
  {
    v62 = *(v5 + 41016) + 4 * (v6 >> 5);
    do
    {
      *(v62 + (*(v8 + 2) << 6)) &= ~(1 << v6);
      v8 += 4;
    }

    while (v8 != v9);
  }

  v10 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>(v5);
  v11 = v10[37];
  v12 = v10[38];
  while (v11 != v12)
  {
    std::invoke[abi:nn200100]<std::function<void ()(void)> &>(*(v11 + 24));
    v11 += 32;
  }

    ;
  }

  *(v5 + 8 * v6) = *(v5 + 4096);
  v14 = *(a1 + 128);
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>();
    unk_1EB82DBB0 = 0xF23C21D2B4D31454;
    qword_1EB82DBB8 = "SceneComponents::LayerDataDidExitView<md::MapDataType::InjectedFeatures>]";
    qword_1EB82DBC0 = 72;
  }

  v15 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(void)::metadata;
  v16 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(v14);
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);
  if (v17 != v18)
  {
    v63 = *(v14 + 41016) + 4 * (v15 >> 5);
    do
    {
      *(v63 + (*(v17 + 2) << 6)) &= ~(1 << v15);
      v17 += 4;
    }

    while (v17 != v18);
  }

  v19 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(v14);
  v20 = v19[37];
  v21 = v19[38];
  while (v20 != v21)
  {
    std::invoke[abi:nn200100]<std::function<void ()(void)> &>(*(v20 + 24));
    v20 += 32;
  }

    ;
  }

  *(v14 + 8 * v15) = *(v14 + 4096);
  v23 = *a3;
  v24 = *(a1 + 128);
  if (*(a1 + 120) == -65536)
  {
    v25 = ecs2::BasicRegistry<void>::create(*(a1 + 128));
    *(a1 + 120) = v25;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataActive<(md::MapDataType)62>>(*(a1 + 128), v25);
    v26 = *(a1 + 128);
    v27 = *(a1 + 120);
    LOWORD(v71) = 62;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInfo<(md::MapDataType)62>>(v26, v27, &v71);
    v28 = *(a1 + 128);
    v29 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInView<(md::MapDataType)62>>(v28, v29, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
    v30 = *(a1 + 128);
    v31 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(v30, v31, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
    v32 = *(a1 + 128);
    v33 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataExitingView<(md::MapDataType)62>>(v32, v33, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
    v34 = *(a1 + 128);
    v35 = *(a1 + 120);
    v72 = 0;
    v73 = 0;
    v71 = &v72;
    ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>(v34, v35, &v71);
    std::__tree<gdc::LayerDataWithWorld>::destroy(v72);
  }

  ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)62>>(v24);
  v36 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)62>>(v24);
  v37 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>(v24);
  v38 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(v24);
  v39 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)62>>(v24);
  v64[0] = v23;
  v64[1] = a1;
  v71 = v36;
  v72 = v37;
  v40 = 1;
  v41 = v36;
  v42 = &v71;
  v73 = v38;
  v74 = v39;
  do
  {
    if ((&v71)[v40][5] - (&v71)[v40][4] < (v41[5] - v41[4]))
    {
      v41 = (&v71)[v40];
      v42 = &(&v71)[v40];
    }

    ++v40;
  }

  while (v40 != 4);
  v44 = *(*v42 + 32);
  v43 = *(*v42 + 40);
  v65 = v44;
  v66 = v43;
  v67 = v36;
  v68 = v37;
  v69 = v38;
  v70 = v39;
  while (v44 != v43 && !ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v65, *v44, v44[1]))
  {
    v44 += 2;
    v65 = v44;
  }

  v45 = v65;
  if (v65 != v43)
  {
    v46 = v68;
    v47 = v69;
    v48 = v70;
    v50 = v66;
    v49 = v67;
    do
    {
      v51 = *(v45 + 1);
      v52 = v51 & 0x3F;
      v53 = (v51 >> 3) & 0x1FF8;
      v54 = *(*(*(v49 + 8) + v53) + 4 * v52 + 2);
      v55 = (*(*(v49 + 56) + ((v54 >> 3) & 0x1FF8)) + 24 * (v54 & 0x3F));
      v56 = *(*(v46[1] + v53) + 4 * v52 + 2);
      v57 = (*(v46[7] + ((v56 >> 3) & 0x1FF8)) + 24 * (v56 & 0x3F));
      v58 = *(*(*(v47 + 8) + v53) + 4 * v52 + 2);
      v59 = *(*(*(v48 + 8) + v53) + 4 * v52 + 2);
      md::CollectMapDataLogic<(md::MapDataType)62>::updateVisibleMapData(md::SceneContext const&,ecs2::BasicRegistry<void> *)::{lambda(ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)62> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)62> &,SceneComponents::LayerDataExitingView<(md::MapDataType)62> &)#1}::operator()(v64, *v45, v55, v57, (*(*(v47 + 56) + ((v58 >> 3) & 0x1FF8)) + 24 * (v58 & 0x3F)), (*(*(v48 + 56) + ((v59 >> 3) & 0x1FF8)) + 24 * (v59 & 0x3F)));
      v60 = (v45 + 1);
      do
      {
        v45 = v60;
        v65 = v60;
        if (v60 == v50)
        {
          break;
        }

        v61 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::RenderableMaterialData const&,md::ls::ColorRampDataHandle &,md::ls::HasMaterialRaster const*,md::ls::MaterialRasterMaxIndex const*>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::MeshRenderableID const,md::ls::RenderableMaterialData const,md::ls::ColorRampDataHandle>(&v65, *v60, v60[1]);
        v60 = (v45 + 1);
      }

      while (!v61);
    }

    while (v45 != v43);
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(void)::metadata) = *(v3 + 4096);
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)62>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)62>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)62>>();
    unk_1EB82DC50 = 0x8E91716731470C3ALL;
    qword_1EB82DC58 = "SceneComponents::LayerDataInView<md::MapDataType::InjectedFeatures>]";
    qword_1EB82DC60 = 67;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)62>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)62>>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>();
    unk_1EB82D9E0 = 0x3EDBE6080169A53DLL;
    qword_1EB82D9E8 = "SceneComponents::LayerDataEnteringView<md::MapDataType::InjectedFeatures>]";
    qword_1EB82D9F0 = 73;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)62>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)62>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)62>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)62>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)62>>(void)::metadata) = *(v3 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[149];
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>();
    *algn_1EB82DA78 = 0x394E7A690FBC8B4;
    qword_1EB82DA80 = "SceneComponents::LayerDataDidEnterView<md::MapDataType::InjectedFeatures>]";
    qword_1EB82DA88 = 73;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>(void)::metadata >= 0x200)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F33B8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)62>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)62>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)62>>();
    *algn_1EB82DB18 = 0x6CB84C03E8A0D4ABLL;
    qword_1EB82DB20 = "SceneComponents::LayerDataExitingView<md::MapDataType::InjectedFeatures>]";
    qword_1EB82DB28 = 72;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>();
    unk_1EB82D9E0 = 0x3EDBE6080169A53DLL;
    qword_1EB82D9E8 = "SceneComponents::LayerDataEnteringView<md::MapDataType::InjectedFeatures>]";
    qword_1EB82D9F0 = 73;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(void)::metadata >= 0x200)
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

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataDidEnterViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F33B8;
  a2[1] = v2;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)62>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)62>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)62>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)62>>(void)::metadata >= 0x200)
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

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EEclEOSL_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>(v3);
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
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>(void)::metadata) = *(v3 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[158];
}

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>(void)::metadata >= 0x200)
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

uint64_t ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>();
    unk_1EB82DBB0 = 0xF23C21D2B4D31454;
    qword_1EB82DBB8 = "SceneComponents::LayerDataDidExitView<md::MapDataType::InjectedFeatures>]";
    qword_1EB82DBC0 = 72;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>();
    *algn_1EB82D948 = 0x40977549DE128CF9;
    qword_1EB82D950 = "SceneComponents::LayerDataPreviousInView<md::MapDataType::InjectedFeatures>]";
    qword_1EB82D958 = 75;
  }
}

void md::InitialMapEngineMode::didBecomeActive(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 41928);
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v3 + 16), 0x4AC7AB7561675F6uLL)[5] + 136) = 0;
  *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v3 + 16), 0x653D1F33EF15EF04uLL)[5] + 128) = 1;
  if (*(v3 + 146))
  {
    *(v3 + 146) = 0;
  }

  md::MapEngine::setNeedsLayoutContinuously(a2, 0, 0);
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F3420;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataDidExitViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F3420;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataActive<(md::MapDataType)62>>(uint64_t a1, unint64_t a2)
{
  v17 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)62>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)62>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataActive<(md::MapDataType)62>>(a1);
  v6 = v5;
  v7 = a2 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v7 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((a2 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v6 + 32, &v17);
    v13 = ((*(v6 + 40) - *(v6 + 32)) >> 2) - 1;
    *v11 = a2;
    v11[1] = v13;
    v14 = *(v6 + 104);
    for (i = *(v6 + 112); v14 != i; v14 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v14 + 24), a2);
    }
  }

  v16 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v16 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)62>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataActive<(md::MapDataType)62>>(void)::metadata) = *(a1 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)62>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataActive<(md::MapDataType)62>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[167];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F2818;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataActiveILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2818;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInfo<(md::MapDataType)62>>(uint64_t a1, unint64_t a2, _WORD *a3)
{
  v45 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)62>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)62>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInfo<(md::MapDataType)62>>(a1);
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
    *(*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 2 * (v14 & 0x3F)) = *a3;
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

  *(*(v19 + 8 * v17) + 2 * (v16 & 0x3F)) = *a3;
  v38 = *(v8 + 152);
  for (i = *(v8 + 160); v38 != i; v38 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v38 + 24), a2);
  }

LABEL_41:
  v40 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v40 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)62>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInfo<(md::MapDataType)62>>(void)::metadata) = *(a1 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents13LayerDataInfoILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F34A8;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataInView<(md::MapDataType)62>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)62>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)62>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)62>>(a1);
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
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)62>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataInView<(md::MapDataType)62>>(void)::metadata) = *(a1 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)62>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataInView<(md::MapDataType)62>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[162];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F28A0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents15LayerDataInViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F28A0;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(a1);
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
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(void)::metadata) = *(a1 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[144];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F29B0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents21LayerDataEnteringViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F29B0;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataExitingView<(md::MapDataType)62>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)62>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)62>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataExitingView<(md::MapDataType)62>>(a1);
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
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)62>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataExitingView<(md::MapDataType)62>>(void)::metadata) = *(a1 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)62>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataExitingView<(md::MapDataType)62>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[153];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F2A38;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents20LayerDataExitingViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2A38;
  a2[1] = v2;
  return result;
}

void ecs2::BasicRegistry<void>::add<SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>(uint64_t a1, unint64_t a2, void *a3)
{
  v49 = a2;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>();
  v6 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>(void)::metadata;
  v7 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>(a1);
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
    std::__tree<gdc::LayerDataWithWorld>::__move_assign((*(*(v8 + 56) + ((v14 >> 3) & 0x1FF8)) + 24 * (v14 & 0x3F)), a3);
    goto LABEL_44;
  }

  v48 = v6;
  std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v8 + 32, &v49);
  v16 = ((*(v8 + 40) - *(v8 + 32)) >> 2) - 1;
  *v13 = a2;
  v13[1] = v16;
  v17 = v16 >> 6;
  v19 = *(v8 + 56);
  v18 = *(v8 + 64);
  v20 = v18 - v19;
  if (v16 >> 6 >= (v18 - v19) >> 3)
  {
    v21 = v17 + 1;
    v22 = v17 + 1 - (v20 >> 3);
    v23 = *(v8 + 72);
    v47 = a1;
    if (v22 > (v23 - v18) >> 3)
    {
      v24 = v23 - v19;
      v25 = (v23 - v19) >> 2;
      if (v25 <= v21)
      {
        v25 = v17 + 1;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF8)
      {
        v26 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = v25;
      }

      if (!(v26 >> 61))
      {
        operator new();
      }

      goto LABEL_45;
    }

    v27 = 0;
    v28 = (v22 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v29 = vdupq_n_s64(v28);
    do
    {
      v30 = vmovn_s64(vcgeq_u64(v29, vorrq_s8(vdupq_n_s64(v27), xmmword_1B33B0560)));
      if (v30.i8[0])
      {
        *(v18 + 8 * v27) = 0;
      }

      if (v30.i8[4])
      {
        *(v18 + 8 * v27 + 8) = 0;
      }

      v27 += 2;
    }

    while (v28 - ((v22 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v27);
    *(v8 + 64) = v18 + 8 * v22;
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    v33 = (v32 - v31) >> 4;
    if (v33 <= v17)
    {
      v34 = v21 - v33;
      v35 = *(v8 + 96);
      if (v34 > (v35 - v32) >> 4)
      {
        v36 = v35 - v31;
        v37 = v36 >> 3;
        if (v36 >> 3 <= v21)
        {
          v37 = v17 + 1;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v38 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v38 = v37;
        }

        if (!(v38 >> 60))
        {
          operator new();
        }

LABEL_45:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v8 + 88), 16 * v34);
      *(v8 + 88) = v32 + 16 * v34;
      a1 = v47;
    }

    else if (v21 < v33)
    {
      *(v8 + 88) = v31 + 16 * v21;
    }

    v19 = *(v8 + 56);
    if (v20 < (*(v8 + 64) - v19))
    {
      operator new();
    }
  }

  v39 = (*(v19 + 8 * v17) + 24 * (v16 & 0x3F));
  *v39 = *a3;
  v40 = a3 + 1;
  v41 = a3[1];
  v39[1] = v41;
  v42 = v39 + 1;
  v43 = a3[2];
  v39[2] = v43;
  if (v43)
  {
    *(v41 + 16) = v42;
    *a3 = v40;
    *v40 = 0;
    a3[2] = 0;
  }

  else
  {
    *v39 = v42;
  }

  v6 = v48;
  v44 = *(v8 + 152);
  for (i = *(v8 + 160); v44 != i; v44 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v44 + 24), a2);
  }

LABEL_44:
  v46 = *(a1 + 41016) + (WORD1(a2) << 6);
  *(v46 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v6;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>();
  *(a1 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>(void)::metadata) = *(a1 + 4096);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>()
{
  v0 = &unk_1EB82E000;
  {
    v0 = &unk_1EB82E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<SceneComponents::LayerDataPreviousInView<(md::MapDataType)62>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &unk_1EB82E000;
    }
  }

  return v0[139];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESH_E4typeEvEUlS2_E_vEERS4_OSH_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F29F2928;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN15SceneComponents23LayerDataPreviousInViewILN2md11MapDataTypeE62EEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESE_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISM_EEFvSL_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F29F2928;
  a2[1] = v2;
  return result;
}

void md::CollectMapDataLogic<(md::MapDataType)62>::updateVisibleMapData(md::SceneContext const&,ecs2::BasicRegistry<void> *)::{lambda(ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)62> &,SceneComponents::LayerDataPreviousInView<(md::MapDataType)62> &,SceneComponents::LayerDataEnteringView<(md::MapDataType)62> &,SceneComponents::LayerDataExitingView<(md::MapDataType)62> &)#1}::operator()(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v83 = *(a1 + 8);
  std::set<gdc::LayerDataWithWorld>::swap[abi:nn200100](a3, a4);
  v12 = a3 + 1;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a3[1]);
  *a3 = (a3 + 1);
  a3[2] = 0;
  a3[1] = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a5[1]);
  *a5 = (a5 + 1);
  a5[2] = 0;
  a5[1] = 0;
  std::__tree<gdc::LayerDataWithWorld>::destroy(a6[1]);
  *a6 = (a6 + 1);
  a6[2] = 0;
  a6[1] = 0;
  v13 = md::SceneContext::layerDataInView(*a1, 62);
  std::set<gdc::LayerDataWithWorld>::insert[abi:nn200100]<std::__tree_const_iterator<gdc::LayerDataWithWorld,std::__tree_node<gdc::LayerDataWithWorld,void *> *,long>>(a3, *v13, v13 + 1);
  v14 = *a3;
  v15 = a4 + 1;
  v16 = *a4;
  v17 = *a5;
  v84 = a5;
  v85 = v17;
  if (v14 != a3 + 1)
  {
    if (v16 == v15)
    {
      v86 = a5;
      v87 = v17;
      if (v14 != v12)
      {
        do
        {
LABEL_34:
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v86, v14 + 32);
          v33 = *(v14 + 8);
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
              v34 = *(v14 + 16);
              v65 = *v34 == v14;
              v14 = v34;
            }

            while (!v65);
          }

          v14 = v34;
        }

        while (v34 != v12);
      }
    }

    else
    {
      while (1)
      {
        v18 = *(v14 + 32);
        v19 = *(v14 + 48);
        v20 = v19;
        v21 = *(v16 + 48);
        v22 = v16[4];
        if (v19 == v21 ? v18 < v22 : v19 < v21)
        {
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v84, v14 + 32);
          v24 = *(v14 + 8);
          if (v24)
          {
            do
            {
              v14 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v25 = v14;
              v14 = *(v14 + 16);
            }

            while (*v14 != v25);
          }
        }

        else
        {
          v26 = v22 < v18;
          if (v20 != v21)
          {
            v26 = v21 < v20;
          }

          if (v26)
          {
            v27 = v16[1];
            if (v27)
            {
              do
              {
                v16 = v27;
                v27 = *v27;
              }

              while (v27);
            }

            else
            {
              do
              {
                v28 = v16;
                v16 = v16[2];
              }

              while (*v16 != v28);
            }
          }

          else
          {
            v29 = *(v14 + 8);
            if (v29)
            {
              do
              {
                v30 = v29;
                v29 = *v29;
              }

              while (v29);
            }

            else
            {
              do
              {
                v30 = *(v14 + 16);
                v65 = *v30 == v14;
                v14 = v30;
              }

              while (!v65);
            }

            v31 = v16[1];
            if (v31)
            {
              do
              {
                v16 = v31;
                v31 = *v31;
              }

              while (v31);
            }

            else
            {
              do
              {
                v32 = v16;
                v16 = v16[2];
              }

              while (*v16 != v32);
            }

            v14 = v30;
          }
        }

        if (v14 == v12)
        {
          break;
        }

        if (v16 == v15)
        {
          v86 = v84;
          v87 = v85;
          goto LABEL_34;
        }
      }
    }
  }

  v35 = *a4;
  v36 = *a3;
  v37 = *a6;
  v84 = a6;
  v85 = v37;
  if (v35 != v15)
  {
    if (v36 == v12)
    {
      v86 = a6;
      v87 = v37;
      if (v35 != v15)
      {
        do
        {
LABEL_73:
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v86, (v35 + 4));
          v53 = v35[1];
          if (v53)
          {
            do
            {
              v54 = v53;
              v53 = *v53;
            }

            while (v53);
          }

          else
          {
            do
            {
              v54 = v35[2];
              v65 = *v54 == v35;
              v35 = v54;
            }

            while (!v65);
          }

          v35 = v54;
        }

        while (v54 != v15);
      }
    }

    else
    {
      while (1)
      {
        v38 = v35[4];
        v39 = *(v35 + 48);
        v40 = v39;
        v41 = *(v36 + 48);
        v42 = *(v36 + 32);
        if (v39 == v41 ? v38 < v42 : v39 < v41)
        {
          std::insert_iterator<SceneComponents::LayerDataEnteringView<(md::MapDataType)33>>::operator=[abi:nn200100](&v84, (v35 + 4));
          v44 = v35[1];
          if (v44)
          {
            do
            {
              v35 = v44;
              v44 = *v44;
            }

            while (v44);
          }

          else
          {
            do
            {
              v45 = v35;
              v35 = v35[2];
            }

            while (*v35 != v45);
          }
        }

        else
        {
          v46 = v42 < v38;
          if (v40 != v41)
          {
            v46 = v41 < v40;
          }

          if (v46)
          {
            v47 = *(v36 + 8);
            if (v47)
            {
              do
              {
                v36 = v47;
                v47 = *v47;
              }

              while (v47);
            }

            else
            {
              do
              {
                v48 = v36;
                v36 = *(v36 + 16);
              }

              while (*v36 != v48);
            }
          }

          else
          {
            v49 = v35[1];
            if (v49)
            {
              do
              {
                v50 = v49;
                v49 = *v49;
              }

              while (v49);
            }

            else
            {
              do
              {
                v50 = v35[2];
                v65 = *v50 == v35;
                v35 = v50;
              }

              while (!v65);
            }

            v51 = *(v36 + 8);
            if (v51)
            {
              do
              {
                v36 = v51;
                v51 = *v51;
              }

              while (v51);
            }

            else
            {
              do
              {
                v52 = v36;
                v36 = *(v36 + 16);
              }

              while (*v36 != v52);
            }

            v35 = v50;
          }
        }

        if (v35 == v15)
        {
          break;
        }

        if (v36 == v12)
        {
          v86 = v84;
          v87 = v85;
          goto LABEL_73;
        }
      }
    }
  }

  v55 = a2 >> 22;
  v56 = (a2 >> 16) & 0x3F;
  if (a5[2])
  {
    v57 = *(v83 + 128);
    LODWORD(v86) = a2;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>();
    v58 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>(void)::metadata;
    v59 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>(v57);
    v60 = v59;
    v62 = (v59 + 8);
    v61 = *(v59 + 8);
    if (v55 >= (*(v59 + 16) - v61) >> 3)
    {
      std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v59 + 8), v55 + 1);
      v61 = *v62;
    }

    v63 = *(v61 + 8 * v55);
    if (!v63)
    {
      operator new();
    }

    v64 = (v63 + 4 * v56);
    v65 = *v64 == -1 && v64[1] == 0;
    if (v65)
    {
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v60 + 32, &v86);
      v66 = ((*(v60 + 40) - *(v60 + 32)) >> 2) - 1;
      *v64 = a2;
      v64[1] = v66;
      v67 = *(v60 + 104);
      for (i = *(v60 + 112); v67 != i; v67 += 32)
      {
        std::function<void ()(ecs2::Entity)>::operator()(*(v67 + 24), a2);
      }
    }

    v69 = *(v57 + 41016) + (WORD1(a2) << 6);
    *(v69 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v58;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>();
    *(v57 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidEnterView<(md::MapDataType)62>>(void)::metadata) = *(v57 + 4096);
  }

  if (a6[2])
  {
    v70 = *(v83 + 128);
    LODWORD(v86) = a2;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>();
    v71 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(void)::metadata;
    v72 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(v70);
    v73 = v72;
    v75 = (v72 + 8);
    v74 = *(v72 + 8);
    if (v55 >= (*(v72 + 16) - v74) >> 3)
    {
      std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v72 + 8), v55 + 1);
      v74 = *v75;
    }

    v76 = *(v74 + 8 * v55);
    if (!v76)
    {
      operator new();
    }

    v77 = (v76 + 4 * v56);
    if (*v77 == -1 && v77[1] == 0)
    {
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v73 + 32, &v86);
      v79 = ((*(v73 + 40) - *(v73 + 32)) >> 2) - 1;
      *v77 = a2;
      v77[1] = v79;
      v81 = *(v73 + 104);
      for (j = *(v73 + 112); v81 != j; v81 += 32)
      {
        std::function<void ()(ecs2::Entity)>::operator()(*(v81 + 24), a2);
      }
    }

    v82 = *(v70 + 41016) + (WORD1(a2) << 6);
    *(v82 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v71;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>();
    *(v70 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,SceneComponents::LayerDataDidExitView<(md::MapDataType)62>>(void)::metadata) = *(v70 + 4096);
  }
}

uint64_t md::Logic<md::CollectMapDataLogic<(md::MapDataType)62>,md::CollectMapDataContext<(md::MapDataType)62>,md::LogicDependencies<gdc::TypeList<md::SceneContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x5A88E3C88DA0DCA1)
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

uint64_t md::Logic<md::CollectRenderablesLogic<(md::MapDataType)62,md::DaVinciGroundRenderable>,md::CollectRenderablesLogicContext<(md::MapDataType)62>,md::LogicDependencies<gdc::TypeList<md::GeometryContext>,gdc::TypeList<md::CollectMapDataContext<(md::MapDataType)62>>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x552ACF95227023D6)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x3070CB6B3C7F21D3uLL)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x5A88E3C88DA0DCA1uLL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x5A88E3C88DA0DCA1))
      {
        v12 = *(v11 + 32);
      }

      else
      {
        v12 = 0;
      }

      v13[0] = v9;
      v13[1] = v12;
      return (*(*v7 + 144))(v7, a2, v13, v5);
    }
  }

  return result;
}

uint64_t md::CollectRenderablesLogic<(md::MapDataType)62,md::DaVinciGroundRenderable>::runBeforeLayout(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *a3;
  v6 = *(a1 + 120);
  v7 = *(a2 + 16);
  v68 = 0uLL;
  v69 = 0;
  v8 = *v7;
  do
  {
    v9 = *v8;
    v8 += 5;
  }

  while (v9 != 0x22D45F5AAD4BF408);
  v11 = *(v8 - 2);
  v10 = *(v8 - 1);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  (**v11)(v11);
  v64 = v5;
  v65 = v7;
  v63 = v3;
  v12 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)62>>(v6);
  v13 = (a1 + 136);
  v14 = v12[4];
  v66 = v12[5];
  if (v14 != v66)
  {
    v15 = 0;
    do
    {
      v17 = *(a1 + 144);
      v18 = *(a1 + 152);
      *&v70 = *(v12[7] + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v15 & 0x3F);
      v16 = v70;
      *(&v70 + 1) = a1 + 168;
      std::__partition_impl[abi:nn200100]<void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>>(v17, v18, &v70);
      v19 = *(a1 + 144);
      v20 = *(a1 + 152);
      *&v70 = v16;
      *(&v70 + 1) = a1 + 168;
      v3 = std::__partition_impl[abi:nn200100]<void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)33> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::_ClassicAlgPolicy,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*>>(v19, v20, &v70);
      v21 = *(a1 + 152);
      std::vector<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>*>,std::__wrap_iter<std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>*>>((a1 + 232), *(a1 + 240), v3, v21, (v21 - v3) >> 4);
      if (v3 != v21)
      {
        v22 = v21;
        v23 = *(a1 + 152);
        while (v22 != v23)
        {
          *v3 = *v22;
          *(v3 + 8) = *(v22++ + 2);
          v3 += 16;
        }

        *(a1 + 152) = v3;
      }

      v24 = *(a1 + 240);
      v7 = *(a1 + 232);
      if (v24 != v7)
      {
        do
        {
          std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(&v68, (v7 + 8));
          v3 = *v7;
          if (*v7)
          {
            v25 = *v13;
            if (*(*v13 + 16))
            {
              (**v3)(*v7);
              *v3 = *(v25 + 40);
              *(v25 + 40) = v3;
            }
          }

          v7 += 16;
        }

        while (v7 != v24);
        v7 = *(a1 + 232);
      }

      v26 = *(a1 + 144);
      v27 = *(a1 + 152);
      v28 = 126 - 2 * __clz((v27 - v26) >> 4);
      *(a1 + 240) = v7;
      if (v27 == v26)
      {
        v29 = 0;
      }

      else
      {
        v29 = v28;
      }

      std::__introsort<std::_ClassicAlgPolicy,void processLeavingRenderables<md::DaVinciGroundRenderable,(md::MapDataType)54>(ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)54> &)::{lambda(std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity> const&)#1} &,std::tuple<md::DaVinciGroundRenderable*,ecs2::Entity>*,false>(v26, v27, v29, 1);
      v14 += 4;
      ++v15;
    }

    while (v14 != v66);
  }

  v30 = *v65;
  v31 = *(v65 + 8);
  if (*v65 != v31)
  {
    v32 = *v65;
    while (*v32 != 0x41D4E9297E100630)
    {
      v32 += 5;
      if (v32 == v31)
      {
        goto LABEL_26;
      }
    }

    if (v32 != v31)
    {
      v61 = v32[4];
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v61);
        v30 = *v65;
        v31 = *(v65 + 8);
      }
    }
  }

LABEL_26:
  if (v30 != v31)
  {
    v33 = v30;
    while (*v33 != 0x4EDAD23DFB014132)
    {
      v33 += 5;
      if (v33 == v31)
      {
        goto LABEL_30;
      }
    }

    if (v33 != v31)
    {
      v62 = v33[4];
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v62);
        v30 = *v65;
        v31 = *(v65 + 8);
      }
    }
  }

LABEL_30:
  if (v30 != v31)
  {
    while (*v30 != 0x348A0B0E758C07C2)
    {
      v30 += 5;
      if (v30 == v31)
      {
        goto LABEL_33;
      }
    }

    if (v30 != v31)
    {
      v60 = v30[4];
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v60);
      }
    }
  }

LABEL_33:
  v34 = *(&v68 + 1);
  v35 = v68;
  if (*(&v68 + 1) != v68)
  {
    v36 = 0;
    if (((*(&v68 + 1) - v68) >> 2) <= 1)
    {
      v37 = 1;
    }

    else
    {
      v37 = (*(&v68 + 1) - v68) >> 2;
    }

    do
    {
      v3 = v3 & 0xFFFFFFFF00000000 | v35[v36];
      cleanup(*v65, *(v65 + 8), v6, v3);
      ++v36;
    }

    while (v37 != v36);
    v7 = v35;
    do
    {
      v3 = v3 & 0xFFFFFFFF00000000 | *v7;
      ecs2::BasicRegistry<void>::destroy(v6, v3);
      v7 += 4;
    }

    while (v7 != v34);
  }

  md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillLeaveView<md::DaVinciGroundRenderable>>(v6);
  v70 = 0uLL;
  v71 = 0;
  v38 = ecs2::BasicRegistry<void>::storage<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(v6);
  v39 = *(v38 + 32);
  v40 = *(v38 + 40);
  if (v39 == v40)
  {
    v41 = 0uLL;
  }

  else
  {
    do
    {
      std::invoke[abi:nn200100]<void md::ECSHelpers::destroyEntitiesWithComponent<SceneComponents::WillEnterView<md::DaVinciGroundRenderable>>(ecs2::BasicRegistry<void> *)::{lambda(ecs2::Entity,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>&)#1} &,ecs2::Entity&,SceneComponents::WillEnterView<md::DaVinciGroundRenderable>&>(&v70, *v39++);
    }

    while (v39 != v40);
    v41 = v70;
  }

  v42 = v41;
  if (v41 != *(&v41 + 1))
  {
    v43 = v41;
    do
    {
      v7 = v7 & 0xFFFFFFFF00000000 | *v43;
      ecs2::BasicRegistry<void>::destroy(v6, v7);
      ++v43;
    }

    while (v43 != *(&v42 + 1));
  }

  if (v42)
  {
    operator delete(v42);
  }

  if (v35)
  {
    operator delete(v35);
  }

  v67 = md::LayoutContext::cameraType(v63);
  v44 = *(v63 + 2);
  *&v68 = *(a1 + 120);
  v45 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataEnteringView<(md::MapDataType)62>>(v68);
  *&v70 = a1 + 136;
  *(&v70 + 1) = v44;
  v71 = &v67;
  v72 = v64;
  v73 = &v68;
  v46 = *(v45 + 32);
  v47 = *(v45 + 40);
  if (v46 != v47)
  {
    v54 = v45;
    v55 = 0;
    do
    {
      determineEnteringRenderables<md::DaVinciGroundRenderable,(md::MapDataType)62>(gdc::CameraType const&,md::GeometryContext const&,ecs2::BasicRegistry<void> *,gdc::ServiceLocator &,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &,md::CollectRenderablesLogicContext<(md::MapDataType)62> &)::{lambda(ecs2::Entity,SceneComponents::LayerDataEnteringView<(md::MapDataType)62> &)#1}::operator()(&v70, (*(*(v54 + 56) + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v55 & 0x3F)));
      v46 += 4;
      ++v55;
    }

    while (v46 != v47);
  }

  *&v68 = *(a1 + 120);
  v48 = ecs2::BasicRegistry<void>::storage<SceneComponents::LayerDataInView<(md::MapDataType)62>>(v68);
  *&v70 = a1 + 136;
  *(&v70 + 1) = &v68;
  v49 = *(v48 + 32);
  v50 = *(v48 + 40);
  if (v49 != v50)
  {
    v51 = v48;
    v52 = 0;
    do
    {
      createEnterLeaveChangedComponents<md::DaVinciGroundRenderable,(md::MapDataType)33>(ecs2::BasicRegistry<void> *,SceneComponents::MapDataRenderables<md::DaVinciGroundRenderable> &)::{lambda(ecs2::Entity,SceneComponents::LayerDataInView<(md::MapDataType)33> const&)#1}::operator()(&v70, *(*(v51 + 56) + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v52 & 0x3F));
      v49 += 4;
      ++v52;
    }

    while (v49 != v50);
  }

  result = ecs2::BasicRegistry<void>::storage<md::ls::TileRenderableTypeT<md::DaVinciGroundRenderable>>(*(a1 + 120));
  if (*(result + 40) != *(result + 32))
  {
    v56 = **(a1 + 128);
    do
    {
      v57 = *v56;
      v56 += 5;
    }

    while (v57 != 0x22D45F5AAD4BF408);
    v59 = *(v56 - 2);
    v58 = *(v56 - 1);
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v58);
    }

    result = (**v59)(v59);
    **(result + 744) = 1;
  }

  return result;
}