uint64_t std::__function::__value_func<BOOL ()(md::TransitTileDataRenderable *,md::TransitTileDataRenderable *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__optional_storage_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v7[3] = *MEMORY[0x1E69E9840];
  if (*(result + 32) == *(a2 + 32))
  {
    if (*(result + 32))
    {
      std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::__value_func[abi:nn200100](v5, a2);
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

      return std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](v5);
    }
  }

  else if (*(result + 32))
  {
    result = std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](result);
    *(v2 + 32) = 0;
  }

  else
  {
    result = std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::__value_func[abi:nn200100](result, a2);
    *(v2 + 32) = 1;
  }

  return result;
}

void *md::LabelLineStitchSegment::LabelLineStitchSegment(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = a2;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  a1[8] = 0;
  *(a1 + 18) = 2139095039;
  *(a1 + 38) = 0;
  *(a1 + 78) = 0;
  *(a1 + 5) = 0u;
  v3 = a1 + 10;
  *(a1 + 30) = 2139095039;
  v4 = a1 + 15;
  *(a1 + 6) = 0u;
  a1[14] = 0;
  *(a1 + 62) = 0;
  *(a1 + 126) = 0;
  *(a1 + 64) = 1;
  md::LabelLineStitchSegment::point(&v8, a1, 0);
  *(a1 + 2) = v8;
  a1[6] = v9;
  *(a1 + 7) = v10;
  *(a1 + 18) = v11[0];
  *(a1 + 75) = *(v11 + 3);
  if (*a1)
  {
    v5 = (*(**a1 + 16))(*a1);
  }

  else
  {
    v6 = a1[1];
    if (v6)
    {
      v5 = *(v6 + 56);
    }

    else
    {
      v5 = 0;
    }
  }

  md::LabelLineStitchSegment::point(&v8, a1, v5 - 1);
  *v3 = v8;
  v3[2] = v9;
  *(a1 + 13) = v10;
  *v4 = v11[0];
  *(v4 + 3) = *(v11 + 3);
  return a1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Tile::Clipping>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[325];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_4Tile8ClippingEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A14A38;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

double geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(double *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = sqrt(v3 * v3 + v4 * v4);
  v7 = atan2(v5, v6 * 0.996647189);
  v8 = atan2(v4, v3);
  v9 = __sincos_stret(v7);
  v10 = atan2(v5 + v9.__sinval * v9.__sinval * 42841.3115 * v9.__sinval, v6 + v9.__cosval * v9.__cosval * -42697.6727 * v9.__cosval);
  v11 = __sincos_stret(v10);
  result = v6 / v11.__cosval + -6378137.0 / sqrt(v11.__sinval * v11.__sinval * -0.00669437999 + 1.0);
  *a2 = v10;
  *(a2 + 8) = v8;
  *(a2 + 16) = result;
  return result;
}

uint64_t gdc::GlobeTileSelector::tileZForDepth(gdc::GlobeTileSelector *this, double a2, double a3)
{
  v4 = a2 * 0.0000000249532021;
  if (v4 == 0.0)
  {
    return *(this + 274);
  }

  v6 = log2(v4 * v4 * a3);
  v7 = *(this + 2);
  v8 = v7 + v6 * -0.5;
  LOBYTE(v7) = *(this + 274);
  return fmin(fmax(v8, 0.0), *&v7);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_4Tile8ClippingEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14A38;
  a2[1] = v2;
  return result;
}

void md::TransitNodeFeaturePool::~TransitNodeFeaturePool(md::TransitNodeFeaturePool *this)
{
  v2 = *(this + 2);
  *(*(this + 3) + 32) = 0;
  v3 = (v2 + 8);
  if (!v2)
  {
    v3 = 0;
  }

  *v3 = 0;
  v4 = *(this + 38);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *(this + 34) = &unk_1F2A59028;

  v5 = *(this + 32);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 30);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 28);
  *(this + 28) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 27);
  *(this + 27) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 26);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  for (i = 192; i != 160; i -= 8)
  {
    v11 = *(this + i);
    *(this + i) = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }
  }

  do
  {
    v12 = *(this + i);
    *(this + i) = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    i -= 8;
  }

  while (i != 128);
  std::unique_ptr<md::TransitNodeTextureAtlas>::reset[abi:nn200100](this + 16, 0);
  std::unique_ptr<md::TransitNodeTextureAtlas>::reset[abi:nn200100](this + 15, 0);
  v13 = *(this + 14);
  *(this + 14) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(this + 72);
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(this + 32);
  v14 = *(this + 2);
  if (v14)
  {
    if ((*v14)-- == 1)
    {
      operator delete(v14);
      *(this + 2) = 0;
    }
  }
}

double md::LabelLineSegment::coincidentPointTolerance(md::LabelLineSegment *this)
{
  md::LabelLineSegment::tile(&v9, this);
  if (*(this + 32) == 2)
  {
    if (!v9.__vftable)
    {
      goto LABEL_13;
    }

    on_zero_shared = v9.__vftable[35].~__shared_weak_count_0;
    if (!on_zero_shared)
    {
      goto LABEL_13;
    }

LABEL_10:
    v5 = *on_zero_shared;
    if (v5)
    {
      v3 = v5;
    }

    else
    {
      v3 = 12;
    }

    goto LABEL_14;
  }

  if (*(this + 32) || !v9.__vftable)
  {
    goto LABEL_13;
  }

  v2 = v9.__vftable[20].~__shared_weak_count;
  if (!v2 || (v3 = *v2, !*v2))
  {
    on_zero_shared = v9.__vftable[19].__on_zero_shared;
    if (!on_zero_shared)
    {
LABEL_13:
      v3 = 12;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_14:
  v6 = *(this + 35);
  v7 = *(this + 33);
  if (v9.__shared_owners_)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9.__shared_owners_);
  }

  *&result = ((v6 + v3) << 52) ^ 0x3FF0000000000000;
  if (v7)
  {
    return result * 40075017.0;
  }

  return result;
}

double std::deque<geo::QuadTile>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 16 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<geo::QuadTile>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F);
  *(v8 + 24) = 0;
  result = *(a2 + 4);
  *(v8 + 4) = result;
  *v8 = *a2;
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 24) = *(a2 + 24);
  ++a1[5];
  return result;
}

void *std::deque<geo::QuadTile>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v4 = a1[2];
    v5 = a1[3];
    v6 = v5 - *a1;
    if (v4 - a1[1] < v6)
    {
      if (v5 != v4)
      {
        operator new();
      }

      operator new();
    }

    if (v5 == *a1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 >> 2;
    }

    v11 = a1;
    std::allocator<geo::QuadTile *>::allocate[abi:nn200100](v7);
  }

  a1[4] = v3;
  v8 = a1[1];
  *&v10 = *v8;
  a1[1] = v8 + 1;
  return std::__split_buffer<geo::QuadTile *>::emplace_back<geo::QuadTile *&>(a1, &v10);
}

void sub_1B29A4164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ggl::TransitNodeRGB::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void std::allocator<geo::QuadTile *>::allocate[abi:nn200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {

    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>(void)::metadata >= 0x200)
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

void ggl::TransitNodeRGB::BasePipelineState::~BasePipelineState(ggl::TransitNodeRGB::BasePipelineState *this)
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

void *std::__split_buffer<geo::QuadTile *>::emplace_back<geo::QuadTile *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLightingDebugOptionsConstantData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLightingDebugOptionsConstantData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  v3 = (a1 + 8);
  v37[0] = &unk_1F2A15B90;
  v37[1] = a1 + 8;
  v38 = v37;
  v4 = *(a2 + 8);
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>(v4);
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::PipelineSetup>(v4);
  v7 = v6;
  if (*(v6 + 40) - *(v6 + 32) >= *(v5 + 40) - *(v5 + 32))
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v8 + 40);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(v35, *(v8 + 32), v9, v5, v6);
  ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::ViewIterator(&v34, v9, v9, v5, v7);
  v10 = v35[0];
  v11 = v34;
  if (v35[0] == v34)
  {
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    v14 = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
  }

  else
  {
    v33 = v3;
    v12 = v36;
    v13 = _ZTWN4ecs27Runtime11_localStateE();
    v14 = _ZTWN4ecs27Runtime11_stackIndexE();
    v15 = 0;
    v16 = v35[1];
    do
    {
      v17 = v10[1];
      v18 = (v17 >> 3) & 0x1FF8;
      v19 = v17 & 0x3F;
      v20 = *(*(*(v12 + 8) + v18) + 4 * v19 + 2);
      v21 = *(*(v12 + 56) + ((v20 >> 3) & 0x1FF8));
      v22 = *(*(*(*(&v12 + 1) + 8) + v18) + 4 * v19 + 2);
      v23 = *(*(*(&v12 + 1) + 56) + ((v22 >> 3) & 0x1FF8));
      *(v13 + 104 * *v14 + 24) = *v10;
      if (!v38)
      {
        std::__throw_bad_function_call[abi:nn200100]();
      }

      (*(*v38 + 48))(v38, v21 + 12 * (v20 & 0x3F), v23 + 8 * (v22 & 0x3F));
      ++v15;
      v24 = v10 + 2;
      do
      {
        v10 = v24;
        v35[0] = v24;
        if (v24 == v16)
        {
          break;
        }

        v25 = ecs2::ViewIterator<void,std::tuple<md::ls::InView const&,md::ls::RenderableMaterialData const&>,std::tuple<>>::containsAll<md::ls::InView const,md::ls::RenderableMaterialData const>(v35, *v24, v24[1]);
        v24 = v10 + 2;
      }

      while (!v25);
    }

    while (v10 != v11);
    v26 = *(a2 + 8);
    {
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::PipelineSetup>();
      *algn_1EB83D948 = 0x9C4E7BCF9B8D6334;
      qword_1EB83D950 = "md::ls::PipelineSetup]";
      qword_1EB83D958 = 21;
    }

    *(v26 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::PipelineSetup>(void)::metadata) = *(v26 + 4096);
    v3 = v33;
  }

  *(v13 + 104 * *v14 + 24) = -65536;
  v27 = v13 + 104 * *v14;
  v28 = *(v27 + 92);
  *(v27 + 92) = v28 + 1;
  *(v27 + 4 * v28 + 28) = v15;
  v29 = v13 + 104 * *v14;
  v31 = *(v29 + 92);
  v30 = (v29 + 92);
  if (v31 >= 0x10)
  {
    *v30 = 0;
  }

  result = std::__function::__value_func<void ()(md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>> const&,md::ls::PipelineSetup &)>::~__value_func[abi:nn200100](v37);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  return result;
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,gm::Box<double,2>>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,gm::Box<double,2>>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,gm::Box<double,2>>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,gm::Box<double,2>>,void *>>>>::find<geo::QuadTile>(void *a1, geo::QuadTile *this)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = *(this + 2);
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = *(this + 2);
    if (v5 >= *&v4)
    {
      v8 = v5 % *&v4;
    }
  }

  else
  {
    v8 = (*&v4 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (i = *v9; i; i = *i)
  {
    v11 = *(i + 1);
    if (v11 == v5)
    {
      if (geo::QuadTile::operator==(i + 16, this))
      {
        return i;
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
        return 0;
      }
    }
  }

  return i;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>>(void)::localId;
    *algn_1EB82B418 = 0xE3549AC6494FE40ELL;
    qword_1EB82B420 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::LightingDebugOptions>>]";
    qword_1EB82B428 = 96;
  }
}

void ggl::TransitNodeColorized::BasePipelineSetup::~BasePipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci20LightingDebugOptionsEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A146F8;
  a2[1] = v2;
  return result;
}

char *md::LabelLineStore::lineZSetForZ(char *this, int a2, char a3)
{
  v4 = a2;
  v5 = this;
  v7 = *(this + 12);
  v6 = *(this + 13);
  if (v7 == v6)
  {
LABEL_5:
    v8 = *(v5 + 112);
    if (v6 >= v8)
    {
      v11 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 4);
      v12 = v11 + 1;
      if ((v11 + 1) > 0x249249249249249)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v13 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 4);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x124924924924924)
      {
        v14 = 0x249249249249249;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        v15 = mdm::zone_mallocator::instance(this);
        v16 = pthread_rwlock_rdlock((v15 + 32));
        if (v16)
        {
          geo::read_write_lock::logFailure(v16, "read lock", v17);
        }

        v18 = malloc_type_zone_malloc(*v15, 112 * v14, 0x10200401E5C82A1uLL);
        atomic_fetch_add((v15 + 24), 1u);
        geo::read_write_lock::unlock((v15 + 32));
      }

      else
      {
        v18 = 0;
      }

      v19 = &v18[112 * v11];
      v20 = *(v5 + 152);
      *v19 = a3;
      v19[1] = v4;
      v19[2] = v20;
      v19[3] = *(v5 + 154);
      v19[4] = *(v5 + 159);
      *(v19 + 7) = 0;
      *(v19 + 8) = 0;
      *(v19 + 6) = 0;
      *(v19 + 11) = 0;
      *(v19 + 12) = 0;
      *(v19 + 10) = 0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      v10 = v19 + 112;
      *&v21 = v19 + 112;
      *(&v21 + 1) = &v18[112 * v14];
      v29 = v21;
      v22 = *(v5 + 96);
      v23 = *(v5 + 104);
      v24 = &v19[v22 - v23];
      if (v22 != v23)
      {
        v25 = *(v5 + 96);
        v26 = &v19[v22 - v23];
        do
        {
          *v26 = *v25;
          *(v26 + 3) = 0;
          *(v26 + 4) = 0;
          *(v26 + 2) = 0;
          v26[40] = *(v25 + 40);
          *(v26 + 1) = *(v25 + 16);
          *(v26 + 4) = *(v25 + 32);
          *(v25 + 16) = 0;
          *(v25 + 24) = 0;
          *(v25 + 32) = 0;
          *(v26 + 6) = 0;
          *(v26 + 7) = 0;
          *(v26 + 8) = 0;
          v26[72] = *(v25 + 72);
          *(v26 + 3) = *(v25 + 48);
          *(v26 + 8) = *(v25 + 64);
          *(v25 + 48) = 0;
          *(v25 + 56) = 0;
          *(v25 + 64) = 0;
          *(v26 + 10) = 0;
          *(v26 + 11) = 0;
          *(v26 + 12) = 0;
          v26[104] = *(v25 + 104);
          *(v26 + 5) = *(v25 + 80);
          *(v26 + 12) = *(v25 + 96);
          *(v25 + 80) = 0;
          *(v25 + 88) = 0;
          *(v25 + 96) = 0;
          v25 += 112;
          v26 += 112;
        }

        while (v25 != v23);
        do
        {
          std::allocator_traits<geo::allocator_adapter<md::LabelLineZSet,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::LabelLineZSet,void,0>(v22);
          v22 += 14;
        }

        while (v22 != v23);
      }

      v27 = *(v5 + 96);
      *(v5 + 96) = v24;
      *(v5 + 104) = v29;
      if (v27)
      {
        v28 = mdm::zone_mallocator::instance(this);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineZSet>(v28, v27);
      }
    }

    else
    {
      v9 = *(v5 + 152);
      *v6 = a3;
      *(v6 + 1) = a2;
      *(v6 + 2) = v9;
      *(v6 + 3) = *(v5 + 154);
      *(v6 + 4) = *(v5 + 159);
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 48) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 80) = 0;
      *(v6 + 8) = 0u;
      *(v6 + 24) = 0u;
      v10 = (v6 + 112);
      *(v5 + 104) = v6 + 112;
    }

    *(v5 + 104) = v10;
    return v10 - 112;
  }

  else
  {
    this = *(this + 12);
    while (this[1] != a2)
    {
      this += 112;
      if (this == v6)
      {
        goto LABEL_5;
      }
    }
  }

  return this;
}

void ggl::TransitNodeColorized::BasePipelineState::~BasePipelineState(ggl::TransitNodeColorized::BasePipelineState *this)
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

void md::TileSelectionLogic::_elevationBoundsForTile(md::TileSelectionLogic *this, const geo::QuadTile *a2, uint64_t a3)
{
  if (*(a2 + 368) != 1)
  {
    if ((*(a2 + 316) & 1) == 0)
    {
      *this = 0;
      *(this + 1) = 0;
      *(this + 16) = 1;
      return;
    }

    md::DaVinciGroundMetaData::queryMetaTileFromTile(&v40, *(*(a2 + 15) + 320));
    if (v40 && (v12 = *(v40 + 808), v12 != 1))
    {
      v13 = *(v40 + 169);
      v14 = *(a3 + 1) - v13;
      v15 = *(a3 + 1) - v13;
      if (v15)
      {
        v16 = *(a3 + 4) % (*(v40 + 172) << v14);
        v17 = *(a3 + 8) % (*(v40 + 176) << v14);
        v18 = *(v40 + 732);
        v19 = v15 - v18;
        v20 = v17 >> (v15 - v18);
        v21 = v16 >> v19;
        if (v18 < v14)
        {
          v22 = *(v40 + 732);
        }

        else
        {
          v22 = v14;
        }

        if (v18 < v14)
        {
          v23 = v20;
        }

        else
        {
          v23 = v17;
        }

        if (v18 < v14)
        {
          v24 = v21;
        }

        else
        {
          v24 = v16;
        }

        v25 = v18 - v22;
        if (v18 == v22)
        {
          v26 = 0;
          v27 = *(v40 + 808);
        }

        else
        {
          v26 = 0;
          v27 = *(v40 + 808);
          do
          {
            v26 += v27 * v27;
            v27 >>= 1;
            --v25;
          }

          while (v25);
        }

        v30 = v26 + v23 + v27 * v24;
        v31 = *(v40 + 724);
        v32 = *(v40 + 784);
        LOBYTE(v10) = *(v32 + 2 * v30);
        v33 = *(v40 + 728) - v31;
        if (v18 < v14)
        {
          v34 = *(v40 + 732);
        }

        else
        {
          v34 = v14;
        }

        if (v18 < v14)
        {
          v35 = v20;
        }

        else
        {
          v35 = v17;
        }

        if (v18 < v14)
        {
          v36 = v21;
        }

        else
        {
          v36 = v16;
        }

        v37 = v18 - v34;
        if (v18 == v34)
        {
          v38 = 0;
        }

        else
        {
          v38 = 0;
          do
          {
            v38 += v12 * v12;
            v12 >>= 1;
            --v37;
          }

          while (v37);
        }

        v28 = v31 + ((v10 * 0.0039216) * v33);
        LOBYTE(v11) = *(v32 + 2 * (v38 + v35 + v12 * v36) + 1);
        v29 = v31 + ((v11 * 0.0039216) * v33);
      }

      else
      {
        v28 = *(v40 + 724);
        v29 = *(v40 + 728);
      }

      v3 = v29;
      v7 = v28;
      v9 = 1;
    }

    else
    {
      v7 = 0.0;
      v9 = 0;
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v41);
    }

    v8 = *&v7 >> 8;
    goto LABEL_44;
  }

  v6 = *(a2 + 45);
  if (v6)
  {
    (*(*v6 + 48))(&v40);
    LOBYTE(v7) = v40;
    v8 = *(&v40 + 1) | ((*(&v40 + 5) | (HIBYTE(v40) << 16)) << 32);
    v3 = *&v41;
    v9 = v42;
LABEL_44:
    *this = LOBYTE(v7);
    *(this + 1) = v8;
    *(this + 7) = BYTE6(v8);
    *(this + 5) = WORD2(v8);
    *(this + 1) = v3;
    *(this + 16) = v9;
    return;
  }

  v39 = std::__throw_bad_function_call[abi:nn200100]();
  std::__shared_ptr_emplace<ggl::TransitNodeColorized::BasePipelineState>::__on_zero_shared(v39);
}

unsigned __int8 *std::__hash_table<std::__hash_value_type<gdc::TileZBoundsEntry,std::__list_iterator<std::pair<gdc::TileZBoundsEntry,geo::OrientedBox<double,3u,double,double>>,void *>>,std::__unordered_map_hasher<gdc::TileZBoundsEntry,std::__hash_value_type<gdc::TileZBoundsEntry,std::__list_iterator<std::pair<gdc::TileZBoundsEntry,geo::OrientedBox<double,3u,double,double>>,void *>>,gdc::TileZBoundsEntryHash,std::equal_to<gdc::TileZBoundsEntry>,true>,std::__unordered_map_equal<gdc::TileZBoundsEntry,std::__hash_value_type<gdc::TileZBoundsEntry,std::__list_iterator<std::pair<gdc::TileZBoundsEntry,geo::OrientedBox<double,3u,double,double>>,void *>>,std::equal_to<gdc::TileZBoundsEntry>,gdc::TileZBoundsEntryHash,true>,std::allocator<std::__hash_value_type<gdc::TileZBoundsEntry,std::__list_iterator<std::pair<gdc::TileZBoundsEntry,geo::OrientedBox<double,3u,double,double>>,void *>>>>::find<gdc::TileZBoundsEntry>(void *a1, geo::QuadTile *this)
{
  v4 = gdc::TileZBoundsEntryHash::operator()(this);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v12 == v6)
    {
      if (geo::QuadTile::operator==(i + 16, this) && *(i + 6) == *(this + 4) && *(i + 7) == *(this + 5))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

unint64_t gdc::TileZBoundsEntryHash::operator()(geo::QuadTile *this)
{
  if (*(this + 24) == 1)
  {
    geo::QuadTile::computeHash(this);
    *(this + 24) = 0;
  }

  v2 = *(this + 5);
  v3 = *(this + 4) - 0x61C8864680B583EBLL;
  if (*(this + 4) == 0.0)
  {
    v3 = 0x9E3779B97F4A7C15;
  }

  v4 = (((*(this + 2) - 0x61C8864680B583EBLL) >> 2) + ((*(this + 2) - 0x61C8864680B583EBLL) << 6) + v3) ^ (*(this + 2) - 0x61C8864680B583EBLL);
  v5 = *&v2 - 0x61C8864680B583EBLL;
  if (v2 == 0.0)
  {
    v5 = 0x9E3779B97F4A7C15;
  }

  return (v5 + (v4 << 6) + (v4 >> 2)) ^ v4;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignLightingConfigurationVertexData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignLightingConfigurationVertexData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignLightingConfigurationVertexData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>(void)::metadata >= 0x200)
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

uint64_t md::LabelLineSegmentImpl::vertexInfos(md::LabelLineSegmentImpl *this)
{
  v2 = *(this + 23);
  v3 = *(this + 10);
  v4 = *(this + 11);
  v5 = v4 - v3;
  v6 = (v4 - v3) >> 2;
  if (v2 <= v6)
  {
    if (v2 >= v6)
    {
      return *(this + 10);
    }

    v24 = v3 + 4 * v2;
LABEL_15:
    *(this + 11) = v24;
    return *(this + 10);
  }

  v7 = v2 - v6;
  v8 = *(this + 12);
  if (v7 <= (v8 - v4) >> 2)
  {
    memset_pattern16(*(this + 11), &unk_1B33B2540, 4 * v7);
    v24 = v4 + 4 * v7;
    goto LABEL_15;
  }

  v9 = v8 - v3;
  if (v9 >> 1 > v2)
  {
    v2 = v9 >> 1;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v10 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v2;
  }

  v11 = mdm::zone_mallocator::instance(this);
  v12 = pthread_rwlock_rdlock((v11 + 32));
  if (v12)
  {
    geo::read_write_lock::logFailure(v12, "read lock", v13);
  }

  v14 = malloc_type_zone_malloc(*v11, 4 * v10, 0x100004052888210uLL);
  atomic_fetch_add((v11 + 24), 1u);
  geo::read_write_lock::unlock((v11 + 32));
  v15 = &v14[v5];
  v16 = &v14[4 * v10];
  memset_pattern16(v15, &unk_1B33B2540, 4 * v7);
  v17 = &v15[4 * v7];
  v18 = *(this + 10);
  v19 = *(this + 11) - v18;
  v20 = &v15[-v19];
  v21 = memcpy(&v15[-v19], v18, v19);
  v22 = *(this + 10);
  *(this + 10) = v20;
  *(this + 11) = v17;
  *(this + 12) = v16;
  if (v22)
  {
    v23 = mdm::zone_mallocator::instance(v21);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelLineSegmentVertexInfo>(v23, v22);
  }

  return *(this + 10);
}

double gdc::GlobeTileUtils::boundsFromMercatorRect(uint64_t a1, double *a2, double a3, double a4)
{
  v7 = a2[1];
  v51 = a2[2] - *a2;
  v52 = *a2;
  v53 = a2[3] - v7;
  v54 = v7;
  v8 = (*a2 + v51 * 0.5) * 6.28318531;
  v9 = exp((v7 + v53 * 0.5) * 6.28318531 + -3.14159265);
  v10 = atan(v9) * 2.0 + -1.57079633;
  v11 = fmod(v8, 6.28318531);
  v12 = fmod(v11 + 6.28318531, 6.28318531) + -3.14159265;
  v13 = __sincos_stret(v10);
  v14 = 6378137.0 / sqrt(v13.__sinval * v13.__sinval * -0.00669437999 + 1.0);
  v15 = __sincos_stret(v12);
  *&v67 = v14 * v13.__cosval * v15.__cosval;
  *(&v67 + 1) = v14 * v13.__cosval * v15.__sinval;
  v68 = v13.__sinval * 0.99330562 * v14;
  gdc::GlobeTileUtils::mercatorToGeocentricRotation(&v62, *&v67, *(&v67 + 1), v68);
  v16 = 0;
  v69 = v62;
  v70 = v63;
  v17 = v64.i64[0];
  v71 = v64.i64[0];
  do
  {
    *&v62.i64[v16] = -*&v69.i64[v16];
    ++v16;
  }

  while (v16 != 3);
  v18 = v62;
  v59 = v62;
  v50 = v63;
  *&v60 = v63;
  *(&v60 + 1) = v17;
  v19 = gm::Quaternion<double>::operator*(&v59, &v67);
  v20 = 0;
  *v72.i64 = v19;
  v72.i64[1] = v21;
  v73 = v22;
  do
  {
    *&v62.i64[v20] = -*&v72.i64[v20];
    ++v20;
  }

  while (v20 != 3);
  v23 = 0;
  v64 = v18;
  v65 = v50;
  v66 = v17;
  v59 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v60 = xmmword_1B33B0520;
  v61 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
  do
  {
    v24 = fmod((v52 + v51 * vcvts_n_f32_u64(v23, 1uLL)) * 6.28318531, 6.28318531);
    v25 = fmod(v24 + 6.28318531, 6.28318531);
    v26 = __sincos_stret(v25 + -3.14159265);
    for (i = 0; i != 3; ++i)
    {
      v28 = exp((v54 + v53 * vcvts_n_f32_u64(i, 1uLL)) * 6.28318531 + -3.14159265);
      v29 = atan(v28);
      v30 = __sincos_stret(v29 * 2.0 + -1.57079633);
      v31 = 6378137.0 / sqrt(v30.__sinval * v30.__sinval * -0.00669437999 + 1.0);
      v32 = (v31 + a3) * v30.__cosval;
      v58[0] = v32 * v26.__cosval;
      v58[1] = v32 * v26.__sinval;
      v58[2] = (v31 * 0.99330562 + a3) * v30.__sinval;
      v33 = (v31 + a4) * v30.__cosval;
      v57[0] = v33 * v26.__cosval;
      v57[1] = v33 * v26.__sinval;
      v57[2] = (v31 * 0.99330562 + a4) * v30.__sinval;
      v72 = v64;
      v73 = v65;
      v74 = v17;
      v34 = gm::Quaternion<double>::operator*(&v72, v58);
      v35 = 0;
      v75 = v34;
      v76 = v36;
      v77 = v37;
      do
      {
        *&v78.i64[v35] = *(&v75 + v35 * 8) + *&v62.i64[v35];
        ++v35;
      }

      while (v35 != 3);
      v55 = v78;
      v56 = v79;
      v72 = v64;
      v73 = v65;
      v74 = v17;
      v38 = gm::Quaternion<double>::operator*(&v72, v57);
      v39 = 0;
      v75 = v38;
      v76 = v40;
      v77 = v41;
      do
      {
        *&v78.i64[v39] = *(&v75 + v39 * 8) + *&v62.i64[v39];
        ++v39;
      }

      while (v39 != 3);
      v42 = 0;
      v72 = v78;
      v73 = v79;
      do
      {
        v43 = &v59.i64[v42];
        v44 = *&v55.i64[v42];
        *v43 = fmin(v44, *&v59.i64[v42]);
        v43[3] = fmax(*(&v60 + v42 * 8 + 8), v44);
        ++v42;
      }

      while (v42 != 3);
      for (j = 0; j != 3; ++j)
      {
        v46 = &v59.i64[j];
        v47 = *&v72.i64[j];
        *v46 = fmin(v47, *&v59.i64[j]);
        v46[3] = fmax(*(&v60 + j * 8 + 8), v47);
      }
    }

    ++v23;
  }

  while (v23 != 3);
  *a1 = v67;
  *(a1 + 16) = v68;
  *(a1 + 24) = v69;
  *(a1 + 40) = v70;
  *(a1 + 48) = v17;
  v48 = v60;
  *(a1 + 56) = v59;
  *(a1 + 72) = v48;
  result = *v61.i64;
  *(a1 + 88) = v61;
  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>();
    unk_1EB83BED0 = 0x4A991B37E344929BLL;
    qword_1EB83BED8 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>]";
    qword_1EB83BEE0 = 101;
  }
}

double gdc::GlobeTileUtils::mercatorToGeocentricRotation(uint64_t a1, long double a2, long double a3, long double a4)
{
  v8 = sqrt(a3 * a3 + a2 * a2);
  v9 = atan2(a4, v8 * 0.996647189);
  v10 = __sincos_stret(v9);
  v11 = atan2(a4 + v10.__sinval * v10.__sinval * 42841.3115 * v10.__sinval, v8 + v10.__cosval * v10.__cosval * -42697.6727 * v10.__cosval);
  __asm { FMOV            V1.2D, #0.5 }

  v66[0] = _Q1;
  v66[1] = _Q1;
  v59 = xmmword_1B33B05E0;
  v60 = 0.0;
  v17 = v11 * 0.5;
  v18 = sin(v11 * 0.5);
  for (i = 0; i != 24; i += 8)
  {
    *(&v62 + i) = *(&v59 + i) * v18;
  }

  v20 = v62;
  v21 = v63;
  v22 = v64;
  v23 = cos(v17);
  v24 = 0;
  v62 = v20;
  v63 = v21;
  v64 = v22;
  v65 = v23;
  do
  {
    *(&v59 + v24) = -*(&v62 + v24);
    v24 += 8;
  }

  while (v24 != 24);
  v61 = v23;
  v72 = 0uLL;
  v73 = 0x3FF0000000000000;
  v25 = gm::Quaternion<double>::operator*(&v59, &v72);
  v26 = 0;
  *&v74 = v25;
  *(&v74 + 1) = v27;
  v75 = v28;
  v29 = 0.0;
  do
  {
    v29 = v29 + *(&v74 + v26) * *(&v74 + v26);
    v26 += 8;
  }

  while (v26 != 24);
  v30 = 0;
  v31 = 1.0 / sqrt(v29);
  do
  {
    *(&v56 + v30) = *(&v74 + v30) * v31;
    v30 += 8;
  }

  while (v30 != 24);
  v32 = atan2(a3, a2) * 0.5;
  v33 = sin(v32);
  for (j = 0; j != 24; j += 8)
  {
    *(&v59 + j) = *(&v56 + j) * v33;
  }

  v35 = v59;
  v36 = v60;
  v37 = cos(v32);
  v38 = 0;
  v59 = v35;
  v60 = v36;
  v61 = v37;
  do
  {
    *(&v56 + v38) = *(&v59 + v38) * v23;
    v38 += 8;
  }

  while (v38 != 24);
  v39 = 0;
  v72 = v56;
  v73 = *&v57;
  do
  {
    *(&v56 + v39) = *(&v62 + v39) * v37;
    v39 += 8;
  }

  while (v39 != 24);
  v40 = 0;
  v70 = v56;
  v71 = v57;
  do
  {
    *(&v56 + v40) = *(&v70 + v40) + *(&v72 + v40);
    v40 += 8;
  }

  while (v40 != 24);
  v41 = 0;
  v74 = v56;
  v75 = v57;
  *&v68 = -(*(&v35 + 1) * v22 - v36 * v21);
  *(&v68 + 1) = -(v36 * v20 - *&v35 * v22);
  v69 = -(*&v35 * v21 - *(&v35 + 1) * v20);
  do
  {
    *(&v56 + v41) = *(&v68 + v41) + *(&v74 + v41);
    v41 += 8;
  }

  while (v41 != 24);
  v42 = 0;
  v43 = v56;
  v44 = 0.0;
  v45 = v57;
  do
  {
    v44 = v44 + *(&v59 + v42) * *(&v62 + v42);
    v42 += 8;
  }

  while (v42 != 24);
  v46 = 0;
  v47 = -(v44 - v23 * v37);
  v58 = v47;
  do
  {
    *(&v74 + v46) = *(v66 + v46) * v47;
    v46 += 8;
  }

  while (v46 != 24);
  v48 = 0;
  v70 = v74;
  v71 = v75;
  do
  {
    *(&v74 + v48) = *(&v56 + v48) * 0.5;
    v48 += 8;
  }

  while (v48 != 24);
  v49 = 0;
  v68 = v74;
  v69 = v75;
  do
  {
    *(&v74 + v49) = *(&v68 + v49) + *(&v70 + v49);
    v49 += 8;
  }

  while (v49 != 24);
  v50 = 0;
  v72 = v74;
  v73 = *&v75;
  v51 = v45 * 0.5;
  v67[0] = *(&v43 + 1) * 0.5 - v51;
  v67[1] = v51 - *&v43 * 0.5;
  v67[2] = *&v43 * 0.5 - *(&v43 + 1) * 0.5;
  do
  {
    *(&v74 + v50 * 8) = v67[v50] + *(&v72 + v50 * 8);
    ++v50;
  }

  while (v50 != 3);
  v52 = 0;
  v53 = v75;
  v54 = 0.0;
  do
  {
    v54 = v54 + *(v66 + v52) * *(&v56 + v52);
    v52 += 8;
  }

  while (v52 != 24);
  *a1 = v74;
  result = -(v54 + v47 * -0.5);
  *(a1 + 16) = v53;
  *(a1 + 24) = result;
  return result;
}

void ggl::TransitNode::BaseMesh::~BaseMesh(ggl::TransitNode::BaseMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

double geo::OrientedBox<double,3u,double,double>::operator=(uint64_t a1, uint64_t a2)
{
  for (i = 24; i != 48; i += 8)
  {
    *(a1 + i) = *(a2 + i);
  }

  v3 = 0;
  *(a1 + 48) = *(a2 + 48);
  do
  {
    *(a1 + v3) = *(a2 + v3);
    v3 += 8;
  }

  while (v3 != 24);
  for (j = 56; j != 80; j += 8)
  {
    *(a1 + j) = *(a2 + j);
  }

  do
  {
    result = *(a2 + j);
    *(a1 + j) = result;
    j += 8;
  }

  while (j != 104);
  return result;
}

double geo::Frustum<double>::transformed(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 48);
  do
  {
    v7 = 0;
    v8 = (a2 + 32 * v5);
    v67 = *v8;
    v68 = *(v8 + 2);
    v9 = *(v8 + 3);
    do
    {
      *(&v51 + v7) = -*(&v67 + v7);
      v7 += 8;
    }

    while (v7 != 24);
    v10 = 0;
    v64 = v51;
    v65 = v52;
    do
    {
      *(&v51 + v10) = *(&v64 + v10) * v9;
      v10 += 8;
    }

    while (v10 != 24);
    v49 = v51;
    v50 = v52;
    *&v47 = gm::Quaternion<double>::operator*(a3 + 24, &v67);
    *(&v47 + 1) = v11;
    v48 = v12;
    v51 = *(a3 + 24);
    *&v52 = *(a3 + 40);
    *(&v52 + 1) = v6;
    v13 = gm::Quaternion<double>::operator*(&v51, &v49);
    v14 = 0;
    *&v69 = v13;
    *(&v69 + 1) = v15;
    v70 = v16;
    do
    {
      *(&v64 + v14) = *(&v69 + v14) + *(a3 + v14);
      v14 += 8;
    }

    while (v14 != 24);
    v17 = 0;
    v51 = v64;
    *&v52 = v65;
    v18 = 0.0;
    do
    {
      v18 = v18 + *(&v51 + v17) * *(&v47 + v17);
      v17 += 8;
    }

    while (v17 != 24);
    v19 = &v63[2 * v5];
    *v19 = v47;
    *(v19 + 2) = v48;
    *(v19 + 3) = -v18;
    ++v5;
  }

  while (v5 != 6);
  v20 = 0;
  v21 = a2 + 192;
  do
  {
    v64 = *(a3 + 24);
    v65 = *(a3 + 40);
    v66 = v6;
    v22 = gm::Quaternion<double>::operator*(&v64, v21 + 24 * v20);
    v23 = 0;
    *&v67 = v22;
    *(&v67 + 1) = v24;
    v68 = v25;
    do
    {
      *(&v69 + v23) = *(&v67 + v23) + *(a3 + v23);
      v23 += 8;
    }

    while (v23 != 24);
    v26 = &v51 + 24 * v20;
    v27 = v70;
    *v26 = v69;
    *(v26 + 2) = v27;
    ++v20;
  }

  while (v20 != 8);
  v28 = v63[9];
  v29 = v63[10];
  v30 = v63[7];
  a1[8] = v63[8];
  a1[9] = v28;
  v31 = v63[11];
  a1[10] = v29;
  a1[11] = v31;
  v32 = v63[5];
  v33 = v63[6];
  v34 = v63[3];
  a1[4] = v63[4];
  a1[5] = v32;
  a1[6] = v33;
  a1[7] = v30;
  v35 = v63[1];
  v36 = v63[2];
  v37 = v62;
  *a1 = v63[0];
  a1[1] = v35;
  a1[2] = v36;
  a1[3] = v34;
  v38 = v60;
  v39 = v61;
  v40 = v58;
  a1[20] = v59;
  a1[21] = v38;
  a1[22] = v39;
  a1[23] = v37;
  v41 = v56;
  v42 = v57;
  a1[16] = v55;
  a1[17] = v41;
  a1[18] = v42;
  a1[19] = v40;
  v43 = v52;
  a1[12] = v51;
  a1[13] = v43;
  result = *&v53;
  v45 = v54;
  a1[14] = v53;
  a1[15] = v45;
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::Lighting::LightConfigurationVertex>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[288];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_8Lighting24LightConfigurationVertexEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A147C8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::__hash_table<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,md::LabelFeaturePoolTileInfo::FeatureHash<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,md::LabelFeaturePoolTileInfo::FeatureEqual<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>>,geo::allocator_adapter<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,mdm::zone_mallocator>>::__emplace_unique_key_args<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator> const&>(float *a1, uint64_t a2, void **a3)
{
  v6 = a2 + 8;
  if (!a2)
  {
    v6 = 0;
  }

  v7 = *(*(v6 + 8) + 72);
  v8 = *(a1 + 1);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v3 = *(*(v6 + 8) + 72);
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }

    v10 = *(*a1 + 8 * v3);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v7)
        {
          v13 = i[2];
          if (v13)
          {
            v14 = v13 + 8;
          }

          else
          {
            v14 = 0;
          }

          if (*(*(v14 + 8) + 72) == v7)
          {
            return;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= v8)
            {
              v12 %= v8;
            }
          }

          else
          {
            v12 &= v8 - 1;
          }

          if (v12 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v15 = mdm::zone_mallocator::instance(a1);
  prime = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *>>(v15);
  v17 = prime;
  *prime = 0;
  *(prime + 1) = v7;
  *(prime + 2) = 0;
  v18 = *a3;
  *(prime + 2) = *a3;
  if (v18)
  {
    ++*v18;
  }

  v19 = (*(a1 + 5) + 1);
  v20 = a1[12];
  if (!v8 || (v20 * v8) < v19)
  {
    v21 = 1;
    if (v8 >= 3)
    {
      v21 = (v8 & (v8 - 1)) != 0;
    }

    v22 = v21 | (2 * v8);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    if (*&v24 == 1)
    {
      v24 = 2;
    }

    else if ((*&v24 & (*&v24 - 1)) != 0)
    {
      prime = std::__next_prime(*&v24);
      v24 = prime;
    }

    v8 = *(a1 + 1);
    if (*&v24 > v8)
    {
      goto LABEL_37;
    }

    if (*&v24 < v8)
    {
      prime = vcvtps_u32_f32(*(a1 + 5) / a1[12]);
      if (v8 < 3 || (v31 = vcnt_s8(v8), v31.i16[0] = vaddlv_u8(v31), v31.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v32 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v32;
        }
      }

      if (*&v24 <= prime)
      {
        v24 = prime;
      }

      if (*&v24 >= v8)
      {
        v8 = *(a1 + 1);
      }

      else
      {
        if (v24)
        {
LABEL_37:
          v25 = mdm::zone_mallocator::instance(prime);
          v26 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(v25, *&v24);
          std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> **,0>(a1, v26);
          v27 = 0;
          *(a1 + 1) = v24;
          do
          {
            *(*a1 + 8 * v27++) = 0;
          }

          while (*&v24 != v27);
          v28 = *(a1 + 3);
          if (v28)
          {
            v29 = v28[1];
            v30 = vcnt_s8(v24);
            v30.i16[0] = vaddlv_u8(v30);
            if (v30.u32[0] > 1uLL)
            {
              if (v29 >= *&v24)
              {
                v29 %= *&v24;
              }
            }

            else
            {
              v29 &= *&v24 - 1;
            }

            *(*a1 + 8 * v29) = a1 + 6;
            v33 = *v28;
            if (*v28)
            {
              do
              {
                v34 = v33[1];
                if (v30.u32[0] > 1uLL)
                {
                  if (v34 >= *&v24)
                  {
                    v34 %= *&v24;
                  }
                }

                else
                {
                  v34 &= *&v24 - 1;
                }

                if (v34 != v29)
                {
                  v35 = *a1;
                  if (!*(*a1 + 8 * v34))
                  {
                    *(v35 + 8 * v34) = v28;
                    goto LABEL_59;
                  }

                  *v28 = *v33;
                  *v33 = **(v35 + 8 * v34);
                  **(v35 + 8 * v34) = v33;
                  v33 = v28;
                }

                v34 = v29;
LABEL_59:
                v28 = v33;
                v33 = *v33;
                v29 = v34;
              }

              while (v33);
            }
          }

          v8 = v24;
          goto LABEL_63;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> **,0>(a1, 0);
        v8 = 0;
        *(a1 + 1) = 0;
      }
    }

LABEL_63:
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }
  }

  v36 = *a1;
  v37 = *(*a1 + 8 * v3);
  if (v37)
  {
    *v17 = *v37;
LABEL_76:
    *v37 = v17;
    goto LABEL_77;
  }

  *v17 = *(a1 + 3);
  *(a1 + 3) = v17;
  *(v36 + 8 * v3) = a1 + 6;
  if (*v17)
  {
    v38 = *(*v17 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v38 >= v8)
      {
        v38 %= v8;
      }
    }

    else
    {
      v38 &= v8 - 1;
    }

    v37 = (*a1 + 8 * v38);
    goto LABEL_76;
  }

LABEL_77:
  ++*(a1 + 5);
}

uint64_t geo::Intersect::encloses<double>(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a1;
  do
  {
    v5 = 0;
    v6 = *(a1 + v3 + 16);
    v23 = *(a1 + v3);
    v24 = v6;
    v7 = a2;
    do
    {
      v8 = v7 + 3;
      if (*(&v23 + v5) < 0.0)
      {
        v8 = v7;
      }

      *(&v25 + v5++) = *v8;
      ++v7;
    }

    while (v5 != 3);
    v9 = 0;
    v21 = v25;
    v22 = v26;
    v10 = 0.0;
    do
    {
      v10 = v10 + *(v4 + v9) * *(&v21 + v9);
      v9 += 8;
    }

    while (v9 != 24);
    v11 = *(a1 + v3 + 24);
    v12 = v11 + v10;
    if (v12 < 0.0)
    {
      break;
    }

    for (i = 0; i != 24; i += 8)
    {
      *(&v25 + i) = -*(v4 + i);
    }

    v14 = 0;
    v23 = v25;
    v24 = v26;
    v15 = a2;
    do
    {
      v16 = v15 + 3;
      if (*(&v23 + v14) < 0.0)
      {
        v16 = v15;
      }

      *(&v25 + v14++) = *v16;
      ++v15;
    }

    while (v14 != 3);
    v17 = 0;
    v18 = 0.0;
    do
    {
      v18 = v18 + *(v4 + v17) * *(&v25 + v17);
      v17 += 8;
    }

    while (v17 != 24);
    if (v11 + v18 >= 0.0)
    {
      ++v2;
    }

    v3 += 32;
    v4 += 32;
  }

  while (v3 != 192);
  if (v2 == 6)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (v12 < 0.0)
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

void md::RouteRenderLayer::~RouteRenderLayer(md::RouteRenderLayer *this)
{
  md::RouteRenderLayer::~RouteRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29F17C0;
  v3 = (this + 64);
  v2 = *(this + 8);
  v4 = *v2;
  v5 = v2[1];
  while (v4 != v5)
  {
    v6 = *v4;
    v7 = *(*v4 + 176);
    if (v7)
    {
      [v7 stop];
      v6 = *v4;
    }

    v8 = v6[23];
    if (v8)
    {
      [v8 stop];
      v6 = *v4;
    }

    v9 = v6[24];
    if (v9)
    {
      [v9 stop];
      v6 = *v4;
    }

    v10 = v6[87];
    if (v10)
    {
      [v10 stop];
    }

    v4 += 16;
  }

  v11 = *(this + 15);
  *(this + 15) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 9);
  *(this + 9) = 0;
  if (v12)
  {
    (*(*v12 + 48))(v12);
  }

  std::unique_ptr<md::RouteLayoutInfo>::reset[abi:nn200100](v3, 0);
  std::unique_ptr<md::CRouteRenderResources>::reset[abi:nn200100](this + 7, 0);
  *this = &unk_1F2A16858;
  v13 = *(this + 1);
  if (v13)
  {
    *(this + 2) = v13;
    operator delete(v13);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_8Lighting24LightConfigurationVertexEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A147C8;
  a2[1] = v2;
  return result;
}

void md::StandardRouteOverlayCache::~StandardRouteOverlayCache(md::StandardRouteOverlayCache *this)
{
  *this = off_1F2A05530;
  std::set<objc_object  {objcproto14VKRouteOverlay}*>::set[abi:nn200100](&v13, this + 9);
  v2 = v13;
  if (v13 != v14)
  {
    do
    {
      v3 = v2[4];
      (*(*this + 96))(this, v3, 1);

      v4 = v2[1];
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
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v14);
  }

  v8 = *(this + 2);
  v7 = *(this + 3);
  if (v7 != v8)
  {
    v9 = v7 - 3;
    v10 = v7 - 3;
    v11 = v7 - 3;
    do
    {
      v12 = *v11;
      v11 -= 3;
      (*v12)(v10);
      v9 -= 3;
      v6 = v10 == v8;
      v10 = v11;
    }

    while (!v6);
  }

  *(this + 3) = v8;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v14[0]);
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(this + 136);
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(this + 96);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 7));
  v13 = (this + 16);
  std::vector<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&v13);
}

{
  md::StandardRouteOverlayCache::~StandardRouteOverlayCache(this);

  JUMPOUT(0x1B8C62190);
}

void sub_1B29A6C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(v10 + 136);
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<ggl::Texture2D>>>>::~__hash_table(v10 + 96);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v10 + 80));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v10 + 56));
  a10 = (v10 + 16);
  std::vector<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](&a10);

  _Unwind_Resume(a1);
}

unsigned __int8 *std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::find<geo::QuadTile>(void *a1, unsigned __int8 *a2)
{
  if (a2[24])
  {
    v3 = (a2[1] + ((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583EBLL);
    v4 = (*(a2 + 1) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583EBLL) ^ v3;
    v5 = (*(a2 + 2) + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
    *(a2 + 2) = v5;
    a2[24] = 0;
  }

  else
  {
    v5 = *(a2 + 2);
  }

  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v6)
    {
      v9 = v5 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v5 == v12)
    {
      if (geo::QuadTile::operator==(i + 16, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v6)
        {
          v12 %= *&v6;
        }
      }

      else
      {
        v12 &= *&v6 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_1B29A6F3C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 120);
  *(v1 + 120) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(v1 + 72);
  *(v1 + 72) = 0;
  if (v5)
  {
    (*(*v5 + 48))(v5);
  }

  std::unique_ptr<md::RouteLayoutInfo>::reset[abi:nn200100](v2, 0);
  std::unique_ptr<md::CRouteRenderResources>::reset[abi:nn200100]((v1 + 56), 0);
  *v1 = &unk_1F2A16858;
  v6 = *(v1 + 8);
  if (v6)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

BOOL geo::QuadTile::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[24] == 1)
  {
    v7 = a2;
    v8 = a1;
    geo::QuadTile::computeHash(a1);
    a2 = v7;
    a1 = v8;
    v8[24] = 0;
  }

  v2 = *(a1 + 2);
  if (a2[24])
  {
    v5 = (((*a2 - 0x61C8864680B583EBLL) << 6) + ((*a2 - 0x61C8864680B583EBLL) >> 2) + a2[1] - 0x61C8864680B583EBLL) ^ (*a2 - 0x61C8864680B583EBLL);
    v6 = (*(a2 + 1) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583EBLL) ^ v5;
    v3 = (*(a2 + 2) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
    *(a2 + 2) = v3;
    a2[24] = 0;
  }

  else
  {
    v3 = *(a2 + 2);
  }

  return v2 == v3 && *a1 == *a2 && a1[1] == a2[1] && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(void)::metadata >= 0x200)
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

uint64_t std::deque<geo::QuadTile>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 64;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 128;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::set<objc_object  {objcproto14VKRouteOverlay}*>::set[abi:nn200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<objc_object  {objcproto14VKRouteOverlay}*>::__emplace_hint_unique_key_args<objc_object  {objcproto14VKRouteOverlay}*,objc_object  {objcproto14VKRouteOverlay} const&>(a1, v3, v5[4]);
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

void md::LabelFeatureThunk<md::UniLineLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>::add(std::__shared_weak_count *a1, uint64_t *a2)
{
  shared_owners = a1->__shared_owners_;
  std::mutex::lock((shared_owners + 8));
  v5 = a2[1];
  if (v5 && (v5 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  v7[0] = a2;
  v7[1] = v6;
  v8 = v5;
  std::vector<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,geo::allocator_adapter<std::pair<GeoCodecsFeature const*,std::shared_ptr<geo::codec::VectorTile>>,mdm::zone_mallocator>>::push_back[abi:nn200100](a1 + 1, v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  std::mutex::unlock((shared_owners + 8));
}

void sub_1B29A7550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  std::mutex::unlock((v12 + 8));
  _Unwind_Resume(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>();
    *algn_1EB83C108 = 0x7EE4E2CB5D22239;
    qword_1EB83C110 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>]";
    qword_1EB83C118 = 90;
  }
}

void *std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>>>::__emplace_unique_key_args<md::TileSelectionTileSetType,std::pair<md::TileSelectionTileSetType,gdc::TileSelectionResults>>(void *result, unsigned __int16 a2)
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

void sub_1B29A7A44(_Unwind_Exception *a1)
{
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 80);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 32);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleSunMatrixData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleSunMatrixData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignStyleSunMatrixData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void std::vector<geo::_retain_ptr<objc_object  {objcproto14VKRouteOverlay}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      v7 = v4 - 24;
      v8 = v4 - 24;
      do
      {
        v9 = *v8;
        v8 -= 24;
        (*v9)(v7);
        v6 -= 24;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::ElevationContext,md::StyleLogicContext>(void *a1, void *a2)
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

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xE42D19AFCA302E68);
  if (result && (v11 = result[5], *(v11 + 8) == 0xE42D19AFCA302E68))
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

uint64_t std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__vallocate[abi:nn200100](a1, (v4 - *a2) >> 3);
    v5 = *(a1 + 8);
    do
    {
      v6 = *v3++;
      *v5++ = v6;
    }

    while (v3 != v4);
    *(a1 + 8) = v5;
  }

  return a1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleSunMatrix>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[313];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci14StyleSunMatrixEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A14558;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t md::Logic<md::TileSelectionLogic,md::TileSelectionContext,md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::StyleLogicContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x64780CBD71DF7CF5)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::CameraContext,md::ElevationContext,md::StyleLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::CameraContext,md::ElevationContext,md::StyleLogicContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

void sub_1B29A7F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = RouteRenderLayerObserverProxy;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t md::LabelLinePosition::getPointCoordinateAtOffset(uint64_t a1, int a2, uint64_t a3)
{
  if (!*a1)
  {
    return 0;
  }

  if (*(a1 + 40) != *(*a1 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 34);
  if (v5 < 0)
  {
    return 0;
  }

  LODWORD(v8) = *(a1 + 32);
  v9 = (a2 >> 31) | 1;
  v10 = a2;
  while (1)
  {
    v11 = v4[8];
    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = -v10;
    }

    v13 = v12 + v5;
    if (v12 + v5 < 0)
    {
      v14 = v13 + 1;
      goto LABEL_13;
    }

    if ((*(**v4 + 16))() > v13)
    {
      break;
    }

    v14 = v13 - (*(**v4 + 16))();
    v11 = v4[8];
LABEL_13:
    if (v11)
    {
      v10 = v14;
    }

    else
    {
      v10 = -v14;
    }

    v8 = (v8 + v9);
    v15 = *(*(a1 + 16) + 8);
    if (v15)
    {
      v16 = (*(*(a1 + 16) + 16) - v15) >> 4 > v8;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      return 0;
    }

    v4 = (v15 + 16 * v8);
    v5 = 0;
    if (a2 < 0)
    {
      if (v4[8])
      {
        goto LABEL_25;
      }
    }

    else if ((v4[8] & 1) == 0)
    {
LABEL_25:
      v5 = (*(**v4 + 16))() - 1;
    }
  }

  *a3 = v8;
  *(a3 + 2) = v13;
  result = 1;
  *(a3 + 4) = 0;
  return result;
}

uint64_t md::LabelLinePosition::moveToNextPoint(md::LabelLinePosition *this)
{
  result = md::LabelLinePosition::getPointCoordinateAtOffset(this, 1, this + 32);
  if (result)
  {
    v3 = *(this + 16);
    v4 = *(*(this + 2) + 8);
    v5 = *(*(this + 2) + 16) - v4;
    v6 = v4 + 16 * v3;
    if (v3 >= v5 >> 4)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  *(this + 3) = v6;
  return result;
}

void md::TileSelectionLogic::runBeforeLayoutAtVariableRate(uint64_t a1, md::LayoutContext *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  *(a4 + 128) = 0;
  if (*(v9 + 82) == 1)
  {
    v10 = *(a1 + 288);
    v11 = (a1 + 296);
    if (v10 == (a1 + 296))
    {
LABEL_3:
      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(a1 + 296));
      *(a1 + 296) = 0;
      *(a1 + 304) = 0;
      *(a1 + 288) = v11;
      goto LABEL_4;
    }

    while (1)
    {
      if (*(v10 + 25) == 5)
      {
        goto LABEL_10;
      }

      if (!*(v10 + 25))
      {
        break;
      }

LABEL_11:
      v12 = v10[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v10[2];
          v14 = *v13 == v10;
          v10 = v13;
        }

        while (!v14);
      }

      v10 = v13;
      if (v13 == v11)
      {
        goto LABEL_3;
      }
    }

    *(a4 + 128) = 1;
LABEL_10:
    md::TileSelectionLogic::globalPropertiesDidChange(a1, v9);
    goto LABEL_11;
  }

LABEL_4:
  std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,gdc::TileSelectionResults>>>::clear(a4 + 48);
  geo::linear_set<md::TileSelectionTileSetType,std::less<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>,std::vector<md::TileSelectionTileSetType>>::operator=((a4 + 24), a1 + 264);
  *(a1 + 316) = *v8;
  *(a1 + 320) = *(v8 + 16) * *(v8 + 20);
  *(a4 + 129) = *(a1 + 328);

  md::TileSelectionLogic::processActiveTileSelection(a1, (a1 + 264), (a4 + 48), v7, a4, a2);
}

void std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(*a1);
    std::__tree<VKPolylineGroupOverlay * {__strong}>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci14StyleSunMatrixEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14558;
  a2[1] = v2;
  return result;
}

void md::TileSelectionLogic::globalPropertiesDidChange(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v2 = atomic_load((*(*a2 + 16) + 2784));
    if (v2)
    {
      gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v11, *(*a2 + 16));
      v5 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }

      if (v5)
      {
        gss::StylesheetManager<gss::PropertyID>::styleGlobalProperties(&v11, *(*a2 + 16));
        v6 = -*(v11 + 208);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
        }

        v7 = 0;
        v8 = v6;
        v9 = a1 + 128;
        do
        {
          v10 = *(v9 + 8 * md::TileSelectionTileSetTypeList[v7]);
          if (v10)
          {
            gdc::TileSelector::setLodBias(v10, v8);
          }

          ++v7;
        }

        while (v7 != 9);
      }
    }
  }
}

void md::LabelStyleCache::styleQueryForFeatureAttributes(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  md::createFeatureAttributeSet(&v26, a3);
  v7 = *a2;
  if (!*a2)
  {
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_38;
  }

  v24[0] = 0;
  v24[1] = 0;
  v25 = 256;
  if (a4)
  {
    v8 = *(a4 + 23);
    if (v8 < 0)
    {
      if (!a4[1])
      {
        goto LABEL_31;
      }
    }

    else if (!*(a4 + 23))
    {
      goto LABEL_31;
    }

    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      if (v10)
      {
        LOBYTE(v8) = *(a4 + 23);
LABEL_12:
        if ((v8 & 0x80) != 0)
        {
          v11 = a4[1];
          if (v11 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          a4 = *a4;
        }

        else
        {
          v11 = v8;
        }

        if (v11 >= 0x17)
        {
          operator new();
        }

        v23 = v11;
        if (v11)
        {
          memmove(&__dst, a4, v11);
        }

        *(&__dst + v11) = 0;
        v12 = *(*a2 + 16);
        v13 = *(*a2 + 24);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = *(v12 + 88);
        if (v14 && (v15 = std::__hash_table<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,std::__unordered_map_equal<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,std::hash<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,true>,geo::allocator_adapter<std::__hash_value_type<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::find<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>(v14, &__dst)) != 0)
        {
          v16 = *(v15 + 10);
        }

        else
        {
          LOWORD(v16) = -1;
        }

        *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v24, 0x10006u) = v16;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

        if (v23 < 0)
        {
          operator delete(__dst);
        }
      }
    }

    else if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_31:
  LOWORD(__dst) = 0;
  if (gss::FeatureAttributeSet::getValueForAttributeKey(v26, v27, 65557, &__dst))
  {
    v17 = __dst;
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v24, 0x10015u) = v17;
  }

  v21 = 0;
  if (gss::FeatureAttributeSet::getValueForAttributeKey(v26, v27, 65538, &v21))
  {
    v18 = v21;
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v24, 0x10002u) = v18;
  }

  v20 = 0;
  if (gss::FeatureAttributeSet::getValueForAttributeKey(v26, v27, 93, &v20))
  {
    v19 = v20;
    *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v24, 0x5Du) = v19;
  }

  gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(a1, *a2, &v26, v24);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v24);
LABEL_38:
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v26);
}

void sub_1B29A8778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&a16);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a19);
  _Unwind_Resume(a1);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>();
    unk_1EB83BF80 = 0x4ED66455113F81E3;
    qword_1EB83BF88 = "md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>]";
    qword_1EB83BF90 = 97;
  }
}

void md::DaVinciGroundMetaData::queryMetaTileFromTile(md::DaVinciGroundMetaData *this, const geo::QuadTile *a2)
{
  (*(**a2 + 16))(v9);
  if (v10 == 1)
  {
    gdc::Tiled::mapDataKeyFromTile(v6, 0, v9, 51, *(*(a2 + 2) + 16));
    gdc::LayerDataStore::get(v5, *(a2 + 1), v6);
    v4 = v5[1];
    *this = v5[0];
    *(this + 1) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    if (v7 != v8)
    {
      free(v7);
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(void)::metadata >= 0x200)
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

uint64_t gdc::ResourceManager::resourceTileForTile@<X0>(uint64_t this@<X0>, const geo::QuadTile *a2@<X2>, int a3@<W1>, _BYTE *a4@<X8>)
{
  v4 = *(this + 32);
  v5 = *(this + 40);
  while (v4 != v5)
  {
    if (*v4 == a3)
    {
      if (v4 != v5)
      {
        return (*(**(v4 + 1) + 56))(*(v4 + 1), a2);
      }

      break;
    }

    v4 += 8;
  }

  *a4 = 0;
  a4[32] = 0;
  return this;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignStyleTransitionToFlatData>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignStyleTransitionToFlatData>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignStyleTransitionToFlatData::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void std::default_delete<md::ManeuverPointSharedResources>::operator()[abi:nn200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

uint64_t md::TiledGEOResourceFetcher::resourceTileForTile@<X0>(uint64_t this@<X0>, const geo::QuadTile *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 768);
  if (!v3)
  {
    goto LABEL_8;
  }

  if ((*(this + 760) & 1) == 0)
  {
    LOBYTE(v3) = 0;
LABEL_8:
    *a3 = 0;
    goto LABEL_6;
  }

  v4 = *(a2 + 1);
  v5 = *(a2 + 4);
  v6 = *a2;
  v7 = v4 - *(this + 756);
  if (v7 < 1)
  {
    v8 = *(a2 + 2);
    v10 = *(a2 + 24);
    goto LABEL_13;
  }

  if (*(a2 + 1))
  {
    v8 = 0;
    if (v4 >= v7)
    {
      v9 = (v4 - *(this + 756));
    }

    else
    {
      v9 = *(a2 + 1);
    }

    LOBYTE(v4) = v4 - v9;
    v5 = vshl_s32(v5, vneg_s32(vdup_n_s32(v9)));
    v10 = 1;
LABEL_13:
    if (v4)
    {
      v11 = *(this + 752);
      v4 = v4;
      do
      {
        if (v11 > v4)
        {
          break;
        }

        v12 = *(this + 728);
        v13 = *(this + 736);
        while (v12 != v13)
        {
          v21 = *v12;
          v22[0] = *(v12 + 2);
          if (v21 <= v4 && DWORD1(v21) >= v4)
          {
            v15 = 0;
            if (v4 >= (v4 - v21))
            {
              v16 = (v4 - v21);
            }

            else
            {
              v16 = v4;
            }

            v17 = vshl_s32(v5, vneg_s32(vdup_n_s32(v16)));
            v18 = v17.u32[1];
            v19 = 1;
            while (1)
            {
              v20 = v19;
              if (v18 < *(&v22[-1] + v15) || v18 > *(v22 + v15))
              {
                break;
              }

              v19 = 0;
              v18 = v17.i32[0];
              v15 = 1;
              if ((v20 & 1) == 0)
              {
                *(a3 + 1) = v4;
                *(a3 + 4) = v5;
                *a3 = v6;
                *(a3 + 16) = v8;
                LOBYTE(v3) = 1;
                *(a3 + 24) = v10;
                goto LABEL_6;
              }
            }
          }

          v12 = (v12 + 24);
        }

        v8 = 0;
        --v4;
        v5 = vshr_n_s32(v5, 1uLL);
        v10 = 1;
      }

      while (v4);
    }
  }

  LOBYTE(v3) = 0;
  *a3 = 0;
LABEL_6:
  *(a3 + 32) = v3;
  return this;
}

uint64_t *gdc::Tiled::mapDataKeyFromTile(unsigned __int8 *a1, unsigned __int8 a2, unsigned __int8 *a3, __int16 a4, int a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = vrev64_s32(*(a3 + 4));
  v7 = *a3;
  v11 = a3[1];
  v12 = v7;
  *a1 = a2;
  *(a1 + 4) = a4;
  result = gdc::GenericKey::GenericKey(a1 + 2, &v10, 4);
  v9 = (*(a1 + 10) + ((*(a1 + 4) - 0x61C8864680B583EBLL) << 6) + ((*(a1 + 4) - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*(a1 + 4) - 0x61C8864680B583EBLL);
  *(a1 + 11) = v9;
  *(a1 + 24) = a5;
  a1[100] = 1;
  *(a1 + 13) = (v9 + ((*a1 - 0x61C8864680B583EBLL) << 6) + ((*a1 - 0x61C8864680B583EBLL) >> 2) - 0x61C8864680B583EBLL) ^ (*a1 - 0x61C8864680B583EBLL);
  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderConstantDataID<ggl::ConstantDataTyped<ggl::DaVinci::StyleTransitionToFlat>>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[296];
}

void ggl::ManeuverPoint::BasePipelineState::~BasePipelineState(ggl::ManeuverPoint::BasePipelineState *this)
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

std::__shared_weak_count *std::__split_buffer<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,geo::allocator_adapter<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>,mdm::zone_mallocator> &>::~__split_buffer(std::__shared_weak_count *a1)
{
  v1 = a1;
  shared_owners = a1->__shared_owners_;
  shared_weak_owners = a1->__shared_weak_owners_;
  while (shared_weak_owners != shared_owners)
  {
    v1->__shared_weak_owners_ = shared_weak_owners - 16;
    a1 = *(shared_weak_owners - 8);
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
      shared_weak_owners = v1->__shared_weak_owners_;
    }

    else
    {
      shared_weak_owners -= 16;
    }
  }

  v4 = v1->__vftable;
  if (v1->__vftable)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<gss::StylesheetQuery<gss::PropertyID>>>(v5, v4);
  }

  return v1;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINSC_7DaVinci21StyleTransitionToFlatEEEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESL_E4typeEvEUlS2_E_vEERS4_OSL_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A14628;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28RequiresShaderConstantDataIDIN3ggl17ConstantDataTypedINS9_7DaVinci21StyleTransitionToFlatEEEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A14628;
  a2[1] = v2;
  return result;
}

uint64_t *gdc::GenericKey::GenericKey(uint64_t *a1, int *a2, uint64_t a3)
{
  *a1 = (a1 + 4);
  a1[1] = (a1 + 4);
  a1[2] = (a1 + 4);
  a1[3] = 32;
  a1[8] = 0;
  if (!a3)
  {
    goto LABEL_9;
  }

  v5 = 4 * a3;
  do
  {
    v6 = *a2++;
    v13 = v6;
    geo::small_vector_base<unsigned char>::insert<unsigned char *>(a1, a1[1], &v13, &v14);
    v5 -= 4;
  }

  while (v5);
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 - *a1;
  if (v7 == *a1)
  {
LABEL_9:
    v10 = 0;
  }

  else
  {
    v10 = 0;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      v11 = *v8++;
      v10 ^= (v10 << 6) + (v10 >> 2) - 0x61C8864680B583EBLL + v11;
      --v9;
    }

    while (v9);
  }

  a1[8] = v10;
  return a1;
}

void geo::small_vector_base<unsigned char>::insert<unsigned char *>(uint64_t *a1, _BYTE *a2, char *a3, char *a4)
{
  v5 = a3;
  v8 = *a1;
  v7 = a1[1];
  v9 = &a2[-*a1];
  v10 = a4 - a3;
  if (v7 == a2)
  {
    if (v10 > a1[3] - v9)
    {
      geo::small_vector_base<unsigned char>::grow(a1, &v9[v10]);
      v7 = a1[1];
    }

    if (v5 != a4)
    {
      do
      {
        v14 = *v5++;
        *v7++ = v14;
      }

      while (v5 != a4);
      v7 = a1[1];
    }

    a1[1] = &v7[v10];
  }

  else
  {
    v11 = &v7[v10 - v8];
    if (a1[3] < v11)
    {
      geo::small_vector_base<unsigned char>::grow(a1, v11);
      v8 = *a1;
      v7 = a1[1];
    }

    v12 = &v9[v8];
    a1[1] = &v7[v10];
    if (v7 != v12)
    {
      memmove(&v12[v10], v12, v7 - v12);
    }

    while (v5 != a4)
    {
      v13 = *v5++;
      *v12++ = v13;
    }
  }
}

uint64_t **gdc::LayerDataStore::get(gdc::LayerDataStore *this, const gdc::LayerDataRequestKey *a2, unsigned __int8 *a3)
{
  result = std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>(a2 + 3, a3);
  if (result)
  {
    std::__list_imp<geo::MarkedLRUCache<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry,std::allocator<geo::MarkedLRUCache<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry>>::__create_node[abi:nn200100]<geo::MarkedLRUCache<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::CacheEntry const&>();
  }

  *this = 0;
  *(this + 1) = 0;
  return result;
}

void md::RouteLineSharedPipelineStates::~RouteLineSharedPipelineStates(md::RouteLineSharedPipelineStates *this)
{
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    std::__tree<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<ggl::SinglePassRouteLine::BasePipelineState>>>>::destroy(*(v2 + 104));
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    MEMORY[0x1B8C62190](v2, 0x1020C40AD78EA61);
  }

  v4 = *(this + 13);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  v6 = *(this + 9);
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

void ggl::TexturedAnimatedRibbon::BasePipelineState::~BasePipelineState(ggl::TexturedAnimatedRibbon::BasePipelineState *this)
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

uint64_t **std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerDataRequest>>>>::find<gdc::LayerDataRequestKey>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *(a2 + 13);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 13);
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  if (*v8)
  {
    v10 = *a2;
    v11 = *(a2 + 4);
    do
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        if (*(v9 + 16) == v10 && *(v9 + 12) == v11 && gdc::GenericKey::operator==((v9 + 4), (a2 + 16)))
        {
          return v9;
        }
      }

      else
      {
        if (v6 > 1)
        {
          if (v12 >= *&v2)
          {
            v12 %= *&v2;
          }
        }

        else
        {
          v12 &= *&v2 - 1;
        }

        if (v12 != v7)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *(a2 + 13);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *(a2 + 13);
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  if (*v8)
  {
    v10 = *a2;
    v11 = *(a2 + 4);
    do
    {
      v12 = v9[1];
      if (v4 == v12)
      {
        if (*(v9 + 16) == v10 && *(v9 + 12) == v11 && gdc::GenericKey::operator==((v9 + 4), (a2 + 16)))
        {
          return v9;
        }
      }

      else
      {
        if (v6 > 1)
        {
          if (v12 >= *&v2)
          {
            v12 %= *&v2;
          }
        }

        else
        {
          v12 &= *&v2 - 1;
        }

        if (v12 != v7)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignDiffuseTextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignDiffuseTextureIndex>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignDiffuseTextureIndex::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,gss::FeatureAttributeSet::sort(void)::$_0 &,std::pair<gss::StyleAttribute,unsigned short> *,false>(uint64_t result, unsigned int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v82 = *v9;
        if (*v8 >= *v9)
        {
          return result;
        }

        *v9 = *v8;
        *(a2 - 2) = v82;
        goto LABEL_108;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v87 = *(v9 + 8);
      v88 = *v9;
      v89 = *(v9 + 16);
      if (v87 >= *v9)
      {
        if (v89 < v87)
        {
          *(v9 + 8) = v89;
          *(v9 + 16) = v87;
          v137 = *(v9 + 12);
          v138 = *(v9 + 20);
          *(v9 + 12) = v138;
          *(v9 + 20) = v137;
          if (v89 < v88)
          {
            *v9 = v89;
            *(v9 + 8) = v88;
            v139 = *(v9 + 4);
            *(v9 + 4) = v138;
            *(v9 + 12) = v139;
          }

          goto LABEL_193;
        }
      }

      else
      {
        if (v89 < v87)
        {
          *v9 = v89;
          *(v9 + 16) = v88;
          v90 = *(v9 + 4);
          *(v9 + 4) = *(v9 + 20);
          goto LABEL_191;
        }

        *v9 = v87;
        *(v9 + 8) = v88;
        v90 = *(v9 + 4);
        *(v9 + 4) = *(v9 + 12);
        *(v9 + 12) = v90;
        if (v89 < v88)
        {
          *(v9 + 8) = v89;
          *(v9 + 16) = v88;
          *(v9 + 12) = *(v9 + 20);
LABEL_191:
          *(v9 + 20) = v90;
          v87 = v88;
LABEL_193:
          if (*v8 >= v87)
          {
            return result;
          }

          *(v9 + 16) = *v8;
          *(a2 - 2) = v87;
          v148 = *(v9 + 20);
          *(v9 + 20) = *(a2 - 2);
          *(a2 - 2) = v148;
          v149 = *(v9 + 16);
          v150 = *(v9 + 8);
          if (v149 >= v150)
          {
            return result;
          }

          *(v9 + 8) = v149;
          *(v9 + 16) = v150;
          v151 = *(v9 + 12);
          v136 = *(v9 + 20);
          *(v9 + 12) = v136;
          *(v9 + 20) = v151;
          v152 = *v9;
          if (v149 >= *v9)
          {
            return result;
          }

          *v9 = v149;
          *(v9 + 8) = v152;
          v135 = *(v9 + 4);
LABEL_197:
          *(v9 + 4) = v136;
          *(v9 + 12) = v135;
          return result;
        }
      }

      v87 = v89;
      goto LABEL_193;
    }

    if (v10 == 5)
    {

      return _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEELi0EEEvT1_SO_SO_SO_SO_T0_(v9, (v9 + 8), (v9 + 16), (v9 + 24), a2 - 2);
    }

LABEL_10:
    if (v10 <= 23)
    {
      v91 = (v9 + 8);
      v93 = v9 == a2 || v91 == a2;
      if (a4)
      {
        if (!v93)
        {
          v94 = 0;
          v95 = v9;
          do
          {
            v96 = v95[2];
            v97 = *v95;
            v95 = v91;
            if (v96 < v97)
            {
              v98 = *v91;
              v99 = v94;
              while (1)
              {
                v100 = v9 + v99;
                *(v100 + 8) = v97;
                *(v100 + 12) = *(v9 + v99 + 4);
                if (!v99)
                {
                  break;
                }

                v97 = *(v100 - 8);
                v99 -= 8;
                if (v97 <= v98)
                {
                  v101 = v9 + v99 + 8;
                  goto LABEL_127;
                }
              }

              v101 = v9;
LABEL_127:
              *v101 = v98;
              *(v101 + 4) = WORD2(v98);
            }

            v91 = v95 + 2;
            v94 += 8;
          }

          while (v95 + 2 != a2);
        }
      }

      else if (!v93)
      {
        v140 = (v9 + 12);
        do
        {
          v141 = *(v7 + 8);
          v142 = *v7;
          v7 = v91;
          if (v141 < v142)
          {
            v143 = *v91;
            v144 = v140;
            do
            {
              v145 = v144;
              *(v144 - 1) = v142;
              v146 = *(v144 - 4);
              v144 -= 4;
              *v145 = v146;
              v142 = *(v145 - 5);
            }

            while (v142 > v143);
            *(v144 - 1) = v143;
            *v144 = WORD2(v143);
          }

          v91 = (v7 + 8);
          v140 += 4;
        }

        while ((v7 + 8) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v102 = (v10 - 2) >> 1;
        v103 = v102;
        do
        {
          v104 = v103;
          if (v102 >= v103)
          {
            v105 = (2 * v103) | 1;
            v106 = v9 + 8 * v105;
            if (2 * v104 + 2 >= v10)
            {
              v107 = *v106;
            }

            else
            {
              v107 = *(v106 + 8);
              v108 = *v106 >= v107;
              if (*v106 > v107)
              {
                v107 = *v106;
              }

              if (!v108)
              {
                v106 += 8;
                v105 = 2 * v104 + 2;
              }
            }

            v109 = v9 + 8 * v104;
            if (v107 >= *v109)
            {
              v110 = *v109;
              do
              {
                v111 = v109;
                v109 = v106;
                *v111 = v107;
                *(v111 + 4) = *(v106 + 4);
                if (v102 < v105)
                {
                  break;
                }

                v112 = (2 * v105) | 1;
                v106 = v9 + 8 * v112;
                v105 = 2 * v105 + 2;
                if (v105 >= v10)
                {
                  v107 = *v106;
                  v105 = v112;
                }

                else
                {
                  v107 = *v106;
                  result = *(v106 + 8);
                  if (*v106 <= result)
                  {
                    v107 = *(v106 + 8);
                  }

                  if (*v106 >= result)
                  {
                    v105 = v112;
                  }

                  else
                  {
                    v106 += 8;
                  }
                }
              }

              while (v107 >= v110);
              *v109 = v110;
              *(v109 + 4) = WORD2(v110);
            }
          }

          v103 = v104 - 1;
        }

        while (v104);
        do
        {
          v113 = 0;
          v114 = *v9;
          v115 = v9;
          do
          {
            v116 = v115 + 8 * v113;
            v117 = v116 + 8;
            v118 = (2 * v113) | 1;
            v113 = 2 * v113 + 2;
            if (v113 >= v10)
            {
              v119 = *v117;
              v113 = v118;
            }

            else
            {
              v121 = *(v116 + 16);
              v120 = v116 + 16;
              v119 = v121;
              v122 = *(v120 - 8);
              v123 = v122 >= v121;
              if (v122 > v121)
              {
                v119 = *(v120 - 8);
              }

              if (v123)
              {
                v113 = v118;
              }

              else
              {
                v117 = v120;
              }
            }

            *v115 = v119;
            *(v115 + 4) = *(v117 + 4);
            v115 = v117;
          }

          while (v113 <= ((v10 - 2) >> 1));
          if (v117 == a2 - 2)
          {
            *v117 = v114;
            *(v117 + 4) = WORD2(v114);
          }

          else
          {
            *v117 = *(a2 - 2);
            *(v117 + 4) = *(a2 - 2);
            *(a2 - 2) = v114;
            *(a2 - 2) = WORD2(v114);
            v124 = (v117 - v9 + 8) >> 3;
            v125 = v124 < 2;
            v126 = v124 - 2;
            if (!v125)
            {
              v127 = v126 >> 1;
              v128 = v9 + 8 * v127;
              v129 = *v128;
              if (*v128 < *v117)
              {
                v130 = *v117;
                do
                {
                  v131 = v117;
                  v117 = v128;
                  *v131 = v129;
                  *(v131 + 4) = *(v128 + 4);
                  if (!v127)
                  {
                    break;
                  }

                  v127 = (v127 - 1) >> 1;
                  v128 = v9 + 8 * v127;
                  v129 = *v128;
                }

                while (*v128 < v130);
                *v117 = v130;
                *(v117 + 4) = WORD2(v130);
              }
            }
          }

          a2 -= 2;
          v125 = v10-- <= 2;
        }

        while (!v125);
      }

      return result;
    }

    v11 = v9 + 8 * (v10 >> 1);
    v12 = v11;
    v13 = *v8;
    if (v10 < 0x81)
    {
      v17 = *v9;
      v18 = *v12;
      if (*v9 >= *v12)
      {
        if (v13 < v17)
        {
          *v9 = v13;
          *(a2 - 2) = v17;
          v23 = *(v9 + 4);
          *(v9 + 4) = *(a2 - 2);
          *(a2 - 2) = v23;
          v24 = *v12;
          if (*v9 < *v12)
          {
            *v12 = *v9;
            *v9 = v24;
            v25 = *(v12 + 4);
            *(v12 + 4) = *(v9 + 4);
            *(v9 + 4) = v25;
          }
        }
      }

      else if (v13 >= v17)
      {
        *v12 = v17;
        *v9 = v18;
        v35 = *(v12 + 4);
        *(v12 + 4) = *(v9 + 4);
        *(v9 + 4) = v35;
        if (*v8 < v18)
        {
          *v9 = *v8;
          *(a2 - 2) = v18;
          *(v9 + 4) = *(a2 - 2);
          *(a2 - 2) = v35;
        }
      }

      else
      {
        *v12 = v13;
        *(a2 - 2) = v18;
        v19 = *(v12 + 4);
        *(v12 + 4) = *(a2 - 2);
        *(a2 - 2) = v19;
      }

      goto LABEL_56;
    }

    v14 = *v11;
    v15 = *v9;
    if (*v11 >= *v9)
    {
      if (v13 < v14)
      {
        *v11 = v13;
        *(a2 - 2) = v14;
        v20 = *(v11 + 4);
        *(v11 + 4) = *(a2 - 2);
        *(a2 - 2) = v20;
        v21 = *v9;
        if (*v11 < *v9)
        {
          *v9 = *v11;
          *v11 = v21;
          v22 = *(v9 + 4);
          *(v9 + 4) = *(v11 + 4);
          *(v11 + 4) = v22;
        }
      }
    }

    else if (v13 >= v14)
    {
      *v9 = v14;
      *v11 = v15;
      v26 = *(v9 + 4);
      *(v9 + 4) = *(v11 + 4);
      *(v11 + 4) = v26;
      if (*v8 < v15)
      {
        *v11 = *v8;
        *(a2 - 2) = v15;
        *(v11 + 4) = *(a2 - 2);
        *(a2 - 2) = v26;
      }
    }

    else
    {
      *v9 = v13;
      *(a2 - 2) = v15;
      v16 = *(v9 + 4);
      *(v9 + 4) = *(a2 - 2);
      *(a2 - 2) = v16;
    }

    v27 = v11 - 8;
    v28 = *(v11 - 8);
    v29 = *(v9 + 8);
    v30 = *(a2 - 4);
    if (v28 >= v29)
    {
      if (v30 < v28)
      {
        *v27 = v30;
        *(a2 - 4) = v28;
        v32 = *(v11 - 4);
        *(v11 - 4) = *(a2 - 6);
        *(a2 - 6) = v32;
        v33 = *(v9 + 8);
        if (*v27 < v33)
        {
          *(v9 + 8) = *v27;
          *v27 = v33;
          v34 = *(v9 + 12);
          *(v9 + 12) = *(v11 - 4);
          *(v11 - 4) = v34;
        }
      }
    }

    else if (v30 >= v28)
    {
      *(v9 + 8) = v28;
      *v27 = v29;
      v36 = *(v9 + 12);
      *(v9 + 12) = *(v11 - 4);
      *(v11 - 4) = v36;
      v37 = *(a2 - 4);
      if (v37 < v29)
      {
        *v27 = v37;
        *(a2 - 4) = v29;
        *(v11 - 4) = *(a2 - 6);
        *(a2 - 6) = v36;
      }
    }

    else
    {
      *(v9 + 8) = v30;
      *(a2 - 4) = v29;
      v31 = *(v9 + 12);
      *(v9 + 12) = *(a2 - 6);
      *(a2 - 6) = v31;
    }

    v40 = *(v11 + 8);
    v38 = v11 + 8;
    v39 = v40;
    v41 = *(v9 + 16);
    v42 = *(a2 - 6);
    if (v40 >= v41)
    {
      if (v42 < v39)
      {
        *v38 = v42;
        *(a2 - 6) = v39;
        v44 = *(v38 + 4);
        *(v38 + 4) = *(a2 - 10);
        *(a2 - 10) = v44;
        v45 = *(v9 + 16);
        if (*v38 < v45)
        {
          *(v9 + 16) = *v38;
          *v38 = v45;
          v46 = *(v9 + 20);
          *(v9 + 20) = *(v38 + 4);
          *(v38 + 4) = v46;
        }
      }
    }

    else if (v42 >= v39)
    {
      *(v9 + 16) = v39;
      *v38 = v41;
      v47 = *(v9 + 20);
      *(v9 + 20) = *(v38 + 4);
      *(v38 + 4) = v47;
      v48 = *(a2 - 6);
      if (v48 < v41)
      {
        *v38 = v48;
        *(a2 - 6) = v41;
        *(v38 + 4) = *(a2 - 10);
        *(a2 - 10) = v47;
      }
    }

    else
    {
      *(v9 + 16) = v42;
      *(a2 - 6) = v41;
      v43 = *(v9 + 20);
      *(v9 + 20) = *(a2 - 10);
      *(a2 - 10) = v43;
    }

    v49 = *v12;
    v50 = *v27;
    v51 = *v38;
    if (*v12 >= *v27)
    {
      if (v51 >= v49)
      {
        goto LABEL_51;
      }

      *v12 = v51;
      *v38 = v49;
      v53 = *(v12 + 4);
      v54 = *(v38 + 4);
      *(v12 + 4) = v54;
      *(v38 + 4) = v53;
      if (v51 >= v50)
      {
        goto LABEL_54;
      }

      *v27 = v51;
      *v12 = v50;
      v55 = *(v27 + 4);
      *(v27 + 4) = v54;
      *(v12 + 4) = v55;
    }

    else
    {
      if (v51 < v49)
      {
        *v27 = v51;
        *v38 = v50;
        v52 = *(v27 + 4);
        *(v27 + 4) = *(v38 + 4);
        *(v38 + 4) = v52;
LABEL_51:
        v50 = v49;
        goto LABEL_55;
      }

      *v27 = v49;
      *v12 = v50;
      v56 = *(v27 + 4);
      *(v27 + 4) = *(v12 + 4);
      *(v12 + 4) = v56;
      if (v51 < v50)
      {
        *v12 = v51;
        *v38 = v50;
        *(v12 + 4) = *(v38 + 4);
        *(v38 + 4) = v56;
LABEL_54:
        v50 = v51;
      }
    }

LABEL_55:
    v57 = *v9;
    *v9 = v50;
    *v12 = v57;
    LOWORD(v57) = *(v9 + 4);
    *(v9 + 4) = *(v12 + 4);
    *(v12 + 4) = v57;
LABEL_56:
    --a3;
    if ((a4 & 1) != 0 || *(v9 - 8) < *v9)
    {
      v58 = *v9;
      v59 = v9;
      do
      {
        v60 = v59;
        v62 = *(v59 + 8);
        v59 += 8;
        v61 = v62;
      }

      while (v62 < v58);
      v63 = a2;
      if (v60 == v9)
      {
        v63 = a2;
        do
        {
          if (v59 >= v63)
          {
            break;
          }

          v65 = *(v63 - 2);
          v63 -= 2;
        }

        while (v65 >= v58);
      }

      else
      {
        do
        {
          v64 = *(v63 - 2);
          v63 -= 2;
        }

        while (v64 >= v58);
      }

      if (v59 >= v63)
      {
        v9 = v59;
      }

      else
      {
        v66 = *v63;
        v9 = v59;
        v67 = v63;
        do
        {
          *v9 = v66;
          *v67 = v61;
          v68 = *(v9 + 4);
          *(v9 + 4) = *(v67 + 2);
          *(v67 + 2) = v68;
          do
          {
            v69 = *(v9 + 8);
            v9 += 8;
            v61 = v69;
          }

          while (v69 < v58);
          do
          {
            v70 = *(v67 - 2);
            v67 -= 2;
            v66 = v70;
          }

          while (v70 >= v58);
        }

        while (v9 < v67);
      }

      if (v9 - 8 != v7)
      {
        *v7 = *(v9 - 8);
        *(v7 + 4) = *(v9 - 4);
      }

      *(v9 - 8) = v58;
      *(v9 - 4) = WORD2(v58);
      if (v59 < v63)
      {
        goto LABEL_79;
      }

      v71 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEbT1_SO_T0_(v7, (v9 - 8));
      result = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2md10StyleLogic15runBeforeLayoutERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJEEESA_EE20ResolvedDependenciesERNS2_17StyleLogicContextEE3__0PNS_4pairIN3gss14StyleAttributeEtEEEEbT1_SO_T0_(v9, a2);
      if (result)
      {
        a2 = (v9 - 8);
        if (!v71)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v71)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,gss::FeatureAttributeSet::sort(void)::$_0 &,std::pair<gss::StyleAttribute,unsigned short> *,false>(v7, v9 - 8, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v72 = *v9;
      if (*v8 <= *v9)
      {
        v74 = v9 + 8;
        do
        {
          v9 = v74;
          if (v74 >= a2)
          {
            break;
          }

          v74 += 8;
        }

        while (*v9 <= v72);
      }

      else
      {
        do
        {
          v73 = *(v9 + 8);
          v9 += 8;
        }

        while (v73 <= v72);
      }

      v75 = a2;
      if (v9 < a2)
      {
        v75 = a2;
        do
        {
          v76 = *(v75 - 2);
          v75 -= 2;
        }

        while (v76 > v72);
      }

      if (v9 < v75)
      {
        v77 = *v9;
        v78 = *v75;
        do
        {
          *v9 = v78;
          *v75 = v77;
          v79 = *(v9 + 4);
          *(v9 + 4) = *(v75 + 2);
          *(v75 + 2) = v79;
          do
          {
            v80 = *(v9 + 8);
            v9 += 8;
            v77 = v80;
          }

          while (v80 <= v72);
          do
          {
            v81 = *(v75 - 2);
            v75 -= 2;
            v78 = v81;
          }

          while (v81 > v72);
        }

        while (v9 < v75);
      }

      if (v9 - 8 != v7)
      {
        *v7 = *(v9 - 8);
        *(v7 + 4) = *(v9 - 4);
      }

      a4 = 0;
      *(v9 - 8) = v72;
      *(v9 - 4) = WORD2(v72);
    }
  }

  v83 = *(v9 + 8);
  v84 = *v9;
  v85 = *v8;
  if (v83 >= *v9)
  {
    if (v85 >= v83)
    {
      return result;
    }

    *(v9 + 8) = v85;
    *(a2 - 2) = v83;
    v132 = *(v9 + 12);
    *(v9 + 12) = *(a2 - 2);
    *(a2 - 2) = v132;
    v133 = *(v9 + 8);
    v134 = *v9;
    if (v133 >= *v9)
    {
      return result;
    }

    *v9 = v133;
    *(v9 + 8) = v134;
    v135 = *(v9 + 4);
    v136 = *(v9 + 12);
    goto LABEL_197;
  }

  if (v85 < v83)
  {
    *v9 = v85;
    *(a2 - 2) = v84;
LABEL_108:
    v86 = *(v9 + 4);
    *(v9 + 4) = *(a2 - 2);
    *(a2 - 2) = v86;
    return result;
  }

  *v9 = v83;
  *(v9 + 8) = v84;
  v147 = *(v9 + 4);
  *(v9 + 4) = *(v9 + 12);
  *(v9 + 12) = v147;
  if (*v8 < v84)
  {
    *(v9 + 8) = *v8;
    *(a2 - 2) = v84;
    *(v9 + 12) = *(a2 - 2);
    *(a2 - 2) = v147;
  }

  return result;
}

uint64_t gss::FeatureAttributeSet::sort(gss::FeatureAttributeSet *this, gss::FeatureAttributeSet *a2)
{
  v2 = 126 - 2 * __clz((a2 - this) >> 3);
  if (a2 == this)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return std::__introsort<std::_ClassicAlgPolicy,gss::FeatureAttributeSet::sort(void)::$_0 &,std::pair<gss::StyleAttribute,unsigned short> *,false>(this, a2, v3, 1);
}

uint64_t gdc::S2TileSelector::tilesInView@<X0>(gdc::S2TileSelector *this@<X0>, const gdc::CameraView *a2@<X1>, _DWORD *a3@<X8>)
{
  v38[4] = *MEMORY[0x1E69E9840];
  memset(v19, 0, sizeof(v19));
  v20 = 1065353216;
  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  v6 = *(this + 5);
  if (v6)
  {
    v16 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v15 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    do
    {
      v8 = *(v6 + 16);
      v35 = vrev64_s32(*(v6 + 20));
      v36 = *(v6 + 17);
      v37 = v8;
      v9 = sqrt(ldexp(2.0943951, -2 * v36) * 4.0538689e13);
      v10 = geo::S2CellCoordinates::geocentricFromTileUnit<double>(&v35, 0.5, 0.5, 0.0);
      v34[0] = -(v9 * 0.5);
      v34[1] = v34[0];
      v34[2] = v34[0];
      v34[3] = v9 * 0.5;
      v34[4] = v9 * 0.5;
      v34[5] = v9 * 0.5;
      v28 = 0;
      v26 = 0;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v22 = 0u;
      v21 = 0x3FF0000000000000;
      *&v24 = 0x3FF0000000000000;
      v27 = 0x3FF0000000000000;
      v32 = 0x3FF0000000000000;
      v29 = v10;
      v30 = v11;
      v31 = v12;
      v33[0] = v16;
      v33[1] = xmmword_1B33B0520;
      v33[2] = v15;
      v38[0] = &unk_1F2A61070;
      v38[1] = v33;
      v38[2] = &v21;
      v38[3] = v38;
      gm::Box<double,3>::forEachCorner(v34, v38);
      std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](v38);
      if (geo::Intersect::encloses<double>(a2 + 984, v33))
      {
        std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile const&>(v17, (v6 + 2));
      }

      v6 = *v6;
    }

    while (v6);
  }

  v13 = *(this + 2);
  *a3 = v13;
  std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::unordered_set((a3 + 2), v17);
  a3[12] = v13;
  std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::unordered_set((a3 + 14), v19);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v17);
  return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v19);
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>();
    *algn_1EB83C928 = 0x3BD94B5787965DA7;
    qword_1EB83C930 = "md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>]";
    qword_1EB83C938 = 56;
  }
}

double std::__invoke[abi:nn200100]<gm::Box<double,3>::transformedAndEnclosed(gm::Matrix<double,4,4> const&)::{lambda(gm::Matrix<double,3,1> &)#1} &,gm::Matrix<double,3,1> &>(uint64_t a1, double *a2, __n128 a3, double a4)
{
  v12 = a3;
  v13 = a4;
  v14 = 0x3FF0000000000000;
  v5 = gm::operator*<double,4,4,1>(a2, &v12);
  v6 = 0;
  *v15 = v5;
  v15[1] = v7;
  v15[2] = v8;
  do
  {
    v9 = (a1 + v6 * 8);
    v10 = *&v15[v6];
    *v9 = fmin(v10, *(a1 + v6 * 8));
    result = fmax(*(a1 + v6 * 8 + 24), v10);
    v9[3] = result;
    ++v6;
  }

  while (v6 != 3);
  return result;
}

void ggl::DottedRouteLine::BasePipelineState::~BasePipelineState(ggl::DottedRouteLine::BasePipelineState *this)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>(void)::metadata >= 0x200)
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

void gm::Box<double,3>::forEachCorner(void *a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    v5 = 0;
    v6 = a1;
    do
    {
      v7 = v6 + 3;
      if ((v4 >> v5))
      {
        v7 = v6;
      }

      *(&v10 + v5++) = *v7;
      ++v6;
    }

    while (v5 != 3);
    v8 = *(a2 + 24);
    if (!v8)
    {
      break;
    }

    (*(*v8 + 48))(v8, &v10);
    if (++v4 == 8)
    {
      return;
    }
  }

  v9 = std::__throw_bad_function_call[abi:nn200100]();
  std::__shared_ptr_emplace<ggl::DottedRouteLine::BasePipelineState>::__on_zero_shared_weak(v9);
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::DiffuseTexture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[395];
}

void ggl::RouteLine::RouteLineMaskPipelineState::~RouteLineMaskPipelineState(ggl::RouteLine::RouteLineMaskPipelineState *this)
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

uint64_t std::__function::__value_func<void ()(gm::Matrix<double,3,1> &)>::~__value_func[abi:nn200100](uint64_t a1)
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci14DiffuseTextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A12678;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci14DiffuseTextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A12678;
  a2[1] = v2;
  return result;
}

uint64_t md::LineLabelFeature::styleIndexForAttributes(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1;
  v6 = a1[34];
  v5 = a1[35];
  v7 = v5 - v6;
  if (v5 != v6)
  {
    v8 = 0;
    v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
    v10 = a1[34];
    do
    {
      a1 = geo::codec::featureStyleAttributesCompare(*v10, v2);
      if (!a1)
      {
        return v8;
      }

      ++v8;
      v10 += 10;
    }

    while (v8 < v9);
    if (v9 <= 0x64)
    {
      goto LABEL_9;
    }

    return 0xFFFFFFFFLL;
  }

  v9 = 0;
LABEL_9:
  v11 = v4 + 35;
  v12 = v4[36];
  if (v5 >= v12)
  {
    v15 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
    v16 = v15 + 1;
    if (v15 + 1 > 0x333333333333333)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v17 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - v6) >> 4);
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    if (v17 >= 0x199999999999999)
    {
      v18 = 0x333333333333333;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      v19 = mdm::zone_mallocator::instance(a1);
      v20 = pthread_rwlock_rdlock((v19 + 32));
      if (v20)
      {
        geo::read_write_lock::logFailure(v20, "read lock", v21);
      }

      v22 = malloc_type_zone_malloc(*v19, 80 * v18, 0x60040D5E51E28uLL);
      atomic_fetch_add((v19 + 24), 1u);
      geo::read_write_lock::unlock((v19 + 32));
      v2 = *a2;
    }

    else
    {
      v22 = 0;
    }

    v23 = &v22[80 * v15];
    v24 = a2[1];
    *v23 = v2;
    *(v23 + 1) = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    *(v23 + 3) = 0u;
    *(v23 + 4) = 0u;
    v14 = v23 + 80;
    *&v25 = v23 + 80;
    *(&v25 + 1) = &v22[80 * v18];
    v34 = v25;
    *(v23 + 1) = 0u;
    *(v23 + 2) = 0u;
    v26 = v4[34];
    v27 = v4[35];
    v28 = &v23[v26 - v27];
    if (v27 != v26)
    {
      v29 = v4[34];
      v30 = v28;
      do
      {
        *v30 = *v29;
        *v29 = 0;
        *(v29 + 8) = 0;
        *(v30 + 1) = *(v29 + 16);
        *(v29 + 16) = 0;
        *(v29 + 24) = 0;
        *(v30 + 2) = *(v29 + 32);
        *(v29 + 32) = 0;
        *(v29 + 40) = 0;
        *(v30 + 3) = *(v29 + 48);
        *(v29 + 48) = 0;
        *(v29 + 56) = 0;
        *(v30 + 4) = *(v29 + 64);
        *(v29 + 64) = 0;
        *(v29 + 72) = 0;
        v29 += 80;
        v30 += 80;
      }

      while (v29 != v27);
      do
      {
        std::allocator_traits<geo::allocator_adapter<md::LineLabelStyleEntry,mdm::zone_mallocator>>::destroy[abi:nn200100]<md::LineLabelStyleEntry,void,0>(v26);
        v26 += 80;
      }

      while (v26 != v27);
    }

    v31 = v4[34];
    v4[34] = v28;
    *v11 = v34;
    if (v31)
    {
      v32 = mdm::zone_mallocator::instance(a1);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LineLabelStyleEntry>(v32, v31);
    }
  }

  else
  {
    v13 = a2[1];
    *v5 = v2;
    *(v5 + 8) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    v14 = (v5 + 80);
  }

  *v11 = v14;
  return v9;
}

void std::__function::__func<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_7,std::allocator<md::TileSelectionLogic::TileSelectionLogic(md::World *)::$_7>,void ()(unsigned int,gdc::GlobeTileSelectorOptions &)>::operator()(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = +[VKDebugSettings sharedSettings];
  *a3 = 0;
  v6 = v4;
  if ([v4 daVinciCameraController])
  {
    v5 = [v6 daVinciBiasLatitudeGlobeTileSelection];
  }

  else
  {
    v5 = 1;
  }

  a3[1] = v5;
  a3[2] = 20;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>();
    *algn_1EB83CE58 = 0xDD9825BCFA7911B2;
    qword_1EB83CE60 = "md::ls::TextureHandleForType<DaVinci::DiffuseTexture>]";
    qword_1EB83CE68 = 53;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::DiffuseTexture>>(void)::metadata >= 0x200)
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

void ggl::RouteLineTraffic::BasePipelineState::~BasePipelineState(ggl::RouteLineTraffic::BasePipelineState *this)
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

uint64_t md::LineLabelFeature::publicLocale(md::LineLabelFeature *this, unint64_t a2)
{
  v2 = *(this + 48);
  v3 = *(this + 49) - v2;
  v4 = v2 + (a2 << 6) + 32;
  if (a2 >= v3 >> 6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>();
    *algn_1EB83CDC8 = 0xC55E4C6C5DFCA74ALL;
    qword_1EB83CDD0 = "md::ls::TextureHandleForType<DaVinci::Gradient2Texture>]";
    qword_1EB83CDD8 = 55;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(void)::metadata >= 0x200)
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

void sub_1B29AB560(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,std::__unordered_map_hasher<md::MapDataType,std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,std::hash<md::MapDataType>,std::equal_to<md::MapDataType>,true>,std::__unordered_map_equal<md::MapDataType,std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,std::equal_to<md::MapDataType>,std::hash<md::MapDataType>,true>,std::allocator<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>>>::~__hash_table(va);
  MEMORY[0x1B8C62190](v2, v3);
  _Unwind_Resume(a1);
}

void ggl::RouteLineAlphaReset::BasePipelineState::~BasePipelineState(ggl::RouteLineAlphaReset::BasePipelineState *this)
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

double md::Logic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>,md::ResolvedTileSelectionContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext>,gdc::TypeList<md::FlyoverTileDataResolverContext>>>::allocateContext@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  return result;
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignGradient2TextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignGradient2TextureIndex>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignGradient2TextureIndex::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

void geo::codec::featureGetNativeLabel(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  if (!a1)
  {
    return;
  }

  v7 = *(a1 + 8);
  if (!v7 || (v7 = std::__shared_weak_count::lock(v7)) == 0 || *(a1 + 73) <= a2 || !*a1)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (!a4)
    {
LABEL_15:
      if (!v7)
      {
        return;
      }

      goto LABEL_16;
    }

    v10 = 0;
LABEL_14:
    *a4 = v10;
    goto LABEL_15;
  }

  v9 = (*(*a1 + 1056) + 24 * *(a1 + 56) + 24 * a2);
  if (a3)
  {
    *a3 = *v9;
  }

  if (a4)
  {
    v10 = v9[1];
    goto LABEL_14;
  }

LABEL_16:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v11 = v7;
    (v7->__on_zero_shared)();

    std::__shared_weak_count::__release_weak(v11);
  }
}

void geo::GEOFeatureTile_retain_ptr<GeoCodecsFeatureBase const>::reset(uint64_t **a1, uint64_t *a2)
{
  *a1 = a2;
  if (a2)
  {
    v4 = a2[1];
    if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0)
    {
      v5 = *a2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = a1[2];
  a1[1] = v5;
  a1[2] = v4;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,std::__unordered_map_hasher<md::MapDataType,std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,std::hash<md::MapDataType>,std::equal_to<md::MapDataType>,true>,std::__unordered_map_equal<md::MapDataType,std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>,std::equal_to<md::MapDataType>,std::hash<md::MapDataType>,true>,std::allocator<std::__hash_value_type<md::MapDataType,std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__function::__value_func<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>::~__value_func[abi:nn200100]((v2 + 3));
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[445];
}

void ggl::RouteLine::PatternedBasePipelineState::~PatternedBasePipelineState(ggl::RouteLine::PatternedBasePipelineState *this)
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

void std::__introsort<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 1;
  j = a1;
  while (1)
  {
    a1 = j;
    v10 = a2 - j;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(j, j + 1, a2 - 1);
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(j, j + 1, j + 2, a2 - 1);
          return;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(j, j + 1, j + 2, j + 3, a2 - 1);
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
        v77 = *v8;
        v78 = *(*v8 + 2);
        v79 = *j;
        v80 = *(*j + 2);
        if (v78 == v80)
        {
          if (*(*v8 + 2))
          {
            v81 = *(v77 + 104);
            v82 = (v79 + 104);
          }

          else
          {
            v81 = **(**(v77 + 40) + 16);
            v82 = *(**(v79 + 40) + 16);
          }

          if (v81 <= *v82)
          {
            return;
          }
        }

        else if (v78 >= v80)
        {
          return;
        }

        *j = v77;
        *v8 = v79;
        return;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (j == a2)
      {
        return;
      }

      v102 = v11 >> 1;
      v103 = v11 >> 1;
      while (1)
      {
        v104 = v103;
        if (v102 < v103)
        {
          goto LABEL_218;
        }

        v105 = (2 * v103) | 1;
        v106 = &j[v105];
        if (2 * v103 + 2 < v10)
        {
          v107 = v106[1];
          v108 = *v106;
          v109 = *(*v106 + 2);
          v110 = *(v107 + 2);
          if (v109 != v110)
          {
            if (v109 >= v110)
            {
              goto LABEL_190;
            }

LABEL_189:
            ++v106;
            v105 = 2 * v103 + 2;
            goto LABEL_190;
          }

          if (*(*v106 + 2))
          {
            v111 = *(v108 + 104);
            v112 = (v107 + 104);
          }

          else
          {
            v111 = **(**(v108 + 40) + 16);
            v112 = *(**(v107 + 40) + 16);
          }

          if (v111 > *v112)
          {
            goto LABEL_189;
          }
        }

LABEL_190:
        v113 = &j[v103];
        v114 = *v106;
        v115 = *(*v106 + 2);
        v116 = *v113;
        v117 = *(*v113 + 2);
        if (v115 == v117)
        {
          if (*(*v106 + 2))
          {
            v118 = *(v114 + 104);
            v119 = (v116 + 104);
          }

          else
          {
            v118 = **(**(v114 + 40) + 16);
            v119 = *(**(v116 + 40) + 16);
          }

          if (v118 > *v119)
          {
            goto LABEL_218;
          }
        }

        else if (v115 < v117)
        {
          goto LABEL_218;
        }

        *v113 = 0;
        v188 = v116;
        v120 = *v106;
        while (1)
        {
          v121 = v106;
          *v106 = 0;
          std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](v113, v120);
          if (v102 < v105)
          {
            break;
          }

          v122 = 2 * v105;
          v105 = (2 * v105) | 1;
          v106 = &j[v105];
          v123 = v122 + 2;
          if (v123 < v10)
          {
            v124 = v106[1];
            v125 = *v106;
            v126 = *(*v106 + 2);
            v127 = *(v124 + 2);
            if (v126 == v127)
            {
              if (*(*v106 + 2))
              {
                v128 = *(v125 + 104);
                v129 = (v124 + 104);
              }

              else
              {
                v128 = **(**(v125 + 40) + 16);
                v129 = *(**(v124 + 40) + 16);
              }

              if (v128 <= *v129)
              {
                goto LABEL_205;
              }

LABEL_204:
              ++v106;
              v105 = v123;
              goto LABEL_205;
            }

            if (v126 < v127)
            {
              goto LABEL_204;
            }
          }

LABEL_205:
          v120 = *v106;
          v130 = *(*v106 + 2);
          v131 = v188;
          v132 = *(v188 + 2);
          if (v130 == v132)
          {
            if (*(*v106 + 2))
            {
              v133 = *(v120 + 104);
              v134 = (v188 + 104);
            }

            else
            {
              v133 = **(**(v120 + 40) + 16);
              v134 = *(**(v188 + 40) + 16);
            }

            v113 = v121;
            if (v133 > *v134)
            {
              goto LABEL_217;
            }
          }

          else
          {
            v113 = v121;
            if (v130 < v132)
            {
              goto LABEL_217;
            }
          }
        }

        v131 = v188;
LABEL_217:
        v188 = 0;
        std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](v121, v131);
        std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](&v188, 0);
LABEL_218:
        v103 = v104 - 1;
        if (!v104)
        {
LABEL_223:
          v135 = 0;
          v136 = *j;
          *j = 0;
          v187 = v136;
          v137 = j;
          while (1)
          {
            v138 = v137;
            v139 = &v137[v135];
            v137 = v139 + 1;
            v140 = 2 * v135;
            v135 = (2 * v135) | 1;
            v141 = v140 + 2;
            if (v141 < v10)
            {
              v144 = v139[2];
              v142 = v139 + 2;
              v143 = v144;
              v145 = *(v142 - 1);
              v146 = *(v145 + 2);
              v147 = *(v144 + 2);
              if (v146 == v147)
              {
                if (*(v145 + 2))
                {
                  v148 = *(v145 + 104);
                  v149 = (v143 + 104);
                }

                else
                {
                  v148 = **(**(v145 + 40) + 16);
                  v149 = *(**(v143 + 40) + 16);
                }

                if (v148 <= *v149)
                {
                  goto LABEL_230;
                }

LABEL_229:
                v137 = v142;
                v135 = v141;
                goto LABEL_230;
              }

              if (v146 < v147)
              {
                goto LABEL_229;
              }
            }

LABEL_230:
            v150 = *v137;
            *v137 = 0;
            std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](v138, v150);
            if (v135 > ((v10 - 2) >> 1))
            {
              if (v137 == --a2)
              {
                v164 = v187;
                v187 = 0;
                v165 = v137;
                goto LABEL_259;
              }

              v151 = *a2;
              *a2 = 0;
              std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](v137, v151);
              v152 = v187;
              v187 = 0;
              std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](a2, v152);
              v153 = (v137 - j + 8) >> 3;
              v154 = v153 < 2;
              v155 = v153 - 2;
              if (!v154)
              {
                v156 = v155 >> 1;
                v157 = &j[v155 >> 1];
                v158 = *v157;
                v159 = *(*v157 + 2);
                v160 = *v137;
                v161 = *(*v137 + 2);
                if (v159 == v161)
                {
                  if (*(*v157 + 2))
                  {
                    v162 = *(v158 + 104);
                    v163 = (v160 + 104);
                  }

                  else
                  {
                    v162 = **(**(v158 + 40) + 16);
                    v163 = *(**(v160 + 40) + 16);
                  }

                  if (v162 > *v163)
                  {
LABEL_245:
                    *v137 = 0;
                    v188 = v160;
                    v166 = *v157;
LABEL_246:
                    v167 = v137;
                    do
                    {
                      v137 = v157;
                      *v157 = 0;
                      std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](v167, v166);
                      if (!v156)
                      {
                        break;
                      }

                      v156 = (v156 - 1) >> 1;
                      v157 = &j[v156];
                      v166 = *v157;
                      v168 = *(*v157 + 2);
                      v169 = *(v160 + 2);
                      if (v168 == v169)
                      {
                        if (*(*v157 + 2))
                        {
                          v170 = (v166 + 104);
                        }

                        else
                        {
                          v170 = *(**(v166 + 40) + 16);
                        }

                        v160 = v188;
                        if (*(v188 + 2))
                        {
                          v171 = (v188 + 104);
                        }

                        else
                        {
                          v171 = *(**(v188 + 40) + 16);
                        }

                        if (*v170 > *v171)
                        {
                          goto LABEL_246;
                        }

                        break;
                      }

                      v167 = v137;
                    }

                    while (v168 < v169);
                    v188 = 0;
                    std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](v137, v160);
                    v165 = &v188;
                    v164 = 0;
LABEL_259:
                    std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](v165, v164);
                  }
                }

                else if (v159 < v161)
                {
                  goto LABEL_245;
                }
              }

              std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](&v187, 0);
              v154 = v10-- <= 2;
              if (v154)
              {
                return;
              }

              goto LABEL_223;
            }
          }
        }
      }
    }

    v12 = v10 >> 1;
    v13 = &j[v10 >> 1];
    if (v10 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(&a1[v10 >> 1], a1, a2 - 1);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(a1, &a1[v10 >> 1], a2 - 1);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(a1 + 1, v13 - 1, a2 - 2);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(a1 + 2, &a1[v12 + 1], a2 - 3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,0>(v13 - 1, &a1[v10 >> 1], &a1[v12 + 1]);
      v14 = *a1;
      *a1 = *v13;
      *v13 = v14;
    }

    --a3;
    v15 = *a1;
    if (a4)
    {
      v16 = *(v15 + 2);
LABEL_23:
      *a1 = 0;
      v21 = a1 + 1;
      v188 = v15;
      while (1)
      {
        v22 = *v21;
        v23 = *(*v21 + 2);
        if (v23 == v16)
        {
          break;
        }

        if (v23 >= v16)
        {
          goto LABEL_32;
        }

LABEL_31:
        ++v21;
      }

      if (v16)
      {
        v24 = *(v22 + 104);
        v25 = (v15 + 104);
      }

      else
      {
        v24 = **(**(v22 + 40) + 16);
        v25 = *(**(v15 + 40) + 16);
      }

      if (v24 > *v25)
      {
        goto LABEL_31;
      }

LABEL_32:
      v26 = v21 - 1;
      i = a2 - 1;
      if (v21 - 1 != a1)
      {
        while (1)
        {
          v28 = *i;
          v29 = *(*i + 2);
          if (v29 == v16)
          {
            if (v16)
            {
              v30 = *(v28 + 104);
              v31 = (v15 + 104);
            }

            else
            {
              v30 = **(**(v28 + 40) + 16);
              v31 = *(**(v15 + 40) + 16);
            }

            if (v30 > *v31)
            {
              goto LABEL_53;
            }
          }

          else if (v29 < v16)
          {
            goto LABEL_53;
          }

          --i;
        }
      }

      i = a2;
      if (v21 < a2)
      {
        for (i = a2 - 1; ; --i)
        {
          v32 = *i;
          v33 = *(*i + 2);
          if (v33 == v16)
          {
            if (v16)
            {
              v34 = *(v32 + 104);
              v35 = (v15 + 104);
            }

            else
            {
              v34 = **(**(v32 + 40) + 16);
              v35 = *(**(v15 + 40) + 16);
            }

            if (v21 >= i || v34 > *v35)
            {
              break;
            }
          }

          else if (v21 >= i || v33 < v16)
          {
            break;
          }
        }
      }

LABEL_53:
      if (v21 >= i)
      {
        goto LABEL_73;
      }

      v36 = *i;
      v37 = v21;
      v38 = i;
      while (2)
      {
        *v37 = v36;
        v37 += 8;
        *v38 = v22;
        v15 = v188;
        v39 = *(v188 + 2);
        while (2)
        {
          v22 = *v37;
          v40 = *(*v37 + 2);
          if (v40 != v39)
          {
            if (v40 >= v39)
            {
              break;
            }

            goto LABEL_63;
          }

          if (*(v188 + 2))
          {
            v41 = *(v22 + 104);
            v42 = (v188 + 104);
          }

          else
          {
            v41 = **(**(v22 + 40) + 16);
            v42 = *(**(v188 + 40) + 16);
          }

          if (v41 > *v42)
          {
LABEL_63:
            v37 += 8;
            continue;
          }

          break;
        }

        v26 = (v37 - 8);
        do
        {
          while (1)
          {
            v43 = *--v38;
            v36 = v43;
            v44 = *(v43 + 2);
            if (v44 == v39)
            {
              break;
            }

            if (v44 < v39)
            {
              goto LABEL_72;
            }
          }

          if (*(v188 + 2))
          {
            v45 = *(v36 + 104);
            v46 = (v188 + 104);
          }

          else
          {
            v45 = **(**(v36 + 40) + 16);
            v46 = *(**(v188 + 40) + 16);
          }
        }

        while (v45 <= *v46);
LABEL_72:
        if (v37 < v38)
        {
          continue;
        }

        break;
      }

LABEL_73:
      if (v26 != a1)
      {
        v47 = *v26;
        *v26 = 0;
        std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](a1, v47);
        v15 = v188;
      }

      v188 = 0;
      std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](v26, v15);
      std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](&v188, 0);
      if (v21 < i)
      {
LABEL_78:
        std::__introsort<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *,false>(a1, v26, a3, a4 & 1);
        a4 = 0;
        j = v26 + 1;
      }

      else
      {
        v48 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *>(a1, v26);
        j = v26 + 1;
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::LabelLineZSet::createLines(std::shared_ptr<md::LabelLineStore const> const&)::$_0 &,std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>> *>(v26 + 1, a2))
        {
          a2 = v26;
          if (v48)
          {
            return;
          }

          goto LABEL_1;
        }

        if ((v48 & 1) == 0)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      v17 = *(a1 - 1);
      v16 = *(v17 + 2);
      v18 = *(v15 + 2);
      if (v16 == v18)
      {
        if (*(v17 + 2))
        {
          v19 = *(v17 + 104);
          v20 = (v15 + 104);
        }

        else
        {
          v19 = **(**(v17 + 40) + 16);
          v20 = *(**(v15 + 40) + 16);
        }

        if (v19 > *v20)
        {
          goto LABEL_23;
        }
      }

      else if (v16 < v18)
      {
        v16 = *(v15 + 2);
        goto LABEL_23;
      }

      *a1 = 0;
      v188 = v15;
      v49 = *v8;
      v50 = *(*v8 + 2);
      if (v18 == v50)
      {
        if (v18)
        {
          v51 = *(v15 + 104);
          v52 = (v49 + 104);
        }

        else
        {
          v51 = **(**(v15 + 40) + 16);
          v52 = *(**(v49 + 40) + 16);
        }

        if (v51 > *v52)
        {
LABEL_83:
          for (j = a1 + 1; ; ++j)
          {
            v53 = *j;
            v54 = *(*j + 2);
            if (v18 == v54)
            {
              if (v18)
              {
                v55 = *(v15 + 104);
                v56 = (v53 + 104);
              }

              else
              {
                v55 = **(**(v15 + 40) + 16);
                v56 = *(**(v53 + 40) + 16);
              }

              if (v55 > *v56)
              {
                goto LABEL_104;
              }
            }

            else if (v18 < v54)
            {
              goto LABEL_104;
            }
          }
        }
      }

      else if (v18 < v50)
      {
        goto LABEL_83;
      }

      for (j = a1 + 1; j < a2; ++j)
      {
        v57 = *j;
        v58 = *(*j + 2);
        if (v18 == v58)
        {
          if (v18)
          {
            v59 = *(v15 + 104);
            v60 = (v57 + 104);
          }

          else
          {
            v59 = **(**(v15 + 40) + 16);
            v60 = *(**(v57 + 40) + 16);
          }

          if (v59 > *v60)
          {
            break;
          }
        }

        else if (v18 < v58)
        {
          break;
        }
      }

LABEL_104:
      k = a2;
      if (j < a2)
      {
        for (k = a2 - 1; ; --k)
        {
          if (v18 == v50)
          {
            if (v18)
            {
              v62 = *(v15 + 104);
              v63 = (v49 + 104);
            }

            else
            {
              v62 = **(**(v15 + 40) + 16);
              v63 = *(**(v49 + 40) + 16);
            }

            if (v62 <= *v63)
            {
              break;
            }
          }

          else if (v18 >= v50)
          {
            break;
          }

          v64 = *(k - 1);
          v49 = v64;
          v50 = *(v64 + 2);
        }
      }

      if (j >= k)
      {
        goto LABEL_133;
      }

      v65 = *j;
      v66 = *k;
      do
      {
        *j++ = v66;
        *k = v65;
        v15 = v188;
        v67 = *(v188 + 2);
        while (1)
        {
          v65 = *j;
          v68 = *(*j + 2);
          if (v67 == v68)
          {
            break;
          }

          if (v67 < v68)
          {
            goto LABEL_125;
          }

LABEL_124:
          ++j;
        }

        if (*(v188 + 2))
        {
          v69 = *(v188 + 104);
          v70 = (v65 + 104);
        }

        else
        {
          v69 = **(**(v188 + 40) + 16);
          v70 = *(**(v65 + 40) + 16);
        }

        if (v69 <= *v70)
        {
          goto LABEL_124;
        }

        do
        {
LABEL_125:
          while (1)
          {
            v71 = *--k;
            v66 = v71;
            v72 = *(v71 + 2);
            if (v67 == v72)
            {
              break;
            }

            if (v67 >= v72)
            {
              goto LABEL_132;
            }
          }

          if (*(v188 + 2))
          {
            v73 = *(v188 + 104);
            v74 = (v66 + 104);
          }

          else
          {
            v73 = **(**(v188 + 40) + 16);
            v74 = *(**(v66 + 40) + 16);
          }
        }

        while (v73 > *v74);
LABEL_132:
        ;
      }

      while (j < k);
LABEL_133:
      v75 = j - 1;
      if (j - 1 != a1)
      {
        v76 = *v75;
        *v75 = 0;
        std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](a1, v76);
        v15 = v188;
      }

      v188 = 0;
      std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](j - 1, v15);
      std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](&v188, 0);
      a4 = 0;
    }
  }

  v83 = j + 1;
  v85 = j == a2 || v83 == a2;
  if ((a4 & 1) == 0)
  {
    if (v85)
    {
      return;
    }

    while (1)
    {
      v172 = a1;
      a1 = v83;
      v174 = *v172;
      v173 = v172[1];
      v175 = *(v173 + 2);
      v176 = *(*v172 + 2);
      if (v175 == v176)
      {
        if (*(v173 + 2))
        {
          v177 = *(v173 + 104);
          v178 = (v174 + 104);
        }

        else
        {
          v177 = **(**(v173 + 40) + 16);
          v178 = *(**(v174 + 40) + 16);
        }

        if (v177 <= *v178)
        {
          goto LABEL_282;
        }
      }

      else if (v175 >= v176)
      {
        goto LABEL_282;
      }

      *a1 = 0;
      v188 = v173;
      v179 = *v172;
      do
      {
        while (1)
        {
          v180 = v172;
          *v172 = 0;
          std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](v172 + 1, v179);
          v181 = *--v172;
          v179 = v181;
          v182 = v188;
          v183 = *(v188 + 2);
          v184 = *(v181 + 2);
          if (v183 == v184)
          {
            break;
          }

          if (v183 >= v184)
          {
            goto LABEL_281;
          }
        }

        if (*(v188 + 2))
        {
          v185 = *(v188 + 104);
          v186 = (v179 + 104);
        }

        else
        {
          v185 = **(**(v188 + 40) + 16);
          v186 = *(**(v179 + 40) + 16);
        }
      }

      while (v185 > *v186);
LABEL_281:
      v188 = 0;
      std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](v180, v182);
      std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](&v188, 0);
LABEL_282:
      v83 = a1 + 1;
      if (a1 + 1 == a2)
      {
        return;
      }
    }
  }

  if (v85)
  {
    return;
  }

  v86 = 0;
  v87 = j;
  while (2)
  {
    v88 = v87;
    v87 = v83;
    v90 = *v88;
    v89 = v88[1];
    v91 = *(v89 + 2);
    v92 = *(*v88 + 2);
    if (v91 == v92)
    {
      if (*(v89 + 2))
      {
        v93 = *(v89 + 104);
        v94 = (v90 + 104);
      }

      else
      {
        v93 = **(**(v89 + 40) + 16);
        v94 = *(**(v90 + 40) + 16);
      }

      if (v93 <= *v94)
      {
        goto LABEL_179;
      }
    }

    else if (v91 >= v92)
    {
      goto LABEL_179;
    }

    *v87 = 0;
    v188 = v89;
    v95 = *v88;
    v96 = v86;
    while (2)
    {
      *(j + v96) = 0;
      std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100]((j + v96 + 8), v95);
      v97 = v188;
      if (!v96)
      {
        v88 = j;
        goto LABEL_178;
      }

      v98 = *(v188 + 2);
      v95 = *(j + v96 - 8);
      v99 = *(v95 + 2);
      if (v98 != v99)
      {
        if (v98 >= v99)
        {
          goto LABEL_178;
        }

        goto LABEL_175;
      }

      if (*(v188 + 2))
      {
        v100 = *(v188 + 104);
        v101 = (v95 + 104);
      }

      else
      {
        v100 = **(**(v188 + 40) + 16);
        v101 = *(**(v95 + 40) + 16);
      }

      if (v100 > *v101)
      {
LABEL_175:
        --v88;
        v96 -= 8;
        continue;
      }

      break;
    }

    v88 = (j + v96);
LABEL_178:
    v188 = 0;
    std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](v88, v97);
    std::unique_ptr<md::LabelLine,mdm::TypeDeleter<md::LabelLine>>::reset[abi:nn200100](&v188, 0);
LABEL_179:
    v83 = v87 + 1;
    v86 += 8;
    if (v87 + 1 != a2)
    {
      continue;
    }

    break;
  }
}

void *gdc::Context::get<md::FlyoverTileDataResolverContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x479E84E48468DB70uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x479E84E48468DB70)
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

uint64_t md::Logic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>,md::ResolvedTileSelectionContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext>,gdc::TypeList<md::FlyoverTileDataResolverContext>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x8677AD8BA9352C1DLL)
  {
    v13[8] = v3;
    v13[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x64780CBD71DF7CF5uLL)[5] + 32);
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v8, 0x479E84E48468DB70uLL);
      if (v10 && (v11 = v10[5], *(v11 + 8) == 0x479E84E48468DB70))
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

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci16Gradient2TextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A356A0;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void ggl::RouteLine::BasePipelineState::~BasePipelineState(ggl::RouteLine::BasePipelineState *this)
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

void *gdc::Context::context<md::TileSelectionContext>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x64780CBD71DF7CF5uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x64780CBD71DF7CF5)
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

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(void)::metadata >= 0x200)
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

uint64_t md::Logic<md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>,md::ResolvedTileSelectionContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext>,gdc::TypeList<md::FlyoverTileDataResolverContext>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == 0x8677AD8BA9352C1DLL)
  {
    v9[8] = v3;
    v9[9] = v4;
    v5 = *(a3 + 32);
    if (v5)
    {
      v7 = result;
      v8 = *(a2 + 8);
      v9[0] = gdc::Context::context<md::TileSelectionContext>(v8);
      v9[1] = gdc::Context::get<md::FlyoverTileDataResolverContext>(v8);
      return (*(*v7 + 128))(v7, a2, v9, v5);
    }
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>();
    unk_1EB83C890 = 0x662527E578BE28E3;
    qword_1EB83C898 = "md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>]";
    qword_1EB83C8A0 = 58;
  }
}

void md::RouteLineSharedRenderStates::~RouteLineSharedRenderStates(md::RouteLineSharedRenderStates *this)
{
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 5);
  *(this + 5) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 3);
  *(this + 3) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 2);
  *(this + 2) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 1);
  *(this + 1) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *this;
  *this = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }
}

std::__shared_weak_count *std::vector<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator>>::push_back[abi:nn200100](std::__shared_weak_count *result, __int128 *a2)
{
  v3 = result;
  shared_owners = result->__shared_owners_;
  shared_weak_owners = result->__shared_weak_owners_;
  if (shared_owners >= shared_weak_owners)
  {
    v8 = (shared_owners - result->__vftable) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = shared_weak_owners - result->__vftable;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v23 = result + 1;
    if (v11)
    {
      v12 = mdm::zone_mallocator::instance(result);
      v13 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::LabelStyle>>(v12, v11);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[16 * v8];
    v15 = *a2;
    *v14 = *a2;
    if (*(&v15 + 1))
    {
      atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v16 = &v13[16 * v11];
    v7 = v14 + 16;
    v17 = v3->__shared_owners_ - v3->__vftable;
    v18 = &v14[-v17];
    memcpy(&v14[-v17], v3->__vftable, v17);
    v19 = v3->__vftable;
    v3->__vftable = v18;
    v3->__shared_owners_ = v7;
    v20 = v3->__shared_weak_owners_;
    v3->__shared_weak_owners_ = v16;
    v21.__shared_weak_owners_ = v19;
    v22 = v20;
    v21.__vftable = v19;
    v21.__shared_owners_ = v19;
    result = std::__split_buffer<std::shared_ptr<md::LabelStyle>,geo::allocator_adapter<std::shared_ptr<md::LabelStyle>,mdm::zone_mallocator> &>::~__split_buffer(&v21);
  }

  else
  {
    v6 = *(a2 + 1);
    *shared_owners = *a2;
    *(shared_owners + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = shared_owners + 16;
  }

  v3->__shared_owners_ = v7;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci16Gradient2TextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A356A0;
  a2[1] = v2;
  return result;
}

uint64_t md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>::runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    v7 = result;
    result = md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>::getResolverFromContext<md::FlyoverTileDataResolverContext>(result, v4, 0x4Bu, a4);
    v8 = *(a3 + 8);
    if (v8)
    {
      result = md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>::getResolverFromContext<md::FlyoverTileDataResolverContext>(v7, v8, 0x4Cu, a4);
      v9 = *(a3 + 8);
      if (v9)
      {

        return md::TileDependencyLogicImpl<md::TileDependencies<>,md::TileDependencies<md::TileDependency<(md::MapDataType)75,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)76,md::FlyoverTileDataResolverContext>,md::TileDependency<(md::MapDataType)77,md::FlyoverTileDataResolverContext>>>::getResolverFromContext<md::FlyoverTileDataResolverContext>(v7, v9, 0x4Du, a4);
      }
    }
  }

  return result;
}

uint64_t geo::codec::featureGetNativeShieldCount(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void md::CoastlineRenderLayer::~CoastlineRenderLayer(md::CoastlineRenderLayer *this)
{
  *this = &unk_1F29E67C8;
  std::unique_ptr<md::CoastLineRenderResources>::reset[abi:nn200100](this + 46, 0);
  md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::~CartographicTiledVectorRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F29E67C8;
  std::unique_ptr<md::CoastLineRenderResources>::reset[abi:nn200100](this + 46, 0);

  md::CartographicTiledVectorRenderLayer<md::MapTileDataRenderable<md::PolygonTileData>>::~CartographicTiledVectorRenderLayer(this);
}

void sub_1B29AD3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  MEMORY[0x1B8C62190](v10, v11);
  _Unwind_Resume(a1);
}

uint64_t std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=[abi:nn200100](uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    v4 = *a1;
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v5, v4);
  }

  v6 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v6;
  *(a2 + 23) = 0;
  *a2 = 0;
  return a1;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::Gradient2Texture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[390];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci16Gradient2TextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A128E8;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::vector<std::pair<std::unique_ptr<ggl::PolygonSolidFill::MeshPipelineSetup>,std::unique_ptr<ggl::RenderItem>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        *(v4 - 1) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v8 = *(v4 - 2);
        v4 -= 2;
        v7 = v8;
        *v4 = 0;
        if (v8)
        {
          (*(*v7 + 8))(v7);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void md::PendingSceneLogic::allocateContext(md::PendingSceneLogic *this@<X0>, void *a2@<X8>)
{
  v5 = *(this + 49);
  v4 = *(this + 50);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *a2 = v5;
    a2[1] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  else
  {
    *a2 = v5;
    a2[1] = 0;
  }

  a2[2] = this + 280;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci16Gradient2TextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A128E8;
  a2[1] = v2;
  return result;
}

void ggl::PolygonShadowedStroke::ShadowPathPipelineState::~ShadowPathPipelineState(ggl::PolygonShadowedStroke::ShadowPathPipelineState *this)
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

void *md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>(void *a1, void *a2)
{
  v4 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x64780CBD71DF7CF5uLL);
  if (v4 && (v5 = v4[5], *(v5 + 8) == 0x64780CBD71DF7CF5))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x8677AD8BA9352C1DLL);
  if (v7 && (v8 = v7[5], *(v8 + 8) == 0x8677AD8BA9352C1DLL))
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

  v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0xC97B9E962ADF4AD4);
  if (v13 && (v14 = v13[5], *(v14 + 8) == 0xC97B9E962ADF4AD4))
  {
    v15 = *(v14 + 32);
  }

  else
  {
    v15 = 0;
  }

  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a2, 0x7851AF310F49C988uLL);
  v17 = *(result[5] + 32);
  *a1 = v6;
  a1[1] = v9;
  a1[2] = v12;
  a1[3] = v15;
  a1[4] = v17;
  return result;
}

void ggl::Glow::MeshPipelineState::~MeshPipelineState(ggl::Glow::MeshPipelineState *this)
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

uint64_t md::Logic<md::PendingSceneLogic,md::PendingSceneContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9F2276D081C2CB20)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>(v6, *(a2 + 8));
      return (*(*v5 + 144))(v5, a2, v6, v3);
    }
  }

  return result;
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> **,0>(mdm::zone_mallocator *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<geo::fast_shared_ptr<md::LabelFeatureThunk<md::PhysicalLabelFeature,GeoCodecsFeature,geo::codec::VectorTile>,mdm::allocator>,void *> *> *>(v3, v2);
  }
}

uint64_t std::__function::__func<ecs2::ForwardToExecute<md::ita::AssignGradient1TextureIndex>,std::allocator<ecs2::ForwardToExecute<md::ita::AssignGradient1TextureIndex>>,void ()(ecs2::Runtime &)>::operator()(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v2 = (a1 + 8);
  result = md::ita::AssignGradient1TextureIndex::operator()(a1 + 8, a2);
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return result;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>();
    unk_1EB83CDF0 = 0xCAA3A5E853432887;
    qword_1EB83CDF8 = "md::ls::TextureHandleForType<DaVinci::Gradient1Texture>]";
    qword_1EB83CE00 = 55;
  }

  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(void)::metadata >= 0x200)
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

mdm::zone_mallocator *std::__split_buffer<char16_t,geo::allocator_adapter<char16_t,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 1) & 0xFFFFFFFFFFFFFFFELL);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char16_t>(v5, v4);
  }

  return a1;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelFeatureStylerItem,geo::allocator_adapter<md::LabelFeatureStylerItem,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v2 = *(a1 + 2);
  if (v2 != *(a1 + 1))
  {
    *(a1 + 2) = (v2 - *(a1 + 1) - 24) % 0x18uLL + *(a1 + 1);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelFeatureStylerItem>(v4, v3);
  }

  return a1;
}

void ggl::GlowAlpha::MeshPipelineState::~MeshPipelineState(ggl::GlowAlpha::MeshPipelineState *this)
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

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[446];
}

std::__shared_weak_count *geo::codec::vertexPoolForFeature(std::__shared_weak_count *result)
{
  if (!result)
  {
    return result;
  }

  v1 = &result->__vftable;
  result = result->__shared_owners_;
  if (!result)
  {
    return result;
  }

  result = std::__shared_weak_count::lock(result);
  if (!result)
  {
    return result;
  }

  v2 = *v1;
  if (!*v1)
  {
    goto LABEL_35;
  }

  if (v2[4] > v1 || v2[5] <= v1)
  {
    if (v2[12] <= v1 && v2[13] > v1)
    {
      v3 = 101;
      goto LABEL_34;
    }

    if (v2[23] <= v1 && v2[24] > v1 || v2[27] <= v1 && v2[28] > v1)
    {
      v3 = 106;
      goto LABEL_34;
    }

    if (v2[35] <= v1 && v2[36] > v1)
    {
      v3 = 103;
      goto LABEL_34;
    }

    if (v2[47] <= v1 && v2[48] > v1)
    {
      v3 = 104;
      goto LABEL_34;
    }

    if (v2[51] <= v1 && v2[52] > v1)
    {
      v3 = 105;
      goto LABEL_34;
    }

    if (v2[8] <= v1 && v2[9] > v1)
    {
      v3 = 102;
      goto LABEL_34;
    }

    if (v2[19] <= v1 && v2[20] > v1)
    {
      v3 = 107;
      goto LABEL_34;
    }

    if (v2[431] <= v1 && v2[432] > v1)
    {
      v3 = 435;
      goto LABEL_34;
    }

LABEL_35:
    v4 = 0;
    goto LABEL_36;
  }

  v3 = 100;
LABEL_34:
  v4 = v2[v3];
LABEL_36:
  if (!atomic_fetch_add(&result->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = result;
    (result->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v5);
  }

  return v4;
}

uint64_t md::PendingSceneLogic::runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*a3 + 104);
  if (v3)
  {
    v4 = result;
    do
    {
      v5 = *(v3 + 8);
      v6 = *(v4 + 392);
      v8 = *(v6 + 112);
      v7 = *(v6 + 120);
      while (v8 != v7)
      {
        if (*v8 == v5)
        {
          v7 = v8;
          break;
        }

        v8 += 56;
      }

      *(v7 + 14) = *(v3 + 6);
      std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::operator=[abi:nn200100]((v7 + 32), (v3 + 4));
      v9 = *(v4 + 392);
      v11 = *(v9 + 136);
      v10 = *(v9 + 144);
      while (v11 != v10)
      {
        if (*v11 == v5)
        {
          v10 = v11;
          break;
        }

        v11 += 56;
      }

      *(v10 + 14) = *(v3 + 18);
      result = std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::operator=[abi:nn200100]((v10 + 32), (v3 + 10));
      v3 = *v3;
    }

    while (v3);
  }

  return result;
}

uint64_t gss::FeatureAttributeSet::getValueForAttributeKey(uint64_t a1, uint64_t a2, int a3, _WORD *a4)
{
  while (1)
  {
    if (a1 == a2)
    {
      return 0;
    }

    if (*a1 == a3)
    {
      break;
    }

    a1 += 8;
  }

  *a4 = *(a1 + 4);
  return 1;
}

uint64_t geo::codec::featureGetNativeLabelCount(uint64_t result)
{
  if (result)
  {
    return *(result + 73);
  }

  return result;
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci16Gradient1TextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A35588;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

mdm::zone_mallocator *std::vector<md::TextDataStringInfo::TextFragment,geo::allocator_adapter<md::TextDataStringInfo::TextFragment,mdm::zone_mallocator>>::push_back[abi:nn200100](mdm::zone_mallocator *result, _BYTE *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = &v5[-*result];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - *result;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = mdm::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TextDataStringInfo::TextFragment>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v7[v12];
    *v13 = *a2;
    v6 = &v7[v12 + 1];
    v14 = v12 + v10;
    v15 = *(v3 + 1);
    v16 = &v13[*v3 - v15];
    memcpy(v16, *v3, v15 - *v3);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<md::TextDataStringInfo::TextFragment,geo::allocator_adapter<md::TextDataStringInfo::TextFragment,mdm::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(v3 + 1) = v6;
  return result;
}

uint64_t std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 32) = *(a2 + 32);
    v3 = *(a2 + 16);
    v4 = *(a1 + 8);
    if (!v4)
    {
      goto LABEL_8;
    }

    for (i = 0; i != v4; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v6 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v6)
    {
      while (v3)
      {
        v7 = *(v3 + 1);
        *(v6 + 25) = *(v3 + 25);
        v6[1] = v7;
        v8 = *v6;
        std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__node_insert_multi(a1, v6);
        v3 = *v3;
        v6 = v8;
        if (!v8)
        {
          goto LABEL_8;
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
LABEL_8:
      if (v3)
      {
        std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_multi<geo::QuadTile const&>();
      }
    }
  }

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(void)::metadata >= 0x200)
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

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>()
{
  {
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>();
    *algn_1EB83C8B8 = 0xF8B8367F26B933A6;
    qword_1EB83C8C0 = "md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>]";
    qword_1EB83C8C8 = 58;
  }
}

void std::vector<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,geo::allocator_adapter<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::PolygonShadowedStroke::ShadowPathPipelineSetup *>(v2, v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls20TextureHandleForTypeIN7DaVinci16Gradient1TextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A35588;
  a2[1] = v2;
  return result;
}

mdm::zone_mallocator *std::__split_buffer<md::SegmentConnectionEntry,geo::allocator_adapter<md::SegmentConnectionEntry,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
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
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::SegmentConnectionEntry>(v5, v4);
  }

  return a1;
}

void std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__node_insert_multi(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) == 1)
  {
    geo::QuadTile::computeHash((a2 + 16));
    *(a2 + 40) = 0;
  }

  v4 = *(a2 + 32);
  *(a2 + 8) = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__rehash<false>(a1, v11);
    v5 = *(a1 + 8);
  }

  v12 = vcnt_s8(v5);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.u32[0];
  if (v12.u32[0] > 1uLL)
  {
    v14 = v4;
    if (v4 >= v5)
    {
      v14 = v4 % v5;
    }
  }

  else
  {
    v14 = (v5 - 1) & v4;
  }

  v15 = *(*a1 + 8 * v14);
  if (v15)
  {
    v16 = *v15;
    if (*v15)
    {
      v17 = 0;
      do
      {
        v18 = *(v16 + 1);
        if (v13 > 1)
        {
          v19 = *(v16 + 1);
          if (v18 >= v5)
          {
            v19 = v18 % v5;
          }
        }

        else
        {
          v19 = v18 & (v5 - 1);
        }

        if (v19 != v14)
        {
          break;
        }

        v23 = v18 == v4 && std::equal_to<geo::QuadTile>::operator()[abi:nn200100](v16 + 16, (a2 + 16));
        if ((v17 & (v23 != (v17 & 1))) != 0)
        {
          break;
        }

        v17 |= v23 != (v17 & 1);
        v15 = *v15;
        v16 = *v15;
      }

      while (*v15);
      v5 = *(a1 + 8);
      v20 = vcnt_s8(v5);
      v20.i16[0] = vaddlv_u8(v20);
      v13 = v20.u32[0];
    }
  }

  v21 = *(a2 + 8);
  if (v13 > 1)
  {
    if (v21 >= v5)
    {
      v21 %= v5;
    }
  }

  else
  {
    v21 &= v5 - 1;
  }

  if (v15)
  {
    *a2 = *v15;
    *v15 = a2;
    if (*a2)
    {
      v22 = *(*a2 + 8);
      if (v13 > 1)
      {
        if (v22 >= v5)
        {
          v22 %= v5;
        }
      }

      else
      {
        v22 &= v5 - 1;
      }

      if (v22 != v21)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    *(*a1 + 8 * v21) = a1 + 16;
    if (*a2)
    {
      v22 = *(*a2 + 8);
      if (v13 > 1)
      {
        if (v22 >= v5)
        {
          v22 %= v5;
        }
      }

      else
      {
        v22 &= v5 - 1;
      }

LABEL_32:
      *(*a1 + 8 * v22) = a2;
    }
  }

  ++*(a1 + 24);
}

void std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__rehash<false>(uint64_t a1, size_t __n)
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

void std::vector<ggl::Glow::MeshPipelineSetup *,geo::allocator_adapter<ggl::Glow::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Glow::MeshPipelineSetup *>(v2, v1);
  }
}

uint64_t md::LabelLine::startCoordinate(md::LabelLine *this, md::LabelLine *a2)
{
  result = 0;
  if (a2 == this)
  {
    this = 0;
  }

  if ((*(this + 8) & 1) == 0)
  {
    return ((*(**this + 16))() << 16) - 0x10000;
  }

  return result;
}

uint64_t gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>()
{
  v0 = &qword_1EB83E000;
  {
    v0 = &qword_1EB83E000;
    if (v2)
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::RequiresShaderTextureID<DaVinci::Gradient1Texture>>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
      v0 = &qword_1EB83E000;
    }
  }

  return v0[391];
}

void *_ZNSt3__18functionIFvN4ecs26EntityEEEaSIZNS1_13BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci16Gradient1TextureEEEEERN3gdc12constness_asINS1_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESI_E4typeEvEUlS2_E_vEERS4_OSI_(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A12818;
  v4[1] = a2;
  v4[3] = v4;
  std::__function::__value_func<void ()(ecs2::Entity)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(ecs2::Entity)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void std::vector<ggl::GlowAlpha::MeshPipelineSetup *,geo::allocator_adapter<ggl::GlowAlpha::MeshPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::GlowAlpha::MeshPipelineSetup *>(v2, v1);
  }
}

uint64_t md::Logic<md::PendingSceneLogic,md::PendingSceneContext,md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6[6] = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x9F2276D081C2CB20)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      md::LogicDependencies<gdc::TypeList<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>,gdc::TypeList<>>::buildRequiredTuple<md::TileSelectionContext,md::ResolvedTileSelectionContext,md::CameraContext,md::SettingsContext,md::LayerDataLogicContext>(v6, *(a2 + 8));
      return (*(*v5 + 128))(v5, a2, v6, v3);
    }
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls23RequiresShaderTextureIDIN7DaVinci16Gradient1TextureEEEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESF_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISN_EEFvSM_EE7__cloneEPNS0_6__baseISQ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A12818;
  a2[1] = v2;
  return result;
}

std::__shared_weak_count *md::LabelLineSegment::tile(std::__shared_weak_count *this, uint64_t a2)
{
  v2 = this;
  v3 = *(a2 + 32);
  v4 = v3 > 3 || v3 == 1;
  if (v4 || (v5 = *(a2 + 16)) == 0)
  {
    this->__vftable = 0;
    this->__shared_owners_ = 0;
  }

  else
  {
    this->__vftable = 0;
    this->__shared_owners_ = 0;
    this = v5[1];
    if (this)
    {
      this = std::__shared_weak_count::lock(this);
      v2->__shared_owners_ = this;
      if (this)
      {
        v2->__vftable = *v5;
      }
    }
  }

  return this;
}

char *md::PendingSceneLogic::runBeforeLayoutAtVariableRate(uint64_t a1, md::LayoutContext *a2, uint64_t *a3, uint64_t a4)
{
  v157 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v147 = a3[1];
  v7 = a3[3];
  v143 = a3[2];
  md::SceneStateManager::clear(*(a1 + 392));
  v150 = v6;
  if (*(v6 + 128) == 1)
  {
    md::SceneStateManager::reset(*(a1 + 392));
    md::World::clearAllLayerData(*(a1 + 128));
  }

  v8 = *(a1 + 280);
  v9 = *(a1 + 288);
  while (v8 != v9)
  {
    std::list<std::unique_ptr<gdc::SelectionContext>>::resize((v8 + 8));
    v8 += 32;
  }

  v10 = *(a1 + 304);
  v11 = *(a1 + 312);
  while (v10 != v11)
  {
    std::list<std::unique_ptr<gdc::SelectionContext>>::resize((v10 + 8));
    v10 += 32;
  }

  v12 = *(a1 + 328);
  v13 = *(a1 + 336);
  while (v12 != v13)
  {
    std::list<std::unique_ptr<gdc::SelectionContext>>::resize((v12 + 8));
    v12 += 32;
  }

  md::LayoutContext::frameState(a2);
  v15 = *(v14 + 88);
  for (i = *(v150 + 64); i; i = *i)
  {
    v17 = *(i + 8);
    v18 = *(a1 + 392);
    v20 = *(v18 + 112);
    v19 = *(v18 + 120);
    while (v20 != v19)
    {
      if (*v20 == v17)
      {
        v19 = v20;
        break;
      }

      v20 += 56;
    }

    *(v19 + 14) = *(i + 6);
    std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::operator=[abi:nn200100]((v19 + 32), (i + 4));
    v21 = *(a1 + 392);
    v23 = *(v21 + 136);
    v22 = *(v21 + 144);
    while (v23 != v22)
    {
      if (*v23 == v17)
      {
        v22 = v23;
        break;
      }

      v23 += 56;
    }

    *(v22 + 14) = *(i + 18);
    std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::operator=[abi:nn200100]((v22 + 32), (i + 10));
  }

  for (j = *(v150 + 104); j; j = *j)
  {
    v25 = *(j + 8);
    v26 = *(a1 + 392);
    v28 = *(v26 + 112);
    v27 = *(v26 + 120);
    while (v28 != v27)
    {
      if (*v28 == v25)
      {
        v27 = v28;
        break;
      }

      v28 += 56;
    }

    *(v27 + 14) = *(j + 6);
    std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::operator=[abi:nn200100]((v27 + 32), (j + 4));
    v29 = *(a1 + 392);
    v31 = *(v29 + 136);
    v30 = *(v29 + 144);
    while (v31 != v30)
    {
      if (*v31 == v25)
      {
        v30 = v31;
        break;
      }

      v31 += 56;
    }

    *(v30 + 14) = *(j + 18);
    std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::operator=[abi:nn200100]((v30 + 32), (j + 10));
  }

  v32 = *v7;
  v33 = v7[1];
  while (v32 != v33)
  {
    if (*v32 == 30)
    {
      if (v32 != v33 && *(v32 + 8))
      {
        v34 = *(a1 + 224);
        goto LABEL_44;
      }

      break;
    }

    v32 += 16;
  }

  v34 = 0;
LABEL_44:
  if (*(a1 + 232) != v34)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v71 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      v72 = *(a1 + 232);
      *buf = 134218240;
      *&buf[4] = v72;
      *&buf[12] = 2048;
      *&buf[14] = v34;
      _os_log_impl(&dword_1B2754000, v71, OS_LOG_TYPE_INFO, "ResolvedImplicationDelay updated (from:%lld to:%lld)", buf, 0x16u);
    }

    *(a1 + 232) = v34;
    if (v34 <= 0)
    {
      geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::clear(*(a1 + 216));
    }
  }

  for (k = 0; k != 9; ++k)
  {
    v36 = *(a1 + 392);
    v38 = *(v36 + 160);
    v37 = *(v36 + 168);
    if (v38 != v37)
    {
      while (*v38 != md::TileSelectionTileSetTypeList[k])
      {
        v38 += 56;
        if (v38 == v37)
        {
          goto LABEL_51;
        }
      }

      v37 = v38;
    }

LABEL_51:
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v37 + 8);
  }

  v39 = 0;
  v40 = 0;
  v41 = *(a1 + 392);
  v42 = v41[14];
  v43 = v41[15];
  v44 = v41[17];
  v45 = v41[18];
  do
  {
    v46 = md::TileSelectionTileSetTypeList[v40];
    v47 = v43;
    if (v42 != v43)
    {
      v47 = v42;
      while (*v47 != v46)
      {
        v47 += 56;
        if (v47 == v43)
        {
          v47 = v43;
          break;
        }
      }
    }

    v48 = v45;
    if (v44 != v45)
    {
      v48 = v44;
      while (*v48 != v46)
      {
        v48 += 56;
        if (v48 == v45)
        {
          v48 = v45;
          break;
        }
      }
    }

    v39 += *(v47 + 22) + *(v48 + 22);
    ++v40;
  }

  while (v40 != 9);
  v49 = *(a1 + 216);
  if (*(v49 + 48) < v39)
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>>>>::__rehash<true>(v49 + 24, vcvtps_u32_f32(v39 / *(v49 + 56)));
  }

  v149 = (v15 * 1000.0);
  v51 = *(a1 + 192);
  v50 = *(a1 + 200);
  if (v50 != v51)
  {
    do
    {
      v52 = v50 - 48;
      std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table(v50 - 40);
      v50 = v52;
    }

    while (v52 != v51);
  }

  v53 = *(a1 + 168);
  *(a1 + 200) = v51;
  v54 = *(a1 + 176);
  if (v54 != v53)
  {
    do
    {
      v55 = v54 - 48;
      std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table(v54 - 40);
      v54 = v55;
    }

    while (v55 != v53);
  }

  *(a1 + 176) = v53;
  v56 = *(v150 + 129);
  {
    md::PendingSceneLogic::requestData(md::ResolvedTileSelectionContext const&,md::CameraContext const*,md::PendingSceneContext &,long long,md::NeighborMode)::kEmpty = 0;
    *algn_1EB82AEC8 = 0;
    qword_1EB82AED0 = 0;
  }

  v57 = *(a1 + 128);
  v148 = v57[3];
  v59 = v57[22];
  v58 = v57[23];
  while (v59 != v58)
  {
    v60 = *v59;
    v61 = *(a1 + 392);
    v62 = v61[14];
    v63 = v61[15];
    while (v62 != v63)
    {
      if (*v62 == v60)
      {
        v63 = v62;
        break;
      }

      v62 += 56;
    }

    v64 = v61[17];
    v65 = v61[18];
    while (v64 != v65)
    {
      if (*v64 == v60)
      {
        v65 = v64;
        break;
      }

      v64 += 56;
    }

    md::World::layerDataTypesForSelectionSetType(buf, *(*(a1 + 128) + 152), *v59);
    v144 = v56;
    for (m = *(v147 + 16); m; m = *m)
    {
      v142 = *(m + 8);
      v128 = std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::find<unsigned short>(*buf, *&buf[8], v142);
      if (v128)
      {
        __pa = v128;
        LOWORD(v151[0]) = v142;
        std::unordered_set<unsigned short>::unordered_set(v154, v151, 1);
        std::__hash_table<unsigned short,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<unsigned short>>::erase(buf, __pa);
        std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>::operator()(&v153, m[6], v60, *(m + 8), 0, (v63 + 28));
        md::PendingSceneLogic::addSelectionContextMap(a1, v60, *(a1 + 280), *(a1 + 288), &v153, (v63 + 8), (v63 + 28), *(v63 + 13), v154);
        v129 = v153;
        v153 = 0;
        if (v129)
        {
          (*(*v129 + 8))(v129);
        }

        std::function<std::unique_ptr<md::TileDependencySelectionContext> ()(unsigned short,md::MapDataType,md::TileDependencyResolvingType,gdc::TileSelection const&)>::operator()(&v152, m[6], v60, *(m + 8), 1, (v65 + 28));
        md::PendingSceneLogic::addSelectionContextMap(a1, v60, *(a1 + 304), *(a1 + 312), &v152, (v65 + 8), (v65 + 28), *(v65 + 13), v154);
        v130 = v152;
        v152 = 0;
        if (v130)
        {
          (*(*v130 + 8))(v130);
        }

        std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v154);
      }
    }

    md::PendingSceneLogic::updateSelectionContextMap(v60, *(a1 + 280), *(a1 + 288), (v63 + 8), (v63 + 28), *(v63 + 13), buf);
    v56 = v144;
    md::PendingSceneLogic::updateSelectionContextMap(v60, *(a1 + 304), *(a1 + 312), (v65 + 8), (v65 + 28), *(v65 + 13), buf);
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(buf);
    ++v59;
  }

  gdc::LayerDataManager::requestLayerDataKeys(v148, *(a1 + 280), *(a1 + 288), 0);
  v145 = v56 - 1;
  if ((v56 - 1) < 3)
  {
    gdc::LayerDataManager::requestLayerDataKeys(v148, *(a1 + 304), *(a1 + 312), 0);
  }

  gdc::LayerDataManager::preloadLayerDataKeys(*(*(v148 + 8) + 40), (a1 + 168));
  if (*(a1 + 232) >= 1)
  {
    v100 = *(a1 + 216);
    v100[8] = v100;
    v101 = *(a1 + 128);
    v102 = *(v101 + 176);
    v103 = *(v101 + 184);
    if (v102 == v103)
    {
      geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::purge(v100);
      v68 = 1;
    }

    else
    {
      v104 = 0.0;
      LOBYTE(v68) = 1;
      do
      {
        v105 = *(a1 + 392);
        v107 = *(v105 + 112);
        v106 = *(v105 + 120);
        if (v107 != v106)
        {
          while (*v107 != *v102)
          {
            v107 += 56;
            if (v107 == v106)
            {
              goto LABEL_155;
            }
          }

          v106 = v107;
        }

LABEL_155:
        v108 = *(v106 + 13);
        gdc::LayerDataCollector::virtualTilesBegin(v154);
        gdc::LayerDataCollector::virtualTilesEnd(v151, *(v108 + 8));
        md::PendingSceneLogic::extractFullyImplicatedData(buf, a1, v154, v151, v149, a1 + 192);
        v68 = (v68 & buf[0]);
        v109 = fmax(v104, *&buf[8]);
        if (*&buf[20])
        {
          v104 = v109;
        }

        ++v102;
      }

      while (v102 != v103);
      geo::MarkedLRUCache<gdc::LayerDataRequestKey,long long,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>>::purge(*(a1 + 216));
      if (v104 > 0.0)
      {
        (*(**(a1 + 264) + 24))(*(a1 + 264), 0, v104 * 0.001);
      }
    }

    v67 = v149;
    gdc::LayerDataManager::createDataRequests(v148, (a1 + 192), (a1 + 168), v149);
    if (v56 == 3)
    {
      gdc::LayerDataManager::createDataRequests(v148, (a1 + 304), &md::PendingSceneLogic::requestData(md::ResolvedTileSelectionContext const&,md::CameraContext const*,md::PendingSceneContext &,long long,md::NeighborMode)::kEmpty, v149);
    }

    else if (v56 == 2)
    {
      v111 = *(a1 + 192);
      v110 = *(a1 + 200);
      if (v110 != v111)
      {
        do
        {
          v112 = v110 - 48;
          std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::tuple<md::DaVinciGroundRenderable *,ecs2::Entity>>>>::~__hash_table(v110 - 40);
          v110 = v112;
        }

        while (v112 != v111);
      }

      v113 = 0;
      *(a1 + 200) = v111;
      do
      {
        v114 = *(a1 + 392);
        v116 = *(v114 + 112);
        v115 = *(v114 + 120);
        if (v116 != v115)
        {
          while (*v116 != md::TileSelectionTileSetTypeList[v113])
          {
            v116 += 56;
            if (v116 == v115)
            {
              goto LABEL_170;
            }
          }

          v115 = v116;
        }

LABEL_170:
        v117 = *(v115 + 13);
        gdc::LayerDataCollector::virtualTilesBegin(buf);
        gdc::LayerDataCollector::virtualTilesEnd(v154, *(v117 + 8));
        md::PendingSceneLogic::extractFullyImplicatedData(v151, a1, buf, v154, v67, a1 + 192);
        ++v113;
        v67 = v149;
      }

      while (v113 != 9);
      gdc::LayerDataManager::createDataRequests(v148, (a1 + 192), &md::PendingSceneLogic::requestData(md::ResolvedTileSelectionContext const&,md::CameraContext const*,md::PendingSceneContext &,long long,md::NeighborMode)::kEmpty, v149);
    }
  }

  else
  {
    v67 = (v15 * 1000.0);
    gdc::LayerDataManager::createDataRequests(v148, (a1 + 280), (a1 + 168), v149);
    if ((v56 & 0xFE) == 2)
    {
      gdc::LayerDataManager::createDataRequests(v148, (a1 + 304), &md::PendingSceneLogic::requestData(md::ResolvedTileSelectionContext const&,md::CameraContext const*,md::PendingSceneContext &,long long,md::NeighborMode)::kEmpty, v149);
    }

    v68 = 1;
  }

  v69 = *(a1 + 240);
  if (v69 <= 0)
  {
    goto LABEL_106;
  }

  v70 = *(a1 + 256);
  if (v70 == 0x7FFFFFFFFFFFFFFFLL && *(a1 + 248) == v68)
  {
    md::PendingSceneLogic::_prefetchData(a1, v147, v67);
    goto LABEL_107;
  }

  if (*(v143 + 5592))
  {
    v73 = *(v143 + 5592);
  }

  else
  {
    v73 = v143;
  }

  if (gdc::LayerDataManager::hasRequestsInProgress(*(*(*(a1 + 128) + 24) + 8), *(*(*(a1 + 128) + 24) + 16)) || (v68 & 1) == 0)
  {
    (*(**(a1 + 272) + 24))(*(a1 + 272), 0, v69 * 0.001);
    *(a1 + 256) = v149;
LABEL_106:
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((a1 + 352));
    goto LABEL_107;
  }

  if (v67 - v69 >= v70)
  {
    (*(**(a1 + 272) + 40))(*(a1 + 272));
    *(a1 + 256) = 0x7FFFFFFFFFFFFFFFLL;
    v118 = vcvtms_s32_f32(*(v143 + 3076));
    if (v118 <= 1)
    {
      v119 = 1;
    }

    else
    {
      v119 = v118;
    }

    v120 = (1 << v119);
    v121 = *(a1 + 252);
    v122 = floor(v120 - *(v73 + 504) * v120) - v121;
    v123 = (1 << v119) - 1;
    v124 = v122 & ~(v122 >> 31);
    if (v124 >= v123)
    {
      v124 = (1 << v119) - 1;
    }

    v141 = v124;
    v125 = *(a1 + 392);
    v126 = v125[14];
    v127 = v125[15];
    while (v126 != v127)
    {
      if (!*v126)
      {
        v127 = v126;
        break;
      }

      v126 += 56;
    }

    v132 = v125[20];
    v131 = v125[21];
    while (v132 != v131)
    {
      if (!*v132)
      {
        v131 = v132;
        break;
      }

      v132 += 56;
    }

    v133 = *(v73 + 496);
    std::unordered_set<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::operator=[abi:nn200100](a1 + 352, (v131 + 32));
    v134 = (floor(v133 * v120) - v121);
    __p = v134 + 2 * v121;
    if (((v121 & 0x40000000) != 0) == __OFSUB__(__p, v134))
    {
      v135 = v141 + 2 * v121;
      if (v135 <= v141)
      {
        v135 = v141;
      }

      if (v135 >= v123)
      {
        v135 = (1 << v119) - 1;
      }

      if (v135 <= v141)
      {
        v135 = v141;
      }

      v136 = v135 + 1;
      do
      {
        v137 = v141;
        do
        {
          buf[0] = -1;
          buf[1] = v119;
          *&buf[4] = v137;
          *&buf[8] = v134;
          *&buf[16] = 0;
          v156 = 1;
          if (!std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__count_unique<geo::QuadTile>(v127 + 8, buf))
          {
            std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::__emplace_unique_key_args<geo::QuadTile,geo::QuadTile>((a1 + 352), buf);
          }

          ++v137;
        }

        while (v136 != v137);
      }

      while (v134++ != __p);
    }

    md::PendingSceneLogic::_prefetchData(a1, v147, v149);
  }

LABEL_107:
  v74 = *(a1 + 128);
  v75 = *(v74 + 176);
  v76 = *(v74 + 184);
  while (v75 != v76)
  {
    v77 = *(a1 + 280);
    v78 = *(a1 + 288);
    if (v77 != v78)
    {
      while (*v75 != *v77)
      {
        v77 += 16;
        if (v77 == v78)
        {
          goto LABEL_110;
        }
      }

      if (v77 != v78)
      {
        v79 = v77 + 4;
        for (n = *(v77 + 2); n != v79; n = *(n + 8))
        {
          gdc::LayerDataManager::cleanUpExtendedResources(v148, *(n + 16));
        }
      }
    }

LABEL_110:
    ++v75;
  }

  gdc::LayerDataManager::getData(v148, *(a1 + 280), *(a1 + 288));
  gdc::LayerDataManager::getFallbackData(v148, *(a1 + 280), *(a1 + 288));
  if (v145 < 3)
  {
    gdc::LayerDataManager::getData(v148, *(a1 + 304), *(a1 + 312));
  }

  v81 = 0;
  *(a1 + 248) = v68;
  do
  {
    v82 = md::TileSelectionTileSetTypeList[v81];
    v83 = *(a1 + 392);
    v85 = *(v83 + 112);
    v84 = *(v83 + 120);
    while (v85 != v84)
    {
      if (*v85 == v82)
      {
        v84 = v85;
        break;
      }

      v85 += 56;
    }

    gdc::LayerDataCollector::sortIndexList(*(v84 + 13));
    v86 = *(a1 + 392);
    v88 = *(v86 + 136);
    v87 = *(v86 + 144);
    while (v88 != v87)
    {
      if (*v88 == v82)
      {
        v87 = v88;
        break;
      }

      v88 += 56;
    }

    gdc::LayerDataCollector::sortIndexList(*(v87 + 13));
    v89 = *(a1 + 392);
    v91 = *(v89 + 160);
    v90 = *(v89 + 168);
    while (v91 != v90)
    {
      if (*v91 == v82)
      {
        v90 = v91;
        break;
      }

      v91 += 56;
    }

    gdc::LayerDataCollector::sortIndexList(*(v90 + 13));
    ++v81;
  }

  while (v81 != 9);
  md::SceneStateManager::updateTileSets(*(a1 + 392));
  v92 = *(a1 + 144);
  v93 = *(a1 + 152);
  if (v92 == v93)
  {
    isRectVisible = 0;
  }

  else
  {
    if (*(v143 + 5592))
    {
      v94 = *(v143 + 5592);
    }

    else
    {
      v94 = v143;
    }

    do
    {
      isRectVisible = md::SingleCameraContext::isRectVisible(v94, *v92, v92[1]);
      if (isRectVisible)
      {
        break;
      }

      v92 = (v92 + 72);
    }

    while (v92 != v93);
  }

  v96 = *(a1 + 392);
  *(v96 + 280) = isRectVisible;
  geo::linear_set<md::TileSelectionTileSetType,std::less<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>,std::vector<md::TileSelectionTileSetType>>::operator=((v96 + 184), v150);
  md::SceneStateManager::updateMerged(v96);
  v97 = *(a1 + 392);
  geo::linear_set<md::TileSelectionTileSetType,std::less<md::TileSelectionTileSetType>,std::allocator<md::TileSelectionTileSetType>,std::vector<md::TileSelectionTileSetType>>::operator=(v97 + 26, v150 + 24);
  md::SceneStateManager::updateMerged(v97);
  v98 = *(a1 + 392);
  result = (v98 + 256);
  if (v98 + 256 != a1 + 144)
  {
    result = std::vector<md::TileExclusionArea>::__assign_with_size[abi:nn200100]<md::TileExclusionArea*,md::TileExclusionArea*>(result, *(a1 + 144), *(a1 + 152), 0x8E38E38E38E38E39 * ((*(a1 + 152) - *(a1 + 144)) >> 3));
    v98 = *(a1 + 392);
  }

  *(v98 + 282) = *(v150 + 130);
  *(a1 + 120) = a4;
  return result;
}

void sub_1B29AFEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a22)
  {
    (*(*a22 + 8))(a22);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a24);
  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a29);
  _Unwind_Resume(a1);
}

void md::HillshadeRenderLayer::~HillshadeRenderLayer(uint64_t **this)
{
  *this = off_1F2A27658;
  std::unique_ptr<md::HillshadeRenderResources>::reset[abi:nn200100](this + 48, 0);
  v2 = this[46];
  this[46] = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C4049ECCB0CLL);
  }

  md::CartographicTiledVectorRenderLayer<HillshadeRenderable>::~CartographicTiledVectorRenderLayer(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A27658;
  std::unique_ptr<md::HillshadeRenderResources>::reset[abi:nn200100](this + 48, 0);
  v2 = this[46];
  this[46] = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C4049ECCB0CLL);
  }

  md::CartographicTiledVectorRenderLayer<HillshadeRenderable>::~CartographicTiledVectorRenderLayer(this);
}

void md::SceneStateManager::clear(md::SceneStateManager *this)
{
  std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>>>::clear(this + 8);
  std::__hash_table<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::__unordered_map_hasher<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,gdc::LayerDataWithWorldHash,std::equal_to<gdc::LayerDataWithWorld>,true>,std::__unordered_map_equal<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::equal_to<gdc::LayerDataWithWorld>,gdc::LayerDataWithWorldHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>>>::clear(this + 72);
  for (i = 0; i != 9; ++i)
  {
    v3 = md::TileSelectionTileSetTypeList[i];
    v4 = *(this + 14);
    v5 = *(this + 15);
    while (v4 != v5)
    {
      if (v3 == *v4)
      {
        v5 = v4;
        break;
      }

      v4 += 56;
    }

    v5[4] = 0;
    *(v5 + 10) = 0;
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(v5 + 8);
    gdc::LayerDataCollector::clear(*(v5 + 13));
    v7 = *(this + 17);
    v6 = *(this + 18);
    while (v7 != v6)
    {
      if (v3 == *v7)
      {
        v6 = v7;
        break;
      }

      v7 += 56;
    }

    md::SceneTileSet::reset((v6 + 4));
    v9 = *(this + 20);
    v8 = *(this + 21);
    while (v9 != v8)
    {
      if (v3 == *v9)
      {
        v8 = v9;
        break;
      }

      v9 += 56;
    }

    md::SceneTileSet::reset((v8 + 4));
  }

  std::__hash_table<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::__unordered_map_hasher<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::hash<md::TileSelectionTileSetType>,std::equal_to<md::TileSelectionTileSetType>,true>,std::__unordered_map_equal<md::TileSelectionTileSetType,std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>,std::equal_to<md::TileSelectionTileSetType>,std::hash<md::TileSelectionTileSetType>,true>,std::allocator<std::__hash_value_type<md::TileSelectionTileSetType,std::unordered_map<unsigned short,std::unordered_map<geo::QuadTile,std::bitset<8ul>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<std::pair<geo::QuadTile const,std::bitset<8ul>>>>>>>>::clear(this + 432);
}

void md::ita::AssignTemperatureTextureIndex::operator()(uint64_t **a1)
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
    v7 = v6 >= 0x99;
    v8 = v6 < 0x99;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != v3 + 2824 && *(v5 + 32) <= 0x99u)
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

void std::vector<ggl::Hillshade::Pos2DUVPipelineSetup *,geo::allocator_adapter<ggl::Hillshade::Pos2DUVPipelineSetup *,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](ggl::zone_mallocator *a1)
{
  v1 = *a1;
  if (*a1)
  {
    *(a1 + 1) = v1;
    v2 = ggl::zone_mallocator::instance(a1);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Hillshade::Pos2DUVPipelineSetup *>(v2, v1);
  }
}

void std::unique_lock<std::mutex>::unlock[abi:nn200100](uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::unlock(*a1);
    *(a1 + 8) = 0;
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>>>::clear(v2);
  }
}

void std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,geo::small_vector<geo::QuadTile,8ul>>>>::__deallocate_node(*(a1 + 16));
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

void std::__hash_table<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::__unordered_map_hasher<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,gdc::LayerDataWithWorldHash,std::equal_to<gdc::LayerDataWithWorld>,true>,std::__unordered_map_equal<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::equal_to<gdc::LayerDataWithWorld>,gdc::LayerDataWithWorldHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::__unordered_map_hasher<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,gdc::LayerDataWithWorldHash,std::equal_to<gdc::LayerDataWithWorld>,true>,std::__unordered_map_equal<gdc::LayerDataWithWorld,std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>,std::equal_to<gdc::LayerDataWithWorld>,gdc::LayerDataWithWorldHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataWithWorld,std::shared_ptr<gdc::SubtileClipMask>>>>::__deallocate_node(*(a1 + 16));
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

uint64_t *ecs2::ExecutionTask<md::RenderLayerProvider *>::service<md::RenderLayerProvider>(uint64_t **a1)
{
  v1 = a1[1];
  if (!v1)
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

    a1[1] = v1;
  }

  return v1;
}

void std::__tree<std::__value_type<unsigned char,md::RoadMetricsEntry>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,md::RoadMetricsEntry>,std::less<unsigned char>,true>,geo::allocator_adapter<std::__value_type<unsigned char,md::RoadMetricsEntry>,mdm::zone_mallocator>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned char,md::RoadMetricsEntry>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,md::RoadMetricsEntry>,std::less<unsigned char>,true>,geo::allocator_adapter<std::__value_type<unsigned char,md::RoadMetricsEntry>,mdm::zone_mallocator>>::destroy(*a1);
    v2 = std::__tree<std::__value_type<unsigned char,md::RoadMetricsEntry>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,md::RoadMetricsEntry>,std::less<unsigned char>,true>,geo::allocator_adapter<std::__value_type<unsigned char,md::RoadMetricsEntry>,mdm::zone_mallocator>>::destroy(a1[1]);
    v3 = mdm::zone_mallocator::instance(v2);
    v4 = pthread_rwlock_rdlock((v3 + 32));
    if (v4)
    {
      geo::read_write_lock::logFailure(v4, "read lock", v5);
    }

    atomic_fetch_add((v3 + 24), 0xFFFFFFFF);
    malloc_zone_free(*v3, a1);

    geo::read_write_lock::unlock((v3 + 32));
  }
}

void ggl::Hillshade::Pos2DUVPipelineState::~Pos2DUVPipelineState(ggl::Hillshade::Pos2DUVPipelineState *this)
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

void md::SceneTileSet::reset(md::SceneTileSet *this)
{
  *this = 0;
  *(this + 2) = 0;
  std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear(this + 7);
  v2 = *(this + 12);

  gdc::LayerDataCollector::clear(v2);
}

void *gss::defaultValueForKey<gss::PropertyID,BOOL>(int a1)
{
  if (a1 <= 220)
  {
    if (a1 > 127)
    {
      if (a1 == 128)
      {
        return &gss::defaultValueForKey<gss::PropertyID,BOOL>(gss::PropertyID)::kDefaultShieldVisible;
      }

      if (a1 == 220)
      {
        return &gss::defaultValueForKey<gss::PropertyID,BOOL>(gss::PropertyID)::kDefaultNavLabelShieldVisible;
      }
    }

    else
    {
      if (a1 == 91)
      {
        return &gss::defaultValueForKey<gss::PropertyID,BOOL>(gss::PropertyID)::kDefaultVisible;
      }

      if (a1 == 126)
      {
        return &gss::defaultValueForKey<gss::PropertyID,BOOL>(gss::PropertyID)::kDefaultYieldsToOnscreenLabels;
      }
    }
  }

  else if (a1 <= 313)
  {
    if (a1 == 221)
    {
      return &gss::defaultValueForKey<gss::PropertyID,BOOL>(gss::PropertyID)::kDefaultNavLabelSignVisible;
    }

    if (a1 == 312)
    {
      return &gss::defaultValueForKey<gss::PropertyID,BOOL>(gss::PropertyID)::kDefaultBuildingFacadeTexturesEnabled;
    }
  }

  else
  {
    switch(a1)
    {
      case 314:
        return &gss::defaultValueForKey<gss::PropertyID,BOOL>(gss::PropertyID)::kDefaultLabelOcclusionEnabled;
      case 460:
        return &gss::defaultValueForKey<gss::PropertyID,BOOL>(gss::PropertyID)::kDefaultAnnotationVisible;
      case 481:
        return &gss::defaultValueForKey<gss::PropertyID,BOOL>(gss::PropertyID)::kDefaultManeuverArrowCollisionEnable;
    }
  }

  return &gss::defaultValueForKey<gss::PropertyID,BOOL>(gss::PropertyID)::_defaultValue;
}